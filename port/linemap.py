#!/usr/bin/env python3
"""Map `Solutions/QPRRebase.lean` line numbers back to upstream `QuantumParallelRepetition.lean`.

Every uploaded node cites the exact upstream lines it was lifted from, and those citations have
to survive two mechanical edits: the 4.30 port prepends a shim block, and the re-base onto the
mission's definition bundle deletes ten declarations plus an `attribute` command and inserts one
import.  Rather than trust an arithmetic offset, this replays both edits while carrying the
original line number along, so the mapping is derived the same way the file was.
"""
import json
import os

ROOT = os.path.dirname(os.path.dirname(os.path.abspath(__file__)))
SHIM_OFFSET = 23           # QPRPort = upstream with a 23-line shim block prepended
PORT_GRAPH = os.path.join(ROOT, "port", "decl_graph.jsonl")
PORT_SRC = os.path.join(ROOT, "Solutions", "QPRPort.lean")
PROVIDED = [
    "QuantumParallelRepetition.Game", "QuantumParallelRepetition.Game.repeat",
    "QuantumParallelRepetition.DensityMatrix", "QuantumParallelRepetition.POVM",
    "QuantumParallelRepetition.Strategy", "QuantumParallelRepetition.Strategy.jointEffect",
    "QuantumParallelRepetition.Strategy.outcomeProbability",
    "QuantumParallelRepetition.Strategy.winProbability",
    "QuantumParallelRepetition.entangledValue",
    "QuantumParallelRepetition.repeatedEntangledValue",
]
ATTR_FIRST = "attribute [instance] Strategy.alice_fintype Strategy.bob_fintype"


def rebase_to_upstream():
    """List indexed by rebase line number; entry is the upstream line, or None if synthetic."""
    spans = {}
    with open(PORT_GRAPH) as f:
        for line in f:
            d = json.loads(line)
            spans[d["name"]] = (d["startLine"], d["endLine"])
    drop = set()
    for name in PROVIDED:
        a, b = spans[name]
        drop |= set(range(a, b + 1))
    port = open(PORT_SRC).read().split("\n")
    kept = [(i, l) for i, l in enumerate(port, 1) if i not in drop]
    # The `attribute [instance] Strategy.*` command spans two lines and is deleted as text.
    out, skip = [], 0
    for idx, (i, l) in enumerate(kept):
        if skip:
            skip -= 1
            continue
        if l.startswith(ATTR_FIRST):
            skip = 1
            continue
        out.append((i, l))
    # One import line is inserted directly after `import Mathlib`.
    final = [None]                       # 1-indexed
    for i, l in out:
        final.append(i - SHIM_OFFSET if i > SHIM_OFFSET else None)
        if l == "import Mathlib":
            final.append(None)           # the inserted `import Definitions...`
    return final


_MAP = None


def upstream(line):
    global _MAP
    if _MAP is None:
        _MAP = rebase_to_upstream()
    return _MAP[line] if 0 < line < len(_MAP) else None


def span(start, end):
    """Upstream (start, end) for a rebase span, widened past any synthetic lines."""
    a = next((upstream(i) for i in range(start, end + 1) if upstream(i)), None)
    b = next((upstream(i) for i in range(end, start - 1, -1) if upstream(i)), None)
    return a, b


if __name__ == "__main__":
    m = rebase_to_upstream()
    rebase = open(os.path.join(ROOT, "Solutions", "QPRRebase.lean")).read().split("\n")
    print(f"rebase lines {len(rebase)}  map entries {len(m) - 1}")
    up = open(os.path.join(ROOT, "Solutions", "QPRPort.lean")).read().split("\n")
    bad = 0
    for i in range(1, min(len(m), len(rebase) + 1)):
        if m[i] is None:
            continue
        if rebase[i - 1] != up[m[i] + SHIM_OFFSET - 1]:
            bad += 1
            if bad < 4:
                print(f"  MISMATCH rebase:{i} -> upstream:{m[i]}")
                print(f"    rebase   {rebase[i - 1][:90]!r}")
                print(f"    upstream {up[m[i] + SHIM_OFFSET - 1][:90]!r}")
    print(f"mismatches (before renames): {bad}")
    print("trace_mul_posSemidef_nonneg 86-95 ->", span(86, 95), "(expected 113-122)")
