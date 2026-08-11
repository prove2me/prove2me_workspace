import Definitions.Def_quantum_parallel_repetition_game
import Definitions.Def_qpr_core_24
import Theorems.Thm_QuantumParallelRepetition_exactRemainingCoordinate_card_pos
import Theorems.Thm_QuantumParallelRepetition_exactReverseLeftSide_coordinate_mem
import Theorems.Thm_QuantumParallelRepetition_exactReverseAliceConditionalSeedWeight_nonneg
import Theorems.Thm_QuantumParallelRepetition_exactReverseAliceConditionalSeedWeight_sum
import Theorems.Thm_QuantumParallelRepetition_exactReverseAliceUniformMarkedSeed_sum
import Theorems.Thm_QuantumParallelRepetition_exact_source_equation_twenty_three_of_conditioned_reverse_prefix
import Theorems.Thm_QuantumParallelRepetition_reweightedSeedPrefixEntropyIncrement_eq_actual_atom_sum
import Theorems.Thm_QuantumParallelRepetition_exactAliceSourceConditionalInformation_eq_joint_atom_sum
import Theorems.Thm_QuantumParallelRepetition_exactReverseAliceMarkedContextInformation_eq_source
import Theorems.Thm_QuantumParallelRepetition_exactReverseBobConditionalHistoryIdentification_proved
import Theorems.Thm_QuantumParallelRepetition_exact_source_equation_twenty_seven_support_preserving_of_information
import Mathlib.Algebra.BigOperators.Field
import Mathlib.Algebra.BigOperators.Group.Finset.Basic
import Mathlib.Algebra.BigOperators.Group.Finset.Defs
import Mathlib.Algebra.BigOperators.Group.Finset.Piecewise
import Mathlib.Algebra.BigOperators.Group.Finset.Sigma
import Mathlib.Algebra.BigOperators.Ring.Finset
import Mathlib.Algebra.CharP.Defs
import Mathlib.Algebra.Field.Defs
import Mathlib.Algebra.Group.Basic
import Mathlib.Algebra.Group.Defs
import Mathlib.Algebra.GroupWithZero.Basic
import Mathlib.Algebra.GroupWithZero.Defs
import Mathlib.Algebra.GroupWithZero.NeZero
import Mathlib.Algebra.GroupWithZero.Units.Basic
import Mathlib.Algebra.NeZero
import Mathlib.Algebra.Notation.Defs
import Mathlib.Algebra.Order.Group.Defs
import Mathlib.Algebra.Order.GroupWithZero.Unbundled.Basic
import Mathlib.Algebra.Order.Monoid.Defs
import Mathlib.Algebra.Order.Ring.Defs
import Mathlib.Algebra.Ring.Defs
import Mathlib.Algebra.Ring.Nat
import Mathlib.Algebra.Star.Basic
import Mathlib.Analysis.InnerProductSpace.Basic
import Mathlib.Analysis.Matrix.Normed
import Mathlib.Analysis.Matrix.Order
import Mathlib.Analysis.Normed.Lp.WithLp
import Mathlib.Analysis.Normed.Ring.Basic
import Mathlib.Analysis.RCLike.Basic
import Mathlib.Data.Finset.BooleanAlgebra
import Mathlib.Data.Finset.Card
import Mathlib.Data.Finset.Defs
import Mathlib.Data.Finset.Empty
import Mathlib.Data.Finset.Filter
import Mathlib.Data.Finset.Insert
import Mathlib.Data.Finset.Lattice.Basic
import Mathlib.Data.Finset.SDiff
import Mathlib.Data.Fintype.Basic
import Mathlib.Data.Fintype.BigOperators
import Mathlib.Data.Fintype.Card
import Mathlib.Data.Fintype.Defs
import Mathlib.Data.Fintype.Pi
import Mathlib.Data.Fintype.Powerset
import Mathlib.Data.Fintype.Prod
import Mathlib.Data.Fintype.Sets
import Mathlib.Data.Fintype.Sigma
import Mathlib.Data.FunLike.Basic
import Mathlib.Data.FunLike.Equiv
import Mathlib.Data.Int.Cast.Defs
import Mathlib.Data.Matrix.Basic
import Mathlib.Data.Nat.Cast.Defs
import Mathlib.Data.Nat.Cast.Order.Basic
import Mathlib.Data.Nat.Init
import Mathlib.Data.Real.Basic
import Mathlib.Data.SetLike.Basic
import Mathlib.LinearAlgebra.Matrix.Kronecker
import Mathlib.Logic.Equiv.Defs
import Mathlib.MeasureTheory.Measure.MeasureSpace
import Mathlib.Order.Basic
import Mathlib.Order.Defs.PartialOrder
import Mathlib.Tactic.FieldSimp.Lemmas
import Mathlib.Tactic.Linarith.Lemmas
import Mathlib.Tactic.NormNum.Basic
import Mathlib.Tactic.NormNum.Ineq
import Mathlib.Tactic.NormNum.Inv
import Mathlib.Tactic.NormNum.Result
import Mathlib.Tactic.Positivity.Core
import Mathlib.Tactic.Ring.Basic
import Mathlib.Tactic.Ring.Common
import Mathlib.Topology.Defs.Filter

namespace QuantumParallelRepetition

open scoped ComplexOrder Matrix BigOperators InnerProductSpace
open Complex Matrix Finset

noncomputable section

open scoped BigOperators

variable {α : Type*} [Fintype α] [DecidableEq α]

omit [DecidableEq α] in
theorem fairPartitionWeight_pos : 0 < fairPartitionWeight α := by
  unfold fairPartitionWeight
  positivity

@[simp] theorem reversePartitionWeight_empty :
    reversePartitionWeight (α := α) ∅ = 0 := by
  simp [reversePartitionWeight]

theorem reversePartitionWeight_pos_iff
    (hα : 0 < Fintype.card α) (s : Finset α) :
    0 < reversePartitionWeight s ↔ s.Nonempty := by
  constructor
  · intro hs
    apply Finset.card_pos.mp
    by_contra hcard
    have hzero : s.card = 0 := Nat.eq_zero_of_not_pos hcard
    simp [reversePartitionWeight, hzero] at hs
  · intro hs
    unfold reversePartitionWeight
    have hcard : 0 < s.card := Finset.card_pos.mpr hs
    exact mul_pos fairPartitionWeight_pos
      (div_pos
        (mul_pos (by norm_num) (by exact_mod_cast hcard))
        (by exact_mod_cast hα))

end

noncomputable section

open scoped BigOperators

set_option backward.isDefEq.respectTransparency false
set_option maxHeartbeats 1800000
set_option maxRecDepth 2048

attribute [local instance] Classical.propDecidable

@[simp] theorem exactReverseAliceContextAt_actual
    {M : Type*} [Fintype M] [DecidableEq M]
    (seed : ExactForwardSeed M) :
    exactReverseAliceContextAt
        (exactReverseLeftSide seed) seed =
      exactReverseAliceContext seed := by
  simp [exactReverseAliceContextAt]

variable {X Y A B : Type*}
variable [Fintype X] [Fintype Y] [Fintype A] [Fintype B]

end

noncomputable section

open scoped BigOperators

set_option backward.isDefEq.respectTransparency false
set_option maxHeartbeats 1800000
set_option maxRecDepth 2048

open QuantumParallelRepetition.ClassicalInformation

attribute [local instance] Classical.propDecidable

theorem exactReverseAliceConditionalSeedWeight_cancel
    {M : Type*} [Fintype M] [DecidableEq M]
    (nonempty : 0 < Fintype.card M)
    (side : Finset M) (seed : ExactForwardSeed M) :
    reversePartitionWeight side *
        exactReverseAliceConditionalSeedWeight side seed =
      if exactReverseLeftSide seed = side
      then exactSeedWeight seed else 0 := by
  by_cases hs : exactReverseLeftSide seed = side
  · subst side
    have hpositive :
        0 < reversePartitionWeight
          (exactReverseLeftSide seed) :=
      (reversePartitionWeight_pos_iff nonempty
        (exactReverseLeftSide seed)).mpr
          ⟨seed.coordinate,
            exactReverseLeftSide_coordinate_mem seed⟩
    simp only [exactReverseAliceConditionalSeedWeight,
      ↓reduceIte]
    field_simp [hpositive.ne']
  · simp [exactReverseAliceConditionalSeedWeight, hs]

@[simp] theorem exactReverseAliceConditionalSeedLaw_weight
    {M : Type*} [Fintype M] [DecidableEq M]
    (nonempty : 0 < Fintype.card M)
    (side : Finset M) (hside : side.Nonempty)
    (seed : ExactForwardSeed M) :
    (exactReverseAliceConditionalSeedLaw
      nonempty side).weight seed =
      exactReverseAliceConditionalSeedWeight side seed := by
  simp [exactReverseAliceConditionalSeedLaw, hside]

end

noncomputable section

open scoped BigOperators

set_option backward.isDefEq.respectTransparency false
set_option maxHeartbeats 2200000
set_option maxRecDepth 2048

open QuantumParallelRepetition.Pinsker
open QuantumParallelRepetition.ClassicalInformation

attribute [local instance] Classical.propDecidable

variable {X Y A B : Type*}
variable [Fintype X] [Fintype Y] [Fintype A] [Fintype B]

theorem reweightedSeedWinEventMass
    {K : Type*} [Fintype K]
    (seedLaw : FiniteEventLaw K)
    (G : Game X Y A B) (n : ℕ) (S : Strategy (G.repeat n))
    (D : Finset (Fin n)) :
    (reweightedSeedPriorEventLaw seedLaw G n S).eventMass
        (reweightedSeedWinEvent (K := K) G n D) =
      repeatedPostselectionMass G n S D := by
  classical
  let event := FiniteEventLaw.winEvent (repeatedCoordinateWin G n) D
  let original := strategyEventLaw (G.repeat n) S
  change
    (∑ q ∈ (Finset.univ.filter
      (fun q : K × ExactOutcome X Y A B n => q.2 ∈ event)),
        seedLaw.weight q.1 * original.weight q.2) =
      ∑ outcome ∈ event, original.weight outcome
  simp only [Finset.sum_filter]
  rw [Fintype.sum_prod_type]
  have hinner (k : K) :
      (∑ outcome : ExactOutcome X Y A B n,
        if outcome ∈ event
        then seedLaw.weight k * original.weight outcome
        else 0) =
      seedLaw.weight k *
        (∑ outcome : ExactOutcome X Y A B n,
          if outcome ∈ event then original.weight outcome else 0) := by
    rw [Finset.mul_sum]
    apply Finset.sum_congr rfl
    intro outcome _
    split_ifs <;> simp
  simp_rw [hinner]
  rw [← Finset.sum_mul, seedLaw.weight_sum]
  simp

theorem reweightedSeedPosterior_eq_product
    {K : Type*} [Fintype K]
    (seedLaw : FiniteEventLaw K)
    (G : Game X Y A B) (n : ℕ) (S : Strategy (G.repeat n))
    (D : Finset (Fin n))
    (q : K × ExactOutcome X Y A B n) :
    reweightedSeedPosterior seedLaw G n S D q =
      seedLaw.weight q.1 *
        repeatedConditionedOutcomeLaw G n S D q.2 := by
  classical
  let event := FiniteEventLaw.winEvent (repeatedCoordinateWin G n) D
  have hmass := reweightedSeedWinEventMass
    seedLaw G n S D
  by_cases hq : q.2 ∈ event
  · have hlift :
        q ∈ reweightedSeedWinEvent (K := K) G n D := by
      simpa [reweightedSeedWinEvent] using hq
    unfold reweightedSeedPosterior
      repeatedConditionedOutcomeLaw
      conditionedEventDistribution
    rw [if_pos hlift, if_pos hq]
    change
      (seedLaw.weight q.1 *
        (strategyEventLaw (G.repeat n) S).weight q.2) /
          (reweightedSeedPriorEventLaw seedLaw G n S).eventMass
            (reweightedSeedWinEvent (K := K) G n D) =
        seedLaw.weight q.1 *
          ((strategyEventLaw (G.repeat n) S).weight q.2 /
            repeatedPostselectionMass G n S D)
    rw [hmass]
    ring
  · have hlift :
        q ∉ reweightedSeedWinEvent (K := K) G n D := by
      simpa [reweightedSeedWinEvent] using hq
    change q.2 ∉
      FiniteEventLaw.winEvent (repeatedCoordinateWin G n) D at hq
    simp [reweightedSeedPosterior,
      repeatedConditionedOutcomeLaw,
      conditionedEventDistribution, hlift, hq]

end

noncomputable section

open scoped BigOperators

set_option backward.isDefEq.respectTransparency false
set_option maxHeartbeats 2200000
set_option maxRecDepth 2048

open QuantumParallelRepetition.Pinsker
open QuantumParallelRepetition.ClassicalInformation

attribute [local instance] Classical.propDecidable

theorem exactReverseAliceConditionalSeedLaw_weight_cancel
    {M : Type*} [Fintype M] [DecidableEq M]
    (nonempty : 0 < Fintype.card M)
    (side : Finset M) (seed : ExactForwardSeed M) :
    reversePartitionWeight side *
        (exactReverseAliceConditionalSeedLaw
          nonempty side).weight seed =
      if exactReverseLeftSide seed = side
      then exactSeedWeight seed else 0 := by
  by_cases hside : side.Nonempty
  · rw [exactReverseAliceConditionalSeedLaw_weight
      nonempty side hside seed]
    exact exactReverseAliceConditionalSeedWeight_cancel
      nonempty side seed
  · have hempty : side = ∅ := Finset.not_nonempty_iff_eq_empty.mp hside
    subst side
    simp [exactReverseAliceConditionalSeedLaw,
      exactReverseLeftSide]

variable {X Y A B : Type*}
variable [Fintype X] [Fintype Y] [Fintype A] [Fintype B]

end

noncomputable section

open scoped BigOperators

set_option backward.isDefEq.respectTransparency false
set_option maxHeartbeats 2400000
set_option maxRecDepth 2048

open QuantumParallelRepetition.Pinsker
open QuantumParallelRepetition.ClassicalInformation

attribute [local instance] Classical.propDecidable

variable {X Y A B : Type*}
variable [Fintype X] [Fintype Y] [Fintype A] [Fintype B]

theorem exact_source_equation_twenty_three_of_actual_conditioned_reindex
    (G : Game X Y A B) (n : ℕ) (S : Strategy (G.repeat n))
    (D : Finset (Fin n))
    (remaining : 0 < (Finset.univ \ D).card)
    (positive : 0 < repeatedPostselectionMass G n S D)
    (base : ExactHistoryFlag X Y A B D)
    (defaultY : Y) (defaultX : X)
    (alice : ExactReverseAliceConditionalHistoryIdentification
      G n S D remaining base defaultY)
    (bob : ExactReverseBobConditionalHistoryIdentification
      G n S D remaining base defaultX) :
    ExactSourceClassicalInformationBound G n S D base := by
  apply
    exact_source_equation_twenty_three_of_conditioned_reverse_prefix
      G n S D remaining positive base
      (exactReverseAliceConditionalSeedLaw
        (exactRemainingCoordinate_card_pos D remaining))
      (exactReverseBobConditionalSeedLaw
        (exactRemainingCoordinate_card_pos D remaining))
      (ExactReverseAliceFixedInformation X Y D)
      (ExactReverseBobFixedInformation X Y D)
      (exactReverseAliceSourceProjection
        (X := X) (Y := Y) (A := A) (B := B) D)
      (exactReverseBobSourceProjection
        (X := X) (Y := Y) (A := A) (B := B) D)
      defaultY defaultX
  · exact alice
  · exact bob

end

noncomputable section

open scoped BigOperators

set_option backward.isDefEq.respectTransparency false
set_option maxHeartbeats 4200000
set_option maxRecDepth 2048

open QuantumParallelRepetition.Pinsker
open QuantumParallelRepetition.ClassicalInformation

attribute [local instance] Classical.propDecidable

theorem exactReverseAliceSideWeightedPrefix_sum
    {M : Type*} [Fintype M] [DecidableEq M]
    (nonempty : 0 < Fintype.card M)
    (score : (side : Finset M) →
      ExactForwardSeed M → Fin side.card → ℝ) :
    (∑ side : Finset M,
      reversePartitionWeight side *
        ((∑ marker : Fin side.card,
          ∑ seed : ExactForwardSeed M,
            (exactReverseAliceConditionalSeedLaw
              nonempty side).weight seed *
              score side seed marker) /
          (side.card : ℝ))) =
      ∑ seed : ExactForwardSeed M,
        exactSeedWeight seed *
          ((∑ marker : Fin (exactReverseLeftSide seed).card,
            score (exactReverseLeftSide seed) seed marker) /
            ((exactReverseLeftSide seed).card : ℝ)) := by
  classical
  calc
    (∑ side : Finset M,
      reversePartitionWeight side *
        ((∑ marker : Fin side.card,
          ∑ seed : ExactForwardSeed M,
            (exactReverseAliceConditionalSeedLaw
              nonempty side).weight seed *
              score side seed marker) /
          (side.card : ℝ))) =
      ∑ side : Finset M,
        ∑ seed : ExactForwardSeed M,
          (reversePartitionWeight side *
            (exactReverseAliceConditionalSeedLaw
              nonempty side).weight seed) *
            ((∑ marker : Fin side.card,
              score side seed marker) / (side.card : ℝ)) := by
        apply Finset.sum_congr rfl
        intro side _
        rw [Finset.sum_comm]
        simp_rw [← Finset.mul_sum]
        rw [Finset.sum_div, Finset.mul_sum]
        apply Finset.sum_congr rfl
        intro seed _
        ring
    _ = ∑ side : Finset M,
        ∑ seed : ExactForwardSeed M,
          (if exactReverseLeftSide seed = side
           then exactSeedWeight seed else 0) *
            ((∑ marker : Fin side.card,
              score side seed marker) / (side.card : ℝ)) := by
        simp_rw [exactReverseAliceConditionalSeedLaw_weight_cancel
          nonempty]
    _ = ∑ seed : ExactForwardSeed M,
        exactSeedWeight seed *
          ((∑ marker : Fin (exactReverseLeftSide seed).card,
            score (exactReverseLeftSide seed) seed marker) /
            ((exactReverseLeftSide seed).card : ℝ)) := by
        rw [Finset.sum_comm]
        apply Finset.sum_congr rfl
        intro seed _
        simp

end

noncomputable section

open scoped BigOperators

set_option backward.isDefEq.respectTransparency false
set_option maxHeartbeats 8000000
set_option maxRecDepth 3072

open QuantumParallelRepetition.Pinsker
open QuantumParallelRepetition.ClassicalInformation

attribute [local instance] Classical.propDecidable

variable {X Y A B : Type*}
variable [Fintype X] [Fintype Y] [Fintype A] [Fintype B]

theorem exactReverseAlicePrefixIncrement_eq_contextMarkerInformation
    (G : Game X Y A B) (n : ℕ) (S : Strategy (G.repeat n))
    (D : Finset (Fin n))
    (remaining : 0 < (Finset.univ \ D).card)
    (positive : 0 < repeatedPostselectionMass G n S D)
    (side : Finset (SourceRemainingCoordinate D))
    (default : Y) (marker : Fin side.card) :
    exactConditionedReverseAlicePrefixEntropyIncrement
        G n S D remaining side default marker =
      ∑ seed : ExactRemainingSeed D,
        (exactReverseAliceConditionalSeedLaw
          (exactRemainingCoordinate_card_pos
            D remaining) side).weight seed *
          exactReverseAliceContextMarkerInformation
            G n S D remaining default side
            (exactReverseAliceContextAt side seed) marker := by
  classical
  let law := exactReverseAliceConditionalSeedLaw
    (exactRemainingCoordinate_card_pos D remaining) side
  let projection := exactReverseAliceSourceProjection
    (X := X) (Y := Y) (A := A) (B := B) D side
  have actual :=
    reweightedSeedPrefixEntropyIncrement_eq_actual_atom_sum
      law G n S D positive projection default marker
  have actual_joint :
      reweightedSeedPrefixJoint
          law G n S D projection =
        exactConditionedReverseAliceNextJoint
          G n S D remaining side := by
    rfl
  have actual_prior :
      reweightedSeedPrefixPrior
          law G n S D projection =
        exactConditionedReverseAliceNextPrior
          G n S D remaining side := by
    rfl
  rw [actual_joint, actual_prior] at actual
  change
    reweightedSeedPrefixEntropyIncrement
        law G n S D projection default marker = _
  rw [actual, Fintype.sum_prod_type]
  apply Finset.sum_congr rfl
  intro seed _
  unfold exactReverseAliceContextMarkerInformation
  rw [Finset.mul_sum]
  apply Finset.sum_congr rfl
  intro outcome _
  rw [reweightedSeedPosterior_eq_product]
  have same_context :
      finitePrefixMask default marker.castSucc
          (((projection (seed, outcome)).1,
            repeatedConditionedAnswerFlag
              G n S D outcome),
            (projection (seed, outcome)).2) =
        exactReverseAliceMaskedOutcomeContext
          G n S D side default marker
          (exactReverseAliceContextAt side seed)
          outcome := by
    rfl
  rw [same_context]
  change
    (law.weight seed *
      repeatedConditionedOutcomeLaw G n S D outcome) * _ =
      law.weight seed *
        (repeatedConditionedOutcomeLaw G n S D outcome * _)
  ring

theorem exactReverseAlicePrefixInformation_eq_seedMarkerAverage
    (G : Game X Y A B) (n : ℕ) (S : Strategy (G.repeat n))
    (D : Finset (Fin n))
    (remaining : 0 < (Finset.univ \ D).card)
    (positive : 0 < repeatedPostselectionMass G n S D)
    (default : Y) :
    exactConditionedReverseAlicePrefixInformation
        G n S D remaining default =
      ∑ seed : ExactRemainingSeed D,
        exactSeedWeight seed *
          ((∑ marker : Fin (exactReverseLeftSide seed).card,
            exactReverseAliceContextMarkerInformation
              G n S D remaining default
              (exactReverseLeftSide seed)
              (exactReverseAliceContextAt
                (exactReverseLeftSide seed) seed)
              marker) /
            ((exactReverseLeftSide seed).card : ℝ)) := by
  classical
  calc
    exactConditionedReverseAlicePrefixInformation
        G n S D remaining default =
      ∑ side : Finset (SourceRemainingCoordinate D),
        reversePartitionWeight side *
          ((∑ marker : Fin side.card,
            ∑ seed : ExactRemainingSeed D,
              (exactReverseAliceConditionalSeedLaw
                (exactRemainingCoordinate_card_pos
                  D remaining) side).weight seed *
                exactReverseAliceContextMarkerInformation
                  G n S D remaining default side
                  (exactReverseAliceContextAt side seed)
                  marker) / (side.card : ℝ)) := by
      unfold exactConditionedReverseAlicePrefixInformation
      apply Finset.sum_congr rfl
      intro side _
      congr 1
      apply congrArg (fun total : ℝ => total / (side.card : ℝ))
      apply Finset.sum_congr rfl
      intro marker _
      exact exactReverseAlicePrefixIncrement_eq_contextMarkerInformation
        G n S D remaining positive side default marker
    _ = _ := by
      exact exactReverseAliceSideWeightedPrefix_sum
        (exactRemainingCoordinate_card_pos D remaining)
        (fun side seed marker =>
          exactReverseAliceContextMarkerInformation
            G n S D remaining default side
            (exactReverseAliceContextAt side seed) marker)

theorem exactReverseAlicePrefixInformation_eq_markedSeedAverage
    (G : Game X Y A B) (n : ℕ) (S : Strategy (G.repeat n))
    (D : Finset (Fin n))
    (remaining : 0 < (Finset.univ \ D).card)
    (positive : 0 < repeatedPostselectionMass G n S D)
    (default : Y) :
    exactConditionedReverseAlicePrefixInformation
        G n S D remaining default =
      ∑ seed : ExactRemainingSeed D,
        exactSeedWeight seed *
          exactReverseAliceContextMarkerInformation
            G n S D remaining default
            (exactReverseLeftSide seed)
            (exactReverseAliceContext seed)
            ((exactReverseAliceContext seed).sideRank
              ⟨seed.coordinate,
                exactReverseLeftSide_coordinate_mem seed⟩) := by
  classical
  calc
    exactConditionedReverseAlicePrefixInformation
        G n S D remaining default =
      ∑ seed : ExactRemainingSeed D,
        exactSeedWeight seed *
          ((∑ marker : Fin (exactReverseLeftSide seed).card,
            exactReverseAliceContextMarkerInformation
              G n S D remaining default
              (exactReverseLeftSide seed)
              (exactReverseAliceContextAt
                (exactReverseLeftSide seed) seed)
              marker) /
            ((exactReverseLeftSide seed).card : ℝ)) :=
      exactReverseAlicePrefixInformation_eq_seedMarkerAverage
        G n S D remaining positive default
    _ = ∑ seed : ExactRemainingSeed D,
        exactSeedWeight seed *
          ((∑ marker : Fin (exactReverseLeftSide seed).card,
            exactReverseAliceContextMarkerInformation
              G n S D remaining default
              (exactReverseLeftSide seed)
              (exactReverseAliceContext seed)
              marker) /
            ((exactReverseLeftSide seed).card : ℝ)) := by
        simp_rw [exactReverseAliceContextAt_actual]
    _ = _ :=
      exactReverseAliceUniformMarkedSeed_sum
        (exactRemainingCoordinate_card_pos D remaining)
        (fun side context marker =>
          exactReverseAliceContextMarkerInformation
            G n S D remaining default side context marker)

theorem exactAliceSourceConditionalInformation_eq_seedBornAverage
    (G : Game X Y A B) (n : ℕ) (S : Strategy (G.repeat n))
    (D : Finset (Fin n))
    (remaining : 0 < (Finset.univ \ D).card)
    (positive : 0 < repeatedPostselectionMass G n S D)
    (base : ExactHistoryFlag X Y A B D) :
    exactAliceSourceConditionalInformation G n S D base =
      ∑ seed : ExactRemainingSeed D,
        exactSeedWeight seed *
          exactAliceSourceSeedBornInformation G n S D seed := by
  classical
  rw [exactAliceSourceConditionalInformation_eq_joint_atom_sum
    G n S D remaining positive base, Fintype.sum_prod_type]
  apply Finset.sum_congr rfl
  intro seed _
  unfold exactAliceSourceSeedBornInformation
  rw [Finset.mul_sum]
  apply Finset.sum_congr rfl
  intro outcome _
  unfold exactPostselectedJointLaw
  ring

theorem exactReverseAliceConditionalHistoryIdentification_proved
    (G : Game X Y A B) (n : ℕ) (S : Strategy (G.repeat n))
    (D : Finset (Fin n))
    (remaining : 0 < (Finset.univ \ D).card)
    (positive : 0 < repeatedPostselectionMass G n S D)
    (base : ExactHistoryFlag X Y A B D)
    (default : Y) :
    ExactReverseAliceConditionalHistoryIdentification
      G n S D remaining base default := by
  unfold ExactReverseAliceConditionalHistoryIdentification
  rw [exactAliceSourceConditionalInformation_eq_seedBornAverage
    G n S D remaining positive base,
    exactReverseAlicePrefixInformation_eq_markedSeedAverage
      G n S D remaining positive default]
  apply Finset.sum_congr rfl
  intro seed _
  congr 1
  exact
    (exactReverseAliceMarkedContextInformation_eq_source
      G n S D remaining positive default seed).symm

end

noncomputable section

open scoped BigOperators

set_option backward.isDefEq.respectTransparency false
set_option maxHeartbeats 2400000
set_option maxRecDepth 2048

open QuantumParallelRepetition.Pinsker
open QuantumParallelRepetition.ClassicalInformation

attribute [local instance] Classical.propDecidable

variable {X Y A B : Type*}
variable [Fintype X] [Fintype Y] [Fintype A] [Fintype B]

theorem exact_source_equation_twenty_three_unconditional
    (G : Game X Y A B) (n : ℕ) (S : Strategy (G.repeat n))
    (D : Finset (Fin n))
    (remaining : 0 < (Finset.univ \ D).card)
    (positive : 0 < repeatedPostselectionMass G n S D)
    (base : ExactHistoryFlag X Y A B D)
    (defaultY : Y) (defaultX : X) :
    ExactSourceClassicalInformationBound G n S D base := by
  exact exact_source_equation_twenty_three_of_actual_conditioned_reindex
    G n S D remaining positive base defaultY defaultX
    (exactReverseAliceConditionalHistoryIdentification_proved
      G n S D remaining positive base defaultY)
    (exactReverseBobConditionalHistoryIdentification_proved
      G n S D remaining positive base defaultX)

end

noncomputable section

open scoped BigOperators

set_option backward.isDefEq.respectTransparency false
set_option maxHeartbeats 1800000
set_option maxRecDepth 2048

open QuantumParallelRepetition.Pinsker

attribute [local instance] Classical.propDecidable

variable {X Y A B : Type}
variable [Fintype X] [Fintype Y] [Fintype A] [Fintype B]

theorem gameQuestionX_nonempty
    (G : Game X Y A B) : Nonempty X := by
  classical
  by_contra empty
  have zero : (∑ x : X, ∑ y : Y, G.questionWeight x y) = 0 := by
    apply Finset.sum_eq_zero
    intro x _
    exact (empty ⟨x⟩).elim
  linarith [G.weight_normalized]

theorem gameQuestionY_nonempty
    (G : Game X Y A B) : Nonempty Y := by
  classical
  by_contra empty
  have zero : (∑ x : X, ∑ y : Y, G.questionWeight x y) = 0 := by
    apply Finset.sum_eq_zero
    intro x _
    apply Finset.sum_eq_zero
    intro y _
    exact (empty ⟨y⟩).elim
  linarith [G.weight_normalized]

theorem exact_source_equation_twenty_three
    (G : Game X Y A B) (n : ℕ) (S : Strategy (G.repeat n))
    (D : Finset (Fin n))
    (remaining : 0 < (Finset.univ \ D).card)
    (positive : 0 < repeatedPostselectionMass G n S D)
    (base : ExactHistoryFlag X Y A B D) :
    ExactSourceClassicalInformationBound G n S D base := by
  classical
  exact exact_source_equation_twenty_three_unconditional
    G n S D remaining positive base
    (Classical.choice (gameQuestionY_nonempty G))
    (Classical.choice (gameQuestionX_nonempty G))

end

end QuantumParallelRepetition


open QuantumParallelRepetition
open scoped ComplexOrder Matrix BigOperators InnerProductSpace
open Complex Matrix Finset
open scoped BigOperators
set_option backward.isDefEq.respectTransparency false
set_option maxHeartbeats 1800000
set_option maxRecDepth 2048
open QuantumParallelRepetition.Pinsker
attribute [local instance] Classical.propDecidable
variable {X Y A B : Type}
variable [Fintype X] [Fintype Y] [Fintype A] [Fintype B]

theorem
    solution
    (G : Game X Y A B) (n : ℕ) (S : Strategy (G.repeat n))
    (D : Finset (Fin n))
    (remaining : 0 < (Finset.univ \ D).card)
    (positive : 0 < repeatedPostselectionMass G n S D)
    (base : ExactHistoryFlag X Y A B D)
    {gamma : ℝ} (gamma_positive : 0 < gamma) :
    ExactSourceSupportPreservingClassicalSampler
      G n S D base (exactSourcePinskerRate G n S D) gamma := by
  exact
    exact_source_equation_twenty_seven_support_preserving_of_information
      G n S D remaining positive base
      (exact_source_equation_twenty_three
        G n S D remaining positive base)
      gamma_positive
