import Mathlib
import Definitions.Def_IsEdenicSemiprime

/-! # Edenic semiprimes are never perfect squares

Published as `edenic_semiprime_not_square` (prove2.me, theorem id
`c9438af0-07e3-4bca-a921-f7bc30a7f026`). Statement skeleton; the proof
lives in `Solutions/Sol_edenic_semiprime_not_square.lean`. -/

theorem edenic_semiprime_not_square (n : ℕ) (h : IsEdenicSemiprime n) :
    ¬∃ k, k ^ 2 = n := by
  sorry
