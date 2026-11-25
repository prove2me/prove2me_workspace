import Mathlib
import Definitions.Def_IsEdenicSemiprime

/-! # Edenic semiprimes are 5 modulo 6, except 15

Published as `edenic_semiprime_mod_six` (prove2.me, theorem id
`dbaa50d8-72f7-5bb4-b380-72e276b9bf34`). Statement skeleton; the proof
lives in `Solutions/Sol_edenic_semiprime_mod_six.lean`. -/

theorem edenic_semiprime_mod_six (n : ℕ) (h : IsEdenicSemiprime n) : n % 6 = 5 ∨ n = 15 := by
  sorry
