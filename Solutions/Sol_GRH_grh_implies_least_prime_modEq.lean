import Mathlib
import Theorems.Thm_GRH_grh_implies_thetaAP_square_root_log
import Theorems.Thm_GRH_least_prime_modEq_of_thetaAP_square_root_log

/-! # GRH implies Chowla's least-prime bound (parent)

Glue: `hGRH` gives the one-logarithm Chebyshev lower bound (Child A), which feeds the
balancing bridge (Child B) to produce the absolute constant K. -/

theorem solution
    (hGRH : ∀ (q : ℕ) [NeZero q] (χ : DirichletCharacter ℂ q) (s : ℂ),
      (1 / 2 : ℝ) < s.re → ¬ (χ = 1 ∧ s = 1) → DirichletCharacter.LFunction χ s ≠ 0) :
    ∃ K : ℝ, ∀ (q : ℕ) (hq : 2 ≤ q) (a : ℕ) (ha : a.Coprime q),
      ∃ p : ℕ, p.Prime ∧ p ≡ a [MOD q] ∧ (p : ℝ) ≤ K * (q : ℝ) ^ 2 * (Real.log q) ^ 2 := by
  obtain ⟨C, hC, hθ⟩ := GRH.grh_implies_thetaAP_square_root_log hGRH
  obtain ⟨K, -, hK⟩ := GRH.least_prime_modEq_of_thetaAP_square_root_log C hC hθ
  exact ⟨K, fun q hq a ha => hK q hq a ha⟩
