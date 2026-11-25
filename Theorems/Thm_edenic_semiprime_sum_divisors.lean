import Mathlib
import Definitions.Def_IsEdenicSemiprime

/-! # The divisor sum of an Edenic semiprime

Published as `edenic_semiprime_sum_divisors` (prove2.me, theorem id
`b18a864a-93cc-4f81-9489-a75f82d6ae60`). Statement skeleton; the proof
lives in `Solutions/Sol_edenic_semiprime_sum_divisors.lean`. -/

theorem edenic_semiprime_sum_divisors (n : ℕ) (h : IsEdenicSemiprime n) :
    ∃ p, p.Prime ∧ (p + 2).Prime ∧ n = p * (p + 2) ∧
      ∑ d ∈ n.divisors, d = (p + 1) * (p + 3) := by
  sorry
