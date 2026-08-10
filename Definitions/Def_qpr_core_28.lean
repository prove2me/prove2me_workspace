import Definitions.Def_quantum_parallel_repetition_game
import Definitions.Def_qpr_core_27
import Theorems.Thm_QuantumParallelRepetition_exactAlicePurificationFamily_posSemidef
import Theorems.Thm_QuantumParallelRepetition_exactBobPurificationFamily_posSemidef
import Theorems.Thm_QuantumParallelRepetition_UnconditionalActualFairSourceRoundingContext_width_positive
import Theorems.Thm_QuantumParallelRepetition_UnconditionalActualFairSourceRoundingContext_width_all
import Theorems.Thm_QuantumParallelRepetition_UnconditionalActualFairSourceRoundingContext_fine_all
import Theorems.Thm_QuantumParallelRepetition_UnconditionalActualFairSourceRoundingContext_answerNonempty
import Mathlib.Algebra.BigOperators.Group.Finset.Defs
import Mathlib.Algebra.Field.Defs
import Mathlib.Algebra.Group.Basic
import Mathlib.Algebra.Group.Defs
import Mathlib.Algebra.Group.Pi.Basic
import Mathlib.Algebra.Group.Subgroup.Defs
import Mathlib.Algebra.Group.Submonoid.Defs
import Mathlib.Algebra.GroupWithZero.Action.Defs
import Mathlib.Algebra.GroupWithZero.Defs
import Mathlib.Algebra.Module.Defs
import Mathlib.Algebra.Module.Pi
import Mathlib.Algebra.Module.Submodule.Defs
import Mathlib.Algebra.Ring.Defs
import Mathlib.Algebra.Ring.Hom.Defs
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
import Mathlib.Analysis.Normed.Lp.PiLp
import Mathlib.Analysis.Normed.Lp.WithLp
import Mathlib.Analysis.Normed.Module.Basic
import Mathlib.Analysis.Normed.Ring.Basic
import Mathlib.Analysis.RCLike.Basic
import Mathlib.Analysis.SpecialFunctions.Pow.Real
import Mathlib.Data.Complex.Basic
import Mathlib.Data.ENNReal.Basic
import Mathlib.Data.Finset.Defs
import Mathlib.Data.Finset.Empty
import Mathlib.Data.Finset.SDiff
import Mathlib.Data.Fintype.Basic
import Mathlib.Data.Fintype.Card
import Mathlib.Data.Fintype.Defs
import Mathlib.Data.Fintype.Pi
import Mathlib.Data.Fintype.Prod
import Mathlib.Data.Fintype.Sets
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
import Mathlib.Topology.Algebra.Module.ContinuousLinearMap.Basic
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
  Matrix.Norms.L2Operator InnerProductSpace

open QuantumParallelRepetition.ClassicalSampling

attribute [local instance] Classical.propDecidable

namespace UnconditionalActualFairSourceRoundingContext

variable {X Y A B : Type}
variable [Fintype X] [Fintype Y] [Fintype A] [Fintype B]
variable {G : Game X Y A B} {n : ℕ} {S : Strategy (G.repeat n)}
variable {D : Finset (Fin n)} {alpha gamma : ℝ}

def canonical
    (c : UnconditionalActualFairSourceRoundingContext
      G n S D alpha gamma)
    (p : sourceIndex c × Fin c.stopping.L) : branchSpace c p :=
  integratorActualC485CanonicalVector
    (S := 1) (B := c.stopping.P) (N := c.stopping.N)
    (d := d c) (L := c.stopping.L) (m := c.stopping.m)
    (width := width c) (schedule c)
    (gammaVector c p.1) (phiVector c p.1) p.2
    (width_all c (schedule c p.2)) c.stopping.grid
    (fine_all c (schedule c p.2))

def source
    (c : UnconditionalActualFairSourceRoundingContext
      G n S D alpha gamma)
    (p : sourceIndex c × Fin c.stopping.L) : branchSpace c p :=
  integratorActualC485SourceVector
    (S := 1) (B := c.stopping.P) (N := c.stopping.N)
    (d := d c) (L := c.stopping.L) (m := c.stopping.m)
    (width c) (schedule c)
    (gammaVector c p.1) (phiVector c p.1) (psiVector c p.1) p.2

def aliceDefault
    (c : UnconditionalActualFairSourceRoundingContext
      G n S D alpha gamma) : A :=
  Classical.choice (answerNonempty c).1

def bobDefault
    (c : UnconditionalActualFairSourceRoundingContext
      G n S D alpha gamma) : B :=
  Classical.choice (answerNonempty c).2

def operator
    (c : UnconditionalActualFairSourceRoundingContext
      G n S D alpha gamma)
    (p : sourceIndex c × Fin c.stopping.L) :
    branchSpace c p →L[ℂ] branchSpace c p :=
  integratorActualC485WinningEffect
    (P := c.stopping.P) (N := c.stopping.N) (m := c.stopping.m)
    G n S D (aliceDefault c) (bobDefault c)
    p.2 p.1.2.1 p.1.2.2.1

def deviation
    (c : UnconditionalActualFairSourceRoundingContext
      G n S D alpha gamma) : ℝ :=
  ∑ h : sourceIndex c, law c h *
    ∑ j : Fin c.stopping.L,
      ‖actual c (h, j) - canonical c (h, j)‖ ^ 2

def clipping
    (c : UnconditionalActualFairSourceRoundingContext
      G n S D alpha gamma) : ℝ :=
  unconditionalActualC485FairSourceClipEnergy
    (P := c.stopping.P) (m := c.stopping.m)
    G n S D (width_positive c) c.stopping.grid c.stopping.fine
    (schedule c)

def bad
    (_c : UnconditionalActualFairSourceRoundingContext
      G n S D alpha gamma) : ℝ :=
  64 * Real.sqrt (martingaleRate G n S D) +
    alpha ^ (1 / 3 : ℝ) + (alpha ^ (1 / 3 : ℝ)) ^ 2

abbrev flag
    (c : UnconditionalActualFairSourceRoundingContext
      G n S D alpha gamma) : Type :=
  ExactSourceSharedFlag X Y A B D c.sampler.denominator

abbrev fiber
    (c : UnconditionalActualFairSourceRoundingContext
      G n S D alpha gamma) : Type :=
  UnconditionalSourcePhysicalStoppingPhaseFiber
    1 c.stopping.P c.stopping.N (d c)
    c.stopping.L c.stopping.m

def PA
    (c : UnconditionalActualFairSourceRoundingContext
      G n S D alpha gamma) :
    flag c → Fin (c.stopping.L + 1) → X → POVM A (fiber c) := by
  classical
  exact unconditionalActualFairSourceAliceFlagPOVM
    G n S D c.sampler.denominator c.sampler.numerator
    c.sampler.nonempty (aliceDefault c)
    c.stopping.P c.stopping.N c.stopping.L c.stopping.m

def PB
    (c : UnconditionalActualFairSourceRoundingContext
      G n S D alpha gamma) :
    flag c → Fin (c.stopping.L + 1) → Y → POVM B (fiber c) := by
  classical
  exact unconditionalActualFairSourceBobFlagPOVM
    G n S D c.sampler.denominator c.sampler.numerator
    c.sampler.nonempty (bobDefault c)
    c.stopping.P c.stopping.N c.stopping.L c.stopping.m

def U
    (c : UnconditionalActualFairSourceRoundingContext
      G n S D alpha gamma) :
    flag c → X →
      Matrix.unitaryGroup
        (Σ _ : Fin (c.stopping.L + 1), fiber c) ℂ :=
  unconditionalActualFairSourceAliceStoppingUnitary
    G n S D c.sampler.denominator c.sampler.numerator
    c.sampler.nonempty c.stopping.Q
    (width c) (schedule c) c.stopping.UA

def V
    (c : UnconditionalActualFairSourceRoundingContext
      G n S D alpha gamma) :
    flag c → Y →
      Matrix.unitaryGroup
        (Σ _ : Fin (c.stopping.L + 1), fiber c) ℂ :=
  unconditionalActualFairSourceBobStoppingUnitary
    G n S D c.sampler.denominator c.sampler.numerator
    c.sampler.nonempty c.stopping.Q
    (width c) (schedule c) c.stopping.UB

def prepared
    (c : UnconditionalActualFairSourceRoundingContext
      G n S D alpha gamma) :
    flag c → EuclideanSpace ℂ
      ((Σ _ : Fin (c.stopping.L + 1), fiber c) ×
       (Σ _ : Fin (c.stopping.L + 1), fiber c)) :=
  fun _ => unconditionalSourcePhysicalCleanedStoppingFixedSource
    1 c.stopping.P c.stopping.N (d c)
    c.stopping.L c.stopping.m

def rounded
    (c : UnconditionalActualFairSourceRoundingContext
      G n S D alpha gamma) : Strategy G :=
  unconditionalOneScaleActualSourceFlaggedStrategy
    G n S D c.remaining
    c.sampler.denominator c.sampler.numerator c.sampler.nonempty
    c.stopping.w c.stopping.N c.stopping.L c.stopping.P
    c.stopping.Q c.stopping.m c.stopping.phases c.stopping.grid
    c.stopping.harmonic c.stopping.UA c.stopping.UB

end UnconditionalActualFairSourceRoundingContext

end

end QuantumParallelRepetition
