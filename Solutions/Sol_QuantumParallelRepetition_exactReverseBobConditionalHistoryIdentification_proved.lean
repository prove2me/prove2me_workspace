import Definitions.Def_quantum_parallel_repetition_game
import Definitions.Def_qpr_core_36
import Theorems.Thm_QuantumParallelRepetition_exactRemainingCoordinate_card_pos
import Theorems.Thm_QuantumParallelRepetition_exactReverseRightSide_coordinate_mem
import Theorems.Thm_QuantumParallelRepetition_exactReverseBobConditionalSeedWeight_nonneg
import Theorems.Thm_QuantumParallelRepetition_exactReverseBobConditionalSeedWeight_sum
import Theorems.Thm_QuantumParallelRepetition_exactReverseBobUniformMarkedSeed_sum
import Theorems.Thm_QuantumParallelRepetition_reweightedSeedPrefixEntropyIncrement_eq_actual_atom_sum
import Theorems.Thm_QuantumParallelRepetition_exactBobSourceConditionalInformation_eq_joint_atom_sum
import Theorems.Thm_QuantumParallelRepetition_exactReverseBobActualMarkedEntropy_eq_source
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

open scoped ComplexOrder Matrix BigOperators InnerProductSpace
open Complex Matrix Finset

noncomputable section

open scoped BigOperators

variable {α : Type*} [Fintype α] [DecidableEq α]

omit [DecidableEq α] in
theorem fairPartitionWeight_pos : 0 < fairPartitionWeight α := by
  unfold fairPartitionWeight
  positivity

@[simp] theorem reversePartitionWeight_empty :
    reversePartitionWeight (α := α) ∅ = 0 := by
  simp [reversePartitionWeight]

theorem reversePartitionWeight_pos_iff
    (hα : 0 < Fintype.card α) (s : Finset α) :
    0 < reversePartitionWeight s ↔ s.Nonempty := by
  constructor
  · intro hs
    apply Finset.card_pos.mp
    by_contra hcard
    have hzero : s.card = 0 := Nat.eq_zero_of_not_pos hcard
    simp [reversePartitionWeight, hzero] at hs
  · intro hs
    unfold reversePartitionWeight
    have hcard : 0 < s.card := Finset.card_pos.mpr hs
    exact mul_pos fairPartitionWeight_pos
      (div_pos
        (mul_pos (by norm_num) (by exact_mod_cast hcard))
        (by exact_mod_cast hα))

end

noncomputable section

open scoped BigOperators

set_option backward.isDefEq.respectTransparency false
set_option maxHeartbeats 1800000
set_option maxRecDepth 2048

attribute [local instance] Classical.propDecidable

@[simp] theorem exactReverseBobContextAt_actual
    {M : Type*} [Fintype M] [DecidableEq M]
    (seed : ExactForwardSeed M) :
    exactReverseBobContextAt
        (exactReverseRightSide seed) seed =
      exactReverseBobContext seed := by
  simp [exactReverseBobContextAt]

variable {X Y A B : Type*}
variable [Fintype X] [Fintype Y] [Fintype A] [Fintype B]

end

noncomputable section

open scoped BigOperators

set_option backward.isDefEq.respectTransparency false
set_option maxHeartbeats 1800000
set_option maxRecDepth 2048

open QuantumParallelRepetition.ClassicalInformation

attribute [local instance] Classical.propDecidable

theorem exactReverseBobConditionalSeedWeight_cancel
    {M : Type*} [Fintype M] [DecidableEq M]
    (nonempty : 0 < Fintype.card M)
    (side : Finset M) (seed : ExactForwardSeed M) :
    reversePartitionWeight side *
        exactReverseBobConditionalSeedWeight side seed =
      if exactReverseRightSide seed = side
      then exactSeedWeight seed else 0 := by
  by_cases hs : exactReverseRightSide seed = side
  · subst side
    have hpositive :
        0 < reversePartitionWeight
          (exactReverseRightSide seed) :=
      (reversePartitionWeight_pos_iff nonempty
        (exactReverseRightSide seed)).mpr
          ⟨seed.coordinate,
            exactReverseRightSide_coordinate_mem seed⟩
    simp only [exactReverseBobConditionalSeedWeight,
      ↓reduceIte]
    field_simp [hpositive.ne']
  · simp [exactReverseBobConditionalSeedWeight, hs]

@[simp] theorem exactReverseBobConditionalSeedLaw_weight
    {M : Type*} [Fintype M] [DecidableEq M]
    (nonempty : 0 < Fintype.card M)
    (side : Finset M) (hside : side.Nonempty)
    (seed : ExactForwardSeed M) :
    (exactReverseBobConditionalSeedLaw
      nonempty side).weight seed =
      exactReverseBobConditionalSeedWeight side seed := by
  simp [exactReverseBobConditionalSeedLaw, hside]

end

noncomputable section

open scoped BigOperators

set_option backward.isDefEq.respectTransparency false
set_option maxHeartbeats 2200000
set_option maxRecDepth 2048

open QuantumParallelRepetition.Pinsker
open QuantumParallelRepetition.ClassicalInformation

attribute [local instance] Classical.propDecidable

variable {X Y A B : Type*}
variable [Fintype X] [Fintype Y] [Fintype A] [Fintype B]

theorem reweightedSeedWinEventMass
    {K : Type*} [Fintype K]
    (seedLaw : FiniteEventLaw K)
    (G : Game X Y A B) (n : ℕ) (S : Strategy (G.repeat n))
    (D : Finset (Fin n)) :
    (reweightedSeedPriorEventLaw seedLaw G n S).eventMass
        (reweightedSeedWinEvent (K := K) G n D) =
      repeatedPostselectionMass G n S D := by
  classical
  let event := FiniteEventLaw.winEvent (repeatedCoordinateWin G n) D
  let original := strategyEventLaw (G.repeat n) S
  change
    (∑ q ∈ (Finset.univ.filter
      (fun q : K × ExactOutcome X Y A B n => q.2 ∈ event)),
        seedLaw.weight q.1 * original.weight q.2) =
      ∑ outcome ∈ event, original.weight outcome
  simp only [Finset.sum_filter]
  rw [Fintype.sum_prod_type]
  have hinner (k : K) :
      (∑ outcome : ExactOutcome X Y A B n,
        if outcome ∈ event
        then seedLaw.weight k * original.weight outcome
        else 0) =
      seedLaw.weight k *
        (∑ outcome : ExactOutcome X Y A B n,
          if outcome ∈ event then original.weight outcome else 0) := by
    rw [Finset.mul_sum]
    apply Finset.sum_congr rfl
    intro outcome _
    split_ifs <;> simp
  simp_rw [hinner]
  rw [← Finset.sum_mul, seedLaw.weight_sum]
  simp

theorem reweightedSeedPosterior_eq_product
    {K : Type*} [Fintype K]
    (seedLaw : FiniteEventLaw K)
    (G : Game X Y A B) (n : ℕ) (S : Strategy (G.repeat n))
    (D : Finset (Fin n))
    (q : K × ExactOutcome X Y A B n) :
    reweightedSeedPosterior seedLaw G n S D q =
      seedLaw.weight q.1 *
        repeatedConditionedOutcomeLaw G n S D q.2 := by
  classical
  let event := FiniteEventLaw.winEvent (repeatedCoordinateWin G n) D
  have hmass := reweightedSeedWinEventMass
    seedLaw G n S D
  by_cases hq : q.2 ∈ event
  · have hlift :
        q ∈ reweightedSeedWinEvent (K := K) G n D := by
      simpa [reweightedSeedWinEvent] using hq
    unfold reweightedSeedPosterior
      repeatedConditionedOutcomeLaw
      conditionedEventDistribution
    rw [if_pos hlift, if_pos hq]
    change
      (seedLaw.weight q.1 *
        (strategyEventLaw (G.repeat n) S).weight q.2) /
          (reweightedSeedPriorEventLaw seedLaw G n S).eventMass
            (reweightedSeedWinEvent (K := K) G n D) =
        seedLaw.weight q.1 *
          ((strategyEventLaw (G.repeat n) S).weight q.2 /
            repeatedPostselectionMass G n S D)
    rw [hmass]
    ring
  · have hlift :
        q ∉ reweightedSeedWinEvent (K := K) G n D := by
      simpa [reweightedSeedWinEvent] using hq
    change q.2 ∉
      FiniteEventLaw.winEvent (repeatedCoordinateWin G n) D at hq
    simp [reweightedSeedPosterior,
      repeatedConditionedOutcomeLaw,
      conditionedEventDistribution, hlift, hq]

end

noncomputable section

open scoped BigOperators

set_option backward.isDefEq.respectTransparency false
set_option maxHeartbeats 2200000
set_option maxRecDepth 2048

open QuantumParallelRepetition.Pinsker
open QuantumParallelRepetition.ClassicalInformation

attribute [local instance] Classical.propDecidable

theorem exactReverseBobConditionalSeedLaw_weight_cancel
    {M : Type*} [Fintype M] [DecidableEq M]
    (nonempty : 0 < Fintype.card M)
    (side : Finset M) (seed : ExactForwardSeed M) :
    reversePartitionWeight side *
        (exactReverseBobConditionalSeedLaw
          nonempty side).weight seed =
      if exactReverseRightSide seed = side
      then exactSeedWeight seed else 0 := by
  by_cases hside : side.Nonempty
  · rw [exactReverseBobConditionalSeedLaw_weight
      nonempty side hside seed]
    exact exactReverseBobConditionalSeedWeight_cancel
      nonempty side seed
  · have hempty : side = ∅ := Finset.not_nonempty_iff_eq_empty.mp hside
    subst side
    simp [exactReverseBobConditionalSeedLaw,
      exactReverseRightSide]

variable {X Y A B : Type*}
variable [Fintype X] [Fintype Y] [Fintype A] [Fintype B]

end

noncomputable section

open scoped BigOperators

set_option backward.isDefEq.respectTransparency false
set_option maxHeartbeats 4200000
set_option maxRecDepth 2048

open QuantumParallelRepetition.Pinsker
open QuantumParallelRepetition.ClassicalInformation

attribute [local instance] Classical.propDecidable

theorem exactReverseBobSideWeightedPrefix_sum
    {M : Type*} [Fintype M] [DecidableEq M]
    (nonempty : 0 < Fintype.card M)
    (score : (side : Finset M) →
      ExactForwardSeed M → Fin side.card → ℝ) :
    (∑ side : Finset M,
      reversePartitionWeight side *
        ((∑ marker : Fin side.card,
          ∑ seed : ExactForwardSeed M,
            (exactReverseBobConditionalSeedLaw
              nonempty side).weight seed *
              score side seed marker) /
          (side.card : ℝ))) =
      ∑ seed : ExactForwardSeed M,
        exactSeedWeight seed *
          ((∑ marker : Fin (exactReverseRightSide seed).card,
            score (exactReverseRightSide seed) seed marker) /
            ((exactReverseRightSide seed).card : ℝ)) := by
  classical
  calc
    (∑ side : Finset M,
      reversePartitionWeight side *
        ((∑ marker : Fin side.card,
          ∑ seed : ExactForwardSeed M,
            (exactReverseBobConditionalSeedLaw
              nonempty side).weight seed *
              score side seed marker) /
          (side.card : ℝ))) =
      ∑ side : Finset M,
        ∑ seed : ExactForwardSeed M,
          (reversePartitionWeight side *
            (exactReverseBobConditionalSeedLaw
              nonempty side).weight seed) *
            ((∑ marker : Fin side.card,
              score side seed marker) / (side.card : ℝ)) := by
        apply Finset.sum_congr rfl
        intro side _
        rw [Finset.sum_comm]
        simp_rw [← Finset.mul_sum]
        rw [Finset.sum_div, Finset.mul_sum]
        apply Finset.sum_congr rfl
        intro seed _
        ring
    _ = ∑ side : Finset M,
        ∑ seed : ExactForwardSeed M,
          (if exactReverseRightSide seed = side
           then exactSeedWeight seed else 0) *
            ((∑ marker : Fin side.card,
              score side seed marker) / (side.card : ℝ)) := by
        simp_rw [exactReverseBobConditionalSeedLaw_weight_cancel
          nonempty]
    _ = ∑ seed : ExactForwardSeed M,
        exactSeedWeight seed *
          ((∑ marker : Fin (exactReverseRightSide seed).card,
            score (exactReverseRightSide seed) seed marker) /
            ((exactReverseRightSide seed).card : ℝ)) := by
        rw [Finset.sum_comm]
        apply Finset.sum_congr rfl
        intro seed _
        simp

end

noncomputable section

open scoped BigOperators

set_option backward.isDefEq.respectTransparency false
set_option maxHeartbeats 8000000
set_option maxRecDepth 2048

open QuantumParallelRepetition.Pinsker
open QuantumParallelRepetition.ClassicalInformation

attribute [local instance] Classical.propDecidable

variable {X Y A B : Type*}
variable [Fintype X] [Fintype Y] [Fintype A] [Fintype B]

theorem exactReverseBobActualMarkedEntropyScore_eq_context
    (G : Game X Y A B) (n : ℕ) (S : Strategy (G.repeat n))
    (D : Finset (Fin n))
    (remaining : 0 < (Finset.univ \ D).card)
    (default : X)
    (side : Finset (SourceRemainingCoordinate D))
    (seed : ExactRemainingSeed D)
    (marker : Fin side.card)
    (outcome : ExactOutcome X Y A B n) :
    exactReverseBobActualMarkedEntropyScore
        G n S D remaining default side seed marker outcome =
      exactReverseBobContextMarkedEntropyScore
        G n S D remaining default side
        (exactReverseBobContextAt side seed)
        marker outcome := by
  rfl

theorem exactConditionedReverseBobPrefixEntropyIncrement_eq_markedOutcomeScore
    (G : Game X Y A B) (n : ℕ) (S : Strategy (G.repeat n))
    (D : Finset (Fin n))
    (remaining : 0 < (Finset.univ \ D).card)
    (positive : 0 < repeatedPostselectionMass G n S D)
    (side : Finset (SourceRemainingCoordinate D))
    (default : X)
    (marker : Fin side.card) :
    exactConditionedReverseBobPrefixEntropyIncrement
        G n S D remaining side default marker =
      ∑ seed : ExactRemainingSeed D,
        (exactReverseBobConditionalSeedLaw
          (exactRemainingCoordinate_card_pos
            D remaining) side).weight seed *
          ∑ outcome : ExactOutcome X Y A B n,
            repeatedConditionedOutcomeLaw G n S D outcome *
              exactReverseBobActualMarkedEntropyScore
                G n S D remaining default side seed marker outcome := by
  classical
  let law := exactReverseBobConditionalSeedLaw
    (exactRemainingCoordinate_card_pos D remaining) side
  let projection := exactReverseBobSourceProjection
    (X := X) (Y := Y) (A := A) (B := B) D side
  change
    reweightedSeedPrefixEntropyIncrement
        law G n S D projection default marker = _
  rw [reweightedSeedPrefixEntropyIncrement_eq_actual_atom_sum
    law G n S D positive projection default marker]
  rw [Fintype.sum_prod_type]
  apply Finset.sum_congr rfl
  intro seed _
  rw [Finset.mul_sum]
  apply Finset.sum_congr rfl
  intro outcome _
  rw [reweightedSeedPosterior_eq_product]
  change
    (law.weight seed *
      repeatedConditionedOutcomeLaw G n S D outcome) *
        exactReverseBobActualMarkedEntropyScore
          G n S D remaining default side seed marker outcome =
      law.weight seed *
        (repeatedConditionedOutcomeLaw G n S D outcome *
          exactReverseBobActualMarkedEntropyScore
            G n S D remaining default side seed marker outcome)
  ring

theorem exactConditionedReverseBobPrefixInformation_eq_sourceMarkerAverage
    (G : Game X Y A B) (n : ℕ) (S : Strategy (G.repeat n))
    (D : Finset (Fin n))
    (remaining : 0 < (Finset.univ \ D).card)
    (positive : 0 < repeatedPostselectionMass G n S D)
    (default : X) :
    exactConditionedReverseBobPrefixInformation
        G n S D remaining default =
      ∑ seed : ExactRemainingSeed D,
        exactSeedWeight seed *
          ((∑ marker : Fin (exactReverseRightSide seed).card,
            ∑ outcome : ExactOutcome X Y A B n,
              repeatedConditionedOutcomeLaw G n S D outcome *
                exactReverseBobActualMarkedEntropyScore
                  G n S D remaining default
                  (exactReverseRightSide seed)
                  seed marker outcome) /
            ((exactReverseRightSide seed).card : ℝ)) := by
  classical
  unfold exactConditionedReverseBobPrefixInformation
  simp_rw [
    exactConditionedReverseBobPrefixEntropyIncrement_eq_markedOutcomeScore
      G n S D remaining positive]
  exact exactReverseBobSideWeightedPrefix_sum
    (exactRemainingCoordinate_card_pos D remaining)
    (fun side seed marker =>
      ∑ outcome : ExactOutcome X Y A B n,
        repeatedConditionedOutcomeLaw G n S D outcome *
          exactReverseBobActualMarkedEntropyScore
            G n S D remaining default side seed marker outcome)

theorem exactConditionedReverseBobPrefixInformation_eq_sourceMarkedOutcomeScore
    (G : Game X Y A B) (n : ℕ) (S : Strategy (G.repeat n))
    (D : Finset (Fin n))
    (remaining : 0 < (Finset.univ \ D).card)
    (positive : 0 < repeatedPostselectionMass G n S D)
    (default : X) :
    exactConditionedReverseBobPrefixInformation
        G n S D remaining default =
      ∑ seed : ExactRemainingSeed D,
        exactSeedWeight seed *
          ∑ outcome : ExactOutcome X Y A B n,
            repeatedConditionedOutcomeLaw G n S D outcome *
              exactReverseBobContextMarkedEntropyScore
                G n S D remaining default
                (exactReverseRightSide seed)
                (exactReverseBobContext seed)
                ((exactReverseBobContext seed).sideRank
                  ⟨seed.coordinate,
                    exactReverseRightSide_coordinate_mem seed⟩)
                outcome := by
  calc
    exactConditionedReverseBobPrefixInformation
        G n S D remaining default =
      ∑ seed : ExactRemainingSeed D,
        exactSeedWeight seed *
          ((∑ marker : Fin (exactReverseRightSide seed).card,
            ∑ outcome : ExactOutcome X Y A B n,
              repeatedConditionedOutcomeLaw G n S D outcome *
                exactReverseBobActualMarkedEntropyScore
                  G n S D remaining default
                  (exactReverseRightSide seed)
                  seed marker outcome) /
            ((exactReverseRightSide seed).card : ℝ)) :=
      exactConditionedReverseBobPrefixInformation_eq_sourceMarkerAverage
        G n S D remaining positive default
    _ = _ := by
      simpa only [
        exactReverseBobActualMarkedEntropyScore_eq_context,
        exactReverseBobContextAt_actual] using
        (exactReverseBobUniformMarkedSeed_sum
          (exactRemainingCoordinate_card_pos D remaining)
          (fun side context marker =>
            ∑ outcome : ExactOutcome X Y A B n,
              repeatedConditionedOutcomeLaw G n S D outcome *
                exactReverseBobContextMarkedEntropyScore
                  G n S D remaining default side context marker outcome))

end

end QuantumParallelRepetition


open QuantumParallelRepetition
open scoped ComplexOrder Matrix BigOperators InnerProductSpace
open Complex Matrix Finset
open scoped BigOperators
set_option backward.isDefEq.respectTransparency false
set_option maxHeartbeats 8000000
set_option maxRecDepth 2048
open QuantumParallelRepetition.Pinsker
open QuantumParallelRepetition.ClassicalInformation
attribute [local instance] Classical.propDecidable
variable {X Y A B : Type*}
variable [Fintype X] [Fintype Y] [Fintype A] [Fintype B]

theorem solution
    (G : Game X Y A B) (n : ℕ) (S : Strategy (G.repeat n))
    (D : Finset (Fin n))
    (remaining : 0 < (Finset.univ \ D).card)
    (positive : 0 < repeatedPostselectionMass G n S D)
    (base : ExactHistoryFlag X Y A B D)
    (default : X) :
    ExactReverseBobConditionalHistoryIdentification
      G n S D remaining base default := by
  classical
  unfold ExactReverseBobConditionalHistoryIdentification
  rw [exactBobSourceConditionalInformation_eq_joint_atom_sum
    G n S D remaining positive base]
  rw [exactConditionedReverseBobPrefixInformation_eq_sourceMarkedOutcomeScore
    G n S D remaining positive default]
  rw [Fintype.sum_prod_type]
  apply Finset.sum_congr rfl
  intro seed _
  rw [Finset.mul_sum]
  apply Finset.sum_congr rfl
  intro outcome _
  by_cases zero :
      repeatedConditionedOutcomeLaw
        G n S D outcome = 0
  · simp [exactPostselectedJointLaw, zero]
  · rw [exactReverseBobActualMarkedEntropy_eq_source
      G n S D remaining positive default seed outcome zero]
    unfold exactPostselectedJointLaw
    ring
