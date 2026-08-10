import Definitions.Def_quantum_parallel_repetition_game
import Definitions.Def_qpr_core_41
import Mathlib.Algebra.BigOperators.Group.Finset.Defs
import Mathlib.Algebra.Group.Defs
import Mathlib.Algebra.Group.Submonoid.Defs
import Mathlib.Algebra.GroupWithZero.Defs
import Mathlib.Algebra.Ring.Defs
import Mathlib.Algebra.Star.Basic
import Mathlib.Algebra.Star.Unitary
import Mathlib.AlgebraicTopology.SimplexCategory.Basic
import Mathlib.AlgebraicTopology.SimplexCategory.Defs
import Mathlib.Analysis.InnerProductSpace.Basic
import Mathlib.Analysis.InnerProductSpace.PiL2
import Mathlib.Analysis.Matrix.Normed
import Mathlib.Analysis.Matrix.Order
import Mathlib.Analysis.Normed.Lp.WithLp
import Mathlib.Analysis.RCLike.Basic
import Mathlib.Data.Complex.Basic
import Mathlib.Data.ENNReal.Basic
import Mathlib.Data.Fintype.Basic
import Mathlib.Data.Fintype.Card
import Mathlib.Data.Fintype.Defs
import Mathlib.Data.Fintype.Pi
import Mathlib.Data.Fintype.Prod
import Mathlib.Data.Fintype.Sigma
import Mathlib.Data.FunLike.Basic
import Mathlib.Data.FunLike.Equiv
import Mathlib.Data.Matrix.Basic
import Mathlib.Data.Matrix.Mul
import Mathlib.Data.Nat.Cast.Defs
import Mathlib.Data.Nat.Init
import Mathlib.Data.Real.Basic
import Mathlib.Data.SetLike.Basic
import Mathlib.Data.Sigma.Basic
import Mathlib.LinearAlgebra.Matrix.ConjTranspose
import Mathlib.LinearAlgebra.Matrix.Defs
import Mathlib.LinearAlgebra.Matrix.Kronecker
import Mathlib.LinearAlgebra.UnitaryGroup
import Mathlib.Logic.Equiv.Defs
import Mathlib.Logic.Equiv.Fin.Basic
import Mathlib.Logic.Equiv.Prod
import Mathlib.MeasureTheory.Measure.MeasureSpace
import Mathlib.Topology.Defs.Filter

namespace QuantumParallelRepetition

open scoped ComplexOrder Matrix BigOperators InnerProductSpace
open Complex Matrix Finset

noncomputable section

open WithLp
open scoped BigOperators Kronecker ComplexOrder MatrixOrder

attribute [local instance] Classical.propDecidable

def unconditionalSourceFlagControlledTensorUnitary
    {ι κ : Type} [Fintype ι] [DecidableEq ι]
    [Fintype κ] [DecidableEq κ]
    (U : Matrix.unitaryGroup ι ℂ)
    (V : Matrix.unitaryGroup κ ℂ) :
    Matrix.unitaryGroup (ι × κ) ℂ :=
  ⟨(U : Matrix ι ι ℂ) ⊗ₖ (V : Matrix κ κ ℂ),
    Matrix.kronecker_mem_unitary U.property V.property⟩

def unconditionalSourceFlagControlledStagePhysicalIndexEquiv
    (B N d m : ℕ) :
    (Σ _ : Fin B,
      DSVUniformDensityThresholdLocalIndex N d × Fin m) ≃
      UnconditionalSelectedCopyLocalIndex B d N m where
  toFun q :=
    ⟨(q.1, q.2.1.2), finProdFinEquiv (q.2.1.1, q.2.2)⟩
  invFun q :=
    let work := finProdFinEquiv.symm q.2
    ⟨q.1.1, (⟨work.1, q.1.2⟩, work.2)⟩
  left_inv := by
    rintro ⟨phase, ⟨⟨threshold, spectral⟩, harmonic⟩⟩
    simp
  right_inv := by
    rintro ⟨⟨phase, spectral⟩, work⟩
    simp
    exact finProdFinEquiv.apply_symm_apply work

def unconditionalSourceFlagControlledStageSpectralUnitary
    {B N d m : ℕ}
    (spectral : Matrix.unitaryGroup
      (DSVUniformDensityThresholdLocalIndex N d) ℂ) :
    Matrix.unitaryGroup
      (UnconditionalSelectedCopyLocalIndex B d N m) ℂ :=
  unconditionalSourceFixedPureStoppedSigmaReindexedUnitary
    (unconditionalSourceFlagControlledStagePhysicalIndexEquiv
      B N d m)
    (coherentSharedRandomControlledUnitary
      (fun _ : Fin B =>
        unconditionalSourceFlagControlledTensorUnitary
          spectral (1 : Matrix.unitaryGroup (Fin m) ℂ)))

def unconditionalSourceFlagControlledStageBucketUnitary
    {B N d m : ℕ} (Q : ℕ) (w : ℝ)
    (ξ : BipartiteUnitVector d)
    (A : Fin B → Option ℕ → Matrix.unitaryGroup (Fin (N * m)) ℂ) :
    Matrix.unitaryGroup
      (UnconditionalSelectedCopyLocalIndex B d N m) ℂ :=
  coherentSharedRandomControlledUnitary
    (fun q : Fin B × Fin d =>
      A q.1 (dSVDensityRationalPublicLogRankBucket Q q.1
        (dSVDensityRationalPhysicalAcceptedRank w N ξ q.2)))

def unconditionalSourceFlagControlledFullStageUnitary
    {S B N d L m : ℕ} {R : Type} [Fintype R] [DecidableEq R]
    (phaseSplit :
      DSVDensityRationalPublicMultiscalePhaseIndex S B ≃
        Fin B × R)
    (Q : ℕ) (width : Fin S → ℝ)
    (schedule : Fin L → Fin S)
    (ξ : BipartiteUnitVector d)
    (spectral : Matrix.unitaryGroup
      (DSVUniformDensityThresholdLocalIndex N d) ℂ)
    (A : Fin B → Option ℕ → Matrix.unitaryGroup (Fin (N * m)) ℂ)
    (j : Fin L) :
    Matrix.unitaryGroup
      (UnconditionalSourcePhysicalStoppingPhaseFiber
        S B N d L m) ℂ := by
  let retained :=
    UnconditionalSourceFlagControlledRetainedIndex
      (N := N) (d := d) j R
  let selected := UnconditionalSelectedCopyLocalIndex B d N m
  let regroup :
      UnconditionalSourcePhysicalStoppingPhaseFiber
        S B N d L m ≃ (Σ _ : retained, selected) :=
    (unconditionalSourcePhysicalCleanedFullLocalIndexEquiv
      phaseSplit j).trans
      ((Equiv.prodComm selected retained).trans
        (Equiv.sigmaEquivProd retained selected).symm)
  exact
    unconditionalSourceFixedPureStoppedSigmaReindexedUnitary
      regroup.symm
      (coherentSharedRandomControlledUnitary
        (fun _ : retained =>
          unconditionalSourceFlagControlledStageBucketUnitary
            Q (width (schedule j)) ξ A *
          unconditionalSourceFlagControlledStageSpectralUnitary
            (B := B) (m := m) spectral))

def unconditionalSourceFlagControlledFiniteStageDecoder
    {S B N d L m : ℕ} {R : Type} [Fintype R] [DecidableEq R]
    (phaseSplit :
      DSVDensityRationalPublicMultiscalePhaseIndex S B ≃
        Fin B × R)
    (Q : ℕ) (width : Fin S → ℝ)
    (schedule : Fin L → Fin S)
    (ξ : BipartiteUnitVector d)
    (spectral : Matrix.unitaryGroup
      (DSVUniformDensityThresholdLocalIndex N d) ℂ)
    (A : Fin B → Option ℕ → Matrix.unitaryGroup (Fin (N * m)) ℂ) :
    Fin (L + 1) → Matrix.unitaryGroup
      (UnconditionalSourcePhysicalStoppingPhaseFiber
        S B N d L m) ℂ :=
  Fin.cases 1 (fun j =>
    unconditionalSourceFlagControlledFullStageUnitary
      phaseSplit Q width schedule ξ spectral A j)

end

noncomputable section

open WithLp
open scoped BigOperators Kronecker ComplexOrder MatrixOrder

attribute [local instance] Classical.propDecidable

def unconditionalActualPhysicalMixedAcceptedRawStage
    {B N d m : ℕ} (w : ℝ)
    (ξ ζ : BipartiteUnitVector d) :
    EuclideanSpace ℂ
      (UnconditionalSelectedCopyLocalIndex B d N m ×
       UnconditionalSelectedCopyLocalIndex B d N m) :=
  toLp 2 fun q =>
    ePRState B (q.1.1.1, q.2.1.1) *
      dSVDensityRationalPhysicalAcceptedOutcome w N ξ ζ
        (⟨(finProdFinEquiv.symm q.1.2).1, q.1.1.2⟩,
         ⟨(finProdFinEquiv.symm q.2.2).1, q.2.1.2⟩) *
      embezzlementState m
        ((finProdFinEquiv.symm q.1.2).2,
         (finProdFinEquiv.symm q.2.2).2)

end

noncomputable section

open WithLp
open scoped BigOperators Kronecker ComplexOrder MatrixOrder

abbrev UnconditionalActualCanonicalRetainedPhaseIndex (S B : ℕ) :=
  Fin (Fintype.card (Fin (S - 1) → Fin B))

def unconditionalActualCanonicalRetainedPhaseTail
    {S B N d L : ℕ} (j : Fin L) :
    EuclideanSpace ℂ
      (((Fin (L - j.val) →
          DSVUniformDensityThresholdLocalIndex N d) ×
        (Fin (L - j.val) →
          DSVUniformDensityThresholdLocalIndex N d)) ×
       (UnconditionalActualCanonicalRetainedPhaseIndex S B ×
        UnconditionalActualCanonicalRetainedPhaseIndex S B)) :=
  toLp 2 fun q =>
    dSVUniformDensityIndependentSharedState (L - j.val) N d q.1 *
      ePRState
        (Fintype.card (Fin (S - 1) → Fin B)) q.2

def unconditionalActualCanonicalFixedSourceMatchedBranch
    {S B N d L m : ℕ}
    (width : Fin S → ℝ) (schedule : Fin L → Fin S)
    (ξ ζ : BipartiteUnitVector d) (j : Fin L) :
    EuclideanSpace ℂ
      (UnconditionalSourcePhysicalStoppingPhaseFiber
          S B N d L m ×
       UnconditionalSourcePhysicalStoppingPhaseFiber
          S B N d L m) :=
  actualStoppingBranchVector
    (actualStoppingQuestionLocalAction
      (unconditionalSourcePhysicalCleanedTargetFirstUnitary
        S B N d L m
        (dSVDensityRationalHeterogeneousTargetFirstSpectralAlice
          S B N d L m width schedule ξ))
      (unconditionalSourcePhysicalCleanedTargetFirstUnitary
        S B N d L m
        (dSVDensityRationalHeterogeneousTargetFirstSpectralBob
          S B N d L m width schedule ζ))
      (unconditionalSourcePhysicalCleanedStoppingFixedSource
        S B N d L m)) j.succ j.succ

def unconditionalActualCanonicalRawSelectedPhysicalStage
    {B N d m : ℕ} (w : ℝ)
    (ξ ζ : BipartiteUnitVector d) :
    EuclideanSpace ℂ
      (UnconditionalSelectedCopyLocalIndex B d N m ×
       UnconditionalSelectedCopyLocalIndex B d N m) :=
  toLp 2 fun q =>
    ePRState B (q.1.1.1, q.2.1.1) *
      dSVDensityRationalPhysicalAcceptedOutcome w N ξ ζ
        (⟨(finProdFinEquiv.symm q.1.2).1, q.1.1.2⟩,
         ⟨(finProdFinEquiv.symm q.2.2).1, q.2.1.2⟩) *
      embezzlementState m
        ((finProdFinEquiv.symm q.1.2).2,
         (finProdFinEquiv.symm q.2.2).2)

end

noncomputable section

open WithLp
open scoped BigOperators Kronecker ComplexOrder MatrixOrder
  Matrix.Norms.L2Operator InnerProductSpace

def directDSVActualReindexedRetainedPOVM
    {C s t ι : Type*}
    [Fintype C] [Fintype s] [Fintype t] [Fintype ι]
    [DecidableEq s] [DecidableEq t] [DecidableEq ι]
    (e : ι ≃ s × t)
    (P : POVM C s) : POVM C ι :=
  reindexedPOVM e.symm (purificationAlicePOVM (k := t) P)

end

end QuantumParallelRepetition
