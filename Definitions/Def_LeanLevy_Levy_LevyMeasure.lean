/-
Copyright (c) 2026 LeanLevy Contributors. All rights reserved.
Released under MIT license as described in the file LICENSE.
Authors: LeanLevy Contributors
-/
import Mathlib.MeasureTheory.Measure.MeasureSpace
import Mathlib.MeasureTheory.Integral.Lebesgue.Basic
import Mathlib.MeasureTheory.Integral.Lebesgue.Markov
import Mathlib.Topology.Order.Basic

/-!
# Levy Measures

A **Levy measure** on `ℝ` is a Borel measure `ν` satisfying two conditions:

1. `ν {0} = 0` — no mass at the origin.
2. `∫⁻ x, min(1, x²) dν < ∞` — the integral of `min(1, x²)` is finite.

These conditions arise naturally in the Levy-Khintchine representation of infinitely
divisible distributions: the Levy measure captures the jump structure of the process,
while the vanishing at zero and the integrability condition ensure that the
characteristic exponent is well-defined.

## Main definitions

* `ProbabilityTheory.IsLevyMeasure` — predicate asserting that a measure on `ℝ` is a Levy measure.

## Main results

* `ProbabilityTheory.IsLevyMeasure.zero_singleton` — `ν {0} = 0`.
* `ProbabilityTheory.IsLevyMeasure.lintegral_min_one_sq_lt_top` — the integral condition.
* `ProbabilityTheory.IsLevyMeasure.measure_setOf_abs_ge_lt_top` — `ν {x | ε ≤ |x|} < ⊤` for `ε > 0`.
* `ProbabilityTheory.IsLevyMeasure.measure_compl_Ioo_lt_top` — `ν (Ioo (-1) 1)ᶜ < ⊤`.
* `ProbabilityTheory.IsLevyMeasure.sigmaFinite` — every Lévy measure is σ-finite.
* `ProbabilityTheory.IsLevyMeasure.smul` — a finite scalar multiple of a Lévy measure is a Lévy
  measure.
* `ProbabilityTheory.isLevyMeasure_zero` — the zero measure is a Levy measure.
-/

open MeasureTheory ENNReal Set
open scoped NNReal ENNReal

namespace ProbabilityTheory

/-- A measure `ν` on `ℝ` is a **Levy measure** if it assigns zero mass to the origin and
the integral of `min(1, x²)` with respect to `ν` is finite. -/
def IsLevyMeasure (ν : Measure ℝ) : Prop :=
  ν {0} = 0 ∧ ∫⁻ x, ENNReal.ofReal (min 1 (x ^ 2)) ∂ν < ⊤

namespace IsLevyMeasure

variable {ν : Measure ℝ}







/-- A Lévy measure has finite mass on `{x | ε ≤ |x|}` for any `ε > 0`. -/
theorem measure_setOf_abs_ge_lt_top (hν : IsLevyMeasure ν) {ε : ℝ} (hε : 0 < ε) :
    ν {x | ε ≤ |x|} < ⊤ := by
  set c := ENNReal.ofReal (min 1 (ε ^ 2))
  set f := fun x : ℝ => ENNReal.ofReal (min 1 (x ^ 2))
  -- c is positive since ε > 0
  have hε2 : 0 < min 1 (ε ^ 2) := lt_min one_pos (sq_pos_of_pos hε)
  have hc_pos : 0 < c := ENNReal.ofReal_pos.mpr hε2
  -- The integrand is measurable
  have hf_meas : Measurable f := by
    apply ENNReal.measurable_ofReal.comp
    exact measurable_const.min (measurable_id'.pow_const 2)
  -- {x | ε ≤ |x|} ⊆ {x | c ≤ f x}
  have hSub : {x : ℝ | ε ≤ |x|} ⊆ {x : ℝ | c ≤ f x} := by
    intro x hx
    simp only [mem_setOf_eq] at hx ⊢
    apply ENNReal.ofReal_le_ofReal
    exact min_le_min le_rfl ((sq_abs x).symm ▸ pow_le_pow_left₀ hε.le hx 2)
  -- Markov: c * ν {x | c ≤ f x} ≤ ∫⁻ f dν
  have hMarkov := mul_meas_ge_le_lintegral hf_meas c (μ := ν)
  -- c * ν(S) ≤ ∫⁻ f dν < ⊤
  have hle : c * ν {x | ε ≤ |x|} ≤ ∫⁻ x, f x ∂ν :=
    le_trans (mul_le_mul_right (measure_mono hSub) c) hMarkov
  exact lt_top_of_mul_ne_top_right (ne_top_of_le_ne_top hν.2.ne hle) hc_pos.ne'





/-- A finite measure that assigns no mass to the origin is a Levy measure: the integrability
condition `∫⁻ min(1, x²) dν < ∞` follows from `min(1, x²) ≤ 1` and `ν univ < ∞`. -/
theorem of_isFiniteMeasure {ν : Measure ℝ} [IsFiniteMeasure ν]
    (hν_zero : ν {0} = 0) : IsLevyMeasure ν := by
  refine ⟨hν_zero, ?_⟩
  calc ∫⁻ x, ENNReal.ofReal (min 1 (x ^ 2)) ∂ν
      ≤ ∫⁻ _, 1 ∂ν := lintegral_mono (fun x => by
        rw [show (1 : ℝ≥0∞) = ENNReal.ofReal 1 by simp]
        exact ENNReal.ofReal_le_ofReal (min_le_left _ _))
    _ = ν Set.univ := lintegral_one
    _ < ⊤ := (‹IsFiniteMeasure ν›).measure_univ_lt_top



end IsLevyMeasure



end ProbabilityTheory
