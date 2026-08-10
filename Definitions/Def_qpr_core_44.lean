import Definitions.Def_quantum_parallel_repetition_game
import Definitions.Def_qpr_core_43
import Theorems.Thm_QuantumParallelRepetition_exactAlicePurificationFamily_posSemidef
import Theorems.Thm_QuantumParallelRepetition_exactBobPurificationFamily_posSemidef
import Theorems.Thm_QuantumParallelRepetition_exactSourceTupleGamma_norm
import Mathlib.Algebra.Algebra.Defs
import Mathlib.Algebra.BigOperators.Group.Finset.Defs
import Mathlib.Algebra.Field.Defs
import Mathlib.Algebra.Group.Action.Pi
import Mathlib.Algebra.Group.Basic
import Mathlib.Algebra.Group.Defs
import Mathlib.Algebra.Group.Subgroup.Defs
import Mathlib.Algebra.Group.Submonoid.Defs
import Mathlib.Algebra.GroupWithZero.Action.Defs
import Mathlib.Algebra.GroupWithZero.Defs
import Mathlib.Algebra.Module.Defs
import Mathlib.Algebra.Module.Submodule.Defs
import Mathlib.Algebra.Ring.Defs
import Mathlib.Algebra.Star.Basic
import Mathlib.Algebra.Star.Unitary
import Mathlib.AlgebraicTopology.SimplexCategory.Basic
import Mathlib.AlgebraicTopology.SimplexCategory.Defs
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
import Mathlib.Analysis.Normed.Lp.PiLp
import Mathlib.Analysis.Normed.Lp.WithLp
import Mathlib.Analysis.Normed.Module.Basic
import Mathlib.Analysis.Normed.Ring.Basic
import Mathlib.Analysis.RCLike.Basic
import Mathlib.Data.Complex.Basic
import Mathlib.Data.ENNReal.Basic
import Mathlib.Data.Fin.SuccPred
import Mathlib.Data.FinEnum
import Mathlib.Data.Finset.Defs
import Mathlib.Data.Fintype.Basic
import Mathlib.Data.Fintype.Card
import Mathlib.Data.Fintype.Defs
import Mathlib.Data.Fintype.Pi
import Mathlib.Data.Fintype.Prod
import Mathlib.Data.Fintype.Sigma
import Mathlib.Data.Fintype.Sum
import Mathlib.Data.Matrix.Basic
import Mathlib.Data.Matrix.Mul
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

open WithLp
open scoped BigOperators Kronecker ComplexOrder MatrixOrder

attribute [local instance] Classical.propDecidable

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

end

end QuantumParallelRepetition
