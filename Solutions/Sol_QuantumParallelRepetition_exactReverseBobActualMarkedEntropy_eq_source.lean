import Definitions.Def_quantum_parallel_repetition_game
import Definitions.Def_qpr_core_24
import Theorems.Thm_QuantumParallelRepetition_exactRight_coordinate_not_mem
import Theorems.Thm_QuantumParallelRepetition_exactRemainingCoordinate_card_pos
import Theorems.Thm_QuantumParallelRepetition_exactReverseRightSide_coordinate_mem
import Theorems.Thm_QuantumParallelRepetition_exactReverseRightSide_card
import Theorems.Thm_QuantumParallelRepetition_exactInsertedPrefixBefore_marker_eq
import Theorems.Thm_QuantumParallelRepetition_exactReverseRightSide_complement
import Theorems.Thm_QuantumParallelRepetition_exactReverseBobConditionalSeedWeight_nonneg
import Theorems.Thm_QuantumParallelRepetition_exactReverseBobConditionalSeedWeight_sum
import Theorems.Thm_QuantumParallelRepetition_reweightedSeedPrefixPriorMarginal_ne_zero_of_positive_atom
import Theorems.Thm_QuantumParallelRepetition_exactConditionedReverseBobNextPrior_marked_joint_factor
import Theorems.Thm_QuantumParallelRepetition_exactConditionedReverseBobNextJoint_marked_conditional_eq_fixedOutcome
import Mathlib.Algebra.BigOperators.Group.Finset.Basic
import Mathlib.Algebra.BigOperators.Group.Finset.Defs
import Mathlib.Algebra.BigOperators.Group.Finset.Piecewise
import Mathlib.Algebra.BigOperators.Ring.Finset
import Mathlib.Algebra.CharP.Defs
import Mathlib.Algebra.EuclideanDomain.Basic
import Mathlib.Algebra.EuclideanDomain.Field
import Mathlib.Algebra.Field.Defs
import Mathlib.Algebra.Group.Basic
import Mathlib.Algebra.Group.Defs
import Mathlib.Algebra.GroupWithZero.Basic
import Mathlib.Algebra.GroupWithZero.Defs
import Mathlib.Algebra.GroupWithZero.Units.Basic
import Mathlib.Algebra.Notation.Defs
import Mathlib.Algebra.Order.Floor.Defs
import Mathlib.Algebra.Order.GroupWithZero.Unbundled.Basic
import Mathlib.Algebra.Order.Monoid.Defs
import Mathlib.Algebra.Order.Monoid.Unbundled.Basic
import Mathlib.Algebra.Order.Monoid.Unbundled.Defs
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
import Mathlib.Data.Fin.Basic
import Mathlib.Data.Fin.SuccPred
import Mathlib.Data.Finset.BooleanAlgebra
import Mathlib.Data.Finset.Card
import Mathlib.Data.Finset.Defs
import Mathlib.Data.Finset.Empty
import Mathlib.Data.Finset.Filter
import Mathlib.Data.Finset.Image
import Mathlib.Data.Finset.Insert
import Mathlib.Data.Finset.Lattice.Basic
import Mathlib.Data.Finset.SDiff
import Mathlib.Data.Fintype.Basic
import Mathlib.Data.Fintype.BigOperators
import Mathlib.Data.Fintype.Card
import Mathlib.Data.Fintype.Defs
import Mathlib.Data.Fintype.Perm
import Mathlib.Data.Fintype.Pi
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
import Mathlib.Data.Real.Archimedean
import Mathlib.Data.Real.Basic
import Mathlib.Data.SetLike.Basic
import Mathlib.LinearAlgebra.Matrix.Kronecker
import Mathlib.Logic.Equiv.Defs
import Mathlib.Logic.Equiv.Fin.Basic
import Mathlib.Logic.Equiv.Option
import Mathlib.Logic.IsEmpty.Defs
import Mathlib.MeasureTheory.Measure.MeasureSpace
import Mathlib.Order.Basic
import Mathlib.Order.Defs.PartialOrder
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
set_option maxHeartbeats 1600000
set_option maxRecDepth 2048

open QuantumParallelRepetition.Pinsker
open QuantumParallelRepetition.ClassicalInformation
open QuantumParallelRepetition.ClassicalSampling

attribute [local instance] Classical.propDecidable

variable {X Y A B : Type*}
variable [Fintype X] [Fintype Y] [Fintype A] [Fintype B]

theorem conditionedEventDistribution_nonneg
    {Ω : Type*} [Fintype Ω]
    (law : FiniteEventLaw Ω) (event : Finset Ω)
    (positive : 0 < law.eventMass event) (ω : Ω) :
    0 ≤ conditionedEventDistribution law event ω := by
  unfold conditionedEventDistribution
  split_ifs
  · exact div_nonneg (law.weight_nonneg ω) positive.le
  · exact le_rfl

end

noncomputable section

open scoped BigOperators

set_option backward.isDefEq.respectTransparency false
set_option maxHeartbeats 1200000
set_option maxRecDepth 2048

open QuantumParallelRepetition.Pinsker
open QuantumParallelRepetition.ClassicalInformation

attribute [local instance] Classical.propDecidable

variable {X Y A B : Type*}
variable [Fintype X] [Fintype Y] [Fintype A] [Fintype B]

theorem exactGroupedMass_decidableEq_irrel
    {Ω κ : Type*} [Fintype Ω]
    (first second : DecidableEq κ)
    (projection : Ω → κ) (mass : Ω → ℝ) :
    @groupedMass Ω _ κ first projection mass =
      @groupedMass Ω _ κ second projection mass := by
  have h : first = second := Subsingleton.elim first second
  subst second
  rfl

end

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

@[simp] theorem exactReverseBobContextAt_actual
    {M : Type*} [Fintype M] [DecidableEq M]
    (seed : ExactForwardSeed M) :
    exactReverseBobContextAt
        (exactReverseRightSide seed) seed =
      exactReverseBobContext seed := by
  simp [exactReverseBobContextAt]

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

open scoped BigOperators

set_option backward.isDefEq.respectTransparency false
set_option maxHeartbeats 1800000
set_option maxRecDepth 2048

open QuantumParallelRepetition.ClassicalInformation

attribute [local instance] Classical.propDecidable

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
set_option maxHeartbeats 2400000
set_option maxRecDepth 2048

open QuantumParallelRepetition.Pinsker
open QuantumParallelRepetition.ClassicalInformation

attribute [local instance] Classical.propDecidable

variable {X Y A B : Type*}
variable [Fintype X] [Fintype Y] [Fintype A] [Fintype B]

theorem exactReverseBobMaskedProjection_eq_of_history
    {n : ℕ} (D : Finset (Fin n))
    (default : X)
    (q q' : ExactJointOutcome X Y A B D)
    (same_history :
      exactHistoryCode D q =
        exactHistoryCode D q')
    (same_question :
      q.2.2.1 q.1.coordinate.val =
        q'.2.2.1 q'.1.coordinate.val) :
    finitePrefixMask
      default
      ((exactReverseBobContext q.1).sideRank
        ⟨q.1.coordinate,
          exactReverseRightSide_coordinate_mem q.1⟩).castSucc
      (exactReverseBobSourceProjection
        (X := X) (Y := Y) (A := A) (B := B)
        D (exactReverseRightSide q.1) q) =
    finitePrefixMask
      default
      ((exactReverseBobContext q.1).sideRank
        ⟨q.1.coordinate,
          exactReverseRightSide_coordinate_mem q.1⟩).castSucc
      (exactReverseBobSourceProjection
        (X := X) (Y := Y) (A := A) (B := B)
        D (exactReverseRightSide q.1) q') := by
  rcases q with ⟨seed, outcome⟩
  rcases q' with ⟨seed', outcome'⟩
  have hseed : seed = seed' :=
    congrArg (fun r : ExactHistoryFlag X Y A B D => r.seed)
      same_history
  subst seed'
  have htuple := congrArg
    (exactHistoryFlagEquiv
      (X := X) (Y := Y) (A := A) (B := B) D)
    same_history
  change
    (⟨seed,
       (exactRevealCode D seed
         (outcome.1, outcome.2.1),
        (fun j : {j : Fin n // j ∈ D} => outcome.2.2.1 j.val),
        (fun j : {j : Fin n // j ∈ D} => outcome.2.2.2 j.val))⟩ :
      ExactHistoryFlagTuple X Y A B D) =
    (⟨seed,
       (exactRevealCode D seed
         (outcome'.1, outcome'.2.1),
        (fun j : {j : Fin n // j ∈ D} => outcome'.2.2.1 j.val),
        (fun j : {j : Fin n // j ∈ D} => outcome'.2.2.2 j.val))⟩ :
      ExactHistoryFlagTuple X Y A B D) at htuple
  have hpair := eq_of_heq (Sigma.mk.inj htuple).2
  have hreveal :
      exactRevealCode D seed
          (outcome.1, outcome.2.1) =
        exactRevealCode D seed
          (outcome'.1, outcome'.2.1) :=
    congrArg Prod.fst hpair
  have hac := congrArg
    (fun r : ExactRevealHistory X Y D seed =>
      r.aliceConditioned) hreveal
  have hbc := congrArg
    (fun r : ExactRevealHistory X Y D seed =>
      r.bobConditioned) hreveal
  have hal := congrArg
    (fun r : ExactRevealHistory X Y D seed =>
      r.aliceLeft) hreveal
  have hbr := congrArg
    (fun r : ExactRevealHistory X Y D seed =>
      r.bobRight) hreveal
  have hbl := congrArg
    (fun r : ExactRevealHistory X Y D seed =>
      r.bobLeftPrefix) hreveal
  have har := congrArg
    (fun r : ExactRevealHistory X Y D seed =>
      r.aliceRightPrefix) hreveal
  let side := exactReverseRightSide seed
  let context := exactReverseBobContext seed
  let marker : Fin side.card :=
    context.sideRank
      ⟨seed.coordinate,
        exactReverseRightSide_coordinate_mem seed⟩
  have hmarker : marker.val = seed.rightCut.val := by
    exact exactReverseBobContext_marked_rank seed
  have hfixed :
      (exactReverseBobSourceProjection
        (X := X) (Y := Y) (A := A) (B := B)
        D side (seed, outcome)).1 =
      (exactReverseBobSourceProjection
        (X := X) (Y := Y) (A := A) (B := B)
        D side (seed, outcome')).1 := by
    simp only [side, exactReverseBobSourceProjection,
      exactReverseBobContextAt_actual]
    apply Sigma.ext
    · rfl
    · apply heq_of_eq
      apply Prod.ext
      · exact hac
      apply Prod.ext
      · exact hbc
      apply Prod.ext
      · funext j
        by_cases hj : j.val = seed.coordinate
        · have hval : j.val.val = seed.coordinate.val :=
            congrArg Subtype.val hj
          simpa [hval] using same_question
        · have hright :
              j.val ∈ exactRight
                seed.coordinate seed.partition := by
            have hmem :
                j.val ∈ insert seed.coordinate
                  (exactRight seed.coordinate seed.partition) :=
              j.property
            exact (Finset.mem_insert.mp hmem).resolve_left hj
          exact congrFun hbr ⟨j.val, hright⟩
      apply Prod.ext
      · funext j
        have hj :
            j.val ∈ exactLeft
              seed.coordinate seed.partition := by
          simpa [exactReverseBobContextAt,
            exactReverseBobContext] using j.property
        exact congrFun hal ⟨j.val, hj⟩
      funext j
      have hj : j.val ∈ exactLeftPrefix seed := by
        have hprefix :
            exactReverseContextOtherPrefix
              (exactReverseBobContextAt
                (exactReverseRightSide seed) seed) =
              exactLeftPrefix seed := by
          rw [exactReverseBobContextAt_actual,
            exactReverseBobContext_otherPrefix]
        exact (Finset.ext_iff.mp hprefix j.val).mp j.property
      exact congrFun hbl ⟨j.val, hj⟩
  apply Prod.ext
  · exact hfixed
  · funext k
    by_cases hk : k.val < marker.val
    · have hbefore :
          (context.sideRank.symm k).val ∈
            exactRightPrefix seed := by
        rw [← exactReverseBobContext_prefix_before_marked seed]
        apply (exactOrderedSidePrefix_mem_iff
          side context.sideRank marker.castSucc
          (context.sideRank.symm k).val).mpr
        refine ⟨(context.sideRank.symm k).property, ?_⟩
        change
          (context.sideRank (context.sideRank.symm k)).val <
            marker.val
        rw [Equiv.apply_symm_apply]
        exact hk
      have hx := congrFun har
        ⟨(context.sideRank.symm k).val, hbefore⟩
      change
        outcome.1 (context.sideRank.symm k).val.val =
          outcome'.1 (context.sideRank.symm k).val.val at hx
      have hkcut : k.val < seed.rightCut.val := by
        rw [← hmarker]
        exact hk
      simpa [finitePrefixMask,
        exactReverseBobSourceProjection,
        exactReverseBobContextAt,
        side, context, marker, hkcut] using hx
    · have hkcut : ¬ k.val < seed.rightCut.val := by
        rw [← hmarker]
        exact hk
      simp [finitePrefixMask,
        exactReverseBobSourceProjection,
        exactReverseBobContextAt,
        hkcut]

end

noncomputable section

open scoped BigOperators

set_option backward.isDefEq.respectTransparency false
set_option maxHeartbeats 1800000
set_option maxRecDepth 2048

open QuantumParallelRepetition.Pinsker
open QuantumParallelRepetition.ClassicalInformation

attribute [local instance] Classical.propDecidable

theorem groupedMass_product_injective_seed
    {K Ω C T : Type*}
    [Fintype K] [Fintype Ω] [Fintype C] [Fintype T]
    [DecidableEq C] [DecidableEq T]
    (code : K → C) (injective : Function.Injective code)
    (projection : K → Ω → T)
    (seedWeight : K → ℝ) (outcomeWeight : Ω → ℝ)
    (seed : K) (target : T) :
    groupedMass
        (fun q : K × Ω => (code q.1, projection q.1 q.2))
        (fun q : K × Ω => seedWeight q.1 * outcomeWeight q.2)
        (code seed, target) =
      seedWeight seed *
        groupedMass (projection seed) outcomeWeight target := by
  classical
  unfold groupedMass
  rw [Finset.sum_filter, Fintype.sum_prod_type,
    Finset.sum_filter, Finset.mul_sum]
  simp [injective.eq_iff]
  rw [Finset.sum_eq_single seed]
  · simp
  · intro other _ different
    simp [different]
  · simp

variable {X Y A B : Type*}
variable [Fintype X] [Fintype Y] [Fintype A] [Fintype B]

end

noncomputable section

open scoped BigOperators

set_option backward.isDefEq.respectTransparency false
set_option maxHeartbeats 2800000
set_option maxRecDepth 2048

open QuantumParallelRepetition.Pinsker
open QuantumParallelRepetition.ClassicalInformation

attribute [local instance] Classical.propDecidable

theorem jointConditional_groupedMass_eq_of_fiber
    {Ω C D V : Type*}
    [Fintype Ω] [Fintype C] [Fintype D] [Fintype V]
    [DecidableEq (C × V)] [DecidableEq (D × V)]
    (mass : Ω → ℝ)
    (left : Ω → C) (right : Ω → D) (next : Ω → V)
    (leftTarget : C) (rightTarget : D)
    (same_fiber : ∀ outcome : Ω,
      left outcome = leftTarget ↔ right outcome = rightTarget) :
    jointConditional
        (groupedMass (fun outcome => (left outcome, next outcome)) mass)
        leftTarget =
      jointConditional
        (groupedMass (fun outcome => (right outcome, next outcome)) mass)
        rightTarget := by
  classical
  have hatom (value : V) :
      groupedMass
          (fun outcome => (left outcome, next outcome)) mass
          (leftTarget, value) =
        groupedMass
          (fun outcome => (right outcome, next outcome)) mass
          (rightTarget, value) := by
    unfold groupedMass
    apply Finset.sum_congr
    · ext outcome
      simp only [Finset.mem_filter, Finset.mem_univ, true_and,
        Prod.mk.injEq]
      exact and_congr_left (fun _ => same_fiber outcome)
    · intro outcome _
      rfl
  have hmarginal :
      jointFirstMarginal
          (groupedMass
            (fun outcome => (left outcome, next outcome)) mass)
          leftTarget =
        jointFirstMarginal
          (groupedMass
            (fun outcome => (right outcome, next outcome)) mass)
          rightTarget := by
    unfold jointFirstMarginal
    apply Finset.sum_congr rfl
    intro value _
    exact hatom value
  funext value
  unfold jointConditional
  rw [hatom value, hmarginal]

variable {X Y A B : Type*}
variable [Fintype X] [Fintype Y] [Fintype A] [Fintype B]

theorem exactConditionedAnswerFlag_eq_of_history
    (G : Game X Y A B) (n : ℕ) (S : Strategy (G.repeat n))
    (D : Finset (Fin n))
    (q q' : ExactJointOutcome X Y A B D)
    (same_history :
      exactHistoryCode D q =
        exactHistoryCode D q') :
    repeatedConditionedAnswerFlag G n S D q.2 =
      repeatedConditionedAnswerFlag G n S D q'.2 := by
  apply Prod.ext
  · exact congrArg
      (fun r : ExactHistoryFlag X Y A B D => r.aliceAnswer)
      same_history
  · exact congrArg
      (fun r : ExactHistoryFlag X Y A B D => r.bobAnswer)
      same_history

theorem exactReverseBobMarkedHistoryContext_eq_of_history
    (G : Game X Y A B) (n : ℕ) (S : Strategy (G.repeat n))
    (D : Finset (Fin n)) (default : X)
    (seed : ExactRemainingSeed D)
    (outcome outcome' : ExactOutcome X Y A B n)
    (same_history :
      exactHistoryCode D (seed, outcome) =
        exactHistoryCode D (seed, outcome'))
    (same_question :
      outcome.2.1 seed.coordinate.val =
        outcome'.2.1 seed.coordinate.val) :
    exactReverseBobMarkedHistoryContext
        G n S D default seed outcome =
      exactReverseBobMarkedHistoryContext
        G n S D default seed outcome' := by
  have hmask := exactReverseBobMaskedProjection_eq_of_history
    (X := X) (Y := Y) (A := A) (B := B)
    D default (seed, outcome) (seed, outcome')
    same_history same_question
  have hflag := exactConditionedAnswerFlag_eq_of_history
    G n S D (seed, outcome) (seed, outcome') same_history
  have hfixed :
      (exactReverseBobSourceProjection
        (X := X) (Y := Y) (A := A) (B := B)
        D (exactReverseRightSide seed) (seed, outcome)).1 =
      (exactReverseBobSourceProjection
        (X := X) (Y := Y) (A := A) (B := B)
        D (exactReverseRightSide seed) (seed, outcome')).1 := by
    have h := congrArg
      (fun t :
        ExactReverseBobFixedInformation X Y D
          (exactReverseRightSide seed) ×
            (Fin (exactReverseRightSide seed).card → X) =>
        t.1) hmask
    simpa only [finitePrefixMask] using h
  have hprefix :
      (finitePrefixMask default
        ((exactReverseBobContext seed).sideRank
          ⟨seed.coordinate,
            exactReverseRightSide_coordinate_mem seed⟩).castSucc
        (exactReverseBobSourceProjection
          (X := X) (Y := Y) (A := A) (B := B)
          D (exactReverseRightSide seed) (seed, outcome))).2 =
      (finitePrefixMask default
        ((exactReverseBobContext seed).sideRank
          ⟨seed.coordinate,
            exactReverseRightSide_coordinate_mem seed⟩).castSucc
        (exactReverseBobSourceProjection
          (X := X) (Y := Y) (A := A) (B := B)
          D (exactReverseRightSide seed) (seed, outcome'))).2 := by
    exact congrArg
      (fun t :
        ExactReverseBobFixedInformation X Y D
          (exactReverseRightSide seed) ×
            (Fin (exactReverseRightSide seed).card → X) =>
        t.2) hmask
  unfold exactReverseBobMarkedHistoryContext
  dsimp
  apply Prod.ext
  · apply Prod.ext
    · exact hfixed
    · exact hflag
  · exact hprefix

theorem exactReverseBob_history_of_marked_context
    (G : Game X Y A B) (n : ℕ) (S : Strategy (G.repeat n))
    (D : Finset (Fin n)) (default : X)
    (seed : ExactRemainingSeed D)
    (outcome outcome' : ExactOutcome X Y A B n)
    (same_context :
      exactReverseBobMarkedHistoryContext
          G n S D default seed outcome =
        exactReverseBobMarkedHistoryContext
          G n S D default seed outcome') :
    outcome.2.1 seed.coordinate.val =
        outcome'.2.1 seed.coordinate.val ∧
      exactHistoryCode D (seed, outcome) =
        exactHistoryCode D (seed, outcome') := by
  let side := exactReverseRightSide seed
  let context := exactReverseBobContext seed
  let marker : Fin side.card :=
    context.sideRank
      ⟨seed.coordinate,
        exactReverseRightSide_coordinate_mem seed⟩
  have hfixed :
      (exactReverseBobSourceProjection
        (X := X) (Y := Y) (A := A) (B := B)
        D side (seed, outcome)).1 =
      (exactReverseBobSourceProjection
        (X := X) (Y := Y) (A := A) (B := B)
        D side (seed, outcome')).1 := by
    have h := congrArg
      (fun t : ExactReverseBobNextContext
        X Y A B D (exactReverseRightSide seed) => t.1.1)
      same_context
    simpa only [exactReverseBobMarkedHistoryContext,
      finitePrefixMask, side] using h
  have hflag :
      repeatedConditionedAnswerFlag G n S D outcome =
        repeatedConditionedAnswerFlag G n S D outcome' := by
    have h := congrArg
      (fun t : ExactReverseBobNextContext
        X Y A B D (exactReverseRightSide seed) => t.1.2)
      same_context
    simpa only [exactReverseBobMarkedHistoryContext,
      finitePrefixMask] using h
  have hprefix :
      (finitePrefixMask default marker.castSucc
        (exactReverseBobSourceProjection
          (X := X) (Y := Y) (A := A) (B := B)
          D side (seed, outcome))).2 =
      (finitePrefixMask default marker.castSucc
        (exactReverseBobSourceProjection
          (X := X) (Y := Y) (A := A) (B := B)
          D side (seed, outcome'))).2 := by
    have h := congrArg
      (fun t : ExactReverseBobNextContext
        X Y A B D (exactReverseRightSide seed) => t.2)
      same_context
    simpa only [exactReverseBobMarkedHistoryContext,
      finitePrefixMask, side, context, marker] using h
  have hfields := eq_of_heq (Sigma.mk.inj hfixed).2
  have hac := congrArg (fun t => t.1) hfields
  have hbc := congrArg (fun t => t.2.1) hfields
  have hside := congrArg (fun t => t.2.2.1) hfields
  have hother := congrArg (fun t => t.2.2.2.1) hfields
  have hoppositePrefix := congrArg (fun t => t.2.2.2.2) hfields
  have hquestion :
      outcome.2.1 seed.coordinate.val =
        outcome'.2.1 seed.coordinate.val := by
    have h := congrFun hside
      ⟨seed.coordinate,
        exactReverseRightSide_coordinate_mem seed⟩
    exact h
  have hreveal :
      exactRevealCode D seed
          (outcome.1, outcome.2.1) =
        exactRevealCode D seed
          (outcome'.1, outcome'.2.1) := by
    apply (exactRevealHistoryEquiv
      (X := X) (Y := Y) D seed).injective
    apply Prod.ext
    · exact hac
    apply Prod.ext
    · exact hbc
    apply Prod.ext
    · funext j
      have hotherSide :
          (exactReverseBobContextAt side seed).otherSide =
            exactLeft seed.coordinate seed.partition := by
        change
          (exactReverseBobContextAt
            (exactReverseRightSide seed) seed).otherSide = _
        rw [exactReverseBobContextAt_actual]
        rfl
      have hj :
          j.val ∈
            (exactReverseBobContextAt side seed).otherSide :=
        (Finset.ext_iff.mp hotherSide j.val).mpr j.property
      exact congrFun hother ⟨j.val, hj⟩
    apply Prod.ext
    · funext j
      have hj : j.val ∈ side := by
        change j.val ∈ insert seed.coordinate
          (exactRight seed.coordinate seed.partition)
        exact Finset.mem_insert_of_mem j.property
      exact congrFun hside ⟨j.val, hj⟩
    apply Prod.ext
    · funext j
      have hotherPrefix :
          exactReverseContextOtherPrefix
              (exactReverseBobContextAt side seed) =
            exactLeftPrefix seed := by
        change
          exactReverseContextOtherPrefix
            (exactReverseBobContextAt
              (exactReverseRightSide seed) seed) = _
        rw [exactReverseBobContextAt_actual,
          exactReverseBobContext_otherPrefix]
      have hj :
          j.val ∈ exactReverseContextOtherPrefix
            (exactReverseBobContextAt side seed) :=
        (Finset.ext_iff.mp hotherPrefix j.val).mpr j.property
      exact congrFun hoppositePrefix ⟨j.val, hj⟩
    · funext j
      have hbefore :
          j.val ∈ exactReverseContextPrefixBefore
            context marker := by
        change
          j.val ∈ exactReverseContextPrefixBefore
            (exactReverseBobContext seed)
            ((exactReverseBobContext seed).sideRank
              ⟨seed.coordinate,
                exactReverseRightSide_coordinate_mem seed⟩)
        rw [exactReverseBobContext_prefix_before_marked]
        exact j.property
      have hparts :=
        (exactOrderedSidePrefix_mem_iff
          side context.sideRank marker.castSucc j.val).mp
          (by simpa [exactReverseContextPrefixBefore]
            using hbefore)
      let position : Fin side.card :=
        context.sideRank ⟨j.val, hparts.1⟩
      have hlt : position.val < marker.val := by
        simpa [position] using hparts.2
      have hltCut : position.val < seed.rightCut.val := by
        calc
          position.val < marker.val := hlt
          _ = seed.rightCut.val := by
            exact exactReverseBobContext_marked_rank seed
      have h := congrFun hprefix position
      change outcome.1 j.val.val = outcome'.1 j.val.val
      simpa [finitePrefixMask,
        exactReverseBobSourceProjection,
        exactReverseBobContextAt, side,
        context, marker, position, hlt, hltCut] using h
  refine ⟨hquestion, ?_⟩
  apply (exactHistoryFlagEquiv
    (X := X) (Y := Y) (A := A) (B := B) D).injective
  change
    (⟨seed,
       (exactRevealCode D seed (outcome.1, outcome.2.1),
        (fun j : {j : Fin n // j ∈ D} => outcome.2.2.1 j.val),
        (fun j : {j : Fin n // j ∈ D} => outcome.2.2.2 j.val))⟩ :
      ExactHistoryFlagTuple X Y A B D) =
    (⟨seed,
       (exactRevealCode D seed (outcome'.1, outcome'.2.1),
        (fun j : {j : Fin n // j ∈ D} => outcome'.2.2.1 j.val),
        (fun j : {j : Fin n // j ∈ D} => outcome'.2.2.2 j.val))⟩ :
      ExactHistoryFlagTuple X Y A B D)
  apply Sigma.ext
  · rfl
  · apply heq_of_eq
    apply Prod.ext
    · exact hreveal
    apply Prod.ext
    · exact congrArg Prod.fst hflag
    · exact congrArg Prod.snd hflag

theorem exactReverseBobMarkedHistoryContext_fiber_iff
    (G : Game X Y A B) (n : ℕ) (S : Strategy (G.repeat n))
    (D : Finset (Fin n)) (default : X)
    (seed : ExactRemainingSeed D)
    (outcome reference : ExactOutcome X Y A B n) :
    (exactReverseBobMarkedHistoryContext
        G n S D default seed outcome =
      exactReverseBobMarkedHistoryContext
        G n S D default seed reference) ↔
      (outcome.2.1 seed.coordinate.val,
        exactHistoryCode D (seed, outcome)) =
      (reference.2.1 seed.coordinate.val,
        exactHistoryCode D (seed, reference)) := by
  constructor
  · intro same
    obtain ⟨hquestion, hhistory⟩ :=
      exactReverseBob_history_of_marked_context
        G n S D default seed outcome reference same
    exact Prod.ext hquestion hhistory
  · intro same
    apply exactReverseBobMarkedHistoryContext_eq_of_history
      G n S D default seed outcome reference
    · exact congrArg Prod.snd same
    · exact congrArg Prod.fst same

theorem exactReverseBobMarkedPosteriorConditional_eq_sourceFiber
    (G : Game X Y A B) (n : ℕ) (S : Strategy (G.repeat n))
    (D : Finset (Fin n)) (default : X)
    (seed : ExactRemainingSeed D)
    (reference : ExactOutcome X Y A B n) :
    jointConditional
        (groupedMass
          (fun outcome : ExactOutcome X Y A B n =>
            (exactReverseBobMarkedHistoryContext
              G n S D default seed outcome,
              outcome.1 seed.coordinate.val))
          (repeatedConditionedOutcomeLaw G n S D))
        (exactReverseBobMarkedHistoryContext
          G n S D default seed reference) =
      jointConditional
        (groupedMass
          (fun outcome : ExactOutcome X Y A B n =>
            ((outcome.2.1 seed.coordinate.val,
              exactHistoryCode D (seed, outcome)),
              outcome.1 seed.coordinate.val))
          (repeatedConditionedOutcomeLaw G n S D))
        (reference.2.1 seed.coordinate.val,
          exactHistoryCode D (seed, reference)) := by
  apply jointConditional_groupedMass_eq_of_fiber
    (repeatedConditionedOutcomeLaw G n S D)
    (fun outcome : ExactOutcome X Y A B n =>
      exactReverseBobMarkedHistoryContext
        G n S D default seed outcome)
    (fun outcome : ExactOutcome X Y A B n =>
      (outcome.2.1 seed.coordinate.val,
        exactHistoryCode D (seed, outcome)))
    (fun outcome : ExactOutcome X Y A B n =>
      outcome.1 seed.coordinate.val)
    (exactReverseBobMarkedHistoryContext
      G n S D default seed reference)
    (reference.2.1 seed.coordinate.val,
      exactHistoryCode D (seed, reference))
  intro outcome
  exact exactReverseBobMarkedHistoryContext_fiber_iff
    G n S D default seed outcome reference

end

noncomputable section

open scoped BigOperators

set_option backward.isDefEq.respectTransparency false
set_option maxHeartbeats 3600000
set_option maxRecDepth 2048

open QuantumParallelRepetition.Pinsker
open QuantumParallelRepetition.ClassicalInformation

attribute [local instance] Classical.propDecidable

variable {X Y A B : Type*}
variable [Fintype X] [Fintype Y] [Fintype A] [Fintype B]

theorem exactBobInformationPosterior_eq_jointPushforward
    (G : Game X Y A B) (n : ℕ) (S : Strategy (G.repeat n))
    (D : Finset (Fin n)) :
    exactBobInformationPosterior G n S D =
      groupedMass
        (exactBobSourceAtomCode
          (X := X) (Y := Y) (A := A) (B := B) D)
        (exactPostselectedJointLaw G n S D) := by
  classical
  funext target
  unfold exactBobInformationPosterior
    exactLocallySampleableLaw
    exactSourcePushforward groupedMass
  apply Finset.sum_congr
  · ext point
    simp only [Finset.mem_filter, Finset.mem_univ, true_and]
    change
      (exactLocallySampleableCode D point =
        (exactBobInformationEquiv
          (X := X) (Y := Y) (A := A) (B := B) D).symm target) ↔
      (exactBobInformationEquiv
        (X := X) (Y := Y) (A := A) (B := B) D)
          (exactLocallySampleableCode D point) = target
    exact
      ((exactBobInformationEquiv
        (X := X) (Y := Y) (A := A) (B := B) D).apply_eq_iff_eq_symm_apply).symm
  · intro point _
    rfl

end

noncomputable section

open scoped BigOperators

set_option backward.isDefEq.respectTransparency false
set_option maxHeartbeats 4200000
set_option maxRecDepth 2048

open QuantumParallelRepetition.Pinsker
open QuantumParallelRepetition.ClassicalInformation

attribute [local instance] Classical.propDecidable

theorem exactSeedWeight_pos_of_seed
    {M : Type*} [Fintype M] [DecidableEq M]
    (seed : ExactForwardSeed M) :
    0 < exactSeedWeight seed := by
  have nonempty : 0 < Fintype.card M :=
    Fintype.card_pos_iff.mpr ⟨seed.coordinate⟩
  have bits : 0 < Fintype.card (M → Bool) :=
    Fintype.card_pos_iff.mpr ⟨fun _ => false⟩
  have left :
      0 < Fintype.card
        (Equiv.Perm
          {j : M // j ∈
            exactLeft seed.coordinate seed.partition}) :=
    Fintype.card_pos_iff.mpr ⟨Equiv.refl _⟩
  have right :
      0 < Fintype.card
        (Equiv.Perm
          {j : M // j ∈
            exactRight seed.coordinate seed.partition}) :=
    Fintype.card_pos_iff.mpr ⟨Equiv.refl _⟩
  unfold exactSeedWeight
  positivity

theorem jointConditional_product_context_seed
    {K Ω C V : Type*}
    [Fintype K] [Fintype Ω] [Fintype C] [Fintype V]
    (context : K → Ω → C)
    (next : K → Ω → V)
    (seedWeight : K → ℝ)
    (outcomeWeight : Ω → ℝ)
    (seed : K) (target : C)
    (nonzero : seedWeight seed ≠ 0) :
    jointConditional
        (groupedMass
          (fun q : K × Ω =>
            ((q.1, context q.1 q.2), next q.1 q.2))
          (fun q : K × Ω =>
            seedWeight q.1 * outcomeWeight q.2))
        (seed, target) =
      jointConditional
        (groupedMass
          (fun outcome : Ω =>
            (context seed outcome, next seed outcome))
          outcomeWeight)
        target := by
  classical
  have atom (value : V) :
      groupedMass
          (fun q : K × Ω =>
            ((q.1, context q.1 q.2), next q.1 q.2))
          (fun q : K × Ω =>
            seedWeight q.1 * outcomeWeight q.2)
          ((seed, target), value) =
        seedWeight seed *
          groupedMass
            (fun outcome : Ω =>
              (context seed outcome, next seed outcome))
            outcomeWeight (target, value) := by
    calc
      groupedMass
          (fun q : K × Ω =>
            ((q.1, context q.1 q.2), next q.1 q.2))
          (fun q : K × Ω =>
            seedWeight q.1 * outcomeWeight q.2)
          ((seed, target), value) =
        groupedMass
          (fun q : K × Ω =>
            (q.1, (context q.1 q.2, next q.1 q.2)))
          (fun q : K × Ω =>
            seedWeight q.1 * outcomeWeight q.2)
          (seed, (target, value)) := by
            unfold groupedMass
            apply Finset.sum_congr
            · ext q
              simp [and_assoc]
            · intro q _
              rfl
      _ = seedWeight seed *
          groupedMass
            (fun outcome : Ω =>
              (context seed outcome, next seed outcome))
            outcomeWeight (target, value) := by
            exact groupedMass_product_injective_seed
              (fun k : K => k) (fun _ _ equal => equal)
              (fun k outcome =>
                (context k outcome, next k outcome))
              seedWeight outcomeWeight seed (target, value)
  funext value
  unfold jointConditional jointFirstMarginal
  simp_rw [atom]
  rw [← Finset.mul_sum]
  exact mul_div_mul_left _ _ nonzero

variable {X Y A B : Type*}
variable [Fintype X] [Fintype Y] [Fintype A] [Fintype B]

theorem exactBobSourceContextNextPosterior_eq_groupedMass
    (G : Game X Y A B) (n : ℕ) (S : Strategy (G.repeat n))
    (D : Finset (Fin n)) :
    (fun atom :
      ((SourceRemainingCoordinate D × Y) ×
        ExactHistoryFlag X Y A B D) × X =>
      exactBobInformationPosterior G n S D
        (atom.1.1, (atom.1.2, atom.2))) =
      groupedMass
        (fun point : ExactJointOutcome X Y A B D =>
          (((point.1.coordinate,
              point.2.2.1 point.1.coordinate.val),
            exactHistoryCode D point),
            point.2.1 point.1.coordinate.val))
        (exactPostselectedJointLaw G n S D) := by
  classical
  funext atom
  rcases atom with ⟨⟨⟨coordinate, question⟩, history⟩, next⟩
  rw [exactBobInformationPosterior_eq_jointPushforward]
  unfold groupedMass
  apply Finset.sum_congr
  · ext point
    simp [exactBobSourceAtomCode, and_assoc]
  · intro point _
    rfl

theorem exactBobSourcePosteriorConditional_eq_fixedSeedFiber
    (G : Game X Y A B) (n : ℕ) (S : Strategy (G.repeat n))
    (D : Finset (Fin n))
    (seed : ExactRemainingSeed D)
    (reference : ExactOutcome X Y A B n) :
    jointConditional
        (fun atom :
          ((SourceRemainingCoordinate D × Y) ×
            ExactHistoryFlag X Y A B D) × X =>
          exactBobInformationPosterior G n S D
            (atom.1.1, (atom.1.2, atom.2)))
        ((seed.coordinate, reference.2.1 seed.coordinate.val),
          exactHistoryCode D (seed, reference)) =
      jointConditional
        (groupedMass
          (fun outcome : ExactOutcome X Y A B n =>
            ((outcome.2.1 seed.coordinate.val,
              exactHistoryCode D (seed, outcome)),
              outcome.1 seed.coordinate.val))
          (repeatedConditionedOutcomeLaw G n S D))
        (reference.2.1 seed.coordinate.val,
          exactHistoryCode D (seed, reference)) := by
  classical
  rw [exactBobSourceContextNextPosterior_eq_groupedMass]
  have fiber :
      jointConditional
          (groupedMass
            (fun point : ExactJointOutcome X Y A B D =>
              (((point.1.coordinate,
                  point.2.2.1 point.1.coordinate.val),
                exactHistoryCode D point),
                point.2.1 point.1.coordinate.val))
            (exactPostselectedJointLaw G n S D))
          ((seed.coordinate, reference.2.1 seed.coordinate.val),
            exactHistoryCode D (seed, reference)) =
        jointConditional
          (groupedMass
            (fun point : ExactJointOutcome X Y A B D =>
              ((point.1,
                (point.2.2.1 point.1.coordinate.val,
                  exactHistoryCode D point)),
                point.2.1 point.1.coordinate.val))
            (exactPostselectedJointLaw G n S D))
          (seed,
            (reference.2.1 seed.coordinate.val,
              exactHistoryCode D (seed, reference))) := by
    apply jointConditional_groupedMass_eq_of_fiber
      (exactPostselectedJointLaw G n S D)
      (fun point : ExactJointOutcome X Y A B D =>
        ((point.1.coordinate,
          point.2.2.1 point.1.coordinate.val),
          exactHistoryCode D point))
      (fun point : ExactJointOutcome X Y A B D =>
        (point.1,
          (point.2.2.1 point.1.coordinate.val,
            exactHistoryCode D point)))
      (fun point : ExactJointOutcome X Y A B D =>
        point.2.1 point.1.coordinate.val)
      ((seed.coordinate, reference.2.1 seed.coordinate.val),
        exactHistoryCode D (seed, reference))
      (seed,
        (reference.2.1 seed.coordinate.val,
          exactHistoryCode D (seed, reference)))
    intro point
    constructor
    · intro same
      have history :
          exactHistoryCode D point =
            exactHistoryCode D (seed, reference) :=
        congrArg Prod.snd same
      have seed_eq : point.1 = seed := by
        simpa only [exactHistoryCode] using
          congrArg
            (fun r : ExactHistoryFlag X Y A B D => r.seed)
            history
      have question :
          point.2.2.1 point.1.coordinate.val =
            reference.2.1 seed.coordinate.val :=
        congrArg
          (fun t :
            (SourceRemainingCoordinate D × Y) ×
              ExactHistoryFlag X Y A B D => t.1.2)
          same
      exact Prod.ext seed_eq (Prod.ext question history)
    · intro same
      have seed_eq : point.1 = seed := congrArg Prod.fst same
      have question :
          point.2.2.1 point.1.coordinate.val =
            reference.2.1 seed.coordinate.val :=
        congrArg
          (fun t : ExactRemainingSeed D ×
            (Y × ExactHistoryFlag X Y A B D) => t.2.1)
          same
      have history :
          exactHistoryCode D point =
            exactHistoryCode D (seed, reference) :=
        congrArg
          (fun t : ExactRemainingSeed D ×
            (Y × ExactHistoryFlag X Y A B D) => t.2.2)
          same
      apply Prod.ext
      · exact Prod.ext
          (congrArg
            (fun s : ExactRemainingSeed D => s.coordinate)
            seed_eq)
          question
      · exact history
  calc
    _ = jointConditional
          (groupedMass
            (fun point : ExactJointOutcome X Y A B D =>
              ((point.1,
                (point.2.2.1 point.1.coordinate.val,
                  exactHistoryCode D point)),
                point.2.1 point.1.coordinate.val))
            (exactPostselectedJointLaw G n S D))
          (seed,
            (reference.2.1 seed.coordinate.val,
              exactHistoryCode D (seed, reference))) := fiber
    _ = _ := by
      unfold exactPostselectedJointLaw
      convert (jointConditional_product_context_seed
          (fun (source : ExactRemainingSeed D)
            (outcome : ExactOutcome X Y A B n) =>
            (outcome.2.1 source.coordinate.val,
              exactHistoryCode D (source, outcome)))
          (fun (source : ExactRemainingSeed D)
            (outcome : ExactOutcome X Y A B n) =>
            outcome.1 source.coordinate.val)
          exactSeedWeight
          (repeatedConditionedOutcomeLaw G n S D)
          seed
          (reference.2.1 seed.coordinate.val,
            exactHistoryCode D (seed, reference))
          (ne_of_gt (exactSeedWeight_pos_of_seed seed))) using 1
      · congr 1
        exact exactGroupedMass_decidableEq_irrel _ _ _ _
      · congr 1
        exact exactGroupedMass_decidableEq_irrel _ _ _ _

theorem exactReverseBobMarkedPosteriorConditional_eq_sourcePosterior
    (G : Game X Y A B) (n : ℕ) (S : Strategy (G.repeat n))
    (D : Finset (Fin n)) (default : X)
    (seed : ExactRemainingSeed D)
    (reference : ExactOutcome X Y A B n) :
    jointConditional
        (groupedMass
          (fun outcome : ExactOutcome X Y A B n =>
            (exactReverseBobMarkedHistoryContext
              G n S D default seed outcome,
              outcome.1 seed.coordinate.val))
          (repeatedConditionedOutcomeLaw G n S D))
        (exactReverseBobMarkedHistoryContext
          G n S D default seed reference) =
      jointConditional
        (fun atom :
          ((SourceRemainingCoordinate D × Y) ×
            ExactHistoryFlag X Y A B D) × X =>
          exactBobInformationPosterior G n S D
            (atom.1.1, (atom.1.2, atom.2)))
        ((seed.coordinate, reference.2.1 seed.coordinate.val),
          exactHistoryCode D (seed, reference)) := by
  exact
    (exactReverseBobMarkedPosteriorConditional_eq_sourceFiber
      G n S D default seed reference).trans
      (exactBobSourcePosteriorConditional_eq_fixedSeedFiber
        G n S D seed reference).symm

end

noncomputable section

open scoped BigOperators

set_option backward.isDefEq.respectTransparency false
set_option maxHeartbeats 5000000
set_option maxRecDepth 2048

open QuantumParallelRepetition.Pinsker
open QuantumParallelRepetition.ClassicalInformation

attribute [local instance] Classical.propDecidable

variable {X Y A B : Type*}
variable [Fintype X] [Fintype Y] [Fintype A] [Fintype B]

theorem exactConditionedReverseBobNextPrior_marked_conditional
    (G : Game X Y A B) (n : ℕ) (S : Strategy (G.repeat n))
    (D : Finset (Fin n))
    (remaining : 0 < (Finset.univ \ D).card)
    (side : Finset (SourceRemainingCoordinate D))
    (default : X) (marker : Fin side.card)
    (target : ExactReverseBobNextContext X Y A B D side)
    (supported :
      jointFirstMarginal
        (groupedMass
          (exactPrefixNextCode default marker)
          (exactConditionedReverseBobNextPrior
            G n S D remaining side))
        target ≠ 0) :
    jointConditional
        (groupedMass
          (exactPrefixNextCode default marker)
          (exactConditionedReverseBobNextPrior
            G n S D remaining side))
        target =
      G.conditionalXGivenY
        (target.1.1.2.2.2.1
          (target.1.1.1.sideRank.symm marker)) := by
  funext next
  unfold jointConditional
  rw [exactConditionedReverseBobNextPrior_marked_joint_factor
    G n S D remaining side default marker target next]
  exact mul_div_cancel_right₀ _ supported

theorem exactReverseBobMarkedPriorConditional_eq_game
    (G : Game X Y A B) (n : ℕ) (S : Strategy (G.repeat n))
    (D : Finset (Fin n))
    (remaining : 0 < (Finset.univ \ D).card)
    (default : X)
    (seed : ExactRemainingSeed D)
    (reference : ExactOutcome X Y A B n)
    (supported :
      jointFirstMarginal
        (groupedMass
          (exactPrefixNextCode default
            ((exactReverseBobContext seed).sideRank
              ⟨seed.coordinate,
                exactReverseRightSide_coordinate_mem seed⟩))
          (exactConditionedReverseBobNextPrior
            G n S D remaining
            (exactReverseRightSide seed)))
        (exactReverseBobMarkedHistoryContext
          G n S D default seed reference) ≠ 0) :
    jointConditional
        (groupedMass
          (exactPrefixNextCode default
            ((exactReverseBobContext seed).sideRank
              ⟨seed.coordinate,
                exactReverseRightSide_coordinate_mem seed⟩))
          (exactConditionedReverseBobNextPrior
            G n S D remaining
            (exactReverseRightSide seed)))
        (exactReverseBobMarkedHistoryContext
          G n S D default seed reference) =
      G.conditionalXGivenY
        (reference.2.1 seed.coordinate.val) := by
  have actual := exactConditionedReverseBobNextPrior_marked_conditional
    G n S D remaining
    (exactReverseRightSide seed) default
    ((exactReverseBobContext seed).sideRank
      ⟨seed.coordinate,
        exactReverseRightSide_coordinate_mem seed⟩)
    (exactReverseBobMarkedHistoryContext
      G n S D default seed reference) supported
  simpa [exactReverseBobMarkedHistoryContext,
    finitePrefixMask,
    exactReverseBobSourceProjection] using actual

end

noncomputable section

open scoped BigOperators

set_option backward.isDefEq.respectTransparency false
set_option maxHeartbeats 6000000
set_option maxRecDepth 2048

open QuantumParallelRepetition.Pinsker
open QuantumParallelRepetition.ClassicalInformation

attribute [local instance] Classical.propDecidable

variable {X Y A B : Type*}
variable [Fintype X] [Fintype Y] [Fintype A] [Fintype B]

theorem exactReverseBobConditionalSeedLaw_actual_pos
    {M : Type*} [Fintype M] [DecidableEq M]
    (nonempty : 0 < Fintype.card M)
    (seed : ExactForwardSeed M) :
    0 < (exactReverseBobConditionalSeedLaw
      nonempty (exactReverseRightSide seed)).weight seed := by
  have sideNonempty :
      (exactReverseRightSide seed).Nonempty :=
    ⟨seed.coordinate,
      exactReverseRightSide_coordinate_mem seed⟩
  rw [exactReverseBobConditionalSeedLaw_weight
    nonempty (exactReverseRightSide seed)
    sideNonempty seed]
  unfold exactReverseBobConditionalSeedWeight
  rw [if_pos rfl]
  exact div_pos
    (exactSeedWeight_pos_of_seed seed)
    ((reversePartitionWeight_pos_iff nonempty
      (exactReverseRightSide seed)).mpr sideNonempty)

theorem exactReverseBobMaskedOutcomeContext_actual
    (G : Game X Y A B) (n : ℕ) (S : Strategy (G.repeat n))
    (D : Finset (Fin n)) (default : X)
    (seed : ExactRemainingSeed D)
    (outcome : ExactOutcome X Y A B n) :
    exactReverseBobMaskedOutcomeContext
        G n S D (exactReverseRightSide seed) default
        ((exactReverseBobContext seed).sideRank
          ⟨seed.coordinate,
            exactReverseRightSide_coordinate_mem seed⟩)
        (exactReverseBobContextAt
          (exactReverseRightSide seed) seed)
        outcome =
      exactReverseBobMarkedHistoryContext
        G n S D default seed outcome := by
  simp [exactReverseBobMaskedOutcomeContext,
    exactReverseBobContextOutcomeProjection,
    exactReverseBobMarkedHistoryContext,
    exactReverseBobSourceProjection]

theorem exactConditionedReverseBobNextJoint_marked_conditional_eq_sourcePosterior
    (G : Game X Y A B) (n : ℕ) (S : Strategy (G.repeat n))
    (D : Finset (Fin n))
    (remaining : 0 < (Finset.univ \ D).card)
    (default : X)
    (seed : ExactRemainingSeed D)
    (reference : ExactOutcome X Y A B n) :
    jointConditional
        (groupedMass
          (exactPrefixNextCode default
            ((exactReverseBobContext seed).sideRank
              ⟨seed.coordinate,
                exactReverseRightSide_coordinate_mem seed⟩))
          (exactConditionedReverseBobNextJoint
            G n S D remaining
            (exactReverseRightSide seed)))
        (exactReverseBobMarkedHistoryContext
          G n S D default seed reference) =
      jointConditional
        (fun atom :
          ((SourceRemainingCoordinate D × Y) ×
            ExactHistoryFlag X Y A B D) × X =>
          exactBobInformationPosterior G n S D
            (atom.1.1, (atom.1.2, atom.2)))
        ((seed.coordinate, reference.2.1 seed.coordinate.val),
          exactHistoryCode D (seed, reference)) := by
  exact
    (exactConditionedReverseBobNextJoint_marked_conditional_eq_fixedOutcome
      G n S D remaining default seed reference).trans
      (exactReverseBobMarkedPosteriorConditional_eq_sourcePosterior
        G n S D default seed reference)

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

theorem exactReverseBobMarkedPriorMarginal_ne_zero_of_outcome
    (G : Game X Y A B) (n : ℕ) (S : Strategy (G.repeat n))
    (D : Finset (Fin n))
    (remaining : 0 < (Finset.univ \ D).card)
    (positive : 0 < repeatedPostselectionMass G n S D)
    (default : X)
    (seed : ExactRemainingSeed D)
    (outcome : ExactOutcome X Y A B n)
    (supported :
      repeatedConditionedOutcomeLaw G n S D outcome ≠ 0) :
    jointFirstMarginal
        (groupedMass
          (exactPrefixNextCode default
            ((exactReverseBobContext seed).sideRank
              ⟨seed.coordinate,
                exactReverseRightSide_coordinate_mem seed⟩))
          (exactConditionedReverseBobNextPrior
            G n S D remaining
            (exactReverseRightSide seed)))
        (exactReverseBobMarkedHistoryContext
          G n S D default seed outcome) ≠ 0 := by
  let side := exactReverseRightSide seed
  let marker : Fin side.card :=
    (exactReverseBobContext seed).sideRank
      ⟨seed.coordinate,
        exactReverseRightSide_coordinate_mem seed⟩
  let law := exactReverseBobConditionalSeedLaw
    (exactRemainingCoordinate_card_pos D remaining) side
  let projection := exactReverseBobSourceProjection
    (X := X) (Y := Y) (A := A) (B := B) D side
  have outcome_nonnegative :
      0 ≤ repeatedConditionedOutcomeLaw
        G n S D outcome :=
    conditionedEventDistribution_nonneg
      (strategyEventLaw (G.repeat n) S)
      (FiniteEventLaw.winEvent (repeatedCoordinateWin G n) D)
      positive outcome
  have outcome_positive :
      0 < repeatedConditionedOutcomeLaw
        G n S D outcome :=
    lt_of_le_of_ne outcome_nonnegative (Ne.symm supported)
  have seed_positive :
      0 < law.weight seed :=
    exactReverseBobConditionalSeedLaw_actual_pos
      (exactRemainingCoordinate_card_pos D remaining) seed
  have atom_positive :
      0 < reweightedSeedPosterior
        law G n S D (seed, outcome) := by
    rw [reweightedSeedPosterior_eq_product]
    exact mul_pos seed_positive outcome_positive
  have actual := reweightedSeedPrefixPriorMarginal_ne_zero_of_positive_atom
    law G n S D positive projection default marker
    (seed, outcome) atom_positive
  exact actual

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
    (default : X)
    (seed : ExactRemainingSeed D)
    (outcome : ExactOutcome X Y A B n)
    (supported :
      repeatedConditionedOutcomeLaw G n S D outcome ≠ 0) :
    exactReverseBobContextMarkedEntropyScore
        G n S D remaining default
        (exactReverseRightSide seed)
        (exactReverseBobContext seed)
        ((exactReverseBobContext seed).sideRank
          ⟨seed.coordinate,
            exactReverseRightSide_coordinate_mem seed⟩)
        outcome =
      finiteRelativeEntropy
        (jointConditional
          (fun atom :
            ((SourceRemainingCoordinate D × Y) ×
              ExactHistoryFlag X Y A B D) × X =>
            exactBobInformationPosterior G n S D
              (atom.1.1, (atom.1.2, atom.2)))
          ((seed.coordinate, outcome.2.1 seed.coordinate.val),
            exactHistoryCode D (seed, outcome)))
        (G.conditionalXGivenY
          (outcome.2.1 seed.coordinate.val)) := by
  have history :
      exactReverseBobMaskedOutcomeContext
        G n S D (exactReverseRightSide seed) default
        ((exactReverseBobContext seed).sideRank
          ⟨seed.coordinate,
            exactReverseRightSide_coordinate_mem seed⟩)
        (exactReverseBobContext seed) outcome =
      exactReverseBobMarkedHistoryContext
        G n S D default seed outcome := by
    simpa only [exactReverseBobContextAt_actual] using
      (exactReverseBobMaskedOutcomeContext_actual
        G n S D default seed outcome)
  have prior_supported :=
    exactReverseBobMarkedPriorMarginal_ne_zero_of_outcome
      G n S D remaining positive default seed outcome supported
  unfold exactReverseBobContextMarkedEntropyScore
  dsimp only
  rw [history]
  rw [exactConditionedReverseBobNextJoint_marked_conditional_eq_sourcePosterior
    G n S D remaining default seed outcome]
  rw [exactReverseBobMarkedPriorConditional_eq_game
    G n S D remaining default seed outcome prior_supported]
