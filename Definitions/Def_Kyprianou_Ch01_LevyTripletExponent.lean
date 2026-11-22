import Mathlib
import Definitions.Def_LeanLevy_Levy_LevyKhintchine
import Definitions.Def_LeanLevy_Levy_CompensatedIntegral

open MeasureTheory ProbabilityTheory Complex
open scoped NNReal ENNReal
set_option autoImplicit false

namespace Kyprianou.Ch01

/-- The signed characteristic exponent for a Lévy–Khintchine triple
    in the convention E[exp(iξX_t)] = exp(t * exponent ξ). -/
noncomputable def levyTripleExponent
    (T : ProbabilityTheory.LevyKhintchineTriple) (ξ : ℝ) : ℂ :=
  Complex.I * ((T.drift * ξ : ℝ) : ℂ) -
    (((T.gaussianVariance : ℝ) * ξ ^ 2 / 2 : ℝ) : ℂ) +
      ∫ x, ProbabilityTheory.levyCompensatedIntegrand ξ x ∂T.levyMeasure

end Kyprianou.Ch01
