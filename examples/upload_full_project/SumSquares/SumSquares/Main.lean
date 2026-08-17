import SumSquares.Lemmas

namespace SumSquares

private theorem six_mul_succ (n : ℕ) :
    6 * (n + 1) ^ 2 = 6 * n ^ 2 + 12 * n + 6 := by
  ring

/-- Six times the sum of the first `n` squares equals `n(n+1)(2n+1)`. -/
theorem six_sumSq (n : ℕ) :
    6 * sumSq n = n * (n + 1) * (2 * n + 1) := by
  induction n with
  | zero => rfl
  | succ n ih => rw [sumSq_succ, Nat.mul_add, ih, six_mul_succ]; ring

end SumSquares
