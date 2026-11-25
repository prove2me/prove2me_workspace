import Mathlib
import Definitions.Def_LL_Burst9MatrixR1_Params
import Definitions.Def_LL_Burst9MatrixR1_alpha
import Definitions.Def_LL_Burst9MatrixR1_ind
import Definitions.Def_LL_Burst9MatrixR1_sigma0

namespace LL_Burst9MatrixR1

noncomputable section

open Real Set MeasureTheory
open scoped Classical

def Xi2 (p : Params) (t : ℝ) : ℝ :=
  let P := (p.s - 1) * (p.sp - 1) * (p.k1 - 1) * (p.k2 - 1) * (p.k3 - 1)
  let a := alpha p
  let q := 5 * t * (1 - t / p.sp)
  sigma0 t / (5 * t) * log (1024 / P) +
  ind (a 1) 3 t / (5 * t) * log ((t + 1) ^ 5 / P) +
  ind (a 8) (a 0) t / (5 * t) * log ((t + 1) / ((p.k2 - 1) * (p.k1 - 1 - t))) +
  ind (a 4) (a 1) t / (5 * t) * log ((t + 1) / ((p.k3 - 1) * (p.sp - 1 - t))) +
  ind (a 2) (a 1) t / (5 * t) * log ((t + 1) / ((p.s - 1) * (p.sp - 1 - t))) +
  ind (a 0) (a 1) t / (5 * t) * log ((t + 1) ^ 2 / ((p.k1 - 1) * (p.k2 - 1))) +
  ind (a 6) (a 4) t / q * log (p.sp ^ 2 /
    ((p.k1 * p.sp - p.sp - p.k1 * t) * (p.k3 * p.sp - p.sp - p.k3 * t))) +
  ind (a 4) (a 7) t / q * log (p.sp * (p.sp - 1 - t) / (p.k1 * p.sp - p.sp - p.k1 * t)) +
  ind (a 5) (a 7) t / q * log (p.sp / (p.k2 * p.sp - p.sp - p.k2 * t)) +
  ind (a 7) (a 1) t / q * log (p.sp - 1 - t)

end

end LL_Burst9MatrixR1