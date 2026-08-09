import Definitions.Def_quantum_parallel_repetition_game
import Theorems.Thm_QuantumParallelRepetition_entangledValue_nonneg
import Theorems.Thm_QuantumParallelRepetition_entangledValue_exponential_decay
import Mathlib.Topology.Order.Basic
import Mathlib.Analysis.SpecialFunctions.Exp
import Mathlib.Order.Filter.AtTopBot.Basic

open QuantumParallelRepetition
open Filter
open scoped Topology

theorem solution
    {X Y A B : Type*}
    [Fintype X] [Fintype Y] [Fintype A] [Fintype B]
    [Nonempty A] [Nonempty B]
    (G : Game X Y A B)
    (hG : entangledValue G < 1) :
    Tendsto (repeatedEntangledValue G) atTop (𝓝 0) := by
  obtain ⟨C, c, hC, hc, hbound⟩ := entangledValue_exponential_decay G hG
  -- Squeeze between the constant zero and the exponential bound.
  have hlow : ∀ n : ℕ, 0 ≤ repeatedEntangledValue G n :=
    fun n => entangledValue_nonneg (G.repeat n)
  have hnat : Tendsto (fun n : ℕ => (n : ℝ)) atTop atTop := tendsto_natCast_atTop_atTop
  have hlin : Tendsto (fun n : ℕ => -c * (n : ℝ)) atTop atBot := by
    have h1 : Tendsto (fun n : ℕ => c * (n : ℝ)) atTop atTop :=
      Filter.Tendsto.const_mul_atTop hc hnat
    have h2 : Tendsto (fun n : ℕ => -(c * (n : ℝ))) atTop atBot :=
      tendsto_neg_atTop_atBot.comp h1
    simpa [neg_mul] using h2
  have hupper : Tendsto (fun n : ℕ => C * Real.exp (-c * (n : ℝ))) atTop (𝓝 0) := by
    have hexp : Tendsto (fun n : ℕ => Real.exp (-c * (n : ℝ))) atTop (𝓝 0) :=
      Real.tendsto_exp_atBot.comp hlin
    simpa using hexp.const_mul C
  exact tendsto_of_tendsto_of_tendsto_of_le_of_le tendsto_const_nhds hupper hlow hbound
