import Definitions.Def_quantum_parallel_repetition_game
import Definitions.Def_qpr_core_25
import Theorems.Thm_QuantumParallelRepetition_directDSVActualStoppingSelectedHistory_sourceProduct
import Theorems.Thm_QuantumParallelRepetition_unconditionalActualPhysicalMixedAcceptedSpectralGauge_stage
import Mathlib.Algebra.BigOperators.Group.Finset.Basic
import Mathlib.Algebra.BigOperators.Group.Finset.Defs
import Mathlib.Algebra.BigOperators.Group.Finset.Piecewise
import Mathlib.Algebra.BigOperators.Ring.Finset
import Mathlib.Algebra.Field.Defs
import Mathlib.Algebra.Group.Basic
import Mathlib.Algebra.Group.Defs
import Mathlib.Algebra.Group.Nat.Defs
import Mathlib.Algebra.Group.Pi.Basic
import Mathlib.Algebra.Group.Submonoid.Defs
import Mathlib.Algebra.GroupWithZero.Basic
import Mathlib.Algebra.GroupWithZero.Defs
import Mathlib.Algebra.GroupWithZero.Units.Basic
import Mathlib.Algebra.Module.Defs
import Mathlib.Algebra.Module.Pi
import Mathlib.Algebra.Notation.Defs
import Mathlib.Algebra.Order.Group.Nat
import Mathlib.Algebra.Order.Monoid.Defs
import Mathlib.Algebra.Order.Monoid.Unbundled.Defs
import Mathlib.Algebra.Order.Sub.Defs
import Mathlib.Algebra.Ring.CompTypeclasses
import Mathlib.Algebra.Ring.Defs
import Mathlib.Algebra.Ring.Hom.Defs
import Mathlib.Algebra.Ring.Nat
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
import Mathlib.Data.Fin.SuccPred
import Mathlib.Data.Fin.Tuple.Basic
import Mathlib.Data.Finset.Card
import Mathlib.Data.Finset.Defs
import Mathlib.Data.Fintype.Basic
import Mathlib.Data.Fintype.BigOperators
import Mathlib.Data.Fintype.Card
import Mathlib.Data.Fintype.Defs
import Mathlib.Data.Fintype.EquivFin
import Mathlib.Data.Fintype.Pi
import Mathlib.Data.Fintype.Prod
import Mathlib.Data.Fintype.Sigma
import Mathlib.Data.FunLike.Basic
import Mathlib.Data.FunLike.Embedding
import Mathlib.Data.FunLike.Equiv
import Mathlib.Data.Matrix.Basic
import Mathlib.Data.Matrix.Block
import Mathlib.Data.Matrix.Diagonal
import Mathlib.Data.Matrix.Mul
import Mathlib.Data.Nat.Basic
import Mathlib.Data.Nat.Cast.Basic
import Mathlib.Data.Nat.Cast.Defs
import Mathlib.Data.Nat.Cast.Order.Ring
import Mathlib.Data.Nat.Init
import Mathlib.Data.Prod.Basic
import Mathlib.Data.Real.Basic
import Mathlib.Data.Real.Sqrt
import Mathlib.Data.SetLike.Basic
import Mathlib.Data.Sigma.Basic
import Mathlib.LinearAlgebra.Matrix.ConjTranspose
import Mathlib.LinearAlgebra.Matrix.Defs
import Mathlib.LinearAlgebra.Matrix.Kronecker
import Mathlib.LinearAlgebra.UnitaryGroup
import Mathlib.Logic.Equiv.Basic
import Mathlib.Logic.Equiv.Defs
import Mathlib.Logic.Equiv.Fin.Basic
import Mathlib.Logic.Equiv.Prod
import Mathlib.MeasureTheory.Measure.MeasureSpace
import Mathlib.Tactic.NormNum.Basic
import Mathlib.Tactic.NormNum.Inv
import Mathlib.Tactic.NormNum.Result
import Mathlib.Tactic.Ring.Basic
import Mathlib.Tactic.Ring.Common
import Mathlib.Topology.Defs.Filter

namespace QuantumParallelRepetition

open scoped ComplexOrder Matrix BigOperators InnerProductSpace
open Complex Matrix Finset

noncomputable section

open WithLp
open scoped BigOperators Kronecker ComplexOrder MatrixOrder

theorem dSVDensityRationalPublicLogPhasePureSource_apply
    (B N d L : ℕ)
    (φ ψ : Fin B)
    (a b : DSVUniformDensityThresholdWholeHistoryLocalIndex
      N d L) :
    dSVDensityRationalPublicLogPhasePureSource
        B N d L ((φ, a), (ψ, b)) =
      (if φ = ψ then
        (((Real.sqrt (B : ℝ))⁻¹ : ℝ) : ℂ)
      else 0) *
        dSVUniformDensityThresholdWholeHistorySharedState
          N d L (a, b) := by
  simp [dSVDensityRationalPublicLogPhasePureSource,
    dSVDensityRationalPublicLogBilateralPureTensor, ePRState]

theorem dSVDensityRationalPublicLogPhaseHarmonicPureSource_apply
    (B N d L m : ℕ)
    (φ ψ : Fin B)
    (a b : DSVUniformDensityThresholdWholeHistoryLocalIndex
      N d L) (i j : Fin m) :
    dSVDensityRationalPublicLogPhaseHarmonicPureSource
        B N d L m (((φ, a), i), ((ψ, b), j)) =
      (if φ = ψ then
        (((Real.sqrt (B : ℝ))⁻¹ : ℝ) : ℂ)
      else 0) *
        dSVUniformDensityThresholdWholeHistorySharedState
          N d L (a, b) *
        embezzlementState m (i, j) := by
  change
    dSVDensityRationalPublicLogPhasePureSource
        B N d L ((φ, a), (ψ, b)) *
      embezzlementState m (i, j) = _
  rw [dSVDensityRationalPublicLogPhasePureSource_apply]

theorem dSVDensityRationalPublicLogPhaseTargetFirstPreparedSource_apply
    (B N d L m : ℕ)
    (φ ψ : Fin B)
    (a b : DSVUniformDensityThresholdWholeHistoryLocalIndex
      N d L) (i j : Fin m) :
    dSVDensityRationalPublicLogPhaseTargetFirstPreparedSource
        B N d L m
        (dSVDensityRationalPublicLogPhaseTargetFirstIndexEquiv
            B N d L m ((φ, a), i),
          dSVDensityRationalPublicLogPhaseTargetFirstIndexEquiv
            B N d L m ((ψ, b), j)) =
      (if φ = ψ then
        (((Real.sqrt (B : ℝ))⁻¹ : ℝ) : ℂ)
      else 0) *
        dSVUniformDensityThresholdWholeHistorySharedState
          N d L (a, b) *
        embezzlementState m (i, j) := by
  unfold dSVDensityRationalPublicLogPhaseTargetFirstPreparedSource
  simpa [LinearIsometryEquiv.piLpCongrLeft_apply,
    Equiv.piCongrLeft'] using
    (dSVDensityRationalPublicLogPhaseHarmonicPureSource_apply
      B N d L m φ ψ a b i j)

end

noncomputable section

open WithLp
open scoped BigOperators ComplexOrder Kronecker MatrixOrder

theorem
    dSVDensityRationalPublicLogPhaseActualTargetFirstLocalLift_apply
    (B N d L m : ℕ)
    (U : Matrix.unitaryGroup
      (DSVDensityRationalPublicLogPhaseHistoryLocalIndex
        B N d L) ℂ)
    (a b : DSVDensityRationalPublicLogPhaseHistoryLocalIndex
      B N d L) (i j : Fin m) :
    dSVDensityRationalPublicLogPhaseActualTargetFirstLocalLift
      B N d L m U
      (dSVDensityRationalPublicLogPhaseTargetFirstIndexEquiv
        B N d L m (a, i))
      (dSVDensityRationalPublicLogPhaseTargetFirstIndexEquiv
        B N d L m (b, j)) =
      if i = j then U a b else 0 := by
  classical
  change
    (Matrix.reindex
      (dSVDensityRationalPublicLogPhaseTargetFirstIndexEquiv
        B N d L m)
      (dSVDensityRationalPublicLogPhaseTargetFirstIndexEquiv
        B N d L m)
      (U.val ⊗ₖ (1 : Matrix (Fin m) (Fin m) ℂ)))
      (dSVDensityRationalPublicLogPhaseTargetFirstIndexEquiv
        B N d L m (a, i))
      (dSVDensityRationalPublicLogPhaseTargetFirstIndexEquiv
        B N d L m (b, j)) = _
  simp [Matrix.reindex_apply, Matrix.kroneckerMap_apply,
    Matrix.one_apply]

theorem dSVDensityRationalPublicLogPhasePhysicalHistoryUnitary_apply
    (B : ℕ) {N d L : ℕ}
    (U : Matrix.unitaryGroup
      (DSVUniformDensityThresholdWholeHistoryLocalIndex
        N d L) ℂ)
    (φ ψ : Fin B)
    (a b : DSVUniformDensityThresholdWholeHistoryLocalIndex
      N d L) :
    dSVDensityRationalPublicLogPhasePhysicalHistoryUnitary
        B U (φ, a) (ψ, b) =
      if φ = ψ then U a b else 0 := by
  classical
  change
    ((1 : Matrix (Fin B) (Fin B) ℂ) ⊗ₖ U.val)
      (φ, a) (ψ, b) = _
  simp [Matrix.kroneckerMap_apply, Matrix.one_apply]

end

noncomputable section

open WithLp
open scoped BigOperators ComplexOrder Kronecker MatrixOrder

attribute [local instance] Classical.propDecidable

theorem dSVDensityRationalHeterogeneousActualPhysicalState_apply
    (N : ℕ) {S d L : ℕ}
    (width : Fin S → ℝ) (schedule : Fin L → Fin S)
    (ξ ζ : BipartiteUnitVector d)
    (a b : DSVUniformDensityThresholdWholeHistoryLocalIndex
      N d L) :
    dSVDensityRationalHeterogeneousActualPhysicalState
        N width schedule ξ ζ (a, b) =
      ∑ x : DSVUniformDensityThresholdWholeHistoryLocalIndex
          N d L,
        ∑ y : DSVUniformDensityThresholdWholeHistoryLocalIndex
            N d L,
          (dSVDensityRationalHeterogeneousActualAliceUnitary
              N width schedule ξ :
            Matrix
              (DSVUniformDensityThresholdWholeHistoryLocalIndex
                N d L)
              (DSVUniformDensityThresholdWholeHistoryLocalIndex
                N d L) ℂ) a x *
          (dSVDensityRationalHeterogeneousActualBobUnitary
              N width schedule ζ :
            Matrix
              (DSVUniformDensityThresholdWholeHistoryLocalIndex
                N d L)
              (DSVUniformDensityThresholdWholeHistoryLocalIndex
                N d L) ℂ) b y *
          dSVUniformDensityThresholdWholeHistorySharedState
            N d L (x, y) := by
  classical
  unfold dSVDensityRationalHeterogeneousActualPhysicalState
  change
    (∑ q :
      DSVUniformDensityThresholdWholeHistoryLocalIndex N d L ×
        DSVUniformDensityThresholdWholeHistoryLocalIndex N d L,
      ((dSVDensityRationalHeterogeneousActualAliceUnitary
            N width schedule ξ :
          Matrix
            (DSVUniformDensityThresholdWholeHistoryLocalIndex
              N d L)
            (DSVUniformDensityThresholdWholeHistoryLocalIndex
              N d L) ℂ) ⊗ₖ
        (dSVDensityRationalHeterogeneousActualBobUnitary
            N width schedule ζ :
          Matrix
            (DSVUniformDensityThresholdWholeHistoryLocalIndex
              N d L)
            (DSVUniformDensityThresholdWholeHistoryLocalIndex
              N d L) ℂ)) (a, b) q *
        dSVUniformDensityThresholdWholeHistorySharedState
          N d L q) = _
  rw [Fintype.sum_prod_type]
  apply Finset.sum_congr rfl
  intro x _
  apply Finset.sum_congr rfl
  intro y _
  rfl

end

noncomputable section

open WithLp
open scoped BigOperators ComplexOrder Kronecker MatrixOrder

theorem dSVDensityRationalPublicLogPhasePhysicalAlignedLocalAction_apply
    (B N d L m : ℕ)
    (U V : Matrix.unitaryGroup
      (DSVUniformDensityThresholdWholeHistoryLocalIndex
        N d L) ℂ)
    (φ ψ : Fin B)
    (a b : DSVUniformDensityThresholdWholeHistoryLocalIndex
      N d L) (i j : Fin m) :
    localUnitaryAction
      (dSVDensityRationalPublicLogPhaseActualTargetFirstLocalLift
        B N d L m
        (dSVDensityRationalPublicLogPhasePhysicalHistoryUnitary
          B U))
      (dSVDensityRationalPublicLogPhaseActualTargetFirstLocalLift
        B N d L m
        (dSVDensityRationalPublicLogPhasePhysicalHistoryUnitary
          B V))
      (dSVDensityRationalPublicLogPhaseTargetFirstPreparedSource
        B N d L m)
      (dSVDensityRationalPublicLogPhaseTargetFirstIndexEquiv
          B N d L m ((φ, a), i),
       dSVDensityRationalPublicLogPhaseTargetFirstIndexEquiv
          B N d L m ((ψ, b), j)) =
      (if φ = ψ then
        (((Real.sqrt (B : ℝ))⁻¹ : ℝ) : ℂ)
      else 0) *
      (∑ x : DSVUniformDensityThresholdWholeHistoryLocalIndex
          N d L,
        ∑ y : DSVUniformDensityThresholdWholeHistoryLocalIndex
            N d L,
          (U : Matrix
            (DSVUniformDensityThresholdWholeHistoryLocalIndex
              N d L)
            (DSVUniformDensityThresholdWholeHistoryLocalIndex
              N d L) ℂ) a x *
          (V : Matrix
            (DSVUniformDensityThresholdWholeHistoryLocalIndex
              N d L)
            (DSVUniformDensityThresholdWholeHistoryLocalIndex
              N d L) ℂ) b y *
          dSVUniformDensityThresholdWholeHistorySharedState
            N d L (x, y)) *
      embezzlementState m (i, j) := by
  classical
  let H := DSVUniformDensityThresholdWholeHistoryLocalIndex
    N d L
  let P := DSVDensityRationalPublicLogPhaseHistoryLocalIndex
    B N d L
  let n := dSVDensityRationalPublicLogPhaseResidual B N d L m
  let e := dSVDensityRationalPublicLogPhaseTargetFirstIndexEquiv
    B N d L m
  let A := dSVDensityRationalPublicLogPhaseActualTargetFirstLocalLift
    B N d L m
    (dSVDensityRationalPublicLogPhasePhysicalHistoryUnitary
      B U)
  let D := dSVDensityRationalPublicLogPhaseActualTargetFirstLocalLift
    B N d L m
    (dSVDensityRationalPublicLogPhasePhysicalHistoryUnitary
      B V)
  let source := dSVDensityRationalPublicLogPhaseTargetFirstPreparedSource
    B N d L m
  have left (χ : Fin B) (x : H) (k : Fin m) :
      (A : Matrix (Fin (d * n)) (Fin (d * n)) ℂ)
        (e ((φ, a), i)) (e ((χ, x), k)) =
        if i = k then
          if φ = χ then (U : Matrix H H ℂ) a x else 0
        else 0 := by
    rw [dSVDensityRationalPublicLogPhaseActualTargetFirstLocalLift_apply,
      dSVDensityRationalPublicLogPhasePhysicalHistoryUnitary_apply]
  have right (χ : Fin B) (x : H) (k : Fin m) :
      (D : Matrix (Fin (d * n)) (Fin (d * n)) ℂ)
        (e ((ψ, b), j)) (e ((χ, x), k)) =
        if j = k then
          if ψ = χ then (V : Matrix H H ℂ) b x else 0
        else 0 := by
    rw [dSVDensityRationalPublicLogPhaseActualTargetFirstLocalLift_apply,
      dSVDensityRationalPublicLogPhasePhysicalHistoryUnitary_apply]
  have resource (χ υ : Fin B) (x y : H) (k l : Fin m) :
      source (e ((χ, x), k), e ((υ, y), l)) =
        (if χ = υ then
          (((Real.sqrt (B : ℝ))⁻¹ : ℝ) : ℂ)
        else 0) *
          dSVUniformDensityThresholdWholeHistorySharedState
            N d L (x, y) *
          embezzlementState m (k, l) :=
    dSVDensityRationalPublicLogPhaseTargetFirstPreparedSource_apply
      B N d L m χ υ x y k l
  change
    (∑ q : Fin (d * n) × Fin (d * n),
      ((A : Matrix (Fin (d * n)) (Fin (d * n)) ℂ) ⊗ₖ
        (D : Matrix (Fin (d * n)) (Fin (d * n)) ℂ))
          (e ((φ, a), i), e ((ψ, b), j)) q * source q) = _
  calc
    _ =
      ∑ q : (P × Fin m) × (P × Fin m),
        ((A : Matrix (Fin (d * n)) (Fin (d * n)) ℂ) ⊗ₖ
          (D : Matrix (Fin (d * n)) (Fin (d * n)) ℂ))
          (e ((φ, a), i), e ((ψ, b), j)) (e q.1, e q.2) *
          source (e q.1, e q.2) :=
      (Equiv.sum_comp (Equiv.prodCongr e e)
        (fun q : Fin (d * n) × Fin (d * n) =>
          ((A : Matrix (Fin (d * n)) (Fin (d * n)) ℂ) ⊗ₖ
            (D : Matrix (Fin (d * n)) (Fin (d * n)) ℂ))
            (e ((φ, a), i), e ((ψ, b), j)) q *
            source q)).symm
    _ = _ := by
      simp only [Fintype.sum_prod_type, Matrix.kroneckerMap_apply]
      dsimp only [P, DSVDensityRationalPublicLogPhaseHistoryLocalIndex]
      simp only [Fintype.sum_prod_type]
      change
        (∑ χ : Fin B,
          ∑ x : H,
            ∑ k : Fin m,
              ∑ υ : Fin B,
                ∑ y : H,
                  ∑ l : Fin m,
                    (A : Matrix (Fin (d * n)) (Fin (d * n)) ℂ)
                        (e ((φ, a), i)) (e ((χ, x), k)) *
                      (D : Matrix (Fin (d * n)) (Fin (d * n)) ℂ)
                        (e ((ψ, b), j)) (e ((υ, y), l)) *
                      source (e ((χ, x), k), e ((υ, y), l))) = _
      simp_rw [left, right, resource]
      simp [mul_ite, ite_mul, mul_assoc, Finset.sum_mul]
      split_ifs
      · simp_rw [Finset.mul_sum]
        apply Finset.sum_congr rfl
        intro x _
        apply Finset.sum_congr rfl
        intro y _
        ring
      · rfl

theorem
    dSVDensityRationalHeterogeneousTargetFirstSpectralPhysicalSource_apply
    (S B N d L m : ℕ)
    (width : Fin S → ℝ) (schedule : Fin L → Fin S)
    (ξ ζ : BipartiteUnitVector d)
    (φ ψ : DSVDensityRationalPublicMultiscalePhase S B)
    (a b : DSVUniformDensityThresholdWholeHistoryLocalIndex
      N d L) (i j : Fin m) :
    dSVDensityRationalHeterogeneousTargetFirstSpectralPhysicalSource
        S B N d L m width schedule ξ ζ
        (dSVDensityRationalPublicMultiscalePhaseTargetFirstIndexEquiv
            S B N d L m
            (((Fintype.equivFin
                (DSVDensityRationalPublicMultiscalePhase S B)) φ,
              a), i),
         dSVDensityRationalPublicMultiscalePhaseTargetFirstIndexEquiv
            S B N d L m
            (((Fintype.equivFin
                (DSVDensityRationalPublicMultiscalePhase S B)) ψ,
              b), j)) =
      (if φ = ψ then
        (((Real.sqrt ((B ^ S : ℕ) : ℝ))⁻¹ : ℝ) : ℂ)
      else 0) *
        dSVDensityRationalHeterogeneousActualPhysicalState
          N width schedule ξ ζ (a, b) *
        embezzlementState m (i, j) := by
  unfold
    dSVDensityRationalHeterogeneousTargetFirstSpectralPhysicalSource
    dSVDensityRationalHeterogeneousTargetFirstSpectralAlice
    dSVDensityRationalHeterogeneousTargetFirstSpectralBob
    dSVDensityRationalPublicMultiscalePhaseTargetFirstPreparedSource
    dSVDensityRationalPublicMultiscalePhaseTargetFirstIndexEquiv
    dSVDensityRationalPublicMultiscalePhaseResidual
  rw [dSVDensityRationalPublicLogPhasePhysicalAlignedLocalAction_apply]
  rw [← dSVDensityRationalHeterogeneousActualPhysicalState_apply]
  simp

end

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
open scoped BigOperators ComplexOrder Kronecker MatrixOrder

theorem
    dSVDensityRationalHeterogeneousOriginalSameStopSigmaSource_apply
    (S B N d L m : ℕ)
    (width : Fin S → ℝ) (schedule : Fin L → Fin S)
    (ξ ζ : BipartiteUnitVector d)
    (φ ψ : DSVDensityRationalPublicMultiscalePhaseIndex S B)
    (a b : DSVUniformDensityThresholdWholeHistoryLocalIndex
      N d L) (i j : Fin m) :
    dSVDensityRationalHeterogeneousOriginalSameStopSigmaSource
        S B N d L m width schedule ξ ζ
        (dSVDensityRationalPublicMultiscalePhaseTargetFirstIndexEquiv
            S B N d L m ((φ, a), i),
         dSVDensityRationalPublicMultiscalePhaseTargetFirstIndexEquiv
            S B N d L m ((ψ, b), j)) =
      ePRState
          (Fintype.card
            (DSVDensityRationalPublicMultiscalePhase S B))
          (φ, ψ) *
        dSVDensityRationalHeterogeneousActualPhysicalState
          N width schedule ξ ζ (a, b) *
        embezzlementState m (i, j) := by
  simp [dSVDensityRationalHeterogeneousOriginalSameStopSigmaSource,
    dSVDensityRationalHeterogeneousOriginalSameStopStateEquiv,
    dSVDensityRationalPublicMultiscaleOriginalSigmaTargetFirstEquiv,
    dSVDensityRationalPublicBucketCoherentPhaseSigmaProductEquiv,
    LinearIsometryEquiv.piLpCongrLeft_apply,
    Equiv.piCongrLeft',
    dSVDensityRationalHeterogeneousPureStoppedSigmaState,
    dSVDensityRationalPublicMultiscaleBucketCoherentSigmaState,
    dSVDensityRationalPublicBucketCoherentPhaseSigmaState,
    dSVUniformDensityCorrectedMatchedSigmaWeightedResidual,
    dSVDensityRationalPublicBucketCoherentPhaseHistory]

theorem
    dSVDensityRationalHeterogeneousOriginalSameStopSigmaSource_eq_stopped
    (S B N d L m : ℕ)
    (width : Fin S → ℝ) (schedule : Fin L → Fin S)
    (ξ ζ : BipartiteUnitVector d) :
    dSVDensityRationalHeterogeneousOriginalSameStopSigmaSource
        S B N d L m width schedule ξ ζ =
      dSVDensityRationalHeterogeneousOriginalStoppedState
        S B N d L m width schedule ξ ζ := by
  classical
  ext ⟨x, y⟩
  obtain ⟨⟨⟨φ, a⟩, i⟩, rfl⟩ :=
    (dSVDensityRationalPublicMultiscalePhaseTargetFirstIndexEquiv
      S B N d L m).surjective x
  obtain ⟨⟨⟨ψ, b⟩, j⟩, rfl⟩ :=
    (dSVDensityRationalPublicMultiscalePhaseTargetFirstIndexEquiv
      S B N d L m).surjective y
  obtain ⟨φ', rfl⟩ :=
    (Fintype.equivFin
      (DSVDensityRationalPublicMultiscalePhase S B)).surjective φ
  obtain ⟨ψ', rfl⟩ :=
    (Fintype.equivFin
      (DSVDensityRationalPublicMultiscalePhase S B)).surjective ψ
  rw [dSVDensityRationalHeterogeneousOriginalSameStopSigmaSource_apply]
  change _ =
    dSVDensityRationalHeterogeneousTargetFirstSpectralPhysicalSource
      S B N d L m width schedule ξ ζ
      (dSVDensityRationalPublicMultiscalePhaseTargetFirstIndexEquiv
        S B N d L m
        (((Fintype.equivFin
          (DSVDensityRationalPublicMultiscalePhase S B)) φ', a), i),
       dSVDensityRationalPublicMultiscalePhaseTargetFirstIndexEquiv
        S B N d L m
        (((Fintype.equivFin
          (DSVDensityRationalPublicMultiscalePhase S B)) ψ', b), j))
  rw [dSVDensityRationalHeterogeneousTargetFirstSpectralPhysicalSource_apply]
  simp [ePRState]

theorem dSVDensityRationalHeterogeneousOriginalStoppedState_apply
    (S B N d L m : ℕ)
    (width : Fin S → ℝ) (schedule : Fin L → Fin S)
    (ξ ζ : BipartiteUnitVector d)
    (φ ψ : DSVDensityRationalPublicMultiscalePhaseIndex S B)
    (a b : DSVUniformDensityThresholdWholeHistoryLocalIndex N d L)
    (i j : Fin m) :
    dSVDensityRationalHeterogeneousOriginalStoppedState
        S B N d L m width schedule ξ ζ
        (dSVDensityRationalPublicMultiscalePhaseTargetFirstIndexEquiv
            S B N d L m ((φ, a), i),
         dSVDensityRationalPublicMultiscalePhaseTargetFirstIndexEquiv
            S B N d L m ((ψ, b), j)) =
      ePRState
          (Fintype.card
            (DSVDensityRationalPublicMultiscalePhase S B))
          (φ, ψ) *
        dSVDensityRationalHeterogeneousActualPhysicalState
          N width schedule ξ ζ (a, b) *
        embezzlementState m (i, j) := by
  rw [←
    dSVDensityRationalHeterogeneousOriginalSameStopSigmaSource_eq_stopped]
  exact
    dSVDensityRationalHeterogeneousOriginalSameStopSigmaSource_apply
      S B N d L m width schedule ξ ζ φ ψ a b i j

end

noncomputable section

open WithLp
open scoped BigOperators Kronecker ComplexOrder MatrixOrder

@[simp] theorem directDSVSelectedCopyLocalHistoryEquiv_hit
    {L : ℕ} {β : Type*} (j : Fin L)
    (selected : β) (before : Fin j.val → β)
    (after : Fin (L - j.val) → β) :
    directDSVSelectedCopyLocalHistoryEquiv j
        (selected, (before, after)) j.castSucc = selected := by
  simp [directDSVSelectedCopyLocalHistoryEquiv]

@[simp] theorem directDSVSelectedCopyLocalHistoryEquiv_before
    {L : ℕ} {β : Type*} (j : Fin L)
    (selected : β) (before : Fin j.val → β)
    (after : Fin (L - j.val) → β) (i : Fin j.val) :
    directDSVSelectedCopyLocalHistoryEquiv j
        (selected, (before, after))
        ⟨i.val, by omega⟩ = before i := by
  let k : Fin L := ⟨i.val, by omega⟩
  have earlier : k < j := by
    change i.val < j.val
    exact i.isLt
  have selected_index :
      j.castSucc.succAbove k =
        (⟨i.val, by omega⟩ : Fin (L + 1)) := by
    rw [Fin.succAbove_castSucc_of_lt j k earlier]
    rfl
  unfold directDSVSelectedCopyLocalHistoryEquiv
  simp only [Equiv.trans_apply, Equiv.prodCongr_apply,
    Fin.insertNthEquiv_apply]
  rw [← selected_index, Fin.insertNth_apply_succAbove]
  change
    (if h : k.val < j.val
      then before ⟨k.val, h⟩
      else after ⟨k.val - j.val, by omega⟩) = before i
  simp only [k, i.isLt, ↓reduceDIte]

@[simp] theorem directDSVSelectedCopyLocalHistoryEquiv_after
    {L : ℕ} {β : Type*} (j : Fin L)
    (selected : β) (before : Fin j.val → β)
    (after : Fin (L - j.val) → β) (i : Fin (L - j.val)) :
    directDSVSelectedCopyLocalHistoryEquiv j
        (selected, (before, after))
        ⟨j.val + 1 + i.val, by omega⟩ = after i := by
  let k : Fin L := ⟨j.val + i.val, by omega⟩
  have later : j ≤ k := by
    change j.val ≤ j.val + i.val
    omega
  have selected_index :
      j.castSucc.succAbove k =
        (⟨j.val + 1 + i.val, by omega⟩ : Fin (L + 1)) := by
    rw [Fin.succAbove_castSucc_of_le j k later]
    apply Fin.ext
    change j.val + i.val + 1 = j.val + 1 + i.val
    omega
  unfold directDSVSelectedCopyLocalHistoryEquiv
  simp only [Equiv.trans_apply, Equiv.prodCongr_apply,
    Fin.insertNthEquiv_apply]
  rw [← selected_index, Fin.insertNth_apply_succAbove]
  change
    (if h : k.val < j.val
      then before ⟨k.val, h⟩
      else after ⟨k.val - j.val, by omega⟩) = after i
  have not_before : ¬ j.val + i.val < j.val := by omega
  simp [k, not_before]

theorem unconditionalSourcePhysicalStoppingTargetFirst_branch_apply
    {S B N d L m : ℕ}
    (width : Fin S → ℝ) (schedule : Fin L → Fin S)
    (ξ ζ : BipartiteUnitVector d)
    (r s : Fin (L + 1))
    (φ ψ : DSVDensityRationalPublicMultiscalePhaseIndex S B)
    (a b : DSVUniformDensityIndependentHistoryLocalIndex
      (L + 1) N d)
    (i k : Fin m) :
    actualStoppingBranchVector
      (unconditionalSourcePhysicalStoppingTargetFirstStateEquiv
        S B N d L m
        (dSVDensityRationalHeterogeneousOriginalStoppedState
          S B N d L m width schedule ξ ζ)) r s
      (⟨(φ, a), i⟩, ⟨(ψ, b), k⟩) =
        ePRState
          (Fintype.card
            (DSVDensityRationalPublicMultiscalePhase S B))
          (φ, ψ) *
        dSVDensityRationalHeterogeneousActualPhysicalState
          N width schedule ξ ζ
          (⟨r, a⟩, ⟨s, b⟩) *
        embezzlementState m (i, k) := by
  change
    dSVDensityRationalHeterogeneousOriginalStoppedState
      S B N d L m width schedule ξ ζ
      (dSVDensityRationalPublicMultiscalePhaseTargetFirstIndexEquiv
        S B N d L m ((φ, ⟨r, a⟩), i),
       dSVDensityRationalPublicMultiscalePhaseTargetFirstIndexEquiv
        S B N d L m ((ψ, ⟨s, b⟩), k)) = _
  exact dSVDensityRationalHeterogeneousOriginalStoppedState_apply
    S B N d L m width schedule ξ ζ φ ψ ⟨r, a⟩ ⟨s, b⟩ i k

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

theorem unconditionalSelectedMultiscalePhase_card
    (S B : ℕ) :
    Fintype.card
        (DSVDensityRationalPublicMultiscalePhase (S + 1) B) =
      B * Fintype.card (Fin S → Fin B) := by
  simp [DSVDensityRationalPublicMultiscalePhase,
    pow_succ, Nat.mul_comm]

theorem unconditionalSelectedMultiscalePhase_EPR_apply
    {S B : ℕ} (scale : Fin (S + 1))
    (p q : Fin B)
    (r t : Fin (Fintype.card (Fin S → Fin B))) :
    ePRState
        (Fintype.card
          (DSVDensityRationalPublicMultiscalePhase (S + 1) B))
        (unconditionalSelectedMultiscalePhaseIndexEquiv
            scale (p, r),
         unconditionalSelectedMultiscalePhaseIndexEquiv
            scale (q, t)) =
      ePRState B (p, q) *
        ePRState (Fintype.card (Fin S → Fin B)) (r, t) := by
  classical
  by_cases selected : p = q
  · subst q
    by_cases residual : r = t
    · subst t
      simp only [ePRState, ↓reduceIte]
      rw [unconditionalSelectedMultiscalePhase_card,
        Nat.cast_mul, Real.sqrt_mul (Nat.cast_nonneg B), mul_inv]
      exact Complex.ofReal_mul _ _
    · have different :
          unconditionalSelectedMultiscalePhaseIndexEquiv
              scale (p, r) ≠
            unconditionalSelectedMultiscalePhaseIndexEquiv
              scale (p, t) := by
          intro equal
          exact residual
            (congrArg Prod.snd
              ((unconditionalSelectedMultiscalePhaseIndexEquiv
                scale).injective equal))
      simp [ePRState, different, residual]
  · have different :
        unconditionalSelectedMultiscalePhaseIndexEquiv
            scale (p, r) ≠
          unconditionalSelectedMultiscalePhaseIndexEquiv
            scale (q, t) := by
        intro equal
        exact selected
          (congrArg Prod.fst
            ((unconditionalSelectedMultiscalePhaseIndexEquiv
              scale).injective equal))
    simp [ePRState, different, selected]

theorem unconditionalActualMultiscalePhase_EPR_apply
    {S B : ℕ} (scale : Fin S)
    (p q : Fin B)
    (r t : Fin (Fintype.card (Fin (S - 1) → Fin B))) :
    ePRState
        (Fintype.card
          (DSVDensityRationalPublicMultiscalePhase S B))
        (unconditionalActualMultiscalePhaseIndexEquiv
            scale (p, r),
         unconditionalActualMultiscalePhaseIndexEquiv
            scale (q, t)) =
      ePRState B (p, q) *
        ePRState (Fintype.card (Fin (S - 1) → Fin B))
          (r, t) := by
  cases S with
  | zero => exact Fin.elim0 scale
  | succ S =>
      exact unconditionalSelectedMultiscalePhase_EPR_apply
        scale p q r t

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

theorem
    unconditionalSourcePhysicalCleanedStoppingFixedSource_branch_apply
    {S B N d L m : ℕ}
    (width : Fin S → ℝ) (schedule : Fin L → Fin S)
    (ξ ζ : BipartiteUnitVector d)
    (r s : Fin (L + 1))
    (φ ψ : DSVDensityRationalPublicMultiscalePhaseIndex S B)
    (a b : DSVUniformDensityIndependentHistoryLocalIndex
      (L + 1) N d)
    (i k : Fin m) :
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
          S B N d L m)) r s
      (⟨(φ, a), i⟩, ⟨(ψ, b), k⟩) =
        ePRState
          (Fintype.card
            (DSVDensityRationalPublicMultiscalePhase S B))
          (φ, ψ) *
        dSVDensityRationalHeterogeneousActualPhysicalState
          N width schedule ξ ζ (⟨r, a⟩, ⟨s, b⟩) *
        embezzlementState m (i, k) := by
  rw [unconditionalSourcePhysicalCleanedStoppingFixedSource_physicalAction]
  exact
    unconditionalSourcePhysicalStoppingTargetFirst_branch_apply
      width schedule ξ ζ r s φ ψ a b i k

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

theorem unconditionalActualCanonicalCleanedHistorySymm_eq_direct
    {L : ℕ} (j : Fin L) (β : Type*)
    (selected : β) (before : Fin j.val → β)
    (later : Fin (L - j.val) → β) :
    (unconditionalSourcePhysicalCleanedSelectedHistoryEquiv
      j β).symm (selected, (before, later)) =
      directDSVSelectedCopyLocalHistoryEquiv
        j (selected, (before, later)) := by
  apply (unconditionalSourcePhysicalCleanedSelectedHistoryEquiv
    j β).injective
  rw [Equiv.apply_symm_apply]
  apply Prod.ext
  · exact
      (directDSVSelectedCopyLocalHistoryEquiv_hit
        j selected before later).symm
  · apply Prod.ext
    · funext i
      exact
        (directDSVSelectedCopyLocalHistoryEquiv_before
          j selected before later i).symm
    · funext i
      exact
        (directDSVSelectedCopyLocalHistoryEquiv_after
          j selected before later i).symm

theorem unconditionalActualCanonicalFullSource_eq_rawSelectedStage
    {S B N d L m : ℕ}
    (width : Fin S → ℝ) (schedule : Fin L → Fin S)
    (ξ ζ : BipartiteUnitVector d) (j : Fin L) :
    unconditionalSourcePhysicalCleanedFullBilateralStateIsometry
        (unconditionalActualMultiscalePhaseIndexEquiv
          (schedule j)).symm j
        (unconditionalActualCanonicalFixedSourceMatchedBranch
          (B := B) (m := m) width schedule ξ ζ j) =
      unconditionalMatchedVerifierTensor
        (unconditionalActualCanonicalRawSelectedPhysicalStage
          (B := B) (m := m) (width (schedule j)) ξ ζ)
        (unconditionalSelectedCopyRetainedWork
          (N := N) width schedule ξ ζ j
          (unconditionalActualCanonicalRetainedPhaseTail
            (S := S) (B := B) j)) := by
  classical
  ext ⟨⟨⟨⟨p, i⟩, packedA⟩, ⟨⟨q, k⟩, packedB⟩⟩,
    ⟨before, ⟨⟨afterA, afterB⟩, ⟨tailA, tailB⟩⟩⟩⟩
  let a := finProdFinEquiv.symm packedA
  let b := finProdFinEquiv.symm packedB
  let historyA :=
    (unconditionalSourcePhysicalCleanedSelectedHistoryEquiv j
      (DSVUniformDensityThresholdLocalIndex N d)).symm
      (⟨a.1, i⟩,
       ((fun t => (before t).1), afterA))
  let historyB :=
    (unconditionalSourcePhysicalCleanedSelectedHistoryEquiv j
      (DSVUniformDensityThresholdLocalIndex N d)).symm
      (⟨b.1, k⟩,
       ((fun t => (before t).2), afterB))
  change
    unconditionalActualCanonicalFixedSourceMatchedBranch
        width schedule ξ ζ j
        (⟨(unconditionalActualMultiscalePhaseIndexEquiv
              (schedule j) (p, tailA), historyA), a.2⟩,
         ⟨(unconditionalActualMultiscalePhaseIndexEquiv
              (schedule j) (q, tailB), historyB), b.2⟩) =
      unconditionalActualCanonicalRawSelectedPhysicalStage
        (width (schedule j)) ξ ζ
        (⟨(p, i), packedA⟩, ⟨(q, k), packedB⟩) *
      unconditionalSelectedCopyRetainedWork
        width schedule ξ ζ j
        (unconditionalActualCanonicalRetainedPhaseTail j)
        (before, ((afterA, afterB), (tailA, tailB)))
  unfold unconditionalActualCanonicalFixedSourceMatchedBranch
  rw [unconditionalSourcePhysicalCleanedStoppingFixedSource_branch_apply
    width schedule ξ ζ j.succ j.succ]
  rw [unconditionalActualMultiscalePhase_EPR_apply
    (schedule j) p q tailA tailB]
  change
    (ePRState B (p, q) *
       ePRState (Fintype.card (Fin (S - 1) → Fin B))
         (tailA, tailB)) *
       dSVDensityRationalHeterogeneousActualPhysicalState
         N width schedule ξ ζ
         (⟨j.succ, historyA⟩, ⟨j.succ, historyB⟩) *
       embezzlementState m (a.2, b.2) =
      (ePRState B (p, q) *
        dSVDensityRationalPhysicalAcceptedOutcome
          (width (schedule j)) N ξ ζ (⟨a.1, i⟩, ⟨b.1, k⟩) *
        embezzlementState m (a.2, b.2)) *
        (dSVDensityRationalHeterogeneousStoppedCommonPrefixFailureVector
          (N := N) width schedule ξ ζ j before *
          (dSVUniformDensityIndependentSharedState
             (L - j.val) N d (afterA, afterB) *
           ePRState (Fintype.card (Fin (S - 1) → Fin B))
             (tailA, tailB)))
  rw [show historyA =
    directDSVSelectedCopyLocalHistoryEquiv j
      (⟨a.1, i⟩, ((fun t => (before t).1), afterA)) from
        unconditionalActualCanonicalCleanedHistorySymm_eq_direct
          j _ _ _ _,
    show historyB =
    directDSVSelectedCopyLocalHistoryEquiv j
      (⟨b.1, k⟩, ((fun t => (before t).2), afterB)) from
        unconditionalActualCanonicalCleanedHistorySymm_eq_direct
          j _ _ _ _]
  rw [directDSVActualStoppingSelectedHistory_sourceProduct]
  unfold dSVDensityRationalPhysicalAcceptedOutcome
  ring

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
