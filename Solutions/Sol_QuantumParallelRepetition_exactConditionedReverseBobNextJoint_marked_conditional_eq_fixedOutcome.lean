import Definitions.Def_quantum_parallel_repetition_game
import Definitions.Def_qpr_core_24
import Theorems.Thm_QuantumParallelRepetition_exactRemainingCoordinate_card_pos
import Theorems.Thm_QuantumParallelRepetition_exactReverseRightSide_coordinate_mem
import Theorems.Thm_QuantumParallelRepetition_exactReverseBobConditionalSeedWeight_nonneg
import Theorems.Thm_QuantumParallelRepetition_exactReverseBobConditionalSeedWeight_sum
import Mathlib.Algebra.BigOperators.Group.Finset.Basic
import Mathlib.Algebra.BigOperators.Group.Finset.Defs
import Mathlib.Algebra.BigOperators.Group.Finset.Piecewise
import Mathlib.Algebra.BigOperators.Ring.Finset
import Mathlib.Algebra.CharP.Defs
import Mathlib.Algebra.Field.Defs
import Mathlib.Algebra.Group.Basic
import Mathlib.Algebra.Group.Defs
import Mathlib.Algebra.GroupWithZero.Basic
import Mathlib.Algebra.GroupWithZero.Defs
import Mathlib.Algebra.GroupWithZero.Units.Basic
import Mathlib.Algebra.Notation.Defs
import Mathlib.Algebra.Order.BigOperators.Group.Finset
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
import Mathlib.Data.Finset.BooleanAlgebra
import Mathlib.Data.Finset.Card
import Mathlib.Data.Finset.Defs
import Mathlib.Data.Finset.Empty
import Mathlib.Data.Finset.Filter
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

open QuantumParallelRepetition.Pinsker
open QuantumParallelRepetition.ClassicalInformation

attribute [local instance] Classical.propDecidable

theorem groupedMass_comp
    {Ω κ θ : Type*} [Fintype Ω] [Fintype κ] [Fintype θ]
    [DecidableEq κ] [DecidableEq θ]
    (f : Ω → κ) (g : κ → θ) (p : Ω → ℝ) :
    groupedMass g (groupedMass f p) =
      groupedMass (g ∘ f) p := by
  funext a
  unfold groupedMass
  simpa only [Finset.mem_filter, Finset.mem_univ, true_and,
    Function.comp_apply] using
    (Finset.sum_fiberwise_eq_sum_filter
      (Finset.univ : Finset Ω)
      (Finset.univ.filter fun b : κ => g b = a)
      f p)

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
set_option maxHeartbeats 2800000
set_option maxRecDepth 2048

open QuantumParallelRepetition.Pinsker
open QuantumParallelRepetition.ClassicalInformation

attribute [local instance] Classical.propDecidable

variable {X Y A B : Type*}
variable [Fintype X] [Fintype Y] [Fintype A] [Fintype B]

theorem reweightedSeedPrefixJoint_as_actual_flagged_pushforward
    {K Ω V : Type*} [Fintype K] [Fintype Ω] [Fintype V]
    {h : ℕ}
    (seedLaw : FiniteEventLaw K)
    (G : Game X Y A B) (n : ℕ) (S : Strategy (G.repeat n))
    (D : Finset (Fin n))
    (projection : K × ExactOutcome X Y A B n →
      Ω × (Fin h → V))
    (target : (Ω × ConditionedAnswerFlag A B D) ×
      (Fin h → V)) :
    reweightedSeedPrefixJoint
        seedLaw G n S D projection target =
      groupedMass
        (fun point : K × ExactOutcome X Y A B n =>
          (((projection point).1,
            repeatedConditionedAnswerFlag G n S D point.2),
            (projection point).2))
        (reweightedSeedPosterior seedLaw G n S D)
        target := by
  classical
  unfold reweightedSeedPrefixJoint
    reweightedSeedFlaggedProjectionLaw groupedMass
  apply Finset.sum_congr
  · ext point
    simp only [Finset.mem_filter, Finset.mem_univ, true_and,
      exactSourcePrefixFlagEquiv]
    change
      ((projection point,
          repeatedConditionedAnswerFlag G n S D point.2) =
        ((target.1.1, target.2), target.1.2)) ↔
      (((projection point).1,
          repeatedConditionedAnswerFlag G n S D point.2),
        (projection point).2) = target
    constructor
    · intro same
      have hprojection :
          projection point = (target.1.1, target.2) :=
        congrArg
          (fun t :
            (Ω × (Fin h → V)) × ConditionedAnswerFlag A B D =>
            t.1) same
      have hflag :
          repeatedConditionedAnswerFlag G n S D point.2 =
            target.1.2 :=
        congrArg
          (fun t :
            (Ω × (Fin h → V)) × ConditionedAnswerFlag A B D =>
            t.2) same
      apply Prod.ext
      · apply Prod.ext
        · exact congrArg
            (fun t : Ω × (Fin h → V) => t.1) hprojection
        · exact hflag
      · exact congrArg
          (fun t : Ω × (Fin h → V) => t.2) hprojection
    · intro same
      have hfixed :
          ((projection point).1,
            repeatedConditionedAnswerFlag G n S D point.2) =
            target.1 :=
        congrArg
          (fun t :
            (Ω × ConditionedAnswerFlag A B D) ×
              (Fin h → V) => t.1) same
      have hsequence : (projection point).2 = target.2 :=
        congrArg
          (fun t :
            (Ω × ConditionedAnswerFlag A B D) ×
              (Fin h → V) => t.2) same
      apply Prod.ext
      · apply Prod.ext
        · exact congrArg
            (fun t : Ω × ConditionedAnswerFlag A B D => t.1)
            hfixed
        · exact hsequence
      · exact congrArg
          (fun t : Ω × ConditionedAnswerFlag A B D => t.2)
          hfixed
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

variable {X Y A B : Type*}
variable [Fintype X] [Fintype Y] [Fintype A] [Fintype B]

end

noncomputable section

open scoped BigOperators

set_option backward.isDefEq.respectTransparency false
set_option maxHeartbeats 5000000
set_option maxRecDepth 2048

open QuantumParallelRepetition.Pinsker
open QuantumParallelRepetition.ClassicalInformation

attribute [local instance] Classical.propDecidable

theorem groupedMass_product_stable_context_fiber
    {K Ω I C V : Type*}
    [Fintype K] [Fintype Ω] [Fintype I] [Fintype C] [Fintype V]
    (index : K → I)
    (context : I → Ω → C)
    (next : I → Ω → V)
    (extract : C → I)
    (extract_context : ∀ (i : I) (outcome : Ω),
      extract (context i outcome) = i)
    (seedWeight : K → ℝ)
    (outcomeWeight : Ω → ℝ)
    (target : C) (value : V) :
    groupedMass
        (fun point : K × Ω =>
          (context (index point.1) point.2,
            next (index point.1) point.2))
        (fun point : K × Ω =>
          seedWeight point.1 * outcomeWeight point.2)
        (target, value) =
      groupedMass index seedWeight (extract target) *
        groupedMass
          (fun outcome : Ω =>
            (context (extract target) outcome,
              next (extract target) outcome))
          outcomeWeight (target, value) := by
  classical
  unfold groupedMass
  simp only [Finset.sum_filter, Fintype.sum_prod_type]
  rw [Finset.sum_mul]
  apply Finset.sum_congr rfl
  intro seed _
  by_cases same : index seed = extract target
  · simp [same, Prod.mk.injEq, Finset.mul_sum, mul_ite]
  · have different (outcome : Ω) :
        context (index seed) outcome ≠ target := by
        intro equal
        apply same
        calc
          index seed = extract (context (index seed) outcome) :=
            (extract_context (index seed) outcome).symm
          _ = extract target := congrArg extract equal
    simp [same, different, Prod.mk.injEq]

theorem jointConditional_product_stable_context_seed
    {K Ω I C V : Type*}
    [Fintype K] [Fintype Ω] [Fintype I] [Fintype C] [Fintype V]
    (index : K → I)
    (context : I → Ω → C)
    (next : I → Ω → V)
    (extract : C → I)
    (extract_context : ∀ (i : I) (outcome : Ω),
      extract (context i outcome) = i)
    (seedWeight : K → ℝ)
    (outcomeWeight : Ω → ℝ)
    (seed : K) (target : C)
    (target_index : extract target = index seed)
    (nonzero : groupedMass index seedWeight (index seed) ≠ 0) :
    jointConditional
        (groupedMass
          (fun point : K × Ω =>
            (context (index point.1) point.2,
              next (index point.1) point.2))
          (fun point : K × Ω =>
            seedWeight point.1 * outcomeWeight point.2))
        target =
      jointConditional
        (groupedMass
          (fun outcome : Ω =>
            (context (index seed) outcome,
              next (index seed) outcome))
          outcomeWeight)
        target := by
  classical
  have atom (value : V) :
      groupedMass
          (fun point : K × Ω =>
            (context (index point.1) point.2,
              next (index point.1) point.2))
          (fun point : K × Ω =>
            seedWeight point.1 * outcomeWeight point.2)
          (target, value) =
        groupedMass index seedWeight (index seed) *
          groupedMass
            (fun outcome : Ω =>
              (context (index seed) outcome,
                next (index seed) outcome))
            outcomeWeight (target, value) := by
    simpa only [target_index] using
      groupedMass_product_stable_context_fiber
        index context next extract extract_context
        seedWeight outcomeWeight target value
  funext value
  unfold jointConditional jointFirstMarginal
  simp_rw [atom]
  rw [← Finset.mul_sum]
  exact mul_div_mul_left _ _ nonzero

theorem groupedMass_pos_of_supported_atom
    {K I : Type*} [Fintype K] [Fintype I] [DecidableEq I]
    (code : K → I) (weight : K → ℝ)
    (nonnegative : ∀ seed : K, 0 ≤ weight seed)
    (seed : K) (positive : 0 < weight seed) :
    0 < groupedMass code weight (code seed) := by
  unfold groupedMass
  apply lt_of_lt_of_le positive
  apply Finset.single_le_sum
  · intro other _
    exact nonnegative other
  · exact Finset.mem_filter.mpr
      ⟨Finset.mem_univ seed, rfl⟩

variable {X Y A B : Type*}
variable [Fintype X] [Fintype Y] [Fintype A] [Fintype B]

theorem reweightedSeedPrefixNextJoint_as_actual_pushforward
    {K Ω V : Type*} [Fintype K] [Fintype Ω] [Fintype V]
    {h : ℕ}
    (seedLaw : FiniteEventLaw K)
    (G : Game X Y A B) (n : ℕ) (S : Strategy (G.repeat n))
    (D : Finset (Fin n))
    (projection : K × ExactOutcome X Y A B n →
      Ω × (Fin h → V))
    (default : V) (marker : Fin h) :
    groupedMass (exactPrefixNextCode default marker)
        (reweightedSeedPrefixJoint
          seedLaw G n S D projection) =
      groupedMass
        (fun point : K × ExactOutcome X Y A B n =>
          exactPrefixNextCode default marker
            (((projection point).1,
              repeatedConditionedAnswerFlag
                G n S D point.2),
              (projection point).2))
        (reweightedSeedPosterior seedLaw G n S D) := by
  classical
  let augmented :
      K × ExactOutcome X Y A B n →
        (Ω × ConditionedAnswerFlag A B D) ×
          (Fin h → V) :=
    fun point =>
      (((projection point).1,
        repeatedConditionedAnswerFlag G n S D point.2),
        (projection point).2)
  have actual :
      reweightedSeedPrefixJoint
          seedLaw G n S D projection =
        groupedMass augmented
          (reweightedSeedPosterior seedLaw G n S D) := by
    funext target
    exact reweightedSeedPrefixJoint_as_actual_flagged_pushforward
      seedLaw G n S D projection target
  rw [actual]
  exact groupedMass_comp augmented
    (exactPrefixNextCode default marker)
    (reweightedSeedPosterior seedLaw G n S D)

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

theorem exactReverseBobMaskedOutcomeContext_extract
    (G : Game X Y A B) (n : ℕ) (S : Strategy (G.repeat n))
    (D : Finset (Fin n))
    (side : Finset (SourceRemainingCoordinate D))
    (default : X) (marker : Fin side.card)
    (context : ExactReverseSideContext
      (SourceRemainingCoordinate D) side)
    (outcome : ExactOutcome X Y A B n) :
    (exactReverseBobMaskedOutcomeContext
      G n S D side default marker context outcome).1.1.1 =
      context := by
  rfl

theorem exactConditionedReverseBobNextJoint_marked_mixture
    (G : Game X Y A B) (n : ℕ) (S : Strategy (G.repeat n))
    (D : Finset (Fin n))
    (remaining : 0 < (Finset.univ \ D).card)
    (side : Finset (SourceRemainingCoordinate D))
    (default : X) (marker : Fin side.card) :
    groupedMass (exactPrefixNextCode default marker)
        (exactConditionedReverseBobNextJoint
          G n S D remaining side) =
      groupedMass
        (fun point : ExactJointOutcome X Y A B D =>
          (exactReverseBobMaskedOutcomeContext
            G n S D side default marker
            (exactReverseBobContextAt side point.1)
            point.2,
            point.2.1
              (((exactReverseBobContextAt
                side point.1).sideRank.symm marker).val.val)))
        (fun point : ExactJointOutcome X Y A B D =>
          (exactReverseBobConditionalSeedLaw
            (exactRemainingCoordinate_card_pos
              D remaining) side).weight point.1 *
            repeatedConditionedOutcomeLaw G n S D point.2) := by
  classical
  let law := exactReverseBobConditionalSeedLaw
    (exactRemainingCoordinate_card_pos D remaining) side
  let projection := exactReverseBobSourceProjection
    (X := X) (Y := Y) (A := A) (B := B) D side
  change
    groupedMass (exactPrefixNextCode default marker)
        (reweightedSeedPrefixJoint
          law G n S D projection) = _
  rw [reweightedSeedPrefixNextJoint_as_actual_pushforward]
  funext target
  unfold groupedMass
  apply Finset.sum_congr
  · ext point
    simp [exactPrefixNextCode,
      exactReverseBobMaskedOutcomeContext,
      exactReverseBobContextOutcomeProjection,
      exactReverseBobSourceProjection,
      projection]
  · intro point _
    exact reweightedSeedPosterior_eq_product
      law G n S D point

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

end

end QuantumParallelRepetition


open QuantumParallelRepetition
open scoped ComplexOrder Matrix BigOperators InnerProductSpace
open Complex Matrix Finset
open scoped BigOperators
set_option backward.isDefEq.respectTransparency false
set_option maxHeartbeats 6000000
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
        (groupedMass
          (fun outcome : ExactOutcome X Y A B n =>
            (exactReverseBobMarkedHistoryContext
              G n S D default seed outcome,
              outcome.1 seed.coordinate.val))
          (repeatedConditionedOutcomeLaw G n S D))
        (exactReverseBobMarkedHistoryContext
          G n S D default seed reference) := by
  classical
  let side := exactReverseRightSide seed
  let marker : Fin side.card :=
    (exactReverseBobContext seed).sideRank
      ⟨seed.coordinate,
        exactReverseRightSide_coordinate_mem seed⟩
  let law := exactReverseBobConditionalSeedLaw
    (exactRemainingCoordinate_card_pos D remaining) side
  let index : ExactRemainingSeed D →
      ExactReverseSideContext
        (SourceRemainingCoordinate D) side :=
    exactReverseBobContextAt side
  let context :
      ExactReverseSideContext
        (SourceRemainingCoordinate D) side →
          ExactOutcome X Y A B n →
            ExactReverseBobNextContext X Y A B D side :=
    exactReverseBobMaskedOutcomeContext
      G n S D side default marker
  let next :
      ExactReverseSideContext
        (SourceRemainingCoordinate D) side →
          ExactOutcome X Y A B n → X :=
    fun reverseContext outcome =>
      outcome.1
        ((reverseContext.sideRank.symm marker).val.val)
  let extract :
      ExactReverseBobNextContext X Y A B D side →
        ExactReverseSideContext
          (SourceRemainingCoordinate D) side :=
    fun target => target.1.1.1
  let target :=
    exactReverseBobMarkedHistoryContext
      G n S D default seed reference
  have extract_context :
      ∀ (reverseContext : ExactReverseSideContext
          (SourceRemainingCoordinate D) side)
        (outcome : ExactOutcome X Y A B n),
        extract (context reverseContext outcome) = reverseContext := by
    intro reverseContext outcome
    exact exactReverseBobMaskedOutcomeContext_extract
      G n S D side default marker reverseContext outcome
  have target_index : extract target = index seed := by
    rfl
  have positive :
      0 < groupedMass index law.weight (index seed) := by
    apply groupedMass_pos_of_supported_atom
      index law.weight law.weight_nonneg seed
    exact exactReverseBobConditionalSeedLaw_actual_pos
      (exactRemainingCoordinate_card_pos D remaining) seed
  have stable := jointConditional_product_stable_context_seed
    index context next extract extract_context
    law.weight (repeatedConditionedOutcomeLaw G n S D)
    seed target target_index (ne_of_gt positive)
  rw [exactConditionedReverseBobNextJoint_marked_mixture
    G n S D remaining side default marker]
  change
    jointConditional
        (groupedMass
          (fun point : ExactJointOutcome X Y A B D =>
            (context (index point.1) point.2,
              next (index point.1) point.2))
          (fun point : ExactJointOutcome X Y A B D =>
            law.weight point.1 *
              repeatedConditionedOutcomeLaw
                G n S D point.2))
        target =
      jointConditional
        (groupedMass
          (fun outcome : ExactOutcome X Y A B n =>
            (exactReverseBobMarkedHistoryContext
              G n S D default seed outcome,
              outcome.1 seed.coordinate.val))
          (repeatedConditionedOutcomeLaw G n S D))
        target
  calc
    jointConditional
        (groupedMass
          (fun point : ExactJointOutcome X Y A B D =>
            (context (index point.1) point.2,
              next (index point.1) point.2))
          (fun point : ExactJointOutcome X Y A B D =>
            law.weight point.1 *
              repeatedConditionedOutcomeLaw
                G n S D point.2))
        target =
      jointConditional
        (groupedMass
          (fun outcome : ExactOutcome X Y A B n =>
            (context (index seed) outcome,
              next (index seed) outcome))
          (repeatedConditionedOutcomeLaw G n S D))
        target := by
          convert stable using 1
          · congr 1
            exact exactGroupedMass_decidableEq_irrel
              _ _ _ _
          · congr 1
            exact exactGroupedMass_decidableEq_irrel
              _ _ _ _
    _ = jointConditional
        (groupedMass
          (fun outcome : ExactOutcome X Y A B n =>
            (exactReverseBobMarkedHistoryContext
              G n S D default seed outcome,
              outcome.1 seed.coordinate.val))
          (repeatedConditionedOutcomeLaw G n S D))
        target := by
          congr 1
          apply congrArg
            (fun code =>
              groupedMass code
                (repeatedConditionedOutcomeLaw G n S D))
          funext outcome
          apply Prod.ext
          · exact exactReverseBobMaskedOutcomeContext_actual
              G n S D default seed outcome
          · simp [next, index, side, marker]
