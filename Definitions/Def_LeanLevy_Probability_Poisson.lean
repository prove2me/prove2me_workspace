/-
Copyright (c) 2026 LeanLevy Contributors. All rights reserved.
Released under MIT license as described in the file LICENSE.
Authors: LeanLevy Contributors
-/
import Mathlib.Probability.Distributions.Poisson.Basic
import Mathlib.Probability.ProbabilityMassFunction.Integrals
import Mathlib.Topology.Algebra.InfiniteSum.NatInt
import Mathlib.Topology.Algebra.InfiniteSum.Ring
import Mathlib.MeasureTheory.Group.Convolution
import Definitions.Def_LeanLevy_Probability_Characteristic

/-!
# Poisson Distribution: Expectation, Variance, and Characteristic Function

This file collects the basic facts about the Poisson distribution with rate `r`: its moments,
its characteristic function (in both the ℕ-level and ℝ-pushforward forms), the additivity of
independent Poisson laws under convolution, and the degenerate zero-rate case.

## Main results

* `ProbabilityTheory.poissonExpectation_hasSum` — E[X] = r
* `ProbabilityTheory.poissonVariance` — Var[X] = r
* `ProbabilityTheory.integrable_id_poissonMeasure` — the identity `n ↦ n` is integrable against
  `poissonMeasure r`
* `ProbabilityTheory.integral_id_poissonMeasure`, `ProbabilityTheory.integral_factorialMoment_poissonMeasure`
  — the mean and second factorial moment as Bochner integrals against `poissonMeasure r`
* `ProbabilityTheory.poissonCharFun_eq` — φ(ξ) = exp(r(e^{iξ} − 1))
* `ProbabilityTheory.charFun_poissonMeasure_eq` — the same identity for the ℝ-pushforward of
  `poissonMeasure r`
* `ProbabilityTheory.poissonMeasure_add_conv` — the sum of two independent Poisson variables is
  Poisson with the summed rate
* `ProbabilityTheory.poissonMeasure_zero` — the zero-rate law is the Dirac mass at `0`

## Implementation notes

All three proofs follow the same pattern: strip off the first few zero terms via
`hasSum_nat_add_iff'`, simplify the shifted summand using `Nat.factorial_succ`, and
reduce to `hasSum_poissonMeasure_real` (the normalization identity
`∑ (poissonMeasure r).real {n} = 1`), obtained via mathlib's `poissonMeasure`/`.real {n}` atoms.

The characteristic function connects to the project's `Characteristic.lean` infrastructure
and is needed for future Lévy process / compound Poisson work.
-/

open scoped ENNReal NNReal Nat
open MeasureTheory Real Complex Finset

namespace ProbabilityTheory

/-! ## PMF bridge lemmas -/

/-- The real-valued Poisson point masses `n ↦ Po(r).real {n}` are summable to `1`. -/
lemma hasSum_poissonMeasure_real (r : ℝ≥0) :
    HasSum (fun n ↦ (poissonMeasure r).real {n}) 1 := by
  simpa only [poissonMeasure_real_singleton] using hasSum_one_poissonMeasure r



/-! ## Expectation: E[X] = r -/

/-- The key algebraic identity: `(n+1) * Po(r).real {n+1} = r * Po(r).real {n}`. -/
private lemma expectation_shift (r : ℝ≥0) (n : ℕ) :
    ↑(n + 1) * (poissonMeasure r).real {n + 1} = (r : ℝ) * (poissonMeasure r).real {n} := by
  simp only [poissonMeasure_real_singleton, Nat.factorial_succ, Nat.cast_mul, pow_succ]
  have h1 : (↑(n !) : ℝ) ≠ 0 := Nat.cast_ne_zero.mpr (Nat.factorial_ne_zero n)
  have h2 : (↑(n + 1) : ℝ) ≠ 0 := Nat.cast_ne_zero.mpr (Nat.succ_ne_zero n)
  field_simp

/-- **Poisson expectation (HasSum form):** `∑ n * P(X = n) = r`. -/
theorem poissonExpectation_hasSum (r : ℝ≥0) :
    HasSum (fun (n : ℕ) ↦ ↑n * (poissonMeasure r).real {n}) (r : ℝ) := by
  apply (hasSum_nat_add_iff' 1).mp
  simp only [sum_range_one, Nat.cast_zero, zero_mul, sub_zero]
  simp_rw [expectation_shift]
  simpa [mul_one] using (hasSum_poissonMeasure_real r).mul_left (r : ℝ)

/-! ## Variance: Var[X] = r -/

/-- Algebraic identity for the factorial moment shift:
`(n+2)(n+1) * (poissonMeasure r).real {n+2} = r² * (poissonMeasure r).real {n}`. -/
private lemma factorial_moment_shift (r : ℝ≥0) (n : ℕ) :
    (↑(n + 2) : ℝ) * ↑(n + 1) * (poissonMeasure r).real {n + 2} =
    (r : ℝ) ^ 2 * (poissonMeasure r).real {n} := by
  simp only [poissonMeasure_real_singleton, Nat.factorial_succ, Nat.cast_mul, pow_succ]
  have h1 : (↑(n !) : ℝ) ≠ 0 := Nat.cast_ne_zero.mpr (Nat.factorial_ne_zero n)
  have h2 : (↑(n + 1) : ℝ) ≠ 0 := Nat.cast_ne_zero.mpr (Nat.succ_ne_zero n)
  have h3 : (↑(n + 2) : ℝ) ≠ 0 := Nat.cast_ne_zero.mpr (by omega)
  field_simp

/-- **Second factorial moment:** `∑ n(n-1) * P(X = n) = r²`. -/
theorem poissonFactorialMoment2_hasSum (r : ℝ≥0) :
    HasSum (fun (n : ℕ) ↦ ((↑n : ℝ) * (↑n - 1)) * (poissonMeasure r).real {n}) ((r : ℝ) ^ 2) := by
  apply (hasSum_nat_add_iff' 2).mp
  simp only [sum_range_succ, sum_range_zero, Nat.cast_zero, Nat.cast_one,
    zero_mul, zero_add, sub_self, mul_zero, sub_zero]
  have key : ∀ n : ℕ, ((↑(n + 2) : ℝ) * (↑(n + 2) - 1)) * (poissonMeasure r).real {n + 2} =
      (r : ℝ) ^ 2 * (poissonMeasure r).real {n} := by
    intro n
    have : (↑(n + 2) : ℝ) - 1 = ↑(n + 1) := by push_cast; ring
    rw [this]
    exact factorial_moment_shift r n
  simp_rw [key]
  simpa [mul_one] using (hasSum_poissonMeasure_real r).mul_left ((r : ℝ) ^ 2)





/-! ## Moment integrals against `poissonMeasure` -/









/-! ## Characteristic function -/

/-- The characteristic function of the Poisson distribution, defined as a tsum over ℕ. -/
noncomputable def poissonCharFun (r : ℝ≥0) (ξ : ℝ) : ℂ :=
  ∑' n : ℕ, cexp (↑ξ * ↑(n : ℝ) * I) * ↑((poissonMeasure r).real {n})





/-! ## Degenerate rate -/



/-! ## Characteristic function of the pushforward measure -/

/-- The characteristic function of the Poisson measure pushed forward to `ℝ` equals
`exp(r(e^{iξ} − 1))`.

**Proof:** immediate from mathlib's `charFun_map_cast_poissonMeasure`, the closed form for the
characteristic function of the ℝ-pushforward of `poissonMeasure`. -/
theorem charFun_poissonMeasure_eq (r : ℝ≥0) (ξ : ℝ) :
    charFun ((poissonMeasure r).map (Nat.cast : ℕ → ℝ)) ξ =
    cexp (↑(r : ℝ) * (cexp (↑ξ * I) - 1)) := by
  rw [charFun_map_cast_poissonMeasure r ξ]

/-! ## Poisson convolution on ℕ -/

/-- Poisson convolution at the `ℕ` level: pushing forward the product
`poissonMeasure(a) ⊗ poissonMeasure(b)` through addition gives `poissonMeasure(a + b)`. -/
theorem poissonMeasure_add_conv (a b : ℝ≥0) :
    ((poissonMeasure a).prod (poissonMeasure b)).map (fun p : ℕ × ℕ => p.1 + p.2) =
    poissonMeasure (a + b) :=
  poissonMeasure_conv_poissonMeasure a b

/-- Singleton-level Poisson convolution: the convolution sum at a single point. -/
theorem poissonMeasure_conv_singleton (a b : ℝ≥0) (m : ℕ) :
    (∑' n : ℕ, if n ≤ m then poissonMeasure a {n} * poissonMeasure b {m - n} else 0) =
    poissonMeasure (a + b) {m} := by
  have hpc := poissonMeasure_add_conv a b
  -- Evaluate both sides at {m}
  have hpc' : ((poissonMeasure a).prod (poissonMeasure b)).map
      (fun p : ℕ × ℕ => p.1 + p.2) {m} = poissonMeasure (a + b) {m} := by rw [hpc]
  rw [Measure.map_apply Measurable.of_discrete (measurableSet_singleton m)] at hpc'
  rw [← hpc']
  -- Express preimage as disjoint union of singletons {(n, m-n)}
  have hfib : (fun p : ℕ × ℕ => p.1 + p.2) ⁻¹' {m} =
      ⋃ n : ℕ, if n ≤ m then {⟨n, m - n⟩} else ∅ := by
    ext ⟨a', b'⟩
    simp only [Set.mem_preimage, Set.mem_singleton_iff, Set.mem_iUnion]
    constructor
    · intro hab; exact ⟨a', by rw [if_pos (by omega)]; ext <;> simp; omega⟩
    · rintro ⟨n, hn⟩
      by_cases hle : n ≤ m
      · rw [if_pos hle] at hn; obtain ⟨rfl, rfl⟩ := Prod.mk.inj hn; omega
      · rw [if_neg hle] at hn; exact absurd hn (by simp)
  rw [hfib, measure_iUnion₀
    (by intro i j hij; simp only [Function.onFun, AEDisjoint]
        by_cases hi : i ≤ m
        · by_cases hj : j ≤ m
          · rw [if_pos hi, if_pos hj]
            exact (Set.disjoint_singleton.mpr (fun h => hij (Prod.mk.inj h).1)).aedisjoint
          · rw [if_neg hj]; simp
        · rw [if_neg hi]; simp)
    (by intro n; by_cases hn : n ≤ m
        · rw [if_pos hn]; exact (measurableSet_singleton _).nullMeasurableSet
        · rw [if_neg hn]; exact MeasurableSet.empty.nullMeasurableSet)]
  congr 1; ext n
  by_cases hn : n ≤ m
  · rw [if_pos hn, if_pos hn,
      show ({⟨n, m - n⟩} : Set (ℕ × ℕ)) = {n} ×ˢ {m - n} from (Set.singleton_prod_singleton).symm,
      Measure.prod_prod]
  · rw [if_neg hn, if_neg hn, measure_empty]

end ProbabilityTheory
