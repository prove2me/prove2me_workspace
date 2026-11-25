import Mathlib
import Definitions.Def_IsEdenicSemiprime
import Theorems.Thm_edenic_semiprime_not_prime

theorem solution (n : ℕ) (h : IsEdenicSemiprime n) : ¬n.Prime := by
  obtain ⟨p, hp, hp2, rfl⟩ := h
  have hp3 : 2 ≤ p := hp.two_le
  exact Nat.not_prime_mul hp.ne_one (by omega)
