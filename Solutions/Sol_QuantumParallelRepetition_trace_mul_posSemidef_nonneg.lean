import Definitions.Def_quantum_parallel_repetition_game
import Mathlib.Analysis.Matrix.Order
import Mathlib.Analysis.SpecialFunctions.ContinuousFunctionalCalculus.Rpow.Basic

open scoped BigOperators ComplexOrder Kronecker MatrixOrder
open Matrix
open QuantumParallelRepetition

open QuantumParallelRepetition in
theorem solution
    {d : Type*} [Fintype d] [DecidableEq d]
    {R E : Matrix d d ℂ} (hR : R.PosSemidef) (hE : E.PosSemidef) :
    0 ≤ (Matrix.trace (R * E)).re := by
  obtain ⟨K, rfl⟩ := CStarAlgebra.nonneg_iff_eq_star_mul_self.mp hR.nonneg
  have hpositive : (K * E * star K).PosSemidef := by
    simpa [star_eq_conjTranspose] using hE.mul_mul_conjTranspose_same K
  have htrace : 0 ≤ (Matrix.trace (K * E * star K)).re :=
    (Complex.nonneg_iff.mp hpositive.trace_nonneg).1
  rw [Matrix.trace_mul_cycle] at htrace
  exact htrace
