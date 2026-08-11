import Definitions.Def_quantum_parallel_repetition_game
import Definitions.Def_qpr_core_17
import Mathlib.Algebra.BigOperators.Group.Finset.Basic
import Mathlib.Algebra.BigOperators.Group.Finset.Defs
import Mathlib.Algebra.BigOperators.Group.Finset.Piecewise
import Mathlib.Algebra.BigOperators.GroupWithZero.Finset
import Mathlib.Algebra.BigOperators.Ring.Finset
import Mathlib.Algebra.Group.Defs
import Mathlib.Algebra.GroupWithZero.Defs
import Mathlib.Algebra.Ring.Defs
import Mathlib.Algebra.Star.Basic
import Mathlib.Analysis.InnerProductSpace.Basic
import Mathlib.Analysis.Matrix.Normed
import Mathlib.Analysis.Matrix.Order
import Mathlib.Analysis.Normed.Lp.WithLp
import Mathlib.Analysis.RCLike.Basic
import Mathlib.Data.Finset.Defs
import Mathlib.Data.Fintype.Basic
import Mathlib.Data.Fintype.Defs
import Mathlib.Data.Fintype.Pi
import Mathlib.Data.Matrix.Basic
import Mathlib.Data.Real.Basic
import Mathlib.Data.SetLike.Basic
import Mathlib.LinearAlgebra.Matrix.Kronecker
import Mathlib.MeasureTheory.Measure.MeasureSpace
import Mathlib.Topology.Defs.Filter

namespace QuantumParallelRepetition

noncomputable section

open scoped BigOperators ComplexOrder Kronecker MatrixOrder
open Matrix

variable {X Y A B : Type*}

namespace Game

variable [Fintype X] [Fintype Y] [Fintype A] [Fintype B]

@[simp] theorem repeat_questionWeight (G : Game X Y A B) (n : ℕ)
    (xs : Fin n → X) (ys : Fin n → Y) :
    (G.repeat n).questionWeight xs ys =
      ∏ i : Fin n, G.questionWeight (xs i) (ys i) := rfl

end Game

end

open scoped ComplexOrder Matrix BigOperators InnerProductSpace
open Complex Matrix Finset

end QuantumParallelRepetition


open QuantumParallelRepetition
open scoped ComplexOrder Matrix BigOperators InnerProductSpace
open Complex Matrix Finset
open scoped BigOperators
set_option backward.isDefEq.respectTransparency false
set_option maxHeartbeats 1600000
set_option maxRecDepth 2048
attribute [local instance] Classical.propDecidable
variable {X Y A B : Type*}
variable [Fintype X] [Fintype Y] [Fintype A] [Fintype B]

theorem solution
    (G : Game X Y A B) (n : ℕ)
    (fixed : Finset (Fin n))
    (known : Fin n → X) (ys : Fin n → Y) :
    exactFixedAliceQuestionMass G n fixed known ys =
      ∏ j : Fin n,
        if j ∈ fixed then G.questionWeight (known j) (ys j)
        else G.marginalY (ys j) := by
  classical
  unfold exactFixedAliceQuestionMass
  simp only [Game.repeat_questionWeight]
  calc
    (∑ xs : Fin n → X,
      if ∀ j : Fin n, j ∈ fixed → xs j = known j then
        ∏ j : Fin n, G.questionWeight (xs j) (ys j)
      else 0) =
      ∑ xs : Fin n → X,
        ∏ j : Fin n,
          if j ∈ fixed then
            if xs j = known j then
              G.questionWeight (xs j) (ys j)
            else 0
          else G.questionWeight (xs j) (ys j) := by
            apply Finset.sum_congr rfl
            intro xs _
            calc
              (if ∀ j : Fin n,
                  j ∈ fixed → xs j = known j then
                  ∏ j : Fin n,
                    G.questionWeight (xs j) (ys j)
                else 0) =
                ∏ j : Fin n,
                  if j ∈ fixed → xs j = known j then
                    G.questionWeight (xs j) (ys j)
                  else 0 :=
                  by
                    simp only [Fintype.prod_ite_zero]
                    split <;> simp_all
              _ = _ := by
                apply Finset.prod_congr rfl
                intro j _
                by_cases hj : j ∈ fixed <;>
                  by_cases he : xs j = known j <;>
                    simp [hj, he]
    _ = ∏ j : Fin n,
        ∑ x : X,
          if j ∈ fixed then
            if x = known j then G.questionWeight x (ys j) else 0
          else G.questionWeight x (ys j) :=
      (Fintype.prod_sum
        (fun (j : Fin n) (x : X) =>
          if j ∈ fixed then
            if x = known j then G.questionWeight x (ys j) else 0
          else G.questionWeight x (ys j))).symm
    _ = _ := by
      apply Finset.prod_congr rfl
      intro j _
      by_cases hj : j ∈ fixed
      · simp [hj]
      · simp [hj, Game.marginalY]
