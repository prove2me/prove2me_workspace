import Definitions.Def_quantum_parallel_repetition_game
import Definitions.Def_qpr_core_24
import Theorems.Thm_QuantumParallelRepetition_exactLeft_coordinate_not_mem
import Theorems.Thm_QuantumParallelRepetition_exactRight_coordinate_not_mem
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

open Matrix
open scoped BigOperators Kronecker ComplexOrder MatrixOrder

set_option backward.isDefEq.respectTransparency false
set_option maxHeartbeats 600000

section ActualHistoryWeights

variable {X Y A B : Type*}
variable [Fintype X] [Fintype Y] [Fintype A] [Fintype B]

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

end ActualHistoryWeights

end

open scoped ComplexOrder Matrix BigOperators InnerProductSpace
open Complex Matrix Finset

noncomputable section

open Matrix
open scoped BigOperators Kronecker ComplexOrder MatrixOrder

set_option backward.isDefEq.respectTransparency false
set_option maxHeartbeats 1500000

variable {X Y A B : Type*}
variable [Fintype X] [Fintype Y] [Fintype A] [Fintype B]

theorem fullCoordinate_three_sum_rotate
    {I J K T : Type*}
    [Fintype I] [Fintype J] [Fintype K] [AddCommMonoid T]
    (f : I → J → K → T) :
    (∑ i : I, ∑ j : J, ∑ k : K, f i j k) =
      ∑ j : J, ∑ k : K, ∑ i : I, f i j k := by
  calc
    (∑ i : I, ∑ j : J, ∑ k : K, f i j k) =
      ∑ j : J, ∑ i : I, ∑ k : K, f i j k := by
        rw [Finset.sum_comm]
    _ = ∑ j : J, ∑ k : K, ∑ i : I, f i j k := by
      apply Finset.sum_congr rfl
      intro j _
      rw [Finset.sum_comm]

end

noncomputable section

open scoped BigOperators

attribute [local instance] Classical.propDecidable

theorem exactLeftPrefix_subset
    {M : Type*} [Fintype M] [DecidableEq M]
    (seed : ExactForwardSeed M) :
    exactLeftPrefix seed ⊆
      exactLeft seed.coordinate seed.partition := by
  intro j hj
  obtain ⟨a, _, ha⟩ := Finset.mem_image.mp hj
  exact ha ▸ a.property

theorem exactRightPrefix_subset
    {M : Type*} [Fintype M] [DecidableEq M]
    (seed : ExactForwardSeed M) :
    exactRightPrefix seed ⊆
      exactRight seed.coordinate seed.partition := by
  intro j hj
  obtain ⟨a, _, ha⟩ := Finset.mem_image.mp hj
  exact ha ▸ a.property

end

noncomputable section

open scoped BigOperators

set_option backward.isDefEq.respectTransparency false
set_option maxHeartbeats 1800000
set_option maxRecDepth 2048

attribute [local instance] Classical.propDecidable

variable {X Y A B : Type*}
variable [Fintype X] [Fintype Y] [Fintype A] [Fintype B]

theorem exactRevealCode_splitAt_independent
    {n : ℕ} (D : Finset (Fin n))
    (seed : ExactRemainingSeed D)
    (x x' : X) (y y' : Y)
    (tailX : {j : Fin n // j ≠ seed.coordinate.val} → X)
    (tailY : {j : Fin n // j ≠ seed.coordinate.val} → Y) :
    exactRevealCode D seed
      ((Equiv.funSplitAt seed.coordinate.val X).symm (x, tailX),
       (Equiv.funSplitAt seed.coordinate.val Y).symm (y, tailY)) =
    exactRevealCode D seed
      ((Equiv.funSplitAt seed.coordinate.val X).symm (x', tailX),
       (Equiv.funSplitAt seed.coordinate.val Y).symm (y', tailY)) := by
  unfold exactRevealCode
  congr 1
  · funext j
    have hiD : seed.coordinate.val ∉ D :=
      (Finset.mem_sdiff.mp seed.coordinate.property).2
    have different : j.val ≠ seed.coordinate.val := by
      intro h
      exact hiD (h ▸ j.property)
    simp [Equiv.funSplitAt, Equiv.piSplitAt, different]
  · funext j
    have hiD : seed.coordinate.val ∉ D :=
      (Finset.mem_sdiff.mp seed.coordinate.property).2
    have different : j.val ≠ seed.coordinate.val := by
      intro h
      exact hiD (h ▸ j.property)
    simp [Equiv.funSplitAt, Equiv.piSplitAt, different]
  · funext j
    have different : j.val.val ≠ seed.coordinate.val := by
      intro h
      have same : j.val = seed.coordinate := Subtype.ext h
      have mem : seed.coordinate ∈
          exactLeft seed.coordinate seed.partition := by
        simpa [same] using j.property
      exact exactLeft_coordinate_not_mem
        seed.coordinate seed.partition mem
    simp [Equiv.funSplitAt, Equiv.piSplitAt, different]
  · funext j
    have different : j.val.val ≠ seed.coordinate.val := by
      intro h
      have same : j.val = seed.coordinate := Subtype.ext h
      have mem : seed.coordinate ∈
          exactRight seed.coordinate seed.partition := by
        simpa [same] using j.property
      exact exactRight_coordinate_not_mem
        seed.coordinate seed.partition mem
    simp [Equiv.funSplitAt, Equiv.piSplitAt, different]
  · funext j
    have different : j.val.val ≠ seed.coordinate.val := by
      intro h
      have same : j.val = seed.coordinate := Subtype.ext h
      have hleft := exactLeftPrefix_subset seed j.property
      exact exactLeft_coordinate_not_mem
        seed.coordinate seed.partition (same ▸ hleft)
    simp [Equiv.funSplitAt, Equiv.piSplitAt, different]
  · funext j
    have different : j.val.val ≠ seed.coordinate.val := by
      intro h
      have same : j.val = seed.coordinate := Subtype.ext h
      have hright := exactRightPrefix_subset seed j.property
      exact exactRight_coordinate_not_mem
        seed.coordinate seed.partition (same ▸ hright)
    simp [Equiv.funSplitAt, Equiv.piSplitAt, different]

theorem exactRepeatedQuestionWeight_splitAt_joint
    (G : Game X Y A B) (n : ℕ) (i : Fin n)
    (x : X) (y : Y)
    (tailX : {j : Fin n // j ≠ i} → X)
    (tailY : {j : Fin n // j ≠ i} → Y) :
    (G.repeat n).questionWeight
        ((Equiv.funSplitAt i X).symm (x, tailX))
        ((Equiv.funSplitAt i Y).symm (y, tailY)) =
      G.questionWeight x y *
        ∏ j : {j : Fin n // j ≠ i},
          G.questionWeight (tailX j) (tailY j) := by
  classical
  rw [Game.repeat_questionWeight]
  rw [← Finset.mul_prod_erase
    (Finset.univ : Finset (Fin n))
    (fun j : Fin n => G.questionWeight
      ((Equiv.funSplitAt i X).symm (x, tailX) j)
      ((Equiv.funSplitAt i Y).symm (y, tailY) j))
    (Finset.mem_univ i)]
  simp only [Equiv.funSplitAt, Equiv.piSplitAt,
    Equiv.coe_fn_symm_mk, dite_true]
  congr 1
  let e : {j : Fin n // j ∈ (Finset.univ : Finset (Fin n)).erase i} ≃
      {j : Fin n // j ≠ i} :=
    { toFun := fun j => ⟨j.val, (Finset.mem_erase.mp j.property).1⟩
      invFun := fun j => ⟨j.val,
        Finset.mem_erase.mpr ⟨j.property, Finset.mem_univ _⟩⟩
      left_inv := fun _ => rfl
      right_inv := fun _ => rfl }
  rw [← Finset.prod_coe_sort, ← e.prod_comp]
  apply Finset.prod_congr rfl
  intro j _
  have different : j.val ≠ i := (Finset.mem_erase.mp j.property).1
  simp [different, e]

theorem exactFairQuestionTailWeight_independent
    (G : Game X Y A B) (n : ℕ)
    (D : Finset (Fin n))
    (seed : ExactRemainingSeed D)
    (history : ExactRevealHistory X Y D seed)
    (x x' : X) (y y' : Y) :
    exactFairQuestionTailWeight
        G n D seed history x y =
      exactFairQuestionTailWeight
        G n D seed history x' y' := by
  unfold exactFairQuestionTailWeight
  apply Finset.sum_congr rfl
  intro tailX _
  apply Finset.sum_congr rfl
  intro tailY _
  rw [exactRevealCode_splitAt_independent
    D seed x x' y y' tailX tailY]

theorem exactJointQuestionMass_eq_question_mul_tail
    (G : Game X Y A B) (n : ℕ)
    (D : Finset (Fin n))
    (seed : ExactRemainingSeed D)
    (history : ExactRevealHistory X Y D seed)
    (x : X) (y : Y) :
    exactJointQuestionMass G n D seed history x y =
      G.questionWeight x y *
        exactFairQuestionTailWeight
          G n D seed history x y := by
  classical
  let e := Equiv.prodCongr
    (Equiv.funSplitAt seed.coordinate.val X)
    (Equiv.funSplitAt seed.coordinate.val Y)
  calc
    exactJointQuestionMass G n D seed history x y =
      ∑ t : (X × ({j : Fin n // j ≠ seed.coordinate.val} → X)) ×
          (Y × ({j : Fin n // j ≠ seed.coordinate.val} → Y)),
        if exactRevealCode D seed (e.symm t) = history ∧
          (e.symm t).1 seed.coordinate.val = x ∧
          (e.symm t).2 seed.coordinate.val = y
        then exactPriorQuestionWeight G n (e.symm t)
        else 0 := by
          unfold exactJointQuestionMass
          exact (e.symm.sum_comp (fun q =>
            if exactRevealCode D seed q = history ∧
              q.1 seed.coordinate.val = x ∧
              q.2 seed.coordinate.val = y
            then exactPriorQuestionWeight G n q
            else 0)).symm
    _ = ∑ tailX : {j : Fin n // j ≠ seed.coordinate.val} → X,
        ∑ tailY : {j : Fin n // j ≠ seed.coordinate.val} → Y,
          if exactRevealCode D seed
             ((Equiv.funSplitAt seed.coordinate.val X).symm (x, tailX),
              (Equiv.funSplitAt seed.coordinate.val Y).symm (y, tailY)) =
                history
          then exactPriorQuestionWeight G n
             ((Equiv.funSplitAt seed.coordinate.val X).symm (x, tailX),
              (Equiv.funSplitAt seed.coordinate.val Y).symm (y, tailY))
          else 0 := by
            simp only [Fintype.sum_prod_type, e, Equiv.prodCongr,
              Equiv.coe_fn_symm_mk, Prod.map, Equiv.funSplitAt,
              Equiv.piSplitAt, dite_true]
            change
              (∑ xx : X,
                ∑ tailX : {j : Fin n // j ≠ seed.coordinate.val} → X,
                ∑ yy : Y,
                ∑ tailY : {j : Fin n // j ≠ seed.coordinate.val} → Y,
                  if exactRevealCode D seed
                      ((Equiv.funSplitAt seed.coordinate.val X).symm
                         (xx, tailX),
                       (Equiv.funSplitAt seed.coordinate.val Y).symm
                         (yy, tailY)) = history ∧
                    xx = x ∧ yy = y then
                    exactPriorQuestionWeight G n
                      ((Equiv.funSplitAt seed.coordinate.val X).symm
                         (xx, tailX),
                       (Equiv.funSplitAt seed.coordinate.val Y).symm
                         (yy, tailY))
                  else 0) = _
            rw [Finset.sum_comm]
            apply Finset.sum_congr rfl
            intro tailX _
            calc
              (∑ xx : X,
                ∑ yy : Y,
                ∑ tailY : {j : Fin n // j ≠ seed.coordinate.val} → Y,
                  if exactRevealCode D seed
                      ((Equiv.funSplitAt seed.coordinate.val X).symm
                         (xx, tailX),
                       (Equiv.funSplitAt seed.coordinate.val Y).symm
                         (yy, tailY)) = history ∧
                    xx = x ∧ yy = y then
                    exactPriorQuestionWeight G n
                      ((Equiv.funSplitAt seed.coordinate.val X).symm
                         (xx, tailX),
                       (Equiv.funSplitAt seed.coordinate.val Y).symm
                         (yy, tailY))
                  else 0) =
                ∑ xx : X,
                ∑ tailY : {j : Fin n // j ≠ seed.coordinate.val} → Y,
                ∑ yy : Y,
                  if exactRevealCode D seed
                      ((Equiv.funSplitAt seed.coordinate.val X).symm
                         (xx, tailX),
                       (Equiv.funSplitAt seed.coordinate.val Y).symm
                         (yy, tailY)) = history ∧
                    xx = x ∧ yy = y then
                    exactPriorQuestionWeight G n
                      ((Equiv.funSplitAt seed.coordinate.val X).symm
                         (xx, tailX),
                       (Equiv.funSplitAt seed.coordinate.val Y).symm
                         (yy, tailY))
                  else 0 := by
                    apply Finset.sum_congr rfl
                    intro xx _
                    rw [Finset.sum_comm]
              _ = ∑ tailY : {j : Fin n // j ≠ seed.coordinate.val} → Y,
                  ∑ xx : X, ∑ yy : Y,
                    if exactRevealCode D seed
                        ((Equiv.funSplitAt seed.coordinate.val X).symm
                           (xx, tailX),
                         (Equiv.funSplitAt seed.coordinate.val Y).symm
                           (yy, tailY)) = history ∧
                      xx = x ∧ yy = y then
                      exactPriorQuestionWeight G n
                        ((Equiv.funSplitAt seed.coordinate.val X).symm
                           (xx, tailX),
                         (Equiv.funSplitAt seed.coordinate.val Y).symm
                           (yy, tailY))
                    else 0 := by
                      rw [Finset.sum_comm]
              _ = _ := by
                    apply Finset.sum_congr rfl
                    intro tailY _
                    have hcondition (xx : X) (yy : Y) :
                        (exactRevealCode D seed
                            ((Equiv.funSplitAt seed.coordinate.val X).symm
                               (xx, tailX),
                             (Equiv.funSplitAt seed.coordinate.val Y).symm
                               (yy, tailY)) = history ∧
                          xx = x ∧ yy = y) =
                        (xx = x ∧ yy = y ∧
                          exactRevealCode D seed
                            ((Equiv.funSplitAt seed.coordinate.val X).symm
                               (xx, tailX),
                             (Equiv.funSplitAt seed.coordinate.val Y).symm
                               (yy, tailY)) = history) := by
                          apply propext
                          tauto
                    simp_rw [hcondition, ite_and]
                    simp [Equiv.funSplitAt, Equiv.piSplitAt]
    _ = G.questionWeight x y *
        exactFairQuestionTailWeight G n D seed history x y := by
          unfold exactFairQuestionTailWeight
          rw [Finset.mul_sum]
          apply Finset.sum_congr rfl
          intro tailX _
          rw [Finset.mul_sum]
          apply Finset.sum_congr rfl
          intro tailY _
          by_cases h : exactRevealCode D seed
              ((Equiv.funSplitAt seed.coordinate.val X).symm (x, tailX),
               (Equiv.funSplitAt seed.coordinate.val Y).symm (y, tailY)) =
                history
          · rw [if_pos h, if_pos h]
            exact exactRepeatedQuestionWeight_splitAt_joint
              G n seed.coordinate.val x y tailX tailY
          · simp [h]

theorem exactJointQuestionMass_sum
    (G : Game X Y A B) (n : ℕ)
    (D : Finset (Fin n))
    (seed : ExactRemainingSeed D)
    (history : ExactRevealHistory X Y D seed) :
    (∑ x : X, ∑ y : Y,
      exactJointQuestionMass G n D seed history x y) =
      exactRevealMass G n D seed history := by
  classical
  unfold exactJointQuestionMass exactRevealMass
  calc
    (∑ x : X, ∑ y : Y,
      ∑ q : ExactFullQuestion X Y n,
        if exactRevealCode D seed q = history ∧
          q.1 seed.coordinate.val = x ∧
          q.2 seed.coordinate.val = y
        then exactPriorQuestionWeight G n q
        else 0) =
      ∑ q : ExactFullQuestion X Y n,
        ∑ x : X, ∑ y : Y,
          if exactRevealCode D seed q = history ∧
            q.1 seed.coordinate.val = x ∧
            q.2 seed.coordinate.val = y
          then exactPriorQuestionWeight G n q
          else 0 := by
            calc
              (∑ x : X, ∑ y : Y,
                ∑ q : ExactFullQuestion X Y n,
                  if exactRevealCode D seed q = history ∧
                    q.1 seed.coordinate.val = x ∧
                    q.2 seed.coordinate.val = y
                  then exactPriorQuestionWeight G n q
                  else 0) =
                ∑ y : Y, ∑ q : ExactFullQuestion X Y n,
                ∑ x : X,
                  if exactRevealCode D seed q = history ∧
                    q.1 seed.coordinate.val = x ∧
                    q.2 seed.coordinate.val = y
                  then exactPriorQuestionWeight G n q
                  else 0 :=
                    fullCoordinate_three_sum_rotate _
              _ = _ := fullCoordinate_three_sum_rotate _
    _ = ∑ q : ExactFullQuestion X Y n,
        if exactRevealCode D seed q = history
        then exactPriorQuestionWeight G n q
        else 0 := by
          apply Finset.sum_congr rfl
          intro q _
          by_cases h : exactRevealCode D seed q = history
          · have hsum :
                (∑ xx : X, ∑ yy : Y,
                  if q.1 seed.coordinate.val = xx ∧
                    q.2 seed.coordinate.val = yy
                  then exactPriorQuestionWeight G n q
                  else 0) = exactPriorQuestionWeight G n q := by
                  calc
                    (∑ xx : X, ∑ yy : Y,
                      if q.1 seed.coordinate.val = xx ∧
                        q.2 seed.coordinate.val = yy
                      then exactPriorQuestionWeight G n q
                      else 0) =
                      ∑ xx : X,
                        if q.1 seed.coordinate.val = xx
                        then exactPriorQuestionWeight G n q
                        else 0 := by
                          apply Finset.sum_congr rfl
                          intro xx _
                          by_cases hx : q.1 seed.coordinate.val = xx
                          · simp [hx]
                          · simp [hx]
                    _ = _ := by simp
            simpa [h] using hsum
          · simp [h]

theorem exactJointQuestionMass_eq_reveal_mul_question
    (G : Game X Y A B) (n : ℕ)
    (D : Finset (Fin n))
    (seed : ExactRemainingSeed D)
    (history : ExactRevealHistory X Y D seed)
    (x : X) (y : Y) :
    exactJointQuestionMass G n D seed history x y =
      exactRevealMass G n D seed history *
        G.questionWeight x y := by
  have htotal := exactJointQuestionMass_sum
    G n D seed history
  have htail :
      exactRevealMass G n D seed history =
        exactFairQuestionTailWeight
          G n D seed history x y := by
    calc
      exactRevealMass G n D seed history =
        ∑ xx : X, ∑ yy : Y,
          exactJointQuestionMass
            G n D seed history xx yy := htotal.symm
      _ = ∑ xx : X, ∑ yy : Y,
          G.questionWeight xx yy *
            exactFairQuestionTailWeight
              G n D seed history x y := by
            apply Finset.sum_congr rfl
            intro xx _
            apply Finset.sum_congr rfl
            intro yy _
            rw [exactJointQuestionMass_eq_question_mul_tail]
            rw [exactFairQuestionTailWeight_independent
              G n D seed history xx x yy y]
      _ = (∑ xx : X, ∑ yy : Y,
          G.questionWeight xx yy) *
            exactFairQuestionTailWeight
              G n D seed history x y := by
            simp [Finset.sum_mul]
      _ = exactFairQuestionTailWeight
          G n D seed history x y := by
            rw [G.weight_normalized]
            simp
  rw [exactJointQuestionMass_eq_question_mul_tail,
    ← htail]
  ring

end

noncomputable section

open scoped BigOperators ComplexOrder Kronecker MatrixOrder
  Matrix.Norms.L2Operator InnerProductSpace

set_option backward.isDefEq.respectTransparency false
set_option maxHeartbeats 2800000
set_option maxRecDepth 2048

open QuantumParallelRepetition.ClassicalInformation

attribute [local instance] Classical.propDecidable

variable {X Y A B : Type*}
variable [Fintype X] [Fintype Y] [Fintype A] [Fintype B]

theorem groupedMass_expectation
    {Ω T : Type*} [Fintype Ω] [Fintype T] [DecidableEq T]
    (code : Ω → T) (weight : Ω → ℝ) (f : T → ℝ) :
    (∑ t : T, groupedMass code weight t * f t) =
      ∑ outcome : Ω, weight outcome * f (code outcome) := by
  classical
  unfold groupedMass
  simp only [Finset.sum_filter, Finset.sum_mul]
  rw [Finset.sum_comm]
  apply Finset.sum_congr rfl
  intro outcome _
  rw [Finset.sum_eq_single (code outcome)]
  · simp
  · intro t _ different
    simp [different.symm]
  · simp

theorem exactJointQuestionMass_eq_groupedMass
    (G : Game X Y A B) (n : ℕ)
    (D : Finset (Fin n))
    (seed : ExactRemainingSeed D)
    (history : ExactRevealHistory X Y D seed)
    (x : X) (y : Y) :
    exactJointQuestionMass
        G n D seed history x y =
      groupedMass
        (fun q : ExactFullQuestion X Y n =>
          (exactRevealCode D seed q,
            q.1 seed.coordinate.val,
            q.2 seed.coordinate.val))
        (exactPriorQuestionWeight G n)
        (history, x, y) := by
  classical
  unfold exactJointQuestionMass groupedMass
  rw [Finset.sum_filter]
  apply Finset.sum_congr rfl
  intro q _
  by_cases compatible :
      exactRevealCode D seed q = history ∧
      q.1 seed.coordinate.val = x ∧
      q.2 seed.coordinate.val = y
  · rw [if_pos compatible, if_pos]
    exact Prod.ext compatible.1
      (Prod.ext compatible.2.1 compatible.2.2)
  · rw [if_neg compatible, if_neg]
    intro h
    exact compatible
      ⟨congrArg (fun t => t.1) h,
        congrArg (fun t => t.2.1) h,
        congrArg (fun t => t.2.2) h⟩

theorem exactFairJointQuestionExpectation_reindex
    (G : Game X Y A B) (n : ℕ)
    (D : Finset (Fin n))
    (seed : ExactRemainingSeed D)
    (f : ExactRevealHistory X Y D seed → X → Y → ℝ) :
    (∑ history : ExactRevealHistory X Y D seed,
      ∑ x : X, ∑ y : Y,
        exactRevealMass G n D seed history *
          G.questionWeight x y * f history x y) =
      ∑ q : ExactFullQuestion X Y n,
        exactPriorQuestionWeight G n q *
          f (exactRevealCode D seed q)
            (q.1 seed.coordinate.val)
            (q.2 seed.coordinate.val) := by
  classical
  let code : ExactFullQuestion X Y n →
      ExactRevealHistory X Y D seed × X × Y :=
    fun q => (exactRevealCode D seed q,
      q.1 seed.coordinate.val, q.2 seed.coordinate.val)
  have expectation := groupedMass_expectation
    code (exactPriorQuestionWeight G n)
    (fun t : ExactRevealHistory X Y D seed × X × Y =>
      f t.1 t.2.1 t.2.2)
  simp only [Fintype.sum_prod_type] at expectation
  calc
    (∑ history : ExactRevealHistory X Y D seed,
      ∑ x : X, ∑ y : Y,
        exactRevealMass G n D seed history *
          G.questionWeight x y * f history x y) =
      ∑ history : ExactRevealHistory X Y D seed,
      ∑ x : X, ∑ y : Y,
        groupedMass code (exactPriorQuestionWeight G n)
          (history, x, y) * f history x y := by
        apply Finset.sum_congr rfl
        intro history _
        apply Finset.sum_congr rfl
        intro x _
        apply Finset.sum_congr rfl
        intro y _
        rw [← exactJointQuestionMass_eq_groupedMass]
        rw [exactJointQuestionMass_eq_reveal_mul_question]
    _ = _ := by
      simpa only [Fintype.sum_prod_type, code] using expectation

end

end QuantumParallelRepetition


open QuantumParallelRepetition
open scoped ComplexOrder Matrix BigOperators InnerProductSpace
open Complex Matrix Finset
open scoped BigOperators ComplexOrder Kronecker MatrixOrder
  Matrix.Norms.L2Operator InnerProductSpace
set_option backward.isDefEq.respectTransparency false
set_option maxHeartbeats 3000000
set_option maxRecDepth 2048
attribute [local instance] Classical.propDecidable
variable {X Y A B : Type*}
variable [Fintype X] [Fintype Y] [Fintype A] [Fintype B]

theorem solution
    (G : Game X Y A B) (n : ℕ) (_ : Strategy (G.repeat n))
    (D : Finset (Fin n))
    (seed : ExactRemainingSeed D)
    (f : ExactRevealHistory X Y D seed →
      ({j : Fin n // j ∈ D} → A) →
      ({j : Fin n // j ∈ D} → B) → X → Y → ℝ) :
    (∑ history : ExactRevealHistory X Y D seed,
      ∑ aliceAnswer : {j : Fin n // j ∈ D} → A,
      ∑ bobAnswer : {j : Fin n // j ∈ D} → B,
        if exactHistoryAccepted G n D
          ⟨seed, history, aliceAnswer, bobAnswer⟩ then
          exactRevealMass G n D seed history *
            (∑ x : X, ∑ y : Y,
              G.questionWeight x y *
                f history aliceAnswer bobAnswer x y)
        else 0) =
      ∑ q : ExactFullQuestion X Y n,
        exactPriorQuestionWeight G n q *
          (∑ aliceAnswer : {j : Fin n // j ∈ D} → A,
           ∑ bobAnswer : {j : Fin n // j ∈ D} → B,
            if exactHistoryAccepted G n D
              ⟨seed, exactRevealCode D seed q,
                aliceAnswer, bobAnswer⟩ then
              f (exactRevealCode D seed q)
                aliceAnswer bobAnswer
                (q.1 seed.coordinate.val)
                (q.2 seed.coordinate.val)
            else 0) := by
  classical
  have expectation := exactFairJointQuestionExpectation_reindex
    G n D seed (fun history x y =>
      ∑ aliceAnswer : {j : Fin n // j ∈ D} → A,
      ∑ bobAnswer : {j : Fin n // j ∈ D} → B,
        if exactHistoryAccepted G n D
          ⟨seed, history, aliceAnswer, bobAnswer⟩ then
          f history aliceAnswer bobAnswer x y
        else 0)
  calc
    (∑ history : ExactRevealHistory X Y D seed,
      ∑ aliceAnswer : {j : Fin n // j ∈ D} → A,
      ∑ bobAnswer : {j : Fin n // j ∈ D} → B,
        if exactHistoryAccepted G n D
          ⟨seed, history, aliceAnswer, bobAnswer⟩ then
          exactRevealMass G n D seed history *
            (∑ x : X, ∑ y : Y,
              G.questionWeight x y *
                f history aliceAnswer bobAnswer x y)
        else 0) =
      ∑ history : ExactRevealHistory X Y D seed,
      ∑ aliceAnswer : {j : Fin n // j ∈ D} → A,
      ∑ bobAnswer : {j : Fin n // j ∈ D} → B,
      ∑ x : X, ∑ y : Y,
        if exactHistoryAccepted G n D
          ⟨seed, history, aliceAnswer, bobAnswer⟩ then
          exactRevealMass G n D seed history *
            G.questionWeight x y *
            f history aliceAnswer bobAnswer x y
        else 0 := by
          apply Finset.sum_congr rfl
          intro history _
          apply Finset.sum_congr rfl
          intro aliceAnswer _
          apply Finset.sum_congr rfl
          intro bobAnswer _
          by_cases accepted : exactHistoryAccepted G n D
              ⟨seed, history, aliceAnswer, bobAnswer⟩
          · simp only [if_pos accepted, Finset.mul_sum]
            apply Finset.sum_congr rfl
            intro x _
            apply Finset.sum_congr rfl
            intro y _
            ring
          · simp [accepted]
    _ = ∑ history : ExactRevealHistory X Y D seed,
      ∑ x : X, ∑ y : Y,
      ∑ aliceAnswer : {j : Fin n // j ∈ D} → A,
      ∑ bobAnswer : {j : Fin n // j ∈ D} → B,
        if exactHistoryAccepted G n D
          ⟨seed, history, aliceAnswer, bobAnswer⟩ then
          exactRevealMass G n D seed history *
            G.questionWeight x y *
            f history aliceAnswer bobAnswer x y
        else 0 := by
          apply Finset.sum_congr rfl
          intro history _
          exact finite_sum_four_swap _
    _ = ∑ history : ExactRevealHistory X Y D seed,
      ∑ x : X, ∑ y : Y,
        exactRevealMass G n D seed history *
          G.questionWeight x y *
          (∑ aliceAnswer : {j : Fin n // j ∈ D} → A,
           ∑ bobAnswer : {j : Fin n // j ∈ D} → B,
            if exactHistoryAccepted G n D
              ⟨seed, history, aliceAnswer, bobAnswer⟩ then
              f history aliceAnswer bobAnswer x y
            else 0) := by
          apply Finset.sum_congr rfl
          intro history _
          apply Finset.sum_congr rfl
          intro x _
          apply Finset.sum_congr rfl
          intro y _
          rw [Finset.mul_sum]
          apply Finset.sum_congr rfl
          intro aliceAnswer _
          rw [Finset.mul_sum]
          apply Finset.sum_congr rfl
          intro bobAnswer _
          split <;> simp_all
    _ = _ := expectation
