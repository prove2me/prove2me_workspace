import SumSquares.Defs

namespace SumSquares

/-- Unfolding lemma for `sumSq`. Written with `lemma` (a Batteries macro
command, not a `Command.declaration` node) on purpose — Stage 2 must still
report it. -/
lemma sumSq_succ (n : ℕ) :
    sumSq (n + 1) = sumSq n + (n + 1) ^ 2 := by
  simp [sumSq]

end SumSquares
