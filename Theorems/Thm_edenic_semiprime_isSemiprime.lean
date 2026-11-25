import Mathlib
import Definitions.Def_IsEdenicSemiprime

/-! # Edenic semiprimes are semiprimes

Published as `edenic_semiprime_isSemiprime` (prove2.me, theorem id
`649d9dc3-7551-43ba-b93b-b8e349375749`). Statement skeleton; the proof
lives in `Solutions/Sol_edenic_semiprime_isSemiprime.lean`. -/

theorem edenic_semiprime_isSemiprime (n : ℕ) (h : IsEdenicSemiprime n) :
    Nat.IsSemiprime n := by
  sorry
