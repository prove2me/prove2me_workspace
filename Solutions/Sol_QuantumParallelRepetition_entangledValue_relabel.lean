import Definitions.Def_quantum_parallel_repetition_game
import Definitions.Def_qpr_alphabet_relabelling
import Mathlib.Algebra.BigOperators.Fin
import Mathlib.Logic.Equiv.Fin.Basic
import Theorems.Thm_QuantumParallelRepetition_Strategy_winProbability_relabel

open scoped BigOperators
open QuantumParallelRepetition

variable {X Y A B X' Y' A' B' : Type*}
variable [Fintype X] [Fintype Y] [Fintype A] [Fintype B]
variable [Fintype X'] [Fintype Y'] [Fintype A'] [Fintype B']

theorem solution
    {G : Game X Y A B} {H : Game X' Y' A' B'}
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
