import Mathlib
import Theorems.Thm_semiprime_iff_prime_mul

/-! # Semiprimes are products of two primes

Target `semiprime_iff_prime_mul`: `n` has exactly two prime factors with multiplicity iff
`n = p * q` for primes `p`, `q`. The forward direction reads the length of `primeFactorsList`
off `Ω n = 2` and recovers the product; the reverse is `Nat.Prime.mul_isAlmostPrime_two`. -/

open scoped ArithmeticFunction.Omega

theorem solution (n : ℕ) :
    Nat.IsSemiprime n ↔ ∃ p q : ℕ, Nat.Prime p ∧ Nat.Prime q ∧ n = p * q := by
  constructor
  · intro h
    have h' : n ≠ 0 ∧ Ω n = 2 := h
    have hlen : Ω n = n.primeFactorsList.length := ArithmeticFunction.cardFactors_apply
    rw [hlen] at h'
    have hl : n.primeFactorsList.length = 2 := h'.2
    rcases List.length_eq_two.1 hl with ⟨p, q, hpq⟩
    refine ⟨p, q, ?_, ?_, ?_⟩
    · have h1 : p ∈ n.primeFactorsList := by rw [hpq]; exact List.Mem.head _
      exact Nat.prime_of_mem_primeFactorsList h1
    · have h2 : q ∈ n.primeFactorsList := by rw [hpq]; exact List.Mem.tail _ (List.Mem.head _)
      exact Nat.prime_of_mem_primeFactorsList h2
    · have hprod := Nat.prod_primeFactorsList h'.1
      rw [hpq] at hprod
      simpa using hprod.symm
  · rintro ⟨p, q, hp, hq, rfl⟩
    exact Nat.Prime.mul_isAlmostPrime_two hp hq
