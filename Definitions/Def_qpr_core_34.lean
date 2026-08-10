import Definitions.Def_quantum_parallel_repetition_game
import Definitions.Def_qpr_core_33
import Theorems.Thm_QuantumParallelRepetition_exactAlicePurificationFamily_posSemidef
import Theorems.Thm_QuantumParallelRepetition_exactBobPurificationFamily_posSemidef
import Mathlib.Algebra.BigOperators.Group.Finset.Defs
import Mathlib.Algebra.Field.Defs
import Mathlib.Algebra.Group.Basic
import Mathlib.Algebra.Group.Defs
import Mathlib.Algebra.Group.Subgroup.Defs
import Mathlib.Algebra.GroupWithZero.Action.Defs
import Mathlib.Algebra.GroupWithZero.Defs
import Mathlib.Algebra.Module.Defs
import Mathlib.Algebra.Module.Submodule.Defs
import Mathlib.Algebra.Ring.Defs
import Mathlib.Algebra.Star.Basic
import Mathlib.Analysis.CStarAlgebra.Classes
import Mathlib.Analysis.Complex.Basic
import Mathlib.Analysis.Complex.Norm
import Mathlib.Analysis.Complex.Order
import Mathlib.Analysis.InnerProductSpace.Basic
import Mathlib.Analysis.Matrix.Normed
import Mathlib.Analysis.Matrix.Order
import Mathlib.Analysis.Normed.Field.Basic
import Mathlib.Analysis.Normed.Group.Defs
import Mathlib.Analysis.Normed.Group.Uniform
import Mathlib.Analysis.Normed.Lp.WithLp
import Mathlib.Analysis.Normed.Module.Basic
import Mathlib.Analysis.Normed.Ring.Basic
import Mathlib.Analysis.RCLike.Basic
import Mathlib.Data.Complex.Basic
import Mathlib.Data.ENNReal.Basic
import Mathlib.Data.Finset.Card
import Mathlib.Data.Finset.Defs
import Mathlib.Data.Finset.SDiff
import Mathlib.Data.Fintype.Basic
import Mathlib.Data.Fintype.Card
import Mathlib.Data.Fintype.Defs
import Mathlib.Data.Fintype.EquivFin
import Mathlib.Data.Fintype.Pi
import Mathlib.Data.Fintype.Prod
import Mathlib.Data.Fintype.Sets
import Mathlib.Data.Fintype.Sigma
import Mathlib.Data.Fintype.Sum
import Mathlib.Data.FunLike.Basic
import Mathlib.Data.FunLike.Equiv
import Mathlib.Data.Matrix.Basic
import Mathlib.Data.Nat.Cast.Defs
import Mathlib.Data.Nat.Init
import Mathlib.Data.Real.Basic
import Mathlib.Data.SetLike.Basic
import Mathlib.Data.Sigma.Basic
import Mathlib.LinearAlgebra.Dimension.Finrank
import Mathlib.LinearAlgebra.Matrix.Defs
import Mathlib.LinearAlgebra.Matrix.Kronecker
import Mathlib.LinearAlgebra.Matrix.PosDef
import Mathlib.Logic.Basic
import Mathlib.Logic.Equiv.Defs
import Mathlib.Logic.Equiv.Fin.Basic
import Mathlib.MeasureTheory.Function.AEEqFun
import Mathlib.MeasureTheory.Function.LpSpace.Basic
import Mathlib.MeasureTheory.Measure.Haar.OfBasis
import Mathlib.MeasureTheory.Measure.MeasureSpace
import Mathlib.MeasureTheory.Measure.MeasureSpaceDef
import Mathlib.MeasureTheory.Measure.Restrict
import Mathlib.Order.Interval.Set.Defs
import Mathlib.Topology.Algebra.Group.Defs
import Mathlib.Topology.Defs.Filter
import Mathlib.Topology.MetricSpace.Algebra
import Mathlib.Topology.MetricSpace.Pseudo.Defs
import Mathlib.Topology.UniformSpace.Defs

namespace QuantumParallelRepetition

open scoped ComplexOrder Matrix BigOperators InnerProductSpace
open Complex Matrix Finset

noncomputable section

open scoped BigOperators ComplexOrder Kronecker MatrixOrder
  Matrix.Norms.L2Operator InnerProductSpace

set_option backward.isDefEq.respectTransparency false
set_option maxHeartbeats 2000000
set_option maxRecDepth 2048

open QuantumParallelRepetition.Pinsker
open QuantumParallelRepetition.ClassicalInformation
open QuantumParallelRepetition.ClassicalSampling

attribute [local instance] Classical.propDecidable

variable {X Y A B : Type}
variable [Fintype X] [Fintype Y] [Fintype A] [Fintype B]

def exactSourceGlobalBobPOVM
    [DecidableEq B]
    (G : Game X Y A B) (n : ℕ) (S : Strategy (G.repeat n))
    (D : Finset (Fin n)) (b₀ : B) (y : Y) :
    POVM B (ExactGlobalHistoryLocalIndex G n S D) := by
  classical
  let actual := twoBlockPOVM
    (deterministicOutcomePOVM (d := PUnit) b₀)
    (dependentBlockPOVM
      (fun r : ExactHistoryFlag X Y A B D =>
        exactSourceBobPaddedPOVM G n S D r b₀ y))
  exact pOVMChangeDecidableEq
    (@instDecidableEqSum PUnit
      (Σ r : ExactHistoryFlag X Y A B D,
        ExactPaddedLocalIndex G n S D r)
      inferInstance inferInstance)
    (Classical.decEq
      (ExactGlobalHistoryLocalIndex G n S D))
    actual

def exactSourceGlobalCatalystAlicePOVM
    [DecidableEq A]
    (G : Game X Y A B) (n : ℕ) (S : Strategy (G.repeat n))
    (D : Finset (Fin n)) (e : ℕ) (a₀ : A) (x : X) :
    POVM A
      (Fin (Fintype.card
        (ExactGlobalHistoryLocalIndex G n S D) * e)) := by
  classical
  exact reindexedPOVM finProdFinEquiv
    (purificationAlicePOVM (k := Fin e)
      (reindexedPOVM
        (Fintype.equivFin
          (ExactGlobalHistoryLocalIndex G n S D))
        (exactSourceGlobalAlicePOVM G n S D a₀ x)))

def exactSourceGlobalCatalystBobPOVM
    [DecidableEq B]
    (G : Game X Y A B) (n : ℕ) (S : Strategy (G.repeat n))
    (D : Finset (Fin n)) (e : ℕ) (b₀ : B) (y : Y) :
    POVM B
      (Fin (Fintype.card
        (ExactGlobalHistoryLocalIndex G n S D) * e)) := by
  classical
  exact reindexedPOVM finProdFinEquiv
    (purificationAlicePOVM (k := Fin e)
      (reindexedPOVM
        (Fintype.equivFin
          (ExactGlobalHistoryLocalIndex G n S D))
        (exactSourceGlobalBobPOVM G n S D b₀ y)))

end

noncomputable section

open scoped BigOperators ComplexOrder Kronecker MatrixOrder
  Matrix.Norms.L2Operator InnerProductSpace

set_option backward.isDefEq.respectTransparency false
set_option maxHeartbeats 2400000
set_option maxRecDepth 2048

attribute [local instance] Classical.propDecidable

variable {X Y A B : Type}
variable [Fintype X] [Fintype Y] [Fintype A] [Fintype B]

def exactSourceGlobalJointBasis
    (G : Game X Y A B) (n : ℕ) (S : Strategy (G.repeat n))
    (D : Finset (Fin n))
    (r : ExactHistoryFlag X Y A B D) :
    (ExactAliceLocalIndex G n S D r ×
      ExactBobLocalIndex G n S D r) →
      (ExactGlobalHistoryLocalIndex G n S D ×
        ExactGlobalHistoryLocalIndex G n S D)
  | (i, j) =>
    (.inr ⟨r, .inr (.inl i)⟩, .inr ⟨r, .inr (.inr j)⟩)

end

noncomputable section

open scoped BigOperators ComplexOrder Kronecker MatrixOrder
  Matrix.Norms.L2Operator InnerProductSpace

set_option backward.isDefEq.respectTransparency false
set_option maxHeartbeats 2400000
set_option maxRecDepth 2048

open QuantumParallelRepetition.ClassicalSampling

attribute [local instance] Classical.propDecidable

variable {X Y A B : Type}
variable [Fintype X] [Fintype Y] [Fintype A] [Fintype B]

def exactSourceGlobalWinningEffect
    [DecidableEq A] [DecidableEq B]
    (G : Game X Y A B) (n : ℕ) (S : Strategy (G.repeat n))
    (D : Finset (Fin n)) (a₀ : A) (b₀ : B) (x : X) (y : Y) :
    Matrix
      (ExactGlobalHistoryLocalIndex G n S D ×
        ExactGlobalHistoryLocalIndex G n S D)
      (ExactGlobalHistoryLocalIndex G n S D ×
        ExactGlobalHistoryLocalIndex G n S D) ℂ :=
  ∑ a : A, ∑ b : B,
    if G.predicate x y a b = true then
      (exactSourceGlobalAlicePOVM G n S D a₀ x).operator a ⊗ₖ
        (exactSourceGlobalBobPOVM G n S D b₀ y).operator b
    else 0

end

noncomputable section

open scoped BigOperators

set_option backward.isDefEq.respectTransparency false
set_option maxHeartbeats 3600000
set_option maxRecDepth 2048

open QuantumParallelRepetition.Pinsker
open QuantumParallelRepetition.ClassicalInformation

attribute [local instance] Classical.propDecidable

variable {X Y A B : Type*}
variable [Fintype X] [Fintype Y] [Fintype A] [Fintype B]

def exactAliceSourceAtomCode
    {n : ℕ} (D : Finset (Fin n)) :
    ExactJointOutcome X Y A B D →
      (SourceRemainingCoordinate D × X) ×
        (ExactHistoryFlag X Y A B D × Y) :=
  fun point =>
    ((point.1.coordinate, point.2.1 point.1.coordinate.val),
      (exactHistoryCode D point,
        point.2.2.1 point.1.coordinate.val))

def exactBobSourceAtomCode
    {n : ℕ} (D : Finset (Fin n)) :
    ExactJointOutcome X Y A B D →
      (SourceRemainingCoordinate D × Y) ×
        (ExactHistoryFlag X Y A B D × X) :=
  fun point =>
    ((point.1.coordinate, point.2.2.1 point.1.coordinate.val),
      (exactHistoryCode D point,
        point.2.1 point.1.coordinate.val))

end

noncomputable section

open scoped BigOperators

set_option backward.isDefEq.respectTransparency false
set_option maxHeartbeats 5000000
set_option maxRecDepth 2048

open QuantumParallelRepetition.Pinsker
open QuantumParallelRepetition.ClassicalInformation

attribute [local instance] Classical.propDecidable

variable {X Y A B : Type*}
variable [Fintype X] [Fintype Y] [Fintype A] [Fintype B]

def exactReverseAliceContextOutcomeProjection
    {n : ℕ} (D : Finset (Fin n))
    (side : Finset (SourceRemainingCoordinate D))
    (context : ExactReverseSideContext
      (SourceRemainingCoordinate D) side)
    (outcome : ExactOutcome X Y A B n) :
    ExactReverseAliceFixedInformation X Y D side ×
      (Fin side.card → Y) :=
  (⟨context,
     (fun j => outcome.1 j.val),
     (fun j => outcome.2.1 j.val),
     (fun j => outcome.1 j.val.val),
     (fun j => outcome.2.1 j.val.val),
     (fun j => outcome.1 j.val.val)⟩,
    fun marker =>
      outcome.2.1 (context.sideRank.symm marker).val.val)

def exactReverseBobContextOutcomeProjection
    {n : ℕ} (D : Finset (Fin n))
    (side : Finset (SourceRemainingCoordinate D))
    (context : ExactReverseSideContext
      (SourceRemainingCoordinate D) side)
    (outcome : ExactOutcome X Y A B n) :
    ExactReverseBobFixedInformation X Y D side ×
      (Fin side.card → X) :=
  (⟨context,
     (fun j => outcome.1 j.val),
     (fun j => outcome.2.1 j.val),
     (fun j => outcome.2.1 j.val.val),
     (fun j => outcome.1 j.val.val),
     (fun j => outcome.2.1 j.val.val)⟩,
    fun marker =>
      outcome.1 (context.sideRank.symm marker).val.val)

end

noncomputable section

open scoped BigOperators

set_option backward.isDefEq.respectTransparency false
set_option maxHeartbeats 5000000
set_option maxRecDepth 2048

open QuantumParallelRepetition.Pinsker
open QuantumParallelRepetition.ClassicalInformation

attribute [local instance] Classical.propDecidable

variable {X Y A B : Type*}
variable [Fintype X] [Fintype Y] [Fintype A] [Fintype B]

def exactReverseAliceMaskedQuestionRegister
    {n : ℕ} (D : Finset (Fin n))
    (side : Finset (SourceRemainingCoordinate D))
    (default : Y) (marker : Fin side.card)
    (flag : ConditionedAnswerFlag A B D)
    (seed : ExactRemainingSeed D)
    (xs : Fin n → X) (ys : Fin n → Y) :
    ExactReverseAliceNextContext X Y A B D side :=
  let context := exactReverseAliceContextAt side seed
  let fixed : ExactReverseAliceFixedInformation X Y D side :=
    ⟨context,
      (fun j => xs j.val),
      (fun j => ys j.val),
      (fun j => xs j.val.val),
      (fun j => ys j.val.val),
      (fun j => xs j.val.val)⟩
  finitePrefixMask default marker.castSucc
    ((fixed, flag),
      fun position => ys (context.sideRank.symm position).val.val)

def exactReverseBobMaskedQuestionRegister
    {n : ℕ} (D : Finset (Fin n))
    (side : Finset (SourceRemainingCoordinate D))
    (default : X) (marker : Fin side.card)
    (flag : ConditionedAnswerFlag A B D)
    (seed : ExactRemainingSeed D)
    (xs : Fin n → X) (ys : Fin n → Y) :
    ExactReverseBobNextContext X Y A B D side :=
  let context := exactReverseBobContextAt side seed
  let fixed : ExactReverseBobFixedInformation X Y D side :=
    ⟨context,
      (fun j => xs j.val),
      (fun j => ys j.val),
      (fun j => ys j.val.val),
      (fun j => xs j.val.val),
      (fun j => ys j.val.val)⟩
  finitePrefixMask default marker.castSucc
    ((fixed, flag),
      fun position => xs (context.sideRank.symm position).val.val)

end

noncomputable section

open scoped BigOperators

set_option backward.isDefEq.respectTransparency false
set_option maxHeartbeats 6000000
set_option maxRecDepth 2048

open QuantumParallelRepetition.Pinsker
open QuantumParallelRepetition.ClassicalInformation

attribute [local instance] Classical.propDecidable

variable {X Y A B : Type*}
variable [Fintype X] [Fintype Y] [Fintype A] [Fintype B]

def exactReverseAliceMaskedOutcomeContext
    (G : Game X Y A B) (n : ℕ) (S : Strategy (G.repeat n))
    (D : Finset (Fin n))
    (side : Finset (SourceRemainingCoordinate D))
    (default : Y) (marker : Fin side.card)
    (context : ExactReverseSideContext
      (SourceRemainingCoordinate D) side)
    (outcome : ExactOutcome X Y A B n) :
    ExactReverseAliceNextContext X Y A B D side :=
  let projection :=
    exactReverseAliceContextOutcomeProjection
      (X := X) (Y := Y) (A := A) (B := B)
      D side context outcome
  finitePrefixMask default marker.castSucc
    ((projection.1,
      repeatedConditionedAnswerFlag G n S D outcome),
      projection.2)

end

end QuantumParallelRepetition
