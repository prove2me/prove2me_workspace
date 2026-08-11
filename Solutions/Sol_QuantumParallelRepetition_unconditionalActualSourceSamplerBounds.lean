import Definitions.Def_quantum_parallel_repetition_game
import Definitions.Def_qpr_core_24
import Theorems.Thm_QuantumParallelRepetition_exactSourceSharedFlagWeight_nonneg
import Theorems.Thm_QuantumParallelRepetition_exactSourceAliceSampleTuple_expectation
import Theorems.Thm_QuantumParallelRepetition_exactLocallySampleableLaw_absolute_continuous_roundedJA
import Theorems.Thm_QuantumParallelRepetition_exact_source_equation_twenty_seven_support_preserving_unconditional
import Mathlib.Algebra.BigOperators.Field
import Mathlib.Algebra.BigOperators.Group.Finset.Basic
import Mathlib.Algebra.BigOperators.Group.Finset.Defs
import Mathlib.Algebra.BigOperators.Group.Finset.Piecewise
import Mathlib.Algebra.BigOperators.Group.Finset.Sigma
import Mathlib.Algebra.BigOperators.Ring.Finset
import Mathlib.Algebra.Field.Defs
import Mathlib.Algebra.Group.Basic
import Mathlib.Algebra.Group.Defs
import Mathlib.Algebra.Group.Nat.Defs
import Mathlib.Algebra.GroupWithZero.Basic
import Mathlib.Algebra.GroupWithZero.Defs
import Mathlib.Algebra.GroupWithZero.NeZero
import Mathlib.Algebra.GroupWithZero.Units.Basic
import Mathlib.Algebra.NeZero
import Mathlib.Algebra.Notation.Defs
import Mathlib.Algebra.Order.BigOperators.Group.Finset
import Mathlib.Algebra.Order.Field.Basic
import Mathlib.Algebra.Order.Group.Unbundled.Abs
import Mathlib.Algebra.Order.GroupWithZero.Unbundled.Basic
import Mathlib.Algebra.Order.Monoid.Defs
import Mathlib.Algebra.Order.Ring.Abs
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
import Mathlib.Data.Finset.Card
import Mathlib.Data.Finset.Defs
import Mathlib.Data.Finset.Empty
import Mathlib.Data.Finset.Filter
import Mathlib.Data.Finset.SDiff
import Mathlib.Data.Fintype.Basic
import Mathlib.Data.Fintype.BigOperators
import Mathlib.Data.Fintype.Card
import Mathlib.Data.Fintype.Defs
import Mathlib.Data.Fintype.Perm
import Mathlib.Data.Fintype.Pi
import Mathlib.Data.Fintype.Prod
import Mathlib.Data.Fintype.Sets
import Mathlib.Data.Int.Cast.Defs
import Mathlib.Data.Matrix.Basic
import Mathlib.Data.Nat.Cast.Defs
import Mathlib.Data.Nat.Init
import Mathlib.Data.Real.Basic
import Mathlib.Data.SetLike.Basic
import Mathlib.LinearAlgebra.Matrix.Kronecker
import Mathlib.Logic.Equiv.Defs
import Mathlib.MeasureTheory.Measure.MeasureSpace
import Mathlib.Order.Defs.PartialOrder
import Mathlib.Order.Lattice
import Mathlib.Tactic.FieldSimp.Lemmas
import Mathlib.Tactic.NormNum.Basic
import Mathlib.Tactic.NormNum.Inv
import Mathlib.Tactic.NormNum.Result
import Mathlib.Tactic.Ring.Basic
import Mathlib.Tactic.Ring.Common
import Mathlib.Topology.Defs.Filter

namespace QuantumParallelRepetition

open scoped ComplexOrder Matrix BigOperators InnerProductSpace
open Complex Matrix Finset

noncomputable section

open scoped BigOperators

open QuantumParallelRepetition.Pinsker

theorem finiteTotalVariation_comm
    {ι : Type*} [Fintype ι]
    (p q : ι → ℝ) :
    finiteTotalVariation p q = finiteTotalVariation q p := by
  unfold finiteTotalVariation
  congr 1
  apply Finset.sum_congr rfl
  intro i _
  exact abs_sub_comm (p i) (q i)

end

noncomputable section

open scoped BigOperators ComplexOrder Kronecker MatrixOrder
  Matrix.Norms.L2Operator InnerProductSpace

section ActualSharedFlag

variable {X Y A B dA dB J : Type}
variable [Fintype X] [Fintype Y] [Fintype A] [Fintype B]
variable [Fintype dA] [Fintype dB] [DecidableEq dA] [DecidableEq dB]
variable [Fintype J] [DecidableEq J]

theorem flaggedQuestionWeight_nonneg
    (G : Game X Y A B) (flagWeight : J → ℝ)
    (nonnegative : ∀ j, 0 ≤ flagWeight j)
    (ω : J × (X × Y)) :
    0 ≤ flaggedQuestionWeight G flagWeight ω :=
  mul_nonneg (nonnegative ω.1)
    (G.weight_nonneg ω.2.1 ω.2.2)

end ActualSharedFlag

end

noncomputable section

open scoped BigOperators

set_option backward.isDefEq.respectTransparency false
set_option maxHeartbeats 1500000
set_option maxRecDepth 2048

open QuantumParallelRepetition.Pinsker
open QuantumParallelRepetition.ClassicalSampling
open QuantumParallelRepetition.ClassicalInformation

attribute [local instance] Classical.propDecidable

variable {X Y A B : Type}
variable [Fintype X] [Fintype Y] [Fintype A] [Fintype B]

theorem exactUniformPermutationProbability_eq_indicator_sum
    {ι : Type*} [Fintype ι] [DecidableEq ι]
    (event : Equiv.Perm ι → Prop) :
    uniformPermutationProbability event =
      (∑ permutation : Equiv.Perm ι,
        if event permutation then (1 : ℝ) else 0) /
        (Fintype.card (Equiv.Perm ι) : ℝ) := by
  classical
  unfold uniformPermutationProbability
  congr 1
  exact (Finset.sum_boole (R := ℝ) event
    (Finset.univ : Finset (Equiv.Perm ι))).symm

theorem exactSourceSharedFlag_mismatch_eq
    (G : Game X Y A B) (n : ℕ)
    (D : Finset (Fin n)) (denominator : ℕ)
    (numerator : ExactLocalSamplerIndex X Y D →
      ExactHistoryFlag X Y A B D → ℕ)
    (nonempty : ∀ k,
      (rationalMarked denominator (numerator k)).Nonempty) :
    (∑ ω :
      ExactSourceSharedFlag X Y A B D denominator × (X × Y),
      flaggedQuestionWeight G
        (exactSourceSharedFlagWeight D denominator) ω *
        if exactSourcePermutationMatched
            D denominator numerator nonempty ω then 0 else 1) =
      exactLocallySampleablePermutationMismatch
        G n D denominator numerator nonempty := by
  classical
  have point
      (i : SourceRemainingCoordinate D) (x : X) (y : Y) :
      (∑ permutation :
        Equiv.Perm
          (ExactHistoryFlag X Y A B D × Fin denominator),
        ((1 / (Fintype.card (SourceRemainingCoordinate D) : ℝ)) *
          (1 / (Fintype.card
            (Equiv.Perm
              (ExactHistoryFlag X Y A B D ×
                Fin denominator)) : ℝ))) *
          G.questionWeight x y *
          if rationalPermutationOutput denominator
              (numerator (.inl (i, x)))
              (nonempty (.inl (i, x))) permutation =
            rationalPermutationOutput denominator
              (numerator (.inr (i, y)))
              (nonempty (.inr (i, y))) permutation
          then 0 else 1) =
        (G.questionWeight x y /
          (Fintype.card (SourceRemainingCoordinate D) : ℝ)) *
          uniformPermutationProbability
            (fun permutation :
              Equiv.Perm
                (ExactHistoryFlag X Y A B D ×
                  Fin denominator) =>
              rationalPermutationOutput denominator
                  (numerator (.inl (i, x)))
                  (nonempty (.inl (i, x))) permutation ≠
                rationalPermutationOutput denominator
                  (numerator (.inr (i, y)))
                  (nonempty (.inr (i, y))) permutation) := by
    have probability :=
      exactUniformPermutationProbability_eq_indicator_sum
        (ι := ExactHistoryFlag X Y A B D × Fin denominator)
        (fun permutation :
          Equiv.Perm
            (ExactHistoryFlag X Y A B D × Fin denominator) =>
          rationalPermutationOutput denominator
              (numerator (.inl (i, x)))
              (nonempty (.inl (i, x))) permutation ≠
            rationalPermutationOutput denominator
              (numerator (.inr (i, y)))
              (nonempty (.inr (i, y))) permutation)
    rw [probability, Finset.sum_div, Finset.mul_sum]
    apply Finset.sum_congr rfl
    intro permutation _
    by_cases matched :
      rationalPermutationOutput denominator
          (numerator (.inl (i, x)))
          (nonempty (.inl (i, x))) permutation =
        rationalPermutationOutput denominator
          (numerator (.inr (i, y)))
          (nonempty (.inr (i, y))) permutation
    · simp [matched]
    · simp [matched]
      ring
  unfold exactLocallySampleablePermutationMismatch
  simp only [flaggedQuestionWeight,
    exactSourceSharedFlagWeight,
    localQuestionWeight,
    exactSourcePermutationMatched,
    exactSourceAlicePermutationHistory,
    exactSourceBobPermutationHistory,
    Fintype.sum_prod_type, decide_eq_true_eq]
  apply Finset.sum_congr rfl
  intro i _
  rw [Finset.sum_comm]
  apply Finset.sum_congr rfl
  intro x _
  rw [Finset.sum_comm]
  apply Finset.sum_congr rfl
  intro y _
  exact point i x y

theorem exactSourceSharedFlag_mismatch_le
    (G : Game X Y A B) (n : ℕ)
    (D : Finset (Fin n)) (denominator : ℕ)
    (numerator : ExactLocalSamplerIndex X Y D →
      ExactHistoryFlag X Y A B D → ℕ)
    (nonempty : ∀ k,
      (rationalMarked denominator (numerator k)).Nonempty)
    {lam : ℝ}
    (mismatch :
      exactLocallySampleablePermutationMismatch
        G n D denominator numerator nonempty ≤ 4 * lam) :
    (∑ ω :
      ExactSourceSharedFlag X Y A B D denominator × (X × Y),
      flaggedQuestionWeight G
        (exactSourceSharedFlagWeight D denominator) ω *
        if exactSourcePermutationMatched
            D denominator numerator nonempty ω then 0 else 1) ≤
      4 * lam := by
  rw [exactSourceSharedFlag_mismatch_eq
    G n D denominator numerator nonempty]
  exact mismatch

end

noncomputable section

open scoped BigOperators

set_option backward.isDefEq.respectTransparency false
set_option maxHeartbeats 2800000
set_option maxRecDepth 2048

open QuantumParallelRepetition.Pinsker
open QuantumParallelRepetition.ClassicalInformation

attribute [local instance] Classical.propDecidable

theorem finiteGroupedExpectation_eq_atom_sum
    {Ω C : Type*} [Fintype Ω] [Fintype C] [DecidableEq C]
    (code : Ω → C) (mass : Ω → ℝ) (value : C → ℝ) :
    (∑ target : C, groupedMass code mass target * value target) =
      ∑ outcome : Ω, mass outcome * value (code outcome) := by
  classical
  unfold groupedMass
  calc
    (∑ target : C,
      (∑ outcome ∈
        (Finset.univ.filter fun outcome : Ω =>
          code outcome = target), mass outcome) * value target) =
      ∑ target : C,
        ∑ outcome ∈
          (Finset.univ.filter fun outcome : Ω =>
            code outcome = target),
          mass outcome * value (code outcome) := by
        apply Finset.sum_congr rfl
        intro target _
        rw [Finset.sum_mul]
        apply Finset.sum_congr rfl
        intro outcome houtcome
        have hcode : code outcome = target :=
          (Finset.mem_filter.mp houtcome).2
        rw [hcode]
    _ = ∑ outcome : Ω, mass outcome * value (code outcome) :=
      Finset.sum_fiberwise Finset.univ code
        (fun outcome => mass outcome * value (code outcome))

variable {X Y A B : Type*}
variable [Fintype X] [Fintype Y] [Fintype A] [Fintype B]

end

noncomputable section

open scoped BigOperators

set_option backward.isDefEq.respectTransparency false
set_option maxHeartbeats 1600000
set_option maxRecDepth 2048

open QuantumParallelRepetition.Pinsker
open QuantumParallelRepetition.ClassicalSampling
open QuantumParallelRepetition.ClassicalInformation

attribute [local instance] Classical.propDecidable

variable {X Y A B : Type}
variable [Fintype X] [Fintype Y] [Fintype A] [Fintype B]

theorem exactSourceAliceSampleTuple_groupedMass
    (G : Game X Y A B) (n : ℕ) (D : Finset (Fin n))
    (denominator : ℕ)
    (numerator : ExactLocalSamplerIndex X Y D →
      ExactHistoryFlag X Y A B D → ℕ)
    (normalized : ∀ k, (∑ r, numerator k r) = denominator)
    (nonempty : ∀ k,
      (rationalMarked denominator (numerator k)).Nonempty)
    (history : ExactLocallySampleableTuple X Y A B D) :
    groupedMass
      (exactSourceAliceSampleTuple
        D denominator numerator nonempty)
      (flaggedQuestionWeight G
        (exactSourceSharedFlagWeight D denominator)) history =
      exactLocallySampleableJARounded
        G n D denominator numerator history := by
  classical
  have expectation := exactSourceAliceSampleTuple_expectation
    G n D denominator numerator normalized nonempty
    (fun candidate => if candidate = history then (1 : ℝ) else 0)
  simpa [groupedMass, Finset.sum_filter, mul_ite] using expectation

end

noncomputable section

open scoped BigOperators

open QuantumParallelRepetition.Pinsker
open QuantumParallelRepetition.ClassicalInformation

attribute [local instance] Classical.propDecidable

variable {Ω T : Type*} [Fintype Ω] [Fintype T] [DecidableEq T]

theorem exactFiniteFiberLift_absolute_groupedMass
    (projection : Ω → T) (original : Ω → ℝ) (target : T → ℝ)
    (original_nonnegative : ∀ outcome, 0 ≤ original outcome)
    (supported : ∀ point,
      groupedMass projection original point = 0 → target point = 0)
    (point : T) :
    groupedMass projection
      (fun outcome =>
        |original outcome -
          exactFiniteFiberLift projection original target outcome|)
      point =
        |groupedMass projection original point - target point| := by
  classical
  by_cases empty : groupedMass projection original point = 0
  · have vanishes : ∀ outcome,
        outcome ∈ (Finset.univ.filter fun outcome : Ω =>
          projection outcome = point) → original outcome = 0 := by
      intro outcome member
      exact
        (Finset.sum_eq_zero_iff_of_nonneg
          (fun outcome _ => original_nonnegative outcome)).mp
          (show
            (∑ outcome ∈
              (Finset.univ.filter fun outcome : Ω =>
                projection outcome = point),
              original outcome) = 0 from empty)
          outcome member
    unfold groupedMass
    rw [Finset.sum_eq_zero (fun outcome member => by
      have zero := vanishes outcome member
      simp [exactFiniteFiberLift, zero])]
    simpa [supported point empty, groupedMass] using
      (congrArg abs empty).symm
  · have pointwise (outcome : Ω)
        (member : outcome ∈
          (Finset.univ.filter fun outcome : Ω =>
            projection outcome = point)) :
        |original outcome -
          exactFiniteFiberLift projection original target outcome| =
          original outcome *
            |groupedMass projection original point - target point| /
              groupedMass projection original point := by
      have same : projection outcome = point :=
        (Finset.mem_filter.mp member).2
      have mass_nonnegative :
          0 ≤ groupedMass projection original point := by
        unfold groupedMass
        exact Finset.sum_nonneg
          (fun outcome _ => original_nonnegative outcome)
      have mass_positive :
          0 < groupedMass projection original point :=
        lt_of_le_of_ne mass_nonnegative (Ne.symm empty)
      rw [exactFiniteFiberLift, same]
      rw [show original outcome -
          target point * original outcome /
            groupedMass projection original point =
          original outcome *
            (groupedMass projection original point - target point) /
              groupedMass projection original point by
            field_simp]
      rw [abs_div, abs_mul,
        abs_of_nonneg (original_nonnegative outcome),
        abs_of_pos mass_positive]
    change
      (∑ outcome ∈
        (Finset.univ.filter fun outcome : Ω =>
          projection outcome = point),
        |original outcome -
          exactFiniteFiberLift projection original target outcome|) =
        |groupedMass projection original point - target point|
    calc
      (∑ outcome ∈
        (Finset.univ.filter fun outcome : Ω =>
          projection outcome = point),
        |original outcome -
          exactFiniteFiberLift projection original target outcome|) =
        ∑ outcome ∈
          (Finset.univ.filter fun outcome : Ω =>
            projection outcome = point),
          original outcome *
            |groupedMass projection original point - target point| /
              groupedMass projection original point := by
          apply Finset.sum_congr rfl
          exact pointwise
      _ = groupedMass projection original point *
          |groupedMass projection original point - target point| /
            groupedMass projection original point := by
          rw [← Finset.sum_div, ← Finset.sum_mul]
          rfl
      _ = |groupedMass projection original point - target point| := by
          field_simp

theorem exactFiniteFiberLift_totalVariation
    (projection : Ω → T) (original : Ω → ℝ) (target : T → ℝ)
    (original_nonnegative : ∀ outcome, 0 ≤ original outcome)
    (supported : ∀ point,
      groupedMass projection original point = 0 → target point = 0) :
    finiteTotalVariation original
      (exactFiniteFiberLift projection original target) =
        finiteTotalVariation (groupedMass projection original) target := by
  unfold finiteTotalVariation
  congr 1
  calc
    (∑ outcome : Ω,
      |original outcome -
        exactFiniteFiberLift projection original target outcome|) =
      ∑ point : T,
        groupedMass projection
          (fun outcome =>
            |original outcome -
              exactFiniteFiberLift projection original target outcome|)
          point := by
        simpa using
          (finiteGroupedExpectation_eq_atom_sum projection
            (fun outcome =>
              |original outcome -
                exactFiniteFiberLift
                  projection original target outcome|)
            (fun _ => (1 : ℝ))).symm
    _ = ∑ point : T,
      |groupedMass projection original point - target point| := by
        simp_rw [exactFiniteFiberLift_absolute_groupedMass
          projection original target original_nonnegative supported]

end

noncomputable section

open scoped BigOperators ComplexOrder Kronecker MatrixOrder
  Matrix.Norms.L2Operator InnerProductSpace

set_option backward.isDefEq.respectTransparency false
set_option maxHeartbeats 1800000
set_option maxRecDepth 2048

open QuantumParallelRepetition.Pinsker
open QuantumParallelRepetition.ClassicalSampling
open QuantumParallelRepetition.ClassicalInformation

attribute [local instance] Classical.propDecidable

variable {X Y A B dA dB : Type}
variable [Fintype X] [Fintype Y] [Fintype A] [Fintype B]
variable [Fintype dA] [Fintype dB] [DecidableEq dA] [DecidableEq dB]

theorem exactSourceAliceFlagCoupling_supported
    (G : Game X Y A B) (n : ℕ) (S : Strategy (G.repeat n))
    (D : Finset (Fin n))
    (remaining : 0 < (Finset.univ \ D).card)
    (positive : 0 < repeatedPostselectionMass G n S D)
    (base : ExactHistoryFlag X Y A B D)
    (denominator : ℕ) (denominator_positive : 0 < denominator)
    (numerator : ExactLocalSamplerIndex X Y D →
      ExactHistoryFlag X Y A B D → ℕ)
    (normalized : ∀ index,
      (∑ history, numerator index history) = denominator)
    (preserves : ∀ index history,
      0 < exactLocalConditionalFamily D base
          (exactLocallySampleableLaw G n S D) index history →
        0 < numerator index history)
    (nonempty : ∀ index,
      (rationalMarked denominator (numerator index)).Nonempty)
    (history : ExactLocallySampleableTuple X Y A B D) :
    groupedMass
        (exactSourceAliceSampleTuple
          D denominator numerator nonempty)
        (flaggedQuestionWeight G
          (exactSourceSharedFlagWeight D denominator)) history = 0 →
      exactLocallySampleableLaw G n S D history = 0 := by
  rw [exactSourceAliceSampleTuple_groupedMass
    G n D denominator numerator normalized nonempty]
  exact exactLocallySampleableLaw_absolute_continuous_roundedJA
    G n S D remaining positive base denominator denominator_positive
    numerator preserves history

theorem exactSourceAliceFlagCoupling_totalVariation
    (G : Game X Y A B) (n : ℕ) (S : Strategy (G.repeat n))
    (D : Finset (Fin n))
    (remaining : 0 < (Finset.univ \ D).card)
    (positive : 0 < repeatedPostselectionMass G n S D)
    (base : ExactHistoryFlag X Y A B D)
    (denominator : ℕ) (denominator_positive : 0 < denominator)
    (numerator : ExactLocalSamplerIndex X Y D →
      ExactHistoryFlag X Y A B D → ℕ)
    (normalized : ∀ index,
      (∑ history, numerator index history) = denominator)
    (preserves : ∀ index history,
      0 < exactLocalConditionalFamily D base
          (exactLocallySampleableLaw G n S D) index history →
        0 < numerator index history)
    (nonempty : ∀ index,
      (rationalMarked denominator (numerator index)).Nonempty) :
    finiteTotalVariation
      (flaggedQuestionWeight G
        (exactSourceSharedFlagWeight D denominator))
      (exactSourceAliceFlagCoupling
        G n S D denominator numerator nonempty) =
      finiteTotalVariation
        (exactLocallySampleableJARounded
          G n D denominator numerator)
        (exactLocallySampleableLaw G n S D) := by
  change
    finiteTotalVariation
      (flaggedQuestionWeight G
        (exactSourceSharedFlagWeight D denominator))
      (exactFiniteFiberLift
        (exactSourceAliceSampleTuple
          D denominator numerator nonempty)
        (flaggedQuestionWeight G
          (exactSourceSharedFlagWeight D denominator))
        (exactLocallySampleableLaw G n S D)) = _
  rw [exactFiniteFiberLift_totalVariation
    (exactSourceAliceSampleTuple
      D denominator numerator nonempty)
    (flaggedQuestionWeight G
      (exactSourceSharedFlagWeight D denominator))
    (exactLocallySampleableLaw G n S D)
    (flaggedQuestionWeight_nonneg G
      (exactSourceSharedFlagWeight D denominator)
      (exactSourceSharedFlagWeight_nonneg D denominator))
    (exactSourceAliceFlagCoupling_supported
      G n S D remaining positive base denominator denominator_positive
      numerator normalized preserves nonempty)]
  congr 1
  funext history
  exact exactSourceAliceSampleTuple_groupedMass
    G n D denominator numerator normalized nonempty history

end

end QuantumParallelRepetition


open QuantumParallelRepetition
open scoped ComplexOrder Matrix BigOperators InnerProductSpace
open Complex Matrix Finset
open scoped BigOperators ComplexOrder Kronecker MatrixOrder
  Matrix.Norms.L2Operator InnerProductSpace
open QuantumParallelRepetition.ClassicalSampling
open QuantumParallelRepetition.Pinsker
attribute [local instance] Classical.propDecidable

theorem solution
    {X Y A B : Type}
    [Fintype X] [Fintype Y] [Fintype A] [Fintype B]
    (G : Game X Y A B)
    (n : ℕ) (S : Strategy (G.repeat n))
    (D : Finset (Fin n))
    (remaining : 0 < (Finset.univ \ D).card)
    (positive : 0 < repeatedPostselectionMass G n S D)
    (base : ExactHistoryFlag X Y A B D)
    (gamma : ℝ) (gamma_positive : 0 < gamma) :
    ∃ (denominator : ℕ), 0 < denominator ∧
      ∃ numerator : ExactLocalSamplerIndex X Y D →
        ExactHistoryFlag X Y A B D → ℕ,
        (∀ index, (∑ history, numerator index history) = denominator) ∧
        (∀ index history,
          0 < exactLocalConditionalFamily D base
              (exactLocallySampleableLaw G n S D)
              index history →
            0 < numerator index history) ∧
        ∃ nonempty : ∀ index,
            (rationalMarked denominator (numerator index)).Nonempty,
          QuantumParallelRepetition.Pinsker.finiteTotalVariation
              (flaggedQuestionWeight G
                (exactSourceSharedFlagWeight D denominator))
              (exactSourceAliceFlagCoupling
                G n S D denominator numerator nonempty) ≤
            exactSourcePinskerRate G n S D + gamma ∧
          (∑ outcome :
            ExactSourceSharedFlag X Y A B D denominator ×
              (X × Y),
            flaggedQuestionWeight G
              (exactSourceSharedFlagWeight D denominator) outcome *
              if exactSourcePermutationMatched
                  D denominator numerator nonempty outcome
                then 0 else 1) ≤
            4 * (exactSourcePinskerRate G n S D + gamma) := by
  classical
  obtain ⟨denominator, denominator_positive, numerator,
      numerator_normalized, _approximation, preserves, nonempty,
      rounded_alice, _rounded_bob, sampler_mismatch⟩ :=
    exact_source_equation_twenty_seven_support_preserving_unconditional
      G n S D remaining positive base gamma_positive
  refine ⟨denominator, denominator_positive, numerator,
    numerator_normalized, preserves, nonempty, ?_, ?_⟩
  · rw [exactSourceAliceFlagCoupling_totalVariation
      G n S D remaining positive base denominator denominator_positive
      numerator numerator_normalized preserves nonempty,
      finiteTotalVariation_comm]
    exact rounded_alice
  · exact exactSourceSharedFlag_mismatch_le
      G n D denominator numerator nonempty sampler_mismatch
