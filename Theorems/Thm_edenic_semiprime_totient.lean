import Mathlib
import Definitions.Def_IsEdenicSemiprime

/-! # The totient of an Edenic semiprime

Published as `edenic_semiprime_totient` (prove2.me, theorem id
`928b1951-e520-43cd-b515-e359c4707a55`). Statement skeleton; the proof
lives in `Solutions/Sol_edenic_semiprime_totient.lean`. -/

theorem edenic_semiprime_totient (n : ℕ) (h : IsEdenicSemiprime n) :
    ∃ k, n + 1 = k ^ 2 ∧ Nat.totient n = k ^ 2 - 2 * k := by
  sorry
