-- Generated from SumSquares/Lemmas.lean:
--   skeleton subtraction  : nothing else in the file, nothing deleted
--   import rewrite        : import SumSquares.Defs → Definitions bundle
--                           + the union of its non-project imports (Mathlib.Tactic)
--   proof cut             : text[declStart.offset : valStart.offset] ++ ":= by sorry"
--                           (offsets from expected/sketch_info.Lemmas.jsonl)
--   platformize           : docstring stripped, namespace → open, fully-dotted name
-- On the platform this file is split: everything above the theorem is the
-- `preamble`, the theorem itself is the `formal_statement`.
import Definitions.Def_SumSquares_Defs
import Mathlib.Tactic

open SumSquares

theorem SumSquares.sumSq_succ (n : ℕ) :
    sumSq (n + 1) = sumSq n + (n + 1) ^ 2 := by sorry
