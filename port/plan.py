#!/usr/bin/env python3
"""Phase 2 of `upload_full_project.md`: choose what becomes a platform node.

The ported proof is one topologically-ordered file, and that ordering is what makes a safe
decomposition possible at all.  Two kinds of node come out of it:

*Definition bundles* carry every `def` / `structure` / `inductive`, because a theorem's
`formal_statement` may only mention constants its `preamble` can import.  Bundles are cut in
source order and each imports its predecessor.

*Theorem nodes* are the cut points of the proof itself.  Everything between two cut points is
inlined into the later one's solution file by skeleton subtraction, so the node count is a dial
on granularity, not on completeness.

Three things force a cut, and the rest is a size cap:

  - the two root theorems, and the ten already uploaded in batch 1 (immutable, so they are
    fixed points of any later plan);
  - every theorem a `def` cites in its body — a bundle may `import Theorems.Thm_<name>`, but it
    cannot contain an unproved proof, so those theorems must be nodes in their own right;
  - a cut wherever a bundle would otherwise have to import a theorem that depends on a
    definition in that same bundle, which is the one way this construction could go circular.
"""
import json
import os
import re
import sys

sys.path.insert(0, os.path.dirname(os.path.abspath(__file__)))
import stage  # noqa: E402

DEF_KINDS = ("def", "inductive", "ctor", "rec")
_IDENT_RE = re.compile(r"[A-Za-z_][A-Za-z0-9_'!?]*(?:\.[A-Za-z_][A-Za-z0-9_'!?]*)*")
_COMMENT_RE = re.compile(r"--[^\n]*|/-.*?-/", re.S)
CAP_LINES = 1400          # largest staged solution file, in source lines
CAP_BUNDLE = 900          # largest definition bundle, in source lines
BATCH1 = json.load(open(os.path.join(stage.ROOT, "port", "batch1_names.json")))


NODE_SET = os.path.join(stage.ROOT, "port", "node_set.json")


def frozen_node_set():
    """The cut, once decided, read back rather than recomputed.

    `choose` is greedy, so its result depends on its inputs — including the journal, via
    `published_nodes`.  That made the plan a moving target: as uploads progressed the cut
    shifted, and a solution generated under an earlier cut could import a node the later cut no
    longer contained.  One did, and failed with `unknown import`.  Freezing the set makes the
    staged tree and the platform describe the same graph for the rest of the run.
    """
    if os.path.exists(NODE_SET):
        return json.load(open(NODE_SET))
    return None


def published_nodes():
    """Every theorem name already published, mapped back to its source name.

    The cut is chosen greedily, so adding one node can change which others the size cap picks —
    and a published statement that stops being a node would leave the plan describing a tree
    that does not match what the platform holds.  Anything already created is therefore a fixed
    point, exactly like batch 1.
    """
    p = os.path.join(stage.ROOT, "port", "upload_journal.json")
    if not os.path.exists(p):
        return []
    created = json.load(open(p)).get("created", {})
    return [n.replace("posSemidef_blockDiagonal_prime", "posSemidef_blockDiagonal'")
            for n in created if not n.startswith("def:")]

# Cut points added because the server, not the cap, said so.  `/verify` compiles a submission
# under a ~300s budget, and two nodes exceeded it while their Alice-side twins passed: Bob's
# proofs sum in the opposite order and carry extra `Finset.sum_comm` / `norm_sub_rev` steps, so
# they are genuinely more expensive to elaborate.  These blocks are the heavy shared material in
# both; promoting them to nodes means the solutions import them instead of re-elaborating them.
FORCE_NODES = [
    "QuantumParallelRepetition.exactRevealCode_eq_iff_fair_question_masks",
    "QuantumParallelRepetition.exactAliceQuestionFilter_eq_jointPrefixOperatorFilter",
    "QuantumParallelRepetition.exactBobQuestionFilter_eq_jointPrefixOperatorFilter",
    "QuantumParallelRepetition.exactAliceQuestionMass_eq_jointPrefixQuestionMass",
    "QuantumParallelRepetition.exactBobQuestionMass_eq_jointPrefixQuestionMass",
    "QuantumParallelRepetition.exactReverseAliceContext_prefix_before_marked",
    "QuantumParallelRepetition.exactFixedAliceQuestionMass_eq_product",
    "QuantumParallelRepetition.exactInsertedPrefixBefore_marker_eq",
]


class Plan:
    def __init__(self):
        self.S = stage.Source()
        S = self.S
        self.G = S.G
        self.R = stage.reachable(S.G)
        # Spanless auto-generated constants (`.injEq`, `.match_1`) resolve to the block of the
        # longest ancestor name that has one.
        self.owner = dict(S.block_of)
        for n in self.G:
            if n in self.owner:
                continue
            parts = n.split(".")
            for k in range(len(parts) - 1, 0, -1):
                p = ".".join(parts[:k])
                if p in S.block_of:
                    self.owner[n] = S.block_of[p]
                    break
        self.nb = len(S.blocks)
        # Principal declaration of each block: the one whose span opens it.
        self.principal = []
        for bi, (s, _e) in enumerate(S.blocks):
            cands = [n for n in S.decls_in[bi] if self.G[n]["startLine"] == s]
            cands.sort(key=lambda n: (self.G[n]["endLine"], n), reverse=True)
            self.principal.append(cands[0] if cands else sorted(S.decls_in[bi])[0])
        self.is_def_block = [
            any(self.G[n]["kind"] in DEF_KINDS for n in S.decls_in[bi]) for bi in range(self.nb)
        ]
        self._scope_memo = {}
        self._def_closure_memo = {}
        self.bdeps = self._block_deps()
        self.order = sorted(range(self.nb), key=lambda b: S.blocks[b][0])
        self.pos = {b: i for i, b in enumerate(self.order)}

    def _block_deps(self):
        S, G = self.S, self.G
        out = []
        for bi in range(self.nb):
            d = set()
            for n in S.decls_in[bi]:
                for x in stage.deps(G, n):
                    if x in stage.BUNDLE_PROVIDES:
                        continue
                    b = self.owner.get(x)
                    if b is not None and b != bi:
                        d.add(b)
            out.append(d)
        for bi, extra in enumerate(self._textual_deps()):
            out[bi] |= extra - {bi}
        return out

    def _textual_deps(self):
        """Constants a block *names* but whose proof term does not retain them.

        `getUsedConstants` reports what the elaborated proof keeps, which under-approximates
        what the source needs: `simp only [Game.repeat_questionWeight]` can close a goal by
        reduction and leave no trace of the lemma in the term, yet the text still has to
        elaborate.  Staging on semantic dependencies alone produces files that name constants
        they never imported.

        Identifiers are resolved the way Lean resolves them — against the enclosing namespaces
        and the `open`s in scope — so a local hypothesis is not mistaken for a declaration.  A
        spurious hit would only inline one extra block, while a miss is a build failure.
        """
        S = self.S
        names = set(S.G)
        out = []
        for bi in range(self.nb):
            s, e = S.blocks[bi]
            text = _COMMENT_RE.sub(" ", "\n".join(S.src[s - 1:e]))
            found = set()
            for m in _IDENT_RE.finditer(text):
                t = m.group(0)
                for p in self.scope_prefixes(bi):
                    full = f"{p}.{t}" if p else t
                    if full in names:
                        ob = self.owner.get(full)
                        if ob is not None:
                            found.add(ob)
                        break
            out.append(found)
        return out

    def scope_prefixes(self, bi):
        """Namespace prefixes and `open`ed namespaces visible at block `bi`."""
        if bi in self._scope_memo:
            return self._scope_memo[bi]
        S = self.S
        chain, f = [], S.frame_of_block[bi]
        while f is not None:
            chain.append(f)
            f = S.frames[f]["parent"]
        out, ns = {""}, []
        for fi in reversed(chain):
            fr = S.frames[fi]
            if fr["open"] is not None:
                m = re.match(r"^(?:noncomputable\s+)?namespace\s+(\S+)",
                             S.src[fr["open"] - 1].strip())
                if m:
                    ns.append(m.group(1))
            for i in fr["header"]:
                t = S.src[i - 1].strip()
                if t.startswith("open "):
                    for w in t[5:].replace(" in", "").split():
                        if w != "scoped":
                            out.add(w)
        for k in range(len(ns)):
            out.add(".".join(ns[:k + 1]))
        self._scope_memo[bi] = out
        return out

    # ---------------------------------------------------------------- bundles

    def def_closure(self, b):
        """Every definition block `b` needs, transitively.

        This is the set whose bundles a node's staged file must import, because its solution
        inlines the whole proof closure.  The cut has to respect the transitive set, not just
        `b`'s direct dependencies: a bundle that imports `Thm_t` while `t` reaches back into
        that same bundle through an inlined helper would be an import cycle.
        """
        if b in self._def_closure_memo:
            return self._def_closure_memo[b]
        out, stack, seen = set(), list(self.bdeps[b]), set()
        while stack:
            x = stack.pop()
            if x in seen:
                continue
            seen.add(x)
            if self.is_def_block[x]:
                out.add(x)
            stack.extend(self.bdeps[x])
        self._def_closure_memo[b] = out
        return out

    def cut_bundles(self):
        """Sweep source order, closing a bundle whenever keeping it open would be unsound.

        Returns (bundles, forced_nodes).  `bundles` is a list of block lists; `forced_nodes` is
        the set of theorem blocks a bundle imports, which must therefore be uploaded theorems.
        """
        bundles, forced = [], set()
        cur, cur_lines, cur_set = [], 0, set()
        for b in self.order:
            if not self.is_def_block[b]:
                continue
            thm_deps = {d for d in self.bdeps[b] if not self.is_def_block[d]}
            # A theorem this definition cites must already be an uploaded node, and its own
            # definition dependencies must live in an *earlier* bundle than this one.
            clash = any(dd in cur_set for t in thm_deps for dd in self.def_closure(t))
            if cur and (clash or cur_lines + self.S.block_lines(b) > CAP_BUNDLE):
                bundles.append(cur)
                cur, cur_lines, cur_set = [], 0, set()
            cur.append(b)
            cur_set.add(b)
            cur_lines += self.S.block_lines(b)
            forced |= thm_deps
        if cur:
            bundles.append(cur)
        return bundles, forced

    # ------------------------------------------------------------------ nodes

    def skeleton(self, b, nodes):
        """Blocks inlined into `b`'s solution: its dependency closure, stopping at other nodes
        and at definition blocks (which arrive by importing a bundle)."""
        out, stack = set(), list(self.bdeps[b])
        while stack:
            x = stack.pop()
            if x in out or x in nodes or self.is_def_block[x]:
                continue
            out.add(x)
            stack.extend(self.bdeps[x])
        return out

    def choose(self, target):
        S = self.S
        bundles, forced = self.cut_bundles()
        pinned = frozen_node_set()
        if pinned is not None:
            nodes = {self.owner[n] for n in pinned if n in self.owner}
            nodes = {b for b in nodes if not self.is_def_block[b]}
            return bundles, nodes, {b: self.skeleton(b, nodes) for b in nodes}
        nodes = set(forced)
        for n in stage.ROOTS + BATCH1 + FORCE_NODES + published_nodes():
            if n in self.owner:
                nodes.add(self.owner[n])
        nodes = {b for b in nodes if not self.is_def_block[b]}
        # Grow until every solution file fits the cap: repeatedly split the largest file at the
        # dependency inside it that removes the most lines.
        sizes = {b: self.skeleton(b, nodes) for b in nodes}
        while True:
            # Ties are broken by source position so the plan is reproducible: the journal, the
            # staged files and the uploaded names all have to agree across runs.
            worst = max(sizes, key=lambda b: (sum(S.block_lines(x) for x in sizes[b]), -self.pos[b]))
            worst_lines = sum(S.block_lines(x) for x in sizes[worst])
            if worst_lines <= CAP_LINES and len(nodes) >= target:
                break
            if worst_lines <= 60:
                break
            cand = max(sizes[worst],
                       key=lambda x: ((len(self.skeleton(x, nodes)) + 1) * S.block_lines(x),
                                      -self.pos[x]))
            nodes.add(cand)
            sizes = {b: self.skeleton(b, nodes) for b in nodes}
            if len(nodes) > 4000:
                break
        return bundles, nodes, sizes


if __name__ == "__main__":
    P = Plan()
    target = int(sys.argv[1]) if len(sys.argv) > 1 else 200
    bundles, forced = P.cut_bundles()
    print(f"blocks {P.nb}  def-blocks {sum(P.is_def_block)}  thm-blocks "
          f"{P.nb - sum(P.is_def_block)}")
    print(f"definition bundles {len(bundles)}  "
          f"lines {sum(P.S.block_lines(b) for bl in bundles for b in bl)}  "
          f"forced theorem nodes {len(forced)}")
    bundles, nodes, sizes = P.choose(target)
    tot = sum(sum(P.S.block_lines(x) for x in sizes[b]) + P.S.block_lines(b) for b in nodes)
    big = sorted(nodes, key=lambda b: -sum(P.S.block_lines(x) for x in sizes[b]))[:8]
    print(f"theorem nodes {len(nodes)}  staged lines {tot}")
    for b in big:
        print(f"   {sum(P.S.block_lines(x) for x in sizes[b]):6d} + "
              f"{P.S.block_lines(b):4d}  {P.principal[b]}")
