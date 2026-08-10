import Definitions.Def_quantum_parallel_repetition_game
import Definitions.Def_qpr_core_40
import Theorems.Thm_QuantumParallelRepetition_unconditionalSourcePhysicalCleanedSelectedHistoryEquiv_hit
import Mathlib.Algebra.BigOperators.Group.Finset.Defs
import Mathlib.Algebra.Group.Defs
import Mathlib.Algebra.Group.Pi.Basic
import Mathlib.Algebra.Group.Submonoid.Defs
import Mathlib.Algebra.GroupWithZero.Defs
import Mathlib.Algebra.Module.Defs
import Mathlib.Algebra.Module.Pi
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
import Mathlib.Data.Prod.Basic
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

end

end QuantumParallelRepetition
