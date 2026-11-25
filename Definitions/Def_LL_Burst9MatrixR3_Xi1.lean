import Mathlib
import Definitions.Def_LL_Burst9MatrixR3_ind
import Definitions.Def_LL_Burst9MatrixR3_sigma0

namespace LL_Burst9MatrixR3

noncomputable section

open Real Set MeasureTheory
open scoped Classical

def Xi1 (s sp t : ℝ) : ℝ :=
  sigma0 t / (2 * t) * log (16 / ((s - 1) * (sp - 1))) +
  ind (sp - 2) 3 t / (2 * t) * log ((t + 1) ^ 2 / ((s - 1) * (sp - 1))) +
  ind (sp - sp / s - 1) (sp - 2) t / (2 * t) *
    log ((t + 1) / ((s - 1) * (sp - 1 - t)))

end

end LL_Burst9MatrixR3