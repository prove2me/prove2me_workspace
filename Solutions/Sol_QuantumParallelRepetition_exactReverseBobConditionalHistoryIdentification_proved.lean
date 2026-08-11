import Definitions.Def_quantum_parallel_repetition_game
import Definitions.Def_qpr_core_24
import Theorems.Thm_QuantumParallelRepetition_exactRemainingCoordinate_card_pos
import Theorems.Thm_QuantumParallelRepetition_exactReverseRightSide_coordinate_mem
import Theorems.Thm_QuantumParallelRepetition_exactReverseBobConditionalSeedWeight_nonneg
import Theorems.Thm_QuantumParallelRepetition_exactReverseBobConditionalSeedWeight_sum
import Theorems.Thm_QuantumParallelRepetition_exactReverseBobUniformMarkedSeed_sum
import Theorems.Thm_QuantumParallelRepetition_reweightedSeedPrefixEntropyIncrement_eq_actual_atom_sum
import Theorems.Thm_QuantumParallelRepetition_exactBobSourceConditionalInformation_eq_joint_atom_sum
import Theorems.Thm_QuantumParallelRepetition_exactReverseBobActualMarkedEntropy_eq_source
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

@[simp] theorem exactReverseBobContextAt_actual
    {M : Type*} [Fintype M] [DecidableEq M]
    (seed : ExactForwardSeed M) :
    exactReverseBobContextAt
        (exactReverseRightSide seed) seed =
      exactReverseBobContext seed := by
  simp [exactReverseBobContextAt]

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

theorem exactReverseBobConditionalSeedWeight_cancel
    {M : Type*} [Fintype M] [DecidableEq M]
    (nonempty : 0 < Fintype.card M)
    (side : Finset M) (seed : ExactForwardSeed M) :
    reversePartitionWeight side *
        exactReverseBobConditionalSeedWeight side seed =
      if exactReverseRightSide seed = side
      then exactSeedWeight seed else 0 := by
  by_cases hs : exactReverseRightSide seed = side
  · subst side
    have hpositive :
        0 < reversePartitionWeight
          (exactReverseRightSide seed) :=
      (reversePartitionWeight_pos_iff nonempty
        (exactReverseRightSide seed)).mpr
          ⟨seed.coordinate,
            exactReverseRightSide_coordinate_mem seed⟩
    simp only [exactReverseBobConditionalSeedWeight,
      ↓reduceIte]
    field_simp [hpositive.ne']
  · simp [exactReverseBobConditionalSeedWeight, hs]

@[simp] theorem exactReverseBobConditionalSeedLaw_weight
    {M : Type*} [Fintype M] [DecidableEq M]
    (nonempty : 0 < Fintype.card M)
    (side : Finset M) (hside : side.Nonempty)
    (seed : ExactForwardSeed M) :
    (exactReverseBobConditionalSeedLaw
      nonempty side).weight seed =
      exactReverseBobConditionalSeedWeight side seed := by
  simp [exactReverseBobConditionalSeedLaw, hside]

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

theorem exactReverseBobConditionalSeedLaw_weight_cancel
    {M : Type*} [Fintype M] [DecidableEq M]
    (nonempty : 0 < Fintype.card M)
    (side : Finset M) (seed : ExactForwardSeed M) :
    reversePartitionWeight side *
        (exactReverseBobConditionalSeedLaw
          nonempty side).weight seed =
      if exactReverseRightSide seed = side
      then exactSeedWeight seed else 0 := by
  by_cases hside : side.Nonempty
  · rw [exactReverseBobConditionalSeedLaw_weight
      nonempty side hside seed]
    exact exactReverseBobConditionalSeedWeight_cancel
      nonempty side seed
  · have hempty : side = ∅ := Finset.not_nonempty_iff_eq_empty.mp hside
    subst side
    simp [exactReverseBobConditionalSeedLaw,
      exactReverseRightSide]

variable {X Y A B : Type*}
variable [Fintype X] [Fintype Y] [Fintype A] [Fintype B]

end

noncomputable section

open scoped BigOperators

set_option backward.isDefEq.respectTransparency false
set_option maxHeartbeats 4200000
set_option maxRecDepth 2048

open QuantumParallelRepetition.Pinsker
open QuantumParallelRepetition.ClassicalInformation

attribute [local instance] Classical.propDecidable

theorem exactReverseBobSideWeightedPrefix_sum
    {M : Type*} [Fintype M] [DecidableEq M]
    (nonempty : 0 < Fintype.card M)
    (score : (side : Finset M) →
      ExactForwardSeed M → Fin side.card → ℝ) :
    (∑ side : Finset M,
      reversePartitionWeight side *
        ((∑ marker : Fin side.card,
          ∑ seed : ExactForwardSeed M,
            (exactReverseBobConditionalSeedLaw
              nonempty side).weight seed *
              score side seed marker) /
          (side.card : ℝ))) =
      ∑ seed : ExactForwardSeed M,
        exactSeedWeight seed *
          ((∑ marker : Fin (exactReverseRightSide seed).card,
            score (exactReverseRightSide seed) seed marker) /
            ((exactReverseRightSide seed).card : ℝ)) := by
  classical
  calc
    (∑ side : Finset M,
      reversePartitionWeight side *
        ((∑ marker : Fin side.card,
          ∑ seed : ExactForwardSeed M,
            (exactReverseBobConditionalSeedLaw
              nonempty side).weight seed *
              score side seed marker) /
          (side.card : ℝ))) =
      ∑ side : Finset M,
        ∑ seed : ExactForwardSeed M,
          (reversePartitionWeight side *
            (exactReverseBobConditionalSeedLaw
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
          (if exactReverseRightSide seed = side
           then exactSeedWeight seed else 0) *
            ((∑ marker : Fin side.card,
              score side seed marker) / (side.card : ℝ)) := by
        simp_rw [exactReverseBobConditionalSeedLaw_weight_cancel
          nonempty]
    _ = ∑ seed : ExactForwardSeed M,
        exactSeedWeight seed *
          ((∑ marker : Fin (exactReverseRightSide seed).card,
            score (exactReverseRightSide seed) seed marker) /
            ((exactReverseRightSide seed).card : ℝ)) := by
        rw [Finset.sum_comm]
        apply Finset.sum_congr rfl
        intro seed _
        simp

end

noncomputable section

open scoped BigOperators

set_option backward.isDefEq.respectTransparency false
set_option maxHeartbeats 8000000
set_option maxRecDepth 2048

open QuantumParallelRepetition.Pinsker
open QuantumParallelRepetition.ClassicalInformation

attribute [local instance] Classical.propDecidable

variable {X Y A B : Type*}
variable [Fintype X] [Fintype Y] [Fintype A] [Fintype B]

theorem exactReverseBobActualMarkedEntropyScore_eq_context
    (G : Game X Y A B) (n : ℕ) (S : Strategy (G.repeat n))
    (D : Finset (Fin n))
    (remaining : 0 < (Finset.univ \ D).card)
    (default : X)
    (side : Finset (SourceRemainingCoordinate D))
    (seed : ExactRemainingSeed D)
    (marker : Fin side.card)
    (outcome : ExactOutcome X Y A B n) :
    exactReverseBobActualMarkedEntropyScore
        G n S D remaining default side seed marker outcome =
      exactReverseBobContextMarkedEntropyScore
        G n S D remaining default side
        (exactReverseBobContextAt side seed)
        marker outcome := by
  rfl

theorem exactConditionedReverseBobPrefixEntropyIncrement_eq_markedOutcomeScore
    (G : Game X Y A B) (n : ℕ) (S : Strategy (G.repeat n))
    (D : Finset (Fin n))
    (remaining : 0 < (Finset.univ \ D).card)
    (positive : 0 < repeatedPostselectionMass G n S D)
    (side : Finset (SourceRemainingCoordinate D))
    (default : X)
    (marker : Fin side.card) :
    exactConditionedReverseBobPrefixEntropyIncrement
        G n S D remaining side default marker =
      ∑ seed : ExactRemainingSeed D,
        (exactReverseBobConditionalSeedLaw
          (exactRemainingCoordinate_card_pos
            D remaining) side).weight seed *
          ∑ outcome : ExactOutcome X Y A B n,
            repeatedConditionedOutcomeLaw G n S D outcome *
              exactReverseBobActualMarkedEntropyScore
                G n S D remaining default side seed marker outcome := by
  classical
  let law := exactReverseBobConditionalSeedLaw
    (exactRemainingCoordinate_card_pos D remaining) side
  let projection := exactReverseBobSourceProjection
    (X := X) (Y := Y) (A := A) (B := B) D side
  change
    reweightedSeedPrefixEntropyIncrement
        law G n S D projection default marker = _
  rw [reweightedSeedPrefixEntropyIncrement_eq_actual_atom_sum
    law G n S D positive projection default marker]
  rw [Fintype.sum_prod_type]
  apply Finset.sum_congr rfl
  intro seed _
  rw [Finset.mul_sum]
  apply Finset.sum_congr rfl
  intro outcome _
  rw [reweightedSeedPosterior_eq_product]
  change
    (law.weight seed *
      repeatedConditionedOutcomeLaw G n S D outcome) *
        exactReverseBobActualMarkedEntropyScore
          G n S D remaining default side seed marker outcome =
      law.weight seed *
        (repeatedConditionedOutcomeLaw G n S D outcome *
          exactReverseBobActualMarkedEntropyScore
            G n S D remaining default side seed marker outcome)
  ring

theorem exactConditionedReverseBobPrefixInformation_eq_sourceMarkerAverage
    (G : Game X Y A B) (n : ℕ) (S : Strategy (G.repeat n))
    (D : Finset (Fin n))
    (remaining : 0 < (Finset.univ \ D).card)
    (positive : 0 < repeatedPostselectionMass G n S D)
    (default : X) :
    exactConditionedReverseBobPrefixInformation
        G n S D remaining default =
      ∑ seed : ExactRemainingSeed D,
        exactSeedWeight seed *
          ((∑ marker : Fin (exactReverseRightSide seed).card,
            ∑ outcome : ExactOutcome X Y A B n,
              repeatedConditionedOutcomeLaw G n S D outcome *
                exactReverseBobActualMarkedEntropyScore
                  G n S D remaining default
                  (exactReverseRightSide seed)
                  seed marker outcome) /
            ((exactReverseRightSide seed).card : ℝ)) := by
  classical
  unfold exactConditionedReverseBobPrefixInformation
  simp_rw [
    exactConditionedReverseBobPrefixEntropyIncrement_eq_markedOutcomeScore
      G n S D remaining positive]
  exact exactReverseBobSideWeightedPrefix_sum
    (exactRemainingCoordinate_card_pos D remaining)
    (fun side seed marker =>
      ∑ outcome : ExactOutcome X Y A B n,
        repeatedConditionedOutcomeLaw G n S D outcome *
          exactReverseBobActualMarkedEntropyScore
            G n S D remaining default side seed marker outcome)

theorem exactConditionedReverseBobPrefixInformation_eq_sourceMarkedOutcomeScore
    (G : Game X Y A B) (n : ℕ) (S : Strategy (G.repeat n))
    (D : Finset (Fin n))
    (remaining : 0 < (Finset.univ \ D).card)
    (positive : 0 < repeatedPostselectionMass G n S D)
    (default : X) :
    exactConditionedReverseBobPrefixInformation
        G n S D remaining default =
      ∑ seed : ExactRemainingSeed D,
        exactSeedWeight seed *
          ∑ outcome : ExactOutcome X Y A B n,
            repeatedConditionedOutcomeLaw G n S D outcome *
              exactReverseBobContextMarkedEntropyScore
                G n S D remaining default
                (exactReverseRightSide seed)
                (exactReverseBobContext seed)
                ((exactReverseBobContext seed).sideRank
                  ⟨seed.coordinate,
                    exactReverseRightSide_coordinate_mem seed⟩)
                outcome := by
  calc
    exactConditionedReverseBobPrefixInformation
        G n S D remaining default =
      ∑ seed : ExactRemainingSeed D,
        exactSeedWeight seed *
          ((∑ marker : Fin (exactReverseRightSide seed).card,
            ∑ outcome : ExactOutcome X Y A B n,
              repeatedConditionedOutcomeLaw G n S D outcome *
                exactReverseBobActualMarkedEntropyScore
                  G n S D remaining default
                  (exactReverseRightSide seed)
                  seed marker outcome) /
            ((exactReverseRightSide seed).card : ℝ)) :=
      exactConditionedReverseBobPrefixInformation_eq_sourceMarkerAverage
        G n S D remaining positive default
    _ = _ := by
      simpa only [
        exactReverseBobActualMarkedEntropyScore_eq_context,
        exactReverseBobContextAt_actual] using
        (exactReverseBobUniformMarkedSeed_sum
          (exactRemainingCoordinate_card_pos D remaining)
          (fun side context marker =>
            ∑ outcome : ExactOutcome X Y A B n,
              repeatedConditionedOutcomeLaw G n S D outcome *
                exactReverseBobContextMarkedEntropyScore
                  G n S D remaining default side context marker outcome))

end

end QuantumParallelRepetition


open QuantumParallelRepetition
open scoped ComplexOrder Matrix BigOperators InnerProductSpace
open Complex Matrix Finset
open scoped BigOperators
set_option backward.isDefEq.respectTransparency false
set_option maxHeartbeats 8000000
set_option maxRecDepth 2048
open QuantumParallelRepetition.Pinsker
open QuantumParallelRepetition.ClassicalInformation
attribute [local instance] Classical.propDecidable
variable {X Y A B : Type*}
variable [Fintype X] [Fintype Y] [Fintype A] [Fintype B]

theorem solution
    (G : Game X Y A B) (n : ℕ) (S : Strategy (G.repeat n))
    (D : Finset (Fin n))
    (remaining : 0 < (Finset.univ \ D).card)
    (positive : 0 < repeatedPostselectionMass G n S D)
    (base : ExactHistoryFlag X Y A B D)
    (default : X) :
    ExactReverseBobConditionalHistoryIdentification
      G n S D remaining base default := by
  classical
  unfold ExactReverseBobConditionalHistoryIdentification
  rw [exactBobSourceConditionalInformation_eq_joint_atom_sum
    G n S D remaining positive base]
  rw [exactConditionedReverseBobPrefixInformation_eq_sourceMarkedOutcomeScore
    G n S D remaining positive default]
  rw [Fintype.sum_prod_type]
  apply Finset.sum_congr rfl
  intro seed _
  rw [Finset.mul_sum]
  apply Finset.sum_congr rfl
  intro outcome _
  by_cases zero :
      repeatedConditionedOutcomeLaw
        G n S D outcome = 0
  · simp [exactPostselectedJointLaw, zero]
  · rw [exactReverseBobActualMarkedEntropy_eq_source
      G n S D remaining positive default seed outcome zero]
    unfold exactPostselectedJointLaw
    ring
