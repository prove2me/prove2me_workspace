import Definitions.Def_quantum_parallel_repetition_game
import Mathlib.Analysis.Matrix.Order
import Mathlib.Analysis.SpecialFunctions.ContinuousFunctionalCalculus.Rpow.Basic
import Theorems.Thm_QuantumParallelRepetition_Strategy_outcomeProbability_nonneg
import Theorems.Thm_QuantumParallelRepetition_Strategy_outcomeProbability_normalized

open scoped BigOperators ComplexOrder Kronecker MatrixOrder
open Matrix
open QuantumParallelRepetition
variable {X Y A B : Type*}
variable [Fintype X] [Fintype Y] [Fintype A] [Fintype B]
variable {G : Game X Y A B}

open QuantumParallelRepetition.Strategy in
theorem solution
    (S : Strategy G) : S.winProbability ≤ 1 := by
  classical
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
    _ = 1 := by simpa using G.weight_normalized
