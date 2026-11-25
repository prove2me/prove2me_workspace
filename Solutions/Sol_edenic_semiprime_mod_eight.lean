import Mathlib
import Definitions.Def_IsEdenicSemiprime
import Theorems.Thm_edenic_semiprime_mod_eight

theorem solution (n : ℕ) (h : IsEdenicSemiprime n) : n % 8 = 3 ∨ n % 8 = 7 := by
  obtain ⟨p, hp, hp2, rfl⟩ := h
  have hne2 : p ≠ 2 := fun h2 => by
    rw [h2] at hp2
    exact absurd hp2 (by decide)
  obtain ⟨k, hk⟩ := hp.eq_two_or_odd'.resolve_left hne2
  subst hk
  rcases Nat.even_or_odd k with ⟨m, rfl⟩ | ⟨m, rfl⟩
  · ring_nf
    simp [Nat.mul_mod, Nat.add_mod]
  · ring_nf
    simp [Nat.mul_mod, Nat.add_mod]
