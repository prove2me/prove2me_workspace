import Definitions.Def_quantum_parallel_repetition_game
import Mathlib.Algebra.BigOperators.Fin
import Mathlib.Logic.Equiv.Fin.Basic

/-!
# Alphabet relabelling and universe transport for entangled games

OpenAI's `ten-proofs` development proves parallel repetition for games whose alphabets live in
`Type` (universe zero); the mission's target theorems quantify over `Type*`.  The gap is not a
matter of widening `variable` lines — the `Type`-only restriction enters in seven separate
mid-file sections of the upstream proof — so it is closed here instead, once, by transporting
along alphabet equivalences and specialising to `Fin (Fintype.card ·)`.

The key structural observation is that `Strategy`'s game argument is a *phantom* parameter: a
strategy is a choice of local systems, a state, and measurements indexed by the alphabets, and
never mentions the game.  So a single transport `Strategy.relabel` serves both directions of
the induced equality of entangled values, and no `Game` extensionality lemma is needed.
-/

namespace QuantumParallelRepetition

noncomputable section

open scoped BigOperators

variable {X Y A B X' Y' A' B' : Type*}
variable [Fintype X] [Fintype Y] [Fintype A] [Fintype B]
variable [Fintype X'] [Fintype Y'] [Fintype A'] [Fintype B']

/-- Relabel the question and answer alphabets of a game along equivalences. -/
def Game.relabel (G : Game X Y A B) (eX : X ≃ X') (eY : Y ≃ Y') (eA : A ≃ A') (eB : B ≃ B') :
    Game X' Y' A' B' where
  questionWeight x' y' := G.questionWeight (eX.symm x') (eY.symm y')
  weight_nonneg _ _ := G.weight_nonneg _ _
  weight_normalized := by
    rw [← G.weight_normalized]
    refine (Fintype.sum_equiv eX _ _ fun x => ?_).symm
    exact Fintype.sum_equiv eY _ _ fun _ => by simp
  predicate x' y' a' b' :=
    G.predicate (eX.symm x') (eY.symm y') (eA.symm a') (eB.symm b')

@[simp] theorem Game.relabel_questionWeight (G : Game X Y A B)
    (eX : X ≃ X') (eY : Y ≃ Y') (eA : A ≃ A') (eB : B ≃ B') (x' : X') (y' : Y') :
    (G.relabel eX eY eA eB).questionWeight x' y' =
      G.questionWeight (eX.symm x') (eY.symm y') := rfl

@[simp] theorem Game.relabel_predicate (G : Game X Y A B)
    (eX : X ≃ X') (eY : Y ≃ Y') (eA : A ≃ A') (eB : B ≃ B')
    (x' : X') (y' : Y') (a' : A') (b' : B') :
    (G.relabel eX eY eA eB).predicate x' y' a' b' =
      G.predicate (eX.symm x') (eY.symm y') (eA.symm a') (eB.symm b') := rfl

/-- Transport a strategy along equivalences of the alphabets.  The target game `H` is
unconstrained because `Strategy`'s game argument is phantom; the hypotheses relating `H` to `G`
are needed only for the winning probability, in `winProbability_relabel` below. -/
def Strategy.relabel {G : Game X Y A B} {H : Game X' Y' A' B'} (S : Strategy G)
    (eX : X ≃ X') (eY : Y ≃ Y') (eA : A ≃ A') (eB : B ≃ B') : Strategy H where
  Alice := S.Alice
  Bob := S.Bob
  state := S.state
  aliceMeasurement x' :=
    { operator := fun a' => (S.aliceMeasurement (eX.symm x')).operator (eA.symm a')
      positive := fun a' => (S.aliceMeasurement (eX.symm x')).positive _
      complete := by
        rw [← (S.aliceMeasurement (eX.symm x')).complete]
        exact Fintype.sum_equiv eA.symm _ _ fun _ => rfl }
  bobMeasurement y' :=
    { operator := fun b' => (S.bobMeasurement (eY.symm y')).operator (eB.symm b')
      positive := fun b' => (S.bobMeasurement (eY.symm y')).positive _
      complete := by
        rw [← (S.bobMeasurement (eY.symm y')).complete]
        exact Fintype.sum_equiv eB.symm _ _ fun _ => rfl }

theorem Strategy.outcomeProbability_relabel {G : Game X Y A B} {H : Game X' Y' A' B'}
    (S : Strategy G) (eX : X ≃ X') (eY : Y ≃ Y') (eA : A ≃ A') (eB : B ≃ B')
    (x' : X') (y' : Y') (a' : A') (b' : B') :
    (S.relabel (H := H) eX eY eA eB).outcomeProbability x' y' a' b' =
      S.outcomeProbability (eX.symm x') (eY.symm y') (eA.symm a') (eB.symm b') := rfl

/-- Relabelling preserves the winning probability, provided the target game agrees with the
source one under the relabelling.  Stated pointwise so the same lemma serves both directions. -/
theorem Strategy.winProbability_relabel {G : Game X Y A B} {H : Game X' Y' A' B'}
    (S : Strategy G) (eX : X ≃ X') (eY : Y ≃ Y') (eA : A ≃ A') (eB : B ≃ B')
    (hw : ∀ x y, H.questionWeight (eX x) (eY y) = G.questionWeight x y)
    (hp : ∀ x y a b, H.predicate (eX x) (eY y) (eA a) (eB b) = G.predicate x y a b) :
    (S.relabel (H := H) eX eY eA eB).winProbability = S.winProbability := by
  classical
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
  rw [hw x y, inner x y]

/-- Games related by an alphabet relabelling have the same entangled value. -/
theorem entangledValue_relabel {G : Game X Y A B} {H : Game X' Y' A' B'}
    (eX : X ≃ X') (eY : Y ≃ Y') (eA : A ≃ A') (eB : B ≃ B')
    (hw : ∀ x y, H.questionWeight (eX x) (eY y) = G.questionWeight x y)
    (hp : ∀ x y a b, H.predicate (eX x) (eY y) (eA a) (eB b) = G.predicate x y a b) :
    entangledValue H = entangledValue G := by
  have hrange : Set.range (Strategy.winProbability (G := H))
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
  rw [hrange]

/-- Relabelling commutes with parallel repetition, so repeated entangled values agree too. -/
theorem repeatedEntangledValue_relabel {G : Game X Y A B} {H : Game X' Y' A' B'}
    (eX : X ≃ X') (eY : Y ≃ Y') (eA : A ≃ A') (eB : B ≃ B')
    (hw : ∀ x y, H.questionWeight (eX x) (eY y) = G.questionWeight x y)
    (hp : ∀ x y a b, H.predicate (eX x) (eY y) (eA a) (eB b) = G.predicate x y a b)
    (n : ℕ) :
    repeatedEntangledValue H n = repeatedEntangledValue G n := by
  classical
  refine entangledValue_relabel (G := G.repeat n) (H := H.repeat n)
    (Equiv.piCongrRight fun _ : Fin n => eX) (Equiv.piCongrRight fun _ : Fin n => eY)
    (Equiv.piCongrRight fun _ : Fin n => eA) (Equiv.piCongrRight fun _ : Fin n => eB)
    (fun xs ys => ?_) (fun xs ys as bs => ?_)
  · show (∏ i : Fin n, H.questionWeight (eX (xs i)) (eY (ys i)))
      = ∏ i : Fin n, G.questionWeight (xs i) (ys i)
    exact Finset.prod_congr rfl fun i _ => hw (xs i) (ys i)
  · show decide (∀ i : Fin n, H.predicate (eX (xs i)) (eY (ys i)) (eA (as i)) (eB (bs i)) = true)
      = decide (∀ i : Fin n, G.predicate (xs i) (ys i) (as i) (bs i) = true)
    simp only [hp]

/-- Specialisation to `Fin`-alphabets: every finite game has the same entangled values, one-shot
and repeated, as a game whose alphabets live in `Type` (universe zero). -/
theorem entangledValue_eq_fin (G : Game X Y A B) :
    entangledValue G
      = entangledValue (G.relabel (Fintype.equivFin X) (Fintype.equivFin Y)
          (Fintype.equivFin A) (Fintype.equivFin B)) :=
  (entangledValue_relabel (Fintype.equivFin X) (Fintype.equivFin Y)
    (Fintype.equivFin A) (Fintype.equivFin B) (fun _ _ => by simp) (fun _ _ _ _ => by simp)).symm

theorem repeatedEntangledValue_eq_fin (G : Game X Y A B) (n : ℕ) :
    repeatedEntangledValue G n
      = repeatedEntangledValue (G.relabel (Fintype.equivFin X) (Fintype.equivFin Y)
          (Fintype.equivFin A) (Fintype.equivFin B)) n :=
  (repeatedEntangledValue_relabel (Fintype.equivFin X) (Fintype.equivFin Y)
    (Fintype.equivFin A) (Fintype.equivFin B) (fun _ _ => by simp) (fun _ _ _ _ => by simp) n).symm

end

end QuantumParallelRepetition
