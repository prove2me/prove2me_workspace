import Mathlib
import Definitions.Def_Kyprianou_Ch08_StageCFoundation_B
set_option autoImplicit false

namespace Kyprianou.Ch08.StageB

/-- Zero-based causal convolution powers of a q-scale kernel. -/
noncomputable def scaleConvolutionPower (W : ℝ → ℝ) : ℕ → ℝ → ℝ
  | 0 => W
  | n + 1 => fun x =>
      ∫ s in Set.Ioc (0 : ℝ) x, W s * scaleConvolutionPower W n (x - s)

end Kyprianou.Ch08.StageB
