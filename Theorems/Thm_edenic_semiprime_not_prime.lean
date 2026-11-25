import Mathlib
import Definitions.Def_IsEdenicSemiprime

/-! # Edenic semiprimes are never prime

Published as `edenic_semiprime_not_prime` (prove2.me, theorem id
`57371981-ebce-45dd-90f3-5ff94a9bd872`). Statement skeleton; the proof
lives in `Solutions/Sol_edenic_semiprime_not_prime.lean`. -/

theorem edenic_semiprime_not_prime (n : ℕ) (h : IsEdenicSemiprime n) : ¬n.Prime := by
  sorry
