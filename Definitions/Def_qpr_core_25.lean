import Definitions.Def_quantum_parallel_repetition_game
import Definitions.Def_qpr_core_24
import Theorems.Thm_QuantumParallelRepetition_exactAlicePurificationFamily_posSemidef
import Theorems.Thm_QuantumParallelRepetition_exactBobPurificationFamily_posSemidef
import Theorems.Thm_QuantumParallelRepetition_exactGlobalHistoryLocalIndex_card_pos
import Theorems.Thm_QuantumParallelRepetition_exactSourceTupleGamma_norm
import Theorems.Thm_QuantumParallelRepetition_exactSourceSharedFlagWeight_nonneg
import Theorems.Thm_QuantumParallelRepetition_exactSourceSharedFlagWeight_sum
import Theorems.Thm_QuantumParallelRepetition_unconditionalSourcePhysicalCleanedStoppingFixedSource_norm
import Theorems.Thm_QuantumParallelRepetition_unconditionalSourcePhysicalCleanedSelectedHistoryEquiv_hit
import Theorems.Thm_QuantumParallelRepetition_exactSourceAnswerTypes_nonempty_of_remaining
import Mathlib.Algebra.Algebra.Basic
import Mathlib.Algebra.Algebra.Defs
import Mathlib.Algebra.BigOperators.Group.Finset.Defs
import Mathlib.Algebra.Field.Defs
import Mathlib.Algebra.Group.Action.Defs
import Mathlib.Algebra.Group.Action.Pi
import Mathlib.Algebra.Group.Basic
import Mathlib.Algebra.Group.Defs
import Mathlib.Algebra.Group.Pi.Basic
import Mathlib.Algebra.Group.Subgroup.Defs
import Mathlib.Algebra.Group.Submonoid.Defs
import Mathlib.Algebra.GroupWithZero.Action.Defs
import Mathlib.Algebra.GroupWithZero.Action.Pi
import Mathlib.Algebra.GroupWithZero.Defs
import Mathlib.Algebra.Module.Defs
import Mathlib.Algebra.Module.Pi
import Mathlib.Algebra.Module.Submodule.Defs
import Mathlib.Algebra.Ring.CompTypeclasses
import Mathlib.Algebra.Ring.Defs
import Mathlib.Algebra.Ring.Hom.Defs
import Mathlib.Algebra.Star.Basic
import Mathlib.Algebra.Star.StarAlgHom
import Mathlib.Algebra.Star.Unitary
import Mathlib.AlgebraicTopology.SimplexCategory.Basic
import Mathlib.AlgebraicTopology.SimplexCategory.Defs
import Mathlib.Analysis.CStarAlgebra.Classes
import Mathlib.Analysis.CStarAlgebra.Matrix
import Mathlib.Analysis.Complex.Basic
import Mathlib.Analysis.Complex.Norm
import Mathlib.Analysis.Complex.Order
import Mathlib.Analysis.InnerProductSpace.Adjoint
import Mathlib.Analysis.InnerProductSpace.Basic
import Mathlib.Analysis.InnerProductSpace.Defs
import Mathlib.Analysis.InnerProductSpace.PiL2
import Mathlib.Analysis.Matrix.Normed
import Mathlib.Analysis.Matrix.Order
import Mathlib.Analysis.Normed.Field.Basic
import Mathlib.Analysis.Normed.Group.Defs
import Mathlib.Analysis.Normed.Group.Uniform
import Mathlib.Analysis.Normed.Lp.PiLp
import Mathlib.Analysis.Normed.Lp.WithLp
import Mathlib.Analysis.Normed.Module.Basic
import Mathlib.Analysis.Normed.Operator.LinearIsometry
import Mathlib.Analysis.Normed.Ring.Basic
import Mathlib.Analysis.RCLike.Basic
import Mathlib.Data.Complex.Basic
import Mathlib.Data.ENNReal.Basic
import Mathlib.Data.Fin.SuccPred
import Mathlib.Data.FinEnum
import Mathlib.Data.Finset.Card
import Mathlib.Data.Finset.Defs
import Mathlib.Data.Finset.Empty
import Mathlib.Data.Finset.SDiff
import Mathlib.Data.Fintype.Basic
import Mathlib.Data.Fintype.Card
import Mathlib.Data.Fintype.Defs
import Mathlib.Data.Fintype.Perm
import Mathlib.Data.Fintype.Pi
import Mathlib.Data.Fintype.Prod
import Mathlib.Data.Fintype.Sets
import Mathlib.Data.Fintype.Sigma
import Mathlib.Data.Fintype.Sum
import Mathlib.Data.FunLike.Basic
import Mathlib.Data.FunLike.Equiv
import Mathlib.Data.Matrix.Basic
import Mathlib.Data.Matrix.Diagonal
import Mathlib.Data.Matrix.Mul
import Mathlib.Data.Nat.Cast.Defs
import Mathlib.Data.Nat.Init
import Mathlib.Data.Prod.Basic
import Mathlib.Data.Real.Basic
import Mathlib.Data.Real.Sqrt
import Mathlib.Data.SetLike.Basic
import Mathlib.Data.Sigma.Basic
import Mathlib.LinearAlgebra.Dimension.Finrank
import Mathlib.LinearAlgebra.Matrix.ConjTranspose
import Mathlib.LinearAlgebra.Matrix.Defs
import Mathlib.LinearAlgebra.Matrix.Kronecker
import Mathlib.LinearAlgebra.Matrix.PosDef
import Mathlib.LinearAlgebra.UnitaryGroup
import Mathlib.Logic.Equiv.Defs
import Mathlib.Logic.Equiv.Fin.Basic
import Mathlib.Logic.Equiv.Prod
import Mathlib.MeasureTheory.Function.AEEqFun
import Mathlib.MeasureTheory.Function.LpSpace.Basic
import Mathlib.MeasureTheory.Measure.Haar.OfBasis
import Mathlib.MeasureTheory.Measure.MeasureSpace
import Mathlib.MeasureTheory.Measure.MeasureSpaceDef
import Mathlib.MeasureTheory.Measure.Restrict
import Mathlib.Order.Interval.Set.Defs
import Mathlib.Topology.Algebra.ConstMulAction
import Mathlib.Topology.Algebra.Group.Defs
import Mathlib.Topology.Algebra.Module.ContinuousLinearMap.Basic
import Mathlib.Topology.Algebra.Monoid.Defs
import Mathlib.Topology.Algebra.UniformMulAction
import Mathlib.Topology.Defs.Filter
import Mathlib.Topology.EMetricSpace.Defs
import Mathlib.Topology.MetricSpace.Algebra
import Mathlib.Topology.MetricSpace.Pseudo.Defs
import Mathlib.Topology.UniformSpace.Cauchy
import Mathlib.Topology.UniformSpace.Defs

namespace QuantumParallelRepetition

open scoped ComplexOrder Matrix BigOperators InnerProductSpace
open Complex Matrix Finset

noncomputable section

open WithLp
open scoped BigOperators Kronecker ComplexOrder MatrixOrder

def unconditionalSourcePhysicalCleanedFullLocalIndexEquiv
    {P R : Type*} {B N d L m : ℕ}
    (phaseSplit : P ≃ Fin B × R) (j : Fin L) :
    (Σ _ : P × (Fin (L + 1) →
        DSVUniformDensityThresholdLocalIndex N d), Fin m) ≃
      UnconditionalSelectedCopyLocalIndex B d N m ×
        ((Fin j.val →
          DSVUniformDensityThresholdLocalIndex N d) ×
         ((Fin (L - j.val) →
           DSVUniformDensityThresholdLocalIndex N d) × R)) where
  toFun q :=
    let phase := phaseSplit q.1.1
    let history :=
      unconditionalSourcePhysicalCleanedSelectedHistoryEquiv j
        (DSVUniformDensityThresholdLocalIndex N d) q.1.2
    (⟨(phase.1, history.1.2),
       finProdFinEquiv (history.1.1, q.2)⟩,
      (history.2.1, (history.2.2, phase.2)))
  invFun q :=
    let work := finProdFinEquiv.symm q.1.2
    ⟨(phaseSplit.symm (q.1.1.1, q.2.2.2),
      (unconditionalSourcePhysicalCleanedSelectedHistoryEquiv j
        (DSVUniformDensityThresholdLocalIndex N d)).symm
        (⟨work.1, q.1.1.2⟩, (q.2.1, q.2.2.1))),
      work.2⟩
  left_inv := by
    rintro ⟨⟨phase, history⟩, work⟩
    simp only [Equiv.symm_apply_apply]
    change
      (⟨(phaseSplit.symm
          ((phaseSplit phase).1, (phaseSplit phase).2),
        (unconditionalSourcePhysicalCleanedSelectedHistoryEquiv j
          (DSVUniformDensityThresholdLocalIndex N d)).symm
          ((unconditionalSourcePhysicalCleanedSelectedHistoryEquiv j
            (DSVUniformDensityThresholdLocalIndex N d) history).1,
           ((unconditionalSourcePhysicalCleanedSelectedHistoryEquiv j
             (DSVUniformDensityThresholdLocalIndex N d) history).2.1,
            (unconditionalSourcePhysicalCleanedSelectedHistoryEquiv j
              (DSVUniformDensityThresholdLocalIndex N d) history).2.2))),
        work⟩ :
        Σ _ : P × (Fin (L + 1) →
          DSVUniformDensityThresholdLocalIndex N d), Fin m) =
          ⟨(phase, history), work⟩
    simp
    exact
      (unconditionalSourcePhysicalCleanedSelectedHistoryEquiv j
        (DSVUniformDensityThresholdLocalIndex N d)).symm_apply_apply
          history
  right_inv := by
    rintro ⟨⟨⟨phase, spectral⟩, packed⟩,
      ⟨before, ⟨later, remainder⟩⟩⟩
    simp
    exact finProdFinEquiv.apply_symm_apply packed

def unconditionalSourcePhysicalCleanedFullBilateralRegroup
    {R : Type*} {B N d L m : ℕ} (j : Fin L) :
    ((UnconditionalSelectedCopyLocalIndex B d N m ×
       ((Fin j.val → DSVUniformDensityThresholdLocalIndex N d) ×
        ((Fin (L - j.val) →
          DSVUniformDensityThresholdLocalIndex N d) × R))) ×
     (UnconditionalSelectedCopyLocalIndex B d N m ×
       ((Fin j.val → DSVUniformDensityThresholdLocalIndex N d) ×
        ((Fin (L - j.val) →
          DSVUniformDensityThresholdLocalIndex N d) × R)))) ≃
    ((UnconditionalSelectedCopyLocalIndex B d N m ×
       UnconditionalSelectedCopyLocalIndex B d N m) ×
      ((Fin j.val →
        (DSVUniformDensityThresholdLocalIndex N d ×
         DSVUniformDensityThresholdLocalIndex N d)) ×
       (((Fin (L - j.val) →
          DSVUniformDensityThresholdLocalIndex N d) ×
         (Fin (L - j.val) →
          DSVUniformDensityThresholdLocalIndex N d)) ×
        (R × R)))) where
  toFun q :=
    ((q.1.1, q.2.1),
      ((fun i => (q.1.2.1 i, q.2.2.1 i)),
       ((q.1.2.2.1, q.2.2.2.1),
        (q.1.2.2.2, q.2.2.2.2))))
  invFun q :=
    ((q.1.1,
       ((fun i => (q.2.1 i).1),
        (q.2.2.1.1, q.2.2.2.1))),
     (q.1.2,
       ((fun i => (q.2.1 i).2),
        (q.2.2.1.2, q.2.2.2.2))))
  left_inv := by
    rintro ⟨⟨selectedA, beforeA, laterA, phaseA⟩,
      ⟨selectedB, beforeB, laterB, phaseB⟩⟩
    simp
  right_inv := by
    rintro ⟨⟨selectedA, selectedB⟩,
      ⟨before, ⟨⟨laterA, laterB⟩, ⟨phaseA, phaseB⟩⟩⟩⟩
    simp

def unconditionalSourcePhysicalCleanedFullBilateralStateIsometry
    {P R : Type*} [Fintype P] [Fintype R]
    {B N d L m : ℕ}
    (phaseSplit : P ≃ Fin B × R) (j : Fin L) :
    EuclideanSpace ℂ
      ((Σ _ : P × (Fin (L + 1) →
          DSVUniformDensityThresholdLocalIndex N d), Fin m) ×
       (Σ _ : P × (Fin (L + 1) →
          DSVUniformDensityThresholdLocalIndex N d), Fin m)) ≃ₗᵢ[ℂ]
    EuclideanSpace ℂ
      ((UnconditionalSelectedCopyLocalIndex B d N m ×
        UnconditionalSelectedCopyLocalIndex B d N m) ×
       ((Fin j.val →
         (DSVUniformDensityThresholdLocalIndex N d ×
          DSVUniformDensityThresholdLocalIndex N d)) ×
        (((Fin (L - j.val) →
           DSVUniformDensityThresholdLocalIndex N d) ×
          (Fin (L - j.val) →
           DSVUniformDensityThresholdLocalIndex N d)) ×
         (R × R)))) :=
  LinearIsometryEquiv.piLpCongrLeft 2 ℂ ℂ
    ((Equiv.prodCongr
      (unconditionalSourcePhysicalCleanedFullLocalIndexEquiv
        phaseSplit j)
      (unconditionalSourcePhysicalCleanedFullLocalIndexEquiv
        phaseSplit j)).trans
      (unconditionalSourcePhysicalCleanedFullBilateralRegroup
        (R := R) (B := B) (N := N) (d := d) (m := m) j))

def unconditionalSourcePhysicalCleanedSelectedStageUnitary
    {B N d m : ℕ}
    (Q : ℕ) (w : ℝ) (ξ : BipartiteUnitVector d)
    (A : Fin B → Option ℕ → Matrix.unitaryGroup (Fin (N * m)) ℂ) :
    Matrix.unitaryGroup
      (UnconditionalSelectedCopyLocalIndex B d N m) ℂ :=
  dSVDensityRationalPublicBucketCoherentPhaseLocalUnitary
    (dSVDensityRationalPhysicalAcceptedRank w N ξ)
    (dSVDensityRationalPublicLogRankBucket Q)
    A

end

noncomputable section

open WithLp
open scoped BigOperators Kronecker ComplexOrder MatrixOrder

attribute [local instance] Classical.propDecidable

abbrev UnconditionalActualCleanedSelectedRetainedIndex
    {N d L : ℕ} (j : Fin L) (R : Type) :=
  (Fin j.val → DSVUniformDensityThresholdLocalIndex N d) ×
    ((Fin (L - j.val) →
      DSVUniformDensityThresholdLocalIndex N d) × R)

def unconditionalActualCleanedSelectedTensorUnitary
    {ι κ : Type*} [Fintype ι] [DecidableEq ι]
    [Fintype κ] [DecidableEq κ]
    (U : Matrix.unitaryGroup ι ℂ)
    (V : Matrix.unitaryGroup κ ℂ) :
    Matrix.unitaryGroup (ι × κ) ℂ :=
  ⟨(U : Matrix ι ι ℂ) ⊗ₖ (V : Matrix κ κ ℂ),
    Matrix.kronecker_mem_unitary U.property V.property⟩

def unconditionalActualCleanedSelectedStageBucketUnitary
    {B N d m : ℕ} (Q : ℕ) (w : ℝ)
    (ξ : BipartiteUnitVector d)
    (A : Fin B → Option ℕ → Matrix.unitaryGroup (Fin (N * m)) ℂ) :
    Matrix.unitaryGroup
      (UnconditionalSelectedCopyLocalIndex B d N m) ℂ :=
  unconditionalSourcePhysicalCleanedSelectedStageUnitary Q w ξ A

def unconditionalActualCleanedSelectedStagePhysicalIndexEquiv
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

def unconditionalActualCleanedSelectedStageSpectralUnitary
    {B N d m : ℕ}
    (spectral : Matrix.unitaryGroup
      (DSVUniformDensityThresholdLocalIndex N d) ℂ) :
    Matrix.unitaryGroup
      (UnconditionalSelectedCopyLocalIndex B d N m) ℂ :=
  unconditionalSourceFixedPureStoppedSigmaReindexedUnitary
    (unconditionalActualCleanedSelectedStagePhysicalIndexEquiv
      B N d m)
    (coherentSharedRandomControlledUnitary
      (fun _ : Fin B =>
        unconditionalActualCleanedSelectedTensorUnitary
          spectral (1 : Matrix.unitaryGroup (Fin m) ℂ)))

def unconditionalActualCleanedSelectedFullStageUnitary
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
    Matrix.unitaryGroup
      (UnconditionalSourcePhysicalStoppingPhaseFiber
        S B N d L m) ℂ := by
  let retained :=
    UnconditionalActualCleanedSelectedRetainedIndex
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
          unconditionalActualCleanedSelectedStageBucketUnitary
            Q (width (schedule j)) ξ A *
          unconditionalActualCleanedSelectedStageSpectralUnitary
            (B := B) (m := m) spectral))

def unconditionalActualCleanedSelectedFiniteStageDecoder
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
    (A : Fin B → Option ℕ → Matrix.unitaryGroup (Fin (N * m)) ℂ) :
    Fin (L + 1) → Matrix.unitaryGroup
      (UnconditionalSourcePhysicalStoppingPhaseFiber
        S B N d L m) ℂ :=
  Fin.cases 1 (fun j =>
    unconditionalActualCleanedSelectedFullStageUnitary
      phaseSplit Q width schedule ξ spectral A j)

end

noncomputable section

open WithLp
open scoped BigOperators Kronecker ComplexOrder MatrixOrder

attribute [local instance] Classical.propDecidable

abbrev UnconditionalSourceFlagControlledRetainedIndex
    {N d L : ℕ} (j : Fin L) (R : Type) :=
  (Fin j.val → DSVUniformDensityThresholdLocalIndex N d) ×
    ((Fin (L - j.val) →
      DSVUniformDensityThresholdLocalIndex N d) × R)

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

def directDSVActualBilateralRetainedIndexEquiv
    {s t u v ι κ : Type*}
    (eA : ι ≃ s × t) (eB : κ ≃ u × v) :
    (ι × κ) ≃ ((s × u) × (t × v)) :=
  (Equiv.prodCongr eA eB).trans
    (Equiv.prodProdProdComm s t u v)

def directDSVActualLocalPOVMWinningEffect
    {X Y A B s t : Type*}
    [Fintype X] [Fintype Y] [Fintype A] [Fintype B]
    [Fintype s] [Fintype t] [DecidableEq s] [DecidableEq t]
    (G : Game X Y A B)
    (PA : POVM A s) (PB : POVM B t)
    (x : X) (y : Y) : Matrix (s × t) (s × t) ℂ :=
  ∑ a : A, ∑ b : B,
    if G.predicate x y a b = true then
      PA.operator a ⊗ₖ PB.operator b
    else 0

end

noncomputable section

open WithLp
open scoped BigOperators Kronecker ComplexOrder MatrixOrder

def unconditionalSelectedRetainedBilateralRegroup
    (ι τ : Type) :
    ((ι × τ) × (ι × τ)) ≃ ((ι × ι) × (τ × τ)) where
  toFun p := ((p.1.1, p.2.1), (p.1.2, p.2.2))
  invFun p := ((p.1.1, p.2.1), (p.1.2, p.2.2))
  left_inv := by rintro ⟨⟨_, _⟩, ⟨_, _⟩⟩; rfl
  right_inv := by rintro ⟨⟨_, _⟩, ⟨_, _⟩⟩; rfl

end

noncomputable section

open WithLp
open scoped BigOperators Kronecker ComplexOrder MatrixOrder

attribute [local instance] Classical.propDecidable

def unconditionalActualFixedSourceRetainedHistoryPairEquiv
    {N d L : ℕ} {R : Type} (j : Fin L) :
    (UnconditionalActualCleanedSelectedRetainedIndex
      (N := N) (d := d) j R ×
     UnconditionalActualCleanedSelectedRetainedIndex
      (N := N) (d := d) j R) ≃
    ((Fin j.val →
        (DSVUniformDensityThresholdLocalIndex N d ×
         DSVUniformDensityThresholdLocalIndex N d)) ×
      (((Fin (L - j.val) →
           DSVUniformDensityThresholdLocalIndex N d) ×
        (Fin (L - j.val) →
           DSVUniformDensityThresholdLocalIndex N d)) ×
       (R × R))) where
  toFun p :=
    ((fun i => (p.1.1 i, p.2.1 i)),
      ((p.1.2.1, p.2.2.1), (p.1.2.2, p.2.2.2)))
  invFun p :=
    ((fun i => (p.1 i).1, (p.2.1.1, p.2.2.1)),
      (fun i => (p.1 i).2, (p.2.1.2, p.2.2.2)))
  left_inv := by
    rintro ⟨⟨beforeA, afterA, phaseA⟩,
      ⟨beforeB, afterB, phaseB⟩⟩
    simp
  right_inv := by
    rintro ⟨before, ⟨⟨afterA, afterB⟩, ⟨phaseA, phaseB⟩⟩⟩
    simp

end

noncomputable section

open scoped BigOperators ComplexOrder Kronecker MatrixOrder
  Matrix.Norms.L2Operator InnerProductSpace

open QuantumParallelRepetition.ClassicalSampling

attribute [local instance] Classical.propDecidable

def physical8SelectedGlobalTargetWorkEquiv
    (P N d m : ℕ) :
    UnconditionalSelectedCopyLocalIndex P d N m ≃
      Fin d × (Fin P × Fin (N * m)) where
  toFun q := (q.1.2, (q.1.1, q.2))
  invFun q := ⟨(q.2.1, q.1), q.2.2⟩
  left_inv := by
    rintro ⟨⟨phase, atom⟩, work⟩
    rfl
  right_inv := by
    rintro ⟨atom, phase, work⟩
    rfl

def physical8OneScaleActualGlobalFiberEquiv
    {P N d L m : ℕ} {R : Type}
    (phaseSplit :
      DSVDensityRationalPublicMultiscalePhaseIndex 1 P ≃
        Fin P × R)
    (j : Fin L) :
    UnconditionalSourcePhysicalStoppingPhaseFiber 1 P N d L m ≃
      Fin d ×
        ((Fin P × Fin (N * m)) ×
          UnconditionalSourceFlagControlledRetainedIndex
            (N := N) (d := d) j R) :=
  (unconditionalSourcePhysicalCleanedFullLocalIndexEquiv
      phaseSplit j).trans
    ((Equiv.prodCongr
        (physical8SelectedGlobalTargetWorkEquiv P N d m)
        (Equiv.refl
          (UnconditionalSourceFlagControlledRetainedIndex
            (N := N) (d := d) j R))).trans
      (Equiv.prodAssoc (Fin d) (Fin P × Fin (N * m))
        (UnconditionalSourceFlagControlledRetainedIndex
          (N := N) (d := d) j R)))

def physical8OneScaleOriginalFlagPOVM
    {C Z : Type*} [Fintype C] [DecidableEq C]
    {P N d L m : ℕ} {R : Type}
    [Fintype R] [DecidableEq R]
    (phaseSplit :
      DSVDensityRationalPublicMultiscalePhaseIndex 1 P ≃
        Fin P × R)
    (default : C) (sourcePOVM : Z → POVM C (Fin d)) :
    Fin (L + 1) → Z →
      POVM C
        (UnconditionalSourcePhysicalStoppingPhaseFiber
          1 P N d L m) :=
  Fin.cases
    (fun _ => deterministicOutcomePOVM default)
    (fun j x =>
      directDSVActualReindexedRetainedPOVM
        (physical8OneScaleActualGlobalFiberEquiv
          (N := N) (d := d) (m := m) phaseSplit j)
        (sourcePOVM x))

def physical8OneScaleActualAliceStoppingUnitary
    {F Z : Type*} {P N d L m : ℕ} {R : Type}
    [Fintype R] [DecidableEq R]
    (phaseSplit :
      DSVDensityRationalPublicMultiscalePhaseIndex 1 P ≃
        Fin P × R)
    (Q : ℕ) (width : Fin 1 → ℝ)
    (schedule : Fin L → Fin 1)
    (target : F → Z → BipartiteUnitVector d)
    (cleanup : Fin P → Option ℕ →
      Matrix.unitaryGroup (Fin (N * m)) ℂ) :
    F → Z → Matrix.unitaryGroup
      (Σ _ : Fin (L + 1),
        UnconditionalSourcePhysicalStoppingPhaseFiber
          1 P N d L m) ℂ :=
  fun flag x =>
    coherentSharedRandomControlledUnitary
        (unconditionalSourceFlagControlledFiniteStageDecoder
          phaseSplit Q width schedule (target flag x)
          (dSVUniformDensityAliceHistorySpectralCopy
            (N := N) (target flag x)) cleanup) *
      unconditionalSourcePhysicalCleanedTargetFirstUnitary
        1 P N d L m
        (dSVDensityRationalHeterogeneousTargetFirstSpectralAlice
          1 P N d L m width schedule (target flag x))

def physical8OneScaleActualBobStoppingUnitary
    {F Z : Type*} {P N d L m : ℕ} {R : Type}
    [Fintype R] [DecidableEq R]
    (phaseSplit :
      DSVDensityRationalPublicMultiscalePhaseIndex 1 P ≃
        Fin P × R)
    (Q : ℕ) (width : Fin 1 → ℝ)
    (schedule : Fin L → Fin 1)
    (target : F → Z → BipartiteUnitVector d)
    (cleanup : Fin P → Option ℕ →
      Matrix.unitaryGroup (Fin (N * m)) ℂ) :
    F → Z → Matrix.unitaryGroup
      (Σ _ : Fin (L + 1),
        UnconditionalSourcePhysicalStoppingPhaseFiber
          1 P N d L m) ℂ :=
  fun flag y =>
    coherentSharedRandomControlledUnitary
        (unconditionalSourceFlagControlledFiniteStageDecoder
          phaseSplit Q width schedule (target flag y)
          ((dSVUniformDensityBobHistoryCopyBasis
            (N := N) (target flag y))⁻¹) cleanup) *
      unconditionalSourcePhysicalCleanedTargetFirstUnitary
        1 P N d L m
        (dSVDensityRationalHeterogeneousTargetFirstSpectralBob
          1 P N d L m width schedule (target flag y))

def physical8OneScaleActualSourceFlaggedStrategy
    {X Y A B : Type}
    [Fintype X] [Fintype Y] [Fintype A] [Fintype B]
    (G : Game X Y A B)
    (n : ℕ) (S : Strategy (G.repeat n))
    (D : Finset (Fin n))
    (remaining : 0 < (Finset.univ \ D).card)
    (denominator : ℕ)
    (numerator : ExactLocalSamplerIndex X Y D →
      ExactHistoryFlag X Y A B D → ℕ)
    (nonempty : ∀ index,
      (rationalMarked denominator (numerator index)).Nonempty)
    (w : ℝ) (N L P Q m : ℕ)
    (phases : 0 < P) (grid : 0 < N) (harmonic : 0 < m)
    (UA UB : Fin P → Option ℕ →
      Matrix.unitaryGroup (Fin (N * m)) ℂ) : Strategy G := by
  classical
  let d : ℕ := Fintype.card
    (ExactGlobalHistoryLocalIndex G n S D)
  have dimension : 0 < d :=
    exactGlobalHistoryLocalIndex_card_pos G n S D
  let R : Type := Fin (Fintype.card (Fin (1 - 1) → Fin P))
  let phaseSplit :
      DSVDensityRationalPublicMultiscalePhaseIndex 1 P ≃
        Fin P × R :=
    (unconditionalActualMultiscalePhaseIndexEquiv
      (B := P) (0 : Fin 1)).symm
  let width : Fin 1 → ℝ := fun _ => w
  let schedule : Fin L → Fin 1 := fun _ => 0
  let F : Type := ExactSourceSharedFlag X Y A B D denominator
  let ξ : F → X → BipartiteUnitVector d :=
    fun flag x => exactGlobalHistoryFinGamma G n S D
      (exactSourceAlicePermutationHistory
        D denominator numerator nonempty flag x) x
  let ζ : F → Y → BipartiteUnitVector d :=
    fun flag y => exactGlobalHistoryFinPhi G n S D
      (exactSourceBobPermutationHistory
        D denominator numerator nonempty flag y) y
  let a₀ : A := Classical.choice
    (exactSourceAnswerTypes_nonempty_of_remaining
      G n S D remaining).1
  let b₀ : B := Classical.choice
    (exactSourceAnswerTypes_nonempty_of_remaining
      G n S D remaining).2
  let globalAlice : X → POVM A (Fin d) := fun x =>
    reindexedPOVM (finCongr (Nat.mul_one d))
      (unconditionalConjugatePOVM
        (exactSourceGlobalCatalystAlicePOVM G n S D 1 a₀ x))
  let globalBob : Y → POVM B (Fin d) := fun y =>
    reindexedPOVM (finCongr (Nat.mul_one d))
      (unconditionalConjugatePOVM
        (exactSourceGlobalCatalystBobPOVM G n S D 1 b₀ y))
  let PA : F → Fin (L + 1) → X →
      POVM A
        (UnconditionalSourcePhysicalStoppingPhaseFiber
          1 P N d L m) :=
    fun flag => physical8OneScaleOriginalFlagPOVM
      (N := N) (d := d) (m := m) phaseSplit a₀
      (fun x => unitaryConjugatePOVM
        (conjugateUnitary
          (dSVDensityRationalCanonicalAliceBasis (ξ flag x)))
        (globalAlice x))
  let PB : F → Fin (L + 1) → Y →
      POVM B
        (UnconditionalSourcePhysicalStoppingPhaseFiber
          1 P N d L m) :=
    fun flag => physical8OneScaleOriginalFlagPOVM
      (N := N) (d := d) (m := m) phaseSplit b₀
      (fun y => unitaryConjugatePOVM
        (conjugateUnitary
          (dSVUniformDensityThresholdLeftBobBasis (ζ flag y)))
        (globalBob y))
  let U := physical8OneScaleActualAliceStoppingUnitary
    (P := P) (N := N) (d := d) (L := L) (m := m)
    phaseSplit Q width schedule ξ UA
  let V := physical8OneScaleActualBobStoppingUnitary
    (P := P) (N := N) (d := d) (L := L) (m := m)
    phaseSplit Q width schedule ζ UB
  let prepared : F → EuclideanSpace ℂ
      ((Σ _ : Fin (L + 1),
          UnconditionalSourcePhysicalStoppingPhaseFiber
            1 P N d L m) ×
       (Σ _ : Fin (L + 1),
          UnconditionalSourcePhysicalStoppingPhaseFiber
            1 P N d L m)) :=
    fun _ => unconditionalSourcePhysicalCleanedStoppingFixedSource
      1 P N d L m
  have prepared_normalized : ∀ flag : F, ‖prepared flag‖ = 1 := by
    intro flag
    exact unconditionalSourcePhysicalCleanedStoppingFixedSource_norm
      phases grid dimension harmonic
  exact pureFlaggedStrategy G
    (exactSourceSharedFlagWeight D denominator)
    (exactSourceSharedFlagWeight_nonneg D denominator)
    (exactSourceSharedFlagWeight_sum D remaining denominator)
    prepared prepared_normalized
    (fun flag x => unitaryConjugatePOVM (U flag x)
      (dependentBlockPOVM (fun r => PA flag r x)))
    (fun flag y => unitaryConjugatePOVM (V flag y)
      (dependentBlockPOVM (fun r => PB flag r y)))

abbrev unconditionalOneScaleActualSourceFlaggedStrategy :=
  @physical8OneScaleActualSourceFlaggedStrategy

end

noncomputable section

open WithLp
open scoped BigOperators Kronecker ComplexOrder MatrixOrder

attribute [local instance] Classical.propDecidable

def unconditionalActualOneScaleFixedSourcePhaseSplit (P : ℕ) :
    DSVDensityRationalPublicMultiscalePhaseIndex 1 P ≃
      Fin P × UnconditionalActualCanonicalRetainedPhaseIndex 1 P :=
  (unconditionalActualMultiscalePhaseIndexEquiv
    (B := P) (0 : Fin 1)).symm

def unconditionalActualOneScaleFixedSourceDecodedState
    {P N d L m : ℕ}
    (Q : ℕ) (width : Fin 1 → ℝ) (schedule : Fin L → Fin 1)
    (ξ ζ : BipartiteUnitVector d)
    (A C : Fin P → Option ℕ → Matrix.unitaryGroup (Fin (N * m)) ℂ) :
    EuclideanSpace ℂ
      ((Σ _ : Fin (L + 1),
          UnconditionalSourcePhysicalStoppingPhaseFiber
            1 P N d L m) ×
       (Σ _ : Fin (L + 1),
          UnconditionalSourcePhysicalStoppingPhaseFiber
            1 P N d L m)) :=
  dSVUniformDensityPhysicalAsyncSigmaContinuation
    (unconditionalSourceFlagControlledFiniteStageDecoder
      (unconditionalActualOneScaleFixedSourcePhaseSplit P)
      Q width schedule ξ
      (dSVUniformDensityAliceHistorySpectralCopy
        (N := N) ξ) A)
    (unconditionalSourceFlagControlledFiniteStageDecoder
      (unconditionalActualOneScaleFixedSourcePhaseSplit P)
      Q width schedule ζ
      ((dSVUniformDensityBobHistoryCopyBasis
        (N := N) ζ)⁻¹) C)
    (actualStoppingQuestionLocalAction
      (unconditionalSourcePhysicalCleanedTargetFirstUnitary
        1 P N d L m
        (dSVDensityRationalHeterogeneousTargetFirstSpectralAlice
          1 P N d L m width schedule ξ))
      (unconditionalSourcePhysicalCleanedTargetFirstUnitary
        1 P N d L m
        (dSVDensityRationalHeterogeneousTargetFirstSpectralBob
          1 P N d L m width schedule ζ))
      (unconditionalSourcePhysicalCleanedStoppingFixedSource
        1 P N d L m))

end

noncomputable section

open WithLp
open scoped BigOperators Kronecker ComplexOrder MatrixOrder
  Matrix.Norms.L2Operator InnerProductSpace

variable {X Y A B : Type*}
variable [Fintype X] [Fintype Y] [Fintype A] [Fintype B]

def unconditionalExactFairGammaUnit
    (G : Game X Y A B) (n : ℕ) (S : Strategy (G.repeat n))
    (D : Finset (Fin n))
    (u : ExactLocallySampleableTuple X Y A B D) :
    BipartiteUnitVector
      (Fintype.card (ExactGlobalHistoryLocalIndex G n S D)) :=
  ⟨exactSourceTupleGamma G n S D u,
    exactSourceTupleGamma_norm G n S D u⟩

end

noncomputable section

open WithLp
open scoped BigOperators Kronecker ComplexOrder MatrixOrder
  Matrix.Norms.L2Operator InnerProductSpace

abbrev IntegratorActualC485TailIndex
    (S B N d L : ℕ) (j : Fin L) :=
  (((Fin (L - j.val) →
      DSVUniformDensityThresholdLocalIndex N d) ×
    (Fin (L - j.val) →
      DSVUniformDensityThresholdLocalIndex N d)) ×
   (UnconditionalActualCanonicalRetainedPhaseIndex S B ×
    UnconditionalActualCanonicalRetainedPhaseIndex S B))

abbrev IntegratorActualC485RetainedIndex
    (S B N d L : ℕ) (j : Fin L) :=
  (Fin j.val →
    (DSVUniformDensityThresholdLocalIndex N d ×
     DSVUniformDensityThresholdLocalIndex N d)) ×
    IntegratorActualC485TailIndex S B N d L j

abbrev IntegratorActualC485BranchSpace
    (S B N d L m : ℕ) (j : Fin L) :=
  EuclideanSpace ℂ
    ((UnconditionalSelectedCopyLocalIndex B d N m ×
      UnconditionalSelectedCopyLocalIndex B d N m) ×
     IntegratorActualC485RetainedIndex S B N d L j)

def integratorActualC485OriginalRetainedWork
    {S B N d L : ℕ}
    (width : Fin S → ℝ) (schedule : Fin L → Fin S)
    (ξ ζ : BipartiteUnitVector d) (j : Fin L) :
    EuclideanSpace ℂ
      (IntegratorActualC485RetainedIndex S B N d L j) :=
  unconditionalSelectedCopyRetainedWork
    (N := N) width schedule ξ ζ j
    (unconditionalActualCanonicalRetainedPhaseTail
      (S := S) (B := B) (N := N) (d := d) (L := L) j)

def integratorActualC485NormalizedDiagonalWork
    {S B N d L : ℕ}
    (width : Fin S → ℝ) (schedule : Fin L → Fin S)
    (ξ ζ : BipartiteUnitVector d) (j : Fin L) :
    EuclideanSpace ℂ
      (IntegratorActualC485RetainedIndex S B N d L j) :=
  (‖dSVDensityRationalCanonicalAcceptedTarget
      (width (schedule j)) N ξ‖ /
    Real.sqrt (width (schedule j) * (d : ℝ))) •
      integratorActualC485OriginalRetainedWork
        (B := B) width schedule ξ ζ j

def integratorActualC485CleanedVector
    {S B N d L m : ℕ}
    (Q : ℕ) (width : Fin S → ℝ)
    (schedule : Fin L → Fin S)
    (ξ ζ : BipartiteUnitVector d)
    (A C : Fin B → Option ℕ →
      Matrix.unitaryGroup (Fin (N * m)) ℂ)
    (j : Fin L) :
    IntegratorActualC485BranchSpace S B N d L m j :=
  unconditionalMixedConjugateSelectedBranchLocalAction
    (unconditionalMixedConjugateSigmaAtomLift
      (m := N * m) B
      (conjugateUnitary
        (dSVDensityRationalCanonicalAliceBasis ξ)))
    (unconditionalMixedConjugateSigmaAtomLift
      (m := N * m) B
      (conjugateUnitary
        (dSVUniformDensityThresholdLeftBobBasis ζ)))
    (unconditionalSelectedCopyCleanedMatchedBranch
      (N := N) (B := B) (m := m)
      Q width schedule ξ ζ A C j
      (unconditionalActualCanonicalRetainedPhaseTail
        (S := S) (B := B) (N := N) (d := d) (L := L) j))

def integratorActualC485CanonicalVector
    {S B N d L m : ℕ}
    {width : Fin S → ℝ}
    (schedule : Fin L → Fin S)
    (ξ ζ : BipartiteUnitVector d) (j : Fin L)
    (positive : 0 < width (schedule j))
    (grid : 0 < N)
    (fine : (d : ℝ) / (N : ℝ) < 1 / (width (schedule j) + 1)) :
    IntegratorActualC485BranchSpace S B N d L m j :=
  unconditionalMatchedVerifierTensor
    (dSVDensityRationalPublicBucketCoherentPhaseSigmaState B
      (unconditionalConjugatePureVector
        (dSVDensityRationalCanonicalAcceptedUnitTarget
          positive grid fine ξ).val)
      (fun _ _ _ => embezzlementState (N * m)))
    (integratorActualC485NormalizedDiagonalWork
      (B := B) width schedule ξ ζ j)

def integratorActualC485SourceVector
    {S B N d L m : ℕ}
    (width : Fin S → ℝ) (schedule : Fin L → Fin S)
    (ξ ζ : BipartiteUnitVector d)
    (ψ : EuclideanSpace ℂ (Fin d × Fin d))
    (j : Fin L) :
    IntegratorActualC485BranchSpace S B N d L m j :=
  unconditionalMatchedVerifierTensor
    (dSVDensityRationalPublicBucketCoherentPhaseSigmaState B
      (unconditionalConjugatePureVector ψ)
      (fun _ _ _ => embezzlementState (N * m)))
    (integratorActualC485NormalizedDiagonalWork
      (B := B) width schedule ξ ζ j)

end

noncomputable section

open WithLp
open scoped BigOperators Kronecker ComplexOrder MatrixOrder
  Matrix.Norms.L2Operator InnerProductSpace

def integratorActualC485SourceAlicePOVM
    {X Y A B : Type}
    [Fintype X] [Fintype Y] [Fintype A] [Fintype B]
    (G : Game X Y A B) (n : ℕ) (S : Strategy (G.repeat n))
    (D : Finset (Fin n)) (a₀ : A) (x : X) :
    POVM A
      (Fin (Fintype.card (ExactGlobalHistoryLocalIndex G n S D))) := by
  classical
  exact
    reindexedPOVM
      (finCongr
        (Nat.mul_one
          (Fintype.card (ExactGlobalHistoryLocalIndex G n S D))))
      (unconditionalConjugatePOVM
        (exactSourceGlobalCatalystAlicePOVM G n S D 1 a₀ x))

def integratorActualC485SourceBobPOVM
    {X Y A B : Type}
    [Fintype X] [Fintype Y] [Fintype A] [Fintype B]
    (G : Game X Y A B) (n : ℕ) (S : Strategy (G.repeat n))
    (D : Finset (Fin n)) (b₀ : B) (y : Y) :
    POVM B
      (Fin (Fintype.card (ExactGlobalHistoryLocalIndex G n S D))) := by
  classical
  exact
    reindexedPOVM
      (finCongr
        (Nat.mul_one
          (Fintype.card (ExactGlobalHistoryLocalIndex G n S D))))
      (unconditionalConjugatePOVM
        (exactSourceGlobalCatalystBobPOVM G n S D 1 b₀ y))

def integratorActualC485SelectedAlicePOVM
    {X Y A B : Type}
    [Fintype X] [Fintype Y] [Fintype A] [Fintype B]
    (G : Game X Y A B) (n : ℕ) (S : Strategy (G.repeat n))
    (D : Finset (Fin n)) (a₀ : A)
    (P N m : ℕ) (x : X) :
    POVM A
      (UnconditionalSelectedCopyLocalIndex
        P (Fintype.card (ExactGlobalHistoryLocalIndex G n S D))
        N m) := by
  classical
  exact
    directDSVActualReindexedRetainedPOVM
      (physical8SelectedGlobalTargetWorkEquiv
        P N (Fintype.card (ExactGlobalHistoryLocalIndex G n S D)) m)
      (integratorActualC485SourceAlicePOVM G n S D a₀ x)

def integratorActualC485SelectedBobPOVM
    {X Y A B : Type}
    [Fintype X] [Fintype Y] [Fintype A] [Fintype B]
    (G : Game X Y A B) (n : ℕ) (S : Strategy (G.repeat n))
    (D : Finset (Fin n)) (b₀ : B)
    (P N m : ℕ) (y : Y) :
    POVM B
      (UnconditionalSelectedCopyLocalIndex
        P (Fintype.card (ExactGlobalHistoryLocalIndex G n S D))
        N m) := by
  classical
  exact
    directDSVActualReindexedRetainedPOVM
      (physical8SelectedGlobalTargetWorkEquiv
        P N (Fintype.card (ExactGlobalHistoryLocalIndex G n S D)) m)
      (integratorActualC485SourceBobPOVM G n S D b₀ y)

def integratorActualC485WinningEffect
    {X Y A B : Type}
    [Fintype X] [Fintype Y] [Fintype A] [Fintype B]
    (G : Game X Y A B) (n : ℕ) (S : Strategy (G.repeat n))
    (D : Finset (Fin n)) (a₀ : A) (b₀ : B)
    {P N L m : ℕ} (j : Fin L) (x : X) (y : Y) :
    IntegratorActualC485BranchSpace
      1 P N
        (Fintype.card (ExactGlobalHistoryLocalIndex G n S D))
        L m j →L[ℂ]
      IntegratorActualC485BranchSpace
        1 P N
          (Fintype.card (ExactGlobalHistoryLocalIndex G n S D))
          L m j := by
  classical
  let d : ℕ :=
    Fintype.card (ExactGlobalHistoryLocalIndex G n S D)
  let selected : Type := UnconditionalSelectedCopyLocalIndex
    P d N m
  let retained : Type :=
    IntegratorActualC485RetainedIndex 1 P N d L j
  exact Matrix.toEuclideanCLM
    (n := (selected × selected) × retained) (𝕜 := ℂ)
    (directDSVActualLocalPOVMWinningEffect G
      (integratorActualC485SelectedAlicePOVM
        G n S D a₀ P N m x)
      (integratorActualC485SelectedBobPOVM
        G n S D b₀ P N m y) x y ⊗ₖ
      (1 : Matrix retained retained ℂ))

end

end QuantumParallelRepetition
