import Mathlib
import Definitions.Def_IsEdenicSemiprime
import Theorems.Thm_edenic_semiprime_totient
import Theorems.Thm_twin_primes_coprime

theorem solution (n : ℕ) (h : IsEdenicSemiprime n) :
    ∃ k, n + 1 = k ^ 2 ∧ Nat.totient n = k ^ 2 - 2 * k := by
  obtain ⟨p, hp, hp2, rfl⟩ := h
  refine ⟨p + 1, ?_, ?_⟩
  · ring
  · rw [Nat.totient_mul (twin_primes_coprime p hp hp2), Nat.totient_prime hp,
      Nat.totient_prime hp2]
    calc (p - 1) * ((p + 2) - 1)
        = (p - 1) * (p + 1) := by rw [show (p + 2) - 1 = p + 1 from by omega]
      _ = ((p + 1) - 2) * (p + 1) := by rw [show p - 1 = (p + 1) - 2 from by omega]
      _ = (p + 1) * (p + 1) - 2 * (p + 1) := tsub_mul (p + 1) 2 (p + 1)
      _ = (p + 1) ^ 2 - 2 * (p + 1) := by rw [Nat.pow_two]
