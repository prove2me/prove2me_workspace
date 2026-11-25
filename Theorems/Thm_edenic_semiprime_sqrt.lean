import Mathlib
import Definitions.Def_IsEdenicSemiprime

/-! # The integer square root of an Edenic semiprime

Published as `edenic_semiprime_sqrt` (prove2.me, theorem id
`3c12e649-c23e-45a5-8d45-dda366fd4f94`). Statement skeleton; the proof
lives in `Solutions/Sol_edenic_semiprime_sqrt.lean`. -/

theorem edenic_semiprime_sqrt (n : ℕ) (h : IsEdenicSemiprime n) :
    ∃ k, n + 1 = k ^ 2 ∧ Nat.sqrt n = k - 1 := by
  sorry
