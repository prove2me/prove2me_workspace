import Mathlib
import Definitions.Def_Kyprianou_Ch08_StageCFoundation_D
import Definitions.Def_Kyprianou_Ch08_ScaleConvolutionPower
import Theorems.Thm_Kyprianou_Ch08_StageB_source_zscale_convolution_series_entire
import Theorems.Thm_Kyprianou_Ch08_StageB_source_zscale_convolution_series_agrees

set_option autoImplicit false

/-! # Corollary 8.5 (target `open_result8_5`): entire complex extension of the integrated Z-scale

`sourceCertificate_result8_5` asserts: for a source scale family `W` and every
`x > 0`, the integrated Z-scale section `q ↦ Zscale q (W q) x` extends to an
entire function `F : ℂ → ℂ` with `F q = Zscale q (W q) x` for all `q ≥ 0`.

Witness: the integrated causal-convolution series

  `F z = 1 + z * ∑' n : ℕ, z ^ n * ∫_0^x scaleConvolutionPower (W 0) n y dy`.

The two conjuncts are the conclusions of two existing Proved platform lemmas:

* `source_zscale_convolution_series_entire` — holomorphy of exactly this series
  (factorial majorant), giving `Differentiable ℂ F`;
* `source_zscale_convolution_series_agrees` — the real restriction: for
  `0 < x`, `0 ≤ q`, the series evaluated at `q` equals `Zscale q (W q) x`,
  which is precisely `F q = (Zscale q (W q) x : ℂ)`.

The strict domain `0 < x` of the corollary is exactly the hypothesis both
lemmas require; no hypothesis or quantified domain is altered. -/

theorem solution : Kyprianou.Ch08.StageB.sourceCertificate_result8_5 := by
  intro ψ W hW x hx
  refine ⟨fun z : ℂ => 1 + z * ∑' n : ℕ,
    z ^ n * (((∫ y in (0 : ℝ)..x, Kyprianou.Ch08.StageB.scaleConvolutionPower (W 0) n y) : ℝ) : ℂ), ?_⟩
  exact ⟨Kyprianou.Ch08.StageB.source_zscale_convolution_series_entire ψ W hW x hx,
    fun q hq =>
      Kyprianou.Ch08.StageB.source_zscale_convolution_series_agrees ψ W hW x hx q hq⟩
