import Definitions.Def_quantum_parallel_repetition_game
import Definitions.Def_qpr_core_37
import Mathlib.Algebra.BigOperators.Group.Finset.Defs
import Mathlib.Algebra.Group.Pi.Basic
import Mathlib.Algebra.Group.Submonoid.Defs
import Mathlib.Algebra.GroupWithZero.Defs
import Mathlib.Algebra.Module.Defs
import Mathlib.Algebra.Module.Pi
import Mathlib.Algebra.Ring.CompTypeclasses
import Mathlib.Algebra.Ring.Defs
import Mathlib.Algebra.Ring.Hom.Defs
import Mathlib.Algebra.Star.Basic
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
import Mathlib.Data.Real.Basic
import Mathlib.Data.SetLike.Basic
import Mathlib.Data.Sigma.Basic
import Mathlib.LinearAlgebra.Matrix.Defs
import Mathlib.LinearAlgebra.Matrix.Kronecker
import Mathlib.LinearAlgebra.UnitaryGroup
import Mathlib.Logic.Equiv.Defs
import Mathlib.Logic.Equiv.Prod
import Mathlib.MeasureTheory.Measure.MeasureSpace
import Mathlib.Topology.Defs.Filter

namespace QuantumParallelRepetition

open scoped ComplexOrder Matrix BigOperators InnerProductSpace
open Complex Matrix Finset

noncomputable section

open WithLp
open scoped BigOperators ComplexOrder Kronecker MatrixOrder
  Matrix.Norms.L2Operator InnerProductSpace

attribute [local instance] Classical.propDecidable

section DependentStoppingBlocks

variable {X Y A B R : Type}
variable [Fintype X] [Fintype Y] [Fintype A] [Fintype B]
variable [Fintype R] [DecidableEq R]
variable {ι κ : R → Type}
variable [∀ r, Fintype (ι r)] [∀ r, DecidableEq (ι r)]
variable [∀ r, Fintype (κ r)] [∀ r, DecidableEq (κ r)]

def actualStoppingBranchVector
    (z : EuclideanSpace ℂ ((Σ r, ι r) × (Σ s, κ s)))
    (r s : R) : EuclideanSpace ℂ (ι r × κ s) :=
  toLp 2 fun q => z (⟨r, q.1⟩, ⟨s, q.2⟩)

def actualStoppingBranchWinningEffect
    (G : Game X Y A B)
    (PA : (r : R) → X → POVM A (ι r))
    (PB : (s : R) → Y → POVM B (κ s))
    (r s : R) (x : X) (y : Y) :
    Matrix (ι r × κ s) (ι r × κ s) ℂ :=
  ∑ a : A, ∑ b : B,
    if G.predicate x y a b = true then
      (PA r x).operator a ⊗ₖ (PB s y).operator b
    else 0

def actualStoppingGlobalWinningEffect
    (G : Game X Y A B)
    (PA : (r : R) → X → POVM A (ι r))
    (PB : (s : R) → Y → POVM B (κ s))
    (x : X) (y : Y) :
    Matrix ((Σ r, ι r) × (Σ s, κ s))
      ((Σ r, ι r) × (Σ s, κ s)) ℂ :=
  ∑ a : A, ∑ b : B,
    if G.predicate x y a b = true then
      (dependentBlockPOVM
        (fun r => PA r x)).operator a ⊗ₖ
        (dependentBlockPOVM
          (fun s => PB s y)).operator b
    else 0

end DependentStoppingBlocks

end

noncomputable section

open WithLp
open scoped BigOperators ComplexOrder Kronecker MatrixOrder
  Matrix.Norms.L2Operator InnerProductSpace

attribute [local instance] Classical.propDecidable

section QuestionLocalStopping

variable {X Y A B R : Type}
variable [Fintype X] [Fintype Y] [Fintype A] [Fintype B]
variable [Fintype R] [DecidableEq R]
variable {ι : R → Type}
variable [∀ r, Fintype (ι r)] [∀ r, DecidableEq (ι r)]

def actualStoppingQuestionLocalAction
    (U V : Matrix.unitaryGroup (Σ r, ι r) ℂ)
    (z : EuclideanSpace ℂ ((Σ r, ι r) × (Σ r, ι r))) :
    EuclideanSpace ℂ ((Σ r, ι r) × (Σ r, ι r)) :=
  toLp 2
    (((U : Matrix (Σ r, ι r) (Σ r, ι r) ℂ) ⊗ₖ
      (V : Matrix (Σ r, ι r) (Σ r, ι r) ℂ)).mulVec
      (ofLp z))

end QuestionLocalStopping

end

noncomputable section

open WithLp
open scoped BigOperators ComplexOrder Kronecker MatrixOrder

abbrev DSVDensityRationalPublicLogPhaseHistoryFamily
    (B N d L : ℕ) :=
  BipartiteUnitVector d →
    Matrix.unitaryGroup
      (DSVDensityRationalPublicLogPhaseHistoryLocalIndex
        B N d L) ℂ

def dSVDensityRationalPublicLogPhaseStoppedState
    (B N d L m : ℕ)
    (S T : DSVDensityRationalPublicLogPhaseHistoryFamily
      B N d L)
    (ξ ζ : BipartiteUnitVector d) :
    EuclideanSpace ℂ
      (Fin (d *
        dSVDensityRationalPublicLogPhaseResidual
          B N d L m) ×
       Fin (d *
        dSVDensityRationalPublicLogPhaseResidual
          B N d L m)) :=
  localUnitaryAction
    (dSVDensityRationalPublicLogPhaseActualTargetFirstLocalLift
      B N d L m (S ξ))
    (dSVDensityRationalPublicLogPhaseActualTargetFirstLocalLift
      B N d L m (T ζ))
    (dSVDensityRationalPublicLogPhaseTargetFirstPreparedSource
      B N d L m)

def dSVDensityRationalPublicMultiscaleOriginalSigmaTargetFirstEquiv
    (S B N d L m : ℕ) :
    (Σ _ :
      DSVDensityRationalPublicMultiscalePhaseIndex S B ×
        DSVUniformDensityThresholdWholeHistoryLocalIndex
          N d L,
      Fin m) ≃
      Fin (d *
        dSVDensityRationalPublicMultiscalePhaseResidual
          S B N d L m) :=
  (dSVDensityRationalPublicBucketCoherentPhaseSigmaProductEquiv
    (H := DSVUniformDensityThresholdWholeHistoryLocalIndex
      N d L)
    (Fintype.card
      (DSVDensityRationalPublicMultiscalePhase S B)) m).trans
    (dSVDensityRationalPublicMultiscalePhaseTargetFirstIndexEquiv
      S B N d L m)

def dSVDensityRationalHeterogeneousOriginalAliceHistoryFamily
    (S B N d L : ℕ)
    (width : Fin S → ℝ) (schedule : Fin L → Fin S) :
    DSVDensityRationalPublicLogPhaseHistoryFamily
      (Fintype.card
        (DSVDensityRationalPublicMultiscalePhase S B))
      N d L :=
  fun ξ =>
    dSVDensityRationalPublicLogPhasePhysicalHistoryUnitary
      (Fintype.card
        (DSVDensityRationalPublicMultiscalePhase S B))
      (dSVDensityRationalHeterogeneousActualAliceUnitary
        N width schedule ξ)

def dSVDensityRationalHeterogeneousOriginalBobHistoryFamily
    (S B N d L : ℕ)
    (width : Fin S → ℝ) (schedule : Fin L → Fin S) :
    DSVDensityRationalPublicLogPhaseHistoryFamily
      (Fintype.card
        (DSVDensityRationalPublicMultiscalePhase S B))
      N d L :=
  fun ζ =>
    dSVDensityRationalPublicLogPhasePhysicalHistoryUnitary
      (Fintype.card
        (DSVDensityRationalPublicMultiscalePhase S B))
      (dSVDensityRationalHeterogeneousActualBobUnitary
        N width schedule ζ)

def dSVDensityRationalHeterogeneousOriginalStoppedState
    (S B N d L m : ℕ)
    (width : Fin S → ℝ) (schedule : Fin L → Fin S)
    (ξ ζ : BipartiteUnitVector d) :
    EuclideanSpace ℂ
      (Fin (d *
        dSVDensityRationalPublicMultiscalePhaseResidual
          S B N d L m) ×
       Fin (d *
        dSVDensityRationalPublicMultiscalePhaseResidual
          S B N d L m)) :=
  dSVDensityRationalPublicLogPhaseStoppedState
    (Fintype.card
      (DSVDensityRationalPublicMultiscalePhase S B))
    N d L m
    (dSVDensityRationalHeterogeneousOriginalAliceHistoryFamily
      S B N d L width schedule)
    (dSVDensityRationalHeterogeneousOriginalBobHistoryFamily
      S B N d L width schedule)
    ξ ζ

def dSVDensityRationalHeterogeneousOriginalSameStopStateEquiv
    (S B N d L m : ℕ) :
    EuclideanSpace ℂ
      ((Σ _ :
        DSVDensityRationalPublicMultiscalePhaseIndex S B ×
          DSVUniformDensityThresholdWholeHistoryLocalIndex
            N d L,
        Fin m) ×
       (Σ _ :
        DSVDensityRationalPublicMultiscalePhaseIndex S B ×
          DSVUniformDensityThresholdWholeHistoryLocalIndex
            N d L,
        Fin m)) ≃ₗᵢ[ℂ]
      EuclideanSpace ℂ
        (Fin (d *
          dSVDensityRationalPublicMultiscalePhaseResidual
            S B N d L m) ×
         Fin (d *
          dSVDensityRationalPublicMultiscalePhaseResidual
            S B N d L m)) :=
  LinearIsometryEquiv.piLpCongrLeft 2 ℂ ℂ
    (Equiv.prodCongr
      (dSVDensityRationalPublicMultiscaleOriginalSigmaTargetFirstEquiv
        S B N d L m)
      (dSVDensityRationalPublicMultiscaleOriginalSigmaTargetFirstEquiv
        S B N d L m))

def dSVDensityRationalHeterogeneousOriginalSameStopSigmaSource
    (S B N d L m : ℕ)
    (width : Fin S → ℝ) (schedule : Fin L → Fin S)
    (ξ ζ : BipartiteUnitVector d) :
    EuclideanSpace ℂ
      (Fin (d *
        dSVDensityRationalPublicMultiscalePhaseResidual
          S B N d L m) ×
       Fin (d *
        dSVDensityRationalPublicMultiscalePhaseResidual
          S B N d L m)) :=
  dSVDensityRationalHeterogeneousOriginalSameStopStateEquiv
      S B N d L m
    (dSVDensityRationalHeterogeneousPureStoppedSigmaState
      width schedule ξ ζ
      (fun _ _ _ => embezzlementState m))

end

end QuantumParallelRepetition
