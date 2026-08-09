#!/usr/bin/env python3
"""The reductions that connect this mission's targets to OpenAI's proof.

These are the only nodes uploaded on the human's own account.  Everything transplanted from
`openai/ten-proofs` goes out on `community`; what lives here is the bridge, which is not part of
OpenAI's development:

  * an *alphabet relabelling* interface.  OpenAI's theorem quantifies over alphabets in `Type`,
    the mission's targets over `Type*`, and upstream has no relabelling machinery at all — the
    `Type`-only restriction is baked into seven separate mid-file sections.  Six transport
    lemmas close that gap once, by moving a game along equivalences of its alphabets and
    specialising to `Fin (Fintype.card ·)`.

  * the three mission targets themselves, each proved as a reduction:

        entangledValue_exponential_decay   <- distributionUniformExponential (OpenAI)
                                              + the transport lemmas
                                              + entangledValue_le_one   (for n = 0)
        entangledValue_polynomial_decay    <- entangledValue_exponential_decay
        entangledValue_tendsto_zero        <- entangledValue_exponential_decay
                                              + entangledValue_nonneg   (squeeze)

`python3 port/connect.py` stages every file; `run` uploads them on the `self` account.
"""
import json
import os
import sys

sys.path.insert(0, os.path.dirname(os.path.abspath(__file__)))
import upload  # noqa: E402

ROOT = os.path.dirname(os.path.dirname(os.path.abspath(__file__)))
ACCOUNT = "self"
NS = "QuantumParallelRepetition"
TAGS = ["quantum-parallel-repetition", "quantum-information", "parallel-repetition"]
RELABEL_DEF = "Definitions.Def_qpr_alphabet_relabelling"
GAME_DEF = "Definitions.Def_quantum_parallel_repetition_game"

TRANSPORT_IMPORTS = [GAME_DEF, RELABEL_DEF,
                     "Mathlib.Algebra.BigOperators.Fin", "Mathlib.Logic.Equiv.Fin.Basic"]
TRANSPORT_SCOPE = """open scoped BigOperators
open QuantumParallelRepetition

variable {X Y A B X' Y' A' B' : Type*}
variable [Fintype X] [Fintype Y] [Fintype A] [Fintype B]
variable [Fintype X'] [Fintype Y'] [Fintype A'] [Fintype B']"""

SRC_TRANSPORT = ("Prove2me bridge for openai/ten-proofs, QuantumParallelRepetition.lean, "
                 "https://github.com/openai/ten-proofs — universe transport, not part of the "
                 "upstream development (which states parallel repetition for alphabets in "
                 "`Type` only).")
SRC_MISSION = ("OpenAI 2026, parallel repetition for quantum games, Theorem 1.1, "
               "https://github.com/openai/ten-proofs/blob/"
               "94bc0feb6a9ff12c7d31d6de640a725c9d43d2b6/QuantumParallelRepetition.lean")

# --------------------------------------------------------------------- transport lemmas

TRANSPORT = [
    dict(
        short="Strategy.outcomeProbability_relabel",
        title="Relabelling preserves outcome probabilities",
        deps=[],
        statement="""theorem QuantumParallelRepetition.Strategy.outcomeProbability_relabel
    {G : Game X Y A B} {H : Game X' Y' A' B'}
    (S : Strategy G) (eX : X ≃ X') (eY : Y ≃ Y') (eA : A ≃ A') (eB : B ≃ B')
    (x' : X') (y' : Y') (a' : A') (b' : B') :
    (S.relabel (H := H) eX eY eA eB).outcomeProbability x' y' a' b' =
      S.outcomeProbability (eX.symm x') (eY.symm y') (eA.symm a') (eB.symm b')""",
        proof="  rfl",
        nl=("Transporting a strategy along equivalences of the question and answer alphabets "
            "leaves every outcome probability unchanged, up to the induced renaming of the "
            "indices.\n\nIf $S$ is a strategy and $e_X, e_Y, e_A, e_B$ are equivalences of the "
            "alphabets, the relabelled strategy $S'$ answers question $x'$ by running $S$ on "
            "$e_X^{-1}(x')$ and renaming its answer, so\n\n$$\\Pr_{S'}[a',b' \\mid x',y'] = "
            "\\Pr_{S}[e_A^{-1}(a'), e_B^{-1}(b') \\mid e_X^{-1}(x'), e_Y^{-1}(y')].$$\n\n"
            "The two sides are definitionally equal: the relabelled strategy shares the state "
            "and the local systems of the original, and its measurement operators are the "
            "original ones composed with the renaming."),
        explanation=("Both sides unfold to the same Born-rule trace. `Strategy.relabel` keeps "
                     "the state and the local Hilbert spaces of `S` and precomposes the "
                     "measurement families with the alphabet equivalences, so the joint "
                     "measurement operator at $(x',y',a',b')$ is *syntactically* the one at "
                     "$(e_X^{-1}x', e_Y^{-1}y', e_A^{-1}a', e_B^{-1}b')$. The proof is "
                     "therefore `rfl`."),
    ),
    dict(
        short="Strategy.winProbability_relabel",
        title="Relabelling preserves the winning probability",
        deps=[f"{NS}.Strategy.outcomeProbability_relabel"],
        statement="""theorem QuantumParallelRepetition.Strategy.winProbability_relabel
    {G : Game X Y A B} {H : Game X' Y' A' B'}
    (S : Strategy G) (eX : X ≃ X') (eY : Y ≃ Y') (eA : A ≃ A') (eB : B ≃ B')
    (hw : ∀ x y, H.questionWeight (eX x) (eY y) = G.questionWeight x y)
    (hp : ∀ x y a b, H.predicate (eX x) (eY y) (eA a) (eB b) = G.predicate x y a b) :
    (S.relabel (H := H) eX eY eA eB).winProbability = S.winProbability""",
        proof="""  classical
  have inner : ∀ (x : X) (y : Y),
      (∑ a' : A', ∑ b' : B',
        if H.predicate (eX x) (eY y) a' b' = true then
          (S.relabel (H := H) eX eY eA eB).outcomeProbability (eX x) (eY y) a' b' else 0)
        = ∑ a : A, ∑ b : B,
            if G.predicate x y a b = true then S.outcomeProbability x y a b else 0 := by
    intro x y
    refine (Fintype.sum_equiv eA _ _ fun a => ?_).symm
    refine Fintype.sum_equiv eB _ _ fun b => ?_
    rw [Strategy.outcomeProbability_relabel, hp x y a b]
    simp
  unfold Strategy.winProbability
  refine (Fintype.sum_equiv eX _ _ fun x => ?_).symm
  refine Fintype.sum_equiv eY _ _ fun y => ?_
  rw [hw x y, inner x y]""",
        nl=("If a relabelling identifies two games — the target game assigns each relabelled "
            "question pair the weight the source game gave the original pair, and accepts a "
            "relabelled answer pair exactly when the source game accepted the original — then "
            "the relabelled strategy wins the target game with exactly the probability the "
            "original strategy wins the source game:\n\n$$\\omega(S') = \\omega(S).$$\n\n"
            "The hypotheses are stated pointwise, in the direction of the equivalences, so the "
            "same lemma serves both inclusions when one compares the two games' strategy "
            "sets."),
        explanation=("The winning probability is the double average $\\sum_{x,y}\\mu(x,y)"
                     "\\sum_{a,b} V(x,y,a,b)\\Pr[a,b \\mid x,y]$. Reindex the outer sum along "
                     "$e_X$ and $e_Y$ and the inner sum along $e_A$ and $e_B$, all four via "
                     "`Fintype.sum_equiv`. The weight hypothesis rewrites the outer factor and "
                     "the predicate hypothesis rewrites the branch condition, at which point "
                     "the summands agree by `outcomeProbability_relabel`."),
    ),
    dict(
        short="entangledValue_relabel",
        title="Relabelled games have equal entangled value",
        deps=[f"{NS}.Strategy.winProbability_relabel"],
        statement="""theorem QuantumParallelRepetition.entangledValue_relabel
    {G : Game X Y A B} {H : Game X' Y' A' B'}
    (eX : X ≃ X') (eY : Y ≃ Y') (eA : A ≃ A') (eB : B ≃ B')
    (hw : ∀ x y, H.questionWeight (eX x) (eY y) = G.questionWeight x y)
    (hp : ∀ x y a b, H.predicate (eX x) (eY y) (eA a) (eB b) = G.predicate x y a b) :
    entangledValue H = entangledValue G""",
        proof="""  have hrange : Set.range (Strategy.winProbability (G := H))
      = Set.range (Strategy.winProbability (G := G)) := by
    apply Set.eq_of_subset_of_subset
    · rintro _ ⟨S', rfl⟩
      exact ⟨S'.relabel (H := G) eX.symm eY.symm eA.symm eB.symm,
        S'.winProbability_relabel eX.symm eY.symm eA.symm eB.symm
          (fun x' y' => by simpa using (hw (eX.symm x') (eY.symm y')).symm)
          (fun x' y' a' b' => by
            simpa using (hp (eX.symm x') (eY.symm y') (eA.symm a') (eB.symm b')).symm)⟩
    · rintro _ ⟨S, rfl⟩
      exact ⟨S.relabel (H := H) eX eY eA eB, S.winProbability_relabel eX eY eA eB hw hp⟩
  unfold entangledValue
  rw [hrange]""",
        nl=("Two games related by a relabelling of their question and answer alphabets have "
            "the same entangled value,\n\n$$\\omega^*(H) = \\omega^*(G).$$\n\nThe entangled "
            "value is the supremum of the winning probabilities over all finite-dimensional "
            "entangled strategies, so it suffices that the two games realise the *same set* of "
            "winning probabilities. Transport along the equivalence and along its inverse "
            "exhibits each achievable value of one game as an achievable value of the other."),
        explanation=("The two ranges of `Strategy.winProbability` are shown equal by mutual "
                     "inclusion, each direction transporting a strategy with "
                     "`Strategy.relabel` and invoking `winProbability_relabel`. The reverse "
                     "direction needs the hypotheses restated along the inverse equivalences, "
                     "which is what the two `simpa ... .symm` arguments supply. Since "
                     "`entangledValue` is a supremum of that range, equal ranges give equal "
                     "values.\n\nThis is where `Strategy`'s game argument being a phantom "
                     "parameter pays off: the same transport serves both inclusions, so no "
                     "extensionality principle for `Game` is required."),
    ),
    dict(
        short="repeatedEntangledValue_relabel",
        title="Relabelling commutes with parallel repetition",
        deps=[f"{NS}.entangledValue_relabel"],
        statement="""theorem QuantumParallelRepetition.repeatedEntangledValue_relabel
    {G : Game X Y A B} {H : Game X' Y' A' B'}
    (eX : X ≃ X') (eY : Y ≃ Y') (eA : A ≃ A') (eB : B ≃ B')
    (hw : ∀ x y, H.questionWeight (eX x) (eY y) = G.questionWeight x y)
    (hp : ∀ x y a b, H.predicate (eX x) (eY y) (eA a) (eB b) = G.predicate x y a b)
    (n : ℕ) :
    repeatedEntangledValue H n = repeatedEntangledValue G n""",
        proof="""  classical
  refine entangledValue_relabel (G := G.repeat n) (H := H.repeat n)
    (Equiv.piCongrRight fun _ : Fin n => eX) (Equiv.piCongrRight fun _ : Fin n => eY)
    (Equiv.piCongrRight fun _ : Fin n => eA) (Equiv.piCongrRight fun _ : Fin n => eB)
    (fun xs ys => ?_) (fun xs ys as bs => ?_)
  · show (∏ i : Fin n, H.questionWeight (eX (xs i)) (eY (ys i)))
      = ∏ i : Fin n, G.questionWeight (xs i) (ys i)
    exact Finset.prod_congr rfl fun i _ => hw (xs i) (ys i)
  · show decide (∀ i : Fin n, H.predicate (eX (xs i)) (eY (ys i)) (eA (as i)) (eB (bs i)) = true)
      = decide (∀ i : Fin n, G.predicate (xs i) (ys i) (as i) (bs i) = true)
    simp only [hp]""",
        nl=("A relabelling of the alphabets of a game induces a relabelling of every parallel "
            "repetition of it, coordinatewise. Consequently the repeated entangled values "
            "agree for every number of repetitions:\n\n$$\\omega^*(H^n) = \\omega^*(G^n) "
            "\\qquad \\text{for all } n.$$\n\nIn the $n$-fold repetition the referee samples "
            "the coordinates independently and accepts only if every coordinate accepts, so "
            "the product weight and the conjunction of predicates each transform "
            "coordinatewise under the induced equivalence of tuples."),
        explanation=("Apply `entangledValue_relabel` to $G^n$ and $H^n$ along the "
                     "coordinatewise equivalences `Equiv.piCongrRight fun _ => e`. The two "
                     "remaining obligations are the repeated game's own data: the question "
                     "weight is a product over coordinates, matched by `Finset.prod_congr` "
                     "against the pointwise weight hypothesis; the predicate is the decision "
                     "of a universally quantified conjunction, matched by rewriting with the "
                     "pointwise predicate hypothesis under `decide`."),
    ),
    dict(
        short="entangledValue_eq_fin",
        title="Entangled value is computed by a game on Fin alphabets",
        deps=[f"{NS}.entangledValue_relabel"],
        statement="""theorem QuantumParallelRepetition.entangledValue_eq_fin (G : Game X Y A B) :
    entangledValue G
      = entangledValue (G.relabel (Fintype.equivFin X) (Fintype.equivFin Y)
          (Fintype.equivFin A) (Fintype.equivFin B))""",
        proof="""  exact (entangledValue_relabel (Fintype.equivFin X) (Fintype.equivFin Y)
    (Fintype.equivFin A) (Fintype.equivFin B)
    (fun _ _ => by simp) (fun _ _ _ _ => by simp)).symm""",
        nl=("Every finite game has the same entangled value as a game whose alphabets are "
            "standard finite types:\n\n$$\\omega^*(G) = \\omega^*\\big(G'\\big), \\qquad G' : "
            "\\mathrm{Game}\\ \\mathrm{Fin}\\,|X|\\ \\mathrm{Fin}\\,|Y|\\ \\mathrm{Fin}\\,|A|\\ "
            "\\mathrm{Fin}\\,|B|.$$\n\nThis is the universe-lowering step. A game over "
            "arbitrary finite alphabets lives in whatever universe those alphabets inhabit, "
            "while `Fin n` always lives in `Type`. Any statement about entangled values proved "
            "for games in `Type` therefore transfers to games over arbitrary finite "
            "alphabets."),
        explanation=("Specialise `entangledValue_relabel` to the canonical equivalences "
                     "`Fintype.equivFin`. Both hypotheses become reflexivity after `simp` "
                     "unfolds `Game.relabel`, because the relabelled game is *defined* by "
                     "composing with the inverse equivalences."),
    ),
    dict(
        short="repeatedEntangledValue_eq_fin",
        title="Repeated entangled value is computed by a game on Fin alphabets",
        deps=[f"{NS}.repeatedEntangledValue_relabel"],
        statement="""theorem QuantumParallelRepetition.repeatedEntangledValue_eq_fin
    (G : Game X Y A B) (n : ℕ) :
    repeatedEntangledValue G n
      = repeatedEntangledValue (G.relabel (Fintype.equivFin X) (Fintype.equivFin Y)
          (Fintype.equivFin A) (Fintype.equivFin B)) n""",
        proof="""  exact (repeatedEntangledValue_relabel (Fintype.equivFin X) (Fintype.equivFin Y)
    (Fintype.equivFin A) (Fintype.equivFin B)
    (fun _ _ => by simp) (fun _ _ _ _ => by simp) n).symm""",
        nl=("The universe-lowering step, for every number of repetitions at once: the repeated "
            "entangled values of a finite game agree with those of its standard-finite "
            "relabelling,\n\n$$\\omega^*(G^n) = \\omega^*\\big((G')^n\\big) \\qquad "
            "\\text{for all } n,$$\n\nwhere $G'$ has alphabets $\\mathrm{Fin}\\,|X|$, "
            "$\\mathrm{Fin}\\,|Y|$, $\\mathrm{Fin}\\,|A|$, $\\mathrm{Fin}\\,|B|$ and therefore "
            "lives in `Type`."),
        explanation=("Specialise `repeatedEntangledValue_relabel` to the canonical "
                     "equivalences `Fintype.equivFin`, exactly as in the one-shot case; the "
                     "hypotheses again reduce to reflexivity by `simp`."),
    ),
]


def transport_preamble():
    return "\n".join(f"import {m}" for m in TRANSPORT_IMPORTS) + "\n\n" + TRANSPORT_SCOPE


def transport_solution(node):
    imports = list(TRANSPORT_IMPORTS)
    for d in node["deps"]:
        imports.append("Theorems.Thm_" + d.replace(".", "_"))
    body = node["statement"].replace(f"theorem {NS}.{node['short']}", "theorem solution", 1)
    return ("\n".join(f"import {m}" for m in imports) + "\n\n" + TRANSPORT_SCOPE + "\n\n"
            + body + " := by\n" + node["proof"] + "\n")


def transport_nodes():
    out = []
    for nd in TRANSPORT:
        name = f"{NS}.{nd['short']}"
        out.append(dict(
            name=name, deps=nd["deps"], title=nd["title"], nl=nd["nl"],
            source=SRC_TRANSPORT, tags=TAGS,
            preamble=transport_preamble(),
            formal_statement=nd["statement"] + " := by sorry",
            solution=transport_solution(nd),
            explanation=nd["explanation"],
        ))
    return out
