import Definitions.Def_quantum_parallel_repetition_game
import Mathlib.Analysis.Matrix.Order
import Mathlib.Analysis.SpecialFunctions.ContinuousFunctionalCalculus.Rpow.Basic

open scoped BigOperators ComplexOrder Kronecker MatrixOrder
open Matrix
open QuantumParallelRepetition

theorem QuantumParallelRepetition.trace_mul_posSemidef_nonneg
    {d : Type*} [Fintype d] [DecidableEq d]
    {R E : Matrix d d ℂ} (hR : R.PosSemidef) (hE : E.PosSemidef) :
    0 ≤ (Matrix.trace (R * E)).re := by sorry
