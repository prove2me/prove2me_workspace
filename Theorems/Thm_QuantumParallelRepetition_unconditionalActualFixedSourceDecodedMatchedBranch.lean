import Definitions.Def_quantum_parallel_repetition_game
import Definitions.Def_qpr_core_42
import Mathlib.Algebra.BigOperators.Group.Finset.Defs
import Mathlib.Algebra.Group.Basic
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
import Mathlib.Data.Real.Basic
import Mathlib.Data.SetLike.Basic
import Mathlib.Data.Sigma.Basic
import Mathlib.LinearAlgebra.Matrix.ConjTranspose
import Mathlib.LinearAlgebra.Matrix.Defs
import Mathlib.LinearAlgebra.Matrix.Kronecker
import Mathlib.LinearAlgebra.UnitaryGroup
import Mathlib.Logic.Equiv.Defs
import Mathlib.MeasureTheory.Measure.MeasureSpace
import Mathlib.Topology.Defs.Filter

open QuantumParallelRepetition
open scoped ComplexOrder Matrix BigOperators InnerProductSpace
open Complex Matrix Finset
open WithLp
open scoped BigOperators Kronecker ComplexOrder MatrixOrder
attribute [local instance] Classical.propDecidable

theorem QuantumParallelRepetition.unconditionalActualFixedSourceDecodedMatchedBranch
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
          (S := S) (B := B) (N := N) (d := d) (L := L) j) := by sorry
