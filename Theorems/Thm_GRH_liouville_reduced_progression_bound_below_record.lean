import Mathlib.NumberTheory.ArithmeticFunction.Moebius
import Mathlib.NumberTheory.ArithmeticFunction.Liouville
import Mathlib.Data.ZMod.Basic
import Mathlib.Analysis.SpecialFunctions.Pow.Real

theorem GRH.liouville_reduced_progression_bound_below_record
    (q : ℕ) [NeZero q] (σ : ℝ) (hhalf : 1 / 2 < σ) (hone : σ < 1)
    (hcap : σ ≤ 0.8749570698) :
    ∃ C : ℝ, 0 ≤ C ∧ ∀ a : ZMod q, IsUnit a → ∀ N : ℕ,
      |∑ j ∈ Finset.range (N + 1), if (j : ZMod q) = a then (ArithmeticFunction.liouville j : ℝ) else 0| ≤
        C * ((N : ℝ) + 1) ^ σ := by sorry
