import Mathlib
import Definitions.Def_IsEdenicSemiprime

/-! # An Edenic semiprime plus one is a perfect square

Published as `edenic_semiprime_succ_is_square` (prove2.me, theorem id
`39f2f30d-7cd7-5b2d-b415-4cd98b9f7712`). Statement skeleton; the proof
lives in `Solutions/Sol_edenic_semiprime_succ_is_square.lean`. -/

theorem edenic_semiprime_succ_is_square (n : ℕ) (h : IsEdenicSemiprime n) :
    ∃ k, n + 1 = k ^ 2 := by
  sorry
