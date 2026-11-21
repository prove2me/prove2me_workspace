import Mathlib.NumberTheory.LSeries.Dirichlet
import Mathlib.NumberTheory.LSeries.SumCoeff

theorem moebius_summatory_rpow_bound_below_record :
    ∀ ε : ℝ, 0 < ε → ε ≤ 0.3749570698 →
      Asymptotics.IsBigO Filter.atTop
        (fun N : ℕ => ∑ n ∈ Finset.Icc 1 N, (ArithmeticFunction.moebius n : ℂ))
        (fun N : ℕ => (N : ℝ) ^ (1 / 2 + ε)) := by sorry
