/-
Copyright (c) 2026 LeanLevy Contributors. All rights reserved.
Released under MIT license as described in the file LICENSE.
Authors: LeanLevy Contributors
-/
import Definitions.Def_LeanLevy_Fourier_MeasureFourier
import Mathlib.MeasureTheory.Measure.CharacteristicFunction.Basic
import Mathlib.MeasureTheory.Measure.ProbabilityMeasure

/-!
# Characteristic Functions of Probability Measures

This file bridges the project's `fourierTransform` (defined for `FiniteMeasure ℝ`) with
mathlib's `charFun`, then specialises to `ProbabilityMeasure ℝ` with convenience API and
a statement of Bochner's positive-definiteness theorem.

## Main definitions

* `MeasureTheory.ProbabilityMeasure.characteristicFun` — the characteristic function of a
  probability measure, defined as `ξ ↦ charFun (μ : Measure ℝ) ξ`.

## Main results

* `MeasureTheory.FiniteMeasure.fourierTransform_eq_charFun` — bridge: our `fourierTransform`
  equals mathlib's `charFun`.
* `MeasureTheory.ProbabilityMeasure.characteristicFun_zero` — `φ(0) = 1`.
* `MeasureTheory.ProbabilityMeasure.norm_characteristicFun_le_one` — `‖φ(ξ)‖ ≤ 1`.
* `MeasureTheory.ProbabilityMeasure.characteristicFun_neg` — `φ(-ξ) = conj(φ(ξ))`.
* `MeasureTheory.ProbabilityMeasure.continuous_characteristicFun` — `φ` is continuous.
* `MeasureTheory.ProbabilityMeasure.characteristicFun_positiveSemiDefinite` —
  the matrix `(φ(ξⱼ - ξₖ))` is positive semi-definite.
* `MeasureTheory.FiniteMeasure.fourierTransform_conv` — the Fourier transform is
  multiplicative under measure convolution.
* `MeasureTheory.ProbabilityMeasure.characteristicFun_conv` — the characteristic function
  is multiplicative under measure convolution.
-/

open MeasureTheory Complex ComplexConjugate

/-! ## Bridge: `fourierTransform` equals `charFun` -/

namespace MeasureTheory.FiniteMeasure





end MeasureTheory.FiniteMeasure

/-! ## Characteristic function of a probability measure -/

namespace MeasureTheory.ProbabilityMeasure

variable (μ : ProbabilityMeasure ℝ)

/-- The characteristic function of a probability measure on ℝ. -/
noncomputable def characteristicFun (ξ : ℝ) : ℂ :=
  charFun (μ : Measure ℝ) ξ

@[simp]
theorem characteristicFun_def (ξ : ℝ) :
    characteristicFun μ ξ = charFun (μ : Measure ℝ) ξ := rfl











/-- **Bochner's theorem (necessity direction):** The characteristic function of a probability
measure is positive semi-definite: for any frequencies `ξ₁, …, ξₙ` and complex weights
`c₁, …, cₙ`, the Hermitian form `∑ⱼ ∑ₖ c̄ⱼ cₖ φ(ξⱼ - ξₖ)` has non-negative real part.

Proof roadmap:
1. Unfold `characteristicFun` to integrals via `charFun_apply_real`.
2. Pull the finite sums through the integral (`integral_finsetSum`).
3. Show the integrand equals `‖∑ⱼ cⱼ exp(i ξⱼ x)‖²` using conjugate symmetry of `exp`.
4. Conclude by `integral_nonneg`. -/
theorem characteristicFun_positiveSemiDefinite
    {n : ℕ} (ξ : Fin n → ℝ) (c : Fin n → ℂ) :
    0 ≤ (∑ j : Fin n, ∑ k : Fin n, starRingEnd ℂ (c j) * c k *
      characteristicFun μ (ξ j - ξ k)).re := by
  simp only [characteristicFun_def, charFun_apply_real]
  -- Define the wave function w(x) = ∑ⱼ cⱼ exp(-i ξⱼ x)
  set w : ℝ → ℂ := fun x => ∑ j : Fin n, c j * exp (-(↑(ξ j) * ↑x * I))
  -- Each summand is integrable against the finite measure μ
  have hint : ∀ j k : Fin n, Integrable
      (fun x : ℝ => starRingEnd ℂ (c j) * c k * exp (↑(ξ j - ξ k) * ↑x * I))
      (μ : Measure ℝ) := by
    intro j k
    apply (integrable_const (‖starRingEnd ℂ (c j) * c k‖ : ℝ)).mono'
    · exact (by fun_prop : Continuous _).aestronglyMeasurable
    · filter_upwards with x
      simp only [norm_mul,
        show (↑(ξ j - ξ k) : ℂ) * ↑x * I = ↑((ξ j - ξ k) * x) * I from by push_cast; ring,
        norm_exp_ofReal_mul_I, mul_one, le_refl]
  -- Algebraic identity: .re of double sum at each point x equals normSq(w x) ≥ 0
  have alg : ∀ x : ℝ, 0 ≤ (∑ j : Fin n, ∑ k : Fin n,
      starRingEnd ℂ (c j) * c k * exp (↑(ξ j - ξ k) * ↑x * I)).re := by
    intro x
    suffices ∑ j : Fin n, ∑ k : Fin n,
        starRingEnd ℂ (c j) * c k * exp (↑(ξ j - ξ k) * ↑x * I) =
        ↑(Complex.normSq (w x)) by
      rw [this, Complex.ofReal_re]; exact Complex.normSq_nonneg _
    rw [Complex.normSq_eq_conj_mul_self, map_sum, Finset.sum_mul]
    refine Finset.sum_congr rfl fun j _ => ?_
    rw [Finset.mul_sum]
    refine Finset.sum_congr rfl fun k _ => ?_
    rw [show (↑(ξ j - ξ k) : ℂ) * ↑x * I = ↑(ξ j) * ↑x * I + -(↑(ξ k) * ↑x * I) from by
        push_cast; ring, exp_add]
    simp only [map_mul, ← exp_conj, map_neg, conj_ofReal, conj_I, mul_neg, neg_neg]
    ring
  -- Pull constants into integrals
  have h_pull : ∀ (r : ℂ) (f : ℝ → ℂ),
      r * ∫ a, f a ∂(μ : Measure ℝ) = ∫ a, r * f a ∂(μ : Measure ℝ) :=
    fun r f => (integral_const_mul r f).symm
  simp_rw [h_pull]
  -- Merge inner sums: for each j, ∑_k ∫ f_jk = ∫ ∑_k f_jk
  simp_rw [(integral_finsetSum Finset.univ (fun k _ => hint _ k)).symm]
  -- Merge outer sum: ∑_j ∫ g_j = ∫ ∑_j g_j
  rw [(integral_finsetSum Finset.univ
    (fun j _ => integrable_finsetSum _ (fun k _ => hint j k))).symm]
  -- Push .re through the integral and conclude
  set f : ℝ → ℂ := fun a => ∑ j : Fin n, ∑ k : Fin n,
    starRingEnd ℂ (c j) * c k * exp (↑(ξ j - ξ k) * ↑a * I)
  have hI : Integrable f (μ : Measure ℝ) :=
    integrable_finsetSum _ fun j _ => integrable_finsetSum _ fun k _ => hint j k
  calc (0 : ℝ)
      ≤ ∫ a, (f a).re ∂(μ : Measure ℝ) := integral_nonneg fun x => alg x
    _ = (∫ a, f a ∂(μ : Measure ℝ)).re :=
        (@RCLike.reCLM ℂ _).integral_comp_comm hI



end MeasureTheory.ProbabilityMeasure
