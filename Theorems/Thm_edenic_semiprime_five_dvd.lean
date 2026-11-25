import Mathlib
import Definitions.Def_IsEdenicSemiprime

/-! # The Edenic cluster at 15 and 35

Published as `edenic_semiprime_five_dvd` (prove2.me, theorem id
`5b56345f-7fc3-5475-a7e2-11d71892efff`). Statement skeleton; the proof
lives in `Solutions/Sol_edenic_semiprime_five_dvd.lean`. -/

theorem edenic_semiprime_five_dvd (n : ℕ) (h : IsEdenicSemiprime n) :
    5 ∣ n ↔ n = 15 ∨ n = 35 := by
  sorry
