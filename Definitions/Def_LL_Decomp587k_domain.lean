import Mathlib

namespace LL_Decomp587k

noncomputable section

open Real Set MeasureTheory
open scoped Classical

def domain {n : ℕ} (lo hi : Fin n → ℝ) : Set (Fin n → ℝ) :=
  {x | Monotone x ∧ ∀ j, lo j ≤ x j ∧ x j ≤ hi j}

end

end LL_Decomp587k