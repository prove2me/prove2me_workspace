import Mathlib.NumberTheory.DirichletCharacter.Orthogonality
import Mathlib.NumberTheory.ArithmeticFunction.Moebius
import Mathlib.Analysis.SpecialFunctions.Pow.Real
import Mathlib.Analysis.Asymptotics.Defs

open Filter Asymptotics

theorem GRH.mobius_character_and_progression_bounds_above_record (q : ℕ) [NeZero q] (σ : ℝ) (hσ : (0.8749570698 : ℝ) < σ) :
    (∀ χ : DirichletCharacter ℂ q,
      (fun N : ℕ ↦ ∑ k ∈ Finset.range (N+1), χ k * (ArithmeticFunction.moebius k : ℂ)) =O[atTop]
        (fun N : ℕ ↦ (N : ℝ)^σ)) ∧
    (∀ a : ZMod q, IsUnit a →
      (fun N : ℕ ↦ ∑ k ∈ Finset.range (N+1), if a = (k : ZMod q) then
        (ArithmeticFunction.moebius k : ℂ) else 0) =O[atTop] (fun N : ℕ ↦ (N : ℝ)^σ)) := by sorry
