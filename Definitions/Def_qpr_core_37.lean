import Definitions.Def_quantum_parallel_repetition_game
import Definitions.Def_qpr_core_36
import Theorems.Thm_QuantumParallelRepetition_exactAlicePurificationFamily_posSemidef
import Theorems.Thm_QuantumParallelRepetition_exactBobPurificationFamily_posSemidef
import Mathlib.Algebra.Algebra.Defs
import Mathlib.Algebra.Algebra.Equiv
import Mathlib.Algebra.Algebra.Hom
import Mathlib.Algebra.Algebra.NonUnitalHom
import Mathlib.Algebra.BigOperators.Group.Finset.Basic
import Mathlib.Algebra.BigOperators.Group.Finset.Defs
import Mathlib.Algebra.Field.Defs
import Mathlib.Algebra.Group.Basic
import Mathlib.Algebra.Group.Defs
import Mathlib.Algebra.Group.Hom.Defs
import Mathlib.Algebra.Group.Subgroup.Defs
import Mathlib.Algebra.Group.Submonoid.Defs
import Mathlib.Algebra.GroupWithZero.Action.Defs
import Mathlib.Algebra.GroupWithZero.Defs
import Mathlib.Algebra.GroupWithZero.Hom
import Mathlib.Algebra.Module.Defs
import Mathlib.Algebra.Module.Submodule.Defs
import Mathlib.Algebra.Notation.Defs
import Mathlib.Algebra.Ring.Defs
import Mathlib.Algebra.Ring.Hom.Defs
import Mathlib.Algebra.Star.Basic
import Mathlib.Algebra.Star.Unitary
import Mathlib.Analysis.CStarAlgebra.Classes
import Mathlib.Analysis.Complex.Basic
import Mathlib.Analysis.Complex.Norm
import Mathlib.Analysis.Complex.Order
import Mathlib.Analysis.InnerProductSpace.Basic
import Mathlib.Analysis.InnerProductSpace.PiL2
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
import Mathlib.Data.Fintype.Basic
import Mathlib.Data.Fintype.Card
import Mathlib.Data.Fintype.Defs
import Mathlib.Data.Fintype.Pi
import Mathlib.Data.Fintype.Prod
import Mathlib.Data.Fintype.Sigma
import Mathlib.Data.Fintype.Sum
import Mathlib.Data.FunLike.Basic
import Mathlib.Data.FunLike.Equiv
import Mathlib.Data.Int.Cast.Defs
import Mathlib.Data.Matrix.Basic
import Mathlib.Data.Matrix.Diagonal
import Mathlib.Data.Matrix.Mul
import Mathlib.Data.Nat.Cast.Defs
import Mathlib.Data.Nat.Init
import Mathlib.Data.Real.Basic
import Mathlib.Data.SetLike.Basic
import Mathlib.Data.Sigma.Basic
import Mathlib.LinearAlgebra.Dimension.Finrank
import Mathlib.LinearAlgebra.Matrix.ConjTranspose
import Mathlib.LinearAlgebra.Matrix.Defs
import Mathlib.LinearAlgebra.Matrix.Kronecker
import Mathlib.LinearAlgebra.Matrix.PosDef
import Mathlib.LinearAlgebra.Matrix.Reindex
import Mathlib.LinearAlgebra.UnitaryGroup
import Mathlib.Logic.Equiv.Defs
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

open WithLp
open scoped BigOperators Kronecker ComplexOrder MatrixOrder
  Matrix.Norms.L2Operator InnerProductSpace

def unconditionalSelectedCopyIdealStage
    {d N B m : ℕ}
    (w : ℝ) (ξ ζ : BipartiteUnitVector d) :
    EuclideanSpace ℂ
      (UnconditionalSelectedCopyLocalIndex B d N m ×
       UnconditionalSelectedCopyLocalIndex B d N m) :=
  dSVDensityRationalPublicBucketPhysicalCoherentTargetState
    (N := N) (B := B) w m ξ ζ

def unconditionalSelectedCopyRetainedWork
    {S N d L : ℕ} {τ : Type*} [Fintype τ]
    (width : Fin S → ℝ) (schedule : Fin L → Fin S)
    (ξ ζ : BipartiteUnitVector d)
    (j : Fin L) (rest : EuclideanSpace ℂ τ) :
    EuclideanSpace ℂ
      ((Fin j.val →
        (DSVUniformDensityThresholdLocalIndex N d ×
         DSVUniformDensityThresholdLocalIndex N d)) × τ) :=
  unconditionalMatchedVerifierTensor
    (dSVDensityRationalHeterogeneousStoppedCommonPrefixFailureVector
      (N := N) width schedule ξ ζ j)
    rest

def unconditionalSelectedCopyCleanedMatchedBranch
    {S N d L B m : ℕ} {τ : Type*} [Fintype τ]
    (Q : ℕ) (width : Fin S → ℝ)
    (schedule : Fin L → Fin S)
    (ξ ζ : BipartiteUnitVector d)
    (A C : Fin B → Option ℕ →
      Matrix.unitaryGroup (Fin (N * m)) ℂ)
    (j : Fin L) (rest : EuclideanSpace ℂ τ) :
    EuclideanSpace ℂ
      ((UnconditionalSelectedCopyLocalIndex B d N m ×
          UnconditionalSelectedCopyLocalIndex B d N m) ×
        ((Fin j.val →
          (DSVUniformDensityThresholdLocalIndex N d ×
            DSVUniformDensityThresholdLocalIndex N d)) × τ)) :=
  unconditionalMatchedVerifierTensor
    (unconditionalSelectedCopyCleanedStage
      (N := N) (B := B) (m := m)
      Q (width (schedule j)) ξ ζ A C)
    (unconditionalSelectedCopyRetainedWork
      (N := N) width schedule ξ ζ j rest)

def unconditionalSelectedCopyIdealMatchedBranch
    {S N d L B m : ℕ} {τ : Type*} [Fintype τ]
    (width : Fin S → ℝ)
    (schedule : Fin L → Fin S)
    (ξ ζ : BipartiteUnitVector d)
    (j : Fin L) (rest : EuclideanSpace ℂ τ) :
    EuclideanSpace ℂ
      ((UnconditionalSelectedCopyLocalIndex B d N m ×
          UnconditionalSelectedCopyLocalIndex B d N m) ×
        ((Fin j.val →
          (DSVUniformDensityThresholdLocalIndex N d ×
            DSVUniformDensityThresholdLocalIndex N d)) × τ)) :=
  unconditionalMatchedVerifierTensor
    (unconditionalSelectedCopyIdealStage
      (N := N) (B := B) (m := m) (width (schedule j)) ξ ζ)
    (unconditionalSelectedCopyRetainedWork
      (N := N) width schedule ξ ζ j rest)

end

noncomputable section

open WithLp
open scoped BigOperators Kronecker ComplexOrder MatrixOrder
  Matrix.Norms.L2Operator InnerProductSpace

def unconditionalConjugatePureVector
    {ι : Type*} [Fintype ι] (z : EuclideanSpace ℂ ι) :
    EuclideanSpace ℂ ι :=
  toLp 2 (fun i : ι => star (z i))

def unconditionalConjugatePOVM
    {A ι : Type*} [Fintype A] [Fintype ι] [DecidableEq ι]
    (P : POVM A ι) : POVM A ι where
  operator a := (P.operator a).transpose
  positive a := (P.positive a).transpose
  complete := by
    classical
    rw [← Matrix.transpose_sum]
    rw [P.complete, Matrix.transpose_one]

end

noncomputable section

open WithLp
open scoped BigOperators Kronecker ComplexOrder MatrixOrder
  Matrix.Norms.L2Operator InnerProductSpace

variable {X Y A B : Type}
variable [Fintype X] [Fintype Y] [Fintype A] [Fintype B]

def unconditionalConjugateSourceGlobalCatalystWinningEffect
    [DecidableEq A] [DecidableEq B]
    (G : Game X Y A B) (n : ℕ) (S : Strategy (G.repeat n))
    (D : Finset (Fin n)) (e : ℕ)
    (a₀ : A) (b₀ : B) (x : X) (y : Y) :
    Matrix
      (Fin (Fintype.card
        (ExactGlobalHistoryLocalIndex G n S D) * e) ×
       Fin (Fintype.card
        (ExactGlobalHistoryLocalIndex G n S D) * e))
      (Fin (Fintype.card
        (ExactGlobalHistoryLocalIndex G n S D) * e) ×
       Fin (Fintype.card
        (ExactGlobalHistoryLocalIndex G n S D) * e)) ℂ :=
  ∑ a : A, ∑ b : B,
    if G.predicate x y a b = true then
      (unconditionalConjugatePOVM
        (exactSourceGlobalCatalystAlicePOVM
          G n S D e a₀ x)).operator a ⊗ₖ
      (unconditionalConjugatePOVM
        (exactSourceGlobalCatalystBobPOVM
          G n S D e b₀ y)).operator b
    else 0

end

noncomputable section

open WithLp
open scoped BigOperators Kronecker ComplexOrder MatrixOrder

def unconditionalMixedConjugateSigmaAtomLift
    {d m : ℕ} (B : ℕ)
    (U : Matrix.unitaryGroup (Fin d) ℂ) :
    Matrix.unitaryGroup
      (Σ _ : Fin B × Fin d, Fin m) ℂ := by
  classical
  let e : ((Fin B × Fin d) × Fin m) ≃
      (Σ _ : Fin B × Fin d, Fin m) :=
    (Equiv.sigmaEquivProd (Fin B × Fin d) (Fin m)).symm
  let M : Matrix ((Fin B × Fin d) × Fin m)
      ((Fin B × Fin d) × Fin m) ℂ :=
    ((1 : Matrix (Fin B) (Fin B) ℂ) ⊗ₖ
      (U : Matrix (Fin d) (Fin d) ℂ)) ⊗ₖ
      (1 : Matrix (Fin m) (Fin m) ℂ)
  have unitary : M ∈ Matrix.unitaryGroup
      ((Fin B × Fin d) × Fin m) ℂ :=
    Matrix.kronecker_mem_unitary
      (Matrix.kronecker_mem_unitary
        (Matrix.unitaryGroup (Fin B) ℂ).one_mem U.property)
      (Matrix.unitaryGroup (Fin m) ℂ).one_mem
  refine ⟨Matrix.reindex e e M, ?_⟩
  rw [Matrix.mem_unitaryGroup_iff']
  have compatible :
      star (Matrix.reindex e e M) =
        Matrix.reindex e e (star M) := by
    ext i j
    simp [Matrix.star_eq_conjTranspose,
      Matrix.reindex_apply, Matrix.conjTranspose_apply]
  rw [compatible]
  change
    (Matrix.reindexAlgEquiv ℂ ℂ e) (star M) *
      (Matrix.reindexAlgEquiv ℂ ℂ e) M = 1
  rw [← map_mul (Matrix.reindexAlgEquiv ℂ ℂ e),
    (Matrix.mem_unitaryGroup_iff').mp unitary]
  exact map_one (Matrix.reindexAlgEquiv ℂ ℂ e)

def unconditionalMixedConjugateSigmaLocalAction
    {d m : ℕ} (B : ℕ)
    (U V : Matrix.unitaryGroup (Fin d) ℂ)
    (z : EuclideanSpace ℂ
      ((Σ _ : Fin B × Fin d, Fin m) ×
        (Σ _ : Fin B × Fin d, Fin m))) :
    EuclideanSpace ℂ
      ((Σ _ : Fin B × Fin d, Fin m) ×
        (Σ _ : Fin B × Fin d, Fin m)) :=
  toLp 2
    ((((unconditionalMixedConjugateSigmaAtomLift (m := m) B U :
          Matrix (Σ _ : Fin B × Fin d, Fin m)
            (Σ _ : Fin B × Fin d, Fin m) ℂ) ⊗ₖ
        (unconditionalMixedConjugateSigmaAtomLift (m := m) B V :
          Matrix (Σ _ : Fin B × Fin d, Fin m)
            (Σ _ : Fin B × Fin d, Fin m) ℂ)).mulVec
      (ofLp z)))

def unconditionalMixedConjugateAcceptedPhaseHarmonicTarget
    {d N B : ℕ} (w : ℝ) (n : ℕ)
    (ξ : BipartiteUnitVector d) :
    EuclideanSpace ℂ
      ((Σ _ : Fin B × Fin d, Fin (N * n)) ×
       (Σ _ : Fin B × Fin d, Fin (N * n))) :=
  dSVDensityRationalPublicBucketCoherentPhaseSigmaState B
    (unconditionalConjugatePureVector
      (dSVDensityRationalCanonicalAcceptedTarget w N ξ))
    (fun _ _ _ => embezzlementState (N * n))

end

noncomputable section

open WithLp
open scoped BigOperators Kronecker ComplexOrder MatrixOrder

def unconditionalMixedConjugateSelectedBranchUnitary
    {ι τ : Type*} [Fintype ι] [DecidableEq ι]
    [Fintype τ] [DecidableEq τ]
    (U V : Matrix.unitaryGroup ι ℂ) :
    Matrix.unitaryGroup ((ι × ι) × τ) ℂ := by
  classical
  refine
    ⟨(((U : Matrix ι ι ℂ) ⊗ₖ
        (V : Matrix ι ι ℂ)) ⊗ₖ
        (1 : Matrix τ τ ℂ)), ?_⟩
  exact Matrix.kronecker_mem_unitary
    (Matrix.kronecker_mem_unitary U.property V.property)
    (Matrix.unitaryGroup τ ℂ).one_mem

def unconditionalMixedConjugateSelectedBranchLocalAction
    {ι τ : Type*} [Fintype ι] [DecidableEq ι]
    [Fintype τ] [DecidableEq τ]
    (U V : Matrix.unitaryGroup ι ℂ)
    (z : EuclideanSpace ℂ ((ι × ι) × τ)) :
    EuclideanSpace ℂ ((ι × ι) × τ) :=
  toLp 2
    ((unconditionalMixedConjugateSelectedBranchUnitary
        (τ := τ) U V :
      Matrix ((ι × ι) × τ) ((ι × ι) × τ) ℂ).mulVec
      (ofLp z))

end

end QuantumParallelRepetition
