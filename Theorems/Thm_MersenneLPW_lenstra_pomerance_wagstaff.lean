import Mathlib
import Definitions.Def_MersenneLPW_mersenneExponentCount

namespace MersenneLPW

theorem lenstra_pomerance_wagstaff :
    Asymptotics.IsEquivalent Filter.atTop
      (fun y => (mersenneExponentCount y : ℝ))
      (fun y => Real.exp Real.eulerMascheroniConstant * Real.logb 2 y) := by sorry

end MersenneLPW
