import Definitions.Def_quantum_parallel_repetition_game
import Definitions.Def_qpr_core_28
import Mathlib.Algebra.Algebra.Defs
import Mathlib.Algebra.BigOperators.Group.Finset.Defs
import Mathlib.Algebra.Field.Defs
import Mathlib.Algebra.Group.Action.Pi
import Mathlib.Algebra.Group.Defs
import Mathlib.Algebra.Group.Pi.Basic
import Mathlib.Algebra.Group.Submonoid.Defs
import Mathlib.Algebra.GroupWithZero.Defs
import Mathlib.Algebra.Order.Group.Unbundled.Abs
import Mathlib.Algebra.Ring.Defs
import Mathlib.Algebra.Star.Basic
import Mathlib.Analysis.CStarAlgebra.Classes
import Mathlib.Analysis.Complex.Basic
import Mathlib.Analysis.Complex.Exponential
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
import Mathlib.Data.Fintype.Defs
import Mathlib.Data.Fintype.Pi
import Mathlib.Data.Fintype.Prod
import Mathlib.Data.Fintype.Sigma
import Mathlib.Data.Matrix.Basic
import Mathlib.Data.Matrix.Mul
import Mathlib.Data.Nat.Basic
import Mathlib.Data.Nat.Cast.Defs
import Mathlib.Data.Nat.Init
import Mathlib.Data.Real.Basic
import Mathlib.Data.Real.Sqrt
import Mathlib.Data.SetLike.Basic
import Mathlib.LinearAlgebra.Matrix.Defs
import Mathlib.LinearAlgebra.Matrix.Kronecker
import Mathlib.LinearAlgebra.UnitaryGroup
import Mathlib.MeasureTheory.Measure.MeasureSpace
import Mathlib.Order.Defs.PartialOrder
import Mathlib.Topology.Defs.Filter

namespace QuantumParallelRepetition

open scoped ComplexOrder Matrix BigOperators InnerProductSpace
open Complex Matrix Finset

noncomputable section

open WithLp
open scoped BigOperators Kronecker ComplexOrder MatrixOrder

def dSVDensityRationalPublicBucketPhysicalCoherentTargetState
    {d N B : ℕ} (w : ℝ) (n : ℕ)
    (ξ ζ : BipartiteUnitVector d) :
    EuclideanSpace ℂ
      ((Σ _ : Fin B × Fin d, Fin (N * n)) ×
       (Σ _ : Fin B × Fin d, Fin (N * n))) :=
  dSVDensityRationalPublicBucketCoherentPhaseSigmaState B
    (dSVDensityRationalLocalSpectralPairHistory N ξ ζ)
    (fun _ i _ =>
      Real.sqrt
          ((dSVDensityRationalPhysicalAcceptedRank
            w N ξ i).val : ℝ) •
        embezzlementState (N * n))

def dSVDensityRationalPublicBucketPhysicalCoherentLocalReset
    {d N B n : ℕ} (Q : ℕ) (w : ℝ)
    (ξ ζ : BipartiteUnitVector d)
    (A C : Fin B → Option ℕ →
      Matrix.unitaryGroup (Fin (N * n)) ℂ)
    (z : EuclideanSpace ℂ
      ((Σ _ : Fin B × Fin d, Fin (N * n)) ×
       (Σ _ : Fin B × Fin d, Fin (N * n)))) :
    EuclideanSpace ℂ
      ((Σ _ : Fin B × Fin d, Fin (N * n)) ×
       (Σ _ : Fin B × Fin d, Fin (N * n))) :=
  dSVUniformDensityPhysicalAsyncSigmaContinuation
    (fun q : Fin B × Fin d =>
      A q.1
        (dSVDensityRationalPublicLogRankBucket Q q.1
          (dSVDensityRationalPhysicalAcceptedRank
            w N ξ q.2)))
    (fun q : Fin B × Fin d =>
      C q.1
        (dSVDensityRationalPublicLogRankBucket Q q.1
          (dSVDensityRationalPhysicalAcceptedRank
            w N ζ q.2))) z

end

noncomputable section

open scoped BigOperators ComplexOrder MatrixOrder

def dSVDensityRationalPublicLogRankPhaseWeightedCrossing
    {N : ℕ} (Q B : ℕ) (r s : Fin (N + 1)) : ℝ :=
  ∑ phase : Fin B,
    dSVDensityRationalPublicLogRankPhaseWeight B phase *
      (if
        dSVDensityRationalPublicLogRankBucket Q phase r =
          dSVDensityRationalPublicLogRankBucket Q phase s
       then (0 : ℝ) else 1)

end

noncomputable section

open WithLp
open scoped BigOperators Kronecker ComplexOrder MatrixOrder

def dSVDensityRationalHeterogeneousCommonStopSpectralAtomWeight
    {d : ℕ} (N : ℕ)
    (ξ ζ : BipartiteUnitVector d)
    (i j : Fin d) : ℝ :=
  dSVDensityRationalPrefixHarmonicSpectralOverlap ξ ζ i j /
    ((d : ℝ) * (N : ℝ))

def dSVDensityRationalHeterogeneousCommonStopSpectralRankGap
    {d : ℕ} (N : ℕ) (w : ℝ)
    (ξ ζ : BipartiteUnitVector d) : ℝ :=
  ∑ i : Fin d, ∑ j : Fin d,
    dSVDensityRationalHeterogeneousCommonStopSpectralAtomWeight
      N ξ ζ i j *
      |((dSVDensityRationalPhysicalAcceptedRank w N ξ i).val : ℝ) -
        ((dSVDensityRationalPhysicalAcceptedRank w N ζ j).val : ℝ)|

def dSVDensityRationalHeterogeneousCommonStopSpectralAliceMass
    {d : ℕ} (N : ℕ) (w : ℝ)
    (ξ ζ : BipartiteUnitVector d) : ℝ :=
  ∑ i : Fin d, ∑ j : Fin d,
    dSVDensityRationalHeterogeneousCommonStopSpectralAtomWeight
      N ξ ζ i j *
      ((dSVDensityRationalPhysicalAcceptedRank w N ξ i).val : ℝ)

end

noncomputable section

open WithLp
open scoped BigOperators ComplexOrder Kronecker MatrixOrder

def dSVDensityRationalHeterogeneousCommonStopGaugeStageError
    {d N B : ℕ} (Q : ℕ) (w : ℝ) (n : ℕ)
    (ξ ζ : BipartiteUnitVector d)
    (A C : Fin B → Option ℕ →
      Matrix.unitaryGroup (Fin (N * n)) ℂ) : ℝ :=
  ‖dSVDensityRationalPublicBucketPhysicalCoherentLocalReset
        Q w ξ ζ A C
        (dSVDensityRationalPublicBucketPhysicalCoherentMixedState
          (N := N) (B := B) w n ξ ζ) -
      dSVDensityRationalPublicBucketPhysicalCoherentTargetState
        (N := N) (B := B) w n ξ ζ‖ ^ 2

def dSVDensityRationalHeterogeneousStoppedCommonStopGaugeError
    {d N B S L : ℕ} (Q : ℕ) (n : ℕ)
    (width : Fin S → ℝ) (schedule : Fin L → Fin S)
    (ξ ζ : BipartiteUnitVector d)
    (A C : Fin B → Option ℕ →
      Matrix.unitaryGroup (Fin (N * n)) ℂ) : ℝ :=
  ∑ k : Fin L,
    dSVDensityRationalHeterogeneousPhysicalSurvival
        N width schedule ξ ζ k.val *
      dSVDensityRationalHeterogeneousCommonStopGaugeStageError
        Q (width (schedule k)) n ξ ζ A C

def dSVDensityRationalHeterogeneousStoppedCommonPrefixFailureCopy
    {S N d L : ℕ} (width : Fin S → ℝ)
    (schedule : Fin L → Fin S)
    (ξ ζ : BipartiteUnitVector d)
    (j : Fin L) (i : Fin j.val) :
    EuclideanSpace ℂ
      (DSVUniformDensityThresholdLocalIndex N d ×
       DSVUniformDensityThresholdLocalIndex N d) :=
  dSVDensityRationalCompleteProjectiveOutcome
    (width (schedule ⟨i.val, lt_trans i.isLt j.isLt⟩))
    N ξ ζ false false

def dSVDensityRationalHeterogeneousStoppedCommonPrefixFailureVector
    {S N d L : ℕ} (width : Fin S → ℝ)
    (schedule : Fin L → Fin S)
    (ξ ζ : BipartiteUnitVector d)
    (j : Fin L) :
    EuclideanSpace ℂ
      (Fin j.val →
        (DSVUniformDensityThresholdLocalIndex N d ×
         DSVUniformDensityThresholdLocalIndex N d)) :=
  finiteTensorVector
    (dSVDensityRationalHeterogeneousStoppedCommonPrefixFailureCopy
      width schedule ξ ζ j)

def dSVDensityRationalHeterogeneousStoppedCommonPrefixHazard
    {d N B S L : ℕ} (Q n : ℕ)
    (width : Fin S → ℝ) (schedule : Fin L → Fin S)
    (ξ ζ : BipartiteUnitVector d)
    (A C : Fin B → Option ℕ →
      Matrix.unitaryGroup (Fin (N * n)) ℂ) : ℝ :=
  ∑ j : Fin L,
    ‖dSVDensityRationalHeterogeneousStoppedCommonPrefixFailureVector
          (N := N) width schedule ξ ζ j‖ ^ 2 *
      dSVDensityRationalHeterogeneousCommonStopGaugeStageError
        Q (width (schedule j)) n ξ ζ A C

end

noncomputable section

def unconditionalPublicBucketLoss
    (B Q : ℕ) (asynchronous precision : ℝ) : ℝ :=
  (10 + 8 * ((Q : ℝ) / (B : ℝ))) * asynchronous +
    (4 * precision ^ 2 +
      16 * (Real.exp (((B : ℝ) + 1) / (Q : ℝ)) - 1) +
      8 / (B : ℝ))

end

end QuantumParallelRepetition
