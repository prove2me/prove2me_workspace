import Definitions.Def_quantum_parallel_repetition_game
import Definitions.Def_qpr_core_02
import Mathlib.Algebra.Algebra.Basic
import Mathlib.Algebra.Algebra.Defs
import Mathlib.Algebra.Algebra.Equiv
import Mathlib.Algebra.Algebra.Hom
import Mathlib.Algebra.Algebra.NonUnitalHom
import Mathlib.Algebra.Algebra.Rat
import Mathlib.Algebra.Algebra.Spectrum.Basic
import Mathlib.Algebra.BigOperators.Field
import Mathlib.Algebra.BigOperators.Fin
import Mathlib.Algebra.BigOperators.Finsupp.Basic
import Mathlib.Algebra.BigOperators.Group.Finset.Basic
import Mathlib.Algebra.BigOperators.Group.Finset.Defs
import Mathlib.Algebra.BigOperators.Group.Finset.Piecewise
import Mathlib.Algebra.BigOperators.Group.Finset.Sigma
import Mathlib.Algebra.BigOperators.GroupWithZero.Action
import Mathlib.Algebra.BigOperators.GroupWithZero.Finset
import Mathlib.Algebra.BigOperators.Pi
import Mathlib.Algebra.BigOperators.Ring.Finset
import Mathlib.Algebra.CharP.Defs
import Mathlib.Algebra.CharZero.Defs
import Mathlib.Algebra.Divisibility.Basic
import Mathlib.Algebra.EuclideanDomain.Basic
import Mathlib.Algebra.EuclideanDomain.Field
import Mathlib.Algebra.Field.Basic
import Mathlib.Algebra.Field.Defs
import Mathlib.Algebra.Field.Rat
import Mathlib.Algebra.Group.Action.Defs
import Mathlib.Algebra.Group.Action.Opposite
import Mathlib.Algebra.Group.Action.Pi
import Mathlib.Algebra.Group.Basic
import Mathlib.Algebra.Group.Defs
import Mathlib.Algebra.Group.End
import Mathlib.Algebra.Group.Fin.Basic
import Mathlib.Algebra.Group.Hom.Defs
import Mathlib.Algebra.Group.Nat.Defs
import Mathlib.Algebra.Group.Opposite
import Mathlib.Algebra.Group.Pi.Basic
import Mathlib.Algebra.Group.Subgroup.Defs
import Mathlib.Algebra.Group.Submonoid.Defs
import Mathlib.Algebra.Group.Subsemigroup.Defs
import Mathlib.Algebra.Group.Units.Defs
import Mathlib.Algebra.Group.Units.Equiv
import Mathlib.Algebra.GroupWithZero.Action.Defs
import Mathlib.Algebra.GroupWithZero.Action.Pi
import Mathlib.Algebra.GroupWithZero.Basic
import Mathlib.Algebra.GroupWithZero.Defs
import Mathlib.Algebra.GroupWithZero.Hom
import Mathlib.Algebra.GroupWithZero.Nat
import Mathlib.Algebra.GroupWithZero.NeZero
import Mathlib.Algebra.GroupWithZero.Units.Basic
import Mathlib.Algebra.GroupWithZero.Units.Lemmas
import Mathlib.Algebra.Lie.Basic
import Mathlib.Algebra.Lie.OfAssociative
import Mathlib.Algebra.Module.BigOperators
import Mathlib.Algebra.Module.Defs
import Mathlib.Algebra.Module.Equiv.Basic
import Mathlib.Algebra.Module.Equiv.Defs
import Mathlib.Algebra.Module.LinearMap.Defs
import Mathlib.Algebra.Module.NatInt
import Mathlib.Algebra.Module.Pi
import Mathlib.Algebra.Module.Projective
import Mathlib.Algebra.Module.Rat
import Mathlib.Algebra.Module.Submodule.Basic
import Mathlib.Algebra.Module.Submodule.Defs
import Mathlib.Algebra.Module.Submodule.Ker
import Mathlib.Algebra.Module.Submodule.LinearMap
import Mathlib.Algebra.Module.Torsion.Free
import Mathlib.Algebra.NeZero
import Mathlib.Algebra.NoZeroSMulDivisors.Basic
import Mathlib.Algebra.NoZeroSMulDivisors.Defs
import Mathlib.Algebra.Notation.Defs
import Mathlib.Algebra.Notation.Pi.Basic
import Mathlib.Algebra.Notation.Pi.Defs
import Mathlib.Algebra.Opposites
import Mathlib.Algebra.Order.Archimedean.Basic
import Mathlib.Algebra.Order.Archimedean.Defs
import Mathlib.Algebra.Order.BigOperators.Group.Finset
import Mathlib.Algebra.Order.BigOperators.GroupWithZero.Finset
import Mathlib.Algebra.Order.BigOperators.Ring.Finset
import Mathlib.Algebra.Order.Field.Basic
import Mathlib.Algebra.Order.Floor.Defs
import Mathlib.Algebra.Order.Floor.Ring
import Mathlib.Algebra.Order.Floor.Semiring
import Mathlib.Algebra.Order.Group.Abs
import Mathlib.Algebra.Order.Group.Defs
import Mathlib.Algebra.Order.Group.Nat
import Mathlib.Algebra.Order.Group.Unbundled.Abs
import Mathlib.Algebra.Order.Group.Unbundled.Basic
import Mathlib.Algebra.Order.GroupWithZero.Canonical
import Mathlib.Algebra.Order.GroupWithZero.Unbundled.Basic
import Mathlib.Algebra.Order.GroupWithZero.Unbundled.Defs
import Mathlib.Algebra.Order.IsBotOne
import Mathlib.Algebra.Order.Module.Defs
import Mathlib.Algebra.Order.Monoid.Canonical.Defs
import Mathlib.Algebra.Order.Monoid.Defs
import Mathlib.Algebra.Order.Monoid.Unbundled.Basic
import Mathlib.Algebra.Order.Monoid.Unbundled.Defs
import Mathlib.Algebra.Order.Monoid.Unbundled.ExistsOfLE
import Mathlib.Algebra.Order.Ring.Abs
import Mathlib.Algebra.Order.Ring.Basic
import Mathlib.Algebra.Order.Ring.Defs
import Mathlib.Algebra.Order.Ring.Nat
import Mathlib.Algebra.Order.Ring.Star
import Mathlib.Algebra.Order.Ring.Unbundled.Basic
import Mathlib.Algebra.Order.Star.Basic
import Mathlib.Algebra.Order.Sub.Defs
import Mathlib.Algebra.Order.SuccPred
import Mathlib.Algebra.Order.ZeroLEOne
import Mathlib.Algebra.Ring.Basic
import Mathlib.Algebra.Ring.CharZero
import Mathlib.Algebra.Ring.Commute
import Mathlib.Algebra.Ring.CompTypeclasses
import Mathlib.Algebra.Ring.Defs
import Mathlib.Algebra.Ring.Equiv
import Mathlib.Algebra.Ring.Hom.Defs
import Mathlib.Algebra.Ring.Int.Defs
import Mathlib.Algebra.Ring.IsFormallyReal
import Mathlib.Algebra.Ring.Nat
import Mathlib.Algebra.Ring.Parity
import Mathlib.Algebra.Ring.Rat
import Mathlib.Algebra.Star.Basic
import Mathlib.Algebra.Star.BigOperators
import Mathlib.Algebra.Star.SelfAdjoint
import Mathlib.Algebra.Star.StarAlgHom
import Mathlib.Algebra.Star.StarRingHom
import Mathlib.Algebra.Star.Unitary
import Mathlib.Algebra.Star.UnitaryStarAlgAut
import Mathlib.AlgebraicTopology.SimplexCategory.Basic
import Mathlib.AlgebraicTopology.SimplexCategory.Defs
import Mathlib.Analysis.CStarAlgebra.Basic
import Mathlib.Analysis.CStarAlgebra.Classes
import Mathlib.Analysis.CStarAlgebra.ContinuousFunctionalCalculus.NonUnital
import Mathlib.Analysis.CStarAlgebra.ContinuousFunctionalCalculus.Order
import Mathlib.Analysis.CStarAlgebra.ContinuousFunctionalCalculus.Unital
import Mathlib.Analysis.CStarAlgebra.ContinuousLinearMap
import Mathlib.Analysis.CStarAlgebra.Matrix
import Mathlib.Analysis.CStarAlgebra.Module.Constructions
import Mathlib.Analysis.CStarAlgebra.Module.Defs
import Mathlib.Analysis.Calculus.Deriv.Add
import Mathlib.Analysis.Calculus.Deriv.Basic
import Mathlib.Analysis.Calculus.Deriv.Inv
import Mathlib.Analysis.Calculus.Deriv.MeanValue
import Mathlib.Analysis.Calculus.Deriv.Mul
import Mathlib.Analysis.Calculus.Deriv.Pow
import Mathlib.Analysis.Complex.Basic
import Mathlib.Analysis.Complex.Exponential
import Mathlib.Analysis.Complex.Norm
import Mathlib.Analysis.Complex.Order
import Mathlib.Analysis.Convex.Basic
import Mathlib.Analysis.Convex.Jensen
import Mathlib.Analysis.Convex.SpecificFunctions.Basic
import Mathlib.Analysis.Convex.SpecificFunctions.Pow
import Mathlib.Analysis.InnerProductSpace.Adjoint
import Mathlib.Analysis.InnerProductSpace.Basic
import Mathlib.Analysis.InnerProductSpace.Defs
import Mathlib.Analysis.InnerProductSpace.LinearMap
import Mathlib.Analysis.InnerProductSpace.Orthonormal
import Mathlib.Analysis.InnerProductSpace.PiL2
import Mathlib.Analysis.InnerProductSpace.Positive
import Mathlib.Analysis.InnerProductSpace.Spectrum
import Mathlib.Analysis.InnerProductSpace.StarOrder
import Mathlib.Analysis.InnerProductSpace.Subspace
import Mathlib.Analysis.Matrix.HermitianFunctionalCalculus
import Mathlib.Analysis.Matrix.Normed
import Mathlib.Analysis.Matrix.Order
import Mathlib.Analysis.Matrix.PosDef
import Mathlib.Analysis.Matrix.Spectrum
import Mathlib.Analysis.MeanInequalitiesPow
import Mathlib.Analysis.Normed.Field.Basic
import Mathlib.Analysis.Normed.Field.Lemmas
import Mathlib.Analysis.Normed.Group.Basic
import Mathlib.Analysis.Normed.Group.Constructions
import Mathlib.Analysis.Normed.Group.Continuity
import Mathlib.Analysis.Normed.Group.Defs
import Mathlib.Analysis.Normed.Group.Real
import Mathlib.Analysis.Normed.Group.Submodule
import Mathlib.Analysis.Normed.Group.Uniform
import Mathlib.Analysis.Normed.Lp.PiLp
import Mathlib.Analysis.Normed.Lp.WithLp
import Mathlib.Analysis.Normed.Module.Basic
import Mathlib.Analysis.Normed.Module.Normalize
import Mathlib.Analysis.Normed.MulAction
import Mathlib.Analysis.Normed.Operator.Basic
import Mathlib.Analysis.Normed.Operator.LinearIsometry
import Mathlib.Analysis.Normed.Order.Lattice
import Mathlib.Analysis.Normed.Ring.Basic
import Mathlib.Analysis.RCLike.Basic
import Mathlib.Analysis.SpecialFunctions.ContinuousFunctionalCalculus.Rpow.Basic
import Mathlib.Analysis.SpecialFunctions.ImproperIntegrals
import Mathlib.Analysis.SpecialFunctions.Log.Basic
import Mathlib.Analysis.SpecialFunctions.Log.Deriv
import Mathlib.Analysis.SpecialFunctions.Log.NegMulLog
import Mathlib.Analysis.SpecialFunctions.Pow.Continuity
import Mathlib.Analysis.SpecialFunctions.Pow.Real
import Mathlib.Analysis.SpecificLimits.Basic
import Mathlib.Data.Bool.Basic
import Mathlib.Data.Complex.Basic
import Mathlib.Data.Complex.BigOperators
import Mathlib.Data.Countable.Defs
import Mathlib.Data.ENNReal.Basic
import Mathlib.Data.ENNReal.Holder
import Mathlib.Data.Fin.Basic
import Mathlib.Data.Fin.SuccPred
import Mathlib.Data.Fin.Tuple.Basic
import Mathlib.Data.Fin.Tuple.Sort
import Mathlib.Data.FinEnum
import Mathlib.Data.Finite.Prod
import Mathlib.Data.Finite.Sigma
import Mathlib.Data.Finite.Sum
import Mathlib.Data.Finset.Attach
import Mathlib.Data.Finset.BooleanAlgebra
import Mathlib.Data.Finset.Card
import Mathlib.Data.Finset.Defs
import Mathlib.Data.Finset.Disjoint
import Mathlib.Data.Finset.Empty
import Mathlib.Data.Finset.Erase
import Mathlib.Data.Finset.Filter
import Mathlib.Data.Finset.Image
import Mathlib.Data.Finset.Insert
import Mathlib.Data.Finset.Lattice.Basic
import Mathlib.Data.Finset.Max
import Mathlib.Data.Finset.Powerset
import Mathlib.Data.Finset.Range
import Mathlib.Data.Finset.SDiff
import Mathlib.Data.Finsupp.Defs
import Mathlib.Data.Fintype.Basic
import Mathlib.Data.Fintype.BigOperators
import Mathlib.Data.Fintype.Card
import Mathlib.Data.Fintype.Defs
import Mathlib.Data.Fintype.EquivFin
import Mathlib.Data.Fintype.Fin
import Mathlib.Data.Fintype.OfMap
import Mathlib.Data.Fintype.Option
import Mathlib.Data.Fintype.Perm
import Mathlib.Data.Fintype.Pi
import Mathlib.Data.Fintype.Powerset
import Mathlib.Data.Fintype.Prod
import Mathlib.Data.Fintype.Sets
import Mathlib.Data.Fintype.Sigma
import Mathlib.Data.Fintype.Sum
import Mathlib.Data.FunLike.Basic
import Mathlib.Data.FunLike.Embedding
import Mathlib.Data.FunLike.Equiv
import Mathlib.Data.Int.Cast.Basic
import Mathlib.Data.Int.Cast.Defs
import Mathlib.Data.Int.Cast.Lemmas
import Mathlib.Data.Matrix.Basic
import Mathlib.Data.Matrix.Block
import Mathlib.Data.Matrix.Diagonal
import Mathlib.Data.Matrix.Mul
import Mathlib.Data.Matrix.PEquiv
import Mathlib.Data.NNRat.Defs
import Mathlib.Data.Nat.Basic
import Mathlib.Data.Nat.Cast.Basic
import Mathlib.Data.Nat.Cast.Defs
import Mathlib.Data.Nat.Cast.Order.Basic
import Mathlib.Data.Nat.Cast.Order.Ring
import Mathlib.Data.Nat.Factorial.Basic
import Mathlib.Data.Nat.Init
import Mathlib.Data.Nat.Lattice
import Mathlib.Data.Nat.SuccPred
import Mathlib.Data.PEquiv
import Mathlib.Data.Prod.Basic
import Mathlib.Data.Rat.BigOperators
import Mathlib.Data.Rat.Cast.CharZero
import Mathlib.Data.Rat.Cast.Defs
import Mathlib.Data.Rat.Defs
import Mathlib.Data.Rat.Init
import Mathlib.Data.Real.Archimedean
import Mathlib.Data.Real.Basic
import Mathlib.Data.Real.Hom
import Mathlib.Data.Real.Sqrt
import Mathlib.Data.Real.Star
import Mathlib.Data.Real.StarOrdered
import Mathlib.Data.Set.Basic
import Mathlib.Data.Set.CoeSort
import Mathlib.Data.Set.Defs
import Mathlib.Data.Set.Finite.Range
import Mathlib.Data.Set.Operations
import Mathlib.Data.Set.Restrict
import Mathlib.Data.SetLike.Basic
import Mathlib.Data.Sigma.Basic
import Mathlib.Data.Subtype
import Mathlib.FieldTheory.Perfect
import Mathlib.FieldTheory.Separable
import Mathlib.GroupTheory.GroupAction.Hom
import Mathlib.GroupTheory.GroupAction.Ring
import Mathlib.InformationTheory.KullbackLeibler.KLFun
import Mathlib.LinearAlgebra.Basis.Defs
import Mathlib.LinearAlgebra.Basis.VectorSpace
import Mathlib.LinearAlgebra.Complex.FiniteDimensional
import Mathlib.LinearAlgebra.Complex.Module
import Mathlib.LinearAlgebra.DFinsupp
import Mathlib.LinearAlgebra.Dimension.Finrank
import Mathlib.LinearAlgebra.Dual.Lemmas
import Mathlib.LinearAlgebra.FiniteDimensional.Defs
import Mathlib.LinearAlgebra.FreeModule.Basic
import Mathlib.LinearAlgebra.FreeModule.Finite.Basic
import Mathlib.LinearAlgebra.FreeModule.PID
import Mathlib.LinearAlgebra.Matrix.Basis
import Mathlib.LinearAlgebra.Matrix.ConjTranspose
import Mathlib.LinearAlgebra.Matrix.Defs
import Mathlib.LinearAlgebra.Matrix.Determinant.Basic
import Mathlib.LinearAlgebra.Matrix.Hermitian
import Mathlib.LinearAlgebra.Matrix.Kronecker
import Mathlib.LinearAlgebra.Matrix.NonsingularInverse
import Mathlib.LinearAlgebra.Matrix.Permutation
import Mathlib.LinearAlgebra.Matrix.PosDef
import Mathlib.LinearAlgebra.Matrix.Reindex
import Mathlib.LinearAlgebra.Matrix.Trace
import Mathlib.LinearAlgebra.Matrix.Vec
import Mathlib.LinearAlgebra.Span.Defs
import Mathlib.LinearAlgebra.UnitaryGroup
import Mathlib.Logic.Basic
import Mathlib.Logic.Embedding.Basic
import Mathlib.Logic.Equiv.Basic
import Mathlib.Logic.Equiv.Defs
import Mathlib.Logic.Equiv.Fin.Basic
import Mathlib.Logic.Equiv.Option
import Mathlib.Logic.Equiv.Prod
import Mathlib.Logic.Equiv.Sum
import Mathlib.Logic.Function.Basic
import Mathlib.Logic.IsEmpty.Defs
import Mathlib.Logic.Unique
import Mathlib.MeasureTheory.Constructions.BorelSpace.Basic
import Mathlib.MeasureTheory.Constructions.BorelSpace.Order
import Mathlib.MeasureTheory.Function.AEEqFun
import Mathlib.MeasureTheory.Function.L1Space.Integrable
import Mathlib.MeasureTheory.Function.L2Space
import Mathlib.MeasureTheory.Function.LpSeminorm.Defs
import Mathlib.MeasureTheory.Function.LpSeminorm.Monotonicity
import Mathlib.MeasureTheory.Function.LpSeminorm.SMul
import Mathlib.MeasureTheory.Function.LpSeminorm.TriangleInequality
import Mathlib.MeasureTheory.Function.LpSpace.Basic
import Mathlib.MeasureTheory.Function.StronglyMeasurable.AEStronglyMeasurable
import Mathlib.MeasureTheory.Group.Arithmetic
import Mathlib.MeasureTheory.Integral.Bochner.Basic
import Mathlib.MeasureTheory.Integral.Bochner.ContinuousLinearMap
import Mathlib.MeasureTheory.Integral.IntegrableOn
import Mathlib.MeasureTheory.Integral.IntegralEqImproper
import Mathlib.MeasureTheory.MeasurableSpace.Defs
import Mathlib.MeasureTheory.Measure.Haar.OfBasis
import Mathlib.MeasureTheory.Measure.Lebesgue.Basic
import Mathlib.MeasureTheory.Measure.MeasureSpaceDef
import Mathlib.MeasureTheory.Measure.Restrict
import Mathlib.MeasureTheory.OuterMeasure.AE
import Mathlib.MeasureTheory.SpecificCodomains.Pi
import Mathlib.NumberTheory.Harmonic.Bounds
import Mathlib.NumberTheory.Harmonic.Defs
import Mathlib.Order.Basic
import Mathlib.Order.Bounds.Defs
import Mathlib.Order.ConditionallyCompleteLattice.Basic
import Mathlib.Order.ConditionallyCompleteLattice.Defs
import Mathlib.Order.ConditionallyCompletePartialOrder.Defs
import Mathlib.Order.Defs.LinearOrder
import Mathlib.Order.Defs.PartialOrder
import Mathlib.Order.Disjoint
import Mathlib.Order.Filter.AtTopBot.Basic
import Mathlib.Order.Filter.AtTopBot.Defs
import Mathlib.Order.Filter.AtTopBot.Group
import Mathlib.Order.Filter.Basic
import Mathlib.Order.Filter.Defs
import Mathlib.Order.Filter.Tendsto
import Mathlib.Order.Fin.Basic
import Mathlib.Order.Interval.Finset.Defs
import Mathlib.Order.Interval.Finset.Fin
import Mathlib.Order.Interval.Set.Defs
import Mathlib.Order.Lattice
import Mathlib.Order.Max
import Mathlib.Order.MinMax
import Mathlib.Order.Monotone.Defs
import Mathlib.Order.Nat
import Mathlib.Order.Notation
import Mathlib.Order.RelClasses
import Mathlib.Order.SetNotation
import Mathlib.RingTheory.Algebraic.Integral
import Mathlib.RingTheory.DedekindDomain.Basic
import Mathlib.RingTheory.Etale.Weakly
import Mathlib.RingTheory.Finiteness.Defs
import Mathlib.RingTheory.Flat.FaithfullyFlat.Algebra
import Mathlib.RingTheory.Flat.FaithfullyFlat.Basic
import Mathlib.RingTheory.Flat.TorsionFree
import Mathlib.RingTheory.IntegralClosure.Algebra.Basic
import Mathlib.RingTheory.PicardGroup
import Mathlib.RingTheory.SimpleRing.Basic
import Mathlib.RingTheory.SimpleRing.Principal
import Mathlib.RingTheory.TotallySplit
import Mathlib.Tactic.Abel
import Mathlib.Tactic.CancelDenoms.Core
import Mathlib.Tactic.FieldSimp.Lemmas
import Mathlib.Tactic.Linarith.Lemmas
import Mathlib.Tactic.Linarith.Preprocessing
import Mathlib.Tactic.LinearCombination.Lemmas
import Mathlib.Tactic.Module
import Mathlib.Tactic.NormNum.Basic
import Mathlib.Tactic.NormNum.Eq
import Mathlib.Tactic.NormNum.Ineq
import Mathlib.Tactic.NormNum.Inv
import Mathlib.Tactic.NormNum.Pow
import Mathlib.Tactic.NormNum.RealSqrt
import Mathlib.Tactic.NormNum.Result
import Mathlib.Tactic.Positivity.Core
import Mathlib.Tactic.Push
import Mathlib.Tactic.Ring.Basic
import Mathlib.Tactic.Ring.Common
import Mathlib.Tactic.Ring.RingNF
import Mathlib.Topology.Algebra.ConstMulAction
import Mathlib.Topology.Algebra.Field
import Mathlib.Topology.Algebra.Group.Defs
import Mathlib.Topology.Algebra.GroupWithZero
import Mathlib.Topology.Algebra.Module.ContinuousLinearMap.Basic
import Mathlib.Topology.Algebra.Module.FiniteDimension
import Mathlib.Topology.Algebra.Module.ModuleTopology
import Mathlib.Topology.Algebra.Monoid
import Mathlib.Topology.Algebra.Monoid.Defs
import Mathlib.Topology.Algebra.MulAction
import Mathlib.Topology.Algebra.Order.Field
import Mathlib.Topology.Algebra.Ring.Basic
import Mathlib.Topology.Algebra.Ring.Real
import Mathlib.Topology.Algebra.Star.Real
import Mathlib.Topology.Algebra.UniformMulAction
import Mathlib.Topology.Closure
import Mathlib.Topology.Constructions
import Mathlib.Topology.Continuous
import Mathlib.Topology.ContinuousMap.ContinuousSqrt
import Mathlib.Topology.ContinuousOn
import Mathlib.Topology.Defs.Basic
import Mathlib.Topology.Defs.Filter
import Mathlib.Topology.EMetricSpace.Defs
import Mathlib.Topology.GDelta.MetrizableSpace
import Mathlib.Topology.Instances.Matrix
import Mathlib.Topology.Instances.Rat
import Mathlib.Topology.MetricSpace.Algebra
import Mathlib.Topology.MetricSpace.Basic
import Mathlib.Topology.MetricSpace.Defs
import Mathlib.Topology.MetricSpace.ProperSpace
import Mathlib.Topology.MetricSpace.Pseudo.Defs
import Mathlib.Topology.MetricSpace.Pseudo.Lemmas
import Mathlib.Topology.Metrizable.Uniformity
import Mathlib.Topology.Neighborhoods
import Mathlib.Topology.Order.Basic
import Mathlib.Topology.Order.OrderClosed
import Mathlib.Topology.Separation.GDelta
import Mathlib.Topology.Separation.Hausdorff
import Mathlib.Topology.Separation.Regular
import Mathlib.Topology.UniformSpace.Cauchy
import Mathlib.Topology.UniformSpace.Defs
import Mathlib.Topology.UniformSpace.Matrix
import Mathlib.Topology.UniformSpace.Pi
import Mathlib.Topology.UniformSpace.Real

namespace QuantumParallelRepetition

noncomputable section

open scoped BigOperators ComplexOrder Kronecker MatrixOrder
open Matrix

variable {X Y A B : Type*}

namespace Game

variable [Fintype X] [Fintype Y] [Fintype A] [Fintype B]

@[simp] theorem repeat_questionWeight (G : Game X Y A B) (n : ℕ)
    (xs : Fin n → X) (ys : Fin n → Y) :
    (G.repeat n).questionWeight xs ys =
      ∏ i : Fin n, G.questionWeight (xs i) (ys i) := rfl

end Game

end

noncomputable section

open scoped BigOperators Kronecker

namespace Game

variable {X Y A B : Type*}
variable [Fintype X] [Fintype Y] [Fintype A] [Fintype B]

theorem questionWeight_le_marginalX
    (G : Game X Y A B) (x : X) (y : Y) :
    G.questionWeight x y ≤ G.marginalX x := by
  unfold marginalX
  exact Finset.single_le_sum
    (fun y _ => G.weight_nonneg x y)
    (Finset.mem_univ y)

theorem questionWeight_le_marginalY
    (G : Game X Y A B) (x : X) (y : Y) :
    G.questionWeight x y ≤ G.marginalY y := by
  unfold marginalY
  exact Finset.single_le_sum
    (fun x _ => G.weight_nonneg x y)
    (Finset.mem_univ x)

theorem marginalX_mul_conditionalYGivenX
    (G : Game X Y A B) (x : X) (y : Y) :
    G.marginalX x * G.conditionalYGivenX x y =
      G.questionWeight x y := by
  unfold conditionalYGivenX
  by_cases hx : G.marginalX x = 0
  · have hzero : G.questionWeight x y = 0 := by
      have hle := G.questionWeight_le_marginalX x y
      have hnonneg := G.weight_nonneg x y
      rw [hx] at hle
      linarith
    simp [hx, hzero]
  · field_simp

theorem marginalY_mul_conditionalXGivenY
    (G : Game X Y A B) (x : X) (y : Y) :
    G.marginalY y * G.conditionalXGivenY y x =
      G.questionWeight x y := by
  unfold conditionalXGivenY
  by_cases hy : G.marginalY y = 0
  · have hzero : G.questionWeight x y = 0 := by
      have hle := G.questionWeight_le_marginalY x y
      have hnonneg := G.weight_nonneg x y
      rw [hy] at hle
      linarith
    simp [hy, hzero]
  · field_simp

end Game

end

noncomputable section

open Matrix
open scoped BigOperators Kronecker ComplexOrder MatrixOrder

set_option backward.isDefEq.respectTransparency false
set_option maxHeartbeats 600000

section ActualHistoryWeights

variable {X Y A B : Type*}
variable [Fintype X] [Fintype Y] [Fintype A] [Fintype B]

theorem fullHistoryWeight_mul_hidden
    (G : Game X Y A B) {n : ℕ}
    (D L : Finset (Fin n))
    (hL : L ⊆ Finset.univ \ D)
    (h : FullSubsetHistory X Y n D L)
    (hx : {i : Fin n // i ∈ fullHistoryRemaining n D L} → X)
    (hy : {i : Fin n // i ∈ L} → Y) :
    fullHistoryWeight G h *
        fullHistoryHiddenAliceWeight G h hx *
        fullHistoryHiddenBobWeight G h hy =
      (G.repeat n).questionWeight
        (fullHistoryAliceQuestion h hx)
        (fullHistoryBobQuestion h hy) := by
  classical
  let q : Fin n → ℝ := fun i =>
    G.questionWeight
      (fullHistoryAliceQuestion h hx i)
      (fullHistoryBobQuestion h hy i)
  have hDprod :
      (∏ i : {i : Fin n // i ∈ D},
        G.questionWeight
          (h.aliceConditioned i) (h.bobConditioned i)) =
        ∏ i ∈ D, q i := by
    calc
      (∏ i : {i : Fin n // i ∈ D},
        G.questionWeight
          (h.aliceConditioned i) (h.bobConditioned i)) =
        ∏ i : {i : Fin n // i ∈ D}, q i := by
          apply Finset.prod_congr rfl
          intro i _
          simp [q, fullHistoryAliceQuestion,
            fullHistoryBobQuestion, i.property]
      _ = ∏ i ∈ D, q i := Finset.prod_coe_sort D q
  have hLprod :
      (∏ i : {i : Fin n // i ∈ L},
        G.marginalX (h.aliceRevealed i)) *
      (∏ i : {i : Fin n // i ∈ L},
        G.conditionalYGivenX
          (h.aliceRevealed i) (hy i)) =
        ∏ i ∈ L, q i := by
    rw [← Finset.prod_mul_distrib]
    calc
      (∏ i : {i : Fin n // i ∈ L},
        G.marginalX (h.aliceRevealed i) *
          G.conditionalYGivenX (h.aliceRevealed i) (hy i)) =
        ∏ i : {i : Fin n // i ∈ L}, q i := by
          apply Finset.prod_congr rfl
          intro i _
          have hiD : (i : Fin n) ∉ D :=
            (Finset.mem_sdiff.mp (hL i.property)).2
          simpa [q, fullHistoryAliceQuestion,
            fullHistoryBobQuestion, hiD, i.property] using
              G.marginalX_mul_conditionalYGivenX
                (h.aliceRevealed i) (hy i)
      _ = ∏ i ∈ L, q i := Finset.prod_coe_sort L q
  have hRprod :
      (∏ i : {i : Fin n // i ∈ fullHistoryRemaining n D L},
        G.marginalY (h.bobRemaining i)) *
      (∏ i : {i : Fin n // i ∈ fullHistoryRemaining n D L},
        G.conditionalXGivenY
          (h.bobRemaining i) (hx i)) =
        ∏ i ∈ fullHistoryRemaining n D L, q i := by
    rw [← Finset.prod_mul_distrib]
    calc
      (∏ i : {i : Fin n // i ∈ fullHistoryRemaining n D L},
        G.marginalY (h.bobRemaining i) *
          G.conditionalXGivenY (h.bobRemaining i) (hx i)) =
        ∏ i : {i : Fin n // i ∈ fullHistoryRemaining n D L}, q i := by
          apply Finset.prod_congr rfl
          intro i _
          have hiD : (i : Fin n) ∉ D :=
            (Finset.mem_sdiff.mp
              (Finset.mem_sdiff.mp i.property).1).2
          have hiL : (i : Fin n) ∉ L :=
            (Finset.mem_sdiff.mp i.property).2
          simpa [q, fullHistoryAliceQuestion,
            fullHistoryBobQuestion, hiD, hiL] using
              G.marginalY_mul_conditionalXGivenY
                (hx i) (h.bobRemaining i)
      _ = ∏ i ∈ fullHistoryRemaining n D L, q i :=
        Finset.prod_coe_sort (fullHistoryRemaining n D L) q
  have hDL : Disjoint D L := by
    apply Finset.disjoint_left.mpr
    intro i hiD hiL
    exact (Finset.mem_sdiff.mp (hL hiL)).2 hiD
  have hDR : Disjoint (D ∪ L) (fullHistoryRemaining n D L) := by
    apply Finset.disjoint_left.mpr
    intro i hiUnion hiR
    have hiD : i ∉ D :=
      (Finset.mem_sdiff.mp (Finset.mem_sdiff.mp hiR).1).2
    have hiL : i ∉ L := (Finset.mem_sdiff.mp hiR).2
    rcases Finset.mem_union.mp hiUnion with hi | hi
    · exact hiD hi
    · exact hiL hi
  have hcover : D ∪ L ∪ fullHistoryRemaining n D L =
      (Finset.univ : Finset (Fin n)) := by
    ext i
    simp [fullHistoryRemaining]
    tauto
  rw [Game.repeat_questionWeight]
  change fullHistoryWeight G h *
      fullHistoryHiddenAliceWeight G h hx *
      fullHistoryHiddenBobWeight G h hy =
    ∏ i : Fin n, q i
  unfold fullHistoryWeight fullHistoryHiddenAliceWeight
    fullHistoryHiddenBobWeight
  calc
    ((∏ i : {i : Fin n // i ∈ D},
        G.questionWeight
          (h.aliceConditioned i) (h.bobConditioned i)) *
      (∏ i : {i : Fin n // i ∈ L},
        G.marginalX (h.aliceRevealed i)) *
      (∏ i : {i : Fin n // i ∈ fullHistoryRemaining n D L},
        G.marginalY (h.bobRemaining i))) *
      (∏ i : {i : Fin n // i ∈ fullHistoryRemaining n D L},
        G.conditionalXGivenY
          (h.bobRemaining i) (hx i)) *
      (∏ i : {i : Fin n // i ∈ L},
        G.conditionalYGivenX
          (h.aliceRevealed i) (hy i)) =
      (∏ i : {i : Fin n // i ∈ D},
        G.questionWeight
          (h.aliceConditioned i) (h.bobConditioned i)) *
        ((∏ i : {i : Fin n // i ∈ L},
          G.marginalX (h.aliceRevealed i)) *
          (∏ i : {i : Fin n // i ∈ L},
            G.conditionalYGivenX
              (h.aliceRevealed i) (hy i))) *
        ((∏ i : {i : Fin n // i ∈ fullHistoryRemaining n D L},
          G.marginalY (h.bobRemaining i)) *
          (∏ i : {i : Fin n // i ∈ fullHistoryRemaining n D L},
            G.conditionalXGivenY
              (h.bobRemaining i) (hx i))) := by ring
    _ = (∏ i ∈ D, q i) *
          (∏ i ∈ L, q i) *
          (∏ i ∈ fullHistoryRemaining n D L, q i) := by
            rw [hDprod, hLprod, hRprod]
    _ = ∏ i : Fin n, q i := by
      rw [← Finset.prod_union hDL,
        ← Finset.prod_union hDR, hcover]

theorem conditionedAnswerMatches_iff
    {T : Type*} {n : ℕ}
    (D : Finset (Fin n))
    (answer : Fin n → T)
    (α : {i : Fin n // i ∈ D} → T) :
    (∀ (i : Fin n) (hi : i ∈ D), answer i = α ⟨i, hi⟩) ↔
      α = fun i : {i : Fin n // i ∈ D} => answer (i : Fin n) := by
  constructor
  · intro h
    funext i
    exact (h i i.property).symm
  · intro h i hi
    subst α
    rfl

theorem conditionedEffects_born_expansion
    [DecidableEq A] [DecidableEq B]
    (G : Game X Y A B) (n : ℕ)
    (S : Strategy (G.repeat n))
    (D : Finset (Fin n))
    (α : {i : Fin n // i ∈ D} → A)
    (β : {i : Fin n // i ∈ D} → B)
    (xs : Fin n → X) (ys : Fin n → Y) :
    bornTracePairing S.state.matrix
        (conditionedAliceEffect G n S D α xs)
        (conditionedBobEffect G n S D β ys) =
      ∑ aa : Fin n → A, ∑ bb : Fin n → B,
        if ∀ (i : Fin n) (hi : i ∈ D), aa i = α ⟨i, hi⟩ then
          if ∀ (i : Fin n) (hi : i ∈ D), bb i = β ⟨i, hi⟩ then
            S.outcomeProbability xs ys aa bb
          else 0
        else 0 := by
  classical
  simp only [conditionedAliceEffect, conditionedBobEffect,
    map_sum, LinearMap.sum_apply]
  rw [Finset.sum_comm]
  apply Finset.sum_congr rfl
  intro aa _
  split_ifs with ha
  · apply Finset.sum_congr rfl
    intro bb _
    split_ifs with hb
    · rfl
    · exact map_zero _
  · simp

theorem finite_sum_four_swap
    {I J K T : Type*}
    [Fintype I] [Fintype J] [Fintype K] [Fintype T]
    (f : I → J → K → T → ℝ) :
    (∑ i : I, ∑ j : J, ∑ k : K, ∑ t : T, f i j k t) =
      ∑ k : K, ∑ t : T, ∑ i : I, ∑ j : J, f i j k t := by
  classical
  calc
    (∑ i : I, ∑ j : J, ∑ k : K, ∑ t : T, f i j k t) =
      ∑ i : I, ∑ k : K, ∑ j : J, ∑ t : T, f i j k t := by
        apply Finset.sum_congr rfl
        intro i _
        rw [Finset.sum_comm]
    _ = ∑ k : K, ∑ i : I, ∑ j : J, ∑ t : T, f i j k t := by
      rw [Finset.sum_comm]
    _ = ∑ k : K, ∑ i : I, ∑ t : T, ∑ j : J, f i j k t := by
      apply Finset.sum_congr rfl
      intro k _
      apply Finset.sum_congr rfl
      intro i _
      rw [Finset.sum_comm]
    _ = ∑ k : K, ∑ t : T, ∑ i : I, ∑ j : J, f i j k t := by
      apply Finset.sum_congr rfl
      intro k _
      rw [Finset.sum_comm]

theorem fullHistoryWinIndicator_eq_question
    (G : Game X Y A B) {n : ℕ}
    (D L : Finset (Fin n))
    (h : FullSubsetHistory X Y n D L)
    (hx : {i : Fin n // i ∈ fullHistoryRemaining n D L} → X)
    (hy : {i : Fin n // i ∈ L} → Y)
    (α : {i : Fin n // i ∈ D} → A)
    (β : {i : Fin n // i ∈ D} → B) :
    fullHistoryWinIndicator G h α β =
      fullQuestionWinIndicator G D
        (fullHistoryAliceQuestion h hx)
        (fullHistoryBobQuestion h hy) α β := by
  classical
  unfold fullHistoryWinIndicator fullQuestionWinIndicator
  congr 1
  apply propext
  constructor
  · intro hw i
    simpa [fullHistoryAliceQuestion,
      fullHistoryBobQuestion, i.property] using hw i
  · intro hw i
    simpa [fullHistoryAliceQuestion,
      fullHistoryBobQuestion, i.property] using hw i

theorem conditionedEffects_postselection_sum
    [DecidableEq A] [DecidableEq B]
    (G : Game X Y A B) (n : ℕ)
    (S : Strategy (G.repeat n))
    (D : Finset (Fin n))
    (xs : Fin n → X) (ys : Fin n → Y) :
    (∑ α : {i : Fin n // i ∈ D} → A,
      ∑ β : {i : Fin n // i ∈ D} → B,
        fullQuestionWinIndicator G D xs ys α β *
          bornTracePairing S.state.matrix
            (conditionedAliceEffect G n S D α xs)
            (conditionedBobEffect G n S D β ys)) =
      ∑ aa : Fin n → A, ∑ bb : Fin n → B,
        if ∀ i : {i : Fin n // i ∈ D},
          G.predicate (xs i) (ys i) (aa i) (bb i) = true
        then S.outcomeProbability xs ys aa bb else 0 := by
  classical
  simp_rw [conditionedEffects_born_expansion G n S D]
  calc
    (∑ α : {i : Fin n // i ∈ D} → A,
      ∑ β : {i : Fin n // i ∈ D} → B,
        fullQuestionWinIndicator G D xs ys α β *
          (∑ aa : Fin n → A, ∑ bb : Fin n → B,
            if ∀ (i : Fin n) (hi : i ∈ D), aa i = α ⟨i, hi⟩ then
              if ∀ (i : Fin n) (hi : i ∈ D), bb i = β ⟨i, hi⟩ then
                S.outcomeProbability xs ys aa bb else 0
            else 0)) =
      ∑ α : {i : Fin n // i ∈ D} → A,
      ∑ β : {i : Fin n // i ∈ D} → B,
      ∑ aa : Fin n → A, ∑ bb : Fin n → B,
        fullQuestionWinIndicator G D xs ys α β *
          (if ∀ (i : Fin n) (hi : i ∈ D), aa i = α ⟨i, hi⟩ then
            if ∀ (i : Fin n) (hi : i ∈ D), bb i = β ⟨i, hi⟩ then
              S.outcomeProbability xs ys aa bb else 0
          else 0) := by
            simp only [Finset.mul_sum]
    _ = ∑ aa : Fin n → A, ∑ bb : Fin n → B,
      ∑ α : {i : Fin n // i ∈ D} → A,
      ∑ β : {i : Fin n // i ∈ D} → B,
        fullQuestionWinIndicator G D xs ys α β *
          (if ∀ (i : Fin n) (hi : i ∈ D), aa i = α ⟨i, hi⟩ then
            if ∀ (i : Fin n) (hi : i ∈ D), bb i = β ⟨i, hi⟩ then
              S.outcomeProbability xs ys aa bb else 0
          else 0) := finite_sum_four_swap _
    _ = ∑ aa : Fin n → A, ∑ bb : Fin n → B,
        if ∀ i : {i : Fin n // i ∈ D},
          G.predicate (xs i) (ys i) (aa i) (bb i) = true
        then S.outcomeProbability xs ys aa bb else 0 := by
      apply Finset.sum_congr rfl
      intro aa _
      apply Finset.sum_congr rfl
      intro bb _
      simp [conditionedAnswerMatches_iff,
        fullQuestionWinIndicator, mul_ite]

theorem repeated_partialWinMass_expansion
    (G : Game X Y A B) (n : ℕ)
    (S : Strategy (G.repeat n))
    (D : Finset (Fin n)) :
    (strategyEventLaw (G.repeat n) S).eventMass
        (FiniteEventLaw.winEvent
          (repeatedCoordinateWin G n) D) =
      ∑ xs : Fin n → X, ∑ ys : Fin n → Y,
      ∑ aa : Fin n → A, ∑ bb : Fin n → B,
        (G.repeat n).questionWeight xs ys *
          (if ∀ i : {i : Fin n // i ∈ D},
            G.predicate (xs i) (ys i) (aa i) (bb i) = true
          then S.outcomeProbability xs ys aa bb else 0) := by
  classical
  unfold FiniteEventLaw.eventMass FiniteEventLaw.winEvent
  simp only [Finset.sum_filter]
  simp only [repeatedCoordinateWin, strategyEventLaw]
  change
    (∑ ω : (Fin n → X) × (Fin n → Y) ×
      (Fin n → A) × (Fin n → B),
      if ∀ i ∈ D,
        G.predicate (ω.1 i) (ω.2.1 i)
          (ω.2.2.1 i) (ω.2.2.2 i) = true
      then (G.repeat n).questionWeight ω.1 ω.2.1 *
        S.outcomeProbability ω.1 ω.2.1 ω.2.2.1 ω.2.2.2
      else 0) = _
  simp_rw [Fintype.sum_prod_type]
  apply Finset.sum_congr rfl
  intro xs _
  apply Finset.sum_congr rfl
  intro ys _
  apply Finset.sum_congr rfl
  intro aa _
  apply Finset.sum_congr rfl
  intro bb _
  have hiff :
      (∀ i ∈ D, G.predicate (xs i) (ys i) (aa i) (bb i) = true) ↔
        (∀ i : {i : Fin n // i ∈ D},
          G.predicate (xs i) (ys i) (aa i) (bb i) = true) := by
    constructor
    · intro h i
      exact h i i.property
    · intro h i hi
      exact h ⟨i, hi⟩
  by_cases hw : ∀ i : {i : Fin n // i ∈ D},
    G.predicate (xs i) (ys i) (aa i) (bb i) = true
  · rw [if_pos (hiff.mpr hw), if_pos hw]
  · rw [if_neg (mt hiff.mp hw), if_neg hw, mul_zero]

theorem fullQuestionConditionedBornMass_eq
    [DecidableEq A] [DecidableEq B]
    (G : Game X Y A B) (n : ℕ)
    (S : Strategy (G.repeat n))
    (D : Finset (Fin n)) :
    (∑ xs : Fin n → X, ∑ ys : Fin n → Y,
      ∑ α : {i : Fin n // i ∈ D} → A,
      ∑ β : {i : Fin n // i ∈ D} → B,
        (G.repeat n).questionWeight xs ys *
          fullQuestionWinIndicator G D xs ys α β *
          bornTracePairing S.state.matrix
            (conditionedAliceEffect G n S D α xs)
            (conditionedBobEffect G n S D β ys)) =
      (strategyEventLaw (G.repeat n) S).eventMass
        (FiniteEventLaw.winEvent
          (repeatedCoordinateWin G n) D) := by
  classical
  calc
    (∑ xs : Fin n → X, ∑ ys : Fin n → Y,
      ∑ α : {i : Fin n // i ∈ D} → A,
      ∑ β : {i : Fin n // i ∈ D} → B,
        (G.repeat n).questionWeight xs ys *
          fullQuestionWinIndicator G D xs ys α β *
          bornTracePairing S.state.matrix
            (conditionedAliceEffect G n S D α xs)
            (conditionedBobEffect G n S D β ys)) =
      ∑ xs : Fin n → X, ∑ ys : Fin n → Y,
        (G.repeat n).questionWeight xs ys *
          (∑ α : {i : Fin n // i ∈ D} → A,
            ∑ β : {i : Fin n // i ∈ D} → B,
              fullQuestionWinIndicator G D xs ys α β *
                bornTracePairing S.state.matrix
                  (conditionedAliceEffect G n S D α xs)
                  (conditionedBobEffect G n S D β ys)) := by
        apply Finset.sum_congr rfl
        intro xs _
        apply Finset.sum_congr rfl
        intro ys _
        simp only [Finset.mul_sum, mul_assoc]
    _ = ∑ xs : Fin n → X, ∑ ys : Fin n → Y,
      ∑ aa : Fin n → A, ∑ bb : Fin n → B,
        (G.repeat n).questionWeight xs ys *
          (if ∀ i : {i : Fin n // i ∈ D},
            G.predicate (xs i) (ys i) (aa i) (bb i) = true
          then S.outcomeProbability xs ys aa bb else 0) := by
        apply Finset.sum_congr rfl
        intro xs _
        apply Finset.sum_congr rfl
        intro ys _
        rw [conditionedEffects_postselection_sum G n S D xs ys]
        simp only [Finset.mul_sum]
    _ = _ := (repeated_partialWinMass_expansion G n S D).symm

theorem fullHistoryFilters_born_expansion
    (G : Game X Y A B) (n : ℕ)
    (S : Strategy (G.repeat n))
    (D L : Finset (Fin n))
    (h : FullSubsetHistory X Y n D L)
    (α : {i : Fin n // i ∈ D} → A)
    (β : {i : Fin n // i ∈ D} → B) :
    bornTracePairing S.state.matrix
        (fullHistoryAliceFilter G n S D L h α)
        (fullHistoryBobFilter G n S D L h β) =
      ∑ hx : {i : Fin n // i ∈ fullHistoryRemaining n D L} → X,
      ∑ hy : {i : Fin n // i ∈ L} → Y,
        fullHistoryHiddenAliceWeight G h hx *
          fullHistoryHiddenBobWeight G h hy *
          bornTracePairing S.state.matrix
            (conditionedAliceEffect G n S D α
              (fullHistoryAliceQuestion h hx))
            (conditionedBobEffect G n S D β
              (fullHistoryBobQuestion h hy)) := by
  classical
  unfold fullHistoryAliceFilter fullHistoryBobFilter
  simp only [map_sum, LinearMap.sum_apply,
    map_smul, LinearMap.smul_apply, smul_eq_mul, Finset.mul_sum]
  rw [Finset.sum_comm]
  apply Finset.sum_congr rfl
  intro hx _
  apply Finset.sum_congr rfl
  intro hy _
  ring

end ActualHistoryWeights

end

open scoped ComplexOrder Matrix BigOperators InnerProductSpace
open Complex Matrix Finset

end QuantumParallelRepetition


open QuantumParallelRepetition
open scoped ComplexOrder Matrix BigOperators InnerProductSpace
open Complex Matrix Finset
open Matrix
open scoped BigOperators Kronecker ComplexOrder MatrixOrder
set_option backward.isDefEq.respectTransparency false
set_option maxHeartbeats 600000
variable {X Y A B : Type*}
variable [Fintype X] [Fintype Y] [Fintype A] [Fintype B]

theorem solution
    [DecidableEq A] [DecidableEq B]
    (G : Game X Y A B) (n : ℕ)
    (S : Strategy (G.repeat n))
    (D L : Finset (Fin n))
    (hL : L ⊆ Finset.univ \ D) :
    (∑ h : FullSubsetHistory X Y n D L,
      ∑ α : {i : Fin n // i ∈ D} → A,
      ∑ β : {i : Fin n // i ∈ D} → B,
        fullHistoryWeight G h * fullHistoryWinIndicator G h α β *
          bornTracePairing S.state.matrix
            (fullHistoryAliceFilter G n S D L h α)
            (fullHistoryBobFilter G n S D L h β)) =
      (strategyEventLaw (G.repeat n) S).eventMass
        (FiniteEventLaw.winEvent
          (repeatedCoordinateWin G n) D) := by
  classical
  calc
    (∑ h : FullSubsetHistory X Y n D L,
      ∑ α : {i : Fin n // i ∈ D} → A,
      ∑ β : {i : Fin n // i ∈ D} → B,
        fullHistoryWeight G h * fullHistoryWinIndicator G h α β *
          bornTracePairing S.state.matrix
            (fullHistoryAliceFilter G n S D L h α)
            (fullHistoryBobFilter G n S D L h β)) =
      ∑ h : FullSubsetHistory X Y n D L,
      ∑ α : {i : Fin n // i ∈ D} → A,
      ∑ β : {i : Fin n // i ∈ D} → B,
      ∑ hx : {i : Fin n // i ∈ fullHistoryRemaining n D L} → X,
      ∑ hy : {i : Fin n // i ∈ L} → Y,
        fullHistoryWeight G h * fullHistoryWinIndicator G h α β *
          fullHistoryHiddenAliceWeight G h hx *
          fullHistoryHiddenBobWeight G h hy *
          bornTracePairing S.state.matrix
            (conditionedAliceEffect G n S D α
              (fullHistoryAliceQuestion h hx))
            (conditionedBobEffect G n S D β
              (fullHistoryBobQuestion h hy)) := by
        apply Finset.sum_congr rfl
        intro h _
        apply Finset.sum_congr rfl
        intro α _
        apply Finset.sum_congr rfl
        intro β _
        rw [fullHistoryFilters_born_expansion G n S D L h α β]
        simp only [Finset.mul_sum, mul_assoc]
    _ = ∑ h : FullSubsetHistory X Y n D L,
      ∑ hx : {i : Fin n // i ∈ fullHistoryRemaining n D L} → X,
      ∑ hy : {i : Fin n // i ∈ L} → Y,
      ∑ α : {i : Fin n // i ∈ D} → A,
      ∑ β : {i : Fin n // i ∈ D} → B,
        fullHistoryWeight G h * fullHistoryWinIndicator G h α β *
          fullHistoryHiddenAliceWeight G h hx *
          fullHistoryHiddenBobWeight G h hy *
          bornTracePairing S.state.matrix
            (conditionedAliceEffect G n S D α
              (fullHistoryAliceQuestion h hx))
            (conditionedBobEffect G n S D β
              (fullHistoryBobQuestion h hy)) := by
        apply Finset.sum_congr rfl
        intro h _
        exact finite_sum_four_swap _
    _ = ∑ h : FullSubsetHistory X Y n D L,
      ∑ hx : {i : Fin n // i ∈ fullHistoryRemaining n D L} → X,
      ∑ hy : {i : Fin n // i ∈ L} → Y,
      ∑ α : {i : Fin n // i ∈ D} → A,
      ∑ β : {i : Fin n // i ∈ D} → B,
        (G.repeat n).questionWeight
          (fullHistoryAliceQuestion h hx)
          (fullHistoryBobQuestion h hy) *
        fullQuestionWinIndicator G D
          (fullHistoryAliceQuestion h hx)
          (fullHistoryBobQuestion h hy) α β *
        bornTracePairing S.state.matrix
          (conditionedAliceEffect G n S D α
            (fullHistoryAliceQuestion h hx))
          (conditionedBobEffect G n S D β
            (fullHistoryBobQuestion h hy)) := by
        apply Finset.sum_congr rfl
        intro h _
        apply Finset.sum_congr rfl
        intro hx _
        apply Finset.sum_congr rfl
        intro hy _
        apply Finset.sum_congr rfl
        intro α _
        apply Finset.sum_congr rfl
        intro β _
        rw [fullHistoryWinIndicator_eq_question G D L h hx hy α β]
        rw [← fullHistoryWeight_mul_hidden G D L hL h hx hy]
        ring
    _ = ∑ xs : Fin n → X, ∑ ys : Fin n → Y,
      ∑ α : {i : Fin n // i ∈ D} → A,
      ∑ β : {i : Fin n // i ∈ D} → B,
        (G.repeat n).questionWeight xs ys *
          fullQuestionWinIndicator G D xs ys α β *
          bornTracePairing S.state.matrix
            (conditionedAliceEffect G n S D α xs)
            (conditionedBobEffect G n S D β ys) := by
      let f : ((Fin n → X) × (Fin n → Y)) → ℝ := fun q =>
        ∑ α : {i : Fin n // i ∈ D} → A,
        ∑ β : {i : Fin n // i ∈ D} → B,
          (G.repeat n).questionWeight q.1 q.2 *
            fullQuestionWinIndicator G D q.1 q.2 α β *
            bornTracePairing S.state.matrix
              (conditionedAliceEffect G n S D α q.1)
              (conditionedBobEffect G n S D β q.2)
      simpa only [f, fullHistoryQuestionEquiv, Equiv.coe_fn_mk,
        Fintype.sum_prod_type] using
        (fullHistoryQuestionEquiv
          (X := X) (Y := Y) D L hL).sum_comp f
    _ = _ := fullQuestionConditionedBornMass_eq G n S D
