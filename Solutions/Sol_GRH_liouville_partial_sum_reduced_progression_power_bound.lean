import Theorems.Thm_GRH_liouville_reduced_progression_bound_above_record
import Theorems.Thm_GRH_liouville_reduced_progression_bound_below_record
import Mathlib.NumberTheory.ArithmeticFunction.Liouville
import Mathlib.Data.ZMod.Basic
import Mathlib.Analysis.SpecialFunctions.Pow.Real

/-- Proof sketch for `GRH.liouville_partial_sum_reduced_progression_power_bound`.

    Split the exponent range at the verified zero-free record `0.8749570698`.
    Above the record the bound is already Proved; at or below it we invoke the
    strictly weaker child carrying `hcap : σ ≤ 0.8749570698`. -/
theorem solution (q : ℕ) [NeZero q] (σ : ℝ) (hhalf : 1 / 2 < σ) (hone : σ < 1) :
    ∃ C : ℝ, 0 ≤ C ∧ ∀ a : ZMod q, IsUnit a → ∀ N : ℕ,
      |∑ j ∈ Finset.range (N + 1), if (j : ZMod q) = a then (ArithmeticFunction.liouville j : ℝ) else 0| ≤
        C * ((N : ℝ) + 1) ^ σ := by
  by_cases hrec : (0.8749570698 : ℝ) < σ
  · -- Above the record: the Proved above-record theorem has this exact conclusion.
    exact GRH.liouville_reduced_progression_bound_above_record q σ hrec
  · -- At or below the record: the remaining open child.
    exact GRH.liouville_reduced_progression_bound_below_record q σ hhalf hone (le_of_not_gt hrec)
