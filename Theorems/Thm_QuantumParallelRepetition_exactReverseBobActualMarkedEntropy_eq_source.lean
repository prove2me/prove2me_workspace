import Definitions.Def_quantum_parallel_repetition_game
import Definitions.Def_qpr_core_36
import Theorems.Thm_QuantumParallelRepetition_exactReverseRightSide_coordinate_mem
import Mathlib.Algebra.BigOperators.Group.Finset.Defs
import Mathlib.Algebra.Star.Basic
import Mathlib.Analysis.InnerProductSpace.Basic
import Mathlib.Analysis.Matrix.Normed
import Mathlib.Analysis.Matrix.Order
import Mathlib.Analysis.Normed.Lp.WithLp
import Mathlib.Analysis.RCLike.Basic
import Mathlib.Data.Finset.Card
import Mathlib.Data.Finset.Defs
import Mathlib.Data.Finset.SDiff
import Mathlib.Data.Fintype.Basic
import Mathlib.Data.Fintype.Defs
import Mathlib.Data.Fintype.Pi
import Mathlib.Data.Fintype.Prod
import Mathlib.Data.Fintype.Sets
import Mathlib.Data.Fintype.Sigma
import Mathlib.Data.FunLike.Basic
import Mathlib.Data.FunLike.Equiv
import Mathlib.Data.Matrix.Basic
import Mathlib.Data.Real.Basic
import Mathlib.Data.SetLike.Basic
import Mathlib.LinearAlgebra.Matrix.Kronecker
import Mathlib.Logic.Equiv.Defs
import Mathlib.MeasureTheory.Measure.MeasureSpace
import Mathlib.Topology.Defs.Filter

open QuantumParallelRepetition
open scoped ComplexOrder Matrix BigOperators InnerProductSpace
open Complex Matrix Finset
open scoped BigOperators
set_option backward.isDefEq.respectTransparency false
set_option maxHeartbeats 8000000
set_option maxRecDepth 2048
open QuantumParallelRepetition.Pinsker
open QuantumParallelRepetition.ClassicalInformation
attribute [local instance] Classical.propDecidable
variable {X Y A B : Type*}
variable [Fintype X] [Fintype Y] [Fintype A] [Fintype B]

theorem QuantumParallelRepetition.exactReverseBobActualMarkedEntropy_eq_source
    (G : Game X Y A B) (n : ℕ) (S : Strategy (G.repeat n))
    (D : Finset (Fin n))
    (remaining : 0 < (Finset.univ \ D).card)
    (positive : 0 < repeatedPostselectionMass G n S D)
    (default : X)
    (seed : ExactRemainingSeed D)
    (outcome : ExactOutcome X Y A B n)
    (supported :
      repeatedConditionedOutcomeLaw G n S D outcome ≠ 0) :
    exactReverseBobContextMarkedEntropyScore
        G n S D remaining default
        (exactReverseRightSide seed)
        (exactReverseBobContext seed)
        ((exactReverseBobContext seed).sideRank
          ⟨seed.coordinate,
            exactReverseRightSide_coordinate_mem seed⟩)
        outcome =
      finiteRelativeEntropy
        (jointConditional
          (fun atom :
            ((SourceRemainingCoordinate D × Y) ×
              ExactHistoryFlag X Y A B D) × X =>
            exactBobInformationPosterior G n S D
              (atom.1.1, (atom.1.2, atom.2)))
          ((seed.coordinate, outcome.2.1 seed.coordinate.val),
            exactHistoryCode D (seed, outcome)))
        (G.conditionalXGivenY
          (outcome.2.1 seed.coordinate.val)) := by sorry
