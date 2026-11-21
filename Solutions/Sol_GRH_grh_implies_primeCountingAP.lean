import Mathlib
import Definitions.Def_GRH_Defs
import Definitions.Def_LandauFunction_logIntegral
import Definitions.Def_ArtinBV
import Theorems.Thm_GRH_grh_implies_psiAP_square_root
import Theorems.Thm_GRH_primeCountingAP_bound_of_psiAP_bound

open Filter Asymptotics

/-- Proof sketch for `GRH.grh_implies_primeCountingAP`.

    Under the mission's zero-free form of GRH, the effective Chebyshev bound in
    arithmetic progressions
    `|ψ(x;q,a) − x/φ(q)| ≤ C·√x·(log x)²`
    (child `GRH.grh_implies_psiAP_square_root`) is transferred by discrete Abel
    summation to the prime counting function
    `|π(x;q,a) − Li(x)/φ(q)| ≤ C'·x^{1/2+ε}`
    (child `GRH.primeCountingAP_bound_of_psiAP_bound`, proved outright here).
    The only glue needed is the elementary absorption of the logarithmic factor,
    `(log x)² ≤ (2/ε)²·x^ε` for `x ≥ 2`, obtained from
    `log x ≤ x^{ε/2}/(ε/2)`; the resulting pointwise bound is then promoted to
    `=O[atTop]` via the filter characterisation of big-O. -/
theorem solution
    (hGRH : ∀ (q : ℕ) [NeZero q] (χ : DirichletCharacter ℂ q) (s : ℂ),
      (1 / 2 : ℝ) < s.re → ¬ (χ = 1 ∧ s = 1) → DirichletCharacter.LFunction χ s ≠ 0)
    (q a : ℕ) (hq : q ≠ 0) (ha : a.Coprime q) (ε : ℝ) (hε : 0 < ε) :
    (fun x : ℝ => (GRH.primeCountingAP q a x : ℝ) - LandauFunction.logIntegral x / (q.totient : ℝ))
      =O[atTop] (fun x : ℝ => x ^ ((1 : ℝ) / 2 + ε)) := by
  -- Step 1: the ψ square-root bound from the open child.
  obtain ⟨C, hC0, hpsiA⟩ := GRH.grh_implies_psiAP_square_root hGRH q a hq ha
  have hε2 : 0 < ε / 2 := by positivity
  -- Step 2: absorb the logarithmic factor: (log x)² ≤ (2/ε)² · x^ε for x ≥ 2,
  -- so the ψ bound has the shape required by the partial-summation child.
  have hpsiB : ∀ x : ℝ, 2 ≤ x →
      |ArtinPrimitiveRoots.psiAP ⌊x⌋₊ q a - x / (q.totient : ℝ)| ≤
        C * (2 / ε) ^ 2 * x ^ ((1 : ℝ) / 2 + ε) := by
    intro x hx
    have hx0 : 0 ≤ x := by linarith
    have hx1 : 0 < x := by linarith
    have hlog0 : 0 ≤ Real.log x := Real.log_nonneg (by linarith)
    -- log x ≤ x^{ε/2}/(ε/2) = x^{ε/2}·(2/ε)
    have hlog : Real.log x ≤ x ^ (ε / 2) * (2 / ε) := by
      calc Real.log x ≤ x ^ (ε / 2) / (ε / 2) := Real.log_le_rpow_div hx0 hε2
        _ = x ^ (ε / 2) * (ε / 2)⁻¹ := div_eq_mul_inv ..
        _ = x ^ (ε / 2) * (2 / ε) := by rw [inv_div]
    -- squaring (both sides are nonnegative)
    have hsq : (Real.log x) ^ 2 ≤ (x ^ (ε / 2)) ^ 2 * (2 / ε) ^ 2 := by
      have h1 : Real.log x * Real.log x ≤
          (x ^ (ε / 2) * (2 / ε)) * (x ^ (ε / 2) * (2 / ε)) :=
        mul_self_le_mul_self hlog0 hlog
      simp only [← pow_two, mul_pow] at h1
      exact h1
    -- (x^{ε/2})² = x^ε
    have hpow : (x ^ (ε / 2)) ^ 2 = x ^ ε := by
      rw [pow_two, ← Real.rpow_add hx1, add_halves ε]
    refine le_trans (hpsiA x hx) ?_
    refine le_trans (mul_le_mul_of_nonneg_left hsq
      (mul_nonneg hC0 (Real.rpow_nonneg hx0 ((1 : ℝ) / 2)))) ?_
    rw [hpow, Real.rpow_add hx1]
    exact le_of_eq (by ring)
  -- Step 3: discrete Abel summation transfers the bound to π.
  obtain ⟨C', _, hC'⟩ := GRH.primeCountingAP_bound_of_psiAP_bound q a hq
    (C * (2 / ε) ^ 2) ε (mul_nonneg hC0 (by positivity)) hε hpsiB
  -- Step 4: the pointwise bound is a big-O bound at top.
  rw [isBigO_iff]
  refine ⟨max C' 0, ?_⟩
  refine Filter.eventually_atTop.mpr ⟨2, fun x hx => ?_⟩
  simp only [Real.norm_eq_abs]
  have hge : 0 ≤ x ^ ((1 : ℝ) / 2 + ε) := Real.rpow_nonneg (by linarith) _
  rw [abs_of_nonneg hge]
  exact le_trans (hC' x hx) (mul_le_mul_of_nonneg_right (le_max_left C' 0) hge)
