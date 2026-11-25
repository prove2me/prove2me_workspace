import Mathlib

/-- An **Edenic semiprime** is a natural number that factors as the product of
exactly two *twinned* primes, i.e. two primes differing by `2`:

`IsEdenicSemiprime n ↔ ∃ p, p.Prime ∧ (p + 2).Prime ∧ n = p * (p + 2)`.

The smallest examples are `15 = 3 · 5` and `35 = 5 · 7`, which share the hinge prime
`5` — the only prime belonging to two twin pairs, since a prime `r` in two twin pairs
would make `r - 2, r, r + 2` a prime triplet, and modulo `3` the only triplet is
`(3, 5, 7)`. Every Edenic semiprime is a semiprime (`Nat.IsSemiprime`), is
squarefree, is congruent to `3` modulo `4`, and is one less than a perfect square. -/
def IsEdenicSemiprime (n : ℕ) : Prop :=
  ∃ p : ℕ, p.Prime ∧ (p + 2).Prime ∧ n = p * (p + 2)
