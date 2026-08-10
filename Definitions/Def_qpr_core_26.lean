import Definitions.Def_quantum_parallel_repetition_game
import Definitions.Def_qpr_core_25
import Mathlib.Algebra.Algebra.Basic
import Mathlib.Algebra.Algebra.Defs
import Mathlib.Algebra.BigOperators.Group.Finset.Defs
import Mathlib.Algebra.Group.Action.Defs
import Mathlib.Algebra.Group.Defs
import Mathlib.Algebra.Module.Defs
import Mathlib.Algebra.Module.LinearMap.Defs
import Mathlib.Algebra.Ring.Defs
import Mathlib.Algebra.Ring.Hom.Defs
import Mathlib.Algebra.Star.Basic
import Mathlib.Algebra.Star.SelfAdjoint
import Mathlib.Analysis.CStarAlgebra.Classes
import Mathlib.Analysis.CStarAlgebra.ContinuousFunctionalCalculus.Unital
import Mathlib.Analysis.Complex.Basic
import Mathlib.Analysis.InnerProductSpace.Basic
import Mathlib.Analysis.InnerProductSpace.Defs
import Mathlib.Analysis.Matrix.HermitianFunctionalCalculus
import Mathlib.Analysis.Matrix.Normed
import Mathlib.Analysis.Matrix.Order
import Mathlib.Analysis.Normed.Field.Basic
import Mathlib.Analysis.Normed.Lp.WithLp
import Mathlib.Analysis.Normed.Module.Basic
import Mathlib.Analysis.Normed.Ring.Basic
import Mathlib.Analysis.RCLike.Basic
import Mathlib.Analysis.SpecialFunctions.Log.Basic
import Mathlib.Analysis.SpecialFunctions.Log.NegMulLog
import Mathlib.Data.Complex.Basic
import Mathlib.Data.Finset.Card
import Mathlib.Data.Finset.Defs
import Mathlib.Data.Finset.SDiff
import Mathlib.Data.Fintype.Basic
import Mathlib.Data.Fintype.Defs
import Mathlib.Data.Fintype.Pi
import Mathlib.Data.Fintype.Prod
import Mathlib.Data.Fintype.Sets
import Mathlib.Data.FunLike.Basic
import Mathlib.Data.Matrix.Basic
import Mathlib.Data.Matrix.Mul
import Mathlib.Data.Real.Basic
import Mathlib.Data.Real.Star
import Mathlib.Data.SetLike.Basic
import Mathlib.LinearAlgebra.Matrix.ConjTranspose
import Mathlib.LinearAlgebra.Matrix.Defs
import Mathlib.LinearAlgebra.Matrix.Kronecker
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

end

end QuantumParallelRepetition
