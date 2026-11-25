import Mathlib

namespace LL_Burst9MatrixC1

noncomputable section

open Real Finset Set MeasureTheory intervalIntegral

def sigma (a b c : ℝ) : ℝ := ∫ t in a..b, log (c / (t - 1)) / t

end

end LL_Burst9MatrixC1