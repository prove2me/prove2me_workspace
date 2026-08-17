-- Generated from SumSquares/Main.lean. The TARGET is a node like any other:
-- it gets a Thm_ stub published via submit-problem (POST /verify needs its
-- theorem_id), and its solution then verifies against this stub.
--   skeleton subtraction : the private helper six_mul_succ is deleted
--   proof cut            : text[declStart.offset : valStart.offset] ++ ":= by sorry"
--   platformize          : docstring stripped (span from the `docstring` fact),
--                          namespace → open, fully-dotted name
-- File/module name = Thm_<theorem_name with dots as underscores>: the platform
-- stores theorem_name "SumSquares.six_sumSq" and derives the module slug.
import Definitions.Def_SumSquares_Defs
import Mathlib.Tactic

open SumSquares

theorem SumSquares.six_sumSq (n : ℕ) :
    6 * sumSq n = n * (n + 1) * (2 * n + 1) := by sorry
