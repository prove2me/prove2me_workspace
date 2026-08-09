import Definitions.Def_quantum_parallel_repetition_game
import Theorems.Thm_QuantumParallelRepetition_entangledValue_exponential_decay
import Mathlib.Analysis.SpecialFunctions.Pow.Real
import Mathlib.Analysis.SpecialFunctions.Exp

open QuantumParallelRepetition

theorem solution
    {X Y A B : Type*}
    [Fintype X] [Fintype Y] [Fintype A] [Fintype B]
    [Nonempty A] [Nonempty B]
    (G : Game X Y A B)
    (hG : entangledValue G < 1) :
    ∃ C α : ℝ, 0 < C ∧ 0 < α ∧ ∀ n : ℕ,
      repeatedEntangledValue G (n + 1) ≤ C * Real.rpow (n + 1) (-α) := by
  obtain ⟨C, c, hC, hc, hbound⟩ := entangledValue_exponential_decay G hG
  -- Exponential decay is polynomial decay with exponent `1`, because `x·e^{-cx} ≤ 1/c`.
  refine ⟨C / c, 1, div_pos hC hc, one_pos, ?_⟩
  intro n
  have hx : (0 : ℝ) < (n : ℝ) + 1 := by positivity
  have hstep : ((n : ℝ) + 1) * Real.exp (-c * ((n : ℝ) + 1)) ≤ 1 / c := by
    have hle : c * ((n : ℝ) + 1) ≤ Real.exp (c * ((n : ℝ) + 1)) :=
      le_trans (by linarith) (Real.add_one_le_exp _)
    have hE : (0 : ℝ) < Real.exp (c * ((n : ℝ) + 1)) := Real.exp_pos _
    have hEneg : Real.exp (-c * ((n : ℝ) + 1)) = (Real.exp (c * ((n : ℝ) + 1)))⁻¹ := by
      rw [neg_mul, Real.exp_neg]
    rw [hEneg, ← div_eq_mul_inv, div_le_div_iff₀ hE hc]
    have hcomm : ((n : ℝ) + 1) * c = c * ((n : ℝ) + 1) := by ring
    rw [hcomm, one_mul]
    exact hle
  have hkey := hbound (n + 1)
  have hcast : ((n + 1 : ℕ) : ℝ) = (n : ℝ) + 1 := by push_cast; ring
  rw [hcast] at hkey
  have hrpow : Real.rpow ((n : ℝ) + 1) (-1 : ℝ) = ((n : ℝ) + 1)⁻¹ := Real.rpow_neg_one _
  rw [hrpow]
  refine le_trans hkey ?_
  have h2 : C * Real.exp (-c * ((n : ℝ) + 1)) * ((n : ℝ) + 1) ≤ C / c := by
    calc C * Real.exp (-c * ((n : ℝ) + 1)) * ((n : ℝ) + 1)
        = C * (((n : ℝ) + 1) * Real.exp (-c * ((n : ℝ) + 1))) := by ring
      _ ≤ C * (1 / c) := mul_le_mul_of_nonneg_left hstep hC.le
      _ = C / c := by ring
  rw [← div_eq_mul_inv, le_div_iff₀ hx]
  exact h2
