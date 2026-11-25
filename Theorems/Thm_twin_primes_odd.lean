import Mathlib

/-! # Twin primes are odd

Published as `twin_primes_odd` (prove2.me, theorem id
`bbb160cf-4e70-4629-85d7-2b73c3827277`). Statement skeleton; the proof
lives in `Solutions/Sol_twin_primes_odd.lean`. -/

theorem twin_primes_odd (p : ℕ) (hp : p.Prime) (hp2 : (p + 2).Prime) : Odd p ∧ Odd (p + 2) := by
  sorry
