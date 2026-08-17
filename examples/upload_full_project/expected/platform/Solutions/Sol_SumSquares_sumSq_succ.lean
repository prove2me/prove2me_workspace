-- Generated from SumSquares/Lemmas.lean: same skeleton as the stub, but the
-- proof is kept, the declaration is renamed to `solution`, and `open … in`
-- restores the scope the dotted name provided.
import Definitions.Def_SumSquares_Defs
import Mathlib.Tactic

open SumSquares in
theorem solution (n : ℕ) :
    sumSq (n + 1) = sumSq n + (n + 1) ^ 2 := by
  simp [sumSq]
