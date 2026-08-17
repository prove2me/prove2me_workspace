-- Generated from SumSquares/Defs.lean by skeleton subtraction: nothing is
-- deleted. `sumSq` is reachable from the target; `SumBudget` and the anonymous
-- instance are kept by the instance-root rule (isInstance rows override
-- dead-code elimination). No project imports to rewrite here.
import Mathlib.Tactic

namespace SumSquares

/-- Sum of the first `n` squares: `1² + 2² + ⋯ + n²`. -/
def sumSq : ℕ → ℕ
  | 0 => 0
  | n + 1 => sumSq n + (n + 1) ^ 2

/-- Types with a designated square-sum budget. Exists to give the example an
anonymous `instance` below — a declaration with no `declId`. -/
class SumBudget (α : Type) where
  budget : α → ℕ

instance : SumBudget ℕ := ⟨sumSq⟩

end SumSquares
