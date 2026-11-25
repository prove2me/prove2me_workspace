import Mathlib
import Theorems.Thm_prime_quadruplet_gap2

theorem solution :
    ¬∃ p : ℕ, p.Prime ∧ (p + 2).Prime ∧ (p + 4).Prime ∧ (p + 6).Prime := by
  rintro ⟨p, hp, hp2, hp4, hp6⟩
  have trich : p % 3 = 0 ∨ p % 3 = 1 ∨ p % 3 = 2 := by omega
  rcases trich with h | h | h
  · have hdvd : (3:ℕ) ∣ p := Nat.dvd_iff_mod_eq_zero.mpr h
    rcases (Nat.dvd_prime hp).mp hdvd with habs | heq
    · exact absurd habs (by decide)
    · rw [← heq] at hp6
      exact absurd hp6 (by decide)
  · have hmod : (p + 2) % 3 = 0 := by omega
    have hdvd : (3:ℕ) ∣ p + 2 := Nat.dvd_iff_mod_eq_zero.mpr hmod
    rcases (Nat.dvd_prime hp2).mp hdvd with habs | heq
    · exact absurd habs (by decide)
    · have hp1 : p = 1 := by omega
      rw [hp1] at hp
      exact absurd hp Nat.not_prime_one
  · have hmod : (p + 4) % 3 = 0 := by omega
    have hdvd : (3:ℕ) ∣ p + 4 := Nat.dvd_iff_mod_eq_zero.mpr hmod
    rcases (Nat.dvd_prime hp4).mp hdvd with habs | heq
    · exact absurd habs (by decide)
    · omega

/-! # Layer 2: properties (reductions import Layer 1 via `Theorems.Thm_*`) -/
