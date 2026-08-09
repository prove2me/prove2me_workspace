#!/usr/bin/env python3
"""Upload batch 1 to Prove2me on the `community` account, leaves-first.

Everything transplanted from openai/ten-proofs is uploaded on that account so the work is
attributed to OpenAI's development rather than to the human's personal account; only the
reductions that connect the mission's goal and milestones use `self`.

    python3 port/run_batch1.py plan
    python3 port/run_batch1.py run
"""
import json
import os
import sys

sys.path.insert(0, os.path.dirname(os.path.abspath(__file__)))
import batch1  # noqa: E402
import upload  # noqa: E402

ACCOUNT = "community"
REPO = "https://github.com/openai/ten-proofs"
SHA = "94bc0feb6a9ff12c7d31d6de640a725c9d43d2b6"
# `port/decl_graph.jsonl` records spans in Solutions/QPRPort.lean, which is the upstream file
# with a 23-line shim block prepended.
SHIM_OFFSET = 23
TAGS = ["quantum-parallel-repetition", "openai-ten-proofs", "quantum-information"]

EXPLANATIONS = {
    "trace_mul_posSemidef_nonneg": (
        "Positivity of $R$ gives a factorisation $R = K^{*}K$ (`CStarAlgebra."
        "nonneg_iff_eq_star_mul_self`). Substituting and cycling the trace, "
        "$\\operatorname{tr}(K^{*}KE) = \\operatorname{tr}(KEK^{*})$, and $KEK^{*}$ is "
        "positive semidefinite because conjugation preserves positivity. The trace of a "
        "positive semidefinite matrix is a nonnegative real, so its real part is "
        "nonnegative.\n\nIn Lean the factorisation is destructured with `obtain ... rfl`, "
        "conjugation-positivity is `PosSemidef.mul_mul_conjTranspose_same`, and "
        "`Matrix.trace_mul_cycle` performs the cyclic rotation."),
    "Strategy.jointMeasurementOperator_positive": (
        "The joint measurement operator is the Kronecker product $A^{x}_{a} \\otimes "
        "B^{y}_{b}$ of Alice's and Bob's measurement operators, each positive semidefinite by "
        "the POVM axioms. Positive semidefiniteness is preserved by the Kronecker product, "
        "which in Lean is `Matrix.PosSemidef.kronecker`."),
    "Strategy.outcomeProbability_nonneg": (
        "The outcome probability is $\\operatorname{Re}\\operatorname{tr}(\\rho M^{x,y}_{a,b})"
        "$. Both factors are positive semidefinite — $\\rho$ because it is a density matrix, "
        "and $M^{x,y}_{a,b}$ by positivity of the joint measurement operator — so the trace "
        "pairing is nonnegative.\n\nThis is a reduction: it combines the general trace bound "
        "with the positivity of the joint measurement operator."),
    "Strategy.jointMeasurementOperator_complete": (
        "Bilinearity of the Kronecker product lets the double sum factor,\n\n"
        "$$\\sum_{a,b} A^{x}_{a} \\otimes B^{y}_{b} = \\Big(\\sum_{a} A^{x}_{a}\\Big) \\otimes "
        "\\Big(\\sum_{b} B^{y}_{b}\\Big),$$\n\nand POVM completeness makes each factor the "
        "identity. Finally $I \\otimes I = I$.\n\nIn Lean the factorisation is proved "
        "entrywise: `ext` on the index pairs reduces both sides to scalar sums, which "
        "`Finset.sum_mul` and `Finset.mul_sum` reconcile."),
    "Strategy.outcomeProbability_normalized": (
        "Linearity of the trace moves the sum over answer pairs inside, turning "
        "$\\sum_{a,b} \\operatorname{Re}\\operatorname{tr}(\\rho M^{x,y}_{a,b})$ into "
        "$\\operatorname{Re}\\operatorname{tr}\\big(\\rho \\sum_{a,b} M^{x,y}_{a,b}\\big)$. "
        "Completeness of the joint measurement replaces the inner sum by the identity, "
        "leaving $\\operatorname{Re}\\operatorname{tr}(\\rho) = 1$ because $\\rho$ is a "
        "density matrix.\n\nThis is a reduction against the completeness lemma."),
    "Strategy.winProbability_nonneg": (
        "The winning probability is a double average $\\sum_{x,y} \\mu(x,y) \\sum_{a,b} "
        "V(x,y,a,b) \\Pr[a,b \\mid x,y]$. Every question weight $\\mu(x,y)$ is nonnegative by "
        "the game axioms, and the inner sum is a sum of outcome probabilities over the "
        "accepting answer pairs (the rejecting ones contribute $0$), hence nonnegative. A sum "
        "of products of nonnegatives is nonnegative.\n\nThis is a reduction against "
        "nonnegativity of the outcome probabilities; in Lean the case split on the verifier "
        "predicate is the `split` inside the innermost `Finset.sum_nonneg`."),
    "Strategy.winProbability_le_one": (
        "Fix a question pair $(x,y)$. Dropping the verifier predicate can only increase the "
        "inner sum, because the discarded terms are nonnegative, so\n\n"
        "$$\\sum_{a,b} V(x,y,a,b)\\Pr[a,b \\mid x,y] \\;\\le\\; \\sum_{a,b} \\Pr[a,b \\mid "
        "x,y] \\;=\\; 1$$\n\nby normalisation. Averaging this bound against the normalised "
        "question distribution $\\mu$ gives $\\omega(S) \\le \\sum_{x,y}\\mu(x,y) = 1$.\n\n"
        "This is a reduction against nonnegativity and normalisation of the outcome "
        "probabilities."),
    "winProbabilities_bddAbove": (
        "Every achievable winning probability is at most one, so $1$ is an explicit upper "
        "bound for the range of $\\omega(\\cdot)$ over entangled strategies. In Lean the "
        "witness is supplied directly to the definition of `BddAbove` and the membership "
        "obligation is discharged by destructuring the range element.\n\nThis is the side "
        "condition every subsequent supremum manipulation needs."),
    "entangledValue_nonneg": (
        "If the game admits at least one entangled strategy $S$, then $0 \\le \\omega(S) \\le "
        "\\sup_{S'} \\omega(S') = \\omega^{*}(G)$, using nonnegativity of $\\omega(S)$ and the "
        "fact that a bounded-above set dominates each of its members. If no strategy exists, "
        "the range is empty and the real supremum of the empty set is $0$ by Mathlib's "
        "convention, so the bound holds trivially.\n\nThis is a reduction against "
        "nonnegativity of the winning probability and boundedness of its range; the empty "
        "case is exactly why the second hypothesis cannot be dropped."),
    "entangledValue_le_one": (
        "Every element of the range is at most one, so the supremum is at most one whenever "
        "the range is nonempty (`csSup_le`). When it is empty the real supremum is $0 \\le 1$. "
        "\n\nThis is a reduction against the one-strategy bound $\\omega(S) \\le 1$."),
}


def spans():
    """Upstream line span for each declaration, from Lean's own declaration ranges."""
    out = {}
    for line in open(os.path.join(os.path.dirname(os.path.abspath(__file__)),
                                  "decl_graph.jsonl")):
        d = json.loads(line)
        if d["startLine"]:
            out[d["name"]] = (d["startLine"] - SHIM_OFFSET, d["endLine"] - SHIM_OFFSET)
    return out


def build_nodes():
    """Attach the fields the uploader needs to each staged node."""
    sp = spans()
    nodes = []
    for nd in batch1.NODES:
        name = nd["name"]
        short = name.split(".", 1)[1]
        # The port renames two POVM/Strategy fields, so the upstream span is looked up under
        # the pre-rename name.
        key = name.replace("jointMeasurementOperator", "jointEffect")
        a, b = sp.get(key, (0, 0))
        src = (f"OpenAI, ten-proofs, QuantumParallelRepetition.lean, "
               f"{REPO}/blob/{SHA}/QuantumParallelRepetition.lean#L{a}-L{b}")
        nodes.append(dict(
            name=name,
            deps=nd["deps"],
            title=nd["title"],
            nl=nd["nl"],
            source=src,
            tags=TAGS,
            preamble=batch1.preamble(nd),
            formal_statement=nd["statement"] + " := by sorry",
            solution=batch1.sol_file(nd),
            explanation=EXPLANATIONS[short],
        ))
    return nodes


if __name__ == "__main__":
    cmd = sys.argv[1] if len(sys.argv) > 1 else "plan"
    nodes = build_nodes()
    if cmd == "plan":
        for i, n in enumerate(upload.toposort(nodes), 1):
            print(f"{i:2d}. {n['name']}")
            print(f"    source: ...#{n['source'].split('#')[-1]}  deps: {len(n['deps'])}")
    elif cmd == "run":
        j = upload.load()
        ok = upload.run(nodes, ACCOUNT, j)
        print("batch 1 complete" if ok else "batch 1 stopped early")
    else:
        print(__doc__)
