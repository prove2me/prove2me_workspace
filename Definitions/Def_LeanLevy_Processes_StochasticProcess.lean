/-
Copyright (c) 2026 LeanLevy Contributors. All rights reserved.
Released under MIT license as described in the file LICENSE.
Authors: LeanLevy Contributors
-/
import Mathlib.Probability.Independence.Basic
import Mathlib.Probability.IdentDistrib
import Mathlib.MeasureTheory.Group.Arithmetic
import Mathlib.Probability.Process.Adapted
import Mathlib.Probability.Process.Filtration
import Mathlib.Probability.Independence.Process.HasIndepIncrements.Basic

/-!
# Stochastic Processes

This file defines the basic vocabulary for stochastic processes indexed by an
ordered type `ι` with values in a measurable group `E`:

* `ProbabilityTheory.increment X s t` — the increment `X t - X s`.
* `ProbabilityTheory.HasIndependentIncrements X μ` — consecutive increments
  along any monotone partition are mutually independent.
* `ProbabilityTheory.HasStationaryIncrements X μ` — the law of an increment
  depends only on the length `h`, not the starting point `s`.
* `ProbabilityTheory.stronglyAdapted_naturalFiltration` — a process is adapted to
  its natural filtration.
* `ProbabilityTheory.HasIndependentIncrements.indepFun_increment` — consecutive
  non-overlapping increments are pairwise independent.
* `ProbabilityTheory.hasIndependentIncrements_iff_hasIndepIncrements` — the predicate coincides
  definitionally with mathlib's `HasIndepIncrements`.
* `ProbabilityTheory.Adapted.measurable_increment` — increments of an adapted
  process are measurable w.r.t. the filtration at the later time.
-/

open MeasureTheory

namespace ProbabilityTheory

variable {ι : Type*} {Ω : Type*} {E : Type*}

section Increment

variable [Sub E]

/-- The increment of a process `X` from time `s` to time `t`. -/
def increment (X : ι → Ω → E) (s t : ι) (ω : Ω) : E := X t ω - X s ω



end Increment

section IncrementLemmas

variable [AddCommGroup E] {X : ι → Ω → E}







end IncrementLemmas

section MeasurableIncrement

variable [MeasurableSpace Ω] [MeasurableSpace E] [Sub E] [MeasurableSub₂ E]



end MeasurableIncrement

/-- A process `X` has **independent increments** with respect to a measure `μ` if
for every monotone sequence of times `t₀ ≤ t₁ ≤ ⋯ ≤ tₙ`, the increments
`X(t₁) - X(t₀), …, X(tₙ) - X(tₙ₋₁)` are mutually independent. -/
def HasIndependentIncrements [Preorder ι] [MeasurableSpace Ω] [MeasurableSpace E] [Sub E]
    (X : ι → Ω → E) (μ : Measure Ω) : Prop :=
  ∀ (n : ℕ) (t : Fin (n + 1) → ι), Monotone t →
    iIndepFun (fun k : Fin n => increment X (t k.castSucc) (t k.succ)) μ

/-- A process `X` has **stationary increments** with respect to a measure `μ` if
the distribution of `X(s + h) - X(s)` depends only on `h`, not on `s`. -/
def HasStationaryIncrements [AddMonoid ι] [MeasurableSpace Ω] [MeasurableSpace E] [Sub E]
    (X : ι → Ω → E) (μ : Measure Ω) : Prop :=
  ∀ (s h : ι), IdentDistrib (increment X s (s + h)) (increment X 0 h) μ μ



section IncrementIndependence

variable [Preorder ι] [MeasurableSpace Ω] [MeasurableSpace E] [Sub E]



end IncrementIndependence

section NaturalFiltrationIndependence

variable [Preorder ι] [MeasurableSpace Ω] [MeasurableSpace E] [AddGroup E]

end NaturalFiltrationIndependence

section FiltrationIndependence

variable [LinearOrder ι] [MeasurableSpace Ω] [MeasurableSpace E] [AddGroup E]





end FiltrationIndependence

section FiltrationAdapted

variable {m : MeasurableSpace Ω} [Preorder ι]
  [TopologicalSpace E] [MeasurableSpace E] [BorelSpace E]
variable [TopologicalSpace.MetrizableSpace E]
variable [Sub E] [MeasurableSub₂ E]





end FiltrationAdapted

end ProbabilityTheory
