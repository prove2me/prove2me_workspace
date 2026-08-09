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
import sys

sys.path.insert(0, os.path.dirname(os.path.abspath(__file__)))
import stage  # noqa: E402

DEF_KINDS = ("def", "inductive", "ctor", "rec")
CAP_LINES = 1400          # largest staged solution file, in source lines
CAP_BUNDLE = 900          # largest definition bundle, in source lines
BATCH1 = json.load(open(os.path.join(stage.ROOT, "port", "batch1_names.json")))


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
        return out

    # ---------------------------------------------------------------- bundles

    def def_closure(self, b, _memo={}):
        """Every definition block `b` needs, transitively.

        This is the set whose bundles a node's staged file must import, because its solution
        inlines the whole proof closure.  The cut has to respect the transitive set, not just
        `b`'s direct dependencies: a bundle that imports `Thm_t` while `t` reaches back into
        that same bundle through an inlined helper would be an import cycle.
        """
        key = (id(self), b)
        if key in _memo:
            return _memo[key]
        out, stack, seen = set(), list(self.bdeps[b]), set()
        while stack:
            x = stack.pop()
            if x in seen:
                continue
            seen.add(x)
            if self.is_def_block[x]:
                out.add(x)
            stack.extend(self.bdeps[x])
        _memo[key] = out
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
        nodes = set(forced)
        for n in stage.ROOTS + BATCH1:
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
