import Mathlib
import Definitions.Def_LL_Decomp587k_domain

namespace LL_Decomp587k

noncomputable section

open Real Set MeasureTheory
open scoped Classical

def buchstabIntegral (ω : ℝ → ℝ) (n : ℕ) (lo hi : Fin (n + 2) → ℝ) (φ : ℝ) : ℝ :=
  ∫ x in domain lo hi,
    ω ((φ - ∑ j, x j) / x ⟨n, by omega⟩) / ((∏ j, x j) * x ⟨n, by omega⟩)

end

end LL_Decomp587k