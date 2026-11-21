import Theorems.Thm_GRH_mobius_character_and_progression_bounds_above_record
import Theorems.Thm_GRH_sharp_mobius_character_power_bound_below_record
import Mathlib.NumberTheory.DirichletCharacter.Basic
import Mathlib.NumberTheory.ArithmeticFunction.Moebius
import Mathlib.Analysis.SpecialFunctions.Pow.Real
import Mathlib.Analysis.Asymptotics.Defs

open Filter Asymptotics

/-- Proof sketch for `GRH.sharp_mobius_character_power_bound`.

    Split the exponent range at the verified zero-free record `0.8749570698`.
    Above the record the character bound is the first conjunct of the Proved
    record theorem; at or below it we invoke the strictly weaker child carrying
    `hcap : σ ≤ 0.8749570698`. -/
theorem solution (q : ℕ) [NeZero q] (χ : DirichletCharacter ℂ q) (σ : ℝ)
    (hhalf : (1 / 2 : ℝ) < σ) (hone : σ < 1) :
    (fun n : ℕ => ∑ k ∈ Finset.range (n + 1),
      χ k * (ArithmeticFunction.moebius k : ℂ)) =O[atTop]
      (fun n : ℕ => (n : ℝ) ^ σ) := by
  by_cases hrec : (0.8749570698 : ℝ) < σ
  · -- Above the record: first conjunct of the record theorem, instantiated at χ.
    exact (GRH.mobius_character_and_progression_bounds_above_record q σ hrec).1 χ
  · -- At or below the record: the remaining open child.
    exact GRH.sharp_mobius_character_power_bound_below_record q χ σ hhalf hone (le_of_not_gt hrec)
