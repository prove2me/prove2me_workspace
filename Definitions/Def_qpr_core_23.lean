import Definitions.Def_quantum_parallel_repetition_game
import Definitions.Def_qpr_core_22
import Theorems.Thm_QuantumParallelRepetition_posSemidef_blockDiagonal_prime
import Theorems.Thm_QuantumParallelRepetition_exactAlicePurificationFamily_posSemidef
import Theorems.Thm_QuantumParallelRepetition_exactBobPurificationFamily_posSemidef
import Theorems.Thm_QuantumParallelRepetition_exactRemainingCoordinate_card_pos
import Theorems.Thm_QuantumParallelRepetition_exactReverseLeftSide_coordinate_mem
import Theorems.Thm_QuantumParallelRepetition_exactReverseRightSide_coordinate_mem
import Mathlib.Algebra.Algebra.Basic
import Mathlib.Algebra.Algebra.Defs
import Mathlib.Algebra.BigOperators.Group.Finset.Basic
import Mathlib.Algebra.BigOperators.Group.Finset.Defs
import Mathlib.Algebra.BigOperators.Group.Finset.Piecewise
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
import Mathlib.Algebra.Module.LinearMap.Defs
import Mathlib.Algebra.Module.Pi
import Mathlib.Algebra.Module.Submodule.Defs
import Mathlib.Algebra.Order.Group.Unbundled.Abs
import Mathlib.Algebra.Ring.Defs
import Mathlib.Algebra.Ring.Hom.Defs
import Mathlib.Algebra.Star.Basic
import Mathlib.Algebra.Star.StarAlgHom
import Mathlib.Analysis.CStarAlgebra.Classes
import Mathlib.Analysis.CStarAlgebra.Matrix
import Mathlib.Analysis.Complex.Basic
import Mathlib.Analysis.Complex.Exponential
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
import Mathlib.Analysis.Normed.Ring.Basic
import Mathlib.Analysis.RCLike.Basic
import Mathlib.Data.Complex.Basic
import Mathlib.Data.ENNReal.Basic
import Mathlib.Data.Finset.Card
import Mathlib.Data.Finset.Defs
import Mathlib.Data.Finset.Empty
import Mathlib.Data.Finset.SDiff
import Mathlib.Data.Fintype.Basic
import Mathlib.Data.Fintype.Card
import Mathlib.Data.Fintype.Defs
import Mathlib.Data.Fintype.EquivFin
import Mathlib.Data.Fintype.Perm
import Mathlib.Data.Fintype.Pi
import Mathlib.Data.Fintype.Powerset
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
import Mathlib.Data.Matrix.Mul
import Mathlib.Data.Nat.Basic
import Mathlib.Data.Nat.Cast.Defs
import Mathlib.Data.Nat.Init
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
import Mathlib.Logic.Basic
import Mathlib.Logic.Equiv.Defs
import Mathlib.Logic.Equiv.Fin.Basic
import Mathlib.Logic.Equiv.Sum
import Mathlib.MeasureTheory.Function.AEEqFun
import Mathlib.MeasureTheory.Function.LpSpace.Basic
import Mathlib.MeasureTheory.Measure.Haar.OfBasis
import Mathlib.MeasureTheory.Measure.MeasureSpace
import Mathlib.MeasureTheory.Measure.MeasureSpaceDef
import Mathlib.MeasureTheory.Measure.Restrict
import Mathlib.Order.Defs.PartialOrder
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

def unconditionalPrefactorBucketCoefficient : ℝ :=
  16 * (Real.exp 1 - 1) + 4

end

noncomputable section

open scoped BigOperators

set_option backward.isDefEq.respectTransparency false
set_option maxHeartbeats 2000000
set_option maxRecDepth 2048

open QuantumParallelRepetition.Pinsker
open QuantumParallelRepetition.ClassicalSampling
open QuantumParallelRepetition.ClassicalInformation

attribute [local instance] Classical.propDecidable

variable {X Y A B : Type*}
variable [Fintype X] [Fintype Y] [Fintype A] [Fintype B]

def exactLocalQuestionHistoryEquiv
    {n : ℕ} (D : Finset (Fin n)) :
    (LocalQuestionContext X Y D ×
      ExactHistoryFlag X Y A B D) ≃
      ExactLocallySampleableTuple X Y A B D where
  toFun t := (t.1.1, t.1.2.1, t.1.2.2, t.2)
  invFun t := ((t.1, t.2.1, t.2.2.1), t.2.2.2)
  left_inv t := by
    rcases t with ⟨⟨i, x, y⟩, r⟩
    rfl
  right_inv t := by
    rcases t with ⟨i, x, y, r⟩
    rfl

def exactLocallySampleableJARounded
    (G : Game X Y A B) (n : ℕ) (D : Finset (Fin n))
    (denominator : ℕ)
    (numerator : ExactLocalSamplerIndex X Y D →
      ExactHistoryFlag X Y A B D → ℕ)
    (t : ExactLocallySampleableTuple X Y A B D) : ℝ :=
  G.questionWeight t.2.1 t.2.2.1 *
    ((numerator (.inl (t.1, t.2.1)) t.2.2.2 : ℝ) /
      denominator) /
    (Fintype.card (SourceRemainingCoordinate D) : ℝ)

def exactLocallySampleableJBRounded
    (G : Game X Y A B) (n : ℕ) (D : Finset (Fin n))
    (denominator : ℕ)
    (numerator : ExactLocalSamplerIndex X Y D →
      ExactHistoryFlag X Y A B D → ℕ)
    (t : ExactLocallySampleableTuple X Y A B D) : ℝ :=
  G.questionWeight t.2.1 t.2.2.1 *
    ((numerator (.inr (t.1, t.2.2.1)) t.2.2.2 : ℝ) /
      denominator) /
    (Fintype.card (SourceRemainingCoordinate D) : ℝ)

def exactLocallySampleablePermutationMismatch
    (G : Game X Y A B) (n : ℕ) (D : Finset (Fin n))
    (denominator : ℕ)
    (numerator : ExactLocalSamplerIndex X Y D →
      ExactHistoryFlag X Y A B D → ℕ)
    (nonempty : ∀ k,
      (rationalMarked denominator (numerator k)).Nonempty) : ℝ :=
  ∑ c : LocalQuestionContext X Y D,
    localQuestionWeight G n D c *
      uniformPermutationProbability
        (fun permutation :
          Equiv.Perm
            (ExactHistoryFlag X Y A B D × Fin denominator) =>
          rationalPermutationOutput denominator
              (numerator (.inl (c.1, c.2.1)))
              (nonempty (.inl (c.1, c.2.1))) permutation ≠
            rationalPermutationOutput denominator
              (numerator (.inr (c.1, c.2.2)))
              (nonempty (.inr (c.1, c.2.2))) permutation)

end

noncomputable section

open scoped BigOperators

set_option backward.isDefEq.respectTransparency false
set_option maxHeartbeats 1500000
set_option maxRecDepth 2048

open QuantumParallelRepetition.Pinsker
open QuantumParallelRepetition.ClassicalSampling
open QuantumParallelRepetition.ClassicalInformation

attribute [local instance] Classical.propDecidable

variable {X Y A B : Type}
variable [Fintype X] [Fintype Y] [Fintype A] [Fintype B]

abbrev ExactSourceSharedFlag
    (X Y A B : Type)
    [Fintype X] [Fintype Y] [Fintype A] [Fintype B]
    {n : ℕ} (D : Finset (Fin n)) (denominator : ℕ) :=
  SourceRemainingCoordinate D ×
    Equiv.Perm
      (ExactHistoryFlag X Y A B D × Fin denominator)

def exactSourceSharedFlagWeight
    {n : ℕ} (D : Finset (Fin n)) (denominator : ℕ)
    (_ : ExactSourceSharedFlag X Y A B D denominator) : ℝ :=
  (1 / (Fintype.card (SourceRemainingCoordinate D) : ℝ)) *
    (1 / (Fintype.card
      (Equiv.Perm
        (ExactHistoryFlag X Y A B D × Fin denominator)) : ℝ))

def exactSourceAlicePermutationHistory
    {n : ℕ} (D : Finset (Fin n)) (denominator : ℕ)
    (numerator : ExactLocalSamplerIndex X Y D →
      ExactHistoryFlag X Y A B D → ℕ)
    (nonempty : ∀ k,
      (rationalMarked denominator (numerator k)).Nonempty)
    (j : ExactSourceSharedFlag X Y A B D denominator)
    (x : X) : ExactHistoryFlag X Y A B D :=
  rationalPermutationOutput denominator
    (numerator (.inl (j.1, x)))
    (nonempty (.inl (j.1, x))) j.2

def exactSourceBobPermutationHistory
    {n : ℕ} (D : Finset (Fin n)) (denominator : ℕ)
    (numerator : ExactLocalSamplerIndex X Y D →
      ExactHistoryFlag X Y A B D → ℕ)
    (nonempty : ∀ k,
      (rationalMarked denominator (numerator k)).Nonempty)
    (j : ExactSourceSharedFlag X Y A B D denominator)
    (y : Y) : ExactHistoryFlag X Y A B D :=
  rationalPermutationOutput denominator
    (numerator (.inr (j.1, y)))
    (nonempty (.inr (j.1, y))) j.2

def exactSourcePermutationMatched
    {n : ℕ} (D : Finset (Fin n)) (denominator : ℕ)
    (numerator : ExactLocalSamplerIndex X Y D →
      ExactHistoryFlag X Y A B D → ℕ)
    (nonempty : ∀ k,
      (rationalMarked denominator (numerator k)).Nonempty)
    (ω : ExactSourceSharedFlag X Y A B D denominator ×
      (X × Y)) : Bool := by
  classical
  exact decide
    (exactSourceAlicePermutationHistory
      D denominator numerator nonempty ω.1 ω.2.1 =
      exactSourceBobPermutationHistory
        D denominator numerator nonempty ω.1 ω.2.2)

end

noncomputable section

open scoped BigOperators

set_option backward.isDefEq.respectTransparency false
set_option maxHeartbeats 1800000
set_option maxRecDepth 2048

open QuantumParallelRepetition.Pinsker
open QuantumParallelRepetition.ClassicalInformation

attribute [local instance] Classical.propDecidable

def finiteIndependentProductWeight
    {ι V : Type*} [Fintype ι] [Fintype V]
    (q : ι → V → ℝ) (x : ι → V) : ℝ :=
  ∏ i : ι, q i (x i)

def finiteCoordinateMarginal
    {ι V : Type*} [Fintype ι] [Fintype V]
    (p : (ι → V) → ℝ) (i : ι) : V → ℝ := by
  classical
  exact groupedMass (fun x : ι → V => x i) p

end

noncomputable section

open scoped BigOperators

set_option backward.isDefEq.respectTransparency false
set_option maxHeartbeats 2200000
set_option maxRecDepth 2048

open QuantumParallelRepetition.Pinsker
open QuantumParallelRepetition.ClassicalInformation

attribute [local instance] Classical.propDecidable

variable {X Y A B : Type*}
variable [Fintype X] [Fintype Y] [Fintype A] [Fintype B]

def repeatedAlicePostselectedQuestionLaw
    (G : Game X Y A B) (n : ℕ) (S : Strategy (G.repeat n))
    (D : Finset (Fin n)) : (Fin n → X) → ℝ := by
  classical
  exact groupedMass
    (fun ω : ExactOutcome X Y A B n => ω.1)
    (repeatedConditionedOutcomeLaw G n S D)

def repeatedBobPostselectedQuestionLaw
    (G : Game X Y A B) (n : ℕ) (S : Strategy (G.repeat n))
    (D : Finset (Fin n)) : (Fin n → Y) → ℝ := by
  classical
  exact groupedMass
    (fun ω : ExactOutcome X Y A B n => ω.2.1)
    (repeatedConditionedOutcomeLaw G n S D)

end

noncomputable section

open scoped BigOperators

set_option backward.isDefEq.respectTransparency false
set_option maxHeartbeats 2400000
set_option maxRecDepth 2048

open QuantumParallelRepetition.Pinsker
open QuantumParallelRepetition.ClassicalInformation

attribute [local instance] Classical.propDecidable

variable {X Y A B : Type*}
variable [Fintype X] [Fintype Y] [Fintype A] [Fintype B]

def exactConditionedReverseAlicePrefixEntropyIncrement
    (G : Game X Y A B) (n : ℕ) (S : Strategy (G.repeat n))
    (D : Finset (Fin n))
    (remaining : 0 < (Finset.univ \ D).card)
    (side : Finset (SourceRemainingCoordinate D))
    (default : Y) (k : Fin side.card) : ℝ :=
  reweightedSeedPrefixEntropyIncrement
    (exactReverseAliceConditionalSeedLaw
      (exactRemainingCoordinate_card_pos D remaining) side)
    G n S D
    (exactReverseAliceSourceProjection
      (X := X) (Y := Y) (A := A) (B := B) D side)
    default k

def exactConditionedReverseBobPrefixEntropyIncrement
    (G : Game X Y A B) (n : ℕ) (S : Strategy (G.repeat n))
    (D : Finset (Fin n))
    (remaining : 0 < (Finset.univ \ D).card)
    (side : Finset (SourceRemainingCoordinate D))
    (default : X) (k : Fin side.card) : ℝ :=
  reweightedSeedPrefixEntropyIncrement
    (exactReverseBobConditionalSeedLaw
      (exactRemainingCoordinate_card_pos D remaining) side)
    G n S D
    (exactReverseBobSourceProjection
      (X := X) (Y := Y) (A := A) (B := B) D side)
    default k

def exactConditionedReverseAlicePrefixInformation
    (G : Game X Y A B) (n : ℕ) (S : Strategy (G.repeat n))
    (D : Finset (Fin n))
    (remaining : 0 < (Finset.univ \ D).card)
    (default : Y) : ℝ :=
  ∑ side : Finset (SourceRemainingCoordinate D),
    reversePartitionWeight side *
      ((∑ k : Fin side.card,
        exactConditionedReverseAlicePrefixEntropyIncrement
          G n S D remaining side default k) /
        (side.card : ℝ))

def exactConditionedReverseBobPrefixInformation
    (G : Game X Y A B) (n : ℕ) (S : Strategy (G.repeat n))
    (D : Finset (Fin n))
    (remaining : 0 < (Finset.univ \ D).card)
    (default : X) : ℝ :=
  ∑ side : Finset (SourceRemainingCoordinate D),
    reversePartitionWeight side *
      ((∑ k : Fin side.card,
        exactConditionedReverseBobPrefixEntropyIncrement
          G n S D remaining side default k) /
        (side.card : ℝ))

def ExactReverseAliceConditionalHistoryIdentification
    (G : Game X Y A B) (n : ℕ) (S : Strategy (G.repeat n))
    (D : Finset (Fin n))
    (remaining : 0 < (Finset.univ \ D).card)
    (base : ExactHistoryFlag X Y A B D)
    (default : Y) : Prop :=
  exactAliceSourceConditionalInformation G n S D base =
    exactConditionedReverseAlicePrefixInformation
      G n S D remaining default

def ExactReverseBobConditionalHistoryIdentification
    (G : Game X Y A B) (n : ℕ) (S : Strategy (G.repeat n))
    (D : Finset (Fin n))
    (remaining : 0 < (Finset.univ \ D).card)
    (base : ExactHistoryFlag X Y A B D)
    (default : X) : Prop :=
  exactBobSourceConditionalInformation G n S D base =
    exactConditionedReverseBobPrefixInformation
      G n S D remaining default

end

noncomputable section

open scoped BigOperators

set_option backward.isDefEq.respectTransparency false
set_option maxHeartbeats 2400000
set_option maxRecDepth 2048

open QuantumParallelRepetition.Pinsker
open QuantumParallelRepetition.ClassicalInformation

attribute [local instance] Classical.propDecidable

variable {X Y A B : Type*}
variable [Fintype X] [Fintype Y] [Fintype A] [Fintype B]

abbrev ExactReverseAliceNextContext
    (X Y A B : Type*)
    [Fintype X] [Fintype Y] [Fintype A] [Fintype B]
    {n : ℕ} (D : Finset (Fin n))
    (side : Finset (SourceRemainingCoordinate D)) :=
  (ExactReverseAliceFixedInformation X Y D side ×
    ConditionedAnswerFlag A B D) ×
    (Fin side.card → Y)

abbrev ExactReverseBobNextContext
    (X Y A B : Type*)
    [Fintype X] [Fintype Y] [Fintype A] [Fintype B]
    {n : ℕ} (D : Finset (Fin n))
    (side : Finset (SourceRemainingCoordinate D)) :=
  (ExactReverseBobFixedInformation X Y D side ×
    ConditionedAnswerFlag A B D) ×
    (Fin side.card → X)

def exactConditionedReverseAliceNextJoint
    (G : Game X Y A B) (n : ℕ) (S : Strategy (G.repeat n))
    (D : Finset (Fin n))
    (remaining : 0 < (Finset.univ \ D).card)
    (side : Finset (SourceRemainingCoordinate D)) :
    ExactReverseAliceNextContext X Y A B D side → ℝ :=
  reweightedSeedPrefixJoint
    (exactReverseAliceConditionalSeedLaw
      (exactRemainingCoordinate_card_pos D remaining) side)
    G n S D
    (exactReverseAliceSourceProjection
      (X := X) (Y := Y) (A := A) (B := B) D side)

def exactConditionedReverseAliceNextPrior
    (G : Game X Y A B) (n : ℕ) (S : Strategy (G.repeat n))
    (D : Finset (Fin n))
    (remaining : 0 < (Finset.univ \ D).card)
    (side : Finset (SourceRemainingCoordinate D)) :
    ExactReverseAliceNextContext X Y A B D side → ℝ :=
  reweightedSeedPrefixPrior
    (exactReverseAliceConditionalSeedLaw
      (exactRemainingCoordinate_card_pos D remaining) side)
    G n S D
    (exactReverseAliceSourceProjection
      (X := X) (Y := Y) (A := A) (B := B) D side)

def exactConditionedReverseBobNextJoint
    (G : Game X Y A B) (n : ℕ) (S : Strategy (G.repeat n))
    (D : Finset (Fin n))
    (remaining : 0 < (Finset.univ \ D).card)
    (side : Finset (SourceRemainingCoordinate D)) :
    ExactReverseBobNextContext X Y A B D side → ℝ :=
  reweightedSeedPrefixJoint
    (exactReverseBobConditionalSeedLaw
      (exactRemainingCoordinate_card_pos D remaining) side)
    G n S D
    (exactReverseBobSourceProjection
      (X := X) (Y := Y) (A := A) (B := B) D side)

def exactConditionedReverseBobNextPrior
    (G : Game X Y A B) (n : ℕ) (S : Strategy (G.repeat n))
    (D : Finset (Fin n))
    (remaining : 0 < (Finset.univ \ D).card)
    (side : Finset (SourceRemainingCoordinate D)) :
    ExactReverseBobNextContext X Y A B D side → ℝ :=
  reweightedSeedPrefixPrior
    (exactReverseBobConditionalSeedLaw
      (exactRemainingCoordinate_card_pos D remaining) side)
    G n S D
    (exactReverseBobSourceProjection
      (X := X) (Y := Y) (A := A) (B := B) D side)

end

noncomputable section

open scoped BigOperators

set_option backward.isDefEq.respectTransparency false
set_option maxHeartbeats 2800000
set_option maxRecDepth 2048

open QuantumParallelRepetition.Pinsker
open QuantumParallelRepetition.ClassicalInformation

attribute [local instance] Classical.propDecidable

variable {X Y A B : Type*}
variable [Fintype X] [Fintype Y] [Fintype A] [Fintype B]

def exactReverseAliceMarkedHistoryContext
    (G : Game X Y A B) (n : ℕ) (S : Strategy (G.repeat n))
    (D : Finset (Fin n)) (default : Y)
    (seed : ExactRemainingSeed D)
    (outcome : ExactOutcome X Y A B n) :
    ExactReverseAliceNextContext X Y A B D
      (exactReverseLeftSide seed) :=
  let side := exactReverseLeftSide seed
  let marker :=
    (exactReverseAliceContext seed).sideRank
      ⟨seed.coordinate,
        exactReverseLeftSide_coordinate_mem seed⟩
  let projection :=
    exactReverseAliceSourceProjection
      (X := X) (Y := Y) (A := A) (B := B)
      D side (seed, outcome)
  finitePrefixMask default marker.castSucc
    ((projection.1,
      repeatedConditionedAnswerFlag G n S D outcome),
      projection.2)

def exactReverseBobMarkedHistoryContext
    (G : Game X Y A B) (n : ℕ) (S : Strategy (G.repeat n))
    (D : Finset (Fin n)) (default : X)
    (seed : ExactRemainingSeed D)
    (outcome : ExactOutcome X Y A B n) :
    ExactReverseBobNextContext X Y A B D
      (exactReverseRightSide seed) :=
  let side := exactReverseRightSide seed
  let marker :=
    (exactReverseBobContext seed).sideRank
      ⟨seed.coordinate,
        exactReverseRightSide_coordinate_mem seed⟩
  let projection :=
    exactReverseBobSourceProjection
      (X := X) (Y := Y) (A := A) (B := B)
      D side (seed, outcome)
  finitePrefixMask default marker.castSucc
    ((projection.1,
      repeatedConditionedAnswerFlag G n S D outcome),
      projection.2)

end

noncomputable section

open scoped BigOperators

set_option backward.isDefEq.respectTransparency false
set_option maxHeartbeats 1600000
set_option maxRecDepth 2048

open QuantumParallelRepetition.Pinsker
open QuantumParallelRepetition.ClassicalSampling
open QuantumParallelRepetition.ClassicalInformation

attribute [local instance] Classical.propDecidable

variable {X Y A B : Type}
variable [Fintype X] [Fintype Y] [Fintype A] [Fintype B]

def exactSourceAliceSampleTuple
    {n : ℕ} (D : Finset (Fin n)) (denominator : ℕ)
    (numerator : ExactLocalSamplerIndex X Y D →
      ExactHistoryFlag X Y A B D → ℕ)
    (nonempty : ∀ k,
      (rationalMarked denominator (numerator k)).Nonempty)
    (outcome :
      ExactSourceSharedFlag X Y A B D denominator × (X × Y)) :
    ExactLocallySampleableTuple X Y A B D :=
  (outcome.1.1, outcome.2.1, outcome.2.2,
    exactSourceAlicePermutationHistory
      D denominator numerator nonempty outcome.1 outcome.2.1)

end

noncomputable section

open scoped BigOperators

open QuantumParallelRepetition.Pinsker
open QuantumParallelRepetition.ClassicalInformation

attribute [local instance] Classical.propDecidable

variable {Ω T : Type*} [Fintype Ω] [Fintype T] [DecidableEq T]

def exactFiniteFiberLift
    (projection : Ω → T) (original : Ω → ℝ) (target : T → ℝ)
    (outcome : Ω) : ℝ :=
  target (projection outcome) * original outcome /
    groupedMass projection original (projection outcome)

end

noncomputable section

open Matrix
open scoped BigOperators Kronecker ComplexOrder MatrixOrder
  Matrix.Norms.L2Operator InnerProductSpace

set_option backward.isDefEq.respectTransparency false
set_option maxHeartbeats 1800000
set_option maxRecDepth 2048

attribute [local instance] Classical.propDecidable

variable {X Y A B : Type*}
variable [Fintype X] [Fintype Y] [Fintype A] [Fintype B]

def exactSourceAliceRefinedPOVM
    [DecidableEq A]
    (G : Game X Y A B) (n : ℕ) (S : Strategy (G.repeat n))
    (D : Finset (Fin n)) (r : ExactHistoryFlag X Y A B D)
    (a₀ : A) (x : X) :
    POVM A (ExactAliceLocalIndex G n S D r) := by
  classical
  exact purificationAlicePOVM
    (exactAliceRefinedPOVM G n S D r a₀ x)

def exactSourceBobRefinedPOVM
    [DecidableEq B]
    (G : Game X Y A B) (n : ℕ) (S : Strategy (G.repeat n))
    (D : Finset (Fin n)) (r : ExactHistoryFlag X Y A B D)
    (b₀ : B) (y : Y) :
    POVM B (ExactBobLocalIndex G n S D r) :=
  exactBobRefinedPOVM G n S D r b₀ y

def exactSourceJointEffect
    [DecidableEq A] [DecidableEq B]
    (G : Game X Y A B) (n : ℕ) (S : Strategy (G.repeat n))
    (D : Finset (Fin n)) (r : ExactHistoryFlag X Y A B D)
    (a₀ : A) (b₀ : B) (x : X) (y : Y) (a : A) (b : B) :
    Matrix
      (ExactAliceLocalIndex G n S D r ×
        ExactBobLocalIndex G n S D r)
      (ExactAliceLocalIndex G n S D r ×
        ExactBobLocalIndex G n S D r) ℂ :=
  (exactSourceAliceRefinedPOVM G n S D r a₀ x).operator a ⊗ₖ
    (exactSourceBobRefinedPOVM G n S D r b₀ y).operator b

def exactSourceWinningEffect
    [DecidableEq A] [DecidableEq B]
    (G : Game X Y A B) (n : ℕ) (S : Strategy (G.repeat n))
    (D : Finset (Fin n)) (r : ExactHistoryFlag X Y A B D)
    (a₀ : A) (b₀ : B) (x : X) (y : Y) :
    Matrix
      (ExactAliceLocalIndex G n S D r ×
        ExactBobLocalIndex G n S D r)
      (ExactAliceLocalIndex G n S D r ×
        ExactBobLocalIndex G n S D r) ℂ :=
  ∑ a : A, ∑ b : B,
    if G.predicate x y a b = true
    then exactSourceJointEffect G n S D r a₀ b₀ x y a b
    else 0

def exactSourceWinningEffectCLM
    [DecidableEq A] [DecidableEq B]
    (G : Game X Y A B) (n : ℕ) (S : Strategy (G.repeat n))
    (D : Finset (Fin n)) (r : ExactHistoryFlag X Y A B D)
    (a₀ : A) (b₀ : B) (x : X) (y : Y) :
    EuclideanSpace ℂ
        (ExactAliceLocalIndex G n S D r ×
          ExactBobLocalIndex G n S D r) →L[ℂ]
      EuclideanSpace ℂ
        (ExactAliceLocalIndex G n S D r ×
          ExactBobLocalIndex G n S D r) := by
  classical
  exact Matrix.toEuclideanCLM
    (n := ExactAliceLocalIndex G n S D r ×
      ExactBobLocalIndex G n S D r) (𝕜 := ℂ)
    (exactSourceWinningEffect G n S D r a₀ b₀ x y)

end

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

def exactSourceAcceptedCoordinateMass
    (G : Game X Y A B) (n : ℕ) (S : Strategy (G.repeat n))
    (D : Finset (Fin n))
    (t : ExactLocallySampleableTuple X Y A B D) : ℝ :=
  ∑ q : ExactJointOutcome X Y A B D,
    if exactLocallySampleableCode D q = t ∧
      repeatedCoordinateWin G n q.1.coordinate.val q.2 = true then
      exactPostselectedJointLaw G n S D q
    else 0

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

def exactSourceGlobalBobPOVM
    [DecidableEq B]
    (G : Game X Y A B) (n : ℕ) (S : Strategy (G.repeat n))
    (D : Finset (Fin n)) (b₀ : B) (y : Y) :
    POVM B (ExactGlobalHistoryLocalIndex G n S D) := by
  classical
  let actual := twoBlockPOVM
    (deterministicOutcomePOVM (d := PUnit) b₀)
    (dependentBlockPOVM
      (fun r : ExactHistoryFlag X Y A B D =>
        exactSourceBobPaddedPOVM G n S D r b₀ y))
  exact pOVMChangeDecidableEq
    (@instDecidableEqSum PUnit
      (Σ r : ExactHistoryFlag X Y A B D,
        ExactPaddedLocalIndex G n S D r)
      inferInstance inferInstance)
    (Classical.decEq
      (ExactGlobalHistoryLocalIndex G n S D))
    actual

def exactSourceGlobalCatalystAlicePOVM
    [DecidableEq A]
    (G : Game X Y A B) (n : ℕ) (S : Strategy (G.repeat n))
    (D : Finset (Fin n)) (e : ℕ) (a₀ : A) (x : X) :
    POVM A
      (Fin (Fintype.card
        (ExactGlobalHistoryLocalIndex G n S D) * e)) := by
  classical
  exact reindexedPOVM finProdFinEquiv
    (purificationAlicePOVM (k := Fin e)
      (reindexedPOVM
        (Fintype.equivFin
          (ExactGlobalHistoryLocalIndex G n S D))
        (exactSourceGlobalAlicePOVM G n S D a₀ x)))

def exactSourceGlobalCatalystBobPOVM
    [DecidableEq B]
    (G : Game X Y A B) (n : ℕ) (S : Strategy (G.repeat n))
    (D : Finset (Fin n)) (e : ℕ) (b₀ : B) (y : Y) :
    POVM B
      (Fin (Fintype.card
        (ExactGlobalHistoryLocalIndex G n S D) * e)) := by
  classical
  exact reindexedPOVM finProdFinEquiv
    (purificationAlicePOVM (k := Fin e)
      (reindexedPOVM
        (Fintype.equivFin
          (ExactGlobalHistoryLocalIndex G n S D))
        (exactSourceGlobalBobPOVM G n S D b₀ y)))

end

noncomputable section

open scoped BigOperators ComplexOrder Kronecker MatrixOrder
  Matrix.Norms.L2Operator InnerProductSpace

set_option backward.isDefEq.respectTransparency false
set_option maxHeartbeats 2400000
set_option maxRecDepth 2048

attribute [local instance] Classical.propDecidable

variable {X Y A B : Type}
variable [Fintype X] [Fintype Y] [Fintype A] [Fintype B]

def exactSourceGlobalJointBasis
    (G : Game X Y A B) (n : ℕ) (S : Strategy (G.repeat n))
    (D : Finset (Fin n))
    (r : ExactHistoryFlag X Y A B D) :
    (ExactAliceLocalIndex G n S D r ×
      ExactBobLocalIndex G n S D r) →
      (ExactGlobalHistoryLocalIndex G n S D ×
        ExactGlobalHistoryLocalIndex G n S D)
  | (i, j) =>
    (.inr ⟨r, .inr (.inl i)⟩, .inr ⟨r, .inr (.inr j)⟩)

end

noncomputable section

open scoped BigOperators ComplexOrder Kronecker MatrixOrder
  Matrix.Norms.L2Operator InnerProductSpace

set_option backward.isDefEq.respectTransparency false
set_option maxHeartbeats 2400000
set_option maxRecDepth 2048

open QuantumParallelRepetition.ClassicalSampling

attribute [local instance] Classical.propDecidable

variable {X Y A B : Type}
variable [Fintype X] [Fintype Y] [Fintype A] [Fintype B]

def exactSourceGlobalWinningEffect
    [DecidableEq A] [DecidableEq B]
    (G : Game X Y A B) (n : ℕ) (S : Strategy (G.repeat n))
    (D : Finset (Fin n)) (a₀ : A) (b₀ : B) (x : X) (y : Y) :
    Matrix
      (ExactGlobalHistoryLocalIndex G n S D ×
        ExactGlobalHistoryLocalIndex G n S D)
      (ExactGlobalHistoryLocalIndex G n S D ×
        ExactGlobalHistoryLocalIndex G n S D) ℂ :=
  ∑ a : A, ∑ b : B,
    if G.predicate x y a b = true then
      (exactSourceGlobalAlicePOVM G n S D a₀ x).operator a ⊗ₖ
        (exactSourceGlobalBobPOVM G n S D b₀ y).operator b
    else 0

end

noncomputable section

open scoped BigOperators

set_option backward.isDefEq.respectTransparency false
set_option maxHeartbeats 3600000
set_option maxRecDepth 2048

open QuantumParallelRepetition.Pinsker
open QuantumParallelRepetition.ClassicalInformation

attribute [local instance] Classical.propDecidable

variable {X Y A B : Type*}
variable [Fintype X] [Fintype Y] [Fintype A] [Fintype B]

def exactAliceSourceAtomCode
    {n : ℕ} (D : Finset (Fin n)) :
    ExactJointOutcome X Y A B D →
      (SourceRemainingCoordinate D × X) ×
        (ExactHistoryFlag X Y A B D × Y) :=
  fun point =>
    ((point.1.coordinate, point.2.1 point.1.coordinate.val),
      (exactHistoryCode D point,
        point.2.2.1 point.1.coordinate.val))

def exactBobSourceAtomCode
    {n : ℕ} (D : Finset (Fin n)) :
    ExactJointOutcome X Y A B D →
      (SourceRemainingCoordinate D × Y) ×
        (ExactHistoryFlag X Y A B D × X) :=
  fun point =>
    ((point.1.coordinate, point.2.2.1 point.1.coordinate.val),
      (exactHistoryCode D point,
        point.2.1 point.1.coordinate.val))

end

noncomputable section

open scoped BigOperators

set_option backward.isDefEq.respectTransparency false
set_option maxHeartbeats 5000000
set_option maxRecDepth 2048

open QuantumParallelRepetition.Pinsker
open QuantumParallelRepetition.ClassicalInformation

attribute [local instance] Classical.propDecidable

variable {X Y A B : Type*}
variable [Fintype X] [Fintype Y] [Fintype A] [Fintype B]

def exactReverseAliceContextOutcomeProjection
    {n : ℕ} (D : Finset (Fin n))
    (side : Finset (SourceRemainingCoordinate D))
    (context : ExactReverseSideContext
      (SourceRemainingCoordinate D) side)
    (outcome : ExactOutcome X Y A B n) :
    ExactReverseAliceFixedInformation X Y D side ×
      (Fin side.card → Y) :=
  (⟨context,
     (fun j => outcome.1 j.val),
     (fun j => outcome.2.1 j.val),
     (fun j => outcome.1 j.val.val),
     (fun j => outcome.2.1 j.val.val),
     (fun j => outcome.1 j.val.val)⟩,
    fun marker =>
      outcome.2.1 (context.sideRank.symm marker).val.val)

def exactReverseBobContextOutcomeProjection
    {n : ℕ} (D : Finset (Fin n))
    (side : Finset (SourceRemainingCoordinate D))
    (context : ExactReverseSideContext
      (SourceRemainingCoordinate D) side)
    (outcome : ExactOutcome X Y A B n) :
    ExactReverseBobFixedInformation X Y D side ×
      (Fin side.card → X) :=
  (⟨context,
     (fun j => outcome.1 j.val),
     (fun j => outcome.2.1 j.val),
     (fun j => outcome.2.1 j.val.val),
     (fun j => outcome.1 j.val.val),
     (fun j => outcome.2.1 j.val.val)⟩,
    fun marker =>
      outcome.1 (context.sideRank.symm marker).val.val)

end

noncomputable section

open scoped BigOperators

set_option backward.isDefEq.respectTransparency false
set_option maxHeartbeats 5000000
set_option maxRecDepth 2048

open QuantumParallelRepetition.Pinsker
open QuantumParallelRepetition.ClassicalInformation

attribute [local instance] Classical.propDecidable

variable {X Y A B : Type*}
variable [Fintype X] [Fintype Y] [Fintype A] [Fintype B]

def exactReverseAliceMaskedQuestionRegister
    {n : ℕ} (D : Finset (Fin n))
    (side : Finset (SourceRemainingCoordinate D))
    (default : Y) (marker : Fin side.card)
    (flag : ConditionedAnswerFlag A B D)
    (seed : ExactRemainingSeed D)
    (xs : Fin n → X) (ys : Fin n → Y) :
    ExactReverseAliceNextContext X Y A B D side :=
  let context := exactReverseAliceContextAt side seed
  let fixed : ExactReverseAliceFixedInformation X Y D side :=
    ⟨context,
      (fun j => xs j.val),
      (fun j => ys j.val),
      (fun j => xs j.val.val),
      (fun j => ys j.val.val),
      (fun j => xs j.val.val)⟩
  finitePrefixMask default marker.castSucc
    ((fixed, flag),
      fun position => ys (context.sideRank.symm position).val.val)

def exactReverseBobMaskedQuestionRegister
    {n : ℕ} (D : Finset (Fin n))
    (side : Finset (SourceRemainingCoordinate D))
    (default : X) (marker : Fin side.card)
    (flag : ConditionedAnswerFlag A B D)
    (seed : ExactRemainingSeed D)
    (xs : Fin n → X) (ys : Fin n → Y) :
    ExactReverseBobNextContext X Y A B D side :=
  let context := exactReverseBobContextAt side seed
  let fixed : ExactReverseBobFixedInformation X Y D side :=
    ⟨context,
      (fun j => xs j.val),
      (fun j => ys j.val),
      (fun j => ys j.val.val),
      (fun j => xs j.val.val),
      (fun j => ys j.val.val)⟩
  finitePrefixMask default marker.castSucc
    ((fixed, flag),
      fun position => xs (context.sideRank.symm position).val.val)

end

noncomputable section

open scoped BigOperators

set_option backward.isDefEq.respectTransparency false
set_option maxHeartbeats 6000000
set_option maxRecDepth 2048

open QuantumParallelRepetition.Pinsker
open QuantumParallelRepetition.ClassicalInformation

attribute [local instance] Classical.propDecidable

variable {X Y A B : Type*}
variable [Fintype X] [Fintype Y] [Fintype A] [Fintype B]

def exactReverseAliceMaskedOutcomeContext
    (G : Game X Y A B) (n : ℕ) (S : Strategy (G.repeat n))
    (D : Finset (Fin n))
    (side : Finset (SourceRemainingCoordinate D))
    (default : Y) (marker : Fin side.card)
    (context : ExactReverseSideContext
      (SourceRemainingCoordinate D) side)
    (outcome : ExactOutcome X Y A B n) :
    ExactReverseAliceNextContext X Y A B D side :=
  let projection :=
    exactReverseAliceContextOutcomeProjection
      (X := X) (Y := Y) (A := A) (B := B)
      D side context outcome
  finitePrefixMask default marker.castSucc
    ((projection.1,
      repeatedConditionedAnswerFlag G n S D outcome),
      projection.2)

end

noncomputable section

open scoped BigOperators

set_option backward.isDefEq.respectTransparency false
set_option maxHeartbeats 8000000
set_option maxRecDepth 3072

open QuantumParallelRepetition.Pinsker
open QuantumParallelRepetition.ClassicalInformation

attribute [local instance] Classical.propDecidable

variable {X Y A B : Type*}
variable [Fintype X] [Fintype Y] [Fintype A] [Fintype B]

def exactReverseAliceContextMarkerInformation
    (G : Game X Y A B) (n : ℕ) (S : Strategy (G.repeat n))
    (D : Finset (Fin n))
    (remaining : 0 < (Finset.univ \ D).card)
    (default : Y)
    (side : Finset (SourceRemainingCoordinate D))
    (context : ExactReverseSideContext
      (SourceRemainingCoordinate D) side)
    (marker : Fin side.card) : ℝ :=
  ∑ outcome : ExactOutcome X Y A B n,
    repeatedConditionedOutcomeLaw G n S D outcome *
      finiteRelativeEntropy
        (jointConditional
          (groupedMass
            (exactPrefixNextCode default marker)
            (exactConditionedReverseAliceNextJoint
              G n S D remaining side))
          (exactReverseAliceMaskedOutcomeContext
            G n S D side default marker context outcome))
        (jointConditional
          (groupedMass
            (exactPrefixNextCode default marker)
            (exactConditionedReverseAliceNextPrior
              G n S D remaining side))
          (exactReverseAliceMaskedOutcomeContext
            G n S D side default marker context outcome))

end

end QuantumParallelRepetition
