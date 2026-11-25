import Mathlib
import Definitions.Def_IsEdenicSemiprime
import Theorems.Thm_edenic_semiprime_mod_three

theorem solution (n : ℕ) (h : IsEdenicSemiprime n) :
    n % 3 = 0 ↔ n = 15 := by
  obtain ⟨p, hp, hp2, rfl⟩ := h
  constructor
  · intro h0
    have hdvd : (3:ℕ) ∣ p * (p + 2) := Nat.dvd_iff_mod_eq_zero.mpr h0
    rcases (Nat.Prime.dvd_mul Nat.prime_three).mp hdvd with h3 | h3
    · rcases (Nat.dvd_prime hp).mp h3 with habs | heq
      · exact absurd habs (by decide)
      · subst heq
        rfl
    · rcases (Nat.dvd_prime hp2).mp h3 with habs | heq
      · exact absurd habs (by decide)
      · have hp1 : p = 1 := by omega
        rw [hp1] at hp
        exact absurd hp Nat.not_prime_one
  · intro h15
    rw [h15]
