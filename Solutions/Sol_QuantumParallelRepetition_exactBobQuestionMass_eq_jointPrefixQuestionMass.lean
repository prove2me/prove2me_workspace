import Definitions.Def_quantum_parallel_repetition_game
import Definitions.Def_qpr_core_22
import Theorems.Thm_QuantumParallelRepetition_exactRevealCode_eq_iff_fair_question_masks
import Mathlib.Algebra.BigOperators.Group.Finset.Basic
import Mathlib.Algebra.BigOperators.Group.Finset.Defs
import Mathlib.Algebra.Star.Basic
import Mathlib.Analysis.InnerProductSpace.Basic
import Mathlib.Analysis.Matrix.Normed
import Mathlib.Analysis.Matrix.Order
import Mathlib.Analysis.Normed.Lp.WithLp
import Mathlib.Analysis.RCLike.Basic
import Mathlib.Data.Finset.Defs
import Mathlib.Data.Finset.Insert
import Mathlib.Data.Finset.SDiff
import Mathlib.Data.Fintype.Basic
import Mathlib.Data.Fintype.BigOperators
import Mathlib.Data.Fintype.Defs
import Mathlib.Data.Fintype.Pi
import Mathlib.Data.Fintype.Prod
import Mathlib.Data.Fintype.Sets
import Mathlib.Data.Matrix.Basic
import Mathlib.Data.Real.Basic
import Mathlib.Data.SetLike.Basic
import Mathlib.LinearAlgebra.Matrix.Kronecker
import Mathlib.MeasureTheory.Measure.MeasureSpace
import Mathlib.Topology.Defs.Filter



open QuantumParallelRepetition
open scoped ComplexOrder Matrix BigOperators InnerProductSpace
open Complex Matrix Finset
open scoped BigOperators ComplexOrder Kronecker MatrixOrder
  Matrix.Norms.L2Operator InnerProductSpace
set_option backward.isDefEq.respectTransparency false
set_option maxHeartbeats 2800000
set_option maxRecDepth 2048
attribute [local instance] Classical.propDecidable
variable {X Y A B : Type*}
variable [Fintype X] [Fintype Y] [Fintype A] [Fintype B]

theorem solution
    (G : Game X Y A B) (n : ℕ)
    (D : Finset (Fin n))
    (seed : ExactRemainingSeed D)
    (q : ExactFullQuestion X Y n) :
    exactBobQuestionMass G n D seed
        (exactRevealCode D seed q)
        (q.2 seed.coordinate.val) =
      exactJointPrefixQuestionMass G n
        (exactFairAliceQuestionMask D seed)
        (insert seed.coordinate.val
          (exactFairBobQuestionMask D seed)) q.1 q.2 := by
  classical
  unfold exactBobQuestionMass
    exactJointPrefixQuestionMass
  rw [Fintype.sum_prod_type]
  apply Finset.sum_congr rfl
  intro xs _
  apply Finset.sum_congr rfl
  intro ys _
  have same :
      (exactRevealCode D seed (xs, ys) =
          exactRevealCode D seed q ∧
        ys seed.coordinate.val = q.2 seed.coordinate.val) ↔
      ((∀ j : Fin n,
        j ∈ exactFairAliceQuestionMask D seed →
          xs j = q.1 j) ∧
       (∀ j : Fin n,
        j ∈ insert seed.coordinate.val
          (exactFairBobQuestionMask D seed) →
          ys j = q.2 j)) := by
    constructor
    · rintro ⟨history, distinguished⟩
      obtain ⟨alice, bob⟩ :=
        (exactRevealCode_eq_iff_fair_question_masks
          D seed q (xs, ys)).mp history
      refine ⟨alice, ?_⟩
      intro j hj
      rcases Finset.mem_insert.mp hj with samej | hj
      · subst j
        exact distinguished
      · exact bob j hj
    · rintro ⟨alice, bob⟩
      refine ⟨(exactRevealCode_eq_iff_fair_question_masks
        D seed q (xs, ys)).mpr ⟨alice, ?_⟩, ?_⟩
      · intro j hj
        exact bob j (Finset.mem_insert_of_mem hj)
      · exact bob seed.coordinate.val
          (Finset.mem_insert_self _ _)
  by_cases compatible :
      (∀ j : Fin n,
        j ∈ exactFairAliceQuestionMask D seed →
          xs j = q.1 j) ∧
      (∀ j : Fin n,
        j ∈ insert seed.coordinate.val
          (exactFairBobQuestionMask D seed) →
          ys j = q.2 j)
  · rw [if_pos (same.mpr compatible), if_pos compatible]
    rfl
  · rw [if_neg (fun h => compatible (same.mp h)),
      if_neg compatible]
