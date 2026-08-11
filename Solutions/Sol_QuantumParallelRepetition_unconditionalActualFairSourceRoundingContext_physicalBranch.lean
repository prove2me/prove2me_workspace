import Definitions.Def_quantum_parallel_repetition_game
import Definitions.Def_qpr_core_28
import Theorems.Thm_QuantumParallelRepetition_unconditionalActualFairSourcePhysicalStopBornWitness
import Theorems.Thm_QuantumParallelRepetition_UnconditionalActualFairSourceRoundingContext_width_all
import Mathlib.Algebra.Algebra.Basic
import Mathlib.Algebra.Algebra.Defs
import Mathlib.Algebra.BigOperators.Group.Finset.Basic
import Mathlib.Algebra.BigOperators.Group.Finset.Defs
import Mathlib.Algebra.Field.Defs
import Mathlib.Algebra.Group.Action.Defs
import Mathlib.Algebra.Group.Action.Pi
import Mathlib.Algebra.Group.Basic
import Mathlib.Algebra.Group.Defs
import Mathlib.Algebra.Group.Pi.Basic
import Mathlib.Algebra.Group.Submonoid.Defs
import Mathlib.Algebra.GroupWithZero.Action.Defs
import Mathlib.Algebra.GroupWithZero.Action.Pi
import Mathlib.Algebra.GroupWithZero.Defs
import Mathlib.Algebra.Module.Defs
import Mathlib.Algebra.Module.Pi
import Mathlib.Algebra.Ring.Defs
import Mathlib.Algebra.Ring.Hom.Defs
import Mathlib.Algebra.Star.Basic
import Mathlib.Algebra.Star.StarAlgHom
import Mathlib.Analysis.CStarAlgebra.Matrix
import Mathlib.Analysis.Complex.Basic
import Mathlib.Analysis.Complex.Norm
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
import Mathlib.Data.FunLike.Basic
import Mathlib.Data.Matrix.Basic
import Mathlib.Data.Matrix.Mul
import Mathlib.Data.Nat.Cast.Defs
import Mathlib.Data.Real.Basic
import Mathlib.Data.SetLike.Basic
import Mathlib.Data.Sigma.Basic
import Mathlib.LinearAlgebra.Matrix.ConjTranspose
import Mathlib.LinearAlgebra.Matrix.Defs
import Mathlib.LinearAlgebra.Matrix.Kronecker
import Mathlib.LinearAlgebra.UnitaryGroup
import Mathlib.MeasureTheory.Measure.MeasureSpace
import Mathlib.Order.Defs.PartialOrder
import Mathlib.Topology.Algebra.Group.Defs
import Mathlib.Topology.Algebra.Module.ContinuousLinearMap.Basic
import Mathlib.Topology.Algebra.UniformMulAction
import Mathlib.Topology.Defs.Filter
import Mathlib.Topology.EMetricSpace.Defs
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

theorem unconditionalActualFairSourcePhysicalBranchWitness
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
    (grid : 0 < N)
    (width_positive : ∀ s : Fin 1, 0 < width s)
    (flag : ExactSourceSharedFlag X Y A B D denominator)
    (x : X) (y : Y)
    (matching :
      exactSourcePermutationMatched
        D denominator numerator nonempty (flag, (x, y)) = true) :
    (∑ j : Fin L,
      unconditionalActualFairSourceHistoryStopBorn
        G n S D a₀ b₀ Q width schedule UA UB
        (exactSourceAliceSampleTuple
          D denominator numerator nonempty (flag, (x, y))) j) =
      ∑ j : Fin L,
        unconditionalActualFairSourcePhysicalStopBorn
          G n S D denominator numerator nonempty a₀ b₀
          Q width schedule UA UB flag x y j := by
  apply Finset.sum_congr rfl
  intro j _
  exact unconditionalActualFairSourcePhysicalStopBornWitness
    G n S D denominator numerator nonempty a₀ b₀
    Q width schedule UA UB grid width_positive flag x y matching j

end

end QuantumParallelRepetition


open QuantumParallelRepetition
open scoped ComplexOrder Matrix BigOperators InnerProductSpace
open Complex Matrix Finset
open WithLp
open scoped BigOperators Kronecker ComplexOrder MatrixOrder
  Matrix.Norms.L2Operator InnerProductSpace
open QuantumParallelRepetition.ClassicalSampling
attribute [local instance] Classical.propDecidable

theorem solution
    {X Y A B : Type}
    [Fintype X] [Fintype Y] [Fintype A] [Fintype B]
    {G : Game X Y A B} {n : ℕ} {S : Strategy (G.repeat n)}
    {D : Finset (Fin n)} {alpha gamma : ℝ}
    (c : UnconditionalActualFairSourceRoundingContext
      G n S D alpha gamma)
    (flag : ExactSourceSharedFlag
      X Y A B D c.sampler.denominator)
    (x : X) (y : Y)
    (matching :
      exactSourcePermutationMatched
        D c.sampler.denominator c.sampler.numerator
        c.sampler.nonempty (flag, (x, y)) = true) :
    (∑ j : Fin c.stopping.L,
      quadraticExpectation
        (c.operator
          (exactSourceAliceSampleTuple
            D c.sampler.denominator c.sampler.numerator
            c.sampler.nonempty (flag, (x, y)), j))
        (c.actual
          (exactSourceAliceSampleTuple
            D c.sampler.denominator c.sampler.numerator
            c.sampler.nonempty (flag, (x, y)), j))) ≤
      ∑ j : Fin c.stopping.L,
        quadraticExpectation
          (Matrix.toEuclideanCLM
            (n := c.fiber × c.fiber) (𝕜 := ℂ)
            (actualStoppingBranchWinningEffect
              G (c.PA flag) (c.PB flag) j.succ j.succ x y))
          (actualStoppingBranchVector
            (actualStoppingQuestionLocalAction
              (c.U flag x) (c.V flag y) (c.prepared flag))
            j.succ j.succ) := by
  classical
  apply le_of_eq
  change
    (∑ j : Fin c.stopping.L,
      unconditionalActualFairSourceHistoryStopBorn
        G n S D c.aliceDefault c.bobDefault
        c.stopping.Q c.width c.schedule c.stopping.UA c.stopping.UB
        (exactSourceAliceSampleTuple
          D c.sampler.denominator c.sampler.numerator
          c.sampler.nonempty (flag, (x, y))) j) =
      ∑ j : Fin c.stopping.L,
        unconditionalActualFairSourcePhysicalStopBorn
          G n S D c.sampler.denominator c.sampler.numerator
          c.sampler.nonempty c.aliceDefault c.bobDefault
          c.stopping.Q c.width c.schedule
          c.stopping.UA c.stopping.UB flag x y j
  exact unconditionalActualFairSourcePhysicalBranchWitness
    G n S D c.sampler.denominator c.sampler.numerator
    c.sampler.nonempty c.aliceDefault c.bobDefault
    c.stopping.Q c.width c.schedule c.stopping.UA c.stopping.UB
    c.stopping.grid c.width_all flag x y matching
