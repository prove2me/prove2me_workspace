import Mathlib
import Theorems.Thm_twin_primes_odd

theorem solution (p : ℕ) (hp : p.Prime) (hp2 : (p + 2).Prime) : Odd p ∧ Odd (p + 2) := by
  have hne2 : p ≠ 2 := fun h2 => by
    rw [h2] at hp2
    exact absurd hp2 (by decide)
  obtain ⟨k, hk⟩ := hp.eq_two_or_odd'.resolve_left hne2
  refine ⟨⟨k, hk⟩, k + 1, ?_⟩
  omega
