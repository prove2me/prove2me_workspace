import Mathlib
import Definitions.Def_IsEdenicSemiprime

/-! # Factorization into two primes is unique up to order

Published as `edenic_semiprime_factors_unique` (prove2.me, theorem id
`ee9d1ae8-037c-4129-a524-9299dae9228d`). Statement skeleton; the proof
lives in `Solutions/Sol_edenic_semiprime_factors_unique.lean`. -/

theorem edenic_semiprime_factors_unique (n : ℕ) (h : IsEdenicSemiprime n) :
    ∃ p, p.Prime ∧ (p + 2).Prime ∧ n = p * (p + 2) ∧
      ∀ q r : ℕ, q.Prime → r.Prime → n = q * r → (q = p ∧ r = p + 2) ∨ (q = p + 2 ∧ r = p) := by
  sorry
