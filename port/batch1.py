#!/usr/bin/env python3
"""Batch 1 — the Born-rule spine of OpenAI's development.

Ten small, genuinely reusable lemmas lifted verbatim from
`openai/ten-proofs/QuantumParallelRepetition.lean` (with the mission bundle's two field
renames applied) and platformised per Phase 4 of `upload_full_project.md`.

Its purpose is to exercise the whole pipeline end-to-end on real content — preamble/statement
split, targeted imports with no `import Mathlib`, a genuine multi-level reduction chain, and
cross-account import visibility — before the ~200-node generator is written.

`python3 port/batch1.py` writes the staged `Theorems/Thm_*.lean` and `Solutions/Sol_*.lean`
files so `lake build` can validate the exact text that will be uploaded.
"""
import json
import os

NS = "QuantumParallelRepetition"

# The scope every node inherits from the source file.  `variable` lines are hoisted verbatim so
# the elaborated binder structure is unchanged (Phase 4).
# The upstream file says `import Mathlib`, which the platform forbids.  These are the modules
# that scope actually needs: `Analysis.Matrix.Order` supplies the `MatrixOrder` scoped
# instances and `PosSemidef.kronecker`, and `Rpow.Basic` supplies
# `CStarAlgebra.nonneg_iff_eq_star_mul_self`.
IMPORTS_BASE = (
    "import Definitions.Def_quantum_parallel_repetition_game\n"
    "import Mathlib.Analysis.Matrix.Order\n"
    "import Mathlib.Analysis.SpecialFunctions.ContinuousFunctionalCalculus.Rpow.Basic\n"
)

SCOPE_BASE = """open scoped BigOperators ComplexOrder Kronecker MatrixOrder
open Matrix
open QuantumParallelRepetition"""

VARS_GAME = """
variable {X Y A B : Type*}
variable [Fintype X] [Fintype Y] [Fintype A] [Fintype B]"""

VARS_STRATEGY = VARS_GAME + """
variable {G : Game X Y A B}"""

SRC = ("Prove2me port of openai/ten-proofs, QuantumParallelRepetition.lean, "
       "https://github.com/openai/ten-proofs")

NODES = [
    dict(
        name=f"{NS}.trace_mul_posSemidef_nonneg",
        title="Trace of a product of positive semidefinite matrices is nonnegative",
        vars="",
        deps=[],
        statement="""theorem QuantumParallelRepetition.trace_mul_posSemidef_nonneg
    {d : Type*} [Fintype d] [DecidableEq d]
    {R E : Matrix d d ℂ} (hR : R.PosSemidef) (hE : E.PosSemidef) :
    0 ≤ (Matrix.trace (R * E)).re""",
        proof="""  obtain ⟨K, rfl⟩ := CStarAlgebra.nonneg_iff_eq_star_mul_self.mp hR.nonneg
  have hpositive : (K * E * star K).PosSemidef := by
    simpa [star_eq_conjTranspose] using hE.mul_mul_conjTranspose_same K
  have htrace : 0 ≤ (Matrix.trace (K * E * star K)).re :=
    (Complex.nonneg_iff.mp hpositive.trace_nonneg).1
  rw [Matrix.trace_mul_cycle] at htrace
  exact htrace""",
        nl=("For finite-dimensional complex matrices $R$ and $E$ that are both positive "
            "semidefinite, the trace of the product $RE$ has nonnegative real part:\n\n"
            "$$\\operatorname{Re}\\operatorname{tr}(RE) \\;\\ge\\; 0 .$$\n\n"
            "Writing $R = K^{*}K$ using positivity and cycling the trace turns "
            "$\\operatorname{tr}(RE)$ into $\\operatorname{tr}(KEK^{*})$, the trace of a "
            "positive semidefinite matrix, which is a nonnegative real.\n\n"
            "This is the Born rule's nonnegativity in its bare linear-algebraic form: with "
            "$R$ a density matrix and $E$ a measurement operator it says that measurement "
            "probabilities are nonnegative, and it underlies every probability estimate in "
            "the parallel-repetition development."),
    ),
    dict(
        name=f"{NS}.Strategy.jointMeasurementOperator_positive",
        title="The joint measurement operator is positive semidefinite",
        vars=VARS_STRATEGY,
        deps=[],
        statement="""theorem QuantumParallelRepetition.Strategy.jointMeasurementOperator_positive
    (S : Strategy G) (x : X) (y : Y) (a : A) (b : B) :
    (S.jointMeasurementOperator x y a b).PosSemidef""",
        proof="""  exact ((S.aliceMeasurement x).positive a).kronecker
    ((S.bobMeasurement y).positive b)""",
        nl=("For an entangled strategy $S$, questions $x,y$ and answers $a,b$, the joint "
            "measurement operator\n\n"
            "$$M^{x,y}_{a,b} \\;=\\; A^{x}_{a} \\otimes B^{y}_{b}$$\n\n"
            "is positive semidefinite, where $A^{x}_{a}$ is Alice's measurement operator for "
            "answer $a$ on question $x$ and $B^{y}_{b}$ is Bob's for answer $b$ on question "
            "$y$. The Kronecker product of two positive semidefinite matrices is positive "
            "semidefinite, and each factor is positive by the POVM axioms.\n\n"
            "Together with nonnegativity of the trace pairing this is what makes the "
            "quantity $\\operatorname{tr}(\\rho\\, M^{x,y}_{a,b})$ a genuine probability."),
    ),
    dict(
        name=f"{NS}.Strategy.outcomeProbability_nonneg",
        title="Born-rule outcome probabilities are nonnegative",
        vars=VARS_STRATEGY,
        deps=[f"{NS}.trace_mul_posSemidef_nonneg",
              f"{NS}.Strategy.jointMeasurementOperator_positive"],
        statement="""theorem QuantumParallelRepetition.Strategy.outcomeProbability_nonneg
    (S : Strategy G) (x : X) (y : Y) (a : A) (b : B) :
    0 ≤ S.outcomeProbability x y a b""",
        proof="""  exact QuantumParallelRepetition.trace_mul_posSemidef_nonneg S.state.positive
    (S.jointMeasurementOperator_positive x y a b)""",
        nl=("The probability that an entangled strategy $S$ produces the answer pair $(a,b)$ "
            "on the question pair $(x,y)$ is nonnegative:\n\n"
            "$$\\Pr[a,b \\mid x,y] \\;=\\; \\operatorname{Re}\\operatorname{tr}"
            "\\!\\left(\\rho\\, (A^{x}_{a} \\otimes B^{y}_{b})\\right) \\;\\ge\\; 0 ,$$\n\n"
            "where $\\rho$ is the shared state. This is the Born rule applied to the joint "
            "measurement operator, and it follows by pairing the positivity of $\\rho$ with "
            "the positivity of $A^{x}_{a} \\otimes B^{y}_{b}$.\n\n"
            "It is the first of the two facts — nonnegativity and normalisation — that make "
            "the outcome distribution of a strategy an actual probability distribution."),
    ),
    dict(
        name=f"{NS}.Strategy.jointMeasurementOperator_complete",
        title="The joint measurement operators sum to the identity",
        vars=VARS_STRATEGY,
        deps=[],
        statement="""theorem QuantumParallelRepetition.Strategy.jointMeasurementOperator_complete
    (S : Strategy G) (x : X) (y : Y) :
    (∑ a : A, ∑ b : B, S.jointMeasurementOperator x y a b) = 1""",
        proof="""  classical
  calc
    (∑ a : A, ∑ b : B, S.jointMeasurementOperator x y a b) =
        (∑ a : A, (S.aliceMeasurement x).operator a) ⊗ₖ
          (∑ b : B, (S.bobMeasurement y).operator b) := by
            ext ⟨i, j⟩ ⟨k, l⟩
            simp only [jointMeasurementOperator, Matrix.sum_apply,
              Matrix.kroneckerMap_apply]
            rw [Finset.sum_mul]
            simp_rw [Finset.mul_sum]
    _ = 1 := by
      rw [(S.aliceMeasurement x).complete, (S.bobMeasurement y).complete]
      exact Matrix.one_kronecker_one""",
        nl=("For every question pair $(x,y)$ the joint measurement operators of an entangled "
            "strategy form a resolution of the identity:\n\n"
            "$$\\sum_{a \\in A} \\sum_{b \\in B} A^{x}_{a} \\otimes B^{y}_{b} \\;=\\; I .$$\n\n"
            "Bilinearity of the Kronecker product lets the double sum be factored as "
            "$\\left(\\sum_a A^{x}_{a}\\right) \\otimes \\left(\\sum_b B^{y}_{b}\\right)$, "
            "and each factor is the identity by POVM completeness; the identity tensored "
            "with the identity is the identity on the joint system.\n\n"
            "This is the completeness half of the measurement axioms, and it is what forces "
            "the outcome probabilities of a strategy to sum to one."),
    ),
    dict(
        name=f"{NS}.Strategy.outcomeProbability_normalized",
        title="Born-rule outcome probabilities sum to one",
        vars=VARS_STRATEGY,
        deps=[f"{NS}.Strategy.jointMeasurementOperator_complete"],
        statement="""theorem QuantumParallelRepetition.Strategy.outcomeProbability_normalized
    (S : Strategy G) (x : X) (y : Y) :
    (∑ a : A, ∑ b : B, S.outcomeProbability x y a b) = 1""",
        proof="""  classical
  calc
    (∑ a : A, ∑ b : B, S.outcomeProbability x y a b) =
        (Matrix.trace
          (S.state.matrix *
            (∑ a : A, ∑ b : B, S.jointMeasurementOperator x y a b))).re := by
            simp [outcomeProbability, Matrix.mul_sum, Matrix.trace_sum]
    _ = (Matrix.trace S.state.matrix).re := by
      rw [S.jointMeasurementOperator_complete x y]
      simp
    _ = 1 := by rw [S.state.trace_one]; rfl""",
        nl=("For every question pair $(x,y)$ the answer distribution produced by an entangled "
            "strategy is normalised:\n\n"
            "$$\\sum_{a \\in A} \\sum_{b \\in B} \\Pr[a,b \\mid x,y] \\;=\\; 1 .$$\n\n"
            "Linearity of the trace moves the sum inside, completeness of the joint "
            "measurement replaces it by the identity, and the trace of the shared state is "
            "one because it is a density matrix.\n\n"
            "With nonnegativity this completes the statement that a strategy induces a bona "
            "fide probability distribution on answer pairs, which is what licenses bounding "
            "the winning probability by one."),
    ),
    dict(
        name=f"{NS}.Strategy.winProbability_nonneg",
        title="The winning probability of a strategy is nonnegative",
        vars=VARS_STRATEGY,
        deps=[f"{NS}.Strategy.outcomeProbability_nonneg"],
        statement="""theorem QuantumParallelRepetition.Strategy.winProbability_nonneg
    (S : Strategy G) : 0 ≤ S.winProbability""",
        proof="""  unfold Strategy.winProbability
  refine Finset.sum_nonneg fun x _ => Finset.sum_nonneg fun y _ => ?_
  apply mul_nonneg (G.weight_nonneg x y)
  exact Finset.sum_nonneg fun a _ => Finset.sum_nonneg fun b _ => by
    split <;> simp [S.outcomeProbability_nonneg]""",
        nl=("The winning probability of an entangled strategy $S$ for a game $G$,\n\n"
            "$$\\omega(S) \\;=\\; \\sum_{x,y} \\mu(x,y) \\sum_{a,b} "
            "V(x,y,a,b)\\,\\Pr[a,b \\mid x,y] ,$$\n\n"
            "is nonnegative. Each term is a product of a nonnegative question weight "
            "$\\mu(x,y)$ with a sum of outcome probabilities restricted to the accepting "
            "answer pairs, and both factors are nonnegative.\n\n"
            "This is the lower half of the bracket $0 \\le \\omega(S) \\le 1$ that makes the "
            "entangled value of a game a well-defined real number."),
    ),
    dict(
        name=f"{NS}.Strategy.winProbability_le_one",
        title="The winning probability of a strategy is at most one",
        vars=VARS_STRATEGY,
        deps=[f"{NS}.Strategy.outcomeProbability_nonneg",
              f"{NS}.Strategy.outcomeProbability_normalized"],
        statement="""theorem QuantumParallelRepetition.Strategy.winProbability_le_one
    (S : Strategy G) : S.winProbability ≤ 1""",
        proof="""  classical
  have hxy (x : X) (y : Y) :
      (∑ a : A, ∑ b : B,
        if G.predicate x y a b = true then S.outcomeProbability x y a b else 0) ≤ 1 := by
    calc
      (∑ a : A, ∑ b : B,
        if G.predicate x y a b = true then S.outcomeProbability x y a b else 0) ≤
          ∑ a : A, ∑ b : B, S.outcomeProbability x y a b := by
            apply Finset.sum_le_sum
            intro a _
            apply Finset.sum_le_sum
            intro b _
            split
            · exact le_rfl
            · exact S.outcomeProbability_nonneg x y a b
      _ = 1 := S.outcomeProbability_normalized x y
  calc
    S.winProbability =
        ∑ x : X, ∑ y : Y, G.questionWeight x y *
          (∑ a : A, ∑ b : B,
            if G.predicate x y a b = true then S.outcomeProbability x y a b else 0) := rfl
    _ ≤ ∑ x : X, ∑ y : Y, G.questionWeight x y * 1 := by
      apply Finset.sum_le_sum
      intro x _
      apply Finset.sum_le_sum
      intro y _
      exact mul_le_mul_of_nonneg_left (hxy x y) (G.weight_nonneg x y)
    _ = 1 := by simpa using G.weight_normalized""",
        nl=("No entangled strategy wins a game with probability greater than one:\n\n"
            "$$\\omega(S) \\;=\\; \\sum_{x,y} \\mu(x,y) \\sum_{a,b} "
            "V(x,y,a,b)\\,\\Pr[a,b \\mid x,y] \\;\\le\\; 1 .$$\n\n"
            "For each fixed question pair the accepting answer pairs contribute at most the "
            "full outcome distribution, which sums to one; averaging over the normalised "
            "question distribution $\\mu$ therefore gives at most one.\n\n"
            "This is the bound that makes the set of achievable winning probabilities "
            "bounded above, so that the entangled value can be defined as a supremum."),
    ),
    dict(
        name=f"{NS}.winProbabilities_bddAbove",
        title="The achievable winning probabilities are bounded above",
        vars=VARS_GAME,
        deps=[f"{NS}.Strategy.winProbability_le_one"],
        statement="""theorem QuantumParallelRepetition.winProbabilities_bddAbove (G : Game X Y A B) :
    BddAbove (Set.range (Strategy.winProbability (G := G)))""",
        proof="""  refine ⟨1, ?_⟩
  rintro _ ⟨S, rfl⟩
  exact S.winProbability_le_one""",
        nl=("The set of winning probabilities achievable by finite-dimensional entangled "
            "strategies for a fixed game $G$,\n\n"
            "$$\\{\\,\\omega(S) \\;:\\; S \\text{ an entangled strategy for } G\\,\\} "
            "\\subseteq \\mathbb{R} ,$$\n\n"
            "is bounded above, with $1$ an explicit upper bound.\n\n"
            "Boundedness is exactly the side condition that the order-theoretic supremum "
            "over the reals needs in order to behave: it is what lets `le_csSup` and "
            "`csSup_le` be applied to the entangled value, and without it the supremum "
            "defining $\\omega^{*}(G)$ would carry no information."),
    ),
    dict(
        name=f"{NS}.entangledValue_nonneg",
        title="The entangled value of a game is nonnegative",
        vars=VARS_GAME,
        deps=[f"{NS}.Strategy.winProbability_nonneg", f"{NS}.winProbabilities_bddAbove"],
        statement="""theorem QuantumParallelRepetition.entangledValue_nonneg (G : Game X Y A B) :
    0 ≤ entangledValue G""",
        proof="""  unfold entangledValue
  by_cases h : (Set.range (Strategy.winProbability (G := G))).Nonempty
  · rcases h with ⟨_, S, rfl⟩
    exact le_trans S.winProbability_nonneg
      (le_csSup (QuantumParallelRepetition.winProbabilities_bddAbove G) ⟨S, rfl⟩)
  · rw [Set.not_nonempty_iff_eq_empty.mp h, Real.sSup_empty]""",
        nl=("The entangled value of a finite two-player game is nonnegative:\n\n"
            "$$\\omega^{*}(G) \\;=\\; \\sup_{S} \\omega(S) \\;\\ge\\; 0 .$$\n\n"
            "If some strategy exists, its winning probability is a nonnegative member of the "
            "set whose supremum is being taken, and the set is bounded above; if the answer "
            "alphabets admit no strategy at all the range is empty and the real supremum is "
            "$0$ by convention. Both cases give the bound.\n\n"
            "This is one half of $0 \\le \\omega^{*}(G) \\le 1$, and it is the fact that turns "
            "an exponentially decaying upper bound on the repeated entangled value into "
            "convergence to zero, by squeezing between the two."),
    ),
    dict(
        name=f"{NS}.entangledValue_le_one",
        title="The entangled value of a game is at most one",
        vars=VARS_GAME,
        deps=[f"{NS}.Strategy.winProbability_le_one"],
        statement="""theorem QuantumParallelRepetition.entangledValue_le_one (G : Game X Y A B) :
    entangledValue G ≤ 1""",
        proof="""  unfold entangledValue
  by_cases h : (Set.range (Strategy.winProbability (G := G))).Nonempty
  · apply csSup_le h
    rintro _ ⟨S, rfl⟩
    exact S.winProbability_le_one
  · rw [Set.not_nonempty_iff_eq_empty.mp h, Real.sSup_empty]
    exact zero_le_one""",
        nl=("The entangled value of a finite two-player game is at most one:\n\n"
            "$$\\omega^{*}(G) \\;=\\; \\sup_{S} \\omega(S) \\;\\le\\; 1 .$$\n\n"
            "Every achievable winning probability is at most one, so the supremum is too; "
            "when no strategy exists the real supremum of the empty set is $0 \\le 1$.\n\n"
            "Together with nonnegativity this places the entangled value in $[0,1]$, which "
            "is what makes the hypothesis $\\omega^{*}(G) < 1$ of the parallel-repetition "
            "theorem a statement about a genuine gap below the trivial upper bound."),
    ),
]


def slug(name):
    return name.replace(".", "_")


def module(name):
    return "Theorems.Thm_" + slug(name)


def preamble(node):
    """What the platform stores before the statement: imports, then opens and `variable`s."""
    return IMPORTS_BASE + "\n" + SCOPE_BASE + node["vars"]


def thm_file(node):
    # Statements never mention their proof-only dependencies, so a stub imports nothing beyond
    # the definition bundle — keeping spurious edges out of the decomposition graph.
    return f"{preamble(node)}\n\n{node['statement']} := by sorry\n"


def sol_file(node):
    imports = "".join(f"import {module(d)}\n" for d in node["deps"])
    # A dotted declaration name opens its own namespace for the body; renaming to `solution`
    # loses that, so restore it explicitly (Phase 4).
    ns = node["name"].rsplit(".", 1)[0]
    renamed = node["statement"].replace(f"theorem {node['name']}", "theorem solution", 1)
    return (f"{IMPORTS_BASE}{imports}\n{SCOPE_BASE}{node['vars']}\n\nopen {ns} in\n"
            f"{renamed} := by\n{node['proof']}\n")


if __name__ == "__main__":
    os.makedirs("Theorems", exist_ok=True)
    os.makedirs("Solutions", exist_ok=True)
    for nd in NODES:
        # A node's stub imports its dependencies so the staged tree mirrors the upload DAG;
        # the *solution* must never import its own target.
        open(f"Theorems/Thm_{slug(nd['name'])}.lean", "w").write(thm_file(nd))
        open(f"Solutions/Sol_{slug(nd['name'])}.lean", "w").write(sol_file(nd))
    json.dump([n["name"] for n in NODES], open("port/batch1_names.json", "w"), indent=2)
    print(f"staged {len(NODES)} nodes")
