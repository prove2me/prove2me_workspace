import Mathlib
import Definitions.Def_LL_Burst9MatrixC1_Params

namespace LL_Burst9MatrixC1

noncomputable section

open Real Set MeasureTheory
open scoped Classical

def alpha (p : Params) : Fin 9 → ℝ :=
  ![p.k1 - 2, p.sp - 2, p.sp - p.sp / p.s - 1,
    p.sp - p.sp / p.k2 - 1, p.sp - p.sp / p.k3 - 1, p.sp - 2 * p.sp / p.k2,
    p.sp - p.sp / p.k1 - p.sp / p.k3,
    p.sp - p.sp / p.k1 - p.sp / p.k2, p.k1 - p.k1 / p.k2 - 1]

end

end LL_Burst9MatrixC1