import Mathlib
import Definitions.Def_IsEdenicSemiprime
import Theorems.Thm_edenic_semiprime_succ_not_prime

theorem solution (n : ℕ) (h : IsEdenicSemiprime n) :
    ¬(n + 1).Prime := by
  obtain ⟨p, hp, hp2, rfl⟩ := h
  have hp3 : 2 ≤ p := hp.two_le
  have hs : p * (p + 2) + 1 = (p + 1) * (p + 1) := by ring
  rw [hs]
  exact Nat.not_prime_mul (by omega) (by omega)
