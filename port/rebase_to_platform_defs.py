#!/usr/bin/env python3
"""Stage 2 of the port: re-base the ported OpenAI file onto the mission's published
definition bundle `Definitions.Def_quantum_parallel_repetition_game`.

The platform bundle is a verbatim subset of the upstream file's own definitions with two
fields renamed:

    POVM.effect              ->  POVM.operator
    Strategy.jointEffect     ->  Strategy.jointMeasurementOperator

So re-basing is (a) delete the declarations the bundle already provides, (b) apply the two
renames, (c) import the bundle.  Everything else in the file is untouched.

Deletion spans come from `port/decl_graph.jsonl` (Lean's own `findDeclarationRanges?`, in
`Solutions/QPRPort.lean` coordinates) rather than hand-counted line numbers — hand-counting
silently truncates multi-line structure and `where` bodies.

Usage:  python3 port/rebase_to_platform_defs.py [SRC] [DST] [GRAPH]
"""
import json
import re
import sys

SRC = sys.argv[1] if len(sys.argv) > 1 else "Solutions/QPRPort.lean"
DST = sys.argv[2] if len(sys.argv) > 2 else "Solutions/QPRRebase.lean"
GRAPH = sys.argv[3] if len(sys.argv) > 3 else "port/decl_graph.jsonl"

PROVIDED = [
    "QuantumParallelRepetition.Game",
    "QuantumParallelRepetition.Game.repeat",
    "QuantumParallelRepetition.DensityMatrix",
    "QuantumParallelRepetition.POVM",
    "QuantumParallelRepetition.Strategy",
    "QuantumParallelRepetition.Strategy.jointEffect",
    "QuantumParallelRepetition.Strategy.outcomeProbability",
    "QuantumParallelRepetition.Strategy.winProbability",
    "QuantumParallelRepetition.entangledValue",
    "QuantumParallelRepetition.repeatedEntangledValue",
]

# The `attribute [instance]` block is a command, not a declaration, so it has no span in the
# graph; the bundle re-issues it.
ATTR = ("attribute [instance] Strategy.alice_fintype Strategy.bob_fintype\n"
        "  Strategy.alice_decidableEq Strategy.bob_decidableEq\n")

spans = {}
for line in open(GRAPH):
    d = json.loads(line)
    spans[d["name"]] = (d["startLine"], d["endLine"])

lines = open(SRC).read().split("\n")
drop = set()
for name in PROVIDED:
    assert name in spans, f"{name} not in {GRAPH}"
    a, b = spans[name]
    assert a and b >= a, f"{name} has no usable span {a}-{b}"
    drop |= set(range(a, b + 1))
    print(f"  deleted {name} (lines {a}-{b})")

s = "\n".join(l for i, l in enumerate(lines, 1) if i not in drop)

n = s.count(ATTR)
assert n == 1, f"[attribute block] expected 1 occurrence, found {n}"
s = s.replace(ATTR, "")
print("  deleted attribute [instance] Strategy.*")

# `\beffect\b` leaves compound identifiers (`twoBlockPOVM_effect_inl`) alone because `_` is a
# word character; every bare occurrence is the POVM field.
s, n_effect = re.subn(r"\beffect\b", "operator", s)
# `jointEffect` is only ever the lowercase-j field/lemma prefix; `…JointEffect` names differ in
# case and are left as they are.
s, n_joint = re.subn(r"jointEffect", "jointMeasurementOperator", s)
print(f"  renamed effect -> operator: {n_effect}")
print(f"  renamed jointEffect -> jointMeasurementOperator: {n_joint}")

MARK = "import Mathlib\n"
assert s.count(MARK) == 1
s = s.replace(MARK, MARK + "import Definitions.Def_quantum_parallel_repetition_game\n")

open(DST, "w").write(s)
print(f"wrote {DST} ({s.count(chr(10)) + 1} lines)")
