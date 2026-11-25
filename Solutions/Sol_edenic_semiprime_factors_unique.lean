import Mathlib
import Definitions.Def_IsEdenicSemiprime
import Theorems.Thm_edenic_semiprime_factors_unique

theorem solution (n : ℕ) (h : IsEdenicSemiprime n) :
    ∃ p, p.Prime ∧ (p + 2).Prime ∧ n = p * (p + 2) ∧
      ∀ q r : ℕ, q.Prime → r.Prime → n = q * r → (q = p ∧ r = p + 2) ∨ (q = p + 2 ∧ r = p) := by
  obtain ⟨p, hp, hp2, rfl⟩ := h
  refine ⟨p, hp, hp2, rfl, ?_⟩
  intro q r hq hr hqr
  have hqp : q ∣ p * (p + 2) := by
    rw [hqr]
    exact dvd_mul_right q r
  rcases (Nat.Prime.dvd_mul hq).mp hqp with h | h
  · rcases (Nat.dvd_prime hp).mp h with h1 | h1
    · exact absurd h1 hq.ne_one
    · refine Or.inl ⟨h1, ?_⟩
      rw [h1] at hqr
      exact (Nat.mul_left_cancel hp.pos hqr).symm
  · rcases (Nat.dvd_prime hp2).mp h with h1 | h1
    · exact absurd h1 hq.ne_one
    · refine Or.inr ⟨h1, ?_⟩
      rw [h1] at hqr
      have hkey : (p + 2) * r = (p + 2) * p := hqr.symm.trans (Nat.mul_comm p (p + 2))
      exact Nat.mul_left_cancel (by omega) hkey
