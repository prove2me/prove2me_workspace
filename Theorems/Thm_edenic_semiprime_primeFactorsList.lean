import Mathlib
import Definitions.Def_IsEdenicSemiprime

/-! # The prime factor list of an Edenic semiprime

Published as `edenic_semiprime_primeFactorsList` (prove2.me, theorem id
`d70929e1-5b2a-5518-9edd-86b776f66169`). Statement skeleton; the proof
lives in `Solutions/Sol_edenic_semiprime_primeFactorsList.lean`. -/

theorem edenic_semiprime_primeFactorsList (n : ℕ) (h : IsEdenicSemiprime n) :
    ∃ p, p.Prime ∧ (p + 2).Prime ∧ n = p * (p + 2) ∧ n.primeFactorsList = [p, p + 2] := by
  sorry
