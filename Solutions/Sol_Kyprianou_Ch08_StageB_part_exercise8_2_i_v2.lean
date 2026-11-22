import Mathlib
import Definitions.Def_Kyprianou_Ch08_StageCFoundation_B
import Theorems.Thm_Kyprianou_Ch08_StageB_source_stable_integrated_coeff_summable
import Theorems.Thm_Kyprianou_Ch08_StageB_source_stable_integrated_scale_laplace
import Theorems.Thm_Kyprianou_Ch08_StageB_source_stable_integrated_series_closedform

set_option autoImplicit false

/-! # Exercise 8.2(i): stable integrated-scale representation (target `part_exercise8_2_i_v2`)

The definition `exercise8_2_i` bundles three facts, all under the stability
hypotheses `1 < α`, `α < 2`, `0 < q`, `q^(1/α) < β` and a source scale family
`W : ℝ → ℝ → ℝ`:

1. summability of the series `∑' n, q^n * β^(-(α*(n+1)+1))`
   — exactly `source_stable_integrated_coeff_summable`;
2. the Laplace closed form
   `∫_0^∞ e^(-β x) * integratedScale (W q) x ∂volume = (β*(β^α - q))⁻¹`
   — exactly `source_stable_integrated_scale_laplace`;
3. the series identification of that same closed form
   `(β*(β^α - q))⁻¹ = ∑' n, q^n * β^(-(α*(n+1)+1))`
   — exactly `source_stable_integrated_series_closedform`.

Each conjunct is literally the conclusion of an existing Proved platform lemma,
so the proof instantiates the three lemmas at the definition's parameters and
recombines them with the anonymous constructor for the nested conjunction.
(The auxiliary hypothesis `α < 2` carried by the definition is unused: none of
the three components requires it.) -/

theorem solution : Kyprianou.Ch08.StageB.exercise8_2_i := by
  intro α q β W hα _ hq hβ hW
  exact ⟨
    Kyprianou.Ch08.StageB.source_stable_integrated_coeff_summable α q β hα hq hβ,
    ⟨Kyprianou.Ch08.StageB.source_stable_integrated_scale_laplace α q β W hα hq hβ hW,
     Kyprianou.Ch08.StageB.source_stable_integrated_series_closedform α q β hα hq hβ⟩⟩
