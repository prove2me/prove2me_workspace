import Mathlib.Analysis.Analytic.Basic
import Definitions.Def_Kyprianou_Ch08_StageCFoundation_D
import Definitions.Def_Kyprianou_Ch08_ScaleConvolutionPower
set_option autoImplicit false
open MeasureTheory ProbabilityTheory Set Filter
open scoped NNReal ENNReal
namespace Kyprianou.Ch08.StageB

/-- Identification (8.24) of actual q-scale functions with causal convolution series. -/
theorem source_scale_discount_convolution_series :
    ∀ (ψ : ℝ → ℝ) (W : ℝ → ℝ → ℝ),
      HasSourceScaleFamily ψ W →
      ∀ (x q : ℝ), 0 ≤ x → 0 ≤ q →
        ((W q x : ℝ) : ℂ) =
          ∑' n : ℕ, (q : ℂ) ^ n *
            ((scaleConvolutionPower (W 0) n x : ℝ) : ℂ) := by
  sorry

end Kyprianou.Ch08.StageB
