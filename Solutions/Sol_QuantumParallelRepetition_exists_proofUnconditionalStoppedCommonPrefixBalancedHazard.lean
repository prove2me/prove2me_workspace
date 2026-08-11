import Definitions.Def_quantum_parallel_repetition_game
import Definitions.Def_qpr_core_23
import Theorems.Thm_QuantumParallelRepetition_exists_proofDSVDensityRationalHeterogeneousStoppedCommonPrefixHazardBound
import Mathlib.Algebra.BigOperators.Group.Finset.Defs
import Mathlib.Algebra.Field.Defs
import Mathlib.Algebra.Group.Basic
import Mathlib.Algebra.Group.Defs
import Mathlib.Algebra.Group.Nat.Defs
import Mathlib.Algebra.Group.Submonoid.Defs
import Mathlib.Algebra.GroupWithZero.Basic
import Mathlib.Algebra.GroupWithZero.Defs
import Mathlib.Algebra.GroupWithZero.Nat
import Mathlib.Algebra.GroupWithZero.NeZero
import Mathlib.Algebra.GroupWithZero.Units.Basic
import Mathlib.Algebra.NeZero
import Mathlib.Algebra.Order.BigOperators.Group.Finset
import Mathlib.Algebra.Order.Floor.Defs
import Mathlib.Algebra.Order.Floor.Ring
import Mathlib.Algebra.Order.Floor.Semiring
import Mathlib.Algebra.Order.Group.Defs
import Mathlib.Algebra.Order.Group.Unbundled.Basic
import Mathlib.Algebra.Order.GroupWithZero.Canonical
import Mathlib.Algebra.Order.GroupWithZero.Unbundled.Basic
import Mathlib.Algebra.Order.GroupWithZero.Unbundled.Defs
import Mathlib.Algebra.Order.Monoid.Defs
import Mathlib.Algebra.Order.Monoid.Unbundled.Basic
import Mathlib.Algebra.Order.Monoid.Unbundled.Defs
import Mathlib.Algebra.Order.Monoid.Unbundled.ExistsOfLE
import Mathlib.Algebra.Order.Ring.Basic
import Mathlib.Algebra.Order.Ring.Defs
import Mathlib.Algebra.Order.Ring.Nat
import Mathlib.Algebra.Order.ZeroLEOne
import Mathlib.Algebra.Ring.Defs
import Mathlib.Algebra.Ring.Nat
import Mathlib.Algebra.Ring.Parity
import Mathlib.Algebra.Star.Basic
import Mathlib.AlgebraicTopology.SimplexCategory.Basic
import Mathlib.AlgebraicTopology.SimplexCategory.Defs
import Mathlib.Analysis.Complex.Exponential
import Mathlib.Analysis.Complex.Norm
import Mathlib.Analysis.Convex.Basic
import Mathlib.Analysis.Convex.SpecificFunctions.Basic
import Mathlib.Analysis.InnerProductSpace.Basic
import Mathlib.Analysis.InnerProductSpace.PiL2
import Mathlib.Analysis.Matrix.Normed
import Mathlib.Analysis.Matrix.Order
import Mathlib.Analysis.Normed.Group.Defs
import Mathlib.Analysis.Normed.Lp.WithLp
import Mathlib.Analysis.RCLike.Basic
import Mathlib.Data.Complex.Basic
import Mathlib.Data.ENNReal.Basic
import Mathlib.Data.Finset.Defs
import Mathlib.Data.Fintype.Basic
import Mathlib.Data.Fintype.Defs
import Mathlib.Data.Fintype.Pi
import Mathlib.Data.Fintype.Sigma
import Mathlib.Data.Int.Cast.Defs
import Mathlib.Data.Matrix.Basic
import Mathlib.Data.Matrix.Mul
import Mathlib.Data.Nat.Basic
import Mathlib.Data.Nat.Cast.Basic
import Mathlib.Data.Nat.Cast.Defs
import Mathlib.Data.Nat.Cast.Order.Basic
import Mathlib.Data.Nat.Init
import Mathlib.Data.Real.Archimedean
import Mathlib.Data.Real.Basic
import Mathlib.Data.Set.Defs
import Mathlib.Data.Set.Operations
import Mathlib.Data.SetLike.Basic
import Mathlib.LinearAlgebra.Matrix.Defs
import Mathlib.LinearAlgebra.Matrix.Kronecker
import Mathlib.LinearAlgebra.UnitaryGroup
import Mathlib.MeasureTheory.Measure.MeasureSpace
import Mathlib.Order.Basic
import Mathlib.Order.Defs.LinearOrder
import Mathlib.Order.Defs.PartialOrder
import Mathlib.Order.Lattice
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
import Mathlib.Topology.Defs.Filter

namespace QuantumParallelRepetition

open scoped ComplexOrder Matrix BigOperators InnerProductSpace
open Complex Matrix Finset

noncomputable section

open WithLp
open scoped BigOperators Kronecker ComplexOrder MatrixOrder

theorem
    dSVDensityRationalPublicMultiscaleFirstHitPhysicalFlagMismatchMass_nonneg
    {A C : Type*} [Fintype A] [Fintype C] {L : ℕ}
    (alice : A → Fin (L + 1))
    (bob : C → Fin (L + 1))
    (z : EuclideanSpace ℂ (A × C)) :
    0 ≤
      dSVDensityRationalPublicMultiscaleFirstHitPhysicalFlagMismatchMass
        alice bob z := by
  classical
  unfold
    dSVDensityRationalPublicMultiscaleFirstHitPhysicalFlagMismatchMass
  apply Finset.sum_nonneg
  intro a _
  apply Finset.sum_nonneg
  intro b _
  split_ifs <;> positivity

end

noncomputable section

open WithLp
open scoped BigOperators ComplexOrder Kronecker MatrixOrder

attribute [local instance] Classical.propDecidable

theorem
    dSVDensityRationalHeterogeneousActualAsynchronousFlagMass_nonneg
    (N : ℕ) {S d L : ℕ}
    (width : Fin S → ℝ) (schedule : Fin L → Fin S)
    (ξ ζ : BipartiteUnitVector d) :
    0 ≤ dSVDensityRationalHeterogeneousActualAsynchronousFlagMass
      N width schedule ξ ζ := by
  exact
    dSVDensityRationalPublicMultiscaleFirstHitPhysicalFlagMismatchMass_nonneg
      (fun q : DSVUniformDensityThresholdWholeHistoryLocalIndex
        N d L => q.1)
      (fun q : DSVUniformDensityThresholdWholeHistoryLocalIndex
        N d L => q.1)
      (dSVDensityRationalHeterogeneousActualPhysicalState
        N width schedule ξ ζ)

end

noncomputable section

theorem unconditionalPublicBucket_exp_sub_one_le
    {u : ℝ} (nonnegative : 0 ≤ u) (bounded : u ≤ 1) :
    Real.exp u - 1 ≤ (Real.exp 1 - 1) * u := by
  have chord := convexOn_exp.2
    (Set.mem_univ (0 : ℝ)) (Set.mem_univ (1 : ℝ))
    (sub_nonneg.mpr bounded) nonnegative
    (show (1 - u) + u = (1 : ℝ) by ring)
  simp only [smul_eq_mul, mul_zero, zero_add, mul_one,
    Real.exp_zero] at chord
  nlinarith

theorem exists_proofUnconditionalPublicBucketBalance
    (t : ℝ) (positive : 0 < t) (bounded : t ≤ 1) :
    ∃ B Q : ℕ, 0 < B ∧ 0 < Q ∧
      (1 / (B : ℝ) ≤ t / 2) ∧
      ((Q : ℝ) / (B : ℝ) ≤ 3 / t) ∧
      (((B : ℝ) + 1) / (Q : ℝ) ≤ t) ∧
      (Real.exp (((B : ℝ) + 1) / (Q : ℝ)) - 1 ≤
        (Real.exp 1 - 1) * t) ∧
      ∀ asynchronous precision : ℝ, 0 ≤ asynchronous →
        unconditionalPublicBucketLoss B Q asynchronous precision ≤
          (34 / t) * asynchronous + 4 * precision ^ 2 +
            (16 * (Real.exp 1 - 1) + 4) * t := by
  let B : ℕ := ⌈(2 : ℝ) / t⌉₊
  let Q : ℕ := B ^ 2
  have B_positive : 0 < B := by
    dsimp [B]
    exact Nat.ceil_pos.mpr (div_pos (by norm_num) positive)
  have B_real_positive : 0 < (B : ℝ) := by
    exact_mod_cast B_positive
  have Q_positive : 0 < Q := pow_pos B_positive 2
  have Q_real_positive : 0 < (Q : ℝ) := by
    exact_mod_cast Q_positive
  have lower : 2 / t ≤ (B : ℝ) := by
    exact Nat.le_ceil ((2 : ℝ) / t)
  have product_lower : (2 : ℝ) ≤ (B : ℝ) * t :=
    (div_le_iff₀ positive).mp lower
  have inverse_bound : 1 / (B : ℝ) ≤ t / 2 := by
    apply (div_le_iff₀ B_real_positive).mpr
    nlinarith
  have ceiling_upper : (B : ℝ) < 2 / t + 1 := by
    exact Nat.ceil_lt_add_one (by positivity : (0 : ℝ) ≤ 2 / t)
  have product_upper : (B : ℝ) * t < 2 + t := by
    calc
      (B : ℝ) * t < (2 / t + 1) * t :=
        mul_lt_mul_of_pos_right ceiling_upper positive
      _ = 2 + t := by field_simp
  have B_upper : (B : ℝ) ≤ 3 / t := by
    apply (le_div_iff₀ positive).mpr
    nlinarith
  have ratio_eq : (Q : ℝ) / (B : ℝ) = (B : ℝ) := by
    dsimp [Q]
    push_cast
    field_simp
  have ratio_bound : (Q : ℝ) / (B : ℝ) ≤ 3 / t :=
    ratio_eq.trans_le B_upper
  have B_at_least_one : (1 : ℝ) ≤ (B : ℝ) := by
    exact_mod_cast B_positive
  have width_bound : ((B : ℝ) + 1) / (Q : ℝ) ≤ t := by
    apply (div_le_iff₀ Q_real_positive).mpr
    have multiply :=
      mul_le_mul_of_nonneg_right product_lower B_real_positive.le
    have Q_real : (Q : ℝ) = (B : ℝ) ^ 2 := by
      simp [Q]
    rw [Q_real]
    nlinarith
  have width_nonnegative :
      0 ≤ ((B : ℝ) + 1) / (Q : ℝ) := by positivity
  have exponential_bound :
      Real.exp (((B : ℝ) + 1) / (Q : ℝ)) - 1 ≤
        (Real.exp 1 - 1) * t := by
    calc
      Real.exp (((B : ℝ) + 1) / (Q : ℝ)) - 1 ≤
          (Real.exp 1 - 1) * (((B : ℝ) + 1) / (Q : ℝ)) :=
        unconditionalPublicBucket_exp_sub_one_le
          width_nonnegative (width_bound.trans bounded)
      _ ≤ (Real.exp 1 - 1) * t := by
        have coefficient : 0 ≤ Real.exp 1 - 1 := by
          nlinarith [Real.add_one_le_exp (1 : ℝ)]
        exact mul_le_mul_of_nonneg_left width_bound coefficient
  refine ⟨B, Q, B_positive, Q_positive, inverse_bound,
    ratio_bound, width_bound, exponential_bound, ?_⟩
  intro asynchronous precision asynchronous_nonnegative
  have reciprocal : 8 / (B : ℝ) ≤ 4 * t := by
    have scale := mul_le_mul_of_nonneg_left inverse_bound
      (by norm_num : (0 : ℝ) ≤ 8)
    calc
      8 / (B : ℝ) = 8 * (1 / (B : ℝ)) := by ring
      _ ≤ 8 * (t / 2) := scale
      _ = 4 * t := by ring
  have ratio_cost :
      (10 + 8 * ((Q : ℝ) / (B : ℝ))) * asynchronous ≤
        (34 / t) * asynchronous := by
    apply mul_le_mul_of_nonneg_right _ asynchronous_nonnegative
    have t_inverse : (1 : ℝ) ≤ 1 / t := by
      apply (le_div_iff₀ positive).mpr
      simpa using bounded
    have ratio_scaled :=
      mul_le_mul_of_nonneg_left ratio_bound
        (by norm_num : (0 : ℝ) ≤ 8)
    have ten_scaled :=
      mul_le_mul_of_nonneg_left t_inverse
        (by norm_num : (0 : ℝ) ≤ 10)
    have ten_piece : (10 : ℝ) ≤ 10 / t := by
      calc
        (10 : ℝ) = 10 * 1 := by ring
        _ ≤ 10 * (1 / t) := ten_scaled
        _ = 10 / t := by ring
    have ratio_piece :
        8 * ((Q : ℝ) / (B : ℝ)) ≤ 24 / t := by
      calc
        8 * ((Q : ℝ) / (B : ℝ)) ≤ 8 * (3 / t) := ratio_scaled
        _ = 24 / t := by ring
    calc
      10 + 8 * ((Q : ℝ) / (B : ℝ)) ≤
          10 / t + 24 / t := add_le_add ten_piece ratio_piece
      _ = 34 / t := by ring
  have exponential_scaled :=
    mul_le_mul_of_nonneg_left exponential_bound
      (by norm_num : (0 : ℝ) ≤ 16)
  unfold unconditionalPublicBucketLoss
  nlinarith

end

end QuantumParallelRepetition


open QuantumParallelRepetition
open scoped ComplexOrder Matrix BigOperators InnerProductSpace
open Complex Matrix Finset

theorem solution
    {d N : ℕ} (grid : 0 < N) (dimension : 0 < d)
    (t : ℝ) (positive : 0 < t) (bounded : t ≤ 1)
    (precision : ℝ) (precision_positive : 0 < precision) :
    ∃ B Q n : ℕ, 0 < B ∧ 0 < Q ∧ 0 < n ∧
      ∃ A C : Fin B → Option ℕ →
          Matrix.unitaryGroup (Fin (N * n)) ℂ,
        ∀ {S L : ℕ}
          (width : Fin S → ℝ) (schedule : Fin L → Fin S)
          (ξ ζ : BipartiteUnitVector d),
          dSVDensityRationalHeterogeneousStoppedCommonPrefixHazard
              Q n width schedule ξ ζ A C ≤
            (34 / t) *
                dSVDensityRationalHeterogeneousActualAsynchronousFlagMass
                  N width schedule ξ ζ +
              4 * precision ^ 2 +
                (16 * (Real.exp 1 - 1) + 4) * t := by
  obtain ⟨B, Q, phases, fine, _, _, _, _, balance⟩ :=
    exists_proofUnconditionalPublicBucketBalance t positive bounded
  obtain ⟨n, harmonic, A, C, source⟩ :=
    exists_proofDSVDensityRationalHeterogeneousStoppedCommonPrefixHazardBound
      grid dimension phases fine precision precision_positive
  refine ⟨B, Q, n, phases, fine, harmonic, A, C, ?_⟩
  intro S L width schedule ξ ζ
  have actual := source width schedule ξ ζ
  have asynchronous_nonnegative :
      0 ≤ dSVDensityRationalHeterogeneousActualAsynchronousFlagMass
        N width schedule ξ ζ := by
    exact
      dSVDensityRationalHeterogeneousActualAsynchronousFlagMass_nonneg
        N width schedule ξ ζ
  exact actual.trans
    (balance
      (dSVDensityRationalHeterogeneousActualAsynchronousFlagMass
        N width schedule ξ ζ)
      precision asynchronous_nonnegative)
