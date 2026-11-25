import Mathlib

/-! # Arbitrarily large even integers are a prime plus a semiprime

Published as `even_prime_plus_semiprime` (prove2.me, theorem id
`da86e598-bb99-48a7-9fc2-15580888d4e5`). Statement skeleton; the proof
lives in `Solutions/Sol_even_prime_plus_semiprime.lean`. -/

theorem even_prime_plus_semiprime (n : ℕ) :
    ∃ m : ℕ, Even m ∧ n ≤ m ∧ ∃ p q : ℕ, p.Prime ∧ Nat.IsSemiprime q ∧ m = p + q := by
  sorry
