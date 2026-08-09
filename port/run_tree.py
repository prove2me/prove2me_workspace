#!/usr/bin/env python3
"""Phase 7: upload the decomposed proof, leaves-first, on the `community` account.

The tree is two kinds of item and one order.  Definition bundles carry the `def`s, theorem nodes
carry the proof; each kind imports the other — a bundle imports the theorems its definitions
cite, a theorem imports the bundle its statement needs — so they are uploaded in a single
topological order over the module graph the staged files actually declare, not bundles-then-
theorems.  By the time a node is submitted every theorem it imports is already Proved, so it
resolves to ACCEPTED rather than lingering as a sketch.

Everything here is journalled through `port/upload.py`, so an interrupted run resumes without
duplicating: the journal is written before each call and the submission is looked up by name if
a response is lost.

    python3 port/run_tree.py plan      # the upload order and what is already done
    python3 port/run_tree.py canary    # one definition bundle and one attribute-carrying node
    python3 port/run_tree.py run       # upload everything remaining
"""
import json
import os
import sys

sys.path.insert(0, os.path.dirname(os.path.abspath(__file__)))
import api  # noqa: E402
import generate  # noqa: E402
import linemap  # noqa: E402
import upload  # noqa: E402

ACCOUNT = "community"
REPO = "https://github.com/openai/ten-proofs"
SHA = "94bc0feb6a9ff12c7d31d6de640a725c9d43d2b6"
TAGS = ["quantum-parallel-repetition", "openai-ten-proofs", "quantum-information"]
META_DIR = os.path.join(generate.ROOT, "port", "metadata")
BUNDLE_META = os.path.join(generate.ROOT, "port", "bundle_metadata.json")


def source_link(a, b):
    return (f"OpenAI, ten-proofs, QuantumParallelRepetition.lean, "
            f"{REPO}/blob/{SHA}/QuantumParallelRepetition.lean#L{a}-L{b}")


def load_metadata():
    meta = {}
    if os.path.isdir(META_DIR):
        for f in sorted(os.listdir(META_DIR)):
            if f.endswith(".json"):
                for m in json.load(open(os.path.join(META_DIR, f))):
                    # Metadata is written against the source names; one node is renamed on the
                    # way to the platform because `'` cannot survive the module-name mapping.
                    meta[generate.apply_renames(m["name"])] = m
    return meta


class Tree:
    def __init__(self):
        self.g = generate.Generator(200)
        self.meta = load_metadata()
        self.bundle_meta = (json.load(open(BUNDLE_META))
                            if os.path.exists(BUNDLE_META) else {})
        self.frozen = generate.already_uploaded()

    # ------------------------------------------------------------------ items

    def items(self):
        """Every upload item with its dependencies, keyed by a stable id."""
        g, P = self.g, self.g.P
        out = {}
        for i in range(len(g.bundles)):
            deps = []
            if i > 0:
                deps.append(("def", i - 1))
            for b in g.bundles[i]:
                for d in P.bdeps[b]:
                    if d in g.nodes:
                        deps.append(("thm", d))
            out[("def", i)] = sorted(set(deps))
        for b in g.node_list:
            skel = g.sizes[b]
            deps = {("thm", d) for d in P.bdeps[b] if d in g.nodes}
            for x in skel:
                deps |= {("thm", d) for d in P.bdeps[x] if d in g.nodes}
            mb = g.max_bundle([b] + list(skel))
            if mb is not None:
                deps.add(("def", mb))
            out[("thm", b)] = sorted(deps)
        return out

    def order(self):
        items = self.items()
        seen, out = {}, []

        def visit(k, stack):
            if seen.get(k) == 2:
                return
            if seen.get(k) == 1:
                raise ValueError("cycle: " + " -> ".join(map(str, stack + [k])))
            seen[k] = 1
            for d in items[k]:
                visit(d, stack + [k])
            seen[k] = 2
            out.append(k)

        for k in sorted(items, key=lambda k: (k[0], k[1])):
            visit(k, [])
        return out

    # ------------------------------------------------------- payload builders

    def bundle_payload(self, i):
        name = self.g.bundle_name(i)
        path = os.path.join(generate.ROOT, "Definitions", f"Def_{name}.lean")
        text = open(path).read()
        blocks = self.g.bundles[i]
        spans = [linemap.span(*self.g.S.blocks[b]) for b in blocks]
        lo = min(a for a, _ in spans if a)
        hi = max(b for _, b in spans if b)
        m = self.bundle_meta.get(name, {})
        return {
            "definition_name": name,
            "definition_title": m.get("title", f"Quantum parallel repetition core definitions, part {i}"),
            "definition": text,
            "natural_language_statement": m.get("nl", ""),
            "source": source_link(lo, hi),
            "tags": TAGS,
        }

    def node_payload(self, b):
        name = self.g.name_of[b]
        pre, stmt = self.g.stub_file(b)
        sol = open(os.path.join(generate.ROOT, "Solutions",
                                f"Sol_{generate.slug(name)}.lean")).read()
        a, z = linemap.span(*self.g.S.blocks[b])
        m = self.meta.get(name, {})
        return dict(
            name=generate.apply_renames(name),
            deps=[generate.apply_renames(self.g.name_of[d])
                  for d in self.g.P.bdeps[b] if d in self.g.nodes],
            title=m.get("theorem_title", name.rsplit(".", 1)[-1].replace("_", " ")),
            nl=m.get("natural_language_statement", ""),
            source=source_link(a, z),
            tags=TAGS,
            preamble=pre,
            formal_statement=stmt,
            solution=sol,
            explanation=m.get("explanation", ""),
        )

    # ------------------------------------------------------------------- runs

    def upload_bundle(self, i, journal):
        name = self.g.bundle_name(i)
        key = "def:" + name
        if key in journal["created"]:
            return True
        payload = self.bundle_payload(i)
        journal.setdefault("inflight", {})[key] = "definition"
        upload.save(journal)
        r = api.call("POST", "/submit-definition", body=payload, account=ACCOUNT, timeout=900)
        did = r.get("definition_id")
        if not did:
            # A duplicate name on a retry means the first attempt landed.
            if "already exists" in json.dumps(r):
                did = "exists"
            else:
                print(f"  [FAIL] {name}: {json.dumps(r)[:600]}")
                return False
        journal["created"][key] = did
        journal["inflight"].pop(key, None)
        upload.save(journal)
        print(f"  [def] {name} -> {did}")
        return True

    def run(self, journal, limit=None, stop_on_failure=True):
        done = 0
        for k in self.order():
            if limit is not None and done >= limit:
                break
            if k[0] == "def":
                if not self.upload_bundle(k[1], journal):
                    if stop_on_failure:
                        return False
                    continue
                done += 1
                continue
            name = self.g.name_of[k[1]]
            if name in self.frozen:
                continue
            v = journal["verdict"].get(generate.apply_renames(name), {})
            if v.get("status") in ("ACCEPTED", "SKETCH_ACCEPTED"):
                continue
            node = self.node_payload(k[1])
            if not node["nl"] or not node["explanation"]:
                print(f"  [skip] {node['name']}: metadata not written yet")
                if stop_on_failure:
                    return False
                continue
            tid = upload.create(node, ACCOUNT, journal)
            v = upload.verify(node, tid, ACCOUNT, journal)
            print(f"  [thm] {node['name']} -> {v['status']} "
                  f"{v.get('error_message', '')[:400]}")
            if v["status"] not in ("ACCEPTED", "SKETCH_ACCEPTED"):
                if stop_on_failure:
                    print("  stopping: a leaf must be Proved before its parents go up")
                    return False
            done += 1
        return True


if __name__ == "__main__":
    cmd = sys.argv[1] if len(sys.argv) > 1 else "plan"
    t = Tree()
    j = upload.load()
    if cmd == "plan":
        order = t.order()
        nd = sum(1 for k in order if k[0] == "def")
        nt = sum(1 for k in order if k[0] == "thm")
        have = len(t.meta)
        print(f"{len(order)} items: {nd} definition bundles, {nt} theorem nodes")
        print(f"metadata written for {have}/{nt - len(t.frozen)} nodes")
        print(f"already uploaded: {len(t.frozen)}")
        for k in order[:12]:
            label = t.g.bundle_name(k[1]) if k[0] == "def" else t.g.name_of[k[1]]
            print(f"   {k[0]:4s} {label}")
    elif cmd == "canary":
        ok = t.run(j, limit=int(sys.argv[2]) if len(sys.argv) > 2 else 2)
        print("canary ok" if ok else "canary stopped")
    elif cmd == "run":
        ok = t.run(j)
        print("tree complete" if ok else "tree stopped early")
