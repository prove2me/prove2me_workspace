import Definitions.Def_quantum_parallel_repetition_game
import Definitions.Def_qpr_core_22
import Mathlib.Algebra.BigOperators.Group.Finset.Defs
import Mathlib.Algebra.Star.Basic
import Mathlib.Analysis.InnerProductSpace.Basic
import Mathlib.Analysis.Matrix.Normed
import Mathlib.Analysis.Matrix.Order
import Mathlib.Analysis.Normed.Lp.WithLp
import Mathlib.Analysis.RCLike.Basic
import Mathlib.Data.Finset.Defs
import Mathlib.Data.Finset.Image
import Mathlib.Data.Finset.Lattice.Basic
import Mathlib.Data.Finset.SDiff
import Mathlib.Data.Fintype.Basic
import Mathlib.Data.Fintype.Defs
import Mathlib.Data.Fintype.Sets
import Mathlib.Data.Matrix.Basic
import Mathlib.Data.SetLike.Basic
import Mathlib.LinearAlgebra.Matrix.Kronecker
import Mathlib.MeasureTheory.Measure.MeasureSpace
import Mathlib.Topology.Defs.Filter

open QuantumParallelRepetition
open scoped ComplexOrder Matrix BigOperators InnerProductSpace
open Complex Matrix Finset
open scoped BigOperators ComplexOrder Kronecker MatrixOrder
  Matrix.Norms.L2Operator InnerProductSpace
set_option backward.isDefEq.respectTransparency false
set_option maxHeartbeats 2800000
set_option maxRecDepth 2048
attribute [local instance] Classical.propDecidable
variable {X Y A B : Type*}
variable [Fintype X] [Fintype Y] [Fintype A] [Fintype B]

theorem QuantumParallelRepetition.exactRevealCode_eq_iff_fair_question_masks
    {n : ℕ} (D : Finset (Fin n))
    (seed : ExactRemainingSeed D)
    (q q' : ExactFullQuestion X Y n) :
    exactRevealCode D seed q' =
        exactRevealCode D seed q ↔
      (∀ j : Fin n,
        j ∈ exactFairAliceQuestionMask D seed →
          q'.1 j = q.1 j) ∧
      (∀ j : Fin n,
        j ∈ exactFairBobQuestionMask D seed →
          q'.2 j = q.2 j) := by sorry
