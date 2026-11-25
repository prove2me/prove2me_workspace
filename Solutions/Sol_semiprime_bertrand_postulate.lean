import Mathlib
import Theorems.Thm_semiprime_bertrand_postulate

/-! # Bertrand's postulate for semiprimes

Target `semiprime_bertrand_postulate`. Apply Bertrand to `n / 2` to get a prime
`⌊n/2⌋ < p ≤ 2⌊n/2⌋ ≤ n`, then `m = 2p` lies in `(n, 2n]` and is a product of two primes. -/

theorem solution (n : ℕ) (hn : 2 ≤ n) :
    ∃ m : ℕ, n < m ∧ m ≤ 2 * n ∧ Nat.IsSemiprime m := by
  have hk0 : n / 2 ≠ 0 := by omega
  obtain ⟨p, hp, hkp, hp2k⟩ := Nat.exists_prime_lt_and_le_two_mul (n / 2) hk0
  refine ⟨2 * p, ?_, ?_, ?_⟩
  · omega
  · omega
  · exact Nat.Prime.mul_isAlmostPrime_two (by norm_num) hp
