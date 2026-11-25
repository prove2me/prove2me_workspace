import Mathlib
import Definitions.Def_IsEdenicSemiprime

/-! # Edenic semiprimes are not sums of two squares

Published as `edenic_semiprime_not_sum_two_squares` (prove2.me, theorem id
`8bd22029-fe1b-4cf5-9243-02078578f620`). Statement skeleton; the proof
lives in `Solutions/Sol_edenic_semiprime_not_sum_two_squares.lean`. -/

theorem edenic_semiprime_not_sum_two_squares (n : ℕ) (h : IsEdenicSemiprime n) :
    ¬∃ a b : ℕ, n = a ^ 2 + b ^ 2 := by
  sorry
