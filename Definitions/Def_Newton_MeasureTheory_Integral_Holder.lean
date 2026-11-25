import Mathlib.Analysis.Convolution
import Mathlib.MeasureTheory.Function.LpSeminorm.Basic
import Mathlib.MeasureTheory.Integral.Bochner.Basic
import Mathlib.MeasureTheory.Measure.Prod
import Mathlib.Analysis.SpecialFunctions.Pow.Real
import Mathlib.Analysis.MeanInequalities
import Mathlib.Data.Real.ConjExponents
import Mathlib.MeasureTheory.Function.L1Space.Integrable
set_option autoImplicit false
open MeasureTheory ENNReal NNReal
open scoped ENNReal BigOperators
namespace Newton
variable {α : Type*} [MeasurableSpace α]
variable {μ : Measure α}
variable {E F : Type*} [NormedAddCommGroup E] [NormedAddCommGroup F]
def IsConjugateExponent (p q : ℝ≥0∞) : Prop :=
  (p = 1 ∧ q = ∞) ∨ (p = ∞ ∧ q = 1) ∨
  (1 < p ∧ p < ∞ ∧ 1 < q ∧ q < ∞ ∧ 1 / p + 1 / q = 1)
section HolderGeneral
end HolderGeneral
section MinkowskiAux
variable {β : Type*} [MeasurableSpace β]
variable {ν : Measure β}
end MinkowskiAux
end Newton
