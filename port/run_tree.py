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
import concurrent.futures as cf
import json
import os
import sys
import time

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
DISPATCH_STAGGER = 3   # seconds between dispatches, so creates do not arrive as a burst


def definition_exists(name):
    """Whether a definition bundle is already published.

    The submit response can be lost while the server still completes the insert, so this is
    what distinguishes "did not land" from "landed but we never heard".
    """
    r = api.call("GET", "/theorems", {"q": name, "status": "Definition", "limit": 20},
                 account=ACCOUNT, timeout=60, retries=2)
    return any(t.get("theorem_name") == name for t in r.get("theorems", []))


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
        # Metadata is keyed by the platform name, so the lookup has to be renamed too.
        m = self.meta.get(generate.apply_renames(name), {})
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
        # Bounded, visible attempts.  `api.call`'s default is four transport retries at 900s
        # each, which meant one bad bundle could hang for the better part of an hour before it
        # logged anything at all — and every item above it in the import order waits meanwhile.
        did = None
        for attempt in range(3):
            with upload.CREATE_LOCK:
                r = api.call("POST", "/submit-definition", body=payload, account=ACCOUNT,
                             timeout=420, retries=1)
            did = r.get("definition_id")
            if did:
                break
            # A duplicate name means the first attempt landed.  The server reports this two
            # ways: a validation message, or a raw unique-constraint violation.
            blob = json.dumps(r)
            if "already exists" in blob or "duplicate key" in blob:
                did = "exists"
                break
            if definition_exists(name):
                did = "exists"
                break
            print(f"  [retry] {name}: {blob[:200]}", flush=True)
        if not did:
            print(f"  [FAIL] {name}: {json.dumps(r)[:400]}", flush=True)
            journal["inflight"].pop(key, None)
            upload.save(journal)
            return False
        journal["created"][key] = did
        journal["inflight"].pop(key, None)
        upload.save(journal)
        print(f"  [def] {name} -> {did}")
        return True

    # -------------------------------------------------------------- scheduling

    def is_done(self, k, journal):
        if k[0] == "def":
            return ("def:" + self.g.bundle_name(k[1])) in journal["created"]
        # `frozen` means "the statement is published, so never regenerate the stub" — it does
        # NOT mean the node is finished.  It is read from the journal's `created` map, which
        # grows with every create, so treating it as done here marked created-but-unproved nodes
        # complete: their dependents went up early (SKETCH_ACCEPTED instead of ACCEPTED) and
        # their own proofs were never submitted at all.  Only a verdict settles a node.
        name = generate.apply_renames(self.g.name_of[k[1]])
        v = journal["verdict"].get(name, {})
        return v.get("status") in ("ACCEPTED", "SKETCH_ACCEPTED")

    def do_item(self, k, journal):
        if k[0] == "def":
            return self.upload_bundle(k[1], journal)
        node = self.node_payload(k[1])
        if not node["nl"] or not node["explanation"]:
            print(f"  [skip] {node['name']}: metadata not written yet", flush=True)
            return False
        fresh = node["name"] not in journal["created"]
        tid = upload.create(node, ACCOUNT, journal)
        v = upload.verify(node, tid, ACCOUNT, journal, fresh=fresh)
        print(f"  [thm] {node['name']} -> {v['status']} "
              f"{v.get('error_message', '')[:400]}", flush=True)
        return v["status"] in ("ACCEPTED", "SKETCH_ACCEPTED")

    def run_parallel(self, journal, workers=8):
        """Upload with several items in flight, still strictly leaves-first.

        An item is dispatched only once every item it imports is done, so the ordering
        guarantee is unchanged — the concurrency is across independent branches of the tree.
        Verification is server-side and takes about a minute per node, so almost all of the
        wall-clock here is waiting, which is exactly what parallelism buys back.
        """
        items = self.items()
        pending = {k: set(v) for k, v in items.items()}
        done = {k for k in items if self.is_done(k, journal)}
        for k in pending:
            pending[k] -= done
        inflight, dispatched, failures = {}, set(), []
        total = len(items) - len(done)
        finished = 0
        with cf.ThreadPoolExecutor(max_workers=workers) as ex:
            while True:
                # `dispatched` is tracked separately: `inflight` is keyed by future, so testing
                # an item against it never matches and the same item goes up twice.
                ready = [k for k in items
                         if k not in done and k not in dispatched and not pending[k]]
                ready.sort(key=lambda k: (k[0] != "def", k[1]))
                for k in ready[:max(0, workers - len(inflight))]:
                    dispatched.add(k)
                    inflight[ex.submit(self.do_item, k, journal)] = k
                    # Staggered: `submit-problem` compile-checks server-side, and firing a wave
                    # of them at once got connections closed mid-build rather than answered.
                    time.sleep(DISPATCH_STAGGER)
                if not inflight:
                    break
                got, _ = cf.wait(list(inflight), return_when=cf.FIRST_COMPLETED)
                for fut in got:
                    k = inflight.pop(fut)
                    try:
                        ok = fut.result()
                    except Exception as e:                       # noqa: BLE001
                        ok = False
                        print(f"  [error] {k}: {e}", flush=True)
                    finished += 1
                    if ok:
                        done.add(k)
                        for other in pending:
                            pending[other].discard(k)
                    else:
                        failures.append(k)
                        # Everything above a failure stays unsubmitted; a parent must never go
                        # up before the child it imports is Proved.
                    print(f"  ({finished}/{total} attempted, {len(failures)} failed)",
                          flush=True)
        if failures:
            print("blocked by failures:")
            for k in failures:
                label = self.g.bundle_name(k[1]) if k[0] == "def" else self.g.name_of[k[1]]
                print(f"   {k[0]:4s} {label}")
        return not failures

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
    elif cmd == "parallel":
        w = int(sys.argv[2]) if len(sys.argv) > 2 else 4
        rounds = int(sys.argv[3]) if len(sys.argv) > 3 else 12
        # The platform's ~300s ceiling on `submit-problem` is hit intermittently, when the
        # server is busy enough that queueing pushes a create past it.  A node that fails this
        # way succeeds on a later attempt, but everything above it in the import order is
        # blocked until then — so a single transient failure ends the run with most of the tree
        # untouched.  Retry whole rounds, pausing between them, rather than needing a human to
        # restart after each one.
        ok = False
        for attempt in range(rounds):
            ok = t.run_parallel(j, workers=w)
            if ok:
                break
            remaining = sum(1 for k in t.items() if not t.is_done(k, j))
            print(f"  round {attempt + 1} stopped early; {remaining} items left, pausing")
            time.sleep(120)
            j = upload.load()
        print("tree complete" if ok else "tree stopped early after all rounds")
