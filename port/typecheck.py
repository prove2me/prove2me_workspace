#!/usr/bin/env python3
"""Phase 5, second gate: the statement and the proof must elaborate to the same type.

`/verify` accepts a submission only if `solution` has exactly the type of the theorem it targets.
The staged stub and the staged solution write the same statement text in the same flattened
scope, so they *should* agree — but they are elaborated in files with different import sets, and
imports decide which instances are in scope.  Rather than assume that never matters, each node
gets a checker that imports both modules and compares the two elaborated types directly.

A build failure here is a node whose upload would have been rejected, caught before the
statement becomes immutable.

    python3 port/typecheck.py write     # generate Checks/Chk_*.lean
    lake build Checks
"""
import os
import sys

sys.path.insert(0, os.path.dirname(os.path.abspath(__file__)))
import generate  # noqa: E402

TEMPLATE = """import Theorems.Thm_{slug}
import Solutions.Sol_{slug}

open Lean in
run_meta do
  let env ← getEnv
  let some stub := env.find? `{name} | throwError "missing statement {name}"
  let some sol := env.find? `solution | throwError "missing solution for {name}"
  unless stub.type == sol.type do
    let a ← Meta.ppExpr stub.type
    let b ← Meta.ppExpr sol.type
    let same ← Meta.isDefEq stub.type sol.type
    throwError "type mismatch for {name} (defeq: {{same}})\\nstatement: {{a}}\\nsolution:  {{b}}"
"""


def write():
    g = generate.Generator(200)
    out = os.path.join(generate.ROOT, "Checks")
    os.makedirs(out, exist_ok=True)
    n = 0
    for b in g.node_list:
        name = generate.apply_renames(g.name_of[b])
        slug = generate.slug(g.name_of[b])
        open(os.path.join(out, f"Chk_{slug}.lean"), "w").write(
            TEMPLATE.format(slug=slug, name=name))
        n += 1
    return n


if __name__ == "__main__":
    print(f"wrote {write()} checkers to Checks/")
