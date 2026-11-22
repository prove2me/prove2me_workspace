/-
Copyright (c) 2026 LeanLevy Contributors. All rights reserved.
Released under MIT license as described in the file LICENSE.
Authors: LeanLevy Contributors
-/
import Definitions.Def_LeanLevy_Levy_LevyMeasure
import Mathlib.Analysis.Complex.Exponential
import Mathlib.MeasureTheory.Integral.Bochner.Basic
import Mathlib.MeasureTheory.Integral.Bochner.Set

/-!
# Compensated Integrand for the Lévy-Khintchine Formula

The **compensated integrand** is the function
`f(ξ, x) = exp(ixξ) - 1 - ixξ · 1_{|x| < 1}`
which appears in the Lévy-Khintchine representation of infinitely divisible distributions.

## Main definitions

* `ProbabilityTheory.levyCompensatedIntegrand` — the compensated integrand as a function `ℝ → ℝ → ℂ`.

## Main results

* `ProbabilityTheory.norm_levyCompensatedIntegrand_le` — pointwise norm bound in terms of `min(1, x²)`.
* `ProbabilityTheory.measurable_levyCompensatedIntegrand` — measurability in `x` for fixed `ξ`.
* `ProbabilityTheory.integrable_levyCompensatedIntegrand` — Bochner integrability under a Lévy measure.
* `ProbabilityTheory.integral_levyCompensatedIntegrand_eq_small_add_large` — the integral against a
  Lévy measure splits at radius 1 into the compensated small-jump and uncompensated large-jump parts.
-/

open MeasureTheory Complex ENNReal Set
open scoped NNReal ENNReal ComplexConjugate

namespace ProbabilityTheory

/-- The **compensated integrand** for the Lévy-Khintchine formula:
`f(ξ, x) = exp(ixξ) - 1 - ixξ · 1_{|x| < 1}`. -/
noncomputable def levyCompensatedIntegrand (ξ x : ℝ) : ℂ :=
  exp (↑x * ↑ξ * I) - 1 - ↑x * ↑ξ * I * if |x| < 1 then 1 else 0





















end ProbabilityTheory
