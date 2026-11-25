import Mathlib
import Definitions.Def_IsEdenicSemiprime

/-! # No successor of an Edenic semiprime is prime

Published as `edenic_semiprime_succ_not_prime` (prove2.me, theorem id
`e250b691-3f37-4052-83f9-325ba39e987e`). Statement skeleton; the proof
lives in `Solutions/Sol_edenic_semiprime_succ_not_prime.lean`. -/

theorem edenic_semiprime_succ_not_prime (n : ℕ) (h : IsEdenicSemiprime n) :
    ¬(n + 1).Prime := by
  sorry
