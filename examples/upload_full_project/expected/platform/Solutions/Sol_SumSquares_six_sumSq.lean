-- Generated from SumSquares/Main.lean:
--   import rewrite : import SumSquares.Lemmas → the Thm_ node it uses, as
--                    Thm_<theorem_name with dots as underscores>
--                    + the Definitions bundle + non-project import union
--   inline helper  : six_mul_succ is private (file-scoped, never importable),
--                    so its span is pasted verbatim, inside its namespace
--   rename         : six_sumSq → solution, with `open SumSquares in`
-- `sumSq_succ` here resolves to the platform stub; if that theorem is still
-- Open at submission time this verifies as SKETCH_ACCEPTED, and as ACCEPTED
-- once it is Proved (leaves-first upload).
import Definitions.Def_SumSquares_Defs
import Theorems.Thm_SumSquares_sumSq_succ
import Mathlib.Tactic

namespace SumSquares

private theorem six_mul_succ (n : ℕ) :
    6 * (n + 1) ^ 2 = 6 * n ^ 2 + 12 * n + 6 := by
  ring

end SumSquares

open SumSquares in
theorem solution (n : ℕ) :
    6 * sumSq n = n * (n + 1) * (2 * n + 1) := by
  induction n with
  | zero => rfl
  | succ n ih => rw [sumSq_succ, Nat.mul_add, ih, six_mul_succ]; ring
