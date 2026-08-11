import Definitions.Def_quantum_parallel_repetition_game
import Definitions.Def_qpr_core_22
import Theorems.Thm_QuantumParallelRepetition_exactRight_coordinate_not_mem
import Theorems.Thm_QuantumParallelRepetition_exactReverseRightSide_coordinate_mem
import Theorems.Thm_QuantumParallelRepetition_exactReverseRightSide_card
import Theorems.Thm_QuantumParallelRepetition_exactInsertedPrefixBefore_marker_eq
import Theorems.Thm_QuantumParallelRepetition_exactReverseBobMarkerDecode_rightInverse
import Theorems.Thm_QuantumParallelRepetition_exactBobQuestionFilter_eq_jointPrefixOperatorFilter
import Theorems.Thm_QuantumParallelRepetition_exactFairAliceMeanFilter_eq_jointPrefixOperatorFilter
import Mathlib.Algebra.Algebra.Basic
import Mathlib.Algebra.Algebra.Defs
import Mathlib.Algebra.BigOperators.Group.Finset.Basic
import Mathlib.Algebra.BigOperators.Group.Finset.Defs
import Mathlib.Algebra.Group.Action.Defs
import Mathlib.Algebra.Group.Defs
import Mathlib.Algebra.GroupWithZero.Defs
import Mathlib.Algebra.Module.Defs
import Mathlib.Algebra.Module.LinearMap.Defs
import Mathlib.Algebra.Ring.Defs
import Mathlib.Algebra.Ring.Hom.Defs
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
import Mathlib.Data.Fin.SuccPred
import Mathlib.Data.Finset.Card
import Mathlib.Data.Finset.Defs
import Mathlib.Data.Finset.Filter
import Mathlib.Data.Finset.Image
import Mathlib.Data.Finset.Insert
import Mathlib.Data.Finset.Lattice.Basic
import Mathlib.Data.Finset.SDiff
import Mathlib.Data.Fintype.Basic
import Mathlib.Data.Fintype.Defs
import Mathlib.Data.Fintype.Pi
import Mathlib.Data.Fintype.Prod
import Mathlib.Data.Fintype.Sets
import Mathlib.Data.FunLike.Basic
import Mathlib.Data.FunLike.Equiv
import Mathlib.Data.Matrix.Basic
import Mathlib.Data.Matrix.Mul
import Mathlib.Data.Real.Basic
import Mathlib.Data.Real.Star
import Mathlib.Data.SetLike.Basic
import Mathlib.LinearAlgebra.Matrix.ConjTranspose
import Mathlib.LinearAlgebra.Matrix.Defs
import Mathlib.LinearAlgebra.Matrix.Kronecker
import Mathlib.Logic.Equiv.Defs
import Mathlib.Logic.Equiv.Fin.Basic
import Mathlib.Logic.Equiv.Option
import Mathlib.MeasureTheory.Measure.MeasureSpace
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

open scoped ComplexOrder Matrix BigOperators InnerProductSpace
open Complex Matrix Finset

noncomputable section

open scoped BigOperators

set_option backward.isDefEq.respectTransparency false
set_option maxHeartbeats 1200000
set_option maxRecDepth 2048

attribute [local instance] Classical.propDecidable

@[simp] theorem exactInsertedRank_marker
    {M : Type*} [DecidableEq M]
    (i : M) (side : Finset M) (not_mem : i ∉ side)
    (rank : {j : M // j ∈ side} ≃ Fin side.card)
    (cut : Fin (side.card + 1)) :
    exactInsertedRank i side not_mem rank cut
      ⟨i, Finset.mem_insert_self i side⟩ = cut := by
  simp [exactInsertedRank,
    Finset.subtypeInsertEquivOption]

@[simp] theorem exactReverseRightRank_coordinate
    {M : Type*} [Fintype M] [DecidableEq M]
    (seed : ExactForwardSeed M) :
    exactReverseRightRank seed
      ⟨seed.coordinate,
        exactReverseRightSide_coordinate_mem seed⟩ =
      seed.rightCut := by
  exact exactInsertedRank_marker
    seed.coordinate
    (exactRight seed.coordinate seed.partition)
    (exactRight_coordinate_not_mem
      seed.coordinate seed.partition)
    (exactRightRank seed) seed.rightCut

theorem exactReverseRightPrefixBeforeMarked_eq
    {M : Type*} [Fintype M] [DecidableEq M]
    (seed : ExactForwardSeed M) :
    exactReverseRightPrefixBeforeMarked seed =
      exactRightPrefix seed := by
  exact exactInsertedPrefixBefore_marker_eq
    seed.coordinate
    (exactRight seed.coordinate seed.partition)
    (exactRight_coordinate_not_mem
      seed.coordinate seed.partition)
    (exactRightRank seed) seed.rightCut

end

noncomputable section

open scoped BigOperators

set_option backward.isDefEq.respectTransparency false
set_option maxHeartbeats 1800000
set_option maxRecDepth 2048

attribute [local instance] Classical.propDecidable

theorem exactOrderedSidePrefix_mem_iff
    {M : Type*} [Fintype M] [DecidableEq M]
    (side : Finset M)
    (rank : {j : M // j ∈ side} ≃ Fin side.card)
    (cut : Fin (side.card + 1)) (j : M) :
    j ∈ exactOrderedSidePrefix side rank cut ↔
      ∃ hj : j ∈ side, (rank ⟨j, hj⟩).val < cut.val := by
  constructor
  · intro hj
    obtain ⟨a, ha, haval⟩ := Finset.mem_image.mp hj
    have hside : j ∈ side := haval ▸ a.property
    refine ⟨hside, ?_⟩
    have hsub : (⟨j, hside⟩ : {j : M // j ∈ side}) = a :=
      Subtype.ext haval.symm
    rw [hsub]
    exact (Finset.mem_filter.mp ha).2
  · rintro ⟨hj, hlt⟩
    exact Finset.mem_image.mpr
      ⟨⟨j, hj⟩, Finset.mem_filter.mpr
        ⟨Finset.mem_univ _, hlt⟩, rfl⟩

theorem exactInsertedPrefixBefore_mem_iff
    {M : Type*} [Fintype M] [DecidableEq M]
    (i : M) (side : Finset M) (not_mem : i ∉ side)
    (rank : {j : M // j ∈ side} ≃ Fin side.card)
    (cut : Fin (side.card + 1)) (j : M) :
    j ∈ exactInsertedPrefixBefore i side not_mem rank cut ↔
      ∃ hj : j ∈ insert i side,
        (exactInsertedRank i side not_mem rank cut
          ⟨j, hj⟩).val < cut.val := by
  constructor
  · intro hj
    obtain ⟨a, ha, haval⟩ := Finset.mem_image.mp hj
    have hside : j ∈ insert i side := haval ▸ a.property
    refine ⟨hside, ?_⟩
    have hsub : (⟨j, hside⟩ : {j : M // j ∈ insert i side}) = a :=
      Subtype.ext haval.symm
    rw [hsub]
    exact (Finset.mem_filter.mp ha).2
  · rintro ⟨hj, hlt⟩
    exact Finset.mem_image.mpr
      ⟨⟨j, hj⟩, Finset.mem_filter.mpr
        ⟨Finset.mem_univ _, hlt⟩, rfl⟩

@[simp] theorem exactReverseBobContext_otherPrefix
    {M : Type*} [Fintype M] [DecidableEq M]
    (seed : ExactForwardSeed M) :
    exactReverseContextOtherPrefix
        (exactReverseBobContext seed) =
      exactLeftPrefix seed := by
  rfl

variable {X Y A B : Type*}
variable [Fintype X] [Fintype Y] [Fintype A] [Fintype B]

@[simp] theorem exactReverseBobContext_marked_rank
    {M : Type*} [Fintype M] [DecidableEq M]
    (seed : ExactForwardSeed M) :
    ((exactReverseBobContext seed).sideRank
      ⟨seed.coordinate,
        exactReverseRightSide_coordinate_mem seed⟩).val =
      seed.rightCut.val := by
  simp [exactReverseBobContext,
    Equiv.trans_apply,
    exactReverseRightRank_coordinate]

theorem exactReverseBobContext_prefix_before_marked
    {M : Type*} [Fintype M] [DecidableEq M]
    (seed : ExactForwardSeed M) :
    exactReverseContextPrefixBefore
        (exactReverseBobContext seed)
        ((exactReverseBobContext seed).sideRank
          ⟨seed.coordinate,
            exactReverseRightSide_coordinate_mem seed⟩) =
      exactRightPrefix seed := by
  calc
    exactReverseContextPrefixBefore
        (exactReverseBobContext seed)
        ((exactReverseBobContext seed).sideRank
          ⟨seed.coordinate,
            exactReverseRightSide_coordinate_mem seed⟩) =
        exactReverseRightPrefixBeforeMarked seed := by
      change
        exactOrderedSidePrefix
          (exactReverseRightSide seed)
          (exactReverseBobContext seed).sideRank
          ((exactReverseBobContext seed).sideRank
            ⟨seed.coordinate,
              exactReverseRightSide_coordinate_mem seed⟩).castSucc =
        exactInsertedPrefixBefore seed.coordinate
          (exactRight seed.coordinate seed.partition)
          (exactRight_coordinate_not_mem
            seed.coordinate seed.partition)
          (exactRightRank seed) seed.rightCut
      ext j
      simp only [exactOrderedSidePrefix_mem_iff,
        exactInsertedPrefixBefore_mem_iff]
      constructor
      · rintro ⟨hj, hlt⟩
        change j ∈ insert seed.coordinate
          (exactRight seed.coordinate seed.partition) at hj
        refine ⟨hj, ?_⟩
        have hlt' :
            ((exactReverseBobContext seed).sideRank
              ⟨j, hj⟩).val < seed.rightCut.val := by
          simpa only [Fin.val_castSucc,
            exactReverseBobContext_marked_rank] using hlt
        convert hlt' using 1
        all_goals simp [exactReverseBobContext,
            exactReverseRightRank, Equiv.trans_apply]
        all_goals congr 2
      · rintro ⟨hj, hlt⟩
        change j ∈ exactReverseRightSide seed at hj
        refine ⟨hj, ?_⟩
        have hlt' :
            ((exactReverseBobContext seed).sideRank
              ⟨j, hj⟩).val < seed.rightCut.val := by
          convert hlt using 1
          all_goals simp [exactReverseBobContext,
              exactReverseRightRank, Equiv.trans_apply]
          all_goals congr 2
        simpa only [Fin.val_castSucc,
          exactReverseBobContext_marked_rank] using hlt'
    _ = exactRightPrefix seed :=
      exactReverseRightPrefixBeforeMarked_eq seed

end

noncomputable section

open scoped BigOperators ComplexOrder Kronecker MatrixOrder
  Matrix.Norms.L2Operator InnerProductSpace

set_option backward.isDefEq.respectTransparency false
set_option maxHeartbeats 2800000
set_option maxRecDepth 2048

attribute [local instance] Classical.propDecidable

variable {X Y A B : Type*}
variable [Fintype X] [Fintype Y] [Fintype A] [Fintype B]

theorem exactReverseContextQuestionPrefix_eq_image
    {n : ℕ} (D : Finset (Fin n))
    (side : Finset (SourceRemainingCoordinate D))
    (context : ExactReverseSideContext
      (SourceRemainingCoordinate D) side)
    (marker : Fin side.card) :
    exactReverseContextQuestionPrefix
        D side context marker.val =
      (exactReverseContextPrefixBefore
        context marker).image Subtype.val := by
  classical
  unfold exactReverseContextQuestionPrefix
    exactReverseContextPrefixBefore
    exactOrderedSidePrefix
  rw [Finset.image_image]
  rfl

theorem exactReverseAlicePrefixXMask_eq_fair
    {n : ℕ} (D : Finset (Fin n))
    (seed : ExactRemainingSeed D) :
    exactReverseAlicePrefixXMask D
        (exactReverseRightSide seed)
        (exactReverseBobContext seed)
        (((exactReverseBobContext seed).sideRank
          ⟨seed.coordinate,
            exactReverseRightSide_coordinate_mem seed⟩).val) =
      exactFairAliceQuestionMask D seed := by
  classical
  unfold exactReverseAlicePrefixXMask
    exactFairAliceQuestionMask
  rw [exactReverseContextQuestionPrefix_eq_image,
    exactReverseBobContext_prefix_before_marked]
  rfl

theorem exactReverseAliceFixedYMask_eq_insert_fair
    {n : ℕ} (D : Finset (Fin n))
    (seed : ExactRemainingSeed D) :
    exactReverseAliceFixedYMask D
        (exactReverseRightSide seed)
        (exactReverseBobContext seed) =
      insert seed.coordinate.val
        (exactFairBobQuestionMask D seed) := by
  classical
  unfold exactReverseAliceFixedYMask
    exactFairBobQuestionMask
  rw [exactReverseBobContext_otherPrefix]
  unfold exactReverseRightSide
  rw [Finset.image_insert]
  ext j
  simp only [Finset.mem_union, Finset.mem_insert]
  tauto

end

noncomputable section

open scoped BigOperators ComplexOrder Kronecker MatrixOrder
  Matrix.Norms.L2Operator InnerProductSpace

set_option backward.isDefEq.respectTransparency false
set_option maxHeartbeats 5000000
set_option maxRecDepth 2048

attribute [local instance] Classical.propDecidable

variable {X Y A B : Type*}
variable [Fintype X] [Fintype Y] [Fintype A] [Fintype B]

theorem exactReverseBobMarker_induction
    {n : ℕ} (D : Finset (Fin n))
    (P : (side : Finset (SourceRemainingCoordinate D)) →
      ExactReverseSideContext
        (SourceRemainingCoordinate D) side → Fin side.card → Prop)
    (allSeeds : ∀ seed : ExactRemainingSeed D,
      P (exactReverseRightSide seed)
        (exactReverseBobContext seed)
        ((exactReverseBobContext seed).sideRank
          ⟨seed.coordinate,
            exactReverseRightSide_coordinate_mem seed⟩)) :
    ∀ (side : Finset (SourceRemainingCoordinate D))
      (context : ExactReverseSideContext
        (SourceRemainingCoordinate D) side)
      (marker : Fin side.card), P side context marker := by
  intro side context marker
  let seed := exactReverseBobMarkerDecode side context marker
  let motive :
      (Σ side : Finset (SourceRemainingCoordinate D),
        ExactReverseSideContext
          (SourceRemainingCoordinate D) side × Fin side.card) → Prop :=
    fun code => P code.1 code.2.1 code.2.2
  have actual : motive (exactReverseBobMarkerCode seed) :=
    allSeeds seed
  have inverse : exactReverseBobMarkerCode seed =
      ⟨side, context, marker⟩ := by
    exact exactReverseBobMarkerDecode_rightInverse
      side context marker
  rw [inverse] at actual
  exact actual

end

end QuantumParallelRepetition


open QuantumParallelRepetition
open scoped ComplexOrder Matrix BigOperators InnerProductSpace
open Complex Matrix Finset
open scoped BigOperators ComplexOrder Kronecker MatrixOrder
  Matrix.Norms.L2Operator InnerProductSpace
set_option backward.isDefEq.respectTransparency false
set_option maxHeartbeats 5000000
set_option maxRecDepth 2048
attribute [local instance] Classical.propDecidable
variable {X Y A B : Type*}
variable [Fintype X] [Fintype Y] [Fintype A] [Fintype B]

theorem solution
    (G : Game X Y A B) (n : ℕ) (S : Strategy (G.repeat n))
    (D : Finset (Fin n))
    (side : Finset (SourceRemainingCoordinate D))
    (context : ExactReverseSideContext
      (SourceRemainingCoordinate D) side)
    (marker : Fin side.card) :
    exactReverseAliceLowQuestionPotential
        G n S D side context marker =
      exactReverseAliceAlignedCfcPrefixPotential
        G n S D side context marker.val := by
  classical
  apply exactReverseBobMarker_induction D
    (fun side context marker =>
      exactReverseAliceLowQuestionPotential
          G n S D side context marker =
        exactReverseAliceAlignedCfcPrefixPotential
          G n S D side context marker.val)
  intro seed
  have decoded :=
    (exactReverseBobWeightedMarkerEquiv
      (M := SourceRemainingCoordinate D)).left_inv seed
  change
    exactReverseBobMarkerDecode
        (exactReverseRightSide seed)
        (exactReverseBobContext seed)
        ((exactReverseBobContext seed).sideRank
          ⟨seed.coordinate,
            exactReverseRightSide_coordinate_mem seed⟩) = seed
    at decoded
  unfold exactReverseAliceLowQuestionPotential
    exactReverseAliceAlignedCfcPrefixPotential
  dsimp only
  rw [decoded,
    exactReverseAlicePrefixXMask_eq_fair,
    exactReverseAliceFixedYMask_eq_insert_fair]
  apply Finset.sum_congr rfl
  intro q _
  by_cases supported : exactPriorQuestionWeight G n q = 0
  · simp [supported]
  · congr 1
    apply Finset.sum_congr rfl
    intro aliceAnswer _
    apply Finset.sum_congr rfl
    intro bobAnswer _
    by_cases accepted : ∀ j : {j : Fin n // j ∈ D},
      G.predicate (q.1 j.val) (q.2 j.val)
        (aliceAnswer j) (bobAnswer j) = true
    · have sourceAccepted : exactHistoryAccepted G n D
          ⟨seed, exactRevealCode D seed q,
            aliceAnswer, bobAnswer⟩ := by
        exact accepted
      simp only [if_pos sourceAccepted, if_pos accepted]
      rw [exactFairAliceMeanFilter_eq_jointPrefixOperatorFilter
          G n S D seed q aliceAnswer supported,
        exactBobQuestionFilter_eq_jointPrefixOperatorFilter
          G n S D seed q bobAnswer]
    · have sourceRejected : ¬ exactHistoryAccepted G n D
          ⟨seed, exactRevealCode D seed q,
            aliceAnswer, bobAnswer⟩ := by
        exact accepted
      simp only [if_neg sourceRejected, if_neg accepted]
