import Mathlib

/-! # Bertrand's postulate for semiprimes

Published as `semiprime_bertrand_postulate` (prove2.me, theorem id
`9acd9d28-e02a-450c-af9f-4e167201538d`). Statement skeleton; the proof
lives in `Solutions/Sol_semiprime_bertrand_postulate.lean`. -/

theorem semiprime_bertrand_postulate (n : ℕ) (hn : 2 ≤ n) :
    ∃ m : ℕ, n < m ∧ m ≤ 2 * n ∧ Nat.IsSemiprime m := by
  sorry
