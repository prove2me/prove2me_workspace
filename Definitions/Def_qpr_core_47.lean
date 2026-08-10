import Definitions.Def_quantum_parallel_repetition_game
import Definitions.Def_qpr_core_46
import Theorems.Thm_QuantumParallelRepetition_exactAlicePurificationFamily_posSemidef
import Theorems.Thm_QuantumParallelRepetition_exactBobPurificationFamily_posSemidef
import Mathlib.Algebra.Algebra.Basic
import Mathlib.Algebra.Algebra.Defs
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
import Mathlib.Algebra.Module.Pi
import Mathlib.Algebra.Module.Submodule.Defs
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
import Mathlib.Analysis.Normed.Ring.Basic
import Mathlib.Analysis.RCLike.Basic
import Mathlib.Data.Complex.Basic
import Mathlib.Data.ENNReal.Basic
import Mathlib.Data.Finset.Defs
import Mathlib.Data.Finset.Empty
import Mathlib.Data.Fintype.Basic
import Mathlib.Data.Fintype.Card
import Mathlib.Data.Fintype.Defs
import Mathlib.Data.Fintype.Pi
import Mathlib.Data.Fintype.Prod
import Mathlib.Data.Fintype.Sigma
import Mathlib.Data.Fintype.Sum
import Mathlib.Data.FunLike.Basic
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
import Mathlib.LinearAlgebra.UnitaryGroup
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

open scoped BigOperators ComplexOrder Kronecker MatrixOrder

attribute [local instance] Classical.propDecidable

variable {X Y A B : Type*}
variable [Fintype X] [Fintype Y] [Fintype A] [Fintype B]

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

end

end QuantumParallelRepetition
