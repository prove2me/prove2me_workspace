import Mathlib
import Definitions.Def_Kyprianou_Ch08_StageCFoundation_D
import Definitions.Def_Kyprianou_Ch08_ScaleConvolutionPower
import Theorems.Thm_Kyprianou_Ch08_StageB_source_scale_convolution_series_entire
import Theorems.Thm_Kyprianou_Ch08_StageB_source_scale_discount_convolution_series

set_option autoImplicit false

/-! # Theorem 8.3 (target `open_result8_3`): entire complex extension of the source q-scale

`sourceCertificate_result8_3` asserts: for every source scale family `W`
(`HasSourceScaleFamily ψ W`) and every `x ≥ 0`, the section `q ↦ W q x` extends
to an entire function `F : ℂ → ℂ` with `F q = W q x` for all `q ≥ 0`.

The witness is the causal convolution power series

  `F z = ∑' n : ℕ, z ^ n * scaleConvolutionPower (W 0) n x`

— the very series the source identifies with the q-scale function in (8.24).
The two conjuncts are exactly the conclusions of two existing Proved platform
lemmas:

* `source_scale_convolution_series_entire` — the factorial norm majorant makes
  this series entire (`Differentiable ℂ F`);
* `source_scale_discount_convolution_series` — identification (8.24): for
  `0 ≤ x`, `0 ≤ q` the series at `q` equals `W q x`; coercing to `ℂ` and taking
  symmetry yields `F q = (W q x : ℂ)`.

The scale-family hypothesis and the domain `0 ≤ x` are inherited verbatim. -/

theorem solution : Kyprianou.Ch08.StageB.sourceCertificate_result8_3 := by
  intro ψ W hW x hx
  refine ⟨fun z : ℂ => ∑' n : ℕ, z ^ n *
    ((Kyprianou.Ch08.StageB.scaleConvolutionPower (W 0) n x : ℝ) : ℂ), ?_⟩
  exact ⟨Kyprianou.Ch08.StageB.source_scale_convolution_series_entire ψ W hW x hx,
    fun q hq =>
      (Kyprianou.Ch08.StageB.source_scale_discount_convolution_series ψ W hW x q hx hq).symm⟩
