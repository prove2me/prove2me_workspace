import Mathlib

/-! # Semiprimes are products of two primes

Published as `semiprime_iff_prime_mul` (prove2.me, theorem id
`267a9b9c-f6cc-44fe-8956-b9d436f36ac7`). Statement skeleton; the proof
lives in `Solutions/Sol_semiprime_iff_prime_mul.lean`. -/

theorem semiprime_iff_prime_mul (n : ℕ) :
    Nat.IsSemiprime n ↔ ∃ p q : ℕ, Nat.Prime p ∧ Nat.Prime q ∧ n = p * q := by
  sorry
