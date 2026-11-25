import Mathlib
import Definitions.Def_LL_Burst9MatrixR3_sigma

namespace LL_Burst9MatrixR3

noncomputable section

open Real Finset Set MeasureTheory intervalIntegral

def sigma0 (t : ℝ) : ℝ := sigma 3 (t + 2) (t + 1) / (1 - sigma 3 5 4)

end

end LL_Burst9MatrixR3