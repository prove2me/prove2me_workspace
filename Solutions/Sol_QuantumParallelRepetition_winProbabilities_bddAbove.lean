import Definitions.Def_quantum_parallel_repetition_game
import Theorems.Thm_QuantumParallelRepetition_Strategy_winProbability_le_one
import Mathlib.Algebra.BigOperators.Group.Finset.Defs
import Mathlib.Algebra.Star.Basic
import Mathlib.Analysis.InnerProductSpace.Basic
import Mathlib.Analysis.Matrix.Normed
import Mathlib.Analysis.Matrix.Order
import Mathlib.Analysis.Normed.Lp.WithLp
import Mathlib.Analysis.RCLike.Basic
import Mathlib.Data.Fintype.Defs
import Mathlib.Data.Matrix.Basic
import Mathlib.Data.Real.Basic
import Mathlib.Data.Set.Defs
import Mathlib.Data.Set.Operations
import Mathlib.LinearAlgebra.Matrix.Kronecker
import Mathlib.MeasureTheory.Measure.MeasureSpace
import Mathlib.Order.Bounds.Defs
import Mathlib.Topology.Defs.Filter



open QuantumParallelRepetition
open scoped ComplexOrder Matrix BigOperators InnerProductSpace
open Complex Matrix Finset
open scoped BigOperators ComplexOrder Kronecker MatrixOrder
open Matrix
variable {X Y A B : Type*}

theorem solution [Fintype X] [Fintype Y]
    [Fintype A] [Fintype B] (G : Game X Y A B) :
    BddAbove (Set.range (Strategy.winProbability (G := G))) := by
  refine ⟨1, ?_⟩
  rintro _ ⟨S, rfl⟩
  exact S.winProbability_le_one
