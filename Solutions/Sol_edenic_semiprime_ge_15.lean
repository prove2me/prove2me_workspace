import Mathlib
import Definitions.Def_IsEdenicSemiprime
import Theorems.Thm_edenic_semiprime_ge_15

theorem solution (n : ℕ) (h : IsEdenicSemiprime n) : 15 ≤ n := by
  obtain ⟨p, hp, hp2, rfl⟩ := h
  have hp3 : 3 ≤ p := by
    rcases hp.eq_two_or_odd' with h2 | hodd
    · rw [h2] at hp2
      exact absurd hp2 (by decide)
    · obtain ⟨k, hk⟩ := hodd
      have h2le : 2 ≤ p := Nat.Prime.two_le hp
      omega
  nlinarith
