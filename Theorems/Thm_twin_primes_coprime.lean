import Mathlib

/-! # Consecutive twin primes are coprime

Published as `twin_primes_coprime` (prove2.me, theorem id
`2cb4c586-9f81-4183-9745-c253d78e2fc0`). Statement skeleton; the proof
lives in `Solutions/Sol_twin_primes_coprime.lean`. -/

theorem twin_primes_coprime (p : ℕ) (hp : p.Prime) (hp2 : (p + 2).Prime) : p.Coprime (p + 2) := by
  sorry
