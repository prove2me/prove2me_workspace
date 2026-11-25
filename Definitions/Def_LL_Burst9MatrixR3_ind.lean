import Mathlib

namespace LL_Burst9MatrixR3

noncomputable section

open Real Set MeasureTheory
open scoped Classical

def ind (a b t : ℝ) : ℝ := if a ≤ t ∧ t ≤ b then 1 else 0

end

end LL_Burst9MatrixR3