import Mathlib
import Definitions.Def_IsEdenicSemiprime

/-! # Edenic semiprimes have exactly four divisors

Published as `edenic_semiprime_divisors_card` (prove2.me, theorem id
`68ccea2b-d63d-5934-9caa-ad5402ec8151`). Statement skeleton; the proof
lives in `Solutions/Sol_edenic_semiprime_divisors_card.lean`. -/

theorem edenic_semiprime_divisors_card (n : ℕ) (h : IsEdenicSemiprime n) :
    (Nat.divisors n).card = 4 := by
  sorry
