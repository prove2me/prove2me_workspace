import Mathlib

/-! # The only prime triplet with gap 2 is (3, 5, 7)

Published as `prime_triplet_unique` (prove2.me, theorem id
`bb0e03a7-dbdb-57ee-8f72-bf60b87ec268`). Statement skeleton; the proof
lives in `Solutions/Sol_prime_triplet_unique.lean`. -/

theorem prime_triplet_unique (p : ℕ) (hp : p.Prime) (hp2 : (p + 2).Prime) (hp4 : (p + 4).Prime) :
    p = 3 := by
  sorry
