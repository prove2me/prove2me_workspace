import Mathlib
import Definitions.Def_IsEdenicSemiprime
import Theorems.Thm_edenic_semiprime_mod_six

theorem solution (n : ℕ) (h : IsEdenicSemiprime n) : n % 6 = 5 ∨ n = 15 := by
  obtain ⟨p, hp, hp2, rfl⟩ := h
  have h6 : p % 6 = 0 ∨ p % 6 = 1 ∨ p % 6 = 2 ∨ p % 6 = 3 ∨ p % 6 = 4 ∨ p % 6 = 5 := by omega
  rcases h6 with h0 | h1 | h2 | h3 | h4 | h5
  · rcases (Nat.dvd_prime hp).mp (Nat.dvd_of_mod_eq_zero h0) with h61 | h62
    · exact absurd h61 (by decide)
    · subst h62
      exact absurd hp (by decide)
  · have hd : (p + 2) % 3 = 0 := by omega
    rcases (Nat.dvd_prime hp2).mp (Nat.dvd_of_mod_eq_zero hd) with h31 | h32
    · exact absurd h31 (by decide)
    · have hp1 : p = 1 := by omega
      rw [hp1] at hp
      exact absurd hp Nat.not_prime_one
  · have hd : p % 2 = 0 := by omega
    rcases (Nat.dvd_prime hp).mp (Nat.dvd_of_mod_eq_zero hd) with h21 | h22
    · exact absurd h21 (by decide)
    · subst h22
      exact absurd hp2 (by decide)
  · have hd : p % 3 = 0 := by omega
    rcases (Nat.dvd_prime hp).mp (Nat.dvd_of_mod_eq_zero hd) with h31 | h32
    · exact absurd h31 (by decide)
    · subst h32
      decide
  · have hd : p % 2 = 0 := by omega
    rcases (Nat.dvd_prime hp).mp (Nat.dvd_of_mod_eq_zero hd) with h41 | h42
    · exact absurd h41 (by decide)
    · subst h42
      exact absurd hp2 (by decide)
  · refine Or.inl ?_
    simp [Nat.mul_mod, Nat.add_mod, h5]
