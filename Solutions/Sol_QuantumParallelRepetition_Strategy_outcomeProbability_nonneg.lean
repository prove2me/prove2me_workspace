import Definitions.Def_quantum_parallel_repetition_game
import Mathlib.Analysis.Matrix.Order
import Mathlib.Analysis.SpecialFunctions.ContinuousFunctionalCalculus.Rpow.Basic
import Theorems.Thm_QuantumParallelRepetition_trace_mul_posSemidef_nonneg
import Theorems.Thm_QuantumParallelRepetition_Strategy_jointMeasurementOperator_positive

open scoped BigOperators ComplexOrder Kronecker MatrixOrder
open Matrix
open QuantumParallelRepetition
variable {X Y A B : Type*}
variable [Fintype X] [Fintype Y] [Fintype A] [Fintype B]
variable {G : Game X Y A B}

open QuantumParallelRepetition.Strategy in
theorem solution
    (S : Strategy G) (x : X) (y : Y) (a : A) (b : B) :
    0 ≤ S.outcomeProbability x y a b := by
  exact QuantumParallelRepetition.trace_mul_posSemidef_nonneg S.state.positive
    (S.jointMeasurementOperator_positive x y a b)
