import Theorems.Thm_GRH_liouville_reduced_progression_bound_above_record
import Theorems.Thm_GRH_moebius_progression_le_of_liouville_progression_le
import Theorems.Thm_GRH_moebius_partial_sum_reduced_progression_power_bound_below_record
import Mathlib.NumberTheory.ArithmeticFunction.Moebius
import Mathlib.NumberTheory.ArithmeticFunction.Liouville
import Mathlib.Analysis.SpecialFunctions.Pow.Real
import Mathlib.Topology.Algebra.InfiniteSum.Order

open scoped BigOperators

theorem solution (q : ℕ) [NeZero q] (a : ZMod q) (ha : IsUnit a) (σ : ℝ)
    (hhalf : (1 / 2 : ℝ) < σ) (hone : σ < 1) :
    ∃ C : ℝ, 0 ≤ C ∧ ∀ n : ℕ,
      |∑ k ∈ Finset.range (n + 1),
        if (k : ZMod q) = a then (ArithmeticFunction.moebius k : ℝ) else 0| ≤
          C * ((n : ℝ) + 1) ^ σ := by
  by_cases hrec : (0.8749570698 : ℝ) < σ
  · -- Exponents above the verified zero-free record: Liouville cancellation
    -- above the record, transferred to Möbius by the square-divisor identity.
    obtain ⟨C, hC0, hLi⟩ := GRH.liouville_reduced_progression_bound_above_record q σ hrec
    have hK : 0 ≤ C * (2 : ℝ) ^ σ * ∑' d : ℕ, ((d : ℝ) ^ (2 * σ)) ⁻¹ :=
      mul_nonneg (mul_nonneg hC0 (Real.rpow_nonneg (by norm_num : (0 : ℝ) ≤ 2) σ))
        (tsum_nonneg fun d => inv_nonneg.2 (Real.rpow_nonneg (Nat.cast_nonneg d) _))
    exact ⟨_, hK, fun n =>
      GRH.moebius_progression_le_of_liouville_progression_le q σ C hhalf hC0 hLi a ha n⟩
  · -- Exponents at or below the record: the remaining open child.
    exact GRH.moebius_partial_sum_reduced_progression_power_bound_below_record q a ha σ hhalf hone
      (le_of_not_gt hrec)
