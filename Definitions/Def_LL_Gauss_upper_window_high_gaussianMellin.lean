import Mathlib
import Definitions.Def_LL_Gauss_upper_window_high_e

namespace LL_Gauss_upper_window_high

noncomputable section

open Real

noncomputable def gaussianMellin (δ : ℝ) (s : ℂ) : ℂ :=
  mellin (fun t : ℝ => (exp (-t ^ 2 / 2) : ℂ) * e (δ * t)) s

end

end LL_Gauss_upper_window_high