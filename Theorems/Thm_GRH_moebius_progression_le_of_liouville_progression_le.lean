import Mathlib.NumberTheory.ArithmeticFunction.Moebius
import Mathlib.NumberTheory.ArithmeticFunction.Liouville
import Mathlib.Data.ZMod.Basic
import Mathlib.Analysis.SpecialFunctions.Pow.Real

open ArithmeticFunction Finset
namespace GRH

theorem moebius_progression_le_of_liouville_progression_le (q : ℕ) [NeZero q] (σ C : ℝ) (hσ : 1/2 < σ) (hC : 0 ≤ C)
    (H : ∀ a : ZMod q, IsUnit a → ∀ N : ℕ,
      |∑ j ∈ range (N+1), if (j:ZMod q)=a then (liouville j:ℝ) else 0| ≤ C*((N:ℝ)+1)^σ)
    (a : ZMod q) (ha : IsUnit a) (N : ℕ) :
    |∑ k ∈ range (N+1), if (k:ZMod q)=a then (moebius k:ℝ) else 0| ≤
      (C * (2:ℝ)^σ * ∑' d : ℕ, ((d:ℝ)^(2*σ))⁻¹) * ((N:ℝ)+1)^σ := by sorry

end GRH
