import Mathlib
import Definitions.Def_IsEdenicSemiprime

/-! # Edenic semiprimes are not perfect powers

Published as `edenic_semiprime_not_perfect_power` (prove2.me, theorem id
`524dae99-0241-47bf-ae73-0b4fc8b4ea6c`). Statement skeleton; the proof
lives in `Solutions/Sol_edenic_semiprime_not_perfect_power.lean`. -/

theorem edenic_semiprime_not_perfect_power (n : ℕ) (h : IsEdenicSemiprime n) :
    ¬∃ a k : ℕ, 2 ≤ k ∧ a ^ k = n := by
  sorry
