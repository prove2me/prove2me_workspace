import Definitions.Def_quantum_parallel_repetition_game
import Theorems.Thm_QuantumParallelRepetition_Strategy_outcomeProbability_nonneg
import Theorems.Thm_QuantumParallelRepetition_Strategy_outcomeProbability_normalized
import Mathlib.Algebra.BigOperators.Group.Finset.Basic
import Mathlib.Algebra.BigOperators.Group.Finset.Defs
import Mathlib.Algebra.Group.Defs
import Mathlib.Algebra.GroupWithZero.Defs
import Mathlib.Algebra.Order.BigOperators.Group.Finset
import Mathlib.Algebra.Order.GroupWithZero.Unbundled.Defs
import Mathlib.Algebra.Order.Monoid.Defs
import Mathlib.Algebra.Order.Ring.Defs
import Mathlib.Algebra.Ring.Defs
import Mathlib.Algebra.Star.Basic
import Mathlib.Analysis.InnerProductSpace.Basic
import Mathlib.Analysis.Matrix.Normed
import Mathlib.Analysis.Matrix.Order
import Mathlib.Analysis.Normed.Lp.WithLp
import Mathlib.Analysis.RCLike.Basic
import Mathlib.Data.Finset.Defs
import Mathlib.Data.Fintype.Defs
import Mathlib.Data.Matrix.Basic
import Mathlib.Data.Real.Basic
import Mathlib.Data.SetLike.Basic
import Mathlib.LinearAlgebra.Matrix.Kronecker
import Mathlib.MeasureTheory.Measure.MeasureSpace
import Mathlib.Order.Defs.PartialOrder
import Mathlib.Topology.Defs.Filter



open QuantumParallelRepetition
open scoped ComplexOrder Matrix BigOperators InnerProductSpace
open Complex Matrix Finset
open scoped BigOperators ComplexOrder Kronecker MatrixOrder
open Matrix
variable {X Y A B : Type*}
open Strategy
variable [Fintype X] [Fintype Y] [Fintype A] [Fintype B]
variable {G : Game X Y A B}

theorem solution (S : Strategy G) : S.winProbability ≤ 1 := by
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
