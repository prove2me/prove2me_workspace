import Definitions.Def_quantum_parallel_repetition_game
import Definitions.Def_qpr_core_26
import Mathlib.Algebra.Algebra.Basic
import Mathlib.Algebra.Algebra.Defs
import Mathlib.Algebra.BigOperators.Group.Finset.Defs
import Mathlib.Algebra.Group.Action.Defs
import Mathlib.Algebra.Group.Defs
import Mathlib.Algebra.Group.Submonoid.Defs
import Mathlib.Algebra.GroupWithZero.Defs
import Mathlib.Algebra.Module.Defs
import Mathlib.Algebra.Module.LinearMap.Defs
import Mathlib.Algebra.Notation.Defs
import Mathlib.Algebra.Ring.Defs
import Mathlib.Algebra.Ring.Hom.Defs
import Mathlib.Algebra.Star.Basic
import Mathlib.AlgebraicTopology.SimplexCategory.Basic
import Mathlib.AlgebraicTopology.SimplexCategory.Defs
import Mathlib.Analysis.CStarAlgebra.Classes
import Mathlib.Analysis.Complex.Norm
import Mathlib.Analysis.InnerProductSpace.Basic
import Mathlib.Analysis.InnerProductSpace.Defs
import Mathlib.Analysis.InnerProductSpace.PiL2
import Mathlib.Analysis.Matrix.Normed
import Mathlib.Analysis.Matrix.Order
import Mathlib.Analysis.Normed.Field.Basic
import Mathlib.Analysis.Normed.Group.Defs
import Mathlib.Analysis.Normed.Lp.WithLp
import Mathlib.Analysis.Normed.Module.Basic
import Mathlib.Analysis.Normed.Ring.Basic
import Mathlib.Analysis.RCLike.Basic
import Mathlib.Analysis.SpecialFunctions.Log.NegMulLog
import Mathlib.Data.Complex.Basic
import Mathlib.Data.ENNReal.Basic
import Mathlib.Data.Finset.Defs
import Mathlib.Data.Fintype.Basic
import Mathlib.Data.Fintype.Card
import Mathlib.Data.Fintype.Defs
import Mathlib.Data.Fintype.Pi
import Mathlib.Data.Fintype.Prod
import Mathlib.Data.Fintype.Sets
import Mathlib.Data.Fintype.Sigma
import Mathlib.Data.FunLike.Basic
import Mathlib.Data.Matrix.Basic
import Mathlib.Data.Matrix.Mul
import Mathlib.Data.Nat.Cast.Defs
import Mathlib.Data.Real.Basic
import Mathlib.Data.SetLike.Basic
import Mathlib.LinearAlgebra.Matrix.Defs
import Mathlib.LinearAlgebra.Matrix.Kronecker
import Mathlib.LinearAlgebra.UnitaryGroup
import Mathlib.Logic.Equiv.Defs
import Mathlib.MeasureTheory.Measure.MeasureSpace
import Mathlib.Topology.Defs.Filter

namespace QuantumParallelRepetition

open scoped ComplexOrder Matrix BigOperators InnerProductSpace
open Complex Matrix Finset

noncomputable section

open scoped BigOperators ComplexOrder Kronecker MatrixOrder
  Matrix.Norms.L2Operator InnerProductSpace

set_option backward.isDefEq.respectTransparency false
set_option maxHeartbeats 7000000
set_option maxRecDepth 2048

attribute [local instance] Classical.propDecidable

variable {X Y A B : Type*}
variable [Fintype X] [Fintype Y] [Fintype A] [Fintype B]

def exactFairAliceSeedScalarEntropy
    (G : Game X Y A B) (n : ℕ) (S : Strategy (G.repeat n))
    (D : Finset (Fin n))
    (seed : ExactRemainingSeed D) : ℝ :=
  ∑ history : ExactRevealHistory X Y D seed,
  ∑ aliceAnswer : {j : Fin n // j ∈ D} → A,
  ∑ bobAnswer : {j : Fin n // j ∈ D} → B,
    if exactHistoryAccepted G n D
      ⟨seed, history, aliceAnswer, bobAnswer⟩ then
      exactRevealMass G n D seed history *
        (∑ y : Y, G.marginalY y *
          Real.negMulLog
            (bornTracePairing S.state.matrix
              (exactAliceMeanFilter
                G n S D seed history aliceAnswer y)
              (exactBobQuestionFilter
                G n S D seed history bobAnswer y)))
    else 0

def exactFairBobSeedScalarEntropy
    (G : Game X Y A B) (n : ℕ) (S : Strategy (G.repeat n))
    (D : Finset (Fin n))
    (seed : ExactRemainingSeed D) : ℝ :=
  ∑ history : ExactRevealHistory X Y D seed,
  ∑ aliceAnswer : {j : Fin n // j ∈ D} → A,
  ∑ bobAnswer : {j : Fin n // j ∈ D} → B,
    if exactHistoryAccepted G n D
      ⟨seed, history, aliceAnswer, bobAnswer⟩ then
      exactRevealMass G n D seed history *
        (∑ x : X, G.marginalX x *
          Real.negMulLog
            (bornTracePairing S.state.matrix
              (exactAliceQuestionFilter
                G n S D seed history aliceAnswer x)
              (exactBobMeanFilter
                G n S D seed history bobAnswer x)))
    else 0

end

noncomputable section

open scoped BigOperators InnerProductSpace

variable {X Y A B : Type*}
variable [Fintype X] [Fintype Y] [Fintype A] [Fintype B]

def sourceAnswerAlphabetBound (A B : Type*) [Fintype A] [Fintype B] : ℝ :=
  max 1 ((Fintype.card A : ℝ) * (Fintype.card B : ℝ))

end

noncomputable section

open WithLp
open scoped BigOperators Kronecker ComplexOrder MatrixOrder

def dSVDensityRationalPublicMultiscaleFirstHitPhysicalFlagMismatchMass
    {A C : Type*} [Fintype A] [Fintype C] {L : ℕ}
    (alice : A → Fin (L + 1))
    (bob : C → Fin (L + 1))
    (z : EuclideanSpace ℂ (A × C)) : ℝ :=
  ∑ a : A, ∑ b : C,
    ‖z (a, b)‖ ^ 2 *
      if alice a = bob b then (0 : ℝ) else 1

end

noncomputable section

open WithLp
open scoped BigOperators ComplexOrder Kronecker MatrixOrder

attribute [local instance] Classical.propDecidable

def dSVDensityRationalHeterogeneousActualPhysicalFlagMass
    (N : ℕ) {S d L : ℕ}
    (width : Fin S → ℝ) (schedule : Fin L → Fin S)
    (ξ ζ : BipartiteUnitVector d)
    (flagAlice flagBob : Fin (L + 1)) : ℝ :=
  ∑ alice : DSVUniformDensityIndependentHistoryLocalIndex
      (L + 1) N d,
    ∑ bob : DSVUniformDensityIndependentHistoryLocalIndex
        (L + 1) N d,
      ‖dSVDensityRationalHeterogeneousActualPhysicalState
          N width schedule ξ ζ
          (⟨flagAlice, alice⟩, ⟨flagBob, bob⟩)‖ ^ 2

def dSVDensityRationalHeterogeneousActualAsynchronousFlagMass
    (N : ℕ) {S d L : ℕ}
    (width : Fin S → ℝ) (schedule : Fin L → Fin S)
    (ξ ζ : BipartiteUnitVector d) : ℝ :=
  dSVDensityRationalPublicMultiscaleFirstHitPhysicalFlagMismatchMass
    (fun q : DSVUniformDensityThresholdWholeHistoryLocalIndex
      N d L => q.1)
    (fun q : DSVUniformDensityThresholdWholeHistoryLocalIndex
      N d L => q.1)
    (dSVDensityRationalHeterogeneousActualPhysicalState
      N width schedule ξ ζ)

end

noncomputable section

open WithLp
open scoped BigOperators ComplexOrder Kronecker MatrixOrder

attribute [local instance] Classical.propDecidable

def dSVDensityRationalHeterogeneousActualPhysicalFlagBornCopyWidth
    {S L : ℕ} (width : Fin S → ℝ) (schedule : Fin L → Fin S)
    (i : Fin (L + 1)) : ℝ :=
  if active : i.val < L then width (schedule ⟨i.val, active⟩) else 0

def dSVDensityRationalHeterogeneousActualPhysicalFlagBornCopyMatrix
    {β : Type*} [Fintype β] [DecidableEq β] {L : ℕ}
    (accepted : Fin L → β → Prop) (U : Matrix.unitaryGroup β ℂ)
    (flag : Fin (L + 1)) (i : Fin (L + 1)) : Matrix β β ℂ :=
  fun output input =>
    ∑ atom : β, star ((U : Matrix β β ℂ) atom output) *
      (if dSVDensityRationalHeterogeneousActualCopyCondition
          accepted flag i atom
       then (U : Matrix β β ℂ) atom input else 0)

end

noncomputable section

open WithLp
open scoped BigOperators ComplexOrder Kronecker MatrixOrder

def dSVDensityRationalHeterogeneousTargetFirstSpectralAlice
    (S B N d L m : ℕ)
    (width : Fin S → ℝ) (schedule : Fin L → Fin S)
    (ξ : BipartiteUnitVector d) :
    Matrix.unitaryGroup
      (Fin (d *
        dSVDensityRationalPublicMultiscalePhaseResidual
          S B N d L m)) ℂ :=
  dSVDensityRationalPublicLogPhaseActualTargetFirstLocalLift
    (Fintype.card (DSVDensityRationalPublicMultiscalePhase S B))
    N d L m
    (dSVDensityRationalPublicLogPhasePhysicalHistoryUnitary
      (Fintype.card (DSVDensityRationalPublicMultiscalePhase S B))
      (dSVDensityRationalHeterogeneousActualAliceUnitary
        N width schedule ξ))

def dSVDensityRationalHeterogeneousTargetFirstSpectralBob
    (S B N d L m : ℕ)
    (width : Fin S → ℝ) (schedule : Fin L → Fin S)
    (ζ : BipartiteUnitVector d) :
    Matrix.unitaryGroup
      (Fin (d *
        dSVDensityRationalPublicMultiscalePhaseResidual
          S B N d L m)) ℂ :=
  dSVDensityRationalPublicLogPhaseActualTargetFirstLocalLift
    (Fintype.card (DSVDensityRationalPublicMultiscalePhase S B))
    N d L m
    (dSVDensityRationalPublicLogPhasePhysicalHistoryUnitary
      (Fintype.card (DSVDensityRationalPublicMultiscalePhase S B))
      (dSVDensityRationalHeterogeneousActualBobUnitary
        N width schedule ζ))

def dSVDensityRationalHeterogeneousTargetFirstSpectralPhysicalSource
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
  localUnitaryAction
    (dSVDensityRationalHeterogeneousTargetFirstSpectralAlice
      S B N d L m width schedule ξ)
    (dSVDensityRationalHeterogeneousTargetFirstSpectralBob
      S B N d L m width schedule ζ)
    (dSVDensityRationalPublicMultiscalePhaseTargetFirstPreparedSource
      S B N d L m)

end

noncomputable section

open WithLp
open scoped BigOperators Kronecker ComplexOrder MatrixOrder

def dSVDensityRationalPublicBucketCoherentPhaseSigmaProductEquiv
    {H : Type*} (B m : ℕ) :
    (Σ _ : Fin B × H, Fin m) ≃
      (Fin B × H) × Fin m :=
  Equiv.sigmaEquivProd (Fin B × H) (Fin m)

end

end QuantumParallelRepetition
