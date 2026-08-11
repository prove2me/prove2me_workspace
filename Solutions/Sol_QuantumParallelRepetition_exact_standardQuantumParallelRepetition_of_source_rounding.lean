import Definitions.Def_quantum_parallel_repetition_game
import Definitions.Def_qpr_core_24
import Theorems.Thm_QuantumParallelRepetition_winProbabilities_bddAbove
import Theorems.Thm_QuantumParallelRepetition_fullCoordinateAliceEntropyIncrement_nonneg
import Theorems.Thm_QuantumParallelRepetition_martingale_log_cost_eq
import Theorems.Thm_QuantumParallelRepetition_aliceMartingaleEntropyBudget
import Theorems.Thm_QuantumParallelRepetition_arbitrarily_large_purified_divisor_greedy_conditioning_with_rounding
import Theorems.Thm_QuantumParallelRepetition_answerLogCost_nonneg_of_postselection
import Mathlib.Algebra.Algebra.Defs
import Mathlib.Algebra.Algebra.Rat
import Mathlib.Algebra.BigOperators.Field
import Mathlib.Algebra.BigOperators.Group.Finset.Defs
import Mathlib.Algebra.CharZero.Defs
import Mathlib.Algebra.Field.Defs
import Mathlib.Algebra.Field.Rat
import Mathlib.Algebra.Group.Basic
import Mathlib.Algebra.Group.Defs
import Mathlib.Algebra.GroupWithZero.Action.Defs
import Mathlib.Algebra.GroupWithZero.Basic
import Mathlib.Algebra.GroupWithZero.Defs
import Mathlib.Algebra.GroupWithZero.NeZero
import Mathlib.Algebra.GroupWithZero.Units.Basic
import Mathlib.Algebra.Module.Defs
import Mathlib.Algebra.Module.Rat
import Mathlib.Algebra.Order.Archimedean.Basic
import Mathlib.Algebra.Order.BigOperators.Group.Finset
import Mathlib.Algebra.Order.BigOperators.GroupWithZero.Finset
import Mathlib.Algebra.Order.Field.Basic
import Mathlib.Algebra.Order.Group.Unbundled.Basic
import Mathlib.Algebra.Order.GroupWithZero.Unbundled.Basic
import Mathlib.Algebra.Order.GroupWithZero.Unbundled.Defs
import Mathlib.Algebra.Order.Monoid.Defs
import Mathlib.Algebra.Order.Monoid.Unbundled.Basic
import Mathlib.Algebra.Order.Monoid.Unbundled.Defs
import Mathlib.Algebra.Order.Ring.Defs
import Mathlib.Algebra.Order.Ring.Star
import Mathlib.Algebra.Order.Ring.Unbundled.Basic
import Mathlib.Algebra.Order.Star.Basic
import Mathlib.Algebra.Order.ZeroLEOne
import Mathlib.Algebra.Ring.Defs
import Mathlib.Algebra.Ring.Nat
import Mathlib.Algebra.Ring.Rat
import Mathlib.Algebra.Star.Basic
import Mathlib.Analysis.Complex.Exponential
import Mathlib.Analysis.InnerProductSpace.Basic
import Mathlib.Analysis.Matrix.Normed
import Mathlib.Analysis.Matrix.Order
import Mathlib.Analysis.Normed.Field.Basic
import Mathlib.Analysis.Normed.Field.Lemmas
import Mathlib.Analysis.Normed.Group.Defs
import Mathlib.Analysis.Normed.Lp.WithLp
import Mathlib.Analysis.Normed.Module.Basic
import Mathlib.Analysis.Normed.Ring.Basic
import Mathlib.Analysis.RCLike.Basic
import Mathlib.Analysis.SpecialFunctions.Log.Basic
import Mathlib.Analysis.SpecialFunctions.Pow.Continuity
import Mathlib.Analysis.SpecialFunctions.Pow.Real
import Mathlib.Analysis.SpecificLimits.Basic
import Mathlib.Data.Finset.Card
import Mathlib.Data.Finset.Defs
import Mathlib.Data.Finset.Filter
import Mathlib.Data.Finset.Image
import Mathlib.Data.Finset.Insert
import Mathlib.Data.Finset.SDiff
import Mathlib.Data.Fintype.Basic
import Mathlib.Data.Fintype.Card
import Mathlib.Data.Fintype.Defs
import Mathlib.Data.Fintype.Perm
import Mathlib.Data.Fintype.Pi
import Mathlib.Data.Fintype.Prod
import Mathlib.Data.Fintype.Sets
import Mathlib.Data.FunLike.Basic
import Mathlib.Data.FunLike.Equiv
import Mathlib.Data.Int.Cast.Defs
import Mathlib.Data.Matrix.Basic
import Mathlib.Data.NNRat.Defs
import Mathlib.Data.Nat.Basic
import Mathlib.Data.Nat.Cast.Defs
import Mathlib.Data.Nat.Cast.Order.Basic
import Mathlib.Data.Nat.Cast.Order.Ring
import Mathlib.Data.Nat.Init
import Mathlib.Data.Rat.Defs
import Mathlib.Data.Rat.Init
import Mathlib.Data.Real.Archimedean
import Mathlib.Data.Real.Basic
import Mathlib.Data.Real.Sqrt
import Mathlib.Data.Real.Star
import Mathlib.Data.Real.StarOrdered
import Mathlib.Data.Set.Operations
import Mathlib.Data.SetLike.Basic
import Mathlib.LinearAlgebra.Matrix.Kronecker
import Mathlib.Logic.Equiv.Defs
import Mathlib.MeasureTheory.Measure.MeasureSpace
import Mathlib.Order.Basic
import Mathlib.Order.ConditionallyCompleteLattice.Basic
import Mathlib.Order.ConditionallyCompleteLattice.Defs
import Mathlib.Order.Defs.LinearOrder
import Mathlib.Order.Defs.PartialOrder
import Mathlib.Order.Filter.AtTopBot.Basic
import Mathlib.Order.Filter.AtTopBot.Defs
import Mathlib.Order.Filter.Basic
import Mathlib.Order.Filter.Defs
import Mathlib.Order.Filter.Tendsto
import Mathlib.Order.Lattice
import Mathlib.Order.RelClasses
import Mathlib.Tactic.CancelDenoms.Core
import Mathlib.Tactic.FieldSimp.Lemmas
import Mathlib.Tactic.Linarith.Lemmas
import Mathlib.Tactic.Linarith.Preprocessing
import Mathlib.Tactic.NormNum.Basic
import Mathlib.Tactic.NormNum.Ineq
import Mathlib.Tactic.NormNum.Inv
import Mathlib.Tactic.NormNum.Pow
import Mathlib.Tactic.NormNum.Result
import Mathlib.Tactic.Positivity.Core
import Mathlib.Tactic.Ring.Basic
import Mathlib.Tactic.Ring.Common
import Mathlib.Topology.Algebra.GroupWithZero
import Mathlib.Topology.Algebra.Monoid
import Mathlib.Topology.Algebra.Monoid.Defs
import Mathlib.Topology.Algebra.Ring.Basic
import Mathlib.Topology.Algebra.Ring.Real
import Mathlib.Topology.Defs.Filter
import Mathlib.Topology.Instances.Rat
import Mathlib.Topology.MetricSpace.Pseudo.Defs
import Mathlib.Topology.MetricSpace.Pseudo.Lemmas
import Mathlib.Topology.Order.Basic
import Mathlib.Topology.UniformSpace.Defs

namespace QuantumParallelRepetition

noncomputable section

open scoped BigOperators ComplexOrder Kronecker MatrixOrder
open Matrix

variable {X Y A B : Type*}

namespace Game

variable [Fintype X] [Fintype Y] [Fintype A] [Fintype B]

theorem marginalX_nonneg (G : Game X Y A B) (x : X) :
    0 ≤ G.marginalX x := by
  unfold marginalX
  exact Finset.sum_nonneg fun y _ => G.weight_nonneg x y

theorem marginalY_nonneg (G : Game X Y A B) (y : Y) :
    0 ≤ G.marginalY y := by
  unfold marginalY
  exact Finset.sum_nonneg fun x _ => G.weight_nonneg x y

end Game

end

open scoped ComplexOrder Matrix BigOperators InnerProductSpace
open Complex Matrix Finset

noncomputable section

open Matrix
open scoped BigOperators Kronecker ComplexOrder MatrixOrder

set_option backward.isDefEq.respectTransparency false
set_option maxHeartbeats 1000000

section CoordinateWeights

variable {X Y A B : Type*}
variable [Fintype X] [Fintype Y] [Fintype A] [Fintype B]

theorem fullCoordinateBaseWeight_nonneg
    (G : Game X Y A B) {n : ℕ}
    (D L : Finset (Fin n)) (i : Fin n)
    (h : FullCoordinateRevealHistory X Y n D L i) :
    0 ≤ fullCoordinateBaseWeight G D L i h := by
  unfold fullCoordinateBaseWeight
  exact mul_nonneg
    (mul_nonneg
      (Finset.prod_nonneg fun j _ =>
        G.weight_nonneg (h.aliceConditioned j) (h.bobConditioned j))
      (Finset.prod_nonneg fun j _ =>
        G.marginalX_nonneg (h.aliceRevealed j)))
    (Finset.prod_nonneg fun j _ => G.marginalY_nonneg (h.bobRemaining j))

end CoordinateWeights

end

noncomputable section

open Matrix
open scoped BigOperators Kronecker ComplexOrder MatrixOrder

set_option backward.isDefEq.respectTransparency false
set_option maxHeartbeats 1500000

variable {X Y A B : Type*}
variable [Fintype X] [Fintype Y] [Fintype A] [Fintype B]

theorem fullCoordinateBaseWinIndicator_nonneg
    (G : Game X Y A B) {n : ℕ}
    (D L : Finset (Fin n)) (i : Fin n)
    (r : FullCoordinateRevealHistory X Y n D L i)
    (α : {j : Fin n // j ∈ D} → A)
    (β : {j : Fin n // j ∈ D} → B) :
    0 ≤ fullCoordinateBaseWinIndicator G D L i r α β := by
  classical
  unfold fullCoordinateBaseWinIndicator
  split <;> norm_num

theorem fullCoordinateAliceTotalEntropyIncrement_nonneg
    (G : Game X Y A B) (n : ℕ) (S : Strategy (G.repeat n))
    (D L : Finset (Fin n)) (i : Fin n)
    (hiD : i ∉ D) (hiL : i ∉ L) :
    0 ≤ fullCoordinateAliceTotalEntropyIncrement G n S D L i := by
  unfold fullCoordinateAliceTotalEntropyIncrement
  exact Finset.sum_nonneg fun r _ =>
    Finset.sum_nonneg fun α _ =>
      Finset.sum_nonneg fun β _ =>
        mul_nonneg
          (mul_nonneg (fullCoordinateBaseWeight_nonneg G D L i r)
            (fullCoordinateBaseWinIndicator_nonneg G D L i r α β))
          (fullCoordinateAliceEntropyIncrement_nonneg
            G n S D L i hiD hiL r α β)

end

noncomputable section

open scoped BigOperators

@[simp] theorem sourceRemainingPermutationRank_coordinate
    {n : ℕ} (D : Finset (Fin n))
    (π : SourceRemainingPermutation D)
    (k : Fin (Finset.univ \ D).card) :
    sourceRemainingPermutationRank D π
      (sourceRemainingPermutationCoordinateSubtype D π k) = k := by
  simp [sourceRemainingPermutationCoordinateSubtype]

theorem sourceRemainingPermutationCoordinate_not_mem
    {n : ℕ} (D : Finset (Fin n))
    (π : SourceRemainingPermutation D)
    (k : Fin (Finset.univ \ D).card) :
    sourceRemainingPermutationCoordinate D π k ∉ D := by
  have h := (sourceRemainingPermutationCoordinateSubtype D π k).property
  exact (Finset.mem_sdiff.mp h).2

theorem sourceRemainingPermutationCoordinate_not_mem_prefix
    {n : ℕ} (D : Finset (Fin n))
    (π : SourceRemainingPermutation D)
    (k : Fin (Finset.univ \ D).card) :
    sourceRemainingPermutationCoordinate D π k ∉
      sourceRemainingPermutationPrefix D π k.castSucc := by
  classical
  intro hmem
  obtain ⟨j, hj, hval⟩ := Finset.mem_image.mp hmem
  have heq : j = sourceRemainingPermutationCoordinateSubtype D π k := by
    apply Subtype.ext
    exact hval
  subst j
  have hlt := (Finset.mem_filter.mp hj).2
  simp at hlt

section ActualEntropyBudgets

variable {X Y A B : Type*}
variable [Fintype X] [Fintype Y] [Fintype A] [Fintype B]

theorem sourcePermutationAliceEntropyIncrement_nonneg
    (G : Game X Y A B) (n : ℕ) (S : Strategy (G.repeat n))
    (D : Finset (Fin n)) (π : SourceRemainingPermutation D)
    (k : Fin (Finset.univ \ D).card) :
    0 ≤ sourcePermutationAliceEntropyIncrement G n S D π k := by
  apply fullCoordinateAliceTotalEntropyIncrement_nonneg
  · exact sourceRemainingPermutationCoordinate_not_mem D π k
  · exact sourceRemainingPermutationCoordinate_not_mem_prefix D π k

theorem sourceUniformPermutationAverage_nonneg
    {n : ℕ} (D : Finset (Fin n))
    (f : SourceRemainingPermutation D →
      Fin (Finset.univ \ D).card → ℝ)
    (hf : ∀ π k, 0 ≤ f π k) :
    0 ≤ sourceUniformPermutationAverage D f := by
  classical
  apply div_nonneg
  · exact Finset.sum_nonneg fun π _ =>
      Finset.sum_nonneg fun k _ => hf π k
  · exact mul_nonneg
      (Nat.cast_nonneg (Fintype.card (SourceRemainingPermutation D)))
      (Nat.cast_nonneg (Finset.univ \ D).card)

end ActualEntropyBudgets

end

noncomputable section

open scoped BigOperators

theorem not_hasExponentialBound_iff (v : ℕ → ℝ) :
    ¬ HasExponentialBound v ↔ HasSubexponentialWitness v := by
  simp [HasExponentialBound, HasSubexponentialWitness]

end

noncomputable section

open Filter
open scoped Topology

theorem totalSamplingLoss_tendsto_zero
    {ι : Type*} {l : Filter ι}
    (K₀ : ℝ) {α η lam : ι → ℝ}
    (hα : Tendsto α l (𝓝 0))
    (hη : Tendsto η l (𝓝 0))
    (hlam : Tendsto lam l (𝓝 0)) :
    Tendsto (fun i => totalSamplingLoss K₀ (α i) (η i) (lam i))
      l (𝓝 0) := by
  have hαroot :
      Tendsto (fun i => (α i) ^ (1 / 12 : ℝ)) l (𝓝 0) :=
    hα.rpow_const_nhds_zero (by norm_num)
  have hηscaled : Tendsto (fun i => 32 * η i) l (𝓝 0) := by
    simpa using hη.const_mul (32 : ℝ)
  have hηroot :
      Tendsto (fun i => (32 * η i) ^ (1 / 12 : ℝ)) l (𝓝 0) :=
    hηscaled.rpow_const_nhds_zero (by norm_num)
  have hηeight : Tendsto (fun i => 8 * η i) l (𝓝 0) := by
    simpa using hη.const_mul (8 : ℝ)
  have hsqrt : Tendsto (fun i => Real.sqrt (8 * η i)) l (𝓝 0) := by
    simpa using hηeight.sqrt
  have hquantum :
      Tendsto
        (fun i => K₀ * ((α i) ^ (1 / 12 : ℝ) +
          (32 * η i) ^ (1 / 12 : ℝ))) l (𝓝 0) := by
    simpa using (hαroot.add hηroot).const_mul K₀
  have hceiling :
      Tendsto (fun i => universalErrorCeiling K₀ * lam i)
        l (𝓝 0) := by
    simpa using hlam.const_mul (universalErrorCeiling K₀)
  have hinner :
      Tendsto
        (fun i => K₀ * ((α i) ^ (1 / 12 : ℝ) +
            (32 * η i) ^ (1 / 12 : ℝ)) +
          Real.sqrt (8 * η i) + universalErrorCeiling K₀ * lam i)
        l (𝓝 0) := by
    simpa using (hquantum.add hsqrt).add hceiling
  have hclassical : Tendsto (fun i => 5 * lam i) l (𝓝 0) := by
    simpa using hlam.const_mul (5 : ℝ)
  have hdouble :
      Tendsto
        (fun i => 2 *
          (K₀ * ((α i) ^ (1 / 12 : ℝ) +
              (32 * η i) ^ (1 / 12 : ℝ)) +
            Real.sqrt (8 * η i) + universalErrorCeiling K₀ * lam i))
        l (𝓝 0) := by
    simpa using hinner.const_mul (2 : ℝ)
  simpa [totalSamplingLoss] using hclassical.add hdouble

theorem totalSamplingLoss_eventually_lt
    {ι : Type*} {l : Filter ι}
    (K₀ : ℝ) {α η lam : ι → ℝ}
    (hα : Tendsto α l (𝓝 0))
    (hη : Tendsto η l (𝓝 0))
    (hlam : Tendsto lam l (𝓝 0))
    {ε : ℝ} (hε : 0 < ε) :
    ∀ᶠ i in l, totalSamplingLoss K₀ (α i) (η i) (lam i) < ε :=
  (totalSamplingLoss_tendsto_zero K₀ hα hη hlam).eventually
    (gt_mem_nhds hε)

theorem source_equation_twenty_nine_contradiction
    {X Y A B : Type*}
    [Fintype X] [Fintype Y] [Fintype A] [Fintype B]
    (G : Game X Y A B)
    (S : Strategy G)
    (K₀ α η lam : ℝ)
    (hbound :
      roundedWinningLowerBound (1 - entangledValue G)
        K₀ α η lam ≤ S.winProbability)
    (herror :
      totalSamplingLoss K₀ α η lam < (1 - entangledValue G) / 2) :
    False := by
  have hsup : S.winProbability ≤ entangledValue G := by
    unfold entangledValue
    exact le_csSup (winProbabilities_bddAbove G) ⟨S, rfl⟩
  unfold roundedWinningLowerBound at hbound
  linarith

end

noncomputable section

open scoped BigOperators

variable {X Y A B : Type*}
variable [Fintype X] [Fintype Y] [Fintype A] [Fintype B]

theorem divisor_greedy_card_mul_lt
    {n q : ℕ} (hq : 0 < q)
    {D : Finset (Fin n)} (hD : D.card < n / q) :
    D.card * q < n := by
  have hmul : D.card * q < (n / q) * q :=
    Nat.mul_lt_mul_of_pos_right hD hq
  exact hmul.trans_le (Nat.div_mul_le_self n q)

end

noncomputable section

open scoped BigOperators

section FiniteSamples

variable {ι Ω : Type*} [Fintype ι] [DecidableEq ι] [Fintype Ω]

theorem uniformRemainingFailure_lt_of_failure_sum
    (law : FiniteEventLaw Ω) (wins : ι → Ω → Bool)
    (C : Finset ι) {η : ℝ}
    (hp : 0 < postselectionMass law wins C)
    (hm : 0 < (Finset.univ \ C).card)
    (hfailure :
      (∑ i ∈ Finset.univ \ C,
        FiniteEventLaw.failureMass law wins C i) <
        ((Finset.univ \ C).card : ℝ) *
          (η * postselectionMass law wins C)) :
    uniformRemainingFailure law wins C < η := by
  have hmreal : 0 < ((Finset.univ \ C).card : ℝ) := by
    exact_mod_cast hm
  unfold uniformRemainingFailure conditionalCoordinateFailure
  rw [← Finset.sum_div]
  apply (div_lt_iff₀ hmreal).mpr
  apply (div_lt_iff₀ hp).mpr
  nlinarith

end FiniteSamples

end

noncomputable section

open WithLp
open scoped BigOperators ComplexOrder Kronecker MatrixOrder
  Matrix.Norms.L2Operator InnerProductSpace

set_option backward.isDefEq.respectTransparency false
set_option maxHeartbeats 1600000
set_option maxRecDepth 2048

variable {X Y A B : Type*}
variable [Fintype X] [Fintype Y] [Fintype A] [Fintype B]

theorem martingaleRate_nonneg
    (G : Game X Y A B) (n : ℕ) (S : Strategy (G.repeat n))
    (D : Finset (Fin n))
    (hm : 0 < (Finset.univ \ D).card)
    (hp : 0 < repeatedPostselectionMass G n S D) :
    0 ≤ martingaleRate G n S D := by
  have hnonnegative := sourceUniformPermutationAverage_nonneg D
    (sourcePermutationAliceEntropyIncrement G n S D)
    (fun π k => sourcePermutationAliceEntropyIncrement_nonneg
      G n S D π k)
  have hbudget := aliceMartingaleEntropyBudget
    G n S D hm hp
  nlinarith

end

noncomputable section

open scoped BigOperators InnerProductSpace

variable {X Y A B : Type*}
variable [Fintype X] [Fintype Y] [Fintype A] [Fintype B]

theorem divisor_greedy_remaining_bounds
    {n q : ℕ} (hq : 2 ≤ q)
    {D : Finset (Fin n)} (hD : D.card < n / q) :
    0 < (Finset.univ \ D).card ∧
      n ≤ 2 * (Finset.univ \ D).card ∧
      D.card * q ≤ 2 * (Finset.univ \ D).card := by
  classical
  have hqpos : 0 < q := by omega
  have hdq : D.card * q < n :=
    divisor_greedy_card_mul_lt hqpos hD
  have htwo : D.card * 2 < n :=
    lt_of_le_of_lt (Nat.mul_le_mul_left D.card hq) hdq
  have hcard : (Finset.univ \ D).card + D.card = n := by
    simpa using
      (Finset.card_sdiff_add_card_eq_card
        (Finset.subset_univ D))
  omega

end

noncomputable section

open scoped BigOperators

variable {X Y A B : Type*}
variable [Fintype X] [Fintype Y] [Fintype A] [Fintype B]

theorem exactSourceClassicalInformationRate_le_three_martingaleRate
    (G : Game X Y A B) (n : ℕ) (S : Strategy (G.repeat n))
    (D : Finset (Fin n))
    (positive : 0 < repeatedPostselectionMass G n S D) :
    exactSourceClassicalInformationRate G n S D ≤
      3 * martingaleRate G n S D := by
  have answer_nonnegative :=
    answerLogCost_nonneg_of_postselection
      G n S D positive
  unfold exactSourceClassicalInformationRate
    martingaleRate
  have denominator_nonnegative :
      0 ≤ ((Finset.univ \ D).card : ℝ) := by positivity
  by_cases denominator_zero : ((Finset.univ \ D).card : ℝ) = 0
  · simp [denominator_zero]
  have denominator_positive :
      0 < ((Finset.univ \ D).card : ℝ) :=
    lt_of_le_of_ne denominator_nonnegative (Ne.symm denominator_zero)
  apply (div_le_iff₀ denominator_positive).2
  field_simp
  linarith

theorem exactSourcePinskerRate_le_half_of_martingaleRate
    (G : Game X Y A B) (n : ℕ) (S : Strategy (G.repeat n))
    (D : Finset (Fin n))
    (positive : 0 < repeatedPostselectionMass G n S D)
    {rateTolerance : ℝ} (rate_nonnegative : 0 ≤ rateTolerance)
    (rate_bound :
      martingaleRate G n S D ≤ rateTolerance ^ 2 / 8) :
    exactSourcePinskerRate G n S D ≤ rateTolerance / 2 := by
  unfold exactSourcePinskerRate
  apply Real.sqrt_le_iff.mpr
  constructor
  · positivity
  · have information :=
      exactSourceClassicalInformationRate_le_three_martingaleRate
        G n S D positive
    nlinarith

theorem exact_arbitrarily_large_conditioning_of_subexponentialWitness
    (G : Game X Y A B)
    (witness : HasSubexponentialWitness (repeatedEntangledValue G))
    {failureTolerance rateTolerance : ℝ}
    (failure_positive : 0 < failureTolerance)
    (failure_at_most_one : failureTolerance ≤ 1)
    (rate_positive : 0 < rateTolerance)
    (lower : ℕ) :
    ∃ n : ℕ, lower < n ∧
      ∃ S : Strategy (G.repeat n),
        ∃ D : Finset (Fin n),
          0 < S.winProbability ∧
          0 < repeatedPostselectionMass G n S D ∧
          0 < (Finset.univ \ D).card ∧
          uniformRemainingFailure
              (strategyEventLaw (G.repeat n) S)
              (repeatedCoordinateWin G n) D < failureTolerance ∧
          martingaleRate G n S D ≤
            rateTolerance ^ 2 / 8 ∧
          exactSourcePinskerRate G n S D ≤
            rateTolerance / 2 := by
  classical
  obtain ⟨q, q_at_least_two, extract⟩ :=
    arbitrarily_large_purified_divisor_greedy_conditioning_with_rounding
      G witness (K := (1 : ℝ))
      failure_positive failure_at_most_one
      (by norm_num) rate_positive
  obtain ⟨n, beyond, S, D, winning, small, mass, failure, cost⟩ :=
    extract lower
  let actual : Strategy (G.repeat n) := purifiedStrategy S
  have actual_positive : 0 < actual.winProbability :=
    lt_trans (Real.exp_pos _) winning
  have postselection_positive :
      0 < repeatedPostselectionMass G n actual D := by
    exact lt_of_lt_of_le actual_positive mass
  have remaining_positive : 0 < (Finset.univ \ D).card :=
    (divisor_greedy_remaining_bounds q_at_least_two small).1
  have failure_small :
      uniformRemainingFailure
          (strategyEventLaw (G.repeat n) actual)
          (repeatedCoordinateWin G n) D < failureTolerance := by
    apply uniformRemainingFailure_lt_of_failure_sum
      (strategyEventLaw (G.repeat n) actual)
      (repeatedCoordinateWin G n) D
      postselection_positive remaining_positive
    exact failure
  have scaled_rate :
      8 * martingaleRate G n actual D ≤ rateTolerance ^ 2 := by
    calc
      8 * martingaleRate G n actual D =
          8 * Real.log
            (fullHistoryAnswerCount (A := A) (B := B) D /
              repeatedPostselectionMass G n actual D) /
            ((Finset.univ \ D).card : ℝ) := by
              unfold martingaleRate
              rw [← martingale_log_cost_eq
                G n actual D postselection_positive]
              ring
      _ ≤ rateTolerance ^ 2 := by
        simpa [actual, repeatedPostselectionMass,
          postselectionMass] using cost
  have actual_rate :
      martingaleRate G n actual D ≤
        rateTolerance ^ 2 / 8 := by
    apply (le_div_iff₀ (by norm_num : (0 : ℝ) < 8)).2
    nlinarith
  exact ⟨n, beyond, actual, D, actual_positive,
    postselection_positive, remaining_positive, failure_small,
    actual_rate,
    exactSourcePinskerRate_le_half_of_martingaleRate
      G n actual D postselection_positive rate_positive.le actual_rate⟩

end

noncomputable section

open Filter
open scoped Topology

variable {X Y A B : Type*}
variable [Fintype X] [Fintype Y] [Fintype A] [Fintype B]

theorem exact_totalSamplingLoss_mono
    {K₀ α₁ α₂ η₁ η₂ lam₁ lam₂ : ℝ}
    (constant_nonnegative : 0 ≤ K₀)
    (alpha_nonnegative : 0 ≤ α₁)
    (alpha_le : α₁ ≤ α₂)
    (eta_nonnegative : 0 ≤ η₁)
    (eta_le : η₁ ≤ η₂)
    (lam_le : lam₁ ≤ lam₂) :
    totalSamplingLoss K₀ α₁ η₁ lam₁ ≤
      totalSamplingLoss K₀ α₂ η₂ lam₂ := by
  have ceiling_nonnegative : 0 ≤ universalErrorCeiling K₀ := by
    unfold universalErrorCeiling
    positivity
  have alpha_root :
      α₁ ^ (1 / 12 : ℝ) ≤ α₂ ^ (1 / 12 : ℝ) :=
    Real.rpow_le_rpow alpha_nonnegative alpha_le (by norm_num)
  have eta_root :
      (32 * η₁) ^ (1 / 12 : ℝ) ≤
        (32 * η₂) ^ (1 / 12 : ℝ) := by
    apply Real.rpow_le_rpow
    · positivity
    · linarith
    · norm_num
  have eta_sqrt :
      Real.sqrt (8 * η₁) ≤ Real.sqrt (8 * η₂) := by
    apply Real.sqrt_le_sqrt
    linarith
  unfold totalSamplingLoss
  gcongr

end

end QuantumParallelRepetition


open QuantumParallelRepetition
open scoped ComplexOrder Matrix BigOperators InnerProductSpace
open Complex Matrix Finset
open Filter
open scoped Topology
variable {X Y A B : Type*}
variable [Fintype X] [Fintype Y] [Fintype A] [Fintype B]

theorem solution
    (G : Game X Y A B)
    (rounding : ExactSourceOneGameRounding G) :
    StandardQuantumParallelRepetition G := by
  intro gap
  by_contra no_exponential_bound
  have witness : HasSubexponentialWitness (repeatedEntangledValue G) :=
    (not_hasExponentialBound_iff (repeatedEntangledValue G)).mp
      no_exponential_bound
  obtain ⟨K₀, constant_nonnegative, construct⟩ := rounding
  let gapValue : ℝ := 1 - entangledValue G
  have gap_positive : 0 < gapValue := by
    dsimp [gapValue]
    linarith
  let failureTolerance : ℝ := min (gapValue / 2) (1 / 2)
  have failure_positive : 0 < failureTolerance := by
    dsimp [failureTolerance]
    exact lt_min (by positivity) (by norm_num)
  have failure_at_most_one : failureTolerance ≤ 1 := by
    have half := min_le_right (gapValue / 2) (1 / 2 : ℝ)
    dsimp [failureTolerance]
    linarith
  let rate : ℕ → ℝ := fun k => 1 / ((k : ℝ) + 1)
  have rate_positive (k : ℕ) : 0 < rate k := by
    dsimp [rate]
    positivity
  have rate_at_most_one (k : ℕ) : rate k ≤ 1 := by
    dsimp [rate]
    apply (div_le_iff₀ (by positivity : (0 : ℝ) < (k : ℝ) + 1)).2
    have nonnegative : (0 : ℝ) ≤ (k : ℝ) := by positivity
    nlinarith
  have rate_tendsto : Tendsto rate atTop (𝓝 0) := by
    exact tendsto_one_div_add_atTop_nhds_zero_nat
  have martingale_tendsto :
      Tendsto (fun k => rate k ^ 2 / 8) atTop (𝓝 0) := by
    simpa using (rate_tendsto.pow 2).div_const (8 : ℝ)
  have sampling_tendsto :
      Tendsto (fun k => rate k / 2 + rate k) atTop (𝓝 0) := by
    simpa using (rate_tendsto.div_const (2 : ℝ)).add rate_tendsto
  have eventually_small :
      ∀ᶠ k : ℕ in atTop,
        totalSamplingLoss K₀ (rate k)
            (rate k ^ 2 / 8) (rate k / 2 + rate k) <
          gapValue / 2 :=
    totalSamplingLoss_eventually_lt K₀
      rate_tendsto martingale_tendsto sampling_tendsto
      (by positivity)
  obtain ⟨k, loss_small⟩ := eventually_small.exists
  obtain ⟨n, _, S, D, _, postselection_positive,
      remaining_positive, failure_small, martingale_small,
      pinsker_small⟩ :=
    exact_arbitrarily_large_conditioning_of_subexponentialWitness
      G witness failure_positive failure_at_most_one
      (rate_positive k) 0
  have failure_gap :
      uniformRemainingFailure
          (strategyEventLaw (G.repeat n) S)
          (repeatedCoordinateWin G n) D < gapValue / 2 :=
    lt_of_lt_of_le failure_small
      (min_le_left (gapValue / 2) (1 / 2 : ℝ))
  obtain ⟨rounded, rounded_bound⟩ :=
    construct n S D remaining_positive postselection_positive
      (rate k) (rate k)
      (rate_positive k) (rate_at_most_one k)
      (rate_positive k) (by simpa [gapValue] using failure_gap)
  have martingale_nonnegative :=
    martingaleRate_nonneg G n S D
      remaining_positive postselection_positive
  have exact_loss_small :
      totalSamplingLoss K₀ (rate k)
          (martingaleRate G n S D)
          (exactSourcePinskerRate G n S D + rate k) <
        gapValue / 2 := by
    refine lt_of_le_of_lt ?_ loss_small
    apply exact_totalSamplingLoss_mono
      constant_nonnegative (rate_positive k).le (le_refl _)
      martingale_nonnegative martingale_small
    linarith
  exact source_equation_twenty_nine_contradiction G rounded
    K₀ (rate k) (martingaleRate G n S D)
    (exactSourcePinskerRate G n S D + rate k)
    rounded_bound (by simpa [gapValue] using exact_loss_small)
