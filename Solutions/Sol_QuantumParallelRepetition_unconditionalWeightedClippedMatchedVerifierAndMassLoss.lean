import Definitions.Def_quantum_parallel_repetition_game
import Definitions.Def_qpr_core_00
import Mathlib.Algebra.BigOperators.Group.Finset.Basic
import Mathlib.Algebra.BigOperators.Group.Finset.Defs
import Mathlib.Algebra.BigOperators.Ring.Finset
import Mathlib.Algebra.Field.Defs
import Mathlib.Algebra.Group.Basic
import Mathlib.Algebra.Group.Defs
import Mathlib.Algebra.Group.Hom.Defs
import Mathlib.Algebra.GroupWithZero.Action.Defs
import Mathlib.Algebra.GroupWithZero.Defs
import Mathlib.Algebra.Module.Defs
import Mathlib.Algebra.Module.LinearMap.Defs
import Mathlib.Algebra.Order.BigOperators.Group.Finset
import Mathlib.Algebra.Order.Group.Unbundled.Abs
import Mathlib.Algebra.Order.Group.Unbundled.Basic
import Mathlib.Algebra.Order.GroupWithZero.Unbundled.Basic
import Mathlib.Algebra.Order.GroupWithZero.Unbundled.Defs
import Mathlib.Algebra.Order.Monoid.Defs
import Mathlib.Algebra.Order.Monoid.Unbundled.Basic
import Mathlib.Algebra.Order.Monoid.Unbundled.Defs
import Mathlib.Algebra.Order.Ring.Abs
import Mathlib.Algebra.Order.Ring.Defs
import Mathlib.Algebra.Order.Ring.Unbundled.Basic
import Mathlib.Algebra.Order.Star.Basic
import Mathlib.Algebra.Ring.Defs
import Mathlib.Algebra.Ring.Hom.Defs
import Mathlib.Algebra.Ring.Nat
import Mathlib.Algebra.Star.Basic
import Mathlib.Analysis.CStarAlgebra.Classes
import Mathlib.Analysis.CStarAlgebra.Module.Constructions
import Mathlib.Analysis.CStarAlgebra.Module.Defs
import Mathlib.Analysis.Complex.Basic
import Mathlib.Analysis.Complex.Norm
import Mathlib.Analysis.Complex.Order
import Mathlib.Analysis.InnerProductSpace.Basic
import Mathlib.Analysis.InnerProductSpace.Defs
import Mathlib.Analysis.Matrix.Normed
import Mathlib.Analysis.Matrix.Order
import Mathlib.Analysis.Normed.Field.Basic
import Mathlib.Analysis.Normed.Group.Basic
import Mathlib.Analysis.Normed.Group.Defs
import Mathlib.Analysis.Normed.Lp.WithLp
import Mathlib.Analysis.Normed.Module.Basic
import Mathlib.Analysis.Normed.Operator.Basic
import Mathlib.Analysis.Normed.Ring.Basic
import Mathlib.Analysis.RCLike.Basic
import Mathlib.Data.Complex.Basic
import Mathlib.Data.Finset.Defs
import Mathlib.Data.Fintype.BigOperators
import Mathlib.Data.Fintype.Defs
import Mathlib.Data.Fintype.Prod
import Mathlib.Data.FunLike.Basic
import Mathlib.Data.Int.Cast.Defs
import Mathlib.Data.Matrix.Basic
import Mathlib.Data.Nat.Cast.Defs
import Mathlib.Data.Nat.Init
import Mathlib.Data.Real.Basic
import Mathlib.Data.Real.Sqrt
import Mathlib.Data.Real.Star
import Mathlib.Data.Real.StarOrdered
import Mathlib.Data.SetLike.Basic
import Mathlib.GroupTheory.GroupAction.Hom
import Mathlib.LinearAlgebra.Matrix.Kronecker
import Mathlib.MeasureTheory.Measure.MeasureSpace
import Mathlib.Order.Basic
import Mathlib.Order.Defs.LinearOrder
import Mathlib.Order.Defs.PartialOrder
import Mathlib.Order.Lattice
import Mathlib.Tactic.Linarith.Lemmas
import Mathlib.Tactic.NormNum.Basic
import Mathlib.Tactic.NormNum.Ineq
import Mathlib.Tactic.NormNum.Result
import Mathlib.Tactic.Ring.Basic
import Mathlib.Tactic.Ring.Common
import Mathlib.Topology.Algebra.Module.ContinuousLinearMap.Basic
import Mathlib.Topology.Defs.Filter
import Mathlib.Topology.MetricSpace.Pseudo.Defs
import Mathlib.Topology.UniformSpace.Defs

namespace QuantumParallelRepetition

noncomputable section

open scoped BigOperators ComplexConjugate InnerProductSpace

variable {H : Type*} [NormedAddCommGroup H] [InnerProductSpace ℂ H]

theorem norm_le_of_operator_contraction
    (W : H →L[ℂ] H) (hW : ‖W‖ ≤ 1) (z : H) :
    ‖W z‖ ≤ ‖z‖ := by
  calc
    ‖W z‖ ≤ ‖W‖ * ‖z‖ := W.le_opNorm z
    _ ≤ 1 * ‖z‖ := mul_le_mul_of_nonneg_right hW (norm_nonneg z)
    _ = ‖z‖ := one_mul _

theorem quadraticExpectation_sub_le
    (W : H →L[ℂ] H) (hW : ‖W‖ ≤ 1) (z w : H) :
    |quadraticExpectation W z - quadraticExpectation W w| ≤
      (‖z‖ + ‖w‖) * ‖z - w‖ := by
  have h_expand :
      ⟪z, W z⟫_ℂ - ⟪w, W w⟫_ℂ =
        ⟪z - w, W z⟫_ℂ + ⟪w, W (z - w)⟫_ℂ := by
    simp [map_sub]
  have hz := norm_le_of_operator_contraction W hW z
  have hdiff := norm_le_of_operator_contraction W hW (z - w)
  unfold quadraticExpectation
  calc
    |(⟪z, W z⟫_ℂ).re - (⟪w, W w⟫_ℂ).re| =
        |(⟪z, W z⟫_ℂ - ⟪w, W w⟫_ℂ).re| := by
          rw [Complex.sub_re]
    _ ≤ ‖⟪z, W z⟫_ℂ - ⟪w, W w⟫_ℂ‖ :=
      Complex.abs_re_le_norm _
    _ = ‖⟪z - w, W z⟫_ℂ + ⟪w, W (z - w)⟫_ℂ‖ := by
      rw [h_expand]
    _ ≤ ‖⟪z - w, W z⟫_ℂ‖ + ‖⟪w, W (z - w)⟫_ℂ‖ :=
      norm_add_le _ _
    _ ≤ ‖z - w‖ * ‖W z‖ + ‖w‖ * ‖W (z - w)‖ :=
      add_le_add (norm_inner_le_norm _ _) (norm_inner_le_norm _ _)
    _ ≤ ‖z - w‖ * ‖z‖ + ‖w‖ * ‖z - w‖ := by
      gcongr
    _ = (‖z‖ + ‖w‖) * ‖z - w‖ := by ring

theorem weighted_real_cauchy
    {ι : Type*} [Fintype ι]
    (weight f g : ι → ℝ)
    (h_weight : ∀ i, 0 ≤ weight i) :
    (∑ i : ι, weight i * f i * g i) ≤
      Real.sqrt (∑ i : ι, weight i * f i ^ 2) *
        Real.sqrt (∑ i : ι, weight i * g i ^ 2) := by
  have h := Real.sum_mul_le_sqrt_mul_sqrt Finset.univ
    (fun i : ι => Real.sqrt (weight i) * f i)
    (fun i : ι => Real.sqrt (weight i) * g i)
  have hsq (i : ι) : Real.sqrt (weight i) ^ 2 = weight i :=
    Real.sq_sqrt (h_weight i)
  have h_left :
      (∑ i : ι,
        (Real.sqrt (weight i) * f i) *
          (Real.sqrt (weight i) * g i)) =
        ∑ i : ι, weight i * f i * g i := by
    apply Finset.sum_congr rfl
    intro i _
    calc
      (Real.sqrt (weight i) * f i) *
          (Real.sqrt (weight i) * g i) =
        Real.sqrt (weight i) ^ 2 * f i * g i := by ring
      _ = weight i * f i * g i := by rw [hsq i]
  have h_f :
      (∑ i : ι, (Real.sqrt (weight i) * f i) ^ 2) =
        ∑ i : ι, weight i * f i ^ 2 := by
    apply Finset.sum_congr rfl
    intro i _
    rw [mul_pow, hsq i]
  have h_g :
      (∑ i : ι, (Real.sqrt (weight i) * g i) ^ 2) =
        ∑ i : ι, weight i * g i ^ 2 := by
    apply Finset.sum_congr rfl
    intro i _
    rw [mul_pow, hsq i]
  simpa [h_left, h_f, h_g] using h

end

open scoped ComplexOrder Matrix BigOperators InnerProductSpace
open Complex Matrix Finset

noncomputable section

open WithLp
open scoped BigOperators Kronecker ComplexOrder MatrixOrder
  Matrix.Norms.L2Operator InnerProductSpace

theorem unconditionalMatchedVerifierAggregate_dependent_continuity
    {J : Type*} [Fintype J]
    {H : J → Type*}
    [∀ j, NormedAddCommGroup (H j)]
    [∀ j, InnerProductSpace ℂ (H j)]
    (weight : J → ℝ)
    (nonnegative : ∀ j, 0 ≤ weight j)
    (operator : (j : J) → (H j →L[ℂ] H j))
    (contraction : ∀ j, ‖operator j‖ ≤ 1)
    (actual ideal : (j : J) → H j) :
    |(∑ j : J, weight j * quadraticExpectation (operator j) (actual j)) -
      (∑ j : J, weight j * quadraticExpectation (operator j) (ideal j))| ≤
      (Real.sqrt (∑ j : J, weight j * ‖actual j‖ ^ 2) +
        Real.sqrt (∑ j : J, weight j * ‖ideal j‖ ^ 2)) *
        Real.sqrt (∑ j : J, weight j * ‖actual j - ideal j‖ ^ 2) := by
  classical
  have point (j : J) :
      |quadraticExpectation (operator j) (actual j) -
        quadraticExpectation (operator j) (ideal j)| ≤
        (‖actual j‖ + ‖ideal j‖) * ‖actual j - ideal j‖ :=
    quadraticExpectation_sub_le
      (operator j) (contraction j) (actual j) (ideal j)
  calc
    |(∑ j : J, weight j * quadraticExpectation (operator j) (actual j)) -
        (∑ j : J, weight j * quadraticExpectation (operator j) (ideal j))| =
      |∑ j : J, weight j *
        (quadraticExpectation (operator j) (actual j) -
          quadraticExpectation (operator j) (ideal j))| := by
            congr 1
            simp_rw [mul_sub]
            rw [Finset.sum_sub_distrib]
    _ ≤ ∑ j : J, |weight j *
      (quadraticExpectation (operator j) (actual j) -
        quadraticExpectation (operator j) (ideal j))| :=
      Finset.abs_sum_le_sum_abs _ _
    _ = ∑ j : J, weight j *
      |quadraticExpectation (operator j) (actual j) -
        quadraticExpectation (operator j) (ideal j)| := by
          apply Finset.sum_congr rfl
          intro j _
          rw [abs_mul, abs_of_nonneg (nonnegative j)]
    _ ≤ ∑ j : J, weight j *
      ((‖actual j‖ + ‖ideal j‖) * ‖actual j - ideal j‖) := by
          apply Finset.sum_le_sum
          intro j _
          exact mul_le_mul_of_nonneg_left (point j) (nonnegative j)
    _ = (∑ j : J, weight j * ‖actual j‖ * ‖actual j - ideal j‖) +
        (∑ j : J, weight j * ‖ideal j‖ * ‖actual j - ideal j‖) := by
          rw [← Finset.sum_add_distrib]
          apply Finset.sum_congr rfl
          intro j _
          ring
    _ ≤ Real.sqrt (∑ j : J, weight j * ‖actual j‖ ^ 2) *
          Real.sqrt (∑ j : J, weight j * ‖actual j - ideal j‖ ^ 2) +
        Real.sqrt (∑ j : J, weight j * ‖ideal j‖ ^ 2) *
          Real.sqrt (∑ j : J, weight j * ‖actual j - ideal j‖ ^ 2) := by
          exact add_le_add
            (weighted_real_cauchy weight
              (fun j => ‖actual j‖)
              (fun j => ‖actual j - ideal j‖) nonnegative)
            (weighted_real_cauchy weight
              (fun j => ‖ideal j‖)
              (fun j => ‖actual j - ideal j‖) nonnegative)
    _ = (Real.sqrt (∑ j : J, weight j * ‖actual j‖ ^ 2) +
        Real.sqrt (∑ j : J, weight j * ‖ideal j‖ ^ 2)) *
        Real.sqrt (∑ j : J, weight j * ‖actual j - ideal j‖ ^ 2) := by
          ring

theorem unconditionalMatchedVerifierAggregate_dependent_le
    {J : Type*} [Fintype J]
    {H : J → Type*}
    [∀ j, NormedAddCommGroup (H j)]
    [∀ j, InnerProductSpace ℂ (H j)]
    (weight : J → ℝ)
    (nonnegative : ∀ j, 0 ≤ weight j)
    (operator : (j : J) → (H j →L[ℂ] H j))
    (contraction : ∀ j, ‖operator j‖ ≤ 1)
    (actual ideal : (j : J) → H j)
    (actual_mass : (∑ j : J, weight j * ‖actual j‖ ^ 2) ≤ 1)
    (ideal_mass : (∑ j : J, weight j * ‖ideal j‖ ^ 2) ≤ 1)
    (Δ : ℝ)
    (deviation :
      (∑ j : J, weight j * ‖actual j - ideal j‖ ^ 2) ≤ Δ) :
    |(∑ j : J, weight j * quadraticExpectation (operator j) (actual j)) -
      (∑ j : J, weight j * quadraticExpectation (operator j) (ideal j))| ≤
      2 * Real.sqrt Δ := by
  have actual_nonnegative :
      0 ≤ ∑ j : J, weight j * ‖actual j‖ ^ 2 :=
    Finset.sum_nonneg
      (fun j _ => mul_nonneg (nonnegative j) (sq_nonneg _))
  have ideal_nonnegative :
      0 ≤ ∑ j : J, weight j * ‖ideal j‖ ^ 2 :=
    Finset.sum_nonneg
      (fun j _ => mul_nonneg (nonnegative j) (sq_nonneg _))
  have error_nonnegative :
      0 ≤ ∑ j : J, weight j * ‖actual j - ideal j‖ ^ 2 :=
    Finset.sum_nonneg
      (fun j _ => mul_nonneg (nonnegative j) (sq_nonneg _))
  have actual_root :
      Real.sqrt (∑ j : J, weight j * ‖actual j‖ ^ 2) ≤ 1 := by
    nlinarith [
      Real.sq_sqrt actual_nonnegative,
      Real.sqrt_nonneg (∑ j : J, weight j * ‖actual j‖ ^ 2)]
  have ideal_root :
      Real.sqrt (∑ j : J, weight j * ‖ideal j‖ ^ 2) ≤ 1 := by
    nlinarith [
      Real.sq_sqrt ideal_nonnegative,
      Real.sqrt_nonneg (∑ j : J, weight j * ‖ideal j‖ ^ 2)]
  calc
    |(∑ j : J, weight j * quadraticExpectation (operator j) (actual j)) -
        (∑ j : J, weight j * quadraticExpectation (operator j) (ideal j))| ≤
      (Real.sqrt (∑ j : J, weight j * ‖actual j‖ ^ 2) +
        Real.sqrt (∑ j : J, weight j * ‖ideal j‖ ^ 2)) *
        Real.sqrt (∑ j : J, weight j * ‖actual j - ideal j‖ ^ 2) :=
          unconditionalMatchedVerifierAggregate_dependent_continuity
            weight nonnegative operator contraction actual ideal
    _ ≤ 2 * Real.sqrt Δ := by
      apply mul_le_mul
      · linarith
      · exact Real.sqrt_le_sqrt deviation
      · exact Real.sqrt_nonneg _
      · norm_num

variable {X Y A B : Type*}
variable [Fintype X] [Fintype Y] [Fintype A] [Fintype B]

end

end QuantumParallelRepetition


open QuantumParallelRepetition
open scoped ComplexOrder Matrix BigOperators InnerProductSpace
open Complex Matrix Finset
open WithLp
open scoped BigOperators ComplexOrder Kronecker MatrixOrder
  Matrix.Norms.L2Operator InnerProductSpace

theorem solution
    {I K : Type*} [Fintype I] [Fintype K]
    (weight : I → ℝ)
    (weight_nonnegative : ∀ i, 0 ≤ weight i)
    (weight_normalized : (∑ i : I, weight i) = 1)
    (win : I → ℝ) (win_bounded : ∀ i, win i ≤ 1)
    {H : I × K → Type*}
    [∀ p, NormedAddCommGroup (H p)]
    [∀ p, InnerProductSpace ℂ (H p)]
    (operator : (p : I × K) → (H p →L[ℂ] H p))
    (contraction : ∀ p, ‖operator p‖ ≤ 1)
    (actual canonical source : (p : I × K) → H p)
    (actual_mass :
      (∑ i : I, weight i *
        ∑ k : K, ‖actual (i, k)‖ ^ 2) ≤ 1)
    (canonical_mass :
      (∑ i : I, weight i *
        ∑ k : K, ‖canonical (i, k)‖ ^ 2) ≤ 1)
    (canonical_row_mass : ∀ i : I,
      (∑ k : K, ‖canonical (i, k)‖ ^ 2) ≤ 1)
    (same_work_mass : ∀ (i : I) (k : K),
      ‖source (i, k)‖ = ‖canonical (i, k)‖)
    (supported_born : ∀ (i : I), weight i ≠ 0 →
      ∀ k : K,
        quadraticExpectation (operator (i, k)) (source (i, k)) =
          ‖source (i, k)‖ ^ 2 * win i)
    (Δclean Δclip bad : ℝ)
    (clean_deviation :
      (∑ i : I, weight i *
        ∑ k : K,
          ‖actual (i, k) - canonical (i, k)‖ ^ 2) ≤ Δclean)
    (clip_deviation :
      (∑ i : I, weight i *
        ∑ k : K,
          ‖canonical (i, k) - source (i, k)‖ ^ 2) ≤ Δclip)
    (actual_success :
      1 - bad ≤ ∑ i : I, weight i *
        ∑ k : K, ‖actual (i, k)‖ ^ 2) :
    (∑ i : I, weight i * win i) - bad -
        4 * Real.sqrt Δclean - 2 * Real.sqrt Δclip ≤
      ∑ i : I, weight i *
        ∑ k : K,
          quadraticExpectation (operator (i, k)) (actual (i, k)) := by
  classical
  let pairWeight : I × K → ℝ := fun p => weight p.1
  have pair_nonnegative (p : I × K) : 0 ≤ pairWeight p :=
    weight_nonnegative p.1
  have pair_actual_mass :
      (∑ p : I × K, pairWeight p * ‖actual p‖ ^ 2) ≤ 1 := by
    simpa [pairWeight, Fintype.sum_prod_type, Finset.mul_sum]
      using actual_mass
  have pair_canonical_mass :
      (∑ p : I × K, pairWeight p * ‖canonical p‖ ^ 2) ≤ 1 := by
    simpa [pairWeight, Fintype.sum_prod_type, Finset.mul_sum]
      using canonical_mass
  have source_mass :
      (∑ i : I, weight i *
        ∑ k : K, ‖source (i, k)‖ ^ 2) ≤ 1 := by
    simpa only [same_work_mass] using canonical_mass
  have pair_source_mass :
      (∑ p : I × K, pairWeight p * ‖source p‖ ^ 2) ≤ 1 := by
    simpa [pairWeight, Fintype.sum_prod_type, Finset.mul_sum]
      using source_mass
  have pair_clean_deviation :
      (∑ p : I × K,
        pairWeight p * ‖actual p - canonical p‖ ^ 2) ≤ Δclean := by
    simpa [pairWeight, Fintype.sum_prod_type, Finset.mul_sum]
      using clean_deviation
  have pair_clip_deviation :
      (∑ p : I × K,
        pairWeight p * ‖canonical p - source p‖ ^ 2) ≤ Δclip := by
    simpa [pairWeight, Fintype.sum_prod_type, Finset.mul_sum]
      using clip_deviation
  have clean_verifier_gap :
      |(∑ i : I, weight i *
          ∑ k : K,
            quadraticExpectation (operator (i, k)) (actual (i, k))) -
        (∑ i : I, weight i *
          ∑ k : K,
            quadraticExpectation (operator (i, k)) (canonical (i, k)))| ≤
        2 * Real.sqrt Δclean := by
    simpa [pairWeight, Fintype.sum_prod_type, Finset.mul_sum] using
      (unconditionalMatchedVerifierAggregate_dependent_le
        pairWeight pair_nonnegative operator contraction actual canonical
        pair_actual_mass pair_canonical_mass Δclean pair_clean_deviation)
  have clip_verifier_gap :
      |(∑ i : I, weight i *
          ∑ k : K,
            quadraticExpectation (operator (i, k)) (canonical (i, k))) -
        (∑ i : I, weight i *
          ∑ k : K,
            quadraticExpectation (operator (i, k)) (source (i, k)))| ≤
        2 * Real.sqrt Δclip := by
    simpa [pairWeight, Fintype.sum_prod_type, Finset.mul_sum] using
      (unconditionalMatchedVerifierAggregate_dependent_le
        pairWeight pair_nonnegative operator contraction canonical source
        pair_canonical_mass pair_source_mass Δclip pair_clip_deviation)
  have identity_expectation (p : I × K) (v : H p) :
      quadraticExpectation (ContinuousLinearMap.id ℂ (H p)) v =
        ‖v‖ ^ 2 := by
    unfold quadraticExpectation
    change (⟪v, v⟫_ℂ).re = ‖v‖ ^ 2
    exact (norm_sq_eq_re_inner (𝕜 := ℂ) v).symm
  have clean_mass_gap :
      |(∑ i : I, weight i *
          ∑ k : K, ‖actual (i, k)‖ ^ 2) -
        (∑ i : I, weight i *
          ∑ k : K, ‖canonical (i, k)‖ ^ 2)| ≤
        2 * Real.sqrt Δclean := by
    have bounded :=
      unconditionalMatchedVerifierAggregate_dependent_le
        pairWeight pair_nonnegative
        (fun p => ContinuousLinearMap.id ℂ (H p))
        (fun _ => ContinuousLinearMap.norm_id_le)
        actual canonical pair_actual_mass pair_canonical_mass
        Δclean pair_clean_deviation
    simpa [pairWeight, Fintype.sum_prod_type, Finset.mul_sum,
      identity_expectation] using bounded
  have source_row_mass (i : I) :
      (∑ k : K, ‖source (i, k)‖ ^ 2) ≤ 1 := by
    simpa only [same_work_mass] using canonical_row_mass i
  have ideal_payoff :
      (∑ i : I, weight i * win i) -
          (1 - ∑ i : I, weight i *
            ∑ k : K, ‖source (i, k)‖ ^ 2) ≤
        ∑ i : I, weight i *
          ∑ k : K,
            quadraticExpectation (operator (i, k)) (source (i, k)) := by
    have born :
        (∑ i : I, weight i *
          ∑ k : K,
            quadraticExpectation (operator (i, k)) (source (i, k))) =
          ∑ i : I, weight i *
            ((∑ k : K, ‖source (i, k)‖ ^ 2) * win i) := by
      apply Finset.sum_congr rfl
      intro i _
      by_cases zero : weight i = 0
      · simp [zero]
      · congr 1
        simp_rw [supported_born i zero]
        rw [Finset.sum_mul]
    rw [born]
    have lost_mass :
        (∑ i : I, weight i *
          (1 - ∑ k : K, ‖source (i, k)‖ ^ 2)) =
          1 - ∑ i : I, weight i *
            ∑ k : K, ‖source (i, k)‖ ^ 2 := by
      calc
        (∑ i : I, weight i *
          (1 - ∑ k : K, ‖source (i, k)‖ ^ 2)) =
            (∑ i : I, weight i) -
              ∑ i : I, weight i *
                ∑ k : K, ‖source (i, k)‖ ^ 2 := by
          rw [← Finset.sum_sub_distrib]
          apply Finset.sum_congr rfl
          intro i _
          ring
        _ = _ := by rw [weight_normalized]
    calc
      (∑ i : I, weight i * win i) -
          (1 - ∑ i : I, weight i *
            ∑ k : K, ‖source (i, k)‖ ^ 2) =
          ∑ i : I, weight i *
            (win i - (1 - ∑ k : K, ‖source (i, k)‖ ^ 2)) := by
        rw [← lost_mass, ← Finset.sum_sub_distrib]
        apply Finset.sum_congr rfl
        intro i _
        ring
      _ ≤ ∑ i : I, weight i *
            ((∑ k : K, ‖source (i, k)‖ ^ 2) * win i) := by
        apply Finset.sum_le_sum
        intro i _
        apply mul_le_mul_of_nonneg_left _ (weight_nonnegative i)
        have loss := mul_nonneg
          (sub_nonneg.mpr (source_row_mass i))
          (sub_nonneg.mpr (win_bounded i))
        nlinarith
  have clean_verifier_signed :
      (∑ i : I, weight i *
        ∑ k : K,
          quadraticExpectation (operator (i, k)) (canonical (i, k))) -
      (∑ i : I, weight i *
        ∑ k : K,
          quadraticExpectation (operator (i, k)) (actual (i, k))) ≤
        2 * Real.sqrt Δclean := by
    exact (le_abs_self _).trans (by
      simpa [abs_sub_comm] using clean_verifier_gap)
  have clip_verifier_signed :
      (∑ i : I, weight i *
        ∑ k : K,
          quadraticExpectation (operator (i, k)) (source (i, k))) -
      (∑ i : I, weight i *
        ∑ k : K,
          quadraticExpectation (operator (i, k)) (canonical (i, k))) ≤
        2 * Real.sqrt Δclip := by
    exact (le_abs_self _).trans (by
      simpa [abs_sub_comm] using clip_verifier_gap)
  have clean_mass_signed :
      (∑ i : I, weight i *
        ∑ k : K, ‖actual (i, k)‖ ^ 2) -
      (∑ i : I, weight i *
        ∑ k : K, ‖source (i, k)‖ ^ 2) ≤
        2 * Real.sqrt Δclean := by
    simpa only [same_work_mass] using
      ((le_abs_self _).trans clean_mass_gap)
  linarith
