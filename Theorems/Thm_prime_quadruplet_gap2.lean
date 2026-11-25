import Mathlib

/-! # No prime quadruplet with constant gap 2 exists

Published as `prime_quadruplet_gap2` (prove2.me, theorem id
`d65c39d7-f784-402e-8f7a-1248969cc98b`). Statement skeleton; the proof
lives in `Solutions/Sol_prime_quadruplet_gap2.lean`. -/

theorem prime_quadruplet_gap2 :
    ¬∃ p : ℕ, p.Prime ∧ (p + 2).Prime ∧ (p + 4).Prime ∧ (p + 6).Prime := by
  sorry
