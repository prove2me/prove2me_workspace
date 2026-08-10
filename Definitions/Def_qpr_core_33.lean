import Definitions.Def_quantum_parallel_repetition_game
import Definitions.Def_qpr_core_32
import Theorems.Thm_QuantumParallelRepetition_posSemidef_blockDiagonal_prime
import Theorems.Thm_QuantumParallelRepetition_exactAlicePurificationFamily_posSemidef
import Theorems.Thm_QuantumParallelRepetition_exactBobPurificationFamily_posSemidef
import Mathlib.Algebra.Algebra.Basic
import Mathlib.Algebra.Algebra.Defs
import Mathlib.Algebra.BigOperators.Group.Finset.Basic
import Mathlib.Algebra.BigOperators.Group.Finset.Defs
import Mathlib.Algebra.BigOperators.Group.Finset.Piecewise
import Mathlib.Algebra.Field.Defs
import Mathlib.Algebra.Group.Action.Defs
import Mathlib.Algebra.Group.Basic
import Mathlib.Algebra.Group.Defs
import Mathlib.Algebra.Group.Subgroup.Defs
import Mathlib.Algebra.GroupWithZero.Action.Defs
import Mathlib.Algebra.GroupWithZero.Defs
import Mathlib.Algebra.Module.Defs
import Mathlib.Algebra.Module.LinearMap.Defs
import Mathlib.Algebra.Module.Submodule.Defs
import Mathlib.Algebra.Ring.Defs
import Mathlib.Algebra.Ring.Hom.Defs
import Mathlib.Algebra.Star.Basic
import Mathlib.Analysis.CStarAlgebra.Classes
import Mathlib.Analysis.Complex.Basic
import Mathlib.Analysis.Complex.Norm
import Mathlib.Analysis.Complex.Order
import Mathlib.Analysis.InnerProductSpace.Basic
import Mathlib.Analysis.InnerProductSpace.Defs
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
import Mathlib.Data.Finset.Defs
import Mathlib.Data.Finset.Empty
import Mathlib.Data.Finset.SDiff
import Mathlib.Data.Fintype.Basic
import Mathlib.Data.Fintype.Defs
import Mathlib.Data.Fintype.Perm
import Mathlib.Data.Fintype.Pi
import Mathlib.Data.Fintype.Prod
import Mathlib.Data.Fintype.Sets
import Mathlib.Data.Fintype.Sigma
import Mathlib.Data.Fintype.Sum
import Mathlib.Data.FunLike.Basic
import Mathlib.Data.FunLike.Embedding
import Mathlib.Data.FunLike.Equiv
import Mathlib.Data.Matrix.Basic
import Mathlib.Data.Matrix.Block
import Mathlib.Data.Matrix.Diagonal
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
import Mathlib.Logic.Equiv.Sum
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
set_option maxHeartbeats 1800000
set_option maxRecDepth 2048

open QuantumParallelRepetition.ClassicalInformation

attribute [local instance] Classical.propDecidable

variable {X Y A B : Type*}
variable [Fintype X] [Fintype Y] [Fintype A] [Fintype B]

def exactSourceConditionalWinningProbability
    (G : Game X Y A B) (n : ℕ) (S : Strategy (G.repeat n))
    (D : Finset (Fin n))
    (t : ExactLocallySampleableTuple X Y A B D) : ℝ :=
  exactSourceAcceptedCoordinateMass G n S D t /
    exactLocallySampleableLaw G n S D t

end

noncomputable section

open scoped BigOperators ComplexOrder Kronecker MatrixOrder
  Matrix.Norms.L2Operator InnerProductSpace

set_option backward.isDefEq.respectTransparency false
set_option maxHeartbeats 1800000
set_option maxRecDepth 2048

open QuantumParallelRepetition.Pinsker
open QuantumParallelRepetition.ClassicalSampling
open QuantumParallelRepetition.ClassicalInformation

attribute [local instance] Classical.propDecidable

variable {X Y A B dA dB : Type}
variable [Fintype X] [Fintype Y] [Fintype A] [Fintype B]
variable [Fintype dA] [Fintype dB] [DecidableEq dA] [DecidableEq dB]

def exactSourceAliceFlagCoupling
    (G : Game X Y A B) (n : ℕ) (S : Strategy (G.repeat n))
    (D : Finset (Fin n)) (denominator : ℕ)
    (numerator : ExactLocalSamplerIndex X Y D →
      ExactHistoryFlag X Y A B D → ℕ)
    (nonempty : ∀ index,
      (rationalMarked denominator (numerator index)).Nonempty) :
    ExactSourceSharedFlag X Y A B D denominator × (X × Y) → ℝ :=
  exactFiniteFiberLift
    (exactSourceAliceSampleTuple
      D denominator numerator nonempty)
    (flaggedQuestionWeight G
      (exactSourceSharedFlagWeight D denominator))
    (exactLocallySampleableLaw G n S D)

end

noncomputable section

open scoped BigOperators ComplexOrder Kronecker MatrixOrder
  Matrix.Norms.L2Operator InnerProductSpace

set_option backward.isDefEq.respectTransparency false
set_option maxHeartbeats 2000000
set_option maxRecDepth 2048

open QuantumParallelRepetition.ClassicalInformation

attribute [local instance] Classical.propDecidable

variable {X Y A B : Type*}
variable [Fintype X] [Fintype Y] [Fintype A] [Fintype B]

def exactFairWinningOutcomeBornMass
    (G : Game X Y A B) (n : ℕ) (S : Strategy (G.repeat n))
    (D : Finset (Fin n))
    (history : ExactHistoryFlag X Y A B D)
    (x : X) (y : Y) : ℝ :=
  ∑ outcome : ExactOutcome X Y A B n,
    if exactLocallySampleableCode D (history.seed, outcome) =
        (history.seed.coordinate, x, y, history) ∧
      repeatedCoordinateWin G n history.seed.coordinate.val outcome = true
    then (strategyEventLaw (G.repeat n) S).weight outcome
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

def exactFairCoordinateRefinedWinningBornMass
    (G : Game X Y A B) (n : ℕ) (S : Strategy (G.repeat n))
    (D : Finset (Fin n))
    (history : ExactHistoryFlag X Y A B D)
    (x : X) (y : Y) : ℝ :=
  ∑ xs : Fin n → X, ∑ ys : Fin n → Y,
    exactFiberQuestionWeight
        G n D history.seed history.history x y xs ys *
      (∑ a : A, ∑ b : B,
        if G.predicate x y a b = true then
          bornTracePairing S.state.matrix
            (conditionedAliceCoordinateEffect G n S D
              history.aliceAnswer xs history.seed.coordinate.val a)
            (conditionedBobCoordinateEffect G n S D
              history.bobAnswer ys history.seed.coordinate.val b)
        else 0)

end

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

def dependentBlockPOVM
    {R C : Type*} [Fintype R] [DecidableEq R] [Fintype C]
    {ι : R → Type*}
    [∀ r, Fintype (ι r)] [∀ r, DecidableEq (ι r)]
    (P : (r : R) → POVM C (ι r)) :
    POVM C (Σ r : R, ι r) where
  operator c := Matrix.blockDiagonal' fun r => (P r).operator c
  positive c := by
    apply posSemidef_blockDiagonal_prime
    intro r
    exact (P r).positive c
  complete := by
    classical
    ext ⟨r, u⟩ ⟨s, v⟩
    by_cases same : r = s
    · subst s
      have completed := congrArg
        (fun M : Matrix (ι r) (ι r) ℂ => M u v)
        (P r).complete
      simpa [Matrix.sum_apply, Matrix.blockDiagonal'_apply,
        Matrix.one_apply] using completed
    · simp [Matrix.sum_apply, Matrix.blockDiagonal'_apply,
        same]

def reindexedPOVM
    {C d e : Type*} [Fintype C]
    [Fintype d] [Fintype e] [DecidableEq d] [DecidableEq e]
    (basis : d ≃ e) (P : POVM C d) : POVM C e where
  operator c := (P.operator c).submatrix basis.symm basis.symm
  positive c := (P.positive c).submatrix basis.symm
  complete := by
    classical
    ext i j
    have completed := congrArg
      (fun M : Matrix d d ℂ => M (basis.symm i) (basis.symm j))
      P.complete
    simpa [Matrix.sum_apply, Matrix.one_apply] using completed

def twoBlockPOVM
    {C d e : Type} [Fintype C] [DecidableEq C]
    [Fintype d] [Fintype e] [DecidableEq d] [DecidableEq e]
    (P : POVM C d) (Q : POVM C e) :
    POVM C (d ⊕ e) := by
  classical
  letI : (b : Bool) → Fintype (bif b then e else d)
    | false => inferInstanceAs (Fintype d)
    | true => inferInstanceAs (Fintype e)
  letI : (b : Bool) → DecidableEq (bif b then e else d)
    | false => inferInstanceAs (DecidableEq d)
    | true => inferInstanceAs (DecidableEq e)
  let blocks : (b : Bool) → POVM C (bif b then e else d)
    | false => P
    | true => Q
  exact reindexedPOVM
    (Equiv.sumEquivSigmaBool d e).symm
    (dependentBlockPOVM blocks)

def deterministicOutcomePOVM
    {C d : Type*} [Fintype C] [DecidableEq C]
    [Fintype d] [DecidableEq d] (default : C) : POVM C d where
  operator c := if c = default then 1 else 0
  positive c := by
    split_ifs
    · exact Matrix.PosSemidef.one
    · exact Matrix.PosSemidef.zero
  complete := by
    classical
    simp

def pOVMChangeDecidableEq
    {C d : Type*} [Fintype C] [Fintype d]
    (source target : DecidableEq d)
    (P : @POVM C d inferInstance inferInstance source) :
    @POVM C d inferInstance inferInstance target where
  operator c := @POVM.operator C d inferInstance inferInstance source P c
  positive c := @POVM.positive C d
    inferInstance inferInstance source P c
  complete := by
    classical
    ext i j
    have completed := congrArg
      (fun M : Matrix d d ℂ => M i j)
      (@POVM.complete C d inferInstance inferInstance source P)
    simp only [Matrix.sum_apply, Matrix.one_apply] at completed ⊢
    by_cases same : i = j
    · subst j
      simpa using completed
    · simpa [same] using completed

def exactSourceAlicePaddedPOVM
    [DecidableEq A]
    (G : Game X Y A B) (n : ℕ) (S : Strategy (G.repeat n))
    (D : Finset (Fin n)) (r : ExactHistoryFlag X Y A B D)
    (a₀ : A) (x : X) :
    POVM A (ExactPaddedLocalIndex G n S D r) := by
  classical
  exact twoBlockPOVM
    (deterministicOutcomePOVM (d := PUnit) a₀)
    (twoBlockPOVM
      (exactSourceAliceRefinedPOVM G n S D r a₀ x)
      (deterministicOutcomePOVM
        (d := ExactBobLocalIndex G n S D r) a₀))

def exactSourceBobPaddedPOVM
    [DecidableEq B]
    (G : Game X Y A B) (n : ℕ) (S : Strategy (G.repeat n))
    (D : Finset (Fin n)) (r : ExactHistoryFlag X Y A B D)
    (b₀ : B) (y : Y) :
    POVM B (ExactPaddedLocalIndex G n S D r) := by
  classical
  exact twoBlockPOVM
    (deterministicOutcomePOVM (d := PUnit) b₀)
    (twoBlockPOVM
      (deterministicOutcomePOVM
        (d := ExactAliceLocalIndex G n S D r) b₀)
      (exactSourceBobRefinedPOVM G n S D r b₀ y))

def exactSourceGlobalAlicePOVM
    [DecidableEq A]
    (G : Game X Y A B) (n : ℕ) (S : Strategy (G.repeat n))
    (D : Finset (Fin n)) (a₀ : A) (x : X) :
    POVM A (ExactGlobalHistoryLocalIndex G n S D) := by
  classical
  let actual := twoBlockPOVM
    (deterministicOutcomePOVM (d := PUnit) a₀)
    (dependentBlockPOVM
      (fun r : ExactHistoryFlag X Y A B D =>
        exactSourceAlicePaddedPOVM G n S D r a₀ x))
  exact pOVMChangeDecidableEq
    (@instDecidableEqSum PUnit
      (Σ r : ExactHistoryFlag X Y A B D,
        ExactPaddedLocalIndex G n S D r)
      inferInstance inferInstance)
    (Classical.decEq
      (ExactGlobalHistoryLocalIndex G n S D))
    actual

end

end QuantumParallelRepetition
