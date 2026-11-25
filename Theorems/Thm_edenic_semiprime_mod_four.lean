import Mathlib
import Definitions.Def_IsEdenicSemiprime

/-! # Edenic semiprimes are 3 modulo 4

Published as `edenic_semiprime_mod_four` (prove2.me, theorem id
`bffbe3cd-2e27-4388-bff0-4b34b706984a`). Statement skeleton; the proof
lives in `Solutions/Sol_edenic_semiprime_mod_four.lean`. -/

theorem edenic_semiprime_mod_four (n : ℕ) (h : IsEdenicSemiprime n) : n % 4 = 3 := by
  sorry
