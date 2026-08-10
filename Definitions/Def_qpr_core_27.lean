import Definitions.Def_quantum_parallel_repetition_game
import Definitions.Def_qpr_core_26
import Theorems.Thm_QuantumParallelRepetition_exactAlicePurificationFamily_posSemidef
import Theorems.Thm_QuantumParallelRepetition_exactBobPurificationFamily_posSemidef
import Theorems.Thm_QuantumParallelRepetition_unconditionalActualFairSourceSamplerData_of_positive
import Theorems.Thm_QuantumParallelRepetition_unconditionalActualFairSourceStoppingHazardData_of_positive
import Mathlib.Algebra.BigOperators.Group.Finset.Defs
import Mathlib.Algebra.Field.Defs
import Mathlib.Algebra.Group.Basic
import Mathlib.Algebra.Group.Defs
import Mathlib.Algebra.Group.Subgroup.Defs
import Mathlib.Algebra.GroupWithZero.Action.Defs
import Mathlib.Algebra.GroupWithZero.Defs
import Mathlib.Algebra.Module.Defs
import Mathlib.Algebra.Module.Submodule.Defs
import Mathlib.Algebra.Ring.Defs
import Mathlib.Algebra.Star.Basic
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
import Mathlib.Analysis.Normed.Lp.WithLp
import Mathlib.Analysis.Normed.Module.Basic
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
import Mathlib.Data.Fintype.Sigma
import Mathlib.Data.Fintype.Sum
import Mathlib.Data.Matrix.Basic
import Mathlib.Data.Nat.Cast.Defs
import Mathlib.Data.Nat.Init
import Mathlib.Data.Real.Basic
import Mathlib.Data.Real.Sqrt
import Mathlib.Data.SetLike.Basic
import Mathlib.LinearAlgebra.Dimension.Finrank
import Mathlib.LinearAlgebra.Matrix.Defs
import Mathlib.LinearAlgebra.Matrix.Kronecker
import Mathlib.LinearAlgebra.Matrix.PosDef
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
  Matrix.Norms.L2Operator InnerProductSpace

open QuantumParallelRepetition.ClassicalSampling

attribute [local instance] Classical.propDecidable

def unconditionalActualFairSourceRoundingContext_of_positive
    {X Y A B : Type}
    [Fintype X] [Fintype Y] [Fintype A] [Fintype B]
    (G : Game X Y A B) (n : ℕ) (S : Strategy (G.repeat n))
    (D : Finset (Fin n))
    (remaining : 0 < (Finset.univ \ D).card)
    (positive : 0 < repeatedPostselectionMass G n S D)
    (alpha gamma : ℝ)
    (alpha_positive : 0 < alpha)
    (alpha_bounded : alpha ≤ 1)
    (gamma_positive : 0 < gamma)
    (small :
      64 * Real.sqrt (martingaleRate G n S D) +
        alpha ^ (1 / 3 : ℝ) ≤ 1)
    (failure :
      uniformRemainingFailure
        (strategyEventLaw (G.repeat n) S)
        (repeatedCoordinateWin G n) D <
          (1 - entangledValue G) / 2) :
    UnconditionalActualFairSourceRoundingContext
      G n S D alpha gamma := by
  classical
  exact {
    remaining := remaining
    positive := positive
    failure := failure
    sampler := Classical.choice
      (unconditionalActualFairSourceSamplerData_of_positive
        G n S D remaining positive gamma gamma_positive)
    stopping := Classical.choice
      (unconditionalActualFairSourceStoppingHazardData_of_positive
        G n S D remaining positive alpha alpha_positive alpha_bounded small)
  }

namespace UnconditionalActualFairSourceRoundingContext

variable {X Y A B : Type}
variable [Fintype X] [Fintype Y] [Fintype A] [Fintype B]
variable {G : Game X Y A B} {n : ℕ} {S : Strategy (G.repeat n)}
variable {D : Finset (Fin n)} {alpha gamma : ℝ}

def d (_c : UnconditionalActualFairSourceRoundingContext
    G n S D alpha gamma) : ℕ :=
  Fintype.card (ExactGlobalHistoryLocalIndex G n S D)

def width
    (c : UnconditionalActualFairSourceRoundingContext
      G n S D alpha gamma) : Fin 1 → ℝ :=
  fun _ => c.stopping.w

def schedule
    (c : UnconditionalActualFairSourceRoundingContext
      G n S D alpha gamma) : Fin c.stopping.L → Fin 1 :=
  fun _ => 0

abbrev sourceIndex
    (_c : UnconditionalActualFairSourceRoundingContext
      G n S D alpha gamma) : Type :=
  ExactLocallySampleableTuple X Y A B D

def law
    (c : UnconditionalActualFairSourceRoundingContext
      G n S D alpha gamma) : sourceIndex c → ℝ :=
  exactLocallySampleableLaw G n S D

def gammaVector
    (c : UnconditionalActualFairSourceRoundingContext
      G n S D alpha gamma) :
    sourceIndex c → BipartiteUnitVector (d c) :=
  fun h => unconditionalExactFairGammaUnit G n S D h

def phiVector
    (c : UnconditionalActualFairSourceRoundingContext
      G n S D alpha gamma) :
    sourceIndex c → BipartiteUnitVector (d c) :=
  fun h => exactGlobalHistoryFinPhi G n S D h.2.2.2 h.2.2.1

def psiVector
    (c : UnconditionalActualFairSourceRoundingContext
      G n S D alpha gamma) :
    sourceIndex c → EuclideanSpace ℂ (Fin (d c) × Fin (d c)) :=
  fun h => exactSourceTuplePsi G n S D h

abbrev branchSpace
    (c : UnconditionalActualFairSourceRoundingContext
      G n S D alpha gamma)
    (p : sourceIndex c × Fin c.stopping.L) : Type :=
  IntegratorActualC485BranchSpace
    1 c.stopping.P c.stopping.N (d c)
    c.stopping.L c.stopping.m p.2

def actual
    (c : UnconditionalActualFairSourceRoundingContext
      G n S D alpha gamma)
    (p : sourceIndex c × Fin c.stopping.L) : branchSpace c p :=
  integratorActualC485CleanedVector
    (S := 1) (B := c.stopping.P) (N := c.stopping.N)
    (d := d c) (L := c.stopping.L) (m := c.stopping.m)
    c.stopping.Q (width c) (schedule c)
    (gammaVector c p.1) (phiVector c p.1)
    c.stopping.UA c.stopping.UB p.2

end UnconditionalActualFairSourceRoundingContext

end

end QuantumParallelRepetition
