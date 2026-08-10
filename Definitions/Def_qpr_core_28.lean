import Definitions.Def_quantum_parallel_repetition_game
import Definitions.Def_qpr_core_27
import Mathlib.Algebra.Algebra.Defs
import Mathlib.Algebra.BigOperators.Group.Finset.Defs
import Mathlib.Algebra.Field.Defs
import Mathlib.Algebra.Group.Action.Pi
import Mathlib.Algebra.Group.Defs
import Mathlib.Algebra.Group.Pi.Basic
import Mathlib.Algebra.Group.Submonoid.Defs
import Mathlib.Algebra.GroupWithZero.Defs
import Mathlib.Algebra.Ring.Defs
import Mathlib.Algebra.Star.Basic
import Mathlib.AlgebraicTopology.SimplexCategory.Basic
import Mathlib.AlgebraicTopology.SimplexCategory.Defs
import Mathlib.Analysis.CStarAlgebra.Classes
import Mathlib.Analysis.Complex.Basic
import Mathlib.Analysis.Complex.Norm
import Mathlib.Analysis.InnerProductSpace.Basic
import Mathlib.Analysis.InnerProductSpace.PiL2
import Mathlib.Analysis.Matrix.Normed
import Mathlib.Analysis.Matrix.Order
import Mathlib.Analysis.Normed.Field.Basic
import Mathlib.Analysis.Normed.Group.Defs
import Mathlib.Analysis.Normed.Lp.PiLp
import Mathlib.Analysis.Normed.Lp.WithLp
import Mathlib.Analysis.Normed.Module.Basic
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
import Mathlib.Data.Real.Sqrt
import Mathlib.Data.SetLike.Basic
import Mathlib.LinearAlgebra.Matrix.Defs
import Mathlib.LinearAlgebra.Matrix.Kronecker
import Mathlib.LinearAlgebra.UnitaryGroup
import Mathlib.Logic.Equiv.Defs
import Mathlib.Logic.Equiv.Fin.Basic
import Mathlib.MeasureTheory.Measure.MeasureSpace
import Mathlib.Topology.Defs.Filter

namespace QuantumParallelRepetition

open scoped ComplexOrder Matrix BigOperators InnerProductSpace
open Complex Matrix Finset

noncomputable section

open WithLp
open scoped BigOperators Kronecker ComplexOrder MatrixOrder

def dSVDensityRationalPublicMultiscaleBucketCoherentSigmaState
    {H : Type*} [Fintype H] {m : ℕ} (S B : ℕ)
    (history : EuclideanSpace ℂ (H × H))
    (work : DSVDensityRationalPublicMultiscalePhaseIndex S B →
      H → H → EuclideanSpace ℂ (Fin m × Fin m)) :
    EuclideanSpace ℂ
      ((Σ _ :
          DSVDensityRationalPublicMultiscalePhaseIndex S B × H,
          Fin m) ×
       (Σ _ :
          DSVDensityRationalPublicMultiscalePhaseIndex S B × H,
          Fin m)) :=
  dSVDensityRationalPublicBucketCoherentPhaseSigmaState
    (Fintype.card
      (DSVDensityRationalPublicMultiscalePhase S B))
    history work

def dSVDensityRationalHeterogeneousPureStoppedSigmaState
    {S B N d L m : ℕ}
    (width : Fin S → ℝ)
    (schedule : Fin L → Fin S)
    (ξ ζ : BipartiteUnitVector d)
    (work :
      DSVDensityRationalPublicMultiscalePhaseIndex S B →
        DSVUniformDensityThresholdWholeHistoryLocalIndex N d L →
        DSVUniformDensityThresholdWholeHistoryLocalIndex N d L →
          EuclideanSpace ℂ (Fin m × Fin m)) :
    EuclideanSpace ℂ
      ((Σ _ :
        DSVDensityRationalPublicMultiscalePhaseIndex S B ×
          DSVUniformDensityThresholdWholeHistoryLocalIndex N d L,
        Fin m) ×
       (Σ _ :
        DSVDensityRationalPublicMultiscalePhaseIndex S B ×
          DSVUniformDensityThresholdWholeHistoryLocalIndex N d L,
        Fin m)) :=
  dSVDensityRationalPublicMultiscaleBucketCoherentSigmaState
    S B
    (dSVDensityRationalHeterogeneousActualPhysicalState
      N width schedule ξ ζ)
    work

def dSVDensityRationalMixedCanonicalPrefixPureHarmonicTensor
    {N : ℕ} (n : ℕ)
    (z : EuclideanSpace ℂ (Fin N × Fin N)) :
    EuclideanSpace ℂ (Fin (N * n) × Fin (N * n)) :=
  toLp 2 fun q : Fin (N * n) × Fin (N * n) =>
    let a : Fin N × Fin n := finProdFinEquiv.symm q.1
    let b : Fin N × Fin n := finProdFinEquiv.symm q.2
    z (a.1, b.1) * embezzlementState n (a.2, b.2)

def dSVDensityRationalMixedCanonicalPrefixPhysicalAcceptedSigmaState
    {d N : ℕ} (w : ℝ) (n : ℕ)
    (ξ ζ : BipartiteUnitVector d) :
    EuclideanSpace ℂ
      ((Σ _ : Fin d, Fin (N * n)) ×
        (Σ _ : Fin d, Fin (N * n))) :=
  dSVUniformDensityCorrectedMatchedSigmaWeightedResidual
    (dSVDensityRationalLocalSpectralPairHistory N ξ ζ)
    (fun i j =>
      dSVDensityRationalMixedCanonicalPrefixPureHarmonicTensor
        n (dSVDensityRationalPhysicalMixedAcceptedPrefixWork
          w N ξ ζ i j))

end

noncomputable section

open WithLp
open scoped BigOperators Kronecker ComplexOrder MatrixOrder

attribute [local instance] Classical.propDecidable

def dSVDensityRationalHeterogeneousActualCommonStopScheduledOutcome
    {S N d L : ℕ} (width : Fin S → ℝ)
    (schedule : Fin L → Fin S)
    (ξ ζ : BipartiteUnitVector d)
    (j : Fin L) (i : Fin (L + 1)) :
    EuclideanSpace ℂ
      (DSVUniformDensityThresholdLocalIndex N d ×
       DSVUniformDensityThresholdLocalIndex N d) :=
  dSVDensityRationalCompleteStoppedOptionalOutcome
    (dSVDensityRationalHeterogeneousActualPhysicalFlagBornCopyWidth
      width schedule i) N ξ ζ
    (dSVDensityRationalCompleteStoppedOptionalLocalSchedule
      L j.succ i)
    (dSVDensityRationalCompleteStoppedOptionalLocalSchedule
      L j.succ i)

end

noncomputable section

open WithLp
open scoped BigOperators ComplexOrder Kronecker MatrixOrder

def dSVDensityRationalPureBaseExactFlagBornMass
    {A C : Type*} [Fintype A] [Fintype C] {L : ℕ}
    (alice : A → Fin (L + 1)) (bob : C → Fin (L + 1))
    (z : EuclideanSpace ℂ (A × C))
    (flagAlice flagBob : Fin (L + 1)) : ℝ :=
  ∑ a : A, ∑ c : C,
    ‖z (a, c)‖ ^ 2 *
      if alice a = flagAlice ∧ bob c = flagBob then 1 else 0

end

noncomputable section

open WithLp
open scoped BigOperators Kronecker ComplexOrder MatrixOrder

def dSVDensityRationalPublicBucketPhysicalCommonRank
    {N : ℕ} (r s : Fin (N + 1)) : Fin (N + 1) :=
  ⟨min r.val s.val, by
    have left := r.isLt
    have right := s.isLt
    omega⟩

def dSVDensityRationalPublicBucketPhysicalPhaseWeightedMixedError
    {d N n B : ℕ} (Q : ℕ) (w : ℝ)
    (ξ ζ : BipartiteUnitVector d)
    (A C : Fin B → Option ℕ →
      Matrix.unitaryGroup (Fin (N * n)) ℂ) : ℝ :=
  ∑ phase : Fin B,
    dSVDensityRationalPublicLogRankPhaseWeight B phase *
      ∑ i : Fin d, ∑ j : Fin d,
        (dSVDensityRationalPrefixHarmonicSpectralOverlap
          ξ ζ i j / ((d : ℝ) * (N : ℝ))) *
          ‖localUnitaryAction
              (A phase
                (dSVDensityRationalPublicLogRankBucket Q phase
                  (dSVDensityRationalPhysicalAcceptedRank
                    w N ξ i)))
              (C phase
                (dSVDensityRationalPublicLogRankBucket Q phase
                  (dSVDensityRationalPhysicalAcceptedRank
                    w N ζ j)))
              (dSVDensityRationalMixedCanonicalPrefixPureHarmonicTensor
                n
                (dSVDensityRationalPhysicalMixedAcceptedPrefixWork
                  w N ξ ζ i j)) -
            Real.sqrt
                ((dSVDensityRationalPhysicalAcceptedRank
                  w N ξ i).val : ℝ) •
              embezzlementState (N * n)‖ ^ 2

def dSVDensityRationalPublicBucketPhysicalCoherentMixedState
    {d N B : ℕ} (w : ℝ) (n : ℕ)
    (ξ ζ : BipartiteUnitVector d) :
    EuclideanSpace ℂ
      ((Σ _ : Fin B × Fin d, Fin (N * n)) ×
       (Σ _ : Fin B × Fin d, Fin (N * n))) :=
  dSVDensityRationalPublicBucketCoherentPhaseSigmaState B
    (dSVDensityRationalLocalSpectralPairHistory N ξ ζ)
    (fun _ i j =>
      dSVDensityRationalMixedCanonicalPrefixPureHarmonicTensor n
        (dSVDensityRationalPhysicalMixedAcceptedPrefixWork
          w N ξ ζ i j))

end

end QuantumParallelRepetition
