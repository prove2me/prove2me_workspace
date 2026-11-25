import Mathlib

namespace LL_Decomp587k

noncomputable section

open Real Set

def ZeroBelowOne (ω : ℝ → ℝ) : Prop := ∀ u : ℝ, u < 1 → ω u = 0

end

end LL_Decomp587k