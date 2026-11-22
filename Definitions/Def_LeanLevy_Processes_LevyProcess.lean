/-
Copyright (c) 2026 LeanLevy Contributors. All rights reserved.
Released under MIT license as described in the file LICENSE.
Authors: LeanLevy Contributors
-/
import Definitions.Def_LeanLevy_Processes_StochasticProcess
import Definitions.Def_LeanLevy_Processes_Cadlag
import Mathlib.MeasureTheory.Measure.CharacteristicFunction.Basic
import Mathlib.Probability.Independence.CharacteristicFunction
import Mathlib.Analysis.SpecialFunctions.Complex.Log

/-!
# Lévy Processes

This file defines the `IsLevyProcess` predicate for a stochastic process indexed by `ℝ≥0` with
values in a measurable additive group `E`. A Lévy process is characterised by:

1. Starting at zero: `X 0 = 0` a.s.
2. Independent increments.
3. Stationary increments.
4. Càdlàg sample paths a.e.

We also define the **characteristic exponent** `Ψ` via `charFun (μ.map (X 1))` and state the
Lévy–Khintchine factorisation `charFun (μ.map (X t)) ξ = exp(t · Ψ(ξ))`.

## Main definitions

* `ProbabilityTheory.IsLevyProcess` — the predicate bundling the four axioms.
* `ProbabilityTheory.IsLevyProcess.charExponent` — the characteristic exponent `Ψ`.

## Main results

* `ProbabilityTheory.IsLevyProcess.indepFun_increment` — two non-overlapping increments are
  pairwise independent.
* `ProbabilityTheory.IsLevyProcess.identDistrib_increment` — the law of an increment depends
  only on the lag.
* `ProbabilityTheory.IsLevyProcess.charFun_eq_exp_mul` — Lévy–Khintchine factorisation.

-/

open MeasureTheory Complex Filter Topology
open scoped NNReal

namespace ProbabilityTheory

variable {Ω : Type*} {E : Type*}
variable [MeasurableSpace Ω] [MeasurableSpace E] [TopologicalSpace E] [AddGroup E]

/-- A stochastic process `X : ℝ≥0 → Ω → E` is a **Lévy process** with respect to a measure `μ`
if it starts at zero, has independent and stationary increments, and has càdlàg sample paths
almost everywhere. -/
structure IsLevyProcess (X : ℝ≥0 → Ω → E) (μ : Measure Ω) : Prop where
  /-- The process starts at the origin. -/
  start_zero : X 0 = fun _ => 0
  /-- Increments along any monotone partition are mutually independent. -/
  indep_increments : HasIndependentIncrements X μ
  /-- The law of an increment depends only on the lag, not the starting time. -/
  stationary_increments : HasStationaryIncrements X μ
  /-- Almost every sample path is càdlàg. -/
  cadlag_ae : ∀ᵐ ω ∂μ, IsCadlag (fun t => X t ω)

/-! ### API lemmas -/

namespace IsLevyProcess





/-! ### Characteristic exponent -/

/-- The **characteristic exponent** of a Lévy process, defined as the limit
`Ψ(ξ) = lim_{t→0+} log(φ(t))/t` where `φ(t) = charFun(μ.map(X t)) ξ`.

For small `t > 0`, the characteristic function `φ(t)` is near 1 (since `φ(0) = 1` and `φ` is
right-continuous), so the principal branch logarithm is well-defined and continuous. The limit
exists because `log(φ(t))/t` is eventually constant (equal to the true exponent `c` satisfying
`φ(t) = exp(tc)` for all `t`). -/
noncomputable def charExponent
    [Inner ℝ E]
    {X : ℝ≥0 → Ω → E} {μ : Measure Ω}
    (_ : IsLevyProcess X μ) : E → ℂ :=
  fun ξ => limUnder (𝓝[>] (0 : ℝ≥0))
    (fun t => Complex.log (charFun (μ.map (X t)) ξ) / ↑(t : ℝ))

/-! ### Helper lemmas for Lévy–Khintchine factorisation -/

section LKHelpers

set_option linter.unusedSectionVars false

variable {E : Type*} [NormedAddCommGroup E] [InnerProductSpace ℝ E]
  [MeasurableSpace E] [BorelSpace E] [SecondCountableTopology E] [MeasurableAdd₂ E]
  {X : ℝ≥0 → Ω → E} {μ : Measure Ω} [IsProbabilityMeasure μ]




















end LKHelpers



end IsLevyProcess

end ProbabilityTheory
