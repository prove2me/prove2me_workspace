import Mathlib.NumberTheory.DirichletCharacter.Bounds
import Mathlib.NumberTheory.ArithmeticFunction.Moebius
import Mathlib.Analysis.SpecialFunctions.Pow.Real

open scoped BigOperators

theorem GRH.moebius_partial_sum_reduced_progression_power_bound_below_record
    (q : ℕ) [NeZero q] (a : ZMod q) (ha : IsUnit a) (σ : ℝ)
    (hhalf : (1 / 2 : ℝ) < σ) (hone : σ < 1) (hcap : σ ≤ 0.8749570698) :
    ∃ C : ℝ, 0 ≤ C ∧ ∀ n : ℕ,
      |∑ k ∈ Finset.range (n + 1),
        if (k : ZMod q) = a then (ArithmeticFunction.moebius k : ℝ) else 0| ≤
          C * ((n : ℝ) + 1) ^ σ := by sorry
