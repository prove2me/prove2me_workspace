import Mathlib
import Definitions.Def_IsEdenicSemiprime

/-! # Edenic semiprimes are 3 or 7 modulo 8

Published as `edenic_semiprime_mod_eight` (prove2.me, theorem id
`56da3982-b272-5fc0-8c02-9a78ab5b6596`). Statement skeleton; the proof
lives in `Solutions/Sol_edenic_semiprime_mod_eight.lean`. -/

theorem edenic_semiprime_mod_eight (n : ℕ) (h : IsEdenicSemiprime n) : n % 8 = 3 ∨ n % 8 = 7 := by
  sorry
