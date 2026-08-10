import Definitions.Def_quantum_parallel_repetition_game
import Definitions.Def_qpr_core_25
import Theorems.Thm_QuantumParallelRepetition_exactAlicePurificationFamily_posSemidef
import Theorems.Thm_QuantumParallelRepetition_exactBobPurificationFamily_posSemidef
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
import Mathlib.Algebra.Group.Nat.Defs
import Mathlib.Algebra.Group.Pi.Basic
import Mathlib.Algebra.Group.Subgroup.Defs
import Mathlib.Algebra.Group.Submonoid.Defs
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
import Mathlib.AlgebraicTopology.SimplexCategory.Basic
import Mathlib.AlgebraicTopology.SimplexCategory.Defs
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
import Mathlib.Analysis.Normed.Operator.Basic
import Mathlib.Analysis.Normed.Operator.LinearIsometry
import Mathlib.Analysis.Normed.Ring.Basic
import Mathlib.Analysis.RCLike.Basic
import Mathlib.Analysis.SpecialFunctions.Pow.Real
import Mathlib.Data.Complex.Basic
import Mathlib.Data.ENNReal.Basic
import Mathlib.Data.Finset.Card
import Mathlib.Data.Finset.Defs
import Mathlib.Data.Finset.Empty
import Mathlib.Data.Finset.SDiff
import Mathlib.Data.Fintype.Basic
import Mathlib.Data.Fintype.Card
import Mathlib.Data.Fintype.Defs
import Mathlib.Data.Fintype.Perm
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
import Mathlib.Data.Sigma.Basic
import Mathlib.LinearAlgebra.Dimension.Finrank
import Mathlib.LinearAlgebra.Matrix.ConjTranspose
import Mathlib.LinearAlgebra.Matrix.Defs
import Mathlib.LinearAlgebra.Matrix.Kronecker
import Mathlib.LinearAlgebra.Matrix.PosDef
import Mathlib.LinearAlgebra.Matrix.Trace
import Mathlib.LinearAlgebra.UnitaryGroup
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

def pdfConstantPOVM
    {C : Type*} [Fintype C] (answer : C) : POVM C PUnit := by
  classical
  exact
    { operator := fun c => if c = answer then 1 else 0
      positive := by
        intro c
        split_ifs
        · exact Matrix.PosSemidef.one
        · exact Matrix.PosSemidef.zero
      complete := by simp }

def pdfConstantStrategy
    (G : Game X Y A B) (a : A) (b : B) : Strategy G := by
  classical
  exact
    { Alice := PUnit
      Bob := PUnit
      state := pdfConstantDensity
      aliceMeasurement := fun _ => pdfConstantPOVM a
      bobMeasurement := fun _ => pdfConstantPOVM b }

end

noncomputable section

open scoped BigOperators ComplexOrder Kronecker MatrixOrder
  Matrix.Norms.L2Operator InnerProductSpace

open QuantumParallelRepetition.ClassicalSampling

attribute [local instance] Classical.propDecidable

def unconditionalSourcePhysicalRoundingUniversalConstant : ℝ :=
  1024 + 8 *
    (4 * Real.sqrt
      (34 + unconditionalPrefactorBucketCoefficient) + 2)

end

noncomputable section

open WithLp
open scoped BigOperators Kronecker ComplexOrder MatrixOrder
  Matrix.Norms.L2Operator InnerProductSpace

open QuantumParallelRepetition.ClassicalSampling

def unconditionalActualFairSourceAliceTarget
    {X Y A B : Type}
    [Fintype X] [Fintype Y] [Fintype A] [Fintype B]
    (G : Game X Y A B) (n : ℕ) (S : Strategy (G.repeat n))
    (D : Finset (Fin n)) (denominator : ℕ)
    (numerator : ExactLocalSamplerIndex X Y D →
      ExactHistoryFlag X Y A B D → ℕ)
    (nonempty : ∀ index,
      (rationalMarked denominator (numerator index)).Nonempty) :
    ExactSourceSharedFlag X Y A B D denominator → X →
      BipartiteUnitVector
        (Fintype.card (ExactGlobalHistoryLocalIndex G n S D)) :=
  fun flag x =>
    exactGlobalHistoryFinGamma G n S D
      (exactSourceAlicePermutationHistory
        D denominator numerator nonempty flag x) x

def unconditionalActualFairSourceBobTarget
    {X Y A B : Type}
    [Fintype X] [Fintype Y] [Fintype A] [Fintype B]
    (G : Game X Y A B) (n : ℕ) (S : Strategy (G.repeat n))
    (D : Finset (Fin n)) (denominator : ℕ)
    (numerator : ExactLocalSamplerIndex X Y D →
      ExactHistoryFlag X Y A B D → ℕ)
    (nonempty : ∀ index,
      (rationalMarked denominator (numerator index)).Nonempty) :
    ExactSourceSharedFlag X Y A B D denominator → Y →
      BipartiteUnitVector
        (Fintype.card (ExactGlobalHistoryLocalIndex G n S D)) :=
  fun flag y =>
    exactGlobalHistoryFinPhi G n S D
      (exactSourceBobPermutationHistory
        D denominator numerator nonempty flag y) y

def unconditionalActualFairSourceAliceFlagPOVM
    {X Y A B : Type}
    [Fintype X] [Fintype Y] [Fintype A] [Fintype B]
    [DecidableEq A]
    (G : Game X Y A B) (n : ℕ) (S : Strategy (G.repeat n))
    (D : Finset (Fin n)) (denominator : ℕ)
    (numerator : ExactLocalSamplerIndex X Y D →
      ExactHistoryFlag X Y A B D → ℕ)
    (nonempty : ∀ index,
      (rationalMarked denominator (numerator index)).Nonempty)
    (a₀ : A) (P N L m : ℕ) :
    ExactSourceSharedFlag X Y A B D denominator →
      Fin (L + 1) → X →
        POVM A
          (UnconditionalSourcePhysicalStoppingPhaseFiber
            1 P N
            (Fintype.card (ExactGlobalHistoryLocalIndex G n S D))
            L m) := by
  classical
  intro flag
  exact
    physical8OneScaleOriginalFlagPOVM
      (N := N)
      (d := Fintype.card (ExactGlobalHistoryLocalIndex G n S D))
      (m := m)
      (unconditionalActualOneScaleFixedSourcePhaseSplit P) a₀
      (fun x =>
        unitaryConjugatePOVM
          (conjugateUnitary
            (dSVDensityRationalCanonicalAliceBasis
              (unconditionalActualFairSourceAliceTarget
                G n S D denominator numerator nonempty flag x)))
          (integratorActualC485SourceAlicePOVM
            G n S D a₀ x))

def unconditionalActualFairSourceBobFlagPOVM
    {X Y A B : Type}
    [Fintype X] [Fintype Y] [Fintype A] [Fintype B]
    [DecidableEq B]
    (G : Game X Y A B) (n : ℕ) (S : Strategy (G.repeat n))
    (D : Finset (Fin n)) (denominator : ℕ)
    (numerator : ExactLocalSamplerIndex X Y D →
      ExactHistoryFlag X Y A B D → ℕ)
    (nonempty : ∀ index,
      (rationalMarked denominator (numerator index)).Nonempty)
    (b₀ : B) (P N L m : ℕ) :
    ExactSourceSharedFlag X Y A B D denominator →
      Fin (L + 1) → Y →
        POVM B
          (UnconditionalSourcePhysicalStoppingPhaseFiber
            1 P N
            (Fintype.card (ExactGlobalHistoryLocalIndex G n S D))
            L m) := by
  classical
  intro flag
  exact
    physical8OneScaleOriginalFlagPOVM
      (N := N)
      (d := Fintype.card (ExactGlobalHistoryLocalIndex G n S D))
      (m := m)
      (unconditionalActualOneScaleFixedSourcePhaseSplit P) b₀
      (fun y =>
        unitaryConjugatePOVM
          (conjugateUnitary
            (dSVUniformDensityThresholdLeftBobBasis
              (unconditionalActualFairSourceBobTarget
                G n S D denominator numerator nonempty flag y)))
          (integratorActualC485SourceBobPOVM
            G n S D b₀ y))

def unconditionalActualFairSourceAliceStoppingUnitary
    {X Y A B : Type}
    [Fintype X] [Fintype Y] [Fintype A] [Fintype B]
    (G : Game X Y A B) (n : ℕ) (S : Strategy (G.repeat n))
    (D : Finset (Fin n)) (denominator : ℕ)
    (numerator : ExactLocalSamplerIndex X Y D →
      ExactHistoryFlag X Y A B D → ℕ)
    (nonempty : ∀ index,
      (rationalMarked denominator (numerator index)).Nonempty)
    {P N L m : ℕ} (Q : ℕ)
    (width : Fin 1 → ℝ) (schedule : Fin L → Fin 1)
    (cleanup : Fin P → Option ℕ →
      Matrix.unitaryGroup (Fin (N * m)) ℂ) :
    ExactSourceSharedFlag X Y A B D denominator → X →
      Matrix.unitaryGroup
        (Σ _ : Fin (L + 1),
          UnconditionalSourcePhysicalStoppingPhaseFiber
            1 P N
            (Fintype.card (ExactGlobalHistoryLocalIndex G n S D))
            L m) ℂ := by
  classical
  exact
    physical8OneScaleActualAliceStoppingUnitary
      (P := P) (N := N)
      (d := Fintype.card (ExactGlobalHistoryLocalIndex G n S D))
      (L := L) (m := m)
      (unconditionalActualOneScaleFixedSourcePhaseSplit P)
      Q width schedule
      (unconditionalActualFairSourceAliceTarget
        G n S D denominator numerator nonempty)
      cleanup

def unconditionalActualFairSourceBobStoppingUnitary
    {X Y A B : Type}
    [Fintype X] [Fintype Y] [Fintype A] [Fintype B]
    (G : Game X Y A B) (n : ℕ) (S : Strategy (G.repeat n))
    (D : Finset (Fin n)) (denominator : ℕ)
    (numerator : ExactLocalSamplerIndex X Y D →
      ExactHistoryFlag X Y A B D → ℕ)
    (nonempty : ∀ index,
      (rationalMarked denominator (numerator index)).Nonempty)
    {P N L m : ℕ} (Q : ℕ)
    (width : Fin 1 → ℝ) (schedule : Fin L → Fin 1)
    (cleanup : Fin P → Option ℕ →
      Matrix.unitaryGroup (Fin (N * m)) ℂ) :
    ExactSourceSharedFlag X Y A B D denominator → Y →
      Matrix.unitaryGroup
        (Σ _ : Fin (L + 1),
          UnconditionalSourcePhysicalStoppingPhaseFiber
            1 P N
            (Fintype.card (ExactGlobalHistoryLocalIndex G n S D))
            L m) ℂ := by
  classical
  exact
    physical8OneScaleActualBobStoppingUnitary
      (P := P) (N := N)
      (d := Fintype.card (ExactGlobalHistoryLocalIndex G n S D))
      (L := L) (m := m)
      (unconditionalActualOneScaleFixedSourcePhaseSplit P)
      Q width schedule
      (unconditionalActualFairSourceBobTarget
        G n S D denominator numerator nonempty)
      cleanup

end

noncomputable section

open WithLp
open scoped BigOperators Kronecker ComplexOrder MatrixOrder
  Matrix.Norms.L2Operator InnerProductSpace

open QuantumParallelRepetition.ClassicalSampling

def unconditionalActualC485SelectedVerifierBorn
    {X Y A B ι T : Type}
    [Fintype X] [Fintype Y] [Fintype A] [Fintype B]
    [Fintype ι] [DecidableEq ι] [Fintype T] [DecidableEq T]
    (G : Game X Y A B) (PA : POVM A ι) (PB : POVM B ι)
    (x : X) (y : Y)
    (z : EuclideanSpace ℂ ((ι × ι) × T)) : ℝ :=
  quadraticExpectation
    (Matrix.toEuclideanCLM (n := (ι × ι) × T) (𝕜 := ℂ)
      (directDSVActualLocalPOVMWinningEffect G PA PB x y ⊗ₖ
        (1 : Matrix T T ℂ))) z

def unconditionalActualC485RawPhysicalVerifierBorn
    {X Y A B ι κ : Type}
    [Fintype X] [Fintype Y] [Fintype A] [Fintype B]
    [Fintype ι] [DecidableEq ι] [Fintype κ] [DecidableEq κ]
    (G : Game X Y A B) (PA : POVM A ι) (PB : POVM B κ)
    (x : X) (y : Y) (z : EuclideanSpace ℂ (ι × κ)) : ℝ :=
  quadraticExpectation
    (Matrix.toEuclideanCLM (n := ι × κ) (𝕜 := ℂ)
      (directDSVActualLocalPOVMWinningEffect G PA PB x y)) z

def unconditionalActualFairSourceHistoryStopBorn
    {X Y A B : Type}
    [Fintype X] [Fintype Y] [Fintype A] [Fintype B]
    (G : Game X Y A B) (n : ℕ) (S : Strategy (G.repeat n))
    (D : Finset (Fin n)) (a₀ : A) (b₀ : B)
    {P N L m : ℕ} (Q : ℕ)
    (width : Fin 1 → ℝ) (schedule : Fin L → Fin 1)
    (UA UB : Fin P → Option ℕ →
      Matrix.unitaryGroup (Fin (N * m)) ℂ)
    (h : ExactLocallySampleableTuple X Y A B D)
    (j : Fin L) : ℝ :=
  quadraticExpectation
    (integratorActualC485WinningEffect
      (P := P) (N := N) (L := L) (m := m)
      G n S D a₀ b₀ j h.2.1 h.2.2.1)
    (integratorActualC485CleanedVector
      (S := 1) (B := P) (N := N)
      (d := Fintype.card (ExactGlobalHistoryLocalIndex G n S D))
      (L := L) (m := m)
      Q width schedule
      (unconditionalExactFairGammaUnit G n S D h)
      (exactGlobalHistoryFinPhi G n S D h.2.2.2 h.2.2.1)
      UA UB j)

def unconditionalActualFairSourcePhysicalStopBorn
    {X Y A B : Type}
    [Fintype X] [Fintype Y] [Fintype A] [Fintype B]
    [DecidableEq A] [DecidableEq B]
    (G : Game X Y A B) (n : ℕ) (S : Strategy (G.repeat n))
    (D : Finset (Fin n)) (denominator : ℕ)
    (numerator : ExactLocalSamplerIndex X Y D →
      ExactHistoryFlag X Y A B D → ℕ)
    (nonempty : ∀ index,
      (rationalMarked denominator (numerator index)).Nonempty)
    (a₀ : A) (b₀ : B)
    {P N L m : ℕ} (Q : ℕ)
    (width : Fin 1 → ℝ) (schedule : Fin L → Fin 1)
    (UA UB : Fin P → Option ℕ →
      Matrix.unitaryGroup (Fin (N * m)) ℂ)
    (flag : ExactSourceSharedFlag X Y A B D denominator)
    (x : X) (y : Y) (j : Fin L) : ℝ := by
  let d := Fintype.card (ExactGlobalHistoryLocalIndex G n S D)
  let PA := unconditionalActualFairSourceAliceFlagPOVM
    G n S D denominator numerator nonempty a₀ P N L m flag
  let PB := unconditionalActualFairSourceBobFlagPOVM
    G n S D denominator numerator nonempty b₀ P N L m flag
  let U := unconditionalActualFairSourceAliceStoppingUnitary
    (P := P) (N := N) (L := L) (m := m)
    G n S D denominator numerator nonempty Q width schedule UA flag x
  let V := unconditionalActualFairSourceBobStoppingUnitary
    (P := P) (N := N) (L := L) (m := m)
    G n S D denominator numerator nonempty Q width schedule UB flag y
  exact
    unconditionalActualC485RawPhysicalVerifierBorn
      G (PA j.succ x) (PB j.succ y) x y
      (actualStoppingBranchVector
        (actualStoppingQuestionLocalAction U V
          (unconditionalSourcePhysicalCleanedStoppingFixedSource
            1 P N d L m)) j.succ j.succ)

end

noncomputable section

open WithLp
open scoped BigOperators Kronecker ComplexOrder MatrixOrder
  Matrix.Norms.L2Operator InnerProductSpace

open QuantumParallelRepetition.ClassicalSampling

attribute [local instance] Classical.propDecidable

structure UnconditionalActualFairSourceSamplerData
    {X Y A B : Type}
    [Fintype X] [Fintype Y] [Fintype A] [Fintype B]
    (G : Game X Y A B) (n : ℕ) (S : Strategy (G.repeat n))
    (D : Finset (Fin n)) (gamma : ℝ) where
  base : ExactHistoryFlag X Y A B D
  denominator : ℕ
  denominator_positive : 0 < denominator
  numerator : ExactLocalSamplerIndex X Y D →
    ExactHistoryFlag X Y A B D → ℕ
  rational_normalized :
    ∀ index, (∑ history, numerator index history) = denominator
  support_preserving :
    ∀ index history,
      0 < exactLocalConditionalFamily D base
          (exactLocallySampleableLaw G n S D) index history →
        0 < numerator index history
  nonempty : ∀ index,
    (rationalMarked denominator (numerator index)).Nonempty
  total_variation :
    QuantumParallelRepetition.Pinsker.finiteTotalVariation
        (flaggedQuestionWeight G
          (exactSourceSharedFlagWeight D denominator))
        (exactSourceAliceFlagCoupling
          G n S D denominator numerator nonempty) ≤
      exactSourcePinskerRate G n S D + gamma
  mismatch :
    (∑ outcome :
      ExactSourceSharedFlag X Y A B D denominator × (X × Y),
      flaggedQuestionWeight G
          (exactSourceSharedFlagWeight D denominator) outcome *
        if exactSourcePermutationMatched
          D denominator numerator nonempty outcome
        then 0 else 1) ≤
      4 * (exactSourcePinskerRate G n S D + gamma)

structure UnconditionalActualFairSourceStoppingHazardData
    {X Y A B : Type}
    [Fintype X] [Fintype Y] [Fintype A] [Fintype B]
    (G : Game X Y A B) (n : ℕ) (S : Strategy (G.repeat n))
    (D : Finset (Fin n)) (alpha : ℝ) where
  w : ℝ
  N : ℕ
  L : ℕ
  P : ℕ
  Q : ℕ
  m : ℕ
  width_large : 1 ≤ w
  grid : 0 < N
  phases : 0 < P
  harmonic : 0 < m
  fine :
    (Fintype.card
        (ExactGlobalHistoryLocalIndex G n S D) : ℝ) /
        (N : ℝ) < 1 / (w + 1)
  scalar :
    1 / w +
      (Fintype.card
        (ExactGlobalHistoryLocalIndex G n S D) : ℝ) *
        w / (N : ℝ) ≤ 3 * alpha ^ (1 / 3 : ℝ) / 2
  UA : Fin P → Option ℕ → Matrix.unitaryGroup (Fin (N * m)) ℂ
  UB : Fin P → Option ℕ → Matrix.unitaryGroup (Fin (N * m)) ℂ
  asynchronous :
    (∑ h : ExactLocallySampleableTuple X Y A B D,
      exactLocallySampleableLaw G n S D h *
        dSVDensityRationalHeterogeneousPhysicalStoppedAsynchronousMass
          N (fun _ : Fin 1 => w) (fun _ : Fin L => 0)
          (exactGlobalHistoryFinGamma
            G n S D h.2.2.2 h.2.1)
          (exactGlobalHistoryFinPhi
            G n S D h.2.2.2 h.2.2.1)) ≤
      64 * Real.sqrt (martingaleRate G n S D) +
        alpha ^ (1 / 3 : ℝ)
  terminal :
    (∑ h : ExactLocallySampleableTuple X Y A B D,
      exactLocallySampleableLaw G n S D h *
        dSVDensityRationalHeterogeneousPhysicalTerminalMass
          N (fun _ : Fin 1 => w) (fun _ : Fin L => 0)
          (exactGlobalHistoryFinGamma
            G n S D h.2.2.2 h.2.1)
          (exactGlobalHistoryFinPhi
            G n S D h.2.2.2 h.2.2.1)) ≤
      (alpha ^ (1 / 3 : ℝ)) ^ 2
  hazard :
    (∑ h : ExactLocallySampleableTuple X Y A B D,
      exactLocallySampleableLaw G n S D h *
        dSVDensityRationalHeterogeneousStoppedCommonPrefixHazard
          Q m (fun _ : Fin 1 => w) (fun _ : Fin L => 0)
          (exactGlobalHistoryFinGamma
            G n S D h.2.2.2 h.2.1)
          (exactGlobalHistoryFinPhi
            G n S D h.2.2.2 h.2.2.1)
          UA UB) ≤
      (34 / Real.sqrt
          (64 * Real.sqrt (martingaleRate G n S D) +
            alpha ^ (1 / 3 : ℝ))) *
          (64 * Real.sqrt (martingaleRate G n S D) +
            alpha ^ (1 / 3 : ℝ)) +
        4 * (alpha ^ (1 / 12 : ℝ)) ^ 2 +
          unconditionalPrefactorBucketCoefficient *
            Real.sqrt
              (64 * Real.sqrt (martingaleRate G n S D) +
                alpha ^ (1 / 3 : ℝ))

end

noncomputable section

open WithLp
open scoped BigOperators Kronecker ComplexOrder MatrixOrder
  Matrix.Norms.L2Operator InnerProductSpace

open QuantumParallelRepetition.ClassicalSampling

attribute [local instance] Classical.propDecidable

structure UnconditionalActualFairCachedStoppedAnalyticLedger
    {I K : Type} [Fintype I] [Fintype K]
    {H : I × K → Type}
    [∀ p, NormedAddCommGroup (H p)]
    [∀ p, InnerProductSpace ℂ (H p)]
    (law : I → ℝ)
    (actual canonical source : (p : I × K) → H p)
    (deviation clipping bad : ℝ) : Prop where
  actual_mass :
    (∑ h : I, law h * ∑ j : K, ‖actual (h, j)‖ ^ 2) ≤ 1
  canonical_mass :
    (∑ h : I, law h * ∑ j : K, ‖canonical (h, j)‖ ^ 2) ≤ 1
  canonical_row_mass : ∀ h : I,
    (∑ j : K, ‖canonical (h, j)‖ ^ 2) ≤ 1
  same_work_mass : ∀ (h : I) (j : K),
    ‖source (h, j)‖ = ‖canonical (h, j)‖
  clean_deviation :
    (∑ h : I, law h *
      ∑ j : K, ‖actual (h, j) - canonical (h, j)‖ ^ 2) ≤ deviation
  clip_deviation :
    (∑ h : I, law h *
      ∑ j : K, ‖canonical (h, j) - source (h, j)‖ ^ 2) ≤ clipping
  actual_success :
    1 - bad ≤ ∑ h : I, law h * ∑ j : K, ‖actual (h, j)‖ ^ 2

structure UnconditionalActualFairCachedSourceVerifierLedger
    {X Y A B : Type}
    [Fintype X] [Fintype Y] [Fintype A] [Fintype B]
    (G : Game X Y A B) (n : ℕ) (S : Strategy (G.repeat n))
    (D : Finset (Fin n))
    {K : Type} [Fintype K]
    {H : ExactLocallySampleableTuple X Y A B D × K → Type}
    [∀ p, NormedAddCommGroup (H p)]
    [∀ p, InnerProductSpace ℂ (H p)]
    (operator : (p : ExactLocallySampleableTuple X Y A B D × K) →
      (H p →L[ℂ] H p))
    (actual source :
      (p : ExactLocallySampleableTuple X Y A B D × K) → H p) :
    Prop where
  contraction : ∀ p, ‖operator p‖ ≤ 1
  supported_born :
    ∀ h : ExactLocallySampleableTuple X Y A B D,
      exactLocallySampleableLaw G n S D h ≠ 0 →
        ∀ j : K,
          quadraticExpectation (operator (h, j)) (source (h, j)) =
            ‖source (h, j)‖ ^ 2 *
              exactSourceConditionalWinningProbability G n S D h
  history_born_nonnegative :
    ∀ h : ExactLocallySampleableTuple X Y A B D,
      0 ≤ ∑ j : K,
        quadraticExpectation (operator (h, j)) (actual (h, j))
  history_born_bounded :
    ∀ h : ExactLocallySampleableTuple X Y A B D,
      (∑ j : K,
        quadraticExpectation (operator (h, j)) (actual (h, j))) ≤ 1

end

noncomputable section

open WithLp
open scoped BigOperators Kronecker ComplexOrder MatrixOrder
  Matrix.Norms.L2Operator InnerProductSpace

open QuantumParallelRepetition.ClassicalSampling

attribute [local instance] Classical.propDecidable

structure UnconditionalActualFairSourceRoundingContext
    {X Y A B : Type}
    [Fintype X] [Fintype Y] [Fintype A] [Fintype B]
    (G : Game X Y A B) (n : ℕ) (S : Strategy (G.repeat n))
    (D : Finset (Fin n)) (alpha gamma : ℝ) where
  remaining : 0 < (Finset.univ \ D).card
  positive : 0 < repeatedPostselectionMass G n S D
  failure :
    uniformRemainingFailure
      (strategyEventLaw (G.repeat n) S)
      (repeatedCoordinateWin G n) D <
        (1 - entangledValue G) / 2
  sampler :
    UnconditionalActualFairSourceSamplerData G n S D gamma
  stopping :
    UnconditionalActualFairSourceStoppingHazardData G n S D alpha

end

end QuantumParallelRepetition
