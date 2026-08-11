import Definitions.Def_quantum_parallel_repetition_game
import Definitions.Def_qpr_core_25
import Theorems.Thm_QuantumParallelRepetition_unconditionalActualPhysicalMixedAcceptedSpectralGauge_stage
import Theorems.Thm_QuantumParallelRepetition_unconditionalActualCanonicalFullSource_eq_rawSelectedStage
import Mathlib.Algebra.BigOperators.Group.Finset.Basic
import Mathlib.Algebra.BigOperators.Group.Finset.Defs
import Mathlib.Algebra.BigOperators.Group.Finset.Piecewise
import Mathlib.Algebra.BigOperators.Ring.Finset
import Mathlib.Algebra.Group.Basic
import Mathlib.Algebra.Group.Defs
import Mathlib.Algebra.Group.Pi.Basic
import Mathlib.Algebra.Group.Submonoid.Defs
import Mathlib.Algebra.GroupWithZero.Defs
import Mathlib.Algebra.Module.Defs
import Mathlib.Algebra.Module.Pi
import Mathlib.Algebra.Notation.Defs
import Mathlib.Algebra.Ring.CompTypeclasses
import Mathlib.Algebra.Ring.Defs
import Mathlib.Algebra.Ring.Hom.Defs
import Mathlib.Algebra.Star.Basic
import Mathlib.Algebra.Star.Unitary
import Mathlib.AlgebraicTopology.SimplexCategory.Basic
import Mathlib.AlgebraicTopology.SimplexCategory.Defs
import Mathlib.Analysis.CStarAlgebra.Classes
import Mathlib.Analysis.InnerProductSpace.Basic
import Mathlib.Analysis.InnerProductSpace.PiL2
import Mathlib.Analysis.Matrix.Normed
import Mathlib.Analysis.Matrix.Order
import Mathlib.Analysis.Normed.Group.Defs
import Mathlib.Analysis.Normed.Lp.PiLp
import Mathlib.Analysis.Normed.Lp.WithLp
import Mathlib.Analysis.Normed.Operator.LinearIsometry
import Mathlib.Analysis.Normed.Ring.Basic
import Mathlib.Analysis.RCLike.Basic
import Mathlib.Data.Complex.Basic
import Mathlib.Data.ENNReal.Basic
import Mathlib.Data.Finset.Defs
import Mathlib.Data.Fintype.Basic
import Mathlib.Data.Fintype.BigOperators
import Mathlib.Data.Fintype.Card
import Mathlib.Data.Fintype.Defs
import Mathlib.Data.Fintype.Pi
import Mathlib.Data.Fintype.Prod
import Mathlib.Data.Fintype.Sigma
import Mathlib.Data.FunLike.Basic
import Mathlib.Data.FunLike.Equiv
import Mathlib.Data.Matrix.Basic
import Mathlib.Data.Matrix.Block
import Mathlib.Data.Matrix.Diagonal
import Mathlib.Data.Matrix.Mul
import Mathlib.Data.Nat.Cast.Defs
import Mathlib.Data.Nat.Init
import Mathlib.Data.Prod.Basic
import Mathlib.Data.Real.Basic
import Mathlib.Data.SetLike.Basic
import Mathlib.Data.Sigma.Basic
import Mathlib.LinearAlgebra.Matrix.ConjTranspose
import Mathlib.LinearAlgebra.Matrix.Defs
import Mathlib.LinearAlgebra.Matrix.Kronecker
import Mathlib.LinearAlgebra.UnitaryGroup
import Mathlib.Logic.Equiv.Basic
import Mathlib.Logic.Equiv.Defs
import Mathlib.Logic.Equiv.Prod
import Mathlib.MeasureTheory.Measure.MeasureSpace
import Mathlib.Topology.Defs.Filter

namespace QuantumParallelRepetition

open scoped ComplexOrder Matrix BigOperators InnerProductSpace
open Complex Matrix Finset

noncomputable section

open WithLp
open scoped BigOperators Kronecker ComplexOrder MatrixOrder

theorem unconditionalMixedConjugateSelectedBranch_tensorAction
    {ι τ : Type*} [Fintype ι] [DecidableEq ι]
    [Fintype τ] [DecidableEq τ]
    (U V : Matrix.unitaryGroup ι ℂ)
    (stage : EuclideanSpace ℂ (ι × ι))
    (work : EuclideanSpace ℂ τ) :
    unconditionalMixedConjugateSelectedBranchLocalAction
        U V
        (unconditionalMatchedVerifierTensor stage work) =
      unconditionalMatchedVerifierTensor
        (toLp 2
          ((((U : Matrix ι ι ℂ) ⊗ₖ
              (V : Matrix ι ι ℂ)).mulVec
            (ofLp stage)))) work := by
  classical
  ext ⟨⟨a, b⟩, t⟩
  simp [unconditionalMixedConjugateSelectedBranchLocalAction,
    unconditionalMixedConjugateSelectedBranchUnitary,
    unconditionalMatchedVerifierTensor,
    Matrix.mulVec, dotProduct, Matrix.kroneckerMap_apply,
    Matrix.one_apply,
    Fintype.sum_prod_type, Finset.sum_mul, mul_assoc]

end

noncomputable section

open WithLp
open scoped BigOperators Kronecker ComplexOrder MatrixOrder

theorem unconditionalSourcePhysicalStoppingBranch_sigmaContinuation
    {R κ : Type} [Fintype R] [DecidableEq R]
    [Fintype κ] [DecidableEq κ]
    (U V : R → Matrix.unitaryGroup κ ℂ)
    (z : EuclideanSpace ℂ ((Σ _ : R, κ) × (Σ _ : R, κ)))
    (r s : R) :
    actualStoppingBranchVector
      (dSVUniformDensityPhysicalAsyncSigmaContinuation U V z)
      r s =
      toLp 2
        ((((U r : Matrix κ κ ℂ) ⊗ₖ (V s : Matrix κ κ ℂ)).mulVec
          (ofLp (actualStoppingBranchVector z r s)))) := by
  classical
  ext ⟨i, j⟩
  simp [actualStoppingBranchVector,
    dSVUniformDensityPhysicalAsyncSigmaContinuation,
    coherentSharedRandomControlledUnitary,
    Matrix.mulVec, dotProduct, Matrix.kroneckerMap_apply,
    Matrix.blockDiagonal'_apply,
    Fintype.sum_prod_type, Fintype.sum_sigma]

theorem
    unconditionalSourcePhysicalCleanedStoppingLocalAction_reindex
    {S B N d L m : ℕ}
    (U V : Matrix.unitaryGroup
      (Fin (d *
        dSVDensityRationalPublicMultiscalePhaseResidual
          S B N d L m)) ℂ)
    (z : EuclideanSpace ℂ
      (Fin (d *
        dSVDensityRationalPublicMultiscalePhaseResidual
          S B N d L m) ×
       Fin (d *
        dSVDensityRationalPublicMultiscalePhaseResidual
          S B N d L m))) :
    actualStoppingQuestionLocalAction
      (unconditionalSourcePhysicalCleanedTargetFirstUnitary
        S B N d L m U)
      (unconditionalSourcePhysicalCleanedTargetFirstUnitary
        S B N d L m V)
      (unconditionalSourcePhysicalStoppingTargetFirstStateEquiv
        S B N d L m z) =
      unconditionalSourcePhysicalStoppingTargetFirstStateEquiv
        S B N d L m (localUnitaryAction U V z) := by
  classical
  let e := unconditionalSourcePhysicalStoppingTargetFirstIndexEquiv
    S B N d L m
  ext ⟨a, b⟩
  change
    (∑ q :
      (Σ _ : Fin (L + 1),
        UnconditionalSourcePhysicalStoppingPhaseFiber
          S B N d L m) ×
      (Σ _ : Fin (L + 1),
        UnconditionalSourcePhysicalStoppingPhaseFiber
          S B N d L m),
      (U : Matrix _ _ ℂ) (e.symm a) (e.symm q.1) *
        (V : Matrix _ _ ℂ) (e.symm b) (e.symm q.2) *
        z (e.symm q.1, e.symm q.2)) =
      ∑ q :
        Fin (d *
          dSVDensityRationalPublicMultiscalePhaseResidual
            S B N d L m) ×
        Fin (d *
          dSVDensityRationalPublicMultiscalePhaseResidual
            S B N d L m),
        (U : Matrix _ _ ℂ) (e.symm a) q.1 *
          (V : Matrix _ _ ℂ) (e.symm b) q.2 * z q
  simpa using
    (Equiv.sum_comp (Equiv.prodCongr e e)
      (fun q :
        (Σ _ : Fin (L + 1),
          UnconditionalSourcePhysicalStoppingPhaseFiber
            S B N d L m) ×
        (Σ _ : Fin (L + 1),
          UnconditionalSourcePhysicalStoppingPhaseFiber
            S B N d L m) =>
        (U : Matrix _ _ ℂ) (e.symm a) (e.symm q.1) *
          (V : Matrix _ _ ℂ) (e.symm b) (e.symm q.2) *
          z (e.symm q.1, e.symm q.2))).symm

theorem
    unconditionalSourcePhysicalCleanedStoppingFixedSource_physicalAction
    {S B N d L m : ℕ}
    (width : Fin S → ℝ) (schedule : Fin L → Fin S)
    (ξ ζ : BipartiteUnitVector d) :
    actualStoppingQuestionLocalAction
      (unconditionalSourcePhysicalCleanedTargetFirstUnitary
        S B N d L m
        (dSVDensityRationalHeterogeneousTargetFirstSpectralAlice
          S B N d L m width schedule ξ))
      (unconditionalSourcePhysicalCleanedTargetFirstUnitary
        S B N d L m
        (dSVDensityRationalHeterogeneousTargetFirstSpectralBob
          S B N d L m width schedule ζ))
      (unconditionalSourcePhysicalCleanedStoppingFixedSource
        S B N d L m) =
      unconditionalSourcePhysicalStoppingTargetFirstStateEquiv
        S B N d L m
        (dSVDensityRationalHeterogeneousOriginalStoppedState
          S B N d L m width schedule ξ ζ) := by
  unfold unconditionalSourcePhysicalCleanedStoppingFixedSource
  rw [unconditionalSourcePhysicalCleanedStoppingLocalAction_reindex]
  rfl

end

noncomputable section

open WithLp
open scoped BigOperators Kronecker ComplexOrder MatrixOrder

attribute [local instance] Classical.propDecidable

@[simp] theorem
    unconditionalActualCleanedSelectedFiniteStageDecoder_succ
    {S B N d L m : ℕ} {R : Type}
    [Fintype R] [DecidableEq R]
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
    unconditionalActualCleanedSelectedFiniteStageDecoder
        phaseSplit Q width schedule ξ spectral A j.succ =
      unconditionalActualCleanedSelectedFullStageUnitary
        phaseSplit Q width schedule ξ spectral A j := by
  simp [unconditionalActualCleanedSelectedFiniteStageDecoder]

theorem unconditionalActualCleanedSelectedMatchedStoppingBranch
    {S B N d L m : ℕ} {R : Type}
    [Fintype R] [DecidableEq R]
    (phaseSplit :
      DSVDensityRationalPublicMultiscalePhaseIndex S B ≃
        Fin B × R)
    (Q : ℕ) (width : Fin S → ℝ)
    (schedule : Fin L → Fin S)
    (ξ ζ : BipartiteUnitVector d)
    (A C : Fin B → Option ℕ → Matrix.unitaryGroup (Fin (N * m)) ℂ)
    (j : Fin L) :
    actualStoppingBranchVector
      (dSVUniformDensityPhysicalAsyncSigmaContinuation
        (unconditionalActualCleanedSelectedFiniteStageDecoder
          phaseSplit Q width schedule ξ
          (dSVUniformDensityAliceHistorySpectralCopy (N := N) ξ) A)
        (unconditionalActualCleanedSelectedFiniteStageDecoder
          phaseSplit Q width schedule ζ
          ((dSVUniformDensityBobHistoryCopyBasis (N := N) ζ)⁻¹) C)
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
            S B N d L m))) j.succ j.succ =
      toLp 2
        ((((unconditionalActualCleanedSelectedFullStageUnitary
              phaseSplit Q width schedule ξ
              (dSVUniformDensityAliceHistorySpectralCopy
                (N := N) ξ) A j :
            Matrix (UnconditionalSourcePhysicalStoppingPhaseFiber
              S B N d L m)
              (UnconditionalSourcePhysicalStoppingPhaseFiber
                S B N d L m) ℂ) ⊗ₖ
          (unconditionalActualCleanedSelectedFullStageUnitary
              phaseSplit Q width schedule ζ
              ((dSVUniformDensityBobHistoryCopyBasis
                (N := N) ζ)⁻¹) C j :
            Matrix (UnconditionalSourcePhysicalStoppingPhaseFiber
              S B N d L m)
              (UnconditionalSourcePhysicalStoppingPhaseFiber
                S B N d L m) ℂ)).mulVec
            (ofLp
              (actualStoppingBranchVector
                (unconditionalSourcePhysicalStoppingTargetFirstStateEquiv
                  S B N d L m
                  (dSVDensityRationalHeterogeneousOriginalStoppedState
                    S B N d L m width schedule ξ ζ))
                j.succ j.succ)))) := by
  rw [unconditionalSourcePhysicalCleanedStoppingFixedSource_physicalAction,
    unconditionalSourcePhysicalStoppingBranch_sigmaContinuation,
    unconditionalActualCleanedSelectedFiniteStageDecoder_succ,
    unconditionalActualCleanedSelectedFiniteStageDecoder_succ]

end

noncomputable section

open WithLp
open scoped BigOperators Kronecker ComplexOrder MatrixOrder

theorem unconditionalActualCanonicalRawSelectedPhysicalStage_eq
    {B N d m : ℕ} (w : ℝ)
    (ξ ζ : BipartiteUnitVector d) :
    unconditionalActualCanonicalRawSelectedPhysicalStage
        (B := B) (N := N) (m := m) w ξ ζ =
      unconditionalActualPhysicalMixedAcceptedRawStage
        (B := B) (N := N) (m := m) w ξ ζ := by
  rfl

end

noncomputable section

open WithLp
open scoped BigOperators Kronecker ComplexOrder MatrixOrder

theorem unconditionalSelectedBranchLocalAction_mul
    {s t : Type*} [Fintype s] [DecidableEq s]
    [Fintype t] [DecidableEq t]
    (U₁ U₂ V₁ V₂ : Matrix.unitaryGroup s ℂ)
    (z : EuclideanSpace ℂ ((s × s) × t)) :
    unconditionalMixedConjugateSelectedBranchLocalAction
      (U₁ * U₂) (V₁ * V₂) z =
    unconditionalMixedConjugateSelectedBranchLocalAction U₁ V₁
      (unconditionalMixedConjugateSelectedBranchLocalAction
        U₂ V₂ z) := by
  classical
  simp [unconditionalMixedConjugateSelectedBranchLocalAction,
    unconditionalMixedConjugateSelectedBranchUnitary,
    Matrix.mulVec_mulVec, Matrix.mul_kronecker_mul]
  apply congrArg
    (fun (W : Matrix ((s × s) × t) ((s × s) × t) ℂ) =>
      W.mulVec (ofLp z))
  simpa using
    (Matrix.mul_kronecker_mul
      ((U₁ : Matrix s s ℂ) ⊗ₖ (V₁ : Matrix s s ℂ))
      ((U₂ : Matrix s s ℂ) ⊗ₖ (V₂ : Matrix s s ℂ))
      (1 : Matrix t t ℂ) (1 : Matrix t t ℂ))

theorem unconditionalRegroupedSelectedRetainedReindexAction
    {κ ι τ δ : Type}
    [Fintype κ] [DecidableEq κ]
    [Fintype ι] [DecidableEq ι]
    [Fintype τ] [DecidableEq τ]
    [Fintype δ] [DecidableEq δ]
    (e : κ ≃ ι × τ)
    (workEquiv : τ × τ ≃ δ)
    (U V : Matrix.unitaryGroup ι ℂ)
    (z : EuclideanSpace ℂ (κ × κ)) :
    let regroup :=
      (unconditionalSelectedRetainedBilateralRegroup ι τ).trans
        (Equiv.prodCongr (Equiv.refl (ι × ι)) workEquiv)
    let sigma :=
      (Equiv.prodComm ι τ).trans (Equiv.sigmaEquivProd τ ι).symm
    let localEquiv := e.trans sigma
    let A := unconditionalSourceFixedPureStoppedSigmaReindexedUnitary
      localEquiv.symm (coherentSharedRandomControlledUnitary
        (fun _ : τ => U))
    let B := unconditionalSourceFixedPureStoppedSigmaReindexedUnitary
      localEquiv.symm (coherentSharedRandomControlledUnitary
        (fun _ : τ => V))
    let state := LinearIsometryEquiv.piLpCongrLeft 2 ℂ ℂ
      ((Equiv.prodCongr e e).trans regroup)
    state
      (toLp 2
        ((((A : Matrix κ κ ℂ) ⊗ₖ
          (B : Matrix κ κ ℂ)).mulVec (ofLp z)))) =
      unconditionalMixedConjugateSelectedBranchLocalAction U V
        (state z) := by
  classical
  dsimp
  ext ⟨⟨i, j⟩, c⟩
  have reindex (f : κ × κ → ℂ) :
      (∑ p : κ × κ, f p) =
        ∑ p : (ι × τ) × (ι × τ),
          f (e.symm p.1, e.symm p.2) := by
    simpa using
      (Equiv.sum_comp (Equiv.prodCongr e e)
        (fun p : (ι × τ) × (ι × τ) =>
          f (e.symm p.1, e.symm p.2)))
  change
    (∑ p : κ × κ,
      (unconditionalSourceFixedPureStoppedSigmaReindexedUnitary
          (((Equiv.sigmaEquivProd τ ι).trans
            (Equiv.prodComm τ ι)).trans e.symm)
          (coherentSharedRandomControlledUnitary
            (fun _ : τ => U)) : Matrix κ κ ℂ)
          (e.symm (i, (workEquiv.symm c).1)) p.1 *
        (unconditionalSourceFixedPureStoppedSigmaReindexedUnitary
          (((Equiv.sigmaEquivProd τ ι).trans
            (Equiv.prodComm τ ι)).trans e.symm)
          (coherentSharedRandomControlledUnitary
            (fun _ : τ => V)) : Matrix κ κ ℂ)
          (e.symm (j, (workEquiv.symm c).2)) p.2 * z p) = _
  rw [reindex]
  simp [unconditionalSourceFixedPureStoppedSigmaReindexedUnitary,
    coherentSharedRandomControlledUnitary,
    unconditionalSelectedRetainedBilateralRegroup,
    unconditionalMixedConjugateSelectedBranchLocalAction,
    unconditionalMixedConjugateSelectedBranchUnitary,
    Matrix.mulVec, dotProduct,
    Matrix.blockDiagonal'_apply, Matrix.one_apply,
    Matrix.kroneckerMap_apply, LinearIsometryEquiv.piLpCongrLeft_apply,
    Equiv.piCongrLeft', Fintype.sum_prod_type, mul_assoc]

end

noncomputable section

open WithLp
open scoped BigOperators Kronecker ComplexOrder MatrixOrder

attribute [local instance] Classical.propDecidable

theorem unconditionalActualFixedSourceFullBilateralRegroup_eq
    {B N d L m : ℕ} {R : Type} (j : Fin L) :
    unconditionalSourcePhysicalCleanedFullBilateralRegroup
        (R := R) (B := B) (N := N) (d := d) (m := m) j =
      (unconditionalSelectedRetainedBilateralRegroup
        (UnconditionalSelectedCopyLocalIndex B d N m)
        (UnconditionalActualCleanedSelectedRetainedIndex
          (N := N) (d := d) j R)).trans
        (Equiv.prodCongr
          (Equiv.refl
            (UnconditionalSelectedCopyLocalIndex B d N m ×
             UnconditionalSelectedCopyLocalIndex B d N m))
          (unconditionalActualFixedSourceRetainedHistoryPairEquiv
            (N := N) (d := d) (R := R) j)) := by
  apply Equiv.ext
  rintro ⟨⟨selectedA, beforeA, afterA, phaseA⟩,
    ⟨selectedB, beforeB, afterB, phaseB⟩⟩
  rfl

theorem unconditionalActualFixedSourceFullPhysicalBilateralStageTransport
    {S B N d L m : ℕ} {R : Type}
    [Fintype R] [DecidableEq R]
    (phaseSplit :
      DSVDensityRationalPublicMultiscalePhaseIndex S B ≃
        Fin B × R)
    (Q : ℕ) (width : Fin S → ℝ) (schedule : Fin L → Fin S)
    (ξ ζ : BipartiteUnitVector d)
    (spectralA spectralB : Matrix.unitaryGroup
      (DSVUniformDensityThresholdLocalIndex N d) ℂ)
    (A C : Fin B → Option ℕ → Matrix.unitaryGroup (Fin (N * m)) ℂ)
    (j : Fin L)
    (z : EuclideanSpace ℂ
      (UnconditionalSourcePhysicalStoppingPhaseFiber
          S B N d L m ×
       UnconditionalSourcePhysicalStoppingPhaseFiber
          S B N d L m)) :
    unconditionalSourcePhysicalCleanedFullBilateralStateIsometry
        phaseSplit j
      (toLp 2
        (((unconditionalActualCleanedSelectedFullStageUnitary
              phaseSplit Q width schedule ξ spectralA A j :
              Matrix (UnconditionalSourcePhysicalStoppingPhaseFiber
                S B N d L m)
                (UnconditionalSourcePhysicalStoppingPhaseFiber
                  S B N d L m) ℂ) ⊗ₖ
            (unconditionalActualCleanedSelectedFullStageUnitary
              phaseSplit Q width schedule ζ spectralB C j :
              Matrix (UnconditionalSourcePhysicalStoppingPhaseFiber
                S B N d L m)
                (UnconditionalSourcePhysicalStoppingPhaseFiber
                  S B N d L m) ℂ)).mulVec
          (ofLp z))) =
      unconditionalMixedConjugateSelectedBranchLocalAction
        (unconditionalActualCleanedSelectedStageBucketUnitary
            Q (width (schedule j)) ξ A *
          unconditionalActualCleanedSelectedStageSpectralUnitary
            (B := B) (m := m) spectralA)
        (unconditionalActualCleanedSelectedStageBucketUnitary
            Q (width (schedule j)) ζ C *
          unconditionalActualCleanedSelectedStageSpectralUnitary
            (B := B) (m := m) spectralB)
        (unconditionalSourcePhysicalCleanedFullBilateralStateIsometry
          phaseSplit j z) := by
  classical
  let e :
      UnconditionalSourcePhysicalStoppingPhaseFiber
          S B N d L m ≃
        UnconditionalSelectedCopyLocalIndex B d N m ×
          UnconditionalActualCleanedSelectedRetainedIndex
            (N := N) (d := d) j R :=
    unconditionalSourcePhysicalCleanedFullLocalIndexEquiv
      (N := N) (d := d) (m := m) phaseSplit j
  let work :=
    unconditionalActualFixedSourceRetainedHistoryPairEquiv
      (N := N) (d := d) (R := R) j
  let UA :=
    unconditionalActualCleanedSelectedStageBucketUnitary
      Q (width (schedule j)) ξ A *
      unconditionalActualCleanedSelectedStageSpectralUnitary
        (B := B) (m := m) spectralA
  let UB :=
    unconditionalActualCleanedSelectedStageBucketUnitary
      Q (width (schedule j)) ζ C *
      unconditionalActualCleanedSelectedStageSpectralUnitary
        (B := B) (m := m) spectralB
  have transport :=
    unconditionalRegroupedSelectedRetainedReindexAction
      e work UA UB z
  simpa only [unconditionalActualCleanedSelectedFullStageUnitary,
    unconditionalSourcePhysicalCleanedFullBilateralStateIsometry,
    unconditionalActualFixedSourceFullBilateralRegroup_eq,
    e, work, UA, UB] using transport

end

end QuantumParallelRepetition


open QuantumParallelRepetition
open scoped ComplexOrder Matrix BigOperators InnerProductSpace
open Complex Matrix Finset
open WithLp
open scoped BigOperators Kronecker ComplexOrder MatrixOrder
attribute [local instance] Classical.propDecidable

theorem solution
    {S B N d L m : ℕ}
    (Q : ℕ) (width : Fin S → ℝ) (schedule : Fin L → Fin S)
    (ξ ζ : BipartiteUnitVector d)
    (A C : Fin B → Option ℕ → Matrix.unitaryGroup (Fin (N * m)) ℂ)
    (j : Fin L)
    (positive : 0 < width (schedule j)) (grid : 0 < N) :
    unconditionalSourcePhysicalCleanedFullBilateralStateIsometry
        (unconditionalActualMultiscalePhaseIndexEquiv
          (schedule j)).symm j
      (actualStoppingBranchVector
        (dSVUniformDensityPhysicalAsyncSigmaContinuation
          (unconditionalActualCleanedSelectedFiniteStageDecoder
            (unconditionalActualMultiscalePhaseIndexEquiv
              (schedule j)).symm
            Q width schedule ξ
            (dSVUniformDensityAliceHistorySpectralCopy
              (N := N) ξ) A)
          (unconditionalActualCleanedSelectedFiniteStageDecoder
            (unconditionalActualMultiscalePhaseIndexEquiv
              (schedule j)).symm
            Q width schedule ζ
            ((dSVUniformDensityBobHistoryCopyBasis
              (N := N) ζ)⁻¹) C)
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
              S B N d L m))) j.succ j.succ) =
      unconditionalSelectedCopyCleanedMatchedBranch
        (N := N) (B := B) (m := m)
        Q width schedule ξ ζ A C j
        (unconditionalActualCanonicalRetainedPhaseTail
          (S := S) (B := B) (N := N) (d := d) (L := L) j) := by
  let phaseSplit :
      DSVDensityRationalPublicMultiscalePhaseIndex S B ≃
        Fin B × UnconditionalActualCanonicalRetainedPhaseIndex S B :=
    (unconditionalActualMultiscalePhaseIndexEquiv
      (B := B) (schedule j)).symm
  have sameSource :
      actualStoppingBranchVector
          (unconditionalSourcePhysicalStoppingTargetFirstStateEquiv
            S B N d L m
            (dSVDensityRationalHeterogeneousOriginalStoppedState
              S B N d L m width schedule ξ ζ)) j.succ j.succ =
        unconditionalActualCanonicalFixedSourceMatchedBranch
          (B := B) (m := m) width schedule ξ ζ j := by
    unfold unconditionalActualCanonicalFixedSourceMatchedBranch
    rw [unconditionalSourcePhysicalCleanedStoppingFixedSource_physicalAction]
  change
    unconditionalSourcePhysicalCleanedFullBilateralStateIsometry
        phaseSplit j
      (actualStoppingBranchVector
        (dSVUniformDensityPhysicalAsyncSigmaContinuation
          (unconditionalActualCleanedSelectedFiniteStageDecoder
            phaseSplit Q width schedule ξ
            (dSVUniformDensityAliceHistorySpectralCopy
              (N := N) ξ) A)
          (unconditionalActualCleanedSelectedFiniteStageDecoder
            phaseSplit Q width schedule ζ
            ((dSVUniformDensityBobHistoryCopyBasis
              (N := N) ζ)⁻¹) C)
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
              S B N d L m))) j.succ j.succ) = _
  rw [unconditionalActualCleanedSelectedMatchedStoppingBranch
    phaseSplit Q width schedule ξ ζ A C j]
  rw [unconditionalActualFixedSourceFullPhysicalBilateralStageTransport]
  rw [sameSource,
    unconditionalActualCanonicalFullSource_eq_rawSelectedStage]
  rw [unconditionalSelectedBranchLocalAction_mul,
    unconditionalMixedConjugateSelectedBranch_tensorAction,
    unconditionalActualCanonicalRawSelectedPhysicalStage_eq,
    unconditionalActualPhysicalMixedAcceptedSpectralGauge_stage
      positive grid ξ ζ,
    unconditionalMixedConjugateSelectedBranch_tensorAction]
  congr 1
