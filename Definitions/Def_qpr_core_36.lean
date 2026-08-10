import Definitions.Def_quantum_parallel_repetition_game
import Definitions.Def_qpr_core_35
import Theorems.Thm_QuantumParallelRepetition_exactAlicePurificationFamily_posSemidef
import Theorems.Thm_QuantumParallelRepetition_exactBobPurificationFamily_posSemidef
import Mathlib.Algebra.BigOperators.Group.Finset.Defs
import Mathlib.Algebra.BigOperators.Ring.Finset
import Mathlib.Algebra.Field.Defs
import Mathlib.Algebra.Group.Basic
import Mathlib.Algebra.Group.Defs
import Mathlib.Algebra.Group.Nat.Defs
import Mathlib.Algebra.Group.Subgroup.Defs
import Mathlib.Algebra.Group.Submonoid.Defs
import Mathlib.Algebra.GroupWithZero.Action.Defs
import Mathlib.Algebra.GroupWithZero.Defs
import Mathlib.Algebra.Module.Defs
import Mathlib.Algebra.Module.Submodule.Defs
import Mathlib.Algebra.Notation.Defs
import Mathlib.Algebra.Ring.Defs
import Mathlib.Algebra.Star.Basic
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
import Mathlib.Data.Finset.Card
import Mathlib.Data.Finset.Defs
import Mathlib.Data.Finset.Empty
import Mathlib.Data.Finset.SDiff
import Mathlib.Data.Fintype.Basic
import Mathlib.Data.Fintype.Card
import Mathlib.Data.Fintype.Defs
import Mathlib.Data.Fintype.EquivFin
import Mathlib.Data.Fintype.Pi
import Mathlib.Data.Fintype.Prod
import Mathlib.Data.Fintype.Sets
import Mathlib.Data.Fintype.Sigma
import Mathlib.Data.Fintype.Sum
import Mathlib.Data.Int.Cast.Defs
import Mathlib.Data.Matrix.Basic
import Mathlib.Data.Matrix.Diagonal
import Mathlib.Data.Matrix.Mul
import Mathlib.Data.Nat.Cast.Defs
import Mathlib.Data.Nat.Init
import Mathlib.Data.Real.Basic
import Mathlib.Data.SetLike.Basic
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
import Mathlib.Topology.Algebra.Group.Defs
import Mathlib.Topology.Defs.Filter
import Mathlib.Topology.MetricSpace.Algebra
import Mathlib.Topology.MetricSpace.Pseudo.Defs
import Mathlib.Topology.UniformSpace.Defs

namespace QuantumParallelRepetition

open scoped ComplexOrder Matrix BigOperators InnerProductSpace
open Complex Matrix Finset

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

def exactAliceSourceSeedBornInformation
    (G : Game X Y A B) (n : ℕ) (S : Strategy (G.repeat n))
    (D : Finset (Fin n))
    (seed : ExactRemainingSeed D) : ℝ :=
  ∑ outcome : ExactOutcome X Y A B n,
    repeatedConditionedOutcomeLaw G n S D outcome *
      finiteRelativeEntropy
        (jointConditional
          (fun atom :
            ((SourceRemainingCoordinate D × X) ×
              ExactHistoryFlag X Y A B D) × Y =>
            exactAliceInformationPosterior G n S D
              (atom.1.1, (atom.1.2, atom.2)))
          ((seed.coordinate, outcome.1 seed.coordinate.val),
            exactHistoryCode D (seed, outcome)))
        (G.conditionalYGivenX
          (outcome.1 seed.coordinate.val))

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

def exactReverseBobMaskedOutcomeContext
    (G : Game X Y A B) (n : ℕ) (S : Strategy (G.repeat n))
    (D : Finset (Fin n))
    (side : Finset (SourceRemainingCoordinate D))
    (default : X) (marker : Fin side.card)
    (context : ExactReverseSideContext
      (SourceRemainingCoordinate D) side)
    (outcome : ExactOutcome X Y A B n) :
    ExactReverseBobNextContext X Y A B D side :=
  let projection :=
    exactReverseBobContextOutcomeProjection
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
set_option maxRecDepth 2048

open QuantumParallelRepetition.Pinsker
open QuantumParallelRepetition.ClassicalInformation

attribute [local instance] Classical.propDecidable

variable {X Y A B : Type*}
variable [Fintype X] [Fintype Y] [Fintype A] [Fintype B]

def exactReverseBobContextMarkedEntropyScore
    (G : Game X Y A B) (n : ℕ) (S : Strategy (G.repeat n))
    (D : Finset (Fin n))
    (remaining : 0 < (Finset.univ \ D).card)
    (default : X)
    (side : Finset (SourceRemainingCoordinate D))
    (context : ExactReverseSideContext
      (SourceRemainingCoordinate D) side)
    (marker : Fin side.card)
    (outcome : ExactOutcome X Y A B n) : ℝ :=
  let target :=
    exactReverseBobMaskedOutcomeContext
      G n S D side default marker context outcome
  finiteRelativeEntropy
    (jointConditional
      (groupedMass
        (exactPrefixNextCode default marker)
        (exactConditionedReverseBobNextJoint
          G n S D remaining side))
      target)
    (jointConditional
      (groupedMass
        (exactPrefixNextCode default marker)
        (exactConditionedReverseBobNextPrior
          G n S D remaining side))
      target)

def exactReverseBobActualMarkedEntropyScore
    (G : Game X Y A B) (n : ℕ) (S : Strategy (G.repeat n))
    (D : Finset (Fin n))
    (remaining : 0 < (Finset.univ \ D).card)
    (default : X)
    (side : Finset (SourceRemainingCoordinate D))
    (seed : ExactRemainingSeed D)
    (marker : Fin side.card)
    (outcome : ExactOutcome X Y A B n) : ℝ :=
  let target :=
    exactReverseBobMaskedOutcomeContext
      G n S D side default marker
      (exactReverseBobContextAt side seed)
      outcome
  finiteRelativeEntropy
    (jointConditional
      (groupedMass
        (exactPrefixNextCode default marker)
        (exactConditionedReverseBobNextJoint
          G n S D remaining side))
      target)
    (jointConditional
      (groupedMass
        (exactPrefixNextCode default marker)
        (exactConditionedReverseBobNextPrior
          G n S D remaining side))
      target)

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

def ExactSourceSupportPreservingClassicalSampler
    (G : Game X Y A B) (n : ℕ) (S : Strategy (G.repeat n))
    (D : Finset (Fin n))
    (base : ExactHistoryFlag X Y A B D)
    (kappa gamma : ℝ) : Prop :=
  ∃ denominator : ℕ, 0 < denominator ∧
    ∃ numerator : ExactLocalSamplerIndex X Y D →
      ExactHistoryFlag X Y A B D → ℕ,
      (∀ index, (∑ history, numerator index history) = denominator) ∧
      (∀ index, finiteTotalVariation
        (exactLocalConditionalFamily D base
          (exactLocallySampleableLaw G n S D) index)
        (fun history =>
          (numerator index history : ℝ) / denominator) < gamma) ∧
      (∀ index history,
        0 < exactLocalConditionalFamily D base
            (exactLocallySampleableLaw G n S D)
            index history →
          0 < numerator index history) ∧
      ∃ nonempty : ∀ index,
        (rationalMarked denominator (numerator index)).Nonempty,
        finiteTotalVariation
            (exactLocallySampleableLaw G n S D)
            (exactLocallySampleableJARounded
              G n D denominator numerator) ≤ kappa + gamma ∧
        finiteTotalVariation
            (exactLocallySampleableLaw G n S D)
            (exactLocallySampleableJBRounded
              G n D denominator numerator) ≤ kappa + gamma ∧
        exactLocallySampleablePermutationMismatch
            G n D denominator numerator nonempty ≤
          4 * (kappa + gamma)

end

noncomputable section

open Filter
open scoped Topology

variable {X Y A B : Type*}
variable [Fintype X] [Fintype Y] [Fintype A] [Fintype B]

def ExactSourceOneGameRounding
    (G : Game X Y A B) : Prop :=
  ∃ K₀ : ℝ, 0 ≤ K₀ ∧
    ∀ (n : ℕ) (S : Strategy (G.repeat n))
      (D : Finset (Fin n)),
      0 < (Finset.univ \ D).card →
      0 < repeatedPostselectionMass G n S D →
      ∀ (α gamma : ℝ),
        0 < α → α ≤ 1 → 0 < gamma →
        uniformRemainingFailure
            (strategyEventLaw (G.repeat n) S)
            (repeatedCoordinateWin G n) D <
          (1 - entangledValue G) / 2 →
        ∃ rounded : Strategy G,
          roundedWinningLowerBound (1 - entangledValue G)
              K₀ α (martingaleRate G n S D)
              (exactSourcePinskerRate G n S D + gamma) ≤
            rounded.winProbability

end

noncomputable section

open Matrix
open scoped BigOperators ComplexOrder Kronecker MatrixOrder
  Matrix.Norms.L2Operator InnerProductSpace

set_option backward.isDefEq.respectTransparency false
set_option maxHeartbeats 2000000
set_option maxRecDepth 2048

attribute [local instance] Classical.propDecidable

variable {X Y A B : Type}
variable [Fintype X] [Fintype Y] [Fintype A] [Fintype B]

def unitaryConjugatePOVM
    {C d : Type} [Fintype C] [Fintype d] [DecidableEq d]
    (U : Matrix.unitaryGroup d ℂ) (P : POVM C d) : POVM C d where
  operator c :=
    (U : Matrix d d ℂ)ᴴ * P.operator c * (U : Matrix d d ℂ)
  positive c := by
    have positive :=
      (P.positive c).mul_mul_conjTranspose_same
        ((U : Matrix d d ℂ)ᴴ)
    simpa using positive
  complete := by
    classical
    have unitary :
        (U : Matrix d d ℂ)ᴴ * (U : Matrix d d ℂ) = 1 := by
      simpa [Matrix.star_eq_conjTranspose] using
        (Matrix.mem_unitaryGroup_iff').mp U.property
    calc
      (∑ c : C,
        (U : Matrix d d ℂ)ᴴ * P.operator c * (U : Matrix d d ℂ)) =
          (U : Matrix d d ℂ)ᴴ *
            (∑ c : C, P.operator c) *
            (U : Matrix d d ℂ) := by
              simp [Finset.mul_sum, Finset.sum_mul]
      _ = 1 := by rw [P.complete, Matrix.mul_one, unitary]

end

noncomputable section

open WithLp
open scoped BigOperators ComplexOrder Kronecker MatrixOrder
  Matrix.Norms.L2Operator InnerProductSpace

set_option backward.isDefEq.respectTransparency false
set_option maxHeartbeats 2400000
set_option maxRecDepth 2048

open QuantumParallelRepetition.ClassicalSampling

attribute [local instance] Classical.propDecidable

variable {X Y A B : Type}
variable [Fintype X] [Fintype Y] [Fintype A] [Fintype B]

def exactSourceGlobalCatalystWinningEffect
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
      (exactSourceGlobalCatalystAlicePOVM
        G n S D e a₀ x).operator a ⊗ₖ
      (exactSourceGlobalCatalystBobPOVM
        G n S D e b₀ y).operator b
    else 0

def exactSourceGlobalCatalystBasisEquiv
    (G : Game X Y A B) (n : ℕ) (S : Strategy (G.repeat n))
    (D : Finset (Fin n)) (e : ℕ) :
    ((ExactGlobalHistoryLocalIndex G n S D ×
       ExactGlobalHistoryLocalIndex G n S D) ×
      (Fin e × Fin e)) ≃
      (Fin (Fintype.card
        (ExactGlobalHistoryLocalIndex G n S D) * e) ×
       Fin (Fintype.card
        (ExactGlobalHistoryLocalIndex G n S D) * e)) := by
  classical
  let localEquiv :
      (ExactGlobalHistoryLocalIndex G n S D × Fin e) ≃
        Fin (Fintype.card
          (ExactGlobalHistoryLocalIndex G n S D) * e) :=
    (Equiv.prodCongr
      (Fintype.equivFin
        (ExactGlobalHistoryLocalIndex G n S D))
      (Equiv.refl (Fin e))).trans finProdFinEquiv
  exact
    (Equiv.prodProdProdComm
      (ExactGlobalHistoryLocalIndex G n S D)
      (ExactGlobalHistoryLocalIndex G n S D)
      (Fin e) (Fin e)).trans (Equiv.prodCongr localEquiv localEquiv)

end

noncomputable section

open WithLp
open scoped BigOperators Kronecker ComplexOrder MatrixOrder
  Matrix.Norms.L2Operator InnerProductSpace

def unconditionalMatchedVerifierTensor
    {s t : Type*} [Fintype s] [Fintype t]
    (target : EuclideanSpace ℂ s)
    (work : EuclideanSpace ℂ t) :
    EuclideanSpace ℂ (s × t) :=
  toLp 2 (fun q : s × t => target q.1 * work q.2)

variable {X Y A B : Type*}
variable [Fintype X] [Fintype Y] [Fintype A] [Fintype B]

end

noncomputable section

open WithLp
open scoped BigOperators Kronecker ComplexOrder MatrixOrder
  Matrix.Norms.L2Operator InnerProductSpace

abbrev UnconditionalSelectedCopyLocalIndex
    (B d N m : ℕ) :=
  Σ _ : Fin B × Fin d, Fin (N * m)

def unconditionalSelectedCopyCleanedStage
    {d N B m : ℕ}
    (Q : ℕ) (w : ℝ)
    (ξ ζ : BipartiteUnitVector d)
    (A C : Fin B → Option ℕ →
      Matrix.unitaryGroup (Fin (N * m)) ℂ) :
    EuclideanSpace ℂ
      (UnconditionalSelectedCopyLocalIndex B d N m ×
       UnconditionalSelectedCopyLocalIndex B d N m) :=
  dSVDensityRationalPublicBucketPhysicalCoherentLocalReset
    Q w ξ ζ A C
    (dSVDensityRationalPublicBucketPhysicalCoherentMixedState
      (N := N) (B := B) w m ξ ζ)

end

end QuantumParallelRepetition
