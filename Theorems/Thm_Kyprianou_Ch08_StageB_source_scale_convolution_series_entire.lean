import Mathlib.Analysis.Analytic.Basic
import Definitions.Def_Kyprianou_Ch08_StageCFoundation_D
import Definitions.Def_Kyprianou_Ch08_ScaleConvolutionPower
set_option autoImplicit false
open MeasureTheory ProbabilityTheory Set Filter
open scoped NNReal ENNReal
namespace Kyprianou.Ch08.StageB

/-- Entire complex dependence of the scale-function causal convolution series. -/
theorem source_scale_convolution_series_entire :
    ∀ (ψ : ℝ → ℝ) (W : ℝ → ℝ → ℝ),
      HasSourceScaleFamily ψ W →
      ∀ (x : ℝ), 0 ≤ x →
        Differentiable ℂ (fun z : ℂ =>
          ∑' n : ℕ, z ^ n *
            ((scaleConvolutionPower (W 0) n x : ℝ) : ℂ)) := by
  sorry

end Kyprianou.Ch08.StageB
