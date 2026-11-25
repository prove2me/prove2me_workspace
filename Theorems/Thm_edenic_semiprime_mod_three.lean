import Mathlib
import Definitions.Def_IsEdenicSemiprime

/-! # The only Edenic semiprime divisible by 3 is 15

Published as `edenic_semiprime_mod_three` (prove2.me, theorem id
`310cc63e-8883-4253-9a5f-31758fa88342`). Statement skeleton; the proof
lives in `Solutions/Sol_edenic_semiprime_mod_three.lean`. -/

theorem edenic_semiprime_mod_three (n : ℕ) (h : IsEdenicSemiprime n) :
    n % 3 = 0 ↔ n = 15 := by
  sorry
