import Definitions.Def_quantum_parallel_repetition_game
import Mathlib.Analysis.Matrix.Order
import Mathlib.Analysis.SpecialFunctions.ContinuousFunctionalCalculus.Rpow.Basic
import Theorems.Thm_QuantumParallelRepetition_Strategy_winProbability_le_one

open scoped BigOperators ComplexOrder Kronecker MatrixOrder
open Matrix
open QuantumParallelRepetition
variable {X Y A B : Type*}
variable [Fintype X] [Fintype Y] [Fintype A] [Fintype B]

open QuantumParallelRepetition in
theorem solution (G : Game X Y A B) :
    entangledValue G ≤ 1 := by
  unfold entangledValue
  by_cases h : (Set.range (Strategy.winProbability (G := G))).Nonempty
  · apply csSup_le h
    rintro _ ⟨S, rfl⟩
    exact S.winProbability_le_one
  · rw [Set.not_nonempty_iff_eq_empty.mp h, Real.sSup_empty]
    exact zero_le_one
