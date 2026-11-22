/-
Copyright (c) 2026 LeanLevy Contributors. All rights reserved.
Released under MIT license as described in the file LICENSE.
Authors: LeanLevy Contributors
-/
import Definitions.Def_LeanLevy_Processes_LevyProcess
import Definitions.Def_LeanLevy_Processes_PoissonProcess
import Mathlib.MeasureTheory.Group.Convolution
import Mathlib.Probability.Independence.CharacteristicFunction

/-!
# Infinite Divisibility and Iterated Convolution

This file develops the theory of infinitely divisible probability measures and connects it to
Lévy processes.

## Main definitions

* `MeasureTheory.Measure.iteratedConv` — the `n`-fold convolution power `μ^{∗n}`.
* `ProbabilityTheory.IsInfinitelyDivisible` — a probability measure `μ` is infinitely divisible
  if for every `n ≥ 1` there exists a probability measure `ν` with `μ = ν^{∗n}`.

## Main results

* `MeasureTheory.Measure.charFun_iteratedConv` — `charFun (μ^{∗n}) t = (charFun μ t) ^ n`.
* `ProbabilityTheory.isInfinitelyDivisible_poissonMeasure_map` — the Poisson distribution
  is infinitely divisible.
* `ProbabilityTheory.IsLevyProcess.charFun_marginal_nat_pow` — for a Lévy process,
  `charFun(X(n)) = charFun(X(1))^n`.
-/

open MeasureTheory MeasureTheory.Measure ProbabilityTheory
open scoped NNReal ENNReal

/-! ## Section 1: Iterated convolution -/

namespace MeasureTheory.Measure

variable {E : Type*} [AddCommMonoid E] [MeasurableSpace E]

/-- The `n`-fold convolution power of a measure: `μ^{∗0} = δ₀`, `μ^{∗(n+1)} = μ ∗ μ^{∗n}`. -/
noncomputable def iteratedConv (μ : Measure E) : ℕ → Measure E
  | 0 => dirac 0
  | n + 1 => μ ∗ (iteratedConv μ n)

@[simp]
theorem iteratedConv_zero (μ : Measure E) : μ.iteratedConv 0 = dirac 0 := rfl

@[simp]
theorem iteratedConv_succ (μ : Measure E) (n : ℕ) :
    μ.iteratedConv (n + 1) = μ ∗ μ.iteratedConv n := rfl

variable [MeasurableAdd₂ E]



instance isProbabilityMeasure_iteratedConv (μ : Measure E) [IsProbabilityMeasure μ] :
    ∀ n : ℕ, IsProbabilityMeasure (μ.iteratedConv n)
  | 0 => by rw [iteratedConv_zero]; infer_instance
  | n + 1 => by
    haveI := isProbabilityMeasure_iteratedConv μ n
    show IsProbabilityMeasure (μ ∗ μ.iteratedConv n)
    show IsProbabilityMeasure
      (Measure.map (fun p : E × E ↦ p.1 + p.2) (μ.prod (μ.iteratedConv n)))
    exact Measure.isProbabilityMeasure_map (by fun_prop)

theorem charFun_iteratedConv {E : Type*} [NormedAddCommGroup E] [InnerProductSpace ℝ E]
    [MeasurableSpace E] [BorelSpace E] [SecondCountableTopology E] [MeasurableAdd₂ E]
    (μ : Measure E) [IsProbabilityMeasure μ] (n : ℕ) (t : E) :
    charFun (μ.iteratedConv n) t = (charFun μ t) ^ n := by
  induction n with
  | zero =>
    simp only [iteratedConv_zero, charFun_dirac, inner_zero_left, Complex.ofReal_zero, zero_mul,
      Complex.exp_zero, pow_zero]
  | succ n ih =>
    haveI := isProbabilityMeasure_iteratedConv μ n
    rw [iteratedConv_succ, charFun_conv, ih, pow_succ, mul_comm]

end MeasureTheory.Measure

/-! ## Section 2: Infinite divisibility -/

namespace ProbabilityTheory

variable {E : Type*} [AddCommMonoid E] [MeasurableSpace E]

/-- A probability measure `μ` is **infinitely divisible** if for every `n ≥ 1`,
there exists a probability measure `ν` such that `μ = ν^{∗n}`. -/
def IsInfinitelyDivisible (μ : Measure E) : Prop :=
  ∀ n : ℕ, 0 < n → ∃ ν : Measure E, IsProbabilityMeasure ν ∧ μ = ν.iteratedConv n

/-! ## Section 3: Poisson is infinitely divisible -/





/-! ## Section 4: Lévy process charFun at natural times -/

variable {Ω : Type*} [MeasurableSpace Ω]





/-! ## Section 5: Lévy process marginals are infinitely divisible -/



end ProbabilityTheory
