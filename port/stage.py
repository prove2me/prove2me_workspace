#!/usr/bin/env python3
"""Skeleton subtraction over `Solutions/QPRRebase.lean` (Phases 3-4 of `upload_full_project.md`).

The ported proof is a single 71k-line file whose declarations sit inside 334 self-contained
`noncomputable section` blocks, each carrying its own `open` / `set_option` / `attribute` /
`variable` header.  A staged file is therefore built by *deletion*, never by re-assembly: keep
the source spans of the declarations a node needs, keep the section headers that enclose them,
and drop everything else.  Ambient context is preserved exactly because it is never rewritten.

Two structures make that safe:

`BLOCKS`  Maximal source spans.  Lean reports a declaration range for structure projections and
          `deriving` instances too, and those ranges sit *inside* their parent's range; merging
          overlapping ranges into maximal blocks means keeping any declaration keeps the whole
          syntactic unit it came from, never a fragment.

`FRAMES`  The `namespace` / `section` nesting, read off the lines that no declaration covers.  A
          frame is emitted only when it contains something kept, so a node that touches three
          sections pays for three headers rather than for all 334.
"""
import json
import os
import re

ROOT = os.path.dirname(os.path.dirname(os.path.abspath(__file__)))
SRC = os.path.join(ROOT, "Solutions", "QPRRebase.lean")
GRAPH = os.path.join(ROOT, "port", "rebase_graph.jsonl")
ROOTS = [
    "QuantumParallelRepetition.standardQuantumParallelRepetition",
    "QuantumParallelRepetition.distributionUniformExponential",
]
# The bundle `Definitions.Def_quantum_parallel_repetition_game` already provides these, and the
# rebase deleted them from the source, so they are dependencies with no span of their own.
BUNDLE_PROVIDES = {
    "QuantumParallelRepetition.Game", "QuantumParallelRepetition.Game.repeat",
    "QuantumParallelRepetition.DensityMatrix", "QuantumParallelRepetition.POVM",
    "QuantumParallelRepetition.Strategy",
    "QuantumParallelRepetition.Strategy.jointMeasurementOperator",
    "QuantumParallelRepetition.Strategy.outcomeProbability",
    "QuantumParallelRepetition.Strategy.winProbability",
    "QuantumParallelRepetition.entangledValue",
    "QuantumParallelRepetition.repeatedEntangledValue",
}


def load_graph():
    G = {}
    with open(GRAPH) as f:
        for line in f:
            if line.strip():
                d = json.loads(line)
                G[d["name"]] = d
    return G


def deps(G, n):
    d = G[n]
    return set(d["typeDeps"]) | set(d["valueDeps"])


def reachable(G, roots=None):
    seen, stack = set(), list(roots or ROOTS)
    while stack:
        n = stack.pop()
        if n in seen or n not in G:
            continue
        seen.add(n)
        stack.extend(deps(G, n))
    return seen


def build_blocks(G):
    """Merge declaration ranges into maximal spans; return (blocks, block_of, decls_in).

    blocks    sorted list of (start, end)
    block_of  declaration name -> block index
    decls_in  block index -> set of declaration names
    """
    spans = sorted((d["startLine"], d["endLine"], n) for n, d in G.items() if d["startLine"])
    blocks, owners = [], []
    for s, e, n in spans:
        if blocks and s <= blocks[-1][1]:
            blocks[-1] = (blocks[-1][0], max(blocks[-1][1], e))
            owners[-1].add(n)
        else:
            blocks.append((s, e))
            owners.append({n})
    block_of = {}
    for i, names in enumerate(owners):
        for n in names:
            block_of[n] = i
    return blocks, block_of, owners


_FRAME_OPEN = re.compile(r"^\s*(?:noncomputable\s+)?(section|namespace)\b")
_FRAME_END = re.compile(r"^\s*end\b")


def build_frames(src, covered):
    """Frame nesting from the lines no declaration covers.

    Returns (frames, frame_of_line).  Each frame is a dict with the line numbers of its opening
    command and its `end`, its parent, and the plain header lines (`open`, `variable`,
    `set_option`, `attribute`, ...) that belong directly to it.

    Three kinds of skeleton line are deliberately *not* headers: `import`, which is only legal
    at the top of a file and is regenerated per node; comments and docstrings, which carry no
    scope; and `omit ... in` modifiers, which bind to the declaration that follows them and so
    travel with a block rather than with a section.
    """
    frames = [{"open": None, "end": None, "parent": None, "header": [], "depth": 0}]
    stack = [0]
    frame_of_line = {}
    i = 1
    in_comment = False
    while i <= len(src):
        if i in covered:
            frame_of_line[i] = stack[-1]
            i += 1
            continue
        line = src[i - 1]
        s = line.strip()
        frame_of_line[i] = stack[-1]
        if not s:
            i += 1
            continue
        if in_comment:
            if "-/" in s:
                in_comment = False
            i += 1
            continue
        if s.startswith("/-"):
            if "-/" not in s[2:]:
                in_comment = True
            i += 1
            continue
        if s.startswith("--") or s.startswith("import ") or s.endswith(" in"):
            i += 1
            continue
        if _FRAME_OPEN.match(line):
            f = {"open": i, "end": None, "parent": stack[-1], "header": [], "depth": len(stack)}
            frames.append(f)
            frame_of_line[i] = len(frames) - 1
            stack.append(len(frames) - 1)
        elif _FRAME_END.match(line):
            frames[stack[-1]]["end"] = i
            frame_of_line[i] = stack[-1]
            if len(stack) > 1:
                stack.pop()
        else:
            frames[stack[-1]]["header"].append(i)
        i += 1
    return frames, frame_of_line


class Source:
    def __init__(self):
        self.G = load_graph()
        self.src = open(SRC).read().split("\n")
        self.blocks, self.block_of, self.decls_in = build_blocks(self.G)
        self.covered = set()
        for s, e in self.blocks:
            self.covered.update(range(s, e + 1))
        self.frames, self.frame_of_line = build_frames(self.src, self.covered)
        # A block's frame is the frame open at its first line.
        self.frame_of_block = [self.frame_of_line[s] for s, _ in self.blocks]
        # `omit [...] in` / `open ... in` modify the declaration that follows; they must travel
        # with it rather than with the section.
        self.modifier_of_block = {}
        for bi, (s, _e) in enumerate(self.blocks):
            j = s - 1
            mods = []
            while j >= 1 and j not in self.covered:
                t = self.src[j - 1].strip()
                if not t:
                    break
                if t.endswith(" in"):
                    mods.append(j)
                    j -= 1
                    continue
                break
            self.modifier_of_block[bi] = sorted(mods)

    def block_lines(self, bi):
        s, e = self.blocks[bi]
        return e - s + 1

    def render(self, keep_names, header):
        """The staged Lean text keeping exactly the blocks owning `keep_names`."""
        return self.render_blocks({self.block_of[n] for n in keep_names if n in self.block_of},
                                  header)

    def render_blocks(self, keep_blocks, header):
        emit = set()
        for bi in keep_blocks:
            s, e = self.blocks[bi]
            emit.update(range(s, e + 1))
            emit.update(self.modifier_of_block[bi])
        # Mark every frame that (transitively) contains a kept block.
        live = set()
        for bi in keep_blocks:
            f = self.frame_of_block[bi]
            while f is not None and f not in live:
                live.add(f)
                f = self.frames[f]["parent"]
        for fi in live:
            fr = self.frames[fi]
            if fr["open"]:
                emit.add(fr["open"])
            if fr["end"]:
                emit.add(fr["end"])
            emit.update(fr["header"])
        out = [header.rstrip("\n"), ""]
        prev = None
        for i in sorted(emit):
            if prev is not None and i > prev + 1:
                out.append("")
            out.append(self.src[i - 1])
            prev = i
        return "\n".join(out) + "\n"


if __name__ == "__main__":
    S = Source()
    R = reachable(S.G)
    print(f"declarations {len(S.G)}  reachable {len(R)}")
    print(f"blocks {len(S.blocks)}  frames {len(S.frames)}")
    kb = {S.block_of[n] for n in R if n in S.block_of}
    print(f"reachable blocks {len(kb)}  lines {sum(S.block_lines(b) for b in kb)}")
    missing = sorted(n for n in R if n not in S.block_of)
    print(f"reachable without a span: {len(missing)} -> {missing[:6]}")
