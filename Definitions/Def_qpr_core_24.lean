import Definitions.Def_quantum_parallel_repetition_game
import Definitions.Def_qpr_core_23
import Mathlib.Algebra.Algebra.Basic
import Mathlib.Algebra.Algebra.Defs
import Mathlib.Algebra.BigOperators.Group.Finset.Defs
import Mathlib.Algebra.Field.Defs
import Mathlib.Algebra.Group.Action.Defs
import Mathlib.Algebra.Module.Defs
import Mathlib.Algebra.Module.LinearMap.Defs
import Mathlib.Algebra.Ring.Defs
import Mathlib.Algebra.Ring.Hom.Defs
import Mathlib.Algebra.Star.Basic
import Mathlib.Analysis.CStarAlgebra.Classes
import Mathlib.Analysis.Complex.Basic
import Mathlib.Analysis.InnerProductSpace.Basic
import Mathlib.Analysis.InnerProductSpace.Defs
import Mathlib.Analysis.Matrix.Normed
import Mathlib.Analysis.Matrix.Order
import Mathlib.Analysis.Normed.Field.Basic
import Mathlib.Analysis.Normed.Lp.WithLp
import Mathlib.Analysis.Normed.Module.Basic
import Mathlib.Analysis.Normed.Ring.Basic
import Mathlib.Analysis.RCLike.Basic
import Mathlib.Data.Complex.Basic
import Mathlib.Data.Finset.Defs
import Mathlib.Data.Finset.SDiff
import Mathlib.Data.Fintype.Basic
import Mathlib.Data.Fintype.Defs
import Mathlib.Data.Fintype.Pi
import Mathlib.Data.Fintype.Prod
import Mathlib.Data.Fintype.Sets
import Mathlib.Data.FunLike.Basic
import Mathlib.Data.FunLike.Equiv
import Mathlib.Data.Matrix.Basic
import Mathlib.Data.Nat.Cast.Defs
import Mathlib.Data.Nat.Init
import Mathlib.Data.Real.Basic
import Mathlib.Data.SetLike.Basic
import Mathlib.LinearAlgebra.Matrix.Defs
import Mathlib.LinearAlgebra.Matrix.Kronecker
import Mathlib.Logic.Equiv.Defs
import Mathlib.Logic.Equiv.Prod
import Mathlib.MeasureTheory.Measure.MeasureSpace
import Mathlib.Topology.Defs.Filter

namespace QuantumParallelRepetition

open scoped ComplexOrder Matrix BigOperators InnerProductSpace
open Complex Matrix Finset

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

end

end QuantumParallelRepetition
