import Mathlib
import Definitions.Def_IsEdenicSemiprime

/-! # The divisor set of an Edenic semiprime

Published as `edenic_semiprime_divisors` (prove2.me, theorem id
`2dbc69b7-a8a1-4bf1-b3f8-3f988ee6e972`). Statement skeleton; the proof
lives in `Solutions/Sol_edenic_semiprime_divisors.lean`. -/

theorem edenic_semiprime_divisors (n : ℕ) (h : IsEdenicSemiprime n) :
    ∃ p, p.Prime ∧ (p + 2).Prime ∧ n = p * (p + 2) ∧ n.divisors = {1, p, p + 2, n} := by
  sorry
