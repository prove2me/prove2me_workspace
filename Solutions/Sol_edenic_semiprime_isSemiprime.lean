import Mathlib
import Definitions.Def_IsEdenicSemiprime
import Theorems.Thm_edenic_semiprime_isSemiprime

theorem solution (n : ℕ) (h : IsEdenicSemiprime n) :
    Nat.IsSemiprime n := by
  obtain ⟨p, hp, hp2, rfl⟩ := h
  exact hp.mul_isAlmostPrime_two hp2
