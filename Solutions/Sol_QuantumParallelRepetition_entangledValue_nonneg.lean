import Definitions.Def_quantum_parallel_repetition_game
import Mathlib.Analysis.Matrix.Order
import Mathlib.Analysis.SpecialFunctions.ContinuousFunctionalCalculus.Rpow.Basic
import Theorems.Thm_QuantumParallelRepetition_Strategy_winProbability_nonneg
import Theorems.Thm_QuantumParallelRepetition_winProbabilities_bddAbove

open scoped BigOperators ComplexOrder Kronecker MatrixOrder
open Matrix
open QuantumParallelRepetition
variable {X Y A B : Type*}
variable [Fintype X] [Fintype Y] [Fintype A] [Fintype B]

open QuantumParallelRepetition in
theorem solution (G : Game X Y A B) :
    0 ≤ entangledValue G := by
  unfold entangledValue
  by_cases h : (Set.range (Strategy.winProbability (G := G))).Nonempty
  · rcases h with ⟨_, S, rfl⟩
    exact le_trans S.winProbability_nonneg
      (le_csSup (QuantumParallelRepetition.winProbabilities_bddAbove G) ⟨S, rfl⟩)
  · rw [Set.not_nonempty_iff_eq_empty.mp h, Real.sSup_empty]
