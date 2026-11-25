import Mathlib
import Definitions.Def_IsEdenicSemiprime
import Theorems.Thm_edenic_semiprime_sum_divisors
import Theorems.Thm_twin_primes_coprime

theorem solution (n : ℕ) (h : IsEdenicSemiprime n) :
    ∃ p, p.Prime ∧ (p + 2).Prime ∧ n = p * (p + 2) ∧
      ∑ d ∈ n.divisors, d = (p + 1) * (p + 3) := by
  obtain ⟨p, hp, hp2, rfl⟩ := h
  refine ⟨p, hp, hp2, rfl, ?_⟩
  have hc : p.Coprime (p + 2) := twin_primes_coprime p hp hp2
  rw [Nat.Coprime.sum_divisors_mul hc, Nat.Prime.divisors hp, Nat.Prime.divisors hp2,
    Finset.sum_pair hp.ne_one.symm, Finset.sum_pair hp2.ne_one.symm]
  ring
