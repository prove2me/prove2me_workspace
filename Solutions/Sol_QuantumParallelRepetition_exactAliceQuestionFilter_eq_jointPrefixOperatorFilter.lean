import Definitions.Def_quantum_parallel_repetition_game
import Definitions.Def_qpr_core_22
import Theorems.Thm_QuantumParallelRepetition_exactRevealCode_eq_iff_fair_question_masks
import Theorems.Thm_QuantumParallelRepetition_exactAliceQuestionMass_eq_jointPrefixQuestionMass
import Mathlib.Algebra.Algebra.Defs
import Mathlib.Algebra.BigOperators.Group.Finset.Basic
import Mathlib.Algebra.BigOperators.Group.Finset.Defs
import Mathlib.Algebra.BigOperators.GroupWithZero.Action
import Mathlib.Algebra.Field.Defs
import Mathlib.Algebra.Group.Action.Defs
import Mathlib.Algebra.Group.Basic
import Mathlib.Algebra.Group.Defs
import Mathlib.Algebra.GroupWithZero.Action.Defs
import Mathlib.Algebra.GroupWithZero.Basic
import Mathlib.Algebra.GroupWithZero.Defs
import Mathlib.Algebra.GroupWithZero.Units.Basic
import Mathlib.Algebra.Module.Defs
import Mathlib.Algebra.Ring.Defs
import Mathlib.Algebra.Ring.Nat
import Mathlib.Algebra.Star.Basic
import Mathlib.Analysis.CStarAlgebra.Classes
import Mathlib.Analysis.Complex.Basic
import Mathlib.Analysis.InnerProductSpace.Basic
import Mathlib.Analysis.InnerProductSpace.Defs
import Mathlib.Analysis.Matrix.Normed
import Mathlib.Analysis.Matrix.Order
import Mathlib.Analysis.Normed.Field.Basic
import Mathlib.Analysis.Normed.Lp.WithLp
import Mathlib.Analysis.Normed.Module.Basic
import Mathlib.Analysis.Normed.Ring.Basic
import Mathlib.Analysis.RCLike.Basic
import Mathlib.Data.Complex.Basic
import Mathlib.Data.Finset.Defs
import Mathlib.Data.Finset.Insert
import Mathlib.Data.Finset.SDiff
import Mathlib.Data.Fintype.Basic
import Mathlib.Data.Fintype.BigOperators
import Mathlib.Data.Fintype.Defs
import Mathlib.Data.Fintype.Pi
import Mathlib.Data.Fintype.Prod
import Mathlib.Data.Fintype.Sets
import Mathlib.Data.Int.Cast.Defs
import Mathlib.Data.Matrix.Basic
import Mathlib.Data.Nat.Cast.Defs
import Mathlib.Data.Real.Basic
import Mathlib.Data.SetLike.Basic
import Mathlib.LinearAlgebra.Complex.Module
import Mathlib.LinearAlgebra.Matrix.Defs
import Mathlib.LinearAlgebra.Matrix.Kronecker
import Mathlib.MeasureTheory.Measure.MeasureSpace
import Mathlib.Tactic.NormNum.Basic
import Mathlib.Tactic.NormNum.Inv
import Mathlib.Tactic.NormNum.Result
import Mathlib.Tactic.Ring.Basic
import Mathlib.Tactic.Ring.Common
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
    (G : Game X Y A B) (n : ℕ) (S : Strategy (G.repeat n))
    (D : Finset (Fin n))
    (seed : ExactRemainingSeed D)
    (q : ExactFullQuestion X Y n)
    (answer : {j : Fin n // j ∈ D} → A) :
    exactAliceQuestionFilter G n S D seed
        (exactRevealCode D seed q) answer
        (q.1 seed.coordinate.val) =
      exactJointPrefixAliceOperatorFilter G n S D
        (insert seed.coordinate.val
          (exactFairAliceQuestionMask D seed))
        (exactFairBobQuestionMask D seed)
        answer q.1 q.2 := by
  classical
  unfold exactAliceQuestionFilter
  rw [exactAliceQuestionMass_eq_jointPrefixQuestionMass
    G n D seed q]
  unfold exactJointPrefixAliceOperatorFilter
    exactJointPrefixAliceOperatorMass
  rw [Fintype.sum_prod_type]
  simp only [Finset.smul_sum]
  apply Finset.sum_congr rfl
  intro xs _
  apply Finset.sum_congr rfl
  intro ys _
  have same :
      (exactRevealCode D seed (xs, ys) =
          exactRevealCode D seed q ∧
        xs seed.coordinate.val = q.1 seed.coordinate.val) ↔
      ((∀ j : Fin n,
        j ∈ insert seed.coordinate.val
          (exactFairAliceQuestionMask D seed) →
          xs j = q.1 j) ∧
       (∀ j : Fin n,
        j ∈ exactFairBobQuestionMask D seed →
          ys j = q.2 j)) := by
    constructor
    · rintro ⟨history, distinguished⟩
      obtain ⟨alice, bob⟩ :=
        (exactRevealCode_eq_iff_fair_question_masks
          D seed q (xs, ys)).mp history
      refine ⟨?_, bob⟩
      intro j hj
      rcases Finset.mem_insert.mp hj with samej | hj
      · subst j
        exact distinguished
      · exact alice j hj
    · rintro ⟨alice, bob⟩
      refine ⟨(exactRevealCode_eq_iff_fair_question_masks
        D seed q (xs, ys)).mpr ⟨?_, bob⟩, ?_⟩
      · intro j hj
        exact alice j (Finset.mem_insert_of_mem hj)
      · exact alice seed.coordinate.val
          (Finset.mem_insert_self _ _)
  by_cases compatible :
      (∀ j : Fin n,
        j ∈ insert seed.coordinate.val
          (exactFairAliceQuestionMask D seed) →
          xs j = q.1 j) ∧
      (∀ j : Fin n,
        j ∈ exactFairBobQuestionMask D seed →
          ys j = q.2 j)
  · rw [if_pos (same.mpr compatible), if_pos compatible,
      smul_smul]
    unfold exactPriorQuestionWeight
    rw [div_eq_mul_inv]
    congr 1
    ring
  · rw [if_neg (fun h => compatible (same.mp h)),
      if_neg compatible, smul_zero]
