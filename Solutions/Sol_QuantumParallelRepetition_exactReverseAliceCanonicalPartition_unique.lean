import Definitions.Def_quantum_parallel_repetition_game
import Definitions.Def_qpr_core_18
import Mathlib.Algebra.BigOperators.Group.Finset.Defs
import Mathlib.Algebra.Star.Basic
import Mathlib.Analysis.InnerProductSpace.Basic
import Mathlib.Analysis.Matrix.Normed
import Mathlib.Analysis.Matrix.Order
import Mathlib.Analysis.Normed.Lp.WithLp
import Mathlib.Analysis.RCLike.Basic
import Mathlib.Data.Finset.Defs
import Mathlib.Data.Finset.Filter
import Mathlib.Data.Finset.Insert
import Mathlib.Data.Fintype.Defs
import Mathlib.Data.Matrix.Basic
import Mathlib.Data.SetLike.Basic
import Mathlib.LinearAlgebra.Matrix.Kronecker
import Mathlib.MeasureTheory.Measure.MeasureSpace
import Mathlib.Topology.Defs.Filter



open QuantumParallelRepetition
open scoped ComplexOrder Matrix BigOperators InnerProductSpace
open Complex Matrix Finset
open scoped BigOperators
set_option backward.isDefEq.respectTransparency false
set_option maxHeartbeats 1800000
set_option maxRecDepth 2048
open QuantumParallelRepetition.ClassicalInformation
attribute [local instance] Classical.propDecidable

theorem solution
    {M : Type*} [Fintype M] [DecidableEq M]
    (side : Finset M) (coordinate : M)
    (partition : M → Bool)
    (fiber : insert coordinate
      (exactLeft coordinate partition) = side) :
    partition = exactReverseAliceCanonicalPartition
      side coordinate (partition coordinate) := by
  funext j
  by_cases hj : j = coordinate
  · subst j
    simp [exactReverseAliceCanonicalPartition]
  · cases hb : partition j
    · have hs : j ∈ side := by
        rw [← fiber]
        simp [exactLeft, hj, hb]
      simp [exactReverseAliceCanonicalPartition,
        hj, hs]
    · have hs : j ∉ side := by
        rw [← fiber]
        simp [exactLeft, hj, hb]
      simp [exactReverseAliceCanonicalPartition,
        hj, hs]
