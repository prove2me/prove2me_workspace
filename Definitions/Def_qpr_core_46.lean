import Definitions.Def_quantum_parallel_repetition_game
import Definitions.Def_qpr_core_45
import Theorems.Thm_QuantumParallelRepetition_exactAlicePurificationFamily_posSemidef
import Theorems.Thm_QuantumParallelRepetition_exactBobPurificationFamily_posSemidef
import Mathlib.Algebra.Algebra.Basic
import Mathlib.Algebra.Algebra.Defs
import Mathlib.Algebra.BigOperators.Group.Finset.Basic
import Mathlib.Algebra.BigOperators.Group.Finset.Defs
import Mathlib.Algebra.Field.Defs
import Mathlib.Algebra.Group.Action.Defs
import Mathlib.Algebra.Group.Action.Pi
import Mathlib.Algebra.Group.Basic
import Mathlib.Algebra.Group.Defs
import Mathlib.Algebra.Group.Nat.Defs
import Mathlib.Algebra.Group.Pi.Basic
import Mathlib.Algebra.Group.Subgroup.Defs
import Mathlib.Algebra.GroupWithZero.Action.Defs
import Mathlib.Algebra.GroupWithZero.Action.Pi
import Mathlib.Algebra.GroupWithZero.Defs
import Mathlib.Algebra.Module.Defs
import Mathlib.Algebra.Module.NatInt
import Mathlib.Algebra.Module.Pi
import Mathlib.Algebra.Module.Submodule.Defs
import Mathlib.Algebra.Ring.CompTypeclasses
import Mathlib.Algebra.Ring.Defs
import Mathlib.Algebra.Ring.Hom.Defs
import Mathlib.Algebra.Star.Basic
import Mathlib.Algebra.Star.StarAlgHom
import Mathlib.Analysis.CStarAlgebra.Classes
import Mathlib.Analysis.CStarAlgebra.Matrix
import Mathlib.Analysis.Complex.Basic
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
import Mathlib.Analysis.Normed.Operator.LinearIsometry
import Mathlib.Analysis.Normed.Ring.Basic
import Mathlib.Analysis.RCLike.Basic
import Mathlib.Analysis.SpecialFunctions.Pow.Real
import Mathlib.Data.Complex.Basic
import Mathlib.Data.ENNReal.Basic
import Mathlib.Data.Finset.Card
import Mathlib.Data.Finset.Defs
import Mathlib.Data.Finset.SDiff
import Mathlib.Data.Fintype.Basic
import Mathlib.Data.Fintype.Card
import Mathlib.Data.Fintype.Defs
import Mathlib.Data.Fintype.Pi
import Mathlib.Data.Fintype.Prod
import Mathlib.Data.Fintype.Sets
import Mathlib.Data.Fintype.Sigma
import Mathlib.Data.Fintype.Sum
import Mathlib.Data.FunLike.Basic
import Mathlib.Data.FunLike.Equiv
import Mathlib.Data.Int.Cast.Defs
import Mathlib.Data.Matrix.Basic
import Mathlib.Data.Matrix.Diagonal
import Mathlib.Data.Matrix.Mul
import Mathlib.Data.Nat.Cast.Defs
import Mathlib.Data.Nat.Init
import Mathlib.Data.Real.Basic
import Mathlib.Data.Real.Sqrt
import Mathlib.Data.SetLike.Basic
import Mathlib.LinearAlgebra.Dimension.Finrank
import Mathlib.LinearAlgebra.Matrix.ConjTranspose
import Mathlib.LinearAlgebra.Matrix.Defs
import Mathlib.LinearAlgebra.Matrix.Kronecker
import Mathlib.LinearAlgebra.Matrix.PosDef
import Mathlib.LinearAlgebra.Matrix.Trace
import Mathlib.Logic.Equiv.Defs
import Mathlib.Logic.Equiv.Prod
import Mathlib.Logic.Unique
import Mathlib.MeasureTheory.Function.AEEqFun
import Mathlib.MeasureTheory.Function.LpSpace.Basic
import Mathlib.MeasureTheory.Measure.Haar.OfBasis
import Mathlib.MeasureTheory.Measure.MeasureSpace
import Mathlib.MeasureTheory.Measure.MeasureSpaceDef
import Mathlib.MeasureTheory.Measure.Restrict
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
  Matrix.Norms.L2Operator InnerProductSpace

def unconditionalActualFairSourceBaseWinningCLM
    {X Y A B : Type}
    [Fintype X] [Fintype Y] [Fintype A] [Fintype B]
    (G : Game X Y A B) (n : ℕ) (S : Strategy (G.repeat n))
    (D : Finset (Fin n)) (a₀ : A) (b₀ : B)
    (x : X) (y : Y) :
    ExactSourceGlobalState G n S D →L[ℂ]
      ExactSourceGlobalState G n S D := by
  classical
  exact Matrix.toEuclideanCLM (𝕜 := ℂ)
    (directDSVActualLocalPOVMWinningEffect G
      (integratorActualC485SourceAlicePOVM G n S D a₀ x)
      (integratorActualC485SourceBobPOVM G n S D b₀ y)
      x y)

def unconditionalActualFairSourcePhaseHarmonicWork
    (P k : ℕ) :
    EuclideanSpace ℂ
      ((Fin P × Fin k) × (Fin P × Fin k)) :=
  LinearIsometryEquiv.piLpCongrLeft 2 ℂ ℂ
    (Equiv.prodProdProdComm
      (Fin P) (Fin P) (Fin k) (Fin k))
    (unconditionalMatchedVerifierTensor
      (ePRState P) (embezzlementState k))

end

noncomputable section

open WithLp
open scoped BigOperators Kronecker ComplexOrder MatrixOrder
  Matrix.Norms.L2Operator InnerProductSpace

attribute [local instance] Classical.propDecidable

def unconditionalActualC485RetainedHistoryPairEquiv
    {P N d L : ℕ} (j : Fin L) :
    (UnconditionalSourceFlagControlledRetainedIndex
        (N := N) (d := d) j
        (UnconditionalActualCanonicalRetainedPhaseIndex 1 P) ×
     UnconditionalSourceFlagControlledRetainedIndex
        (N := N) (d := d) j
        (UnconditionalActualCanonicalRetainedPhaseIndex 1 P)) ≃
      IntegratorActualC485RetainedIndex 1 P N d L j :=
  unconditionalActualFixedSourceRetainedHistoryPairEquiv
    (N := N) (d := d)
    (R := UnconditionalActualCanonicalRetainedPhaseIndex 1 P) j

end

noncomputable section

open WithLp
open scoped BigOperators Kronecker ComplexOrder MatrixOrder
  Matrix.Norms.L2Operator InnerProductSpace

def unconditionalActualLocalPOVMLosingEffect
    {X Y A B s t : Type*}
    [Fintype X] [Fintype Y] [Fintype A] [Fintype B]
    [Fintype s] [Fintype t] [DecidableEq s] [DecidableEq t]
    (G : Game X Y A B) (PA : POVM A s) (PB : POVM B t)
    (x : X) (y : Y) : Matrix (s × t) (s × t) ℂ :=
  ∑ a : A, ∑ b : B,
    if G.predicate x y a b = true then 0
    else PA.operator a ⊗ₖ PB.operator b

def unconditionalActualC485FairSourceDiagonalWork
    {X Y A B : Type*}
    [Fintype X] [Fintype Y] [Fintype A] [Fintype B]
    (G : Game X Y A B) (n : ℕ) (S : Strategy (G.repeat n))
    (D : Finset (Fin n))
    (w : ℝ) (N P : ℕ) {L : ℕ}
    (schedule : Fin L → Fin 1)
    (u : ExactLocallySampleableTuple X Y A B D)
    (j : Fin L) :
    EuclideanSpace ℂ
      (IntegratorActualC485RetainedIndex
        1 P N (Fintype.card
          (ExactGlobalHistoryLocalIndex G n S D)) L j) :=
  integratorActualC485NormalizedDiagonalWork
    (S := 1) (B := P) (N := N)
    (d := Fintype.card (ExactGlobalHistoryLocalIndex G n S D))
    (L := L)
    (fun _ : Fin 1 => w) schedule
    (unconditionalExactFairGammaUnit G n S D u)
    (exactGlobalHistoryFinPhi G n S D u.2.2.2 u.2.2.1) j

def unconditionalActualC485FairSourceClipEnergy
    {X Y A B : Type*}
    [Fintype X] [Fintype Y] [Fintype A] [Fintype B]
    (G : Game X Y A B) (n : ℕ) (S : Strategy (G.repeat n))
    (D : Finset (Fin n))
    {w : ℝ} {N P L m : ℕ}
    (width : 0 < w) (grid : 0 < N)
    (fine :
      (Fintype.card
        (ExactGlobalHistoryLocalIndex G n S D) : ℝ) /
        (N : ℝ) < 1 / (w + 1))
    (schedule : Fin L → Fin 1) : ℝ :=
  ∑ u : ExactLocallySampleableTuple X Y A B D,
    exactLocallySampleableLaw G n S D u *
      ∑ j : Fin L,
        ‖unconditionalMatchedVerifierTensor
            (dSVDensityRationalPublicBucketCoherentPhaseSigmaState
              P
              (unconditionalConjugatePureVector
                (exactSourceTuplePsi G n S D u))
              (fun _ _ _ => embezzlementState (N * m)))
            (unconditionalActualC485FairSourceDiagonalWork
              G n S D w N P schedule u j) -
          unconditionalMatchedVerifierTensor
            (dSVDensityRationalPublicBucketCoherentPhaseSigmaState
              P
              (unconditionalConjugatePureVector
                (dSVDensityRationalCanonicalAcceptedUnitTarget
                  width grid fine
                  (unconditionalExactFairGammaUnit
                    G n S D u)).val)
              (fun _ _ _ => embezzlementState (N * m)))
            (unconditionalActualC485FairSourceDiagonalWork
              G n S D w N P schedule u j)‖ ^ 2

end

noncomputable section

def pdfUniversalRate (B : ℝ) : ℝ :=
  1 / (8 * (4 * B) ^ 12)

def pdfGapRate (B ε ell : ℝ) : ℝ :=
  pdfUniversalRate B * ε ^ 13 / (ε + ell)

def pdfConditioningTolerance (ε : ℝ) : ℝ :=
  ε / 4

def pdfCatalystAccuracy (K ε : ℝ) : ℝ :=
  (ε / (16 * K)) ^ 12

end

noncomputable section

open scoped BigOperators ComplexOrder Kronecker MatrixOrder
  Matrix.Norms.L2Operator InnerProductSpace

def pdfRoundingCoefficient (K : ℝ) : ℝ :=
  (5 + 2 * universalErrorCeiling K) * Real.sqrt (3 / 2 : ℝ) +
    2 * K * (32 : ℝ) ^ (1 / 12 : ℝ) +
    2 * Real.sqrt 8

end

noncomputable section

open scoped BigOperators ComplexOrder Kronecker MatrixOrder

attribute [local instance] Classical.propDecidable

variable {X Y A B : Type*}
variable [Fintype X] [Fintype Y] [Fintype A] [Fintype B]

def pdfConstantDensity : DensityMatrix (PUnit × PUnit) where
  matrix := 1
  positive := Matrix.PosSemidef.one
  trace_one := by
    simp [Matrix.trace]

end

end QuantumParallelRepetition
