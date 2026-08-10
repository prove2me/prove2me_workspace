import Definitions.Def_quantum_parallel_repetition_game
import Definitions.Def_qpr_core_21
import Mathlib.Algebra.BigOperators.Group.Finset.Defs
import Mathlib.Algebra.Field.Defs
import Mathlib.Algebra.Group.Basic
import Mathlib.Algebra.Group.Defs
import Mathlib.Algebra.GroupWithZero.Basic
import Mathlib.Algebra.GroupWithZero.Defs
import Mathlib.Algebra.GroupWithZero.Units.Basic
import Mathlib.Algebra.Order.Monoid.Defs
import Mathlib.Algebra.Order.Monoid.Unbundled.Basic
import Mathlib.Algebra.Order.Monoid.Unbundled.Defs
import Mathlib.Algebra.Ring.Defs
import Mathlib.Algebra.Ring.Nat
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
import Mathlib.Data.Fintype.Powerset
import Mathlib.Data.Fintype.Prod
import Mathlib.Data.Fintype.Sets
import Mathlib.Data.Int.Cast.Defs
import Mathlib.Data.Matrix.Basic
import Mathlib.Data.Nat.Cast.Defs
import Mathlib.Data.Nat.Init
import Mathlib.Data.Real.Basic
import Mathlib.LinearAlgebra.Matrix.Kronecker
import Mathlib.MeasureTheory.Measure.MeasureSpace
import Mathlib.Order.Defs.PartialOrder
import Mathlib.Tactic.NormNum.Basic
import Mathlib.Tactic.NormNum.Inv
import Mathlib.Tactic.NormNum.Result
import Mathlib.Tactic.Ring.Basic
import Mathlib.Tactic.Ring.Common
import Mathlib.Topology.Defs.Filter

open QuantumParallelRepetition
open scoped ComplexOrder Matrix BigOperators InnerProductSpace
open Complex Matrix Finset
open scoped BigOperators
set_option backward.isDefEq.respectTransparency false
set_option maxHeartbeats 2000000
set_option maxRecDepth 2048
open QuantumParallelRepetition.Pinsker
open QuantumParallelRepetition.ClassicalInformation
attribute [local instance] Classical.propDecidable
variable {X Y A B : Type*}
variable [Fintype X] [Fintype Y] [Fintype A] [Fintype B]

theorem QuantumParallelRepetition.exact_source_equation_twenty_three_of_conditioned_reverse_prefix
    {KA KB : Type*} [Fintype KA] [Fintype KB]
    (G : Game X Y A B) (n : ℕ) (S : Strategy (G.repeat n))
    (D : Finset (Fin n))
    (remaining : 0 < (Finset.univ \ D).card)
    (positive : 0 < repeatedPostselectionMass G n S D)
    (base : ExactHistoryFlag X Y A B D)
    (seedLawA : Finset (SourceRemainingCoordinate D) →
      FiniteEventLaw KA)
    (seedLawB : Finset (SourceRemainingCoordinate D) →
      FiniteEventLaw KB)
    (ΩA ΩB : Finset (SourceRemainingCoordinate D) → Type*)
    [∀ side, Fintype (ΩA side)]
    [∀ side, Fintype (ΩB side)]
    (projectionA : ∀ side : Finset (SourceRemainingCoordinate D),
      KA × ExactOutcome X Y A B n →
        ΩA side × (Fin side.card → Y))
    (projectionB : ∀ side : Finset (SourceRemainingCoordinate D),
      KB × ExactOutcome X Y A B n →
        ΩB side × (Fin side.card → X))
    (defaultY : Y) (defaultX : X)
    (aliceConditionedReverseIdentification :
      exactAliceSourceConditionalInformation G n S D base =
        ∑ side : Finset (SourceRemainingCoordinate D),
          reversePartitionWeight side *
            ((∑ k : Fin side.card,
              reweightedSeedPrefixEntropyIncrement
                (seedLawA side) G n S D
                (projectionA side) defaultY k) /
              (side.card : ℝ)))
    (bobConditionedReverseIdentification :
      exactBobSourceConditionalInformation G n S D base =
        ∑ side : Finset (SourceRemainingCoordinate D),
          reversePartitionWeight side *
            ((∑ k : Fin side.card,
              reweightedSeedPrefixEntropyIncrement
                (seedLawB side) G n S D
                (projectionB side) defaultX k) /
              (side.card : ℝ))) :
    ExactSourceClassicalInformationBound G n S D base := by sorry
