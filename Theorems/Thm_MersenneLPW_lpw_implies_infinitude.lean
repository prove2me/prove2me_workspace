import Mathlib
import Definitions.Def_MersenneLPW_mersenneExponentCount

namespace MersenneLPW

theorem lpw_implies_infinitude :
    Asymptotics.IsEquivalent Filter.atTop
        (fun y => (mersenneExponentCount y : ℝ))
        (fun y => Real.exp Real.eulerMascheroniConstant * Real.logb 2 y) →
      {p : ℕ | (mersenne p).Prime}.Infinite := by sorry

end MersenneLPW
