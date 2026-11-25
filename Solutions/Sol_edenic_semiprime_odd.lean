import Mathlib
import Definitions.Def_IsEdenicSemiprime
import Theorems.Thm_edenic_semiprime_odd

theorem solution (n : ℕ) (h : IsEdenicSemiprime n) : Odd n := by
  obtain ⟨p, hp, hp2, rfl⟩ := h
  have hne2 : p ≠ 2 := fun h2 => by
    rw [h2] at hp2
    exact absurd hp2 (by decide)
  obtain ⟨k, hk⟩ := hp.eq_two_or_odd'.resolve_left hne2
  subst hk
  refine ⟨2 * k ^ 2 + 4 * k + 1, ?_⟩
  ring
