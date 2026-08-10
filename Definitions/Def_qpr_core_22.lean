import Definitions.Def_quantum_parallel_repetition_game
import Definitions.Def_qpr_core_21
import Theorems.Thm_QuantumParallelRepetition_exactReverseAliceMarkerCode_injective
import Theorems.Thm_QuantumParallelRepetition_exactReverseBobMarkerCode_injective
import Theorems.Thm_QuantumParallelRepetition_exactReverseAliceMarkerDecode_rightInverse
import Theorems.Thm_QuantumParallelRepetition_exactReverseBobMarkerDecode_rightInverse
import Mathlib.Algebra.Algebra.Basic
import Mathlib.Algebra.Algebra.Defs
import Mathlib.Algebra.BigOperators.Group.Finset.Defs
import Mathlib.Algebra.Field.Defs
import Mathlib.Algebra.Group.Action.Defs
import Mathlib.Algebra.Group.Action.Pi
import Mathlib.Algebra.Group.Defs
import Mathlib.Algebra.Group.Pi.Basic
import Mathlib.Algebra.Group.Submonoid.Defs
import Mathlib.Algebra.GroupWithZero.Defs
import Mathlib.Algebra.Module.Defs
import Mathlib.Algebra.Module.LinearMap.Defs
import Mathlib.Algebra.Notation.Defs
import Mathlib.Algebra.Ring.Defs
import Mathlib.Algebra.Ring.Hom.Defs
import Mathlib.Algebra.Star.Basic
import Mathlib.Algebra.Star.SelfAdjoint
import Mathlib.AlgebraicTopology.SimplexCategory.Basic
import Mathlib.AlgebraicTopology.SimplexCategory.Defs
import Mathlib.Analysis.CStarAlgebra.Classes
import Mathlib.Analysis.CStarAlgebra.ContinuousFunctionalCalculus.Unital
import Mathlib.Analysis.Complex.Basic
import Mathlib.Analysis.Complex.Norm
import Mathlib.Analysis.InnerProductSpace.Basic
import Mathlib.Analysis.InnerProductSpace.Defs
import Mathlib.Analysis.InnerProductSpace.PiL2
import Mathlib.Analysis.Matrix.HermitianFunctionalCalculus
import Mathlib.Analysis.Matrix.Normed
import Mathlib.Analysis.Matrix.Order
import Mathlib.Analysis.Normed.Field.Basic
import Mathlib.Analysis.Normed.Group.Defs
import Mathlib.Analysis.Normed.Lp.PiLp
import Mathlib.Analysis.Normed.Lp.WithLp
import Mathlib.Analysis.Normed.Module.Basic
import Mathlib.Analysis.Normed.Ring.Basic
import Mathlib.Analysis.RCLike.Basic
import Mathlib.Analysis.SpecialFunctions.Log.Basic
import Mathlib.Analysis.SpecialFunctions.Log.NegMulLog
import Mathlib.Data.Complex.Basic
import Mathlib.Data.ENNReal.Basic
import Mathlib.Data.Finset.Card
import Mathlib.Data.Finset.Defs
import Mathlib.Data.Finset.Filter
import Mathlib.Data.Finset.Image
import Mathlib.Data.Finset.Lattice.Basic
import Mathlib.Data.Finset.SDiff
import Mathlib.Data.Fintype.Basic
import Mathlib.Data.Fintype.Card
import Mathlib.Data.Fintype.Defs
import Mathlib.Data.Fintype.Pi
import Mathlib.Data.Fintype.Prod
import Mathlib.Data.Fintype.Sets
import Mathlib.Data.Fintype.Sigma
import Mathlib.Data.FunLike.Basic
import Mathlib.Data.FunLike.Equiv
import Mathlib.Data.Matrix.Basic
import Mathlib.Data.Matrix.Mul
import Mathlib.Data.Nat.Cast.Defs
import Mathlib.Data.Nat.Init
import Mathlib.Data.Real.Basic
import Mathlib.Data.Real.Sqrt
import Mathlib.Data.Real.Star
import Mathlib.Data.SetLike.Basic
import Mathlib.LinearAlgebra.Matrix.ConjTranspose
import Mathlib.LinearAlgebra.Matrix.Defs
import Mathlib.LinearAlgebra.Matrix.Kronecker
import Mathlib.LinearAlgebra.UnitaryGroup
import Mathlib.Logic.Equiv.Defs
import Mathlib.Logic.Equiv.Fin.Basic
import Mathlib.Logic.Equiv.Prod
import Mathlib.MeasureTheory.Measure.MeasureSpace
import Mathlib.Topology.Algebra.Ring.Basic
import Mathlib.Topology.Algebra.Ring.Real
import Mathlib.Topology.Algebra.Star.Real
import Mathlib.Topology.Defs.Filter
import Mathlib.Topology.Instances.Matrix
import Mathlib.Topology.MetricSpace.Basic
import Mathlib.Topology.MetricSpace.Defs
import Mathlib.Topology.MetricSpace.Pseudo.Defs
import Mathlib.Topology.UniformSpace.Defs

namespace QuantumParallelRepetition

open scoped ComplexOrder Matrix BigOperators InnerProductSpace
open Complex Matrix Finset

noncomputable section

open scoped BigOperators

set_option backward.isDefEq.respectTransparency false
set_option maxHeartbeats 5000000
set_option maxRecDepth 2048

open QuantumParallelRepetition.Pinsker
open QuantumParallelRepetition.ClassicalInformation

attribute [local instance] Classical.propDecidable

def exactReverseAliceWeightedMarkerEquiv
    {M : Type*} [Fintype M] [DecidableEq M] :
    ExactForwardSeed M ≃
      (Σ side : Finset M,
        ExactReverseSideContext M side × Fin side.card) where
  toFun := exactReverseAliceMarkerCode
  invFun marker :=
    exactReverseAliceMarkerDecode
      marker.1 marker.2.1 marker.2.2
  left_inv seed := by
    apply exactReverseAliceMarkerCode_injective
    exact exactReverseAliceMarkerDecode_rightInverse
      (exactReverseAliceMarkerCode seed).1
      (exactReverseAliceMarkerCode seed).2.1
      (exactReverseAliceMarkerCode seed).2.2
  right_inv marker := by
    rcases marker with ⟨side, context, position⟩
    exact exactReverseAliceMarkerDecode_rightInverse
      side context position

def exactReverseBobWeightedMarkerEquiv
    {M : Type*} [Fintype M] [DecidableEq M] :
    ExactForwardSeed M ≃
      (Σ side : Finset M,
        ExactReverseSideContext M side × Fin side.card) where
  toFun := exactReverseBobMarkerCode
  invFun marker :=
    exactReverseBobMarkerDecode
      marker.1 marker.2.1 marker.2.2
  left_inv seed := by
    apply exactReverseBobMarkerCode_injective
    exact exactReverseBobMarkerDecode_rightInverse
      (exactReverseBobMarkerCode seed).1
      (exactReverseBobMarkerCode seed).2.1
      (exactReverseBobMarkerCode seed).2.2
  right_inv marker := by
    rcases marker with ⟨side, context, position⟩
    exact exactReverseBobMarkerDecode_rightInverse
      side context position

end

noncomputable section

open scoped BigOperators ComplexOrder Kronecker MatrixOrder
  Matrix.Norms.L2Operator InnerProductSpace

set_option backward.isDefEq.respectTransparency false
set_option maxHeartbeats 2600000
set_option maxRecDepth 2048

attribute [local instance] Classical.propDecidable

variable {X Y A B : Type*}
variable [Fintype X] [Fintype Y] [Fintype A] [Fintype B]

def exactReverseAliceFilterOperatorMarkerEntropy
    (G : Game X Y A B) (n : ℕ) (S : Strategy (G.repeat n))
    (D : Finset (Fin n))
    (side : Finset (SourceRemainingCoordinate D))
    (context : ExactReverseSideContext
      (SourceRemainingCoordinate D) side)
    (marker : Fin side.card) : ℝ :=
  let seed := exactReverseBobMarkerDecode side context marker
  ∑ history : ExactRevealHistory X Y D seed,
  ∑ aliceAnswer : {j : Fin n // j ∈ D} → A,
  ∑ bobAnswer : {j : Fin n // j ∈ D} → B,
    if exactHistoryAccepted G n D
        ⟨seed, history, aliceAnswer, bobAnswer⟩ then
      exactRevealMass G n D seed history *
        exactFairAliceHistoryEntropyIncrement G n S D
          ⟨seed, history, aliceAnswer, bobAnswer⟩
    else 0

def exactReverseBobFilterOperatorMarkerEntropy
    (G : Game X Y A B) (n : ℕ) (S : Strategy (G.repeat n))
    (D : Finset (Fin n))
    (side : Finset (SourceRemainingCoordinate D))
    (context : ExactReverseSideContext
      (SourceRemainingCoordinate D) side)
    (marker : Fin side.card) : ℝ :=
  let seed := exactReverseAliceMarkerDecode side context marker
  ∑ history : ExactRevealHistory X Y D seed,
  ∑ aliceAnswer : {j : Fin n // j ∈ D} → A,
  ∑ bobAnswer : {j : Fin n // j ∈ D} → B,
    if exactHistoryAccepted G n D
        ⟨seed, history, aliceAnswer, bobAnswer⟩ then
      exactRevealMass G n D seed history *
        exactFairBobHistoryEntropyIncrement G n S D
          ⟨seed, history, aliceAnswer, bobAnswer⟩
    else 0

end

noncomputable section

open scoped BigOperators ComplexOrder Kronecker MatrixOrder
  Matrix.Norms.L2Operator InnerProductSpace

set_option backward.isDefEq.respectTransparency false
set_option maxHeartbeats 2200000
set_option maxRecDepth 2048

attribute [local instance] Classical.propDecidable

variable {X Y A B : Type*}
variable [Fintype X] [Fintype Y] [Fintype A] [Fintype B]

def exactFairAliceHistoryHighOperatorPotential
    (G : Game X Y A B) (n : ℕ) (S : Strategy (G.repeat n))
    (D : Finset (Fin n))
    (r : ExactHistoryFlag X Y A B D) : ℝ :=
  ∑ y : Y, G.marginalY y *
    bornTracePairing S.state.matrix
      (∑ x : X, G.conditionalXGivenY y x •
        cfc (fun z : ℝ => z * Real.log z)
          (exactAliceQuestionFilter
            G n S D r.seed r.history r.aliceAnswer x))
      (exactBobQuestionFilter
        G n S D r.seed r.history r.bobAnswer y)

def exactFairAliceHistoryLowOperatorPotential
    (G : Game X Y A B) (n : ℕ) (S : Strategy (G.repeat n))
    (D : Finset (Fin n))
    (r : ExactHistoryFlag X Y A B D) : ℝ :=
  ∑ y : Y, G.marginalY y *
    bornTracePairing S.state.matrix
      (cfc (fun z : ℝ => z * Real.log z)
        (exactAliceMeanFilter
          G n S D r.seed r.history r.aliceAnswer y))
      (exactBobQuestionFilter
        G n S D r.seed r.history r.bobAnswer y)

def exactFairBobHistoryHighOperatorPotential
    (G : Game X Y A B) (n : ℕ) (S : Strategy (G.repeat n))
    (D : Finset (Fin n))
    (r : ExactHistoryFlag X Y A B D) : ℝ :=
  ∑ x : X, G.marginalX x *
    bornTracePairing S.state.matrix
      (exactAliceQuestionFilter
        G n S D r.seed r.history r.aliceAnswer x)
      (∑ y : Y, G.conditionalYGivenX x y •
        cfc (fun z : ℝ => z * Real.log z)
          (exactBobQuestionFilter
            G n S D r.seed r.history r.bobAnswer y))

def exactFairBobHistoryLowOperatorPotential
    (G : Game X Y A B) (n : ℕ) (S : Strategy (G.repeat n))
    (D : Finset (Fin n))
    (r : ExactHistoryFlag X Y A B D) : ℝ :=
  ∑ x : X, G.marginalX x *
    bornTracePairing S.state.matrix
      (exactAliceQuestionFilter
        G n S D r.seed r.history r.aliceAnswer x)
      (cfc (fun z : ℝ => z * Real.log z)
        (exactBobMeanFilter
          G n S D r.seed r.history r.bobAnswer x))

def exactReverseAliceFilterHighOperatorPotential
    (G : Game X Y A B) (n : ℕ) (S : Strategy (G.repeat n))
    (D : Finset (Fin n))
    (side : Finset (SourceRemainingCoordinate D))
    (context : ExactReverseSideContext
      (SourceRemainingCoordinate D) side)
    (marker : Fin side.card) : ℝ :=
  let seed := exactReverseBobMarkerDecode side context marker
  ∑ history : ExactRevealHistory X Y D seed,
  ∑ aliceAnswer : {j : Fin n // j ∈ D} → A,
  ∑ bobAnswer : {j : Fin n // j ∈ D} → B,
    if exactHistoryAccepted G n D
        ⟨seed, history, aliceAnswer, bobAnswer⟩ then
      exactRevealMass G n D seed history *
        exactFairAliceHistoryHighOperatorPotential G n S D
          ⟨seed, history, aliceAnswer, bobAnswer⟩
    else 0

def exactReverseAliceFilterLowOperatorPotential
    (G : Game X Y A B) (n : ℕ) (S : Strategy (G.repeat n))
    (D : Finset (Fin n))
    (side : Finset (SourceRemainingCoordinate D))
    (context : ExactReverseSideContext
      (SourceRemainingCoordinate D) side)
    (marker : Fin side.card) : ℝ :=
  let seed := exactReverseBobMarkerDecode side context marker
  ∑ history : ExactRevealHistory X Y D seed,
  ∑ aliceAnswer : {j : Fin n // j ∈ D} → A,
  ∑ bobAnswer : {j : Fin n // j ∈ D} → B,
    if exactHistoryAccepted G n D
        ⟨seed, history, aliceAnswer, bobAnswer⟩ then
      exactRevealMass G n D seed history *
        exactFairAliceHistoryLowOperatorPotential G n S D
          ⟨seed, history, aliceAnswer, bobAnswer⟩
    else 0

def exactReverseBobFilterHighOperatorPotential
    (G : Game X Y A B) (n : ℕ) (S : Strategy (G.repeat n))
    (D : Finset (Fin n))
    (side : Finset (SourceRemainingCoordinate D))
    (context : ExactReverseSideContext
      (SourceRemainingCoordinate D) side)
    (marker : Fin side.card) : ℝ :=
  let seed := exactReverseAliceMarkerDecode side context marker
  ∑ history : ExactRevealHistory X Y D seed,
  ∑ aliceAnswer : {j : Fin n // j ∈ D} → A,
  ∑ bobAnswer : {j : Fin n // j ∈ D} → B,
    if exactHistoryAccepted G n D
        ⟨seed, history, aliceAnswer, bobAnswer⟩ then
      exactRevealMass G n D seed history *
        exactFairBobHistoryHighOperatorPotential G n S D
          ⟨seed, history, aliceAnswer, bobAnswer⟩
    else 0

def exactReverseBobFilterLowOperatorPotential
    (G : Game X Y A B) (n : ℕ) (S : Strategy (G.repeat n))
    (D : Finset (Fin n))
    (side : Finset (SourceRemainingCoordinate D))
    (context : ExactReverseSideContext
      (SourceRemainingCoordinate D) side)
    (marker : Fin side.card) : ℝ :=
  let seed := exactReverseAliceMarkerDecode side context marker
  ∑ history : ExactRevealHistory X Y D seed,
  ∑ aliceAnswer : {j : Fin n // j ∈ D} → A,
  ∑ bobAnswer : {j : Fin n // j ∈ D} → B,
    if exactHistoryAccepted G n D
        ⟨seed, history, aliceAnswer, bobAnswer⟩ then
      exactRevealMass G n D seed history *
        exactFairBobHistoryLowOperatorPotential G n S D
          ⟨seed, history, aliceAnswer, bobAnswer⟩
    else 0

end

noncomputable section

open scoped BigOperators

set_option backward.isDefEq.respectTransparency false
set_option maxHeartbeats 1800000
set_option maxRecDepth 2048

attribute [local instance] Classical.propDecidable

variable {X Y A B : Type*}
variable [Fintype X] [Fintype Y] [Fintype A] [Fintype B]

def exactFairQuestionTailWeight
    (G : Game X Y A B) (n : ℕ)
    (D : Finset (Fin n))
    (seed : ExactRemainingSeed D)
    (history : ExactRevealHistory X Y D seed)
    (x : X) (y : Y) : ℝ :=
  ∑ tailX : {j : Fin n // j ≠ seed.coordinate.val} → X,
  ∑ tailY : {j : Fin n // j ≠ seed.coordinate.val} → Y,
    if exactRevealCode D seed
       ((Equiv.funSplitAt seed.coordinate.val X).symm (x, tailX),
        (Equiv.funSplitAt seed.coordinate.val Y).symm (y, tailY)) =
          history
    then ∏ j : {j : Fin n // j ≠ seed.coordinate.val},
      G.questionWeight (tailX j) (tailY j)
    else 0

end

noncomputable section

open scoped BigOperators ComplexOrder Kronecker MatrixOrder
  Matrix.Norms.L2Operator InnerProductSpace

set_option backward.isDefEq.respectTransparency false
set_option maxHeartbeats 1800000
set_option maxRecDepth 2048

attribute [local instance] Classical.propDecidable

variable {X Y A B : Type*}
variable [Fintype X] [Fintype Y] [Fintype A] [Fintype B]

def exactFairConditionedAnswerBornMass
    (G : Game X Y A B) (n : ℕ) (S : Strategy (G.repeat n))
    (D : Finset (Fin n))
    (r : ExactHistoryFlag X Y A B D)
    (x : X) (y : Y) : ℝ :=
  ∑ xs : Fin n → X, ∑ ys : Fin n → Y,
    exactFiberQuestionWeight
      G n D r.seed r.history x y xs ys *
      bornTracePairing S.state.matrix
        (conditionedAliceEffect G n S D r.aliceAnswer xs)
        (conditionedBobEffect G n S D r.bobAnswer ys)

end

noncomputable section

open scoped BigOperators ComplexOrder Kronecker MatrixOrder
  Matrix.Norms.L2Operator InnerProductSpace

set_option backward.isDefEq.respectTransparency false
set_option maxHeartbeats 2200000
set_option maxRecDepth 2048

open QuantumParallelRepetition.ClassicalInformation

attribute [local instance] Classical.propDecidable

variable {X Y A B : Type*}
variable [Fintype X] [Fintype Y] [Fintype A] [Fintype B]

def exactFairFullOutcomeBornMass
    (G : Game X Y A B) (n : ℕ) (S : Strategy (G.repeat n))
    (D : Finset (Fin n))
    (r : ExactHistoryFlag X Y A B D)
    (x : X) (y : Y) : ℝ :=
  ∑ o : ExactOutcome X Y A B n,
    if exactLocallySampleableCode D (r.seed, o) =
      (r.seed.coordinate, x, y, r)
    then (strategyEventLaw (G.repeat n) S).weight o
    else 0

end

noncomputable section

open scoped BigOperators ComplexOrder Kronecker MatrixOrder
  Matrix.Norms.L2Operator InnerProductSpace

set_option backward.isDefEq.respectTransparency false
set_option maxHeartbeats 2400000
set_option maxRecDepth 2048

open QuantumParallelRepetition.ClassicalInformation

attribute [local instance] Classical.propDecidable

variable {X Y A B : Type*}
variable [Fintype X] [Fintype Y] [Fintype A] [Fintype B]

def exactFairAcceptedAliceEntropy
    (G : Game X Y A B) (n : ℕ) (S : Strategy (G.repeat n))
    (D : Finset (Fin n)) : ℝ :=
  ∑ r : ExactHistoryFlag X Y A B D,
    if exactHistoryAccepted G n D r then
      exactFairHistoryPriorWeight G n D r *
        exactFairAliceHistoryEntropyIncrement G n S D r
    else 0

def exactFairAcceptedBobEntropy
    (G : Game X Y A B) (n : ℕ) (S : Strategy (G.repeat n))
    (D : Finset (Fin n)) : ℝ :=
  ∑ r : ExactHistoryFlag X Y A B D,
    if exactHistoryAccepted G n D r then
      exactFairHistoryPriorWeight G n D r *
        exactFairBobHistoryEntropyIncrement G n S D r
    else 0

def exactFairAcceptedAliceVariation
    (G : Game X Y A B) (n : ℕ) (S : Strategy (G.repeat n))
    (D : Finset (Fin n)) : ℝ :=
  ∑ r : ExactHistoryFlag X Y A B D,
    if exactHistoryAccepted G n D r then
      exactFairHistoryPriorWeight G n D r *
        exactFairAliceHistoryVariation G n S D r
    else 0

def exactFairAcceptedBobVariation
    (G : Game X Y A B) (n : ℕ) (S : Strategy (G.repeat n))
    (D : Finset (Fin n)) : ℝ :=
  ∑ r : ExactHistoryFlag X Y A B D,
    if exactHistoryAccepted G n D r then
      exactFairHistoryPriorWeight G n D r *
        exactFairBobHistoryVariation G n S D r
    else 0

def ExactFairOperatorEntropyBound
    (G : Game X Y A B) (n : ℕ) (S : Strategy (G.repeat n))
    (D : Finset (Fin n)) (η : ℝ) : Prop :=
  exactFairAcceptedAliceEntropy G n S D ≤
      2 * (repeatedPostselectionMass G n S D * η) ∧
  exactFairAcceptedBobEntropy G n S D ≤
      2 * (repeatedPostselectionMass G n S D * η)

end

noncomputable section

open scoped BigOperators ComplexOrder Kronecker MatrixOrder
  Matrix.Norms.L2Operator InnerProductSpace

set_option backward.isDefEq.respectTransparency false
set_option maxHeartbeats 2800000
set_option maxRecDepth 2048

attribute [local instance] Classical.propDecidable

variable {X Y A B : Type*}
variable [Fintype X] [Fintype Y] [Fintype A] [Fintype B]

def exactJointPrefixQuestionMass
    (G : Game X Y A B) (n : ℕ)
    (fixedX fixedY : Finset (Fin n))
    (knownX : Fin n → X) (knownY : Fin n → Y) : ℝ :=
  ∑ xs : Fin n → X, ∑ ys : Fin n → Y,
    if (∀ j : Fin n, j ∈ fixedX → xs j = knownX j) ∧
       (∀ j : Fin n, j ∈ fixedY → ys j = knownY j) then
      (G.repeat n).questionWeight xs ys
    else 0

def exactJointPrefixAliceOperatorMass
    (G : Game X Y A B) (n : ℕ) (S : Strategy (G.repeat n))
    (D fixedX fixedY : Finset (Fin n))
    (answer : {j : Fin n // j ∈ D} → A)
    (knownX : Fin n → X) (knownY : Fin n → Y) :
    Matrix S.Alice S.Alice ℂ :=
  ∑ xs : Fin n → X, ∑ ys : Fin n → Y,
    if (∀ j : Fin n, j ∈ fixedX → xs j = knownX j) ∧
       (∀ j : Fin n, j ∈ fixedY → ys j = knownY j) then
      (G.repeat n).questionWeight xs ys •
        conditionedAliceEffect G n S D answer xs
    else 0

def exactJointPrefixBobOperatorMass
    (G : Game X Y A B) (n : ℕ) (S : Strategy (G.repeat n))
    (D fixedX fixedY : Finset (Fin n))
    (answer : {j : Fin n // j ∈ D} → B)
    (knownX : Fin n → X) (knownY : Fin n → Y) :
    Matrix S.Bob S.Bob ℂ :=
  ∑ xs : Fin n → X, ∑ ys : Fin n → Y,
    if (∀ j : Fin n, j ∈ fixedX → xs j = knownX j) ∧
       (∀ j : Fin n, j ∈ fixedY → ys j = knownY j) then
      (G.repeat n).questionWeight xs ys •
        conditionedBobEffect G n S D answer ys
    else 0

def exactJointPrefixAliceOperatorFilter
    (G : Game X Y A B) (n : ℕ) (S : Strategy (G.repeat n))
    (D fixedX fixedY : Finset (Fin n))
    (answer : {j : Fin n // j ∈ D} → A)
    (knownX : Fin n → X) (knownY : Fin n → Y) :
    Matrix S.Alice S.Alice ℂ :=
  (exactJointPrefixQuestionMass
    G n fixedX fixedY knownX knownY)⁻¹ •
    exactJointPrefixAliceOperatorMass
      G n S D fixedX fixedY answer knownX knownY

def exactJointPrefixBobOperatorFilter
    (G : Game X Y A B) (n : ℕ) (S : Strategy (G.repeat n))
    (D fixedX fixedY : Finset (Fin n))
    (answer : {j : Fin n // j ∈ D} → B)
    (knownX : Fin n → X) (knownY : Fin n → Y) :
    Matrix S.Bob S.Bob ℂ :=
  (exactJointPrefixQuestionMass
    G n fixedX fixedY knownX knownY)⁻¹ •
    exactJointPrefixBobOperatorMass
      G n S D fixedX fixedY answer knownX knownY

end

noncomputable section

open scoped BigOperators ComplexOrder Kronecker MatrixOrder
  Matrix.Norms.L2Operator InnerProductSpace

set_option backward.isDefEq.respectTransparency false
set_option maxHeartbeats 2800000
set_option maxRecDepth 2048

attribute [local instance] Classical.propDecidable

variable {X Y A B : Type*}
variable [Fintype X] [Fintype Y] [Fintype A] [Fintype B]

def exactFairAliceQuestionMask
    {n : ℕ} (D : Finset (Fin n))
    (seed : ExactRemainingSeed D) : Finset (Fin n) :=
  (D ∪ (exactLeft seed.coordinate seed.partition).image
    Subtype.val) ∪ (exactRightPrefix seed).image Subtype.val

def exactFairBobQuestionMask
    {n : ℕ} (D : Finset (Fin n))
    (seed : ExactRemainingSeed D) : Finset (Fin n) :=
  (D ∪ (exactRight seed.coordinate seed.partition).image
    Subtype.val) ∪ (exactLeftPrefix seed).image Subtype.val

end

noncomputable section

open scoped BigOperators ComplexOrder Kronecker MatrixOrder
  Matrix.Norms.L2Operator InnerProductSpace

set_option backward.isDefEq.respectTransparency false
set_option maxHeartbeats 3400000
set_option maxRecDepth 2048

attribute [local instance] Classical.propDecidable

variable {X Y A B : Type*}
variable [Fintype X] [Fintype Y] [Fintype A] [Fintype B]

def exactReverseAliceHighQuestionPotential
    (G : Game X Y A B) (n : ℕ) (S : Strategy (G.repeat n))
    (D : Finset (Fin n))
    (side : Finset (SourceRemainingCoordinate D))
    (context : ExactReverseSideContext
      (SourceRemainingCoordinate D) side)
    (marker : Fin side.card) : ℝ :=
  let seed := exactReverseBobMarkerDecode side context marker
  ∑ q : ExactFullQuestion X Y n,
    exactPriorQuestionWeight G n q *
      (∑ aliceAnswer : {j : Fin n // j ∈ D} → A,
       ∑ bobAnswer : {j : Fin n // j ∈ D} → B,
        if exactHistoryAccepted G n D
          ⟨seed, exactRevealCode D seed q,
            aliceAnswer, bobAnswer⟩ then
          bornTracePairing S.state.matrix
            (cfc (fun z : ℝ => z * Real.log z)
              (exactAliceQuestionFilter G n S D seed
                (exactRevealCode D seed q)
                aliceAnswer (q.1 seed.coordinate.val)))
            (exactBobQuestionFilter G n S D seed
              (exactRevealCode D seed q)
              bobAnswer (q.2 seed.coordinate.val))
        else 0)

def exactReverseAliceLowQuestionPotential
    (G : Game X Y A B) (n : ℕ) (S : Strategy (G.repeat n))
    (D : Finset (Fin n))
    (side : Finset (SourceRemainingCoordinate D))
    (context : ExactReverseSideContext
      (SourceRemainingCoordinate D) side)
    (marker : Fin side.card) : ℝ :=
  let seed := exactReverseBobMarkerDecode side context marker
  ∑ q : ExactFullQuestion X Y n,
    exactPriorQuestionWeight G n q *
      (∑ aliceAnswer : {j : Fin n // j ∈ D} → A,
       ∑ bobAnswer : {j : Fin n // j ∈ D} → B,
        if exactHistoryAccepted G n D
          ⟨seed, exactRevealCode D seed q,
            aliceAnswer, bobAnswer⟩ then
          bornTracePairing S.state.matrix
            (cfc (fun z : ℝ => z * Real.log z)
              (exactAliceMeanFilter G n S D seed
                (exactRevealCode D seed q)
                aliceAnswer (q.2 seed.coordinate.val)))
            (exactBobQuestionFilter G n S D seed
              (exactRevealCode D seed q)
              bobAnswer (q.2 seed.coordinate.val))
        else 0)

def exactReverseBobHighQuestionPotential
    (G : Game X Y A B) (n : ℕ) (S : Strategy (G.repeat n))
    (D : Finset (Fin n))
    (side : Finset (SourceRemainingCoordinate D))
    (context : ExactReverseSideContext
      (SourceRemainingCoordinate D) side)
    (marker : Fin side.card) : ℝ :=
  let seed := exactReverseAliceMarkerDecode side context marker
  ∑ q : ExactFullQuestion X Y n,
    exactPriorQuestionWeight G n q *
      (∑ aliceAnswer : {j : Fin n // j ∈ D} → A,
       ∑ bobAnswer : {j : Fin n // j ∈ D} → B,
        if exactHistoryAccepted G n D
          ⟨seed, exactRevealCode D seed q,
            aliceAnswer, bobAnswer⟩ then
          bornTracePairing S.state.matrix
            (exactAliceQuestionFilter G n S D seed
              (exactRevealCode D seed q)
              aliceAnswer (q.1 seed.coordinate.val))
            (cfc (fun z : ℝ => z * Real.log z)
              (exactBobQuestionFilter G n S D seed
                (exactRevealCode D seed q)
                bobAnswer (q.2 seed.coordinate.val)))
        else 0)

def exactReverseBobLowQuestionPotential
    (G : Game X Y A B) (n : ℕ) (S : Strategy (G.repeat n))
    (D : Finset (Fin n))
    (side : Finset (SourceRemainingCoordinate D))
    (context : ExactReverseSideContext
      (SourceRemainingCoordinate D) side)
    (marker : Fin side.card) : ℝ :=
  let seed := exactReverseAliceMarkerDecode side context marker
  ∑ q : ExactFullQuestion X Y n,
    exactPriorQuestionWeight G n q *
      (∑ aliceAnswer : {j : Fin n // j ∈ D} → A,
       ∑ bobAnswer : {j : Fin n // j ∈ D} → B,
        if exactHistoryAccepted G n D
          ⟨seed, exactRevealCode D seed q,
            aliceAnswer, bobAnswer⟩ then
          bornTracePairing S.state.matrix
            (exactAliceQuestionFilter G n S D seed
              (exactRevealCode D seed q)
              aliceAnswer (q.1 seed.coordinate.val))
            (cfc (fun z : ℝ => z * Real.log z)
              (exactBobMeanFilter G n S D seed
                (exactRevealCode D seed q)
                bobAnswer (q.1 seed.coordinate.val)))
        else 0)

end

noncomputable section

open scoped BigOperators ComplexOrder Kronecker MatrixOrder
  Matrix.Norms.L2Operator InnerProductSpace

set_option backward.isDefEq.respectTransparency false
set_option maxHeartbeats 2800000
set_option maxRecDepth 2048

attribute [local instance] Classical.propDecidable

variable {X Y A B : Type*}
variable [Fintype X] [Fintype Y] [Fintype A] [Fintype B]

def exactReverseContextQuestionPrefix
    {n : ℕ} (D : Finset (Fin n))
    (side : Finset (SourceRemainingCoordinate D))
    (context : ExactReverseSideContext
      (SourceRemainingCoordinate D) side)
    (k : ℕ) : Finset (Fin n) :=
  (Finset.univ.filter
    (fun j : {j : SourceRemainingCoordinate D // j ∈ side} =>
      (context.sideRank j).val < k)).image
    (fun j => j.val.val)

def exactReverseAlicePrefixXMask
    {n : ℕ} (D : Finset (Fin n))
    (side : Finset (SourceRemainingCoordinate D))
    (context : ExactReverseSideContext
      (SourceRemainingCoordinate D) side)
    (k : ℕ) : Finset (Fin n) :=
  (D ∪ context.otherSide.image Subtype.val) ∪
    exactReverseContextQuestionPrefix D side context k

def exactReverseAliceFixedYMask
    {n : ℕ} (D : Finset (Fin n))
    (side : Finset (SourceRemainingCoordinate D))
    (context : ExactReverseSideContext
      (SourceRemainingCoordinate D) side) : Finset (Fin n) :=
  (D ∪ side.image Subtype.val) ∪
    (exactReverseContextOtherPrefix context).image Subtype.val

def exactReverseBobFixedXMask
    {n : ℕ} (D : Finset (Fin n))
    (side : Finset (SourceRemainingCoordinate D))
    (context : ExactReverseSideContext
      (SourceRemainingCoordinate D) side) : Finset (Fin n) :=
  (D ∪ side.image Subtype.val) ∪
    (exactReverseContextOtherPrefix context).image Subtype.val

def exactReverseBobPrefixYMask
    {n : ℕ} (D : Finset (Fin n))
    (side : Finset (SourceRemainingCoordinate D))
    (context : ExactReverseSideContext
      (SourceRemainingCoordinate D) side)
    (k : ℕ) : Finset (Fin n) :=
  (D ∪ context.otherSide.image Subtype.val) ∪
    exactReverseContextQuestionPrefix D side context k

end

noncomputable section

open scoped BigOperators ComplexOrder Kronecker MatrixOrder
  Matrix.Norms.L2Operator InnerProductSpace

set_option backward.isDefEq.respectTransparency false
set_option maxHeartbeats 3000000
set_option maxRecDepth 2048

attribute [local instance] Classical.propDecidable

variable {X Y A B : Type*}
variable [Fintype X] [Fintype Y] [Fintype A] [Fintype B]

def exactReverseAliceAlignedCfcPrefixPotential
    (G : Game X Y A B) (n : ℕ) (S : Strategy (G.repeat n))
    (D : Finset (Fin n))
    (side : Finset (SourceRemainingCoordinate D))
    (context : ExactReverseSideContext
      (SourceRemainingCoordinate D) side)
    (k : ℕ) : ℝ :=
  ∑ q : ExactFullQuestion X Y n,
    exactPriorQuestionWeight G n q *
      (∑ aliceAnswer : {j : Fin n // j ∈ D} → A,
       ∑ bobAnswer : {j : Fin n // j ∈ D} → B,
        if ∀ j : {j : Fin n // j ∈ D},
          G.predicate (q.1 j.val) (q.2 j.val)
            (aliceAnswer j) (bobAnswer j) = true then
          bornTracePairing S.state.matrix
            (cfc (fun z : ℝ => z * Real.log z)
              (exactJointPrefixAliceOperatorFilter G n S D
                (exactReverseAlicePrefixXMask
                  D side context k)
                (exactReverseAliceFixedYMask D side context)
                aliceAnswer q.1 q.2))
            (exactJointPrefixBobOperatorFilter G n S D
              (exactReverseAlicePrefixXMask
                D side context k)
              (exactReverseAliceFixedYMask D side context)
              bobAnswer q.1 q.2)
        else 0)

def exactReverseBobAlignedCfcPrefixPotential
    (G : Game X Y A B) (n : ℕ) (S : Strategy (G.repeat n))
    (D : Finset (Fin n))
    (side : Finset (SourceRemainingCoordinate D))
    (context : ExactReverseSideContext
      (SourceRemainingCoordinate D) side)
    (k : ℕ) : ℝ :=
  ∑ q : ExactFullQuestion X Y n,
    exactPriorQuestionWeight G n q *
      (∑ aliceAnswer : {j : Fin n // j ∈ D} → A,
       ∑ bobAnswer : {j : Fin n // j ∈ D} → B,
        if ∀ j : {j : Fin n // j ∈ D},
          G.predicate (q.1 j.val) (q.2 j.val)
            (aliceAnswer j) (bobAnswer j) = true then
          bornTracePairing S.state.matrix
            (exactJointPrefixAliceOperatorFilter G n S D
              (exactReverseBobFixedXMask D side context)
              (exactReverseBobPrefixYMask
                D side context k)
              aliceAnswer q.1 q.2)
            (cfc (fun z : ℝ => z * Real.log z)
              (exactJointPrefixBobOperatorFilter G n S D
                (exactReverseBobFixedXMask D side context)
                (exactReverseBobPrefixYMask
                  D side context k)
                bobAnswer q.1 q.2))
        else 0)

end

noncomputable section

open scoped BigOperators ComplexOrder Kronecker MatrixOrder
  Matrix.Norms.L2Operator InnerProductSpace

set_option backward.isDefEq.respectTransparency false
set_option maxHeartbeats 6000000
set_option maxRecDepth 2048

open QuantumParallelRepetition.ClassicalInformation

attribute [local instance] Classical.propDecidable

variable {X Y A B : Type*}
variable [Fintype X] [Fintype Y] [Fintype A] [Fintype B]

abbrev ExactFixedSeedOutcomeTuple
    (X Y A B : Type*)
    [Fintype X] [Fintype Y] [Fintype A] [Fintype B]
    {n : ℕ} (D : Finset (Fin n))
    (seed : ExactRemainingSeed D) :=
  ExactRevealHistory X Y D seed ×
    ({j : Fin n // j ∈ D} → A) ×
    ({j : Fin n // j ∈ D} → B) × X × Y

def exactFixedSeedOutcomeCode
    {n : ℕ} (D : Finset (Fin n))
    (seed : ExactRemainingSeed D)
    (outcome : ExactOutcome X Y A B n) :
    ExactFixedSeedOutcomeTuple X Y A B D seed :=
  (exactRevealCode D seed (outcome.1, outcome.2.1),
    (fun j => outcome.2.2.1 j.val),
    (fun j => outcome.2.2.2 j.val),
    outcome.1 seed.coordinate.val,
    outcome.2.1 seed.coordinate.val)

end

noncomputable section

open scoped BigOperators ComplexOrder Kronecker MatrixOrder
  Matrix.Norms.L2Operator InnerProductSpace

set_option backward.isDefEq.respectTransparency false
set_option maxHeartbeats 4000000
set_option maxRecDepth 2048

attribute [local instance] Classical.propDecidable

variable {X Y A B : Type*}
variable [Fintype X] [Fintype Y] [Fintype A] [Fintype B]

def exactReverseAliceAcceptedScalarEntropy
    (G : Game X Y A B) (n : ℕ) (S : Strategy (G.repeat n))
    (D : Finset (Fin n))
    (side : Finset (SourceRemainingCoordinate D))
    (context : ExactReverseSideContext
      (SourceRemainingCoordinate D) side)
    (marker : Fin side.card) : ℝ :=
  let seed := exactReverseBobMarkerDecode side context marker
  ∑ history : ExactRevealHistory X Y D seed,
  ∑ aliceAnswer : {j : Fin n // j ∈ D} → A,
  ∑ bobAnswer : {j : Fin n // j ∈ D} → B,
    if exactHistoryAccepted G n D
        ⟨seed, history, aliceAnswer, bobAnswer⟩ then
      exactRevealMass G n D seed history *
        (∑ y : Y, G.marginalY y *
          Real.negMulLog
            (bornTracePairing S.state.matrix
              (exactAliceMeanFilter
                G n S D seed history aliceAnswer y)
              (exactBobQuestionFilter
                G n S D seed history bobAnswer y)))
    else 0

end

noncomputable section

open scoped BigOperators ComplexOrder Kronecker MatrixOrder
  Matrix.Norms.L2Operator InnerProductSpace

set_option backward.isDefEq.respectTransparency false
set_option maxHeartbeats 2400000
set_option maxRecDepth 2048

attribute [local instance] Classical.propDecidable

variable {X Y A B : Type*}
variable [Fintype X] [Fintype Y] [Fintype A] [Fintype B]

def exactReverseBobAcceptedScalarEntropy
    (G : Game X Y A B) (n : ℕ) (S : Strategy (G.repeat n))
    (D : Finset (Fin n))
    (side : Finset (SourceRemainingCoordinate D))
    (context : ExactReverseSideContext
      (SourceRemainingCoordinate D) side)
    (marker : Fin side.card) : ℝ :=
  let seed := exactReverseAliceMarkerDecode side context marker
  ∑ history : ExactRevealHistory X Y D seed,
  ∑ aliceAnswer : {j : Fin n // j ∈ D} → A,
  ∑ bobAnswer : {j : Fin n // j ∈ D} → B,
    if exactHistoryAccepted G n D
        ⟨seed, history, aliceAnswer, bobAnswer⟩ then
      exactRevealMass G n D seed history *
        (∑ x : X, G.marginalX x *
          Real.negMulLog
            (bornTracePairing S.state.matrix
              (exactAliceQuestionFilter
                G n S D seed history aliceAnswer x)
              (exactBobMeanFilter
                G n S D seed history bobAnswer x)))
    else 0

end

noncomputable section

open scoped BigOperators ComplexOrder Kronecker MatrixOrder
  Matrix.Norms.L2Operator InnerProductSpace

set_option backward.isDefEq.respectTransparency false
set_option maxHeartbeats 7000000
set_option maxRecDepth 2048

attribute [local instance] Classical.propDecidable

variable {X Y A B : Type*}
variable [Fintype X] [Fintype Y] [Fintype A] [Fintype B]

abbrev ExactFairAliceScalarAtom
    (X Y A B : Type*)
    [Fintype X] [Fintype Y] [Fintype A] [Fintype B]
    {n : ℕ} (D : Finset (Fin n))
    (seed : ExactRemainingSeed D) :=
  ExactRevealHistory X Y D seed ×
    ({j : Fin n // j ∈ D} → A) ×
    ({j : Fin n // j ∈ D} → B) × Y

def exactFairAliceScalarCountingWeight
    (G : Game X Y A B) (n : ℕ)
    (D : Finset (Fin n))
    (seed : ExactRemainingSeed D)
    (atom : ExactFairAliceScalarAtom X Y A B D seed) : ℝ :=
  if exactHistoryAccepted G n D
    ⟨seed, atom.1, atom.2.1, atom.2.2.1⟩ then
    exactRevealMass G n D seed atom.1 *
      G.marginalY atom.2.2.2
  else 0

def exactFairAliceScalarBornMass
    (G : Game X Y A B) (n : ℕ) (S : Strategy (G.repeat n))
    (D : Finset (Fin n))
    (seed : ExactRemainingSeed D)
    (atom : ExactFairAliceScalarAtom X Y A B D seed) : ℝ :=
  bornTracePairing S.state.matrix
    (exactAliceMeanFilter
      G n S D seed atom.1 atom.2.1 atom.2.2.2)
    (exactBobQuestionFilter
      G n S D seed atom.1 atom.2.2.1 atom.2.2.2)

abbrev ExactFairBobScalarAtom
    (X Y A B : Type*)
    [Fintype X] [Fintype Y] [Fintype A] [Fintype B]
    {n : ℕ} (D : Finset (Fin n))
    (seed : ExactRemainingSeed D) :=
  ExactRevealHistory X Y D seed ×
    ({j : Fin n // j ∈ D} → A) ×
    ({j : Fin n // j ∈ D} → B) × X

def exactFairBobScalarCountingWeight
    (G : Game X Y A B) (n : ℕ)
    (D : Finset (Fin n))
    (seed : ExactRemainingSeed D)
    (atom : ExactFairBobScalarAtom X Y A B D seed) : ℝ :=
  if exactHistoryAccepted G n D
    ⟨seed, atom.1, atom.2.1, atom.2.2.1⟩ then
    exactRevealMass G n D seed atom.1 *
      G.marginalX atom.2.2.2
  else 0

def exactFairBobScalarBornMass
    (G : Game X Y A B) (n : ℕ) (S : Strategy (G.repeat n))
    (D : Finset (Fin n))
    (seed : ExactRemainingSeed D)
    (atom : ExactFairBobScalarAtom X Y A B D seed) : ℝ :=
  bornTracePairing S.state.matrix
    (exactAliceQuestionFilter
      G n S D seed atom.1 atom.2.1 atom.2.2.2)
    (exactBobMeanFilter
      G n S D seed atom.1 atom.2.2.1 atom.2.2.2)

def exactFairAliceSeedScalarEntropy
    (G : Game X Y A B) (n : ℕ) (S : Strategy (G.repeat n))
    (D : Finset (Fin n))
    (seed : ExactRemainingSeed D) : ℝ :=
  ∑ history : ExactRevealHistory X Y D seed,
  ∑ aliceAnswer : {j : Fin n // j ∈ D} → A,
  ∑ bobAnswer : {j : Fin n // j ∈ D} → B,
    if exactHistoryAccepted G n D
      ⟨seed, history, aliceAnswer, bobAnswer⟩ then
      exactRevealMass G n D seed history *
        (∑ y : Y, G.marginalY y *
          Real.negMulLog
            (bornTracePairing S.state.matrix
              (exactAliceMeanFilter
                G n S D seed history aliceAnswer y)
              (exactBobQuestionFilter
                G n S D seed history bobAnswer y)))
    else 0

def exactFairBobSeedScalarEntropy
    (G : Game X Y A B) (n : ℕ) (S : Strategy (G.repeat n))
    (D : Finset (Fin n))
    (seed : ExactRemainingSeed D) : ℝ :=
  ∑ history : ExactRevealHistory X Y D seed,
  ∑ aliceAnswer : {j : Fin n // j ∈ D} → A,
  ∑ bobAnswer : {j : Fin n // j ∈ D} → B,
    if exactHistoryAccepted G n D
      ⟨seed, history, aliceAnswer, bobAnswer⟩ then
      exactRevealMass G n D seed history *
        (∑ x : X, G.marginalX x *
          Real.negMulLog
            (bornTracePairing S.state.matrix
              (exactAliceQuestionFilter
                G n S D seed history aliceAnswer x)
              (exactBobMeanFilter
                G n S D seed history bobAnswer x)))
    else 0

end

noncomputable section

open scoped BigOperators InnerProductSpace

variable {X Y A B : Type*}
variable [Fintype X] [Fintype Y] [Fintype A] [Fintype B]

def sourceAnswerAlphabetBound (A B : Type*) [Fintype A] [Fintype B] : ℝ :=
  max 1 ((Fintype.card A : ℝ) * (Fintype.card B : ℝ))

end

noncomputable section

open WithLp
open scoped BigOperators Kronecker ComplexOrder MatrixOrder

def dSVDensityRationalPublicMultiscaleFirstHitPhysicalFlagMismatchMass
    {A C : Type*} [Fintype A] [Fintype C] {L : ℕ}
    (alice : A → Fin (L + 1))
    (bob : C → Fin (L + 1))
    (z : EuclideanSpace ℂ (A × C)) : ℝ :=
  ∑ a : A, ∑ b : C,
    ‖z (a, b)‖ ^ 2 *
      if alice a = bob b then (0 : ℝ) else 1

end

noncomputable section

open WithLp
open scoped BigOperators ComplexOrder Kronecker MatrixOrder

attribute [local instance] Classical.propDecidable

def dSVDensityRationalHeterogeneousActualPhysicalFlagMass
    (N : ℕ) {S d L : ℕ}
    (width : Fin S → ℝ) (schedule : Fin L → Fin S)
    (ξ ζ : BipartiteUnitVector d)
    (flagAlice flagBob : Fin (L + 1)) : ℝ :=
  ∑ alice : DSVUniformDensityIndependentHistoryLocalIndex
      (L + 1) N d,
    ∑ bob : DSVUniformDensityIndependentHistoryLocalIndex
        (L + 1) N d,
      ‖dSVDensityRationalHeterogeneousActualPhysicalState
          N width schedule ξ ζ
          (⟨flagAlice, alice⟩, ⟨flagBob, bob⟩)‖ ^ 2

def dSVDensityRationalHeterogeneousActualAsynchronousFlagMass
    (N : ℕ) {S d L : ℕ}
    (width : Fin S → ℝ) (schedule : Fin L → Fin S)
    (ξ ζ : BipartiteUnitVector d) : ℝ :=
  dSVDensityRationalPublicMultiscaleFirstHitPhysicalFlagMismatchMass
    (fun q : DSVUniformDensityThresholdWholeHistoryLocalIndex
      N d L => q.1)
    (fun q : DSVUniformDensityThresholdWholeHistoryLocalIndex
      N d L => q.1)
    (dSVDensityRationalHeterogeneousActualPhysicalState
      N width schedule ξ ζ)

end

noncomputable section

open WithLp
open scoped BigOperators ComplexOrder Kronecker MatrixOrder

attribute [local instance] Classical.propDecidable

def dSVDensityRationalHeterogeneousActualPhysicalFlagBornCopyWidth
    {S L : ℕ} (width : Fin S → ℝ) (schedule : Fin L → Fin S)
    (i : Fin (L + 1)) : ℝ :=
  if active : i.val < L then width (schedule ⟨i.val, active⟩) else 0

def dSVDensityRationalHeterogeneousActualPhysicalFlagBornCopyMatrix
    {β : Type*} [Fintype β] [DecidableEq β] {L : ℕ}
    (accepted : Fin L → β → Prop) (U : Matrix.unitaryGroup β ℂ)
    (flag : Fin (L + 1)) (i : Fin (L + 1)) : Matrix β β ℂ :=
  fun output input =>
    ∑ atom : β, star ((U : Matrix β β ℂ) atom output) *
      (if dSVDensityRationalHeterogeneousActualCopyCondition
          accepted flag i atom
       then (U : Matrix β β ℂ) atom input else 0)

end

noncomputable section

open WithLp
open scoped BigOperators ComplexOrder Kronecker MatrixOrder

def dSVDensityRationalHeterogeneousTargetFirstSpectralAlice
    (S B N d L m : ℕ)
    (width : Fin S → ℝ) (schedule : Fin L → Fin S)
    (ξ : BipartiteUnitVector d) :
    Matrix.unitaryGroup
      (Fin (d *
        dSVDensityRationalPublicMultiscalePhaseResidual
          S B N d L m)) ℂ :=
  dSVDensityRationalPublicLogPhaseActualTargetFirstLocalLift
    (Fintype.card (DSVDensityRationalPublicMultiscalePhase S B))
    N d L m
    (dSVDensityRationalPublicLogPhasePhysicalHistoryUnitary
      (Fintype.card (DSVDensityRationalPublicMultiscalePhase S B))
      (dSVDensityRationalHeterogeneousActualAliceUnitary
        N width schedule ξ))

def dSVDensityRationalHeterogeneousTargetFirstSpectralBob
    (S B N d L m : ℕ)
    (width : Fin S → ℝ) (schedule : Fin L → Fin S)
    (ζ : BipartiteUnitVector d) :
    Matrix.unitaryGroup
      (Fin (d *
        dSVDensityRationalPublicMultiscalePhaseResidual
          S B N d L m)) ℂ :=
  dSVDensityRationalPublicLogPhaseActualTargetFirstLocalLift
    (Fintype.card (DSVDensityRationalPublicMultiscalePhase S B))
    N d L m
    (dSVDensityRationalPublicLogPhasePhysicalHistoryUnitary
      (Fintype.card (DSVDensityRationalPublicMultiscalePhase S B))
      (dSVDensityRationalHeterogeneousActualBobUnitary
        N width schedule ζ))

def dSVDensityRationalHeterogeneousTargetFirstSpectralPhysicalSource
    (S B N d L m : ℕ)
    (width : Fin S → ℝ) (schedule : Fin L → Fin S)
    (ξ ζ : BipartiteUnitVector d) :
    EuclideanSpace ℂ
      (Fin (d *
         dSVDensityRationalPublicMultiscalePhaseResidual
           S B N d L m) ×
       Fin (d *
         dSVDensityRationalPublicMultiscalePhaseResidual
           S B N d L m)) :=
  localUnitaryAction
    (dSVDensityRationalHeterogeneousTargetFirstSpectralAlice
      S B N d L m width schedule ξ)
    (dSVDensityRationalHeterogeneousTargetFirstSpectralBob
      S B N d L m width schedule ζ)
    (dSVDensityRationalPublicMultiscalePhaseTargetFirstPreparedSource
      S B N d L m)

end

noncomputable section

open WithLp
open scoped BigOperators Kronecker ComplexOrder MatrixOrder

def dSVDensityRationalPublicBucketCoherentPhaseSigmaProductEquiv
    {H : Type*} (B m : ℕ) :
    (Σ _ : Fin B × H, Fin m) ≃
      (Fin B × H) × Fin m :=
  Equiv.sigmaEquivProd (Fin B × H) (Fin m)

def dSVDensityRationalPublicMultiscaleBucketCoherentSigmaState
    {H : Type*} [Fintype H] {m : ℕ} (S B : ℕ)
    (history : EuclideanSpace ℂ (H × H))
    (work : DSVDensityRationalPublicMultiscalePhaseIndex S B →
      H → H → EuclideanSpace ℂ (Fin m × Fin m)) :
    EuclideanSpace ℂ
      ((Σ _ :
          DSVDensityRationalPublicMultiscalePhaseIndex S B × H,
          Fin m) ×
       (Σ _ :
          DSVDensityRationalPublicMultiscalePhaseIndex S B × H,
          Fin m)) :=
  dSVDensityRationalPublicBucketCoherentPhaseSigmaState
    (Fintype.card
      (DSVDensityRationalPublicMultiscalePhase S B))
    history work

def dSVDensityRationalHeterogeneousPureStoppedSigmaState
    {S B N d L m : ℕ}
    (width : Fin S → ℝ)
    (schedule : Fin L → Fin S)
    (ξ ζ : BipartiteUnitVector d)
    (work :
      DSVDensityRationalPublicMultiscalePhaseIndex S B →
        DSVUniformDensityThresholdWholeHistoryLocalIndex N d L →
        DSVUniformDensityThresholdWholeHistoryLocalIndex N d L →
          EuclideanSpace ℂ (Fin m × Fin m)) :
    EuclideanSpace ℂ
      ((Σ _ :
        DSVDensityRationalPublicMultiscalePhaseIndex S B ×
          DSVUniformDensityThresholdWholeHistoryLocalIndex N d L,
        Fin m) ×
       (Σ _ :
        DSVDensityRationalPublicMultiscalePhaseIndex S B ×
          DSVUniformDensityThresholdWholeHistoryLocalIndex N d L,
        Fin m)) :=
  dSVDensityRationalPublicMultiscaleBucketCoherentSigmaState
    S B
    (dSVDensityRationalHeterogeneousActualPhysicalState
      N width schedule ξ ζ)
    work

def dSVDensityRationalMixedCanonicalPrefixPureHarmonicTensor
    {N : ℕ} (n : ℕ)
    (z : EuclideanSpace ℂ (Fin N × Fin N)) :
    EuclideanSpace ℂ (Fin (N * n) × Fin (N * n)) :=
  toLp 2 fun q : Fin (N * n) × Fin (N * n) =>
    let a : Fin N × Fin n := finProdFinEquiv.symm q.1
    let b : Fin N × Fin n := finProdFinEquiv.symm q.2
    z (a.1, b.1) * embezzlementState n (a.2, b.2)

def dSVDensityRationalMixedCanonicalPrefixPhysicalAcceptedSigmaState
    {d N : ℕ} (w : ℝ) (n : ℕ)
    (ξ ζ : BipartiteUnitVector d) :
    EuclideanSpace ℂ
      ((Σ _ : Fin d, Fin (N * n)) ×
        (Σ _ : Fin d, Fin (N * n))) :=
  dSVUniformDensityCorrectedMatchedSigmaWeightedResidual
    (dSVDensityRationalLocalSpectralPairHistory N ξ ζ)
    (fun i j =>
      dSVDensityRationalMixedCanonicalPrefixPureHarmonicTensor
        n (dSVDensityRationalPhysicalMixedAcceptedPrefixWork
          w N ξ ζ i j))

end

noncomputable section

open WithLp
open scoped BigOperators Kronecker ComplexOrder MatrixOrder

attribute [local instance] Classical.propDecidable

def dSVDensityRationalHeterogeneousActualCommonStopScheduledOutcome
    {S N d L : ℕ} (width : Fin S → ℝ)
    (schedule : Fin L → Fin S)
    (ξ ζ : BipartiteUnitVector d)
    (j : Fin L) (i : Fin (L + 1)) :
    EuclideanSpace ℂ
      (DSVUniformDensityThresholdLocalIndex N d ×
       DSVUniformDensityThresholdLocalIndex N d) :=
  dSVDensityRationalCompleteStoppedOptionalOutcome
    (dSVDensityRationalHeterogeneousActualPhysicalFlagBornCopyWidth
      width schedule i) N ξ ζ
    (dSVDensityRationalCompleteStoppedOptionalLocalSchedule
      L j.succ i)
    (dSVDensityRationalCompleteStoppedOptionalLocalSchedule
      L j.succ i)

end

noncomputable section

open WithLp
open scoped BigOperators ComplexOrder Kronecker MatrixOrder

def dSVDensityRationalPureBaseExactFlagBornMass
    {A C : Type*} [Fintype A] [Fintype C] {L : ℕ}
    (alice : A → Fin (L + 1)) (bob : C → Fin (L + 1))
    (z : EuclideanSpace ℂ (A × C))
    (flagAlice flagBob : Fin (L + 1)) : ℝ :=
  ∑ a : A, ∑ c : C,
    ‖z (a, c)‖ ^ 2 *
      if alice a = flagAlice ∧ bob c = flagBob then 1 else 0

end

noncomputable section

open WithLp
open scoped BigOperators Kronecker ComplexOrder MatrixOrder

def dSVDensityRationalPublicBucketPhysicalCommonRank
    {N : ℕ} (r s : Fin (N + 1)) : Fin (N + 1) :=
  ⟨min r.val s.val, by
    have left := r.isLt
    have right := s.isLt
    omega⟩

def dSVDensityRationalPublicBucketPhysicalPhaseWeightedMixedError
    {d N n B : ℕ} (Q : ℕ) (w : ℝ)
    (ξ ζ : BipartiteUnitVector d)
    (A C : Fin B → Option ℕ →
      Matrix.unitaryGroup (Fin (N * n)) ℂ) : ℝ :=
  ∑ phase : Fin B,
    dSVDensityRationalPublicLogRankPhaseWeight B phase *
      ∑ i : Fin d, ∑ j : Fin d,
        (dSVDensityRationalPrefixHarmonicSpectralOverlap
          ξ ζ i j / ((d : ℝ) * (N : ℝ))) *
          ‖localUnitaryAction
              (A phase
                (dSVDensityRationalPublicLogRankBucket Q phase
                  (dSVDensityRationalPhysicalAcceptedRank
                    w N ξ i)))
              (C phase
                (dSVDensityRationalPublicLogRankBucket Q phase
                  (dSVDensityRationalPhysicalAcceptedRank
                    w N ζ j)))
              (dSVDensityRationalMixedCanonicalPrefixPureHarmonicTensor
                n
                (dSVDensityRationalPhysicalMixedAcceptedPrefixWork
                  w N ξ ζ i j)) -
            Real.sqrt
                ((dSVDensityRationalPhysicalAcceptedRank
                  w N ξ i).val : ℝ) •
              embezzlementState (N * n)‖ ^ 2

def dSVDensityRationalPublicBucketPhysicalCoherentMixedState
    {d N B : ℕ} (w : ℝ) (n : ℕ)
    (ξ ζ : BipartiteUnitVector d) :
    EuclideanSpace ℂ
      ((Σ _ : Fin B × Fin d, Fin (N * n)) ×
       (Σ _ : Fin B × Fin d, Fin (N * n))) :=
  dSVDensityRationalPublicBucketCoherentPhaseSigmaState B
    (dSVDensityRationalLocalSpectralPairHistory N ξ ζ)
    (fun _ i j =>
      dSVDensityRationalMixedCanonicalPrefixPureHarmonicTensor n
        (dSVDensityRationalPhysicalMixedAcceptedPrefixWork
          w N ξ ζ i j))

end

end QuantumParallelRepetition
