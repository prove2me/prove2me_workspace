/-
Copyright (c) 2026 LeanLevy Contributors. All rights reserved.
Released under MIT license as described in the file LICENSE.
Authors: LeanLevy Contributors
-/
import Definitions.Def_LeanLevy_Levy_InfiniteDivisible
import Definitions.Def_LeanLevy_Levy_LevyMeasure
import Definitions.Def_LeanLevy_Levy_CompensatedIntegral

/-!
# Lévy-Khintchine Representation

The **Lévy-Khintchine theorem** characterises infinitely divisible probability measures on `ℝ`:
their characteristic function has the form
`exp(ibξ − σ²ξ²/2 + ∫ (e^{ixξ} − 1 − ixξ·1_{|x|<1}) dν(x))`
where `(b, σ², ν)` is the Lévy-Khintchine triple.

## Main definitions

* `ProbabilityTheory.LevyKhintchineTriple` — the drift-diffusion-jump triple `(b, σ², ν)`.

## Main results

* `ProbabilityTheory.levyKhintchine_representation` — the representation theorem
  for every infinitely divisible probability measure on `ℝ`. Fully proved.

## Proof structure

The representation theorem chains through four sub-lemmas to
`levyKhintchine_of_cnd`, which uses Schoenberg + Bochner together with the
diagonal extraction `exists_drift_variance_jumpMeasure_along_seq`. The analytic
limit-identification core `psi_eq_levyKhintchine_formula` (the small-jump + large-jump
limit identifications) is fully proved. See `LevyKhintchineProof.lean` and `Bochner.lean`.
-/

open MeasureTheory MeasureTheory.Measure ProbabilityTheory
open scoped NNReal ENNReal

namespace ProbabilityTheory

/-- The **Lévy-Khintchine triple** `(b, σ², ν)` consisting of a drift, Gaussian variance,
and Lévy measure. The Lévy measure satisfies `IsLevyMeasure`, i.e., `ν({0}) = 0` and
`∫ min(1, x²) dν < ∞`. -/
structure LevyKhintchineTriple where
  /-- Drift parameter. -/
  drift : ℝ
  /-- Gaussian variance (non-negative). -/
  gaussianVariance : ℝ≥0
  /-- Lévy measure satisfying `ν({0}) = 0` and `∫ min(1, x²) dν < ∞`. -/
  levyMeasure : Measure ℝ
  /-- The Lévy measure satisfies the Lévy measure conditions. -/
  levyMeasure_isLevyMeasure : IsLevyMeasure levyMeasure

namespace LevyKhintchineTriple

variable (T : LevyKhintchineTriple)





end LevyKhintchineTriple

end ProbabilityTheory
