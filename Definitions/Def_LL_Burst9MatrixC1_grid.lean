import Mathlib

namespace LL_Burst9MatrixC1

noncomputable section

open Real Set MeasureTheory
open scoped Classical

def grid (j : Fin 10) : ℝ := if j = 0 then 1 else 2 + (j.val + 1) / 10

end

end LL_Burst9MatrixC1