import Mathlib
import Definitions.Def_Kyprianou_Ch08_StageCFoundation_D
import Definitions.Def_Kyprianou_Ch08_ScaleConvolutionPower
set_option autoImplicit false
open MeasureTheory ProbabilityTheory Set Filter
open scoped NNReal ENNReal
namespace Kyprianou.Ch08.StageB

/-- Holomorphicity of the integrated causal-convolution Z-scale series. -/
theorem source_zscale_convolution_series_entire
    (ψ : ℝ → ℝ) (W : ℝ → ℝ → ℝ)
    (hW : HasSourceScaleFamily ψ W) (x : ℝ) (hx : 0 < x) :
    Differentiable ℂ (fun z : ℂ => 1 + z * ∑' n : ℕ,
        z ^ n * (((∫ y in (0 : ℝ)..x,
          scaleConvolutionPower (W 0) n y) : ℝ) : ℂ)) := by
  sorry

end Kyprianou.Ch08.StageB
