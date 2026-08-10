import Definitions.Def_quantum_parallel_repetition_game
import Definitions.Def_qpr_core_30
import Theorems.Thm_QuantumParallelRepetition_exactRemainingCoordinate_card_pos
import Mathlib.Algebra.BigOperators.Group.Finset.Defs
import Mathlib.Algebra.Group.Defs
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
import Mathlib.Data.Fintype.Sigma
import Mathlib.Data.Matrix.Basic
import Mathlib.Data.Real.Basic
import Mathlib.Data.SetLike.Basic
import Mathlib.LinearAlgebra.Matrix.Kronecker
import Mathlib.MeasureTheory.Measure.MeasureSpace
import Mathlib.Topology.Defs.Filter

namespace QuantumParallelRepetition

open scoped ComplexOrder Matrix BigOperators InnerProductSpace
open Complex Matrix Finset

noncomputable section

open scoped BigOperators

set_option backward.isDefEq.respectTransparency false
set_option maxHeartbeats 2200000
set_option maxRecDepth 2048

open QuantumParallelRepetition.Pinsker
open QuantumParallelRepetition.ClassicalInformation

attribute [local instance] Classical.propDecidable

variable {X Y A B : Type*}
variable [Fintype X] [Fintype Y] [Fintype A] [Fintype B]

def repeatedAlicePostselectedQuestionLaw
    (G : Game X Y A B) (n : ℕ) (S : Strategy (G.repeat n))
    (D : Finset (Fin n)) : (Fin n → X) → ℝ := by
  classical
  exact groupedMass
    (fun ω : ExactOutcome X Y A B n => ω.1)
    (repeatedConditionedOutcomeLaw G n S D)

def repeatedBobPostselectedQuestionLaw
    (G : Game X Y A B) (n : ℕ) (S : Strategy (G.repeat n))
    (D : Finset (Fin n)) : (Fin n → Y) → ℝ := by
  classical
  exact groupedMass
    (fun ω : ExactOutcome X Y A B n => ω.2.1)
    (repeatedConditionedOutcomeLaw G n S D)

end

noncomputable section

open scoped BigOperators

set_option backward.isDefEq.respectTransparency false
set_option maxHeartbeats 2400000
set_option maxRecDepth 2048

open QuantumParallelRepetition.Pinsker
open QuantumParallelRepetition.ClassicalInformation

attribute [local instance] Classical.propDecidable

variable {X Y A B : Type*}
variable [Fintype X] [Fintype Y] [Fintype A] [Fintype B]

def exactConditionedReverseAlicePrefixEntropyIncrement
    (G : Game X Y A B) (n : ℕ) (S : Strategy (G.repeat n))
    (D : Finset (Fin n))
    (remaining : 0 < (Finset.univ \ D).card)
    (side : Finset (SourceRemainingCoordinate D))
    (default : Y) (k : Fin side.card) : ℝ :=
  reweightedSeedPrefixEntropyIncrement
    (exactReverseAliceConditionalSeedLaw
      (exactRemainingCoordinate_card_pos D remaining) side)
    G n S D
    (exactReverseAliceSourceProjection
      (X := X) (Y := Y) (A := A) (B := B) D side)
    default k

def exactConditionedReverseBobPrefixEntropyIncrement
    (G : Game X Y A B) (n : ℕ) (S : Strategy (G.repeat n))
    (D : Finset (Fin n))
    (remaining : 0 < (Finset.univ \ D).card)
    (side : Finset (SourceRemainingCoordinate D))
    (default : X) (k : Fin side.card) : ℝ :=
  reweightedSeedPrefixEntropyIncrement
    (exactReverseBobConditionalSeedLaw
      (exactRemainingCoordinate_card_pos D remaining) side)
    G n S D
    (exactReverseBobSourceProjection
      (X := X) (Y := Y) (A := A) (B := B) D side)
    default k

def exactConditionedReverseAlicePrefixInformation
    (G : Game X Y A B) (n : ℕ) (S : Strategy (G.repeat n))
    (D : Finset (Fin n))
    (remaining : 0 < (Finset.univ \ D).card)
    (default : Y) : ℝ :=
  ∑ side : Finset (SourceRemainingCoordinate D),
    reversePartitionWeight side *
      ((∑ k : Fin side.card,
        exactConditionedReverseAlicePrefixEntropyIncrement
          G n S D remaining side default k) /
        (side.card : ℝ))

def exactConditionedReverseBobPrefixInformation
    (G : Game X Y A B) (n : ℕ) (S : Strategy (G.repeat n))
    (D : Finset (Fin n))
    (remaining : 0 < (Finset.univ \ D).card)
    (default : X) : ℝ :=
  ∑ side : Finset (SourceRemainingCoordinate D),
    reversePartitionWeight side *
      ((∑ k : Fin side.card,
        exactConditionedReverseBobPrefixEntropyIncrement
          G n S D remaining side default k) /
        (side.card : ℝ))

def ExactReverseAliceConditionalHistoryIdentification
    (G : Game X Y A B) (n : ℕ) (S : Strategy (G.repeat n))
    (D : Finset (Fin n))
    (remaining : 0 < (Finset.univ \ D).card)
    (base : ExactHistoryFlag X Y A B D)
    (default : Y) : Prop :=
  exactAliceSourceConditionalInformation G n S D base =
    exactConditionedReverseAlicePrefixInformation
      G n S D remaining default

def ExactReverseBobConditionalHistoryIdentification
    (G : Game X Y A B) (n : ℕ) (S : Strategy (G.repeat n))
    (D : Finset (Fin n))
    (remaining : 0 < (Finset.univ \ D).card)
    (base : ExactHistoryFlag X Y A B D)
    (default : X) : Prop :=
  exactBobSourceConditionalInformation G n S D base =
    exactConditionedReverseBobPrefixInformation
      G n S D remaining default

end

noncomputable section

open scoped BigOperators

set_option backward.isDefEq.respectTransparency false
set_option maxHeartbeats 2400000
set_option maxRecDepth 2048

open QuantumParallelRepetition.Pinsker
open QuantumParallelRepetition.ClassicalInformation

attribute [local instance] Classical.propDecidable

variable {X Y A B : Type*}
variable [Fintype X] [Fintype Y] [Fintype A] [Fintype B]

abbrev ExactReverseAliceNextContext
    (X Y A B : Type*)
    [Fintype X] [Fintype Y] [Fintype A] [Fintype B]
    {n : ℕ} (D : Finset (Fin n))
    (side : Finset (SourceRemainingCoordinate D)) :=
  (ExactReverseAliceFixedInformation X Y D side ×
    ConditionedAnswerFlag A B D) ×
    (Fin side.card → Y)

abbrev ExactReverseBobNextContext
    (X Y A B : Type*)
    [Fintype X] [Fintype Y] [Fintype A] [Fintype B]
    {n : ℕ} (D : Finset (Fin n))
    (side : Finset (SourceRemainingCoordinate D)) :=
  (ExactReverseBobFixedInformation X Y D side ×
    ConditionedAnswerFlag A B D) ×
    (Fin side.card → X)

def exactConditionedReverseAliceNextJoint
    (G : Game X Y A B) (n : ℕ) (S : Strategy (G.repeat n))
    (D : Finset (Fin n))
    (remaining : 0 < (Finset.univ \ D).card)
    (side : Finset (SourceRemainingCoordinate D)) :
    ExactReverseAliceNextContext X Y A B D side → ℝ :=
  reweightedSeedPrefixJoint
    (exactReverseAliceConditionalSeedLaw
      (exactRemainingCoordinate_card_pos D remaining) side)
    G n S D
    (exactReverseAliceSourceProjection
      (X := X) (Y := Y) (A := A) (B := B) D side)

def exactConditionedReverseAliceNextPrior
    (G : Game X Y A B) (n : ℕ) (S : Strategy (G.repeat n))
    (D : Finset (Fin n))
    (remaining : 0 < (Finset.univ \ D).card)
    (side : Finset (SourceRemainingCoordinate D)) :
    ExactReverseAliceNextContext X Y A B D side → ℝ :=
  reweightedSeedPrefixPrior
    (exactReverseAliceConditionalSeedLaw
      (exactRemainingCoordinate_card_pos D remaining) side)
    G n S D
    (exactReverseAliceSourceProjection
      (X := X) (Y := Y) (A := A) (B := B) D side)

end

end QuantumParallelRepetition
