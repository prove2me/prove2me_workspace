import Mathlib
import Definitions.Def_IsEdenicSemiprime
import Theorems.Thm_edenic_semiprime_not_square
import Theorems.Thm_edenic_semiprime_mod_four

theorem solution (n : ℕ) (h : IsEdenicSemiprime n) :
    ¬∃ k, k ^ 2 = n := by
  have h4 : n % 4 = 3 := edenic_semiprime_mod_four n h
  rintro ⟨k, hk⟩
  have hsq : k ^ 2 % 4 = 0 ∨ k ^ 2 % 4 = 1 := by
    rw [Nat.pow_mod]
    have trich : k % 4 = 0 ∨ k % 4 = 1 ∨ k % 4 = 2 ∨ k % 4 = 3 := by omega
    rcases trich with h | h | h | h <;> rw [h] <;> decide
  rcases hsq with h0 | h1
  · rw [hk] at h0
    omega
  · rw [hk] at h1
    omega
