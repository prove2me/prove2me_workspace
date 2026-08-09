import Definitions.Def_quantum_parallel_repetition_game
import Definitions.Def_qpr_alphabet_relabelling
import Theorems.Thm_QuantumParallelRepetition_entangledValue_le_one
import Theorems.Thm_QuantumParallelRepetition_entangledValue_eq_fin
import Theorems.Thm_QuantumParallelRepetition_repeatedEntangledValue_eq_fin
import Theorems.Thm_QuantumParallelRepetition_distributionUniformExponential
import Mathlib.Analysis.SpecialFunctions.Exp
import Mathlib.Analysis.SpecialFunctions.Log.Basic

open QuantumParallelRepetition

theorem solution
    {X Y A B : Type*}
    [Fintype X] [Fintype Y] [Fintype A] [Fintype B]
    [Nonempty A] [Nonempty B]
    (G : Game X Y A B)
    (hG : entangledValue G < 1) :
    ∃ C c : ℝ, 0 < C ∧ 0 < c ∧ ∀ n : ℕ,
      repeatedEntangledValue G n ≤ C * Real.exp (-c * n) := by
  classical
  obtain ⟨c₀, hc₀, hbound⟩ := distributionUniformExponential
  -- Lower the alphabets to `Fin _`, which live in `Type`, where OpenAI's theorem applies.
  have hval : entangledValue (G.relabel (Fintype.equivFin X) (Fintype.equivFin Y)
      (Fintype.equivFin A) (Fintype.equivFin B)) = entangledValue G :=
    (entangledValue_eq_fin G).symm
  have hrep : ∀ n, repeatedEntangledValue (G.relabel (Fintype.equivFin X) (Fintype.equivFin Y)
      (Fintype.equivFin A) (Fintype.equivFin B)) n = repeatedEntangledValue G n :=
    fun n => (repeatedEntangledValue_eq_fin G n).symm
  have hpos : 0 < 1 - entangledValue G := sub_pos.mpr hG
  have hcardA : 0 < Fintype.card A := Fintype.card_pos
  have hcardB : 0 < Fintype.card B := Fintype.card_pos
  have hA1 : (1 : ℝ) ≤ (Fintype.card A : ℝ) := by exact_mod_cast hcardA
  have hB1 : (1 : ℝ) ≤ (Fintype.card B : ℝ) := by exact_mod_cast hcardB
  have hlog : 0 ≤ Real.log ((Fintype.card A : ℝ) * (Fintype.card B : ℝ)) :=
    Real.log_nonneg (by nlinarith)
  -- The rate OpenAI's theorem delivers, with the game's own parameters substituted in.
  have hKpos : 0 < (1 - entangledValue G) ^ 13 /
      ((1 - entangledValue G) + Real.log ((Fintype.card A : ℝ) * (Fintype.card B : ℝ))) :=
    div_pos (pow_pos hpos 13) (by linarith)
  refine ⟨1, c₀ * ((1 - entangledValue G) ^ 13 /
      ((1 - entangledValue G) + Real.log ((Fintype.card A : ℝ) * (Fintype.card B : ℝ)))),
    one_pos, mul_pos hc₀ hKpos, ?_⟩
  intro n
  rcases Nat.eq_zero_or_pos n with hn | hn
  · -- OpenAI's bound starts at `n = 1`; at `n = 0` the trivial bound `ω* ≤ 1` suffices.
    subst hn
    have h0 : repeatedEntangledValue G 0 ≤ 1 := entangledValue_le_one (G.repeat 0)
    simpa using h0
  · have hnA : Nonempty (Fin (Fintype.card A)) := Fin.pos_iff_nonempty.mp hcardA
    have hnB : Nonempty (Fin (Fintype.card B)) := Fin.pos_iff_nonempty.mp hcardB
    have hgap : 0 < 1 - entangledValue (G.relabel (Fintype.equivFin X) (Fintype.equivFin Y)
        (Fintype.equivFin A) (Fintype.equivFin B)) := by rw [hval]; exact hpos
    have key := hbound (G.relabel (Fintype.equivFin X) (Fintype.equivFin Y)
      (Fintype.equivFin A) (Fintype.equivFin B)) hnA hnB hgap n hn
    rw [hrep n, hval] at key
    simpa [Fintype.card_fin] using key
