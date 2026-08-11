import Definitions.Def_quantum_parallel_repetition_game
import Mathlib.Analysis.Matrix.Order
import Mathlib.Analysis.SpecialFunctions.ContinuousFunctionalCalculus.Rpow.Basic
import Theorems.Thm_QuantumParallelRepetition_Strategy_jointMeasurementOperator_complete

open scoped BigOperators ComplexOrder Kronecker MatrixOrder
open Matrix
open QuantumParallelRepetition
variable {X Y A B : Type*}
variable [Fintype X] [Fintype Y] [Fintype A] [Fintype B]
variable {G : Game X Y A B}

open QuantumParallelRepetition.Strategy in
theorem solution
    (S : Strategy G) (x : X) (y : Y) :
    (∑ a : A, ∑ b : B, S.outcomeProbability x y a b) = 1 := by
  classical
  calc
    (∑ a : A, ∑ b : B, S.outcomeProbability x y a b) =
        (Matrix.trace
          (S.state.matrix *
            (∑ a : A, ∑ b : B, S.jointMeasurementOperator x y a b))).re := by
            simp [outcomeProbability, Matrix.mul_sum, Matrix.trace_sum]
    _ = (Matrix.trace S.state.matrix).re := by
      rw [S.jointMeasurementOperator_complete x y]
      simp
    _ = 1 := by rw [S.state.trace_one]; rfl
