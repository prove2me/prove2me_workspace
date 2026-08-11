import Definitions.Def_quantum_parallel_repetition_game
import Definitions.Def_qpr_core_22
import Theorems.Thm_QuantumParallelRepetition_exactFairAcceptedJointStatistic_reindex
import Theorems.Thm_QuantumParallelRepetition_exactReverseBobLowQuestionPotential_eq_alignedPrefix
import Theorems.Thm_QuantumParallelRepetition_exactReverseBobHighQuestionPotential_eq_alignedPrefix
import Mathlib.Algebra.Algebra.Basic
import Mathlib.Algebra.Algebra.Defs
import Mathlib.Algebra.BigOperators.Group.Finset.Basic
import Mathlib.Algebra.BigOperators.Group.Finset.Defs
import Mathlib.Algebra.BigOperators.Ring.Finset
import Mathlib.Algebra.Field.Defs
import Mathlib.Algebra.Group.Action.Defs
import Mathlib.Algebra.Group.Basic
import Mathlib.Algebra.Group.Defs
import Mathlib.Algebra.Group.Hom.Defs
import Mathlib.Algebra.GroupWithZero.Basic
import Mathlib.Algebra.GroupWithZero.Defs
import Mathlib.Algebra.GroupWithZero.NeZero
import Mathlib.Algebra.GroupWithZero.Units.Basic
import Mathlib.Algebra.Module.Defs
import Mathlib.Algebra.Module.LinearMap.Defs
import Mathlib.Algebra.NeZero
import Mathlib.Algebra.Order.BigOperators.Group.Finset
import Mathlib.Algebra.Order.Monoid.Defs
import Mathlib.Algebra.Ring.Defs
import Mathlib.Algebra.Ring.Hom.Defs
import Mathlib.Algebra.Ring.Nat
import Mathlib.Algebra.Star.Basic
import Mathlib.Algebra.Star.SelfAdjoint
import Mathlib.Analysis.CStarAlgebra.Classes
import Mathlib.Analysis.CStarAlgebra.ContinuousFunctionalCalculus.Unital
import Mathlib.Analysis.Complex.Basic
import Mathlib.Analysis.InnerProductSpace.Basic
import Mathlib.Analysis.InnerProductSpace.Defs
import Mathlib.Analysis.Matrix.HermitianFunctionalCalculus
import Mathlib.Analysis.Matrix.Normed
import Mathlib.Analysis.Matrix.Order
import Mathlib.Analysis.Normed.Field.Basic
import Mathlib.Analysis.Normed.Lp.WithLp
import Mathlib.Analysis.Normed.Module.Basic
import Mathlib.Analysis.Normed.Ring.Basic
import Mathlib.Analysis.RCLike.Basic
import Mathlib.Analysis.SpecialFunctions.Log.Basic
import Mathlib.Data.Complex.Basic
import Mathlib.Data.Finset.Card
import Mathlib.Data.Finset.Defs
import Mathlib.Data.Finset.Range
import Mathlib.Data.Finset.SDiff
import Mathlib.Data.Fintype.Basic
import Mathlib.Data.Fintype.BigOperators
import Mathlib.Data.Fintype.Defs
import Mathlib.Data.Fintype.Pi
import Mathlib.Data.Fintype.Prod
import Mathlib.Data.Fintype.Sets
import Mathlib.Data.FunLike.Basic
import Mathlib.Data.Int.Cast.Defs
import Mathlib.Data.Matrix.Basic
import Mathlib.Data.Matrix.Mul
import Mathlib.Data.Nat.Cast.Defs
import Mathlib.Data.Real.Basic
import Mathlib.Data.Real.Star
import Mathlib.Data.SetLike.Basic
import Mathlib.GroupTheory.GroupAction.Hom
import Mathlib.LinearAlgebra.Matrix.ConjTranspose
import Mathlib.LinearAlgebra.Matrix.Defs
import Mathlib.LinearAlgebra.Matrix.Kronecker
import Mathlib.MeasureTheory.Measure.MeasureSpace
import Mathlib.Order.Defs.PartialOrder
import Mathlib.Order.Lattice
import Mathlib.Tactic.FieldSimp.Lemmas
import Mathlib.Tactic.Linarith.Lemmas
import Mathlib.Tactic.NormNum.Basic
import Mathlib.Tactic.NormNum.Result
import Mathlib.Tactic.Ring.Basic
import Mathlib.Tactic.Ring.Common
import Mathlib.Topology.Algebra.Ring.Basic
import Mathlib.Topology.Algebra.Ring.Real
import Mathlib.Topology.Algebra.Star.Real
import Mathlib.Topology.Defs.Filter
import Mathlib.Topology.Instances.Matrix
import Mathlib.Topology.MetricSpace.Basic
import Mathlib.Topology.MetricSpace.Defs
import Mathlib.Topology.MetricSpace.Pseudo.Defs
import Mathlib.Topology.UniformSpace.Defs

namespace QuantumParallelRepetition

noncomputable section

open scoped BigOperators Kronecker

namespace Game

variable {X Y A B : Type*}
variable [Fintype X] [Fintype Y] [Fintype A] [Fintype B]

theorem questionWeight_le_marginalX
    (G : Game X Y A B) (x : X) (y : Y) :
    G.questionWeight x y ≤ G.marginalX x := by
  unfold marginalX
  exact Finset.single_le_sum
    (fun y _ => G.weight_nonneg x y)
    (Finset.mem_univ y)

theorem marginalX_mul_conditionalYGivenX
    (G : Game X Y A B) (x : X) (y : Y) :
    G.marginalX x * G.conditionalYGivenX x y =
      G.questionWeight x y := by
  unfold conditionalYGivenX
  by_cases hx : G.marginalX x = 0
  · have hzero : G.questionWeight x y = 0 := by
      have hle := G.questionWeight_le_marginalX x y
      have hnonneg := G.weight_nonneg x y
      rw [hx] at hle
      linarith
    simp [hx, hzero]
  · field_simp

end Game

theorem history_forward_telescope (E : ℕ → ℝ) (m : ℕ) :
    (∑ k ∈ Finset.range m, (E (k + 1) - E k))
      = E m - E 0 := by
  simpa [Nat.succ_eq_add_one] using Finset.sum_range_sub E m

end

open scoped ComplexOrder Matrix BigOperators InnerProductSpace
open Complex Matrix Finset

noncomputable section

open scoped BigOperators ComplexOrder Kronecker MatrixOrder
  Matrix.Norms.L2Operator InnerProductSpace

set_option backward.isDefEq.respectTransparency false
set_option maxHeartbeats 2200000
set_option maxRecDepth 2048

attribute [local instance] Classical.propDecidable

variable {X Y A B : Type*}
variable [Fintype X] [Fintype Y] [Fintype A] [Fintype B]

theorem exactFairBobHistoryEntropy_eq_operatorPotential_sub
    (G : Game X Y A B) (n : ℕ) (S : Strategy (G.repeat n))
    (D : Finset (Fin n))
    (r : ExactHistoryFlag X Y A B D) :
    exactFairBobHistoryEntropyIncrement G n S D r =
      exactFairBobHistoryHighOperatorPotential G n S D r -
      exactFairBobHistoryLowOperatorPotential G n S D r := by
  unfold exactFairBobHistoryEntropyIncrement
    exactFairBobQuestionEntropyIncrement
    exactFairBobHistoryHighOperatorPotential
    exactFairBobHistoryLowOperatorPotential
  rw [← Finset.sum_sub_distrib]
  apply Finset.sum_congr rfl
  intro x _
  rw [← mul_sub, map_sub]

theorem exactReverseBobFilterOperatorMarkerEntropy_eq_sub
    (G : Game X Y A B) (n : ℕ) (S : Strategy (G.repeat n))
    (D : Finset (Fin n))
    (side : Finset (SourceRemainingCoordinate D))
    (context : ExactReverseSideContext
      (SourceRemainingCoordinate D) side)
    (marker : Fin side.card) :
    exactReverseBobFilterOperatorMarkerEntropy
        G n S D side context marker =
      exactReverseBobFilterHighOperatorPotential
          G n S D side context marker -
        exactReverseBobFilterLowOperatorPotential
          G n S D side context marker := by
  unfold exactReverseBobFilterOperatorMarkerEntropy
    exactReverseBobFilterHighOperatorPotential
    exactReverseBobFilterLowOperatorPotential
  simp only [← Finset.sum_sub_distrib]
  apply Finset.sum_congr rfl
  intro history _
  apply Finset.sum_congr rfl
  intro aliceAnswer _
  apply Finset.sum_congr rfl
  intro bobAnswer _
  by_cases accepted : exactHistoryAccepted G n D
    ⟨exactReverseAliceMarkerDecode side context marker,
      history, aliceAnswer, bobAnswer⟩
  · simp only [if_pos accepted]
    rw [exactFairBobHistoryEntropy_eq_operatorPotential_sub]
    ring
  · simp [accepted]

end

noncomputable section

open scoped BigOperators ComplexOrder Kronecker MatrixOrder
  Matrix.Norms.L2Operator InnerProductSpace

set_option backward.isDefEq.respectTransparency false
set_option maxHeartbeats 3000000
set_option maxRecDepth 2048

attribute [local instance] Classical.propDecidable

variable {X Y A B : Type*}
variable [Fintype X] [Fintype Y] [Fintype A] [Fintype B]

theorem exactFairBobHistoryHighOperatorPotential_eq_joint
    (G : Game X Y A B) (n : ℕ) (S : Strategy (G.repeat n))
    (D : Finset (Fin n))
    (r : ExactHistoryFlag X Y A B D) :
    exactFairBobHistoryHighOperatorPotential G n S D r =
      ∑ x : X, ∑ y : Y, G.questionWeight x y *
        bornTracePairing S.state.matrix
          (exactAliceQuestionFilter
            G n S D r.seed r.history r.aliceAnswer x)
          (cfc (fun z : ℝ => z * Real.log z)
            (exactBobQuestionFilter
              G n S D r.seed r.history r.bobAnswer y)) := by
  classical
  unfold exactFairBobHistoryHighOperatorPotential
  simp only [map_sum, map_smul, smul_eq_mul]
  apply Finset.sum_congr rfl
  intro x _
  rw [Finset.mul_sum]
  apply Finset.sum_congr rfl
  intro y _
  rw [← G.marginalX_mul_conditionalYGivenX x y]
  ring

theorem exactFairBobHistoryLowOperatorPotential_eq_joint
    (G : Game X Y A B) (n : ℕ) (S : Strategy (G.repeat n))
    (D : Finset (Fin n))
    (r : ExactHistoryFlag X Y A B D) :
    exactFairBobHistoryLowOperatorPotential G n S D r =
      ∑ x : X, ∑ y : Y, G.questionWeight x y *
        bornTracePairing S.state.matrix
          (exactAliceQuestionFilter
            G n S D r.seed r.history r.aliceAnswer x)
          (cfc (fun z : ℝ => z * Real.log z)
            (exactBobMeanFilter
              G n S D r.seed r.history r.bobAnswer x)) := by
  classical
  unfold exactFairBobHistoryLowOperatorPotential
  apply Finset.sum_congr rfl
  intro x _
  unfold Game.marginalX
  rw [Finset.sum_mul]

end

noncomputable section

open scoped BigOperators ComplexOrder Kronecker MatrixOrder
  Matrix.Norms.L2Operator InnerProductSpace

set_option backward.isDefEq.respectTransparency false
set_option maxHeartbeats 3400000
set_option maxRecDepth 2048

attribute [local instance] Classical.propDecidable

variable {X Y A B : Type*}
variable [Fintype X] [Fintype Y] [Fintype A] [Fintype B]

theorem exactReverseBobHighOperatorPotential_eq_question
    (G : Game X Y A B) (n : ℕ) (S : Strategy (G.repeat n))
    (D : Finset (Fin n))
    (side : Finset (SourceRemainingCoordinate D))
    (context : ExactReverseSideContext
      (SourceRemainingCoordinate D) side)
    (marker : Fin side.card) :
    exactReverseBobFilterHighOperatorPotential
        G n S D side context marker =
      exactReverseBobHighQuestionPotential
        G n S D side context marker := by
  classical
  unfold exactReverseBobFilterHighOperatorPotential
    exactReverseBobHighQuestionPotential
  dsimp only
  calc
    (∑ history : ExactRevealHistory X Y D
        (exactReverseAliceMarkerDecode side context marker),
      ∑ aliceAnswer : {j : Fin n // j ∈ D} → A,
      ∑ bobAnswer : {j : Fin n // j ∈ D} → B,
        if exactHistoryAccepted G n D
          ⟨exactReverseAliceMarkerDecode side context marker,
            history, aliceAnswer, bobAnswer⟩ then
          exactRevealMass G n D
            (exactReverseAliceMarkerDecode side context marker)
            history *
          exactFairBobHistoryHighOperatorPotential G n S D
            ⟨exactReverseAliceMarkerDecode side context marker,
              history, aliceAnswer, bobAnswer⟩
        else 0) =
      ∑ history : ExactRevealHistory X Y D
        (exactReverseAliceMarkerDecode side context marker),
      ∑ aliceAnswer : {j : Fin n // j ∈ D} → A,
      ∑ bobAnswer : {j : Fin n // j ∈ D} → B,
        if exactHistoryAccepted G n D
          ⟨exactReverseAliceMarkerDecode side context marker,
            history, aliceAnswer, bobAnswer⟩ then
          exactRevealMass G n D
            (exactReverseAliceMarkerDecode side context marker)
            history *
            (∑ x : X, ∑ y : Y, G.questionWeight x y *
              bornTracePairing S.state.matrix
                (exactAliceQuestionFilter G n S D
                  (exactReverseAliceMarkerDecode side context marker)
                  history aliceAnswer x)
                (cfc (fun z : ℝ => z * Real.log z)
                  (exactBobQuestionFilter G n S D
                    (exactReverseAliceMarkerDecode side context marker)
                    history bobAnswer y)))
        else 0 := by
          apply Finset.sum_congr rfl
          intro history _
          apply Finset.sum_congr rfl
          intro aliceAnswer _
          apply Finset.sum_congr rfl
          intro bobAnswer _
          split
          · rw [exactFairBobHistoryHighOperatorPotential_eq_joint]
          · rfl
    _ = _ := exactFairAcceptedJointStatistic_reindex
      G n S D (exactReverseAliceMarkerDecode side context marker)
      (fun history aliceAnswer bobAnswer x y =>
        bornTracePairing S.state.matrix
          (exactAliceQuestionFilter G n S D
            (exactReverseAliceMarkerDecode side context marker)
            history aliceAnswer x)
          (cfc (fun z : ℝ => z * Real.log z)
            (exactBobQuestionFilter G n S D
              (exactReverseAliceMarkerDecode side context marker)
              history bobAnswer y)))

theorem exactReverseBobLowOperatorPotential_eq_question
    (G : Game X Y A B) (n : ℕ) (S : Strategy (G.repeat n))
    (D : Finset (Fin n))
    (side : Finset (SourceRemainingCoordinate D))
    (context : ExactReverseSideContext
      (SourceRemainingCoordinate D) side)
    (marker : Fin side.card) :
    exactReverseBobFilterLowOperatorPotential
        G n S D side context marker =
      exactReverseBobLowQuestionPotential
        G n S D side context marker := by
  classical
  unfold exactReverseBobFilterLowOperatorPotential
    exactReverseBobLowQuestionPotential
  dsimp only
  calc
    (∑ history : ExactRevealHistory X Y D
        (exactReverseAliceMarkerDecode side context marker),
      ∑ aliceAnswer : {j : Fin n // j ∈ D} → A,
      ∑ bobAnswer : {j : Fin n // j ∈ D} → B,
        if exactHistoryAccepted G n D
          ⟨exactReverseAliceMarkerDecode side context marker,
            history, aliceAnswer, bobAnswer⟩ then
          exactRevealMass G n D
            (exactReverseAliceMarkerDecode side context marker)
            history *
          exactFairBobHistoryLowOperatorPotential G n S D
            ⟨exactReverseAliceMarkerDecode side context marker,
              history, aliceAnswer, bobAnswer⟩
        else 0) =
      ∑ history : ExactRevealHistory X Y D
        (exactReverseAliceMarkerDecode side context marker),
      ∑ aliceAnswer : {j : Fin n // j ∈ D} → A,
      ∑ bobAnswer : {j : Fin n // j ∈ D} → B,
        if exactHistoryAccepted G n D
          ⟨exactReverseAliceMarkerDecode side context marker,
            history, aliceAnswer, bobAnswer⟩ then
          exactRevealMass G n D
            (exactReverseAliceMarkerDecode side context marker)
            history *
            (∑ x : X, ∑ y : Y, G.questionWeight x y *
              bornTracePairing S.state.matrix
                (exactAliceQuestionFilter G n S D
                  (exactReverseAliceMarkerDecode side context marker)
                  history aliceAnswer x)
                (cfc (fun z : ℝ => z * Real.log z)
                  (exactBobMeanFilter G n S D
                    (exactReverseAliceMarkerDecode side context marker)
                    history bobAnswer x)))
        else 0 := by
          apply Finset.sum_congr rfl
          intro history _
          apply Finset.sum_congr rfl
          intro aliceAnswer _
          apply Finset.sum_congr rfl
          intro bobAnswer _
          split
          · rw [exactFairBobHistoryLowOperatorPotential_eq_joint]
          · rfl
    _ = _ := exactFairAcceptedJointStatistic_reindex
      G n S D (exactReverseAliceMarkerDecode side context marker)
      (fun history aliceAnswer bobAnswer x y =>
        bornTracePairing S.state.matrix
          (exactAliceQuestionFilter G n S D
            (exactReverseAliceMarkerDecode side context marker)
            history aliceAnswer x)
          (cfc (fun z : ℝ => z * Real.log z)
            (exactBobMeanFilter G n S D
              (exactReverseAliceMarkerDecode side context marker)
              history bobAnswer x)))

theorem exactReverseBobFilterOperatorMarkerEntropy_eq_question_sub
    (G : Game X Y A B) (n : ℕ) (S : Strategy (G.repeat n))
    (D : Finset (Fin n))
    (side : Finset (SourceRemainingCoordinate D))
    (context : ExactReverseSideContext
      (SourceRemainingCoordinate D) side)
    (marker : Fin side.card) :
    exactReverseBobFilterOperatorMarkerEntropy
        G n S D side context marker =
      exactReverseBobHighQuestionPotential
          G n S D side context marker -
        exactReverseBobLowQuestionPotential
          G n S D side context marker := by
  rw [exactReverseBobFilterOperatorMarkerEntropy_eq_sub,
    exactReverseBobHighOperatorPotential_eq_question,
    exactReverseBobLowOperatorPotential_eq_question]

end

noncomputable section

open scoped BigOperators ComplexOrder Kronecker MatrixOrder
  Matrix.Norms.L2Operator InnerProductSpace

set_option backward.isDefEq.respectTransparency false
set_option maxHeartbeats 3000000
set_option maxRecDepth 2048

attribute [local instance] Classical.propDecidable

variable {X Y A B : Type*}
variable [Fintype X] [Fintype Y] [Fintype A] [Fintype B]

theorem exactReverseBobAlignedCfcPrefixPotential_telescope
    (G : Game X Y A B) (n : ℕ) (S : Strategy (G.repeat n))
    (D : Finset (Fin n))
    (side : Finset (SourceRemainingCoordinate D))
    (context : ExactReverseSideContext
      (SourceRemainingCoordinate D) side) :
    (∑ k ∈ Finset.range side.card,
      (exactReverseBobAlignedCfcPrefixPotential
          G n S D side context (k + 1) -
        exactReverseBobAlignedCfcPrefixPotential
          G n S D side context k)) =
      exactReverseBobAlignedCfcPrefixPotential
          G n S D side context side.card -
        exactReverseBobAlignedCfcPrefixPotential
          G n S D side context 0 :=
  history_forward_telescope
    (exactReverseBobAlignedCfcPrefixPotential
      G n S D side context) side.card

end

noncomputable section

open scoped BigOperators ComplexOrder Kronecker MatrixOrder
  Matrix.Norms.L2Operator InnerProductSpace

set_option backward.isDefEq.respectTransparency false
set_option maxHeartbeats 6000000
set_option maxRecDepth 2048

attribute [local instance] Classical.propDecidable

variable {X Y A B : Type*}
variable [Fintype X] [Fintype Y] [Fintype A] [Fintype B]

theorem exactReverseBobFilterOperatorMarkerEntropy_eq_aligned_step
    (G : Game X Y A B) (n : ℕ) (S : Strategy (G.repeat n))
    (D : Finset (Fin n))
    (side : Finset (SourceRemainingCoordinate D))
    (context : ExactReverseSideContext
      (SourceRemainingCoordinate D) side)
    (marker : Fin side.card) :
    exactReverseBobFilterOperatorMarkerEntropy
        G n S D side context marker =
      exactReverseBobAlignedCfcPrefixPotential
          G n S D side context (marker.val + 1) -
        exactReverseBobAlignedCfcPrefixPotential
          G n S D side context marker.val := by
  rw [exactReverseBobFilterOperatorMarkerEntropy_eq_question_sub,
    exactReverseBobHighQuestionPotential_eq_alignedPrefix,
    exactReverseBobLowQuestionPotential_eq_alignedPrefix]

end

end QuantumParallelRepetition


open QuantumParallelRepetition
open scoped ComplexOrder Matrix BigOperators InnerProductSpace
open Complex Matrix Finset
open scoped BigOperators ComplexOrder Kronecker MatrixOrder
  Matrix.Norms.L2Operator InnerProductSpace
set_option backward.isDefEq.respectTransparency false
set_option maxHeartbeats 6000000
set_option maxRecDepth 2048
attribute [local instance] Classical.propDecidable
variable {X Y A B : Type*}
variable [Fintype X] [Fintype Y] [Fintype A] [Fintype B]

theorem solution
    (G : Game X Y A B) (n : ℕ) (S : Strategy (G.repeat n))
    (D : Finset (Fin n))
    (side : Finset (SourceRemainingCoordinate D))
    (context : ExactReverseSideContext
      (SourceRemainingCoordinate D) side) :
    (∑ marker : Fin side.card,
      exactReverseBobFilterOperatorMarkerEntropy
        G n S D side context marker) =
      exactReverseBobAlignedCfcPrefixPotential
          G n S D side context side.card -
        exactReverseBobAlignedCfcPrefixPotential
          G n S D side context 0 := by
  classical
  calc
    (∑ marker : Fin side.card,
      exactReverseBobFilterOperatorMarkerEntropy
        G n S D side context marker) =
      ∑ marker : Fin side.card,
        (exactReverseBobAlignedCfcPrefixPotential
            G n S D side context (marker.val + 1) -
          exactReverseBobAlignedCfcPrefixPotential
            G n S D side context marker.val) := by
          apply Finset.sum_congr rfl
          intro marker _
          exact exactReverseBobFilterOperatorMarkerEntropy_eq_aligned_step
            G n S D side context marker
    _ = ∑ k ∈ Finset.range side.card,
        (exactReverseBobAlignedCfcPrefixPotential
            G n S D side context (k + 1) -
          exactReverseBobAlignedCfcPrefixPotential
            G n S D side context k) := by
          rw [Finset.sum_fin_eq_sum_range]
          apply Finset.sum_congr rfl
          intro k hk
          simp [Finset.mem_range.mp hk]
    _ = _ := exactReverseBobAlignedCfcPrefixPotential_telescope
      G n S D side context
