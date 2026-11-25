import Mathlib

/-! # 5 is the only prime belonging to two twin pairs

Published as `prime_in_two_twin_pairs` (prove2.me, theorem id
`7b1fee8b-2de1-5957-b27c-ae8a2f73b64e`). Statement skeleton; the proof
lives in `Solutions/Sol_prime_in_two_twin_pairs.lean`. -/

theorem prime_in_two_twin_pairs (r : ℕ) (hr : r.Prime) (h₁ : (r - 2).Prime) (h₂ : (r + 2).Prime) :
    r = 5 := by
  sorry
