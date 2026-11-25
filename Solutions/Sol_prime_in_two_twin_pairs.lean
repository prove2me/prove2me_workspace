import Mathlib
import Theorems.Thm_prime_in_two_twin_pairs

theorem solution (r : ℕ) (hr : r.Prime) (h₁ : (r - 2).Prime) (h₂ : (r + 2).Prime) :
    r = 5 := by
  have trich : r % 3 = 0 ∨ r % 3 = 1 ∨ r % 3 = 2 := by omega
  rcases trich with h | h | h
  · have hdvd : (3:ℕ) ∣ r := Nat.dvd_iff_mod_eq_zero.mpr h
    rcases (Nat.dvd_prime hr).mp hdvd with habs | heq
    · exact absurd habs (by decide)
    · rw [← heq] at h₁
      exact absurd h₁ (by decide)
  · have hmod : (r + 2) % 3 = 0 := by omega
    have hdvd : (3:ℕ) ∣ r + 2 := Nat.dvd_iff_mod_eq_zero.mpr hmod
    rcases (Nat.dvd_prime h₂).mp hdvd with habs | heq
    · exact absurd habs (by decide)
    · have hr1 : r = 1 := by omega
      rw [hr1] at hr
      exact absurd hr Nat.not_prime_one
  · have hmod : (r - 2) % 3 = 0 := by omega
    have hdvd : (3:ℕ) ∣ r - 2 := Nat.dvd_iff_mod_eq_zero.mpr hmod
    rcases (Nat.dvd_prime h₁).mp hdvd with habs | heq
    · exact absurd habs (by decide)
    · omega
