import Definitions.Def_quantum_parallel_repetition_game
import Mathlib.Analysis.Matrix.Order
import Mathlib.Analysis.SpecialFunctions.ContinuousFunctionalCalculus.Rpow.Basic

open scoped BigOperators ComplexOrder Kronecker MatrixOrder
open Matrix
open QuantumParallelRepetition
variable {X Y A B : Type*}
variable [Fintype X] [Fintype Y] [Fintype A] [Fintype B]
variable {G : Game X Y A B}

open QuantumParallelRepetition.Strategy in
theorem solution
    (S : Strategy G) (x : X) (y : Y) :
    (∑ a : A, ∑ b : B, S.jointMeasurementOperator x y a b) = 1 := by
  classical
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
      exact Matrix.one_kronecker_one
