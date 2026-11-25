import Mathlib
import Definitions.Def_IsEdenicSemiprime
import Theorems.Thm_edenic_semiprime_succ_is_square

theorem solution (n : ℕ) (h : IsEdenicSemiprime n) :
    ∃ k, n + 1 = k ^ 2 := by
  obtain ⟨p, hp, hp2, rfl⟩ := h
  exact ⟨p + 1, by ring⟩
