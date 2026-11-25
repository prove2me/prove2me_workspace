import Mathlib
import Definitions.Def_IsEdenicSemiprime
import Theorems.Thm_edenic_semiprime_not_sum_two_squares
import Theorems.Thm_edenic_semiprime_mod_four

theorem solution (n : ℕ) (h : IsEdenicSemiprime n) :
    ¬∃ a b : ℕ, n = a ^ 2 + b ^ 2 := by
  have h4 : n % 4 = 3 := edenic_semiprime_mod_four n h
  rintro ⟨a, b, rfl⟩
  rw [Nat.add_mod] at h4
  have hsq : ∀ x : ℕ, x ^ 2 % 4 = 0 ∨ x ^ 2 % 4 = 1 := fun x => by
    rw [Nat.pow_mod]
    have trich : x % 4 = 0 ∨ x % 4 = 1 ∨ x % 4 = 2 ∨ x % 4 = 3 := by omega
    rcases trich with h | h | h | h <;> rw [h] <;> decide
  rcases hsq a with ha0 | ha1
  · rcases hsq b with hb0 | hb1
    · rw [ha0, hb0] at h4
      exact absurd h4 (by decide)
    · rw [ha0, hb1] at h4
      exact absurd h4 (by decide)
  · rcases hsq b with hb0 | hb1
    · rw [ha1, hb0] at h4
      exact absurd h4 (by decide)
    · rw [ha1, hb1] at h4
      exact absurd h4 (by decide)
