import Definitions.Def_quantum_parallel_repetition_game
import Definitions.Def_qpr_core_36
import Theorems.Thm_QuantumParallelRepetition_exactLeft_coordinate_not_mem
import Theorems.Thm_QuantumParallelRepetition_exactRemainingCoordinate_card_pos
import Theorems.Thm_QuantumParallelRepetition_exactReverseLeftSide_coordinate_mem
import Theorems.Thm_QuantumParallelRepetition_exactReverseLeftSide_card
import Theorems.Thm_QuantumParallelRepetition_exactReverseLeftSide_complement
import Theorems.Thm_QuantumParallelRepetition_exactReverseAliceConditionalSeedWeight_nonneg
import Theorems.Thm_QuantumParallelRepetition_exactReverseAliceConditionalSeedWeight_sum
import Theorems.Thm_QuantumParallelRepetition_exactReverseAlice_history_of_marked_context
import Theorems.Thm_QuantumParallelRepetition_exactConditionedReverseAliceNextPrior_marked_joint_factor
import Theorems.Thm_QuantumParallelRepetition_exactReverseAliceSideMarkedPosteriorConditional_eq_fixedSeedFiber
import Theorems.Thm_QuantumParallelRepetition_reweightedSeedPrefixPriorMarginal_ne_zero_of_positive_atom
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
set_option maxHeartbeats 1600000
set_option maxRecDepth 2048

open QuantumParallelRepetition.Pinsker
open QuantumParallelRepetition.ClassicalInformation
open QuantumParallelRepetition.ClassicalSampling

attribute [local instance] Classical.propDecidable

variable {X Y A B : Type*}
variable [Fintype X] [Fintype Y] [Fintype A] [Fintype B]

theorem conditionedEventDistribution_nonneg
    {Ω : Type*} [Fintype Ω]
    (law : FiniteEventLaw Ω) (event : Finset Ω)
    (positive : 0 < law.eventMass event) (ω : Ω) :
    0 ≤ conditionedEventDistribution law event ω := by
  unfold conditionedEventDistribution
  split_ifs
  · exact div_nonneg (law.weight_nonneg ω) positive.le
  · exact le_rfl

end

noncomputable section

open scoped BigOperators

set_option backward.isDefEq.respectTransparency false
set_option maxHeartbeats 1200000
set_option maxRecDepth 2048

open QuantumParallelRepetition.Pinsker
open QuantumParallelRepetition.ClassicalInformation

attribute [local instance] Classical.propDecidable

variable {X Y A B : Type*}
variable [Fintype X] [Fintype Y] [Fintype A] [Fintype B]

theorem exactGroupedMass_decidableEq_irrel
    {Ω κ : Type*} [Fintype Ω]
    (first second : DecidableEq κ)
    (projection : Ω → κ) (mass : Ω → ℝ) :
    @groupedMass Ω _ κ first projection mass =
      @groupedMass Ω _ κ second projection mass := by
  have h : first = second := Subsingleton.elim first second
  subst second
  rfl

end

noncomputable section

open scoped BigOperators

set_option backward.isDefEq.respectTransparency false
set_option maxHeartbeats 1200000
set_option maxRecDepth 2048

attribute [local instance] Classical.propDecidable

@[simp] theorem exactInsertedRank_marker
    {M : Type*} [DecidableEq M]
    (i : M) (side : Finset M) (not_mem : i ∉ side)
    (rank : {j : M // j ∈ side} ≃ Fin side.card)
    (cut : Fin (side.card + 1)) :
    exactInsertedRank i side not_mem rank cut
      ⟨i, Finset.mem_insert_self i side⟩ = cut := by
  simp [exactInsertedRank,
    Finset.subtypeInsertEquivOption]

theorem exactInsertedRank_old
    {M : Type*} [DecidableEq M]
    (i : M) (side : Finset M) (not_mem : i ∉ side)
    (rank : {j : M // j ∈ side} ≃ Fin side.card)
    (cut : Fin (side.card + 1))
    (j : {j : M // j ∈ side}) :
    exactInsertedRank i side not_mem rank cut
      ⟨j.val, Finset.mem_insert_of_mem j.property⟩ =
      cut.succAbove (rank j) := by
  have hne : j.val ≠ i := by
    intro h
    exact not_mem (h ▸ j.property)
  simp [exactInsertedRank,
    Finset.subtypeInsertEquivOption, hne]

@[simp] theorem exactReverseLeftRank_coordinate
    {M : Type*} [Fintype M] [DecidableEq M]
    (seed : ExactForwardSeed M) :
    exactReverseLeftRank seed
      ⟨seed.coordinate,
        exactReverseLeftSide_coordinate_mem seed⟩ =
      seed.leftCut := by
  exact exactInsertedRank_marker
    seed.coordinate
    (exactLeft seed.coordinate seed.partition)
    (exactLeft_coordinate_not_mem
      seed.coordinate seed.partition)
    (exactLeftRank seed) seed.leftCut

theorem exactInsertedPrefixBefore_marker_eq
    {M : Type*} [Fintype M] [DecidableEq M]
    (i : M) (side : Finset M) (not_mem : i ∉ side)
    (rank : {j : M // j ∈ side} ≃ Fin side.card)
    (cut : Fin (side.card + 1)) :
    exactInsertedPrefixBefore i side not_mem rank cut =
      (Finset.univ.filter
        (fun j : {j : M // j ∈ side} =>
          (rank j).val < cut.val)).image Subtype.val := by
  ext j
  constructor
  · intro hj
    obtain ⟨a, ha, haval⟩ := Finset.mem_image.mp hj
    have hlt :
        (exactInsertedRank i side not_mem rank cut a).val <
          cut.val := (Finset.mem_filter.mp ha).2
    have hne : a.val ≠ i := by
      intro heq
      have hsub : a = ⟨i, Finset.mem_insert_self i side⟩ :=
        Subtype.ext heq
      rw [hsub, exactInsertedRank_marker] at hlt
      exact (Nat.lt_irrefl cut.val) hlt
    have hside : a.val ∈ side :=
      (Finset.mem_insert.mp a.property).resolve_left hne
    let b : {j : M // j ∈ side} := ⟨a.val, hside⟩
    refine Finset.mem_image.mpr ⟨b, ?_, haval⟩
    apply Finset.mem_filter.mpr
    refine ⟨Finset.mem_univ b, ?_⟩
    have hbefore :
        cut.succAbove (rank b) < cut := by
      change (cut.succAbove (rank b)).val < cut.val
      rw [← exactInsertedRank_old
        i side not_mem rank cut b]
      exact hlt
    have hcast : (rank b).castSucc < cut :=
      (Fin.succAbove_lt_iff_castSucc_lt cut (rank b)).mp hbefore
    exact hcast
  · intro hj
    obtain ⟨b, hb, hbval⟩ := Finset.mem_image.mp hj
    have hlt : (rank b).val < cut.val :=
      (Finset.mem_filter.mp hb).2
    let a : {j : M // j ∈ insert i side} :=
      ⟨b.val, Finset.mem_insert_of_mem b.property⟩
    refine Finset.mem_image.mpr ⟨a, ?_, hbval⟩
    apply Finset.mem_filter.mpr
    refine ⟨Finset.mem_univ a, ?_⟩
    have hcast : (rank b).castSucc < cut := hlt
    have hbefore : cut.succAbove (rank b) < cut :=
      (Fin.succAbove_lt_iff_castSucc_lt cut (rank b)).mpr hcast
    rw [exactInsertedRank_old
      i side not_mem rank cut b]
    exact hbefore

theorem exactReverseLeftPrefixBeforeMarked_eq
    {M : Type*} [Fintype M] [DecidableEq M]
    (seed : ExactForwardSeed M) :
    exactReverseLeftPrefixBeforeMarked seed =
      exactLeftPrefix seed := by
  exact exactInsertedPrefixBefore_marker_eq
    seed.coordinate
    (exactLeft seed.coordinate seed.partition)
    (exactLeft_coordinate_not_mem
      seed.coordinate seed.partition)
    (exactLeftRank seed) seed.leftCut

end

noncomputable section

open scoped BigOperators

set_option backward.isDefEq.respectTransparency false
set_option maxHeartbeats 1800000
set_option maxRecDepth 2048

attribute [local instance] Classical.propDecidable

theorem exactOrderedSidePrefix_mem_iff
    {M : Type*} [Fintype M] [DecidableEq M]
    (side : Finset M)
    (rank : {j : M // j ∈ side} ≃ Fin side.card)
    (cut : Fin (side.card + 1)) (j : M) :
    j ∈ exactOrderedSidePrefix side rank cut ↔
      ∃ hj : j ∈ side, (rank ⟨j, hj⟩).val < cut.val := by
  constructor
  · intro hj
    obtain ⟨a, ha, haval⟩ := Finset.mem_image.mp hj
    have hside : j ∈ side := haval ▸ a.property
    refine ⟨hside, ?_⟩
    have hsub : (⟨j, hside⟩ : {j : M // j ∈ side}) = a :=
      Subtype.ext haval.symm
    rw [hsub]
    exact (Finset.mem_filter.mp ha).2
  · rintro ⟨hj, hlt⟩
    exact Finset.mem_image.mpr
      ⟨⟨j, hj⟩, Finset.mem_filter.mpr
        ⟨Finset.mem_univ _, hlt⟩, rfl⟩

theorem exactInsertedPrefixBefore_mem_iff
    {M : Type*} [Fintype M] [DecidableEq M]
    (i : M) (side : Finset M) (not_mem : i ∉ side)
    (rank : {j : M // j ∈ side} ≃ Fin side.card)
    (cut : Fin (side.card + 1)) (j : M) :
    j ∈ exactInsertedPrefixBefore i side not_mem rank cut ↔
      ∃ hj : j ∈ insert i side,
        (exactInsertedRank i side not_mem rank cut
          ⟨j, hj⟩).val < cut.val := by
  constructor
  · intro hj
    obtain ⟨a, ha, haval⟩ := Finset.mem_image.mp hj
    have hside : j ∈ insert i side := haval ▸ a.property
    refine ⟨hside, ?_⟩
    have hsub : (⟨j, hside⟩ : {j : M // j ∈ insert i side}) = a :=
      Subtype.ext haval.symm
    rw [hsub]
    exact (Finset.mem_filter.mp ha).2
  · rintro ⟨hj, hlt⟩
    exact Finset.mem_image.mpr
      ⟨⟨j, hj⟩, Finset.mem_filter.mpr
        ⟨Finset.mem_univ _, hlt⟩, rfl⟩

@[simp] theorem exactReverseAliceContextAt_actual
    {M : Type*} [Fintype M] [DecidableEq M]
    (seed : ExactForwardSeed M) :
    exactReverseAliceContextAt
        (exactReverseLeftSide seed) seed =
      exactReverseAliceContext seed := by
  simp [exactReverseAliceContextAt]

@[simp] theorem exactReverseAliceContext_otherPrefix
    {M : Type*} [Fintype M] [DecidableEq M]
    (seed : ExactForwardSeed M) :
    exactReverseContextOtherPrefix
        (exactReverseAliceContext seed) =
      exactRightPrefix seed := by
  rfl

variable {X Y A B : Type*}
variable [Fintype X] [Fintype Y] [Fintype A] [Fintype B]

@[simp] theorem exactReverseAliceContext_marked_rank
    {M : Type*} [Fintype M] [DecidableEq M]
    (seed : ExactForwardSeed M) :
    ((exactReverseAliceContext seed).sideRank
      ⟨seed.coordinate,
        exactReverseLeftSide_coordinate_mem seed⟩).val =
      seed.leftCut.val := by
  simp [exactReverseAliceContext,
    Equiv.trans_apply,
    exactReverseLeftRank_coordinate]

theorem exactReverseAliceContext_prefix_before_marked
    {M : Type*} [Fintype M] [DecidableEq M]
    (seed : ExactForwardSeed M) :
    exactReverseContextPrefixBefore
        (exactReverseAliceContext seed)
        ((exactReverseAliceContext seed).sideRank
          ⟨seed.coordinate,
            exactReverseLeftSide_coordinate_mem seed⟩) =
      exactLeftPrefix seed := by
  calc
    exactReverseContextPrefixBefore
        (exactReverseAliceContext seed)
        ((exactReverseAliceContext seed).sideRank
          ⟨seed.coordinate,
            exactReverseLeftSide_coordinate_mem seed⟩) =
        exactReverseLeftPrefixBeforeMarked seed := by
      change
        exactOrderedSidePrefix
          (exactReverseLeftSide seed)
          (exactReverseAliceContext seed).sideRank
          ((exactReverseAliceContext seed).sideRank
            ⟨seed.coordinate,
              exactReverseLeftSide_coordinate_mem seed⟩).castSucc =
        exactInsertedPrefixBefore seed.coordinate
          (exactLeft seed.coordinate seed.partition)
          (exactLeft_coordinate_not_mem
            seed.coordinate seed.partition)
          (exactLeftRank seed) seed.leftCut
      ext j
      simp only [exactOrderedSidePrefix_mem_iff,
        exactInsertedPrefixBefore_mem_iff]
      constructor
      · rintro ⟨hj, hlt⟩
        change j ∈ insert seed.coordinate
          (exactLeft seed.coordinate seed.partition) at hj
        refine ⟨hj, ?_⟩
        have hlt' :
            ((exactReverseAliceContext seed).sideRank
              ⟨j, hj⟩).val < seed.leftCut.val := by
          simpa only [Fin.val_castSucc,
            exactReverseAliceContext_marked_rank] using hlt
        convert hlt' using 1
        all_goals simp [exactReverseAliceContext,
            exactReverseLeftRank, Equiv.trans_apply]
        all_goals congr 2
      · rintro ⟨hj, hlt⟩
        change j ∈ exactReverseLeftSide seed at hj
        refine ⟨hj, ?_⟩
        have hlt' :
            ((exactReverseAliceContext seed).sideRank
              ⟨j, hj⟩).val < seed.leftCut.val := by
          convert hlt using 1
          all_goals simp [exactReverseAliceContext,
              exactReverseLeftRank, Equiv.trans_apply]
          all_goals congr 2
        simpa only [Fin.val_castSucc,
          exactReverseAliceContext_marked_rank] using hlt'
    _ = exactLeftPrefix seed :=
      exactReverseLeftPrefixBeforeMarked_eq seed

end

noncomputable section

open scoped BigOperators

set_option backward.isDefEq.respectTransparency false
set_option maxHeartbeats 1800000
set_option maxRecDepth 2048

open QuantumParallelRepetition.ClassicalInformation

attribute [local instance] Classical.propDecidable

@[simp] theorem exactReverseAliceConditionalSeedLaw_weight
    {M : Type*} [Fintype M] [DecidableEq M]
    (nonempty : 0 < Fintype.card M)
    (side : Finset M) (hside : side.Nonempty)
    (seed : ExactForwardSeed M) :
    (exactReverseAliceConditionalSeedLaw
      nonempty side).weight seed =
      exactReverseAliceConditionalSeedWeight side seed := by
  simp [exactReverseAliceConditionalSeedLaw, hside]

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
set_option maxHeartbeats 2400000
set_option maxRecDepth 2048

open QuantumParallelRepetition.Pinsker
open QuantumParallelRepetition.ClassicalInformation

attribute [local instance] Classical.propDecidable

variable {X Y A B : Type*}
variable [Fintype X] [Fintype Y] [Fintype A] [Fintype B]

theorem exactReverseAliceMaskedProjection_eq_of_history
    {n : ℕ} (D : Finset (Fin n))
    (default : Y)
    (q q' : ExactJointOutcome X Y A B D)
    (same_history :
      exactHistoryCode D q =
        exactHistoryCode D q')
    (same_question :
      q.2.1 q.1.coordinate.val =
        q'.2.1 q'.1.coordinate.val) :
    finitePrefixMask
      default
      ((exactReverseAliceContext q.1).sideRank
        ⟨q.1.coordinate,
          exactReverseLeftSide_coordinate_mem q.1⟩).castSucc
      (exactReverseAliceSourceProjection
        (X := X) (Y := Y) (A := A) (B := B)
        D (exactReverseLeftSide q.1) q) =
    finitePrefixMask
      default
      ((exactReverseAliceContext q.1).sideRank
        ⟨q.1.coordinate,
          exactReverseLeftSide_coordinate_mem q.1⟩).castSucc
      (exactReverseAliceSourceProjection
        (X := X) (Y := Y) (A := A) (B := B)
        D (exactReverseLeftSide q.1) q') := by
  rcases q with ⟨seed, outcome⟩
  rcases q' with ⟨seed', outcome'⟩
  have hseed : seed = seed' :=
    congrArg (fun r : ExactHistoryFlag X Y A B D => r.seed)
      same_history
  subst seed'
  have htuple := congrArg
    (exactHistoryFlagEquiv
      (X := X) (Y := Y) (A := A) (B := B) D)
    same_history
  change
    (⟨seed,
       (exactRevealCode D seed
         (outcome.1, outcome.2.1),
        (fun j : {j : Fin n // j ∈ D} => outcome.2.2.1 j.val),
        (fun j : {j : Fin n // j ∈ D} => outcome.2.2.2 j.val))⟩ :
      ExactHistoryFlagTuple X Y A B D) =
    (⟨seed,
       (exactRevealCode D seed
         (outcome'.1, outcome'.2.1),
        (fun j : {j : Fin n // j ∈ D} => outcome'.2.2.1 j.val),
        (fun j : {j : Fin n // j ∈ D} => outcome'.2.2.2 j.val))⟩ :
      ExactHistoryFlagTuple X Y A B D) at htuple
  have hpair := eq_of_heq (Sigma.mk.inj htuple).2
  have hreveal :
      exactRevealCode D seed
          (outcome.1, outcome.2.1) =
        exactRevealCode D seed
          (outcome'.1, outcome'.2.1) :=
    congrArg Prod.fst hpair
  have hac := congrArg
    (fun r : ExactRevealHistory X Y D seed =>
      r.aliceConditioned) hreveal
  have hbc := congrArg
    (fun r : ExactRevealHistory X Y D seed =>
      r.bobConditioned) hreveal
  have hal := congrArg
    (fun r : ExactRevealHistory X Y D seed =>
      r.aliceLeft) hreveal
  have hbr := congrArg
    (fun r : ExactRevealHistory X Y D seed =>
      r.bobRight) hreveal
  have hbl := congrArg
    (fun r : ExactRevealHistory X Y D seed =>
      r.bobLeftPrefix) hreveal
  have har := congrArg
    (fun r : ExactRevealHistory X Y D seed =>
      r.aliceRightPrefix) hreveal
  let side := exactReverseLeftSide seed
  let context := exactReverseAliceContext seed
  let marker : Fin side.card :=
    context.sideRank
      ⟨seed.coordinate,
        exactReverseLeftSide_coordinate_mem seed⟩
  have hmarker : marker.val = seed.leftCut.val := by
    exact exactReverseAliceContext_marked_rank seed
  have hfixed :
      (exactReverseAliceSourceProjection
        (X := X) (Y := Y) (A := A) (B := B)
        D side (seed, outcome)).1 =
      (exactReverseAliceSourceProjection
        (X := X) (Y := Y) (A := A) (B := B)
        D side (seed, outcome')).1 := by
    simp only [side, exactReverseAliceSourceProjection,
      exactReverseAliceContextAt_actual]
    apply Sigma.ext
    · rfl
    · apply heq_of_eq
      apply Prod.ext
      · exact hac
      apply Prod.ext
      · exact hbc
      apply Prod.ext
      · funext j
        by_cases hj : j.val = seed.coordinate
        · have hval : j.val.val = seed.coordinate.val :=
            congrArg Subtype.val hj
          simpa [hval] using same_question
        · have hleft :
              j.val ∈ exactLeft
                seed.coordinate seed.partition := by
            have hmem :
                j.val ∈ insert seed.coordinate
                  (exactLeft seed.coordinate seed.partition) :=
              j.property
            exact (Finset.mem_insert.mp hmem).resolve_left hj
          exact congrFun hal ⟨j.val, hleft⟩
      apply Prod.ext
      · funext j
        have hj :
            j.val ∈ exactRight
              seed.coordinate seed.partition := by
          simpa [exactReverseAliceContextAt,
            exactReverseAliceContext] using j.property
        exact congrFun hbr ⟨j.val, hj⟩
      funext j
      have hj : j.val ∈ exactRightPrefix seed := by
        have hprefix :
            exactReverseContextOtherPrefix
              (exactReverseAliceContextAt
                (exactReverseLeftSide seed) seed) =
              exactRightPrefix seed := by
          rw [exactReverseAliceContextAt_actual,
            exactReverseAliceContext_otherPrefix]
        exact (Finset.ext_iff.mp hprefix j.val).mp j.property
      exact congrFun har ⟨j.val, hj⟩
  apply Prod.ext
  · exact hfixed
  · funext k
    by_cases hk : k.val < marker.val
    · have hbefore :
          (context.sideRank.symm k).val ∈
            exactLeftPrefix seed := by
        rw [← exactReverseAliceContext_prefix_before_marked seed]
        apply (exactOrderedSidePrefix_mem_iff
          side context.sideRank marker.castSucc
          (context.sideRank.symm k).val).mpr
        refine ⟨(context.sideRank.symm k).property, ?_⟩
        change
          (context.sideRank (context.sideRank.symm k)).val <
            marker.val
        rw [Equiv.apply_symm_apply]
        exact hk
      have hy := congrFun hbl
        ⟨(context.sideRank.symm k).val, hbefore⟩
      change
        outcome.2.1 (context.sideRank.symm k).val.val =
          outcome'.2.1 (context.sideRank.symm k).val.val at hy
      have hkcut : k.val < seed.leftCut.val := by
        rw [← hmarker]
        exact hk
      simpa [finitePrefixMask,
        exactReverseAliceSourceProjection,
        exactReverseAliceContextAt,
        side, context, marker, hkcut] using hy
    · have hkcut : ¬ k.val < seed.leftCut.val := by
        rw [← hmarker]
        exact hk
      simp [finitePrefixMask,
        exactReverseAliceSourceProjection,
        exactReverseAliceContextAt,
        hkcut]

end

noncomputable section

open scoped BigOperators

set_option backward.isDefEq.respectTransparency false
set_option maxHeartbeats 1800000
set_option maxRecDepth 2048

open QuantumParallelRepetition.Pinsker
open QuantumParallelRepetition.ClassicalInformation

attribute [local instance] Classical.propDecidable

theorem groupedMass_product_injective_seed
    {K Ω C T : Type*}
    [Fintype K] [Fintype Ω] [Fintype C] [Fintype T]
    [DecidableEq C] [DecidableEq T]
    (code : K → C) (injective : Function.Injective code)
    (projection : K → Ω → T)
    (seedWeight : K → ℝ) (outcomeWeight : Ω → ℝ)
    (seed : K) (target : T) :
    groupedMass
        (fun q : K × Ω => (code q.1, projection q.1 q.2))
        (fun q : K × Ω => seedWeight q.1 * outcomeWeight q.2)
        (code seed, target) =
      seedWeight seed *
        groupedMass (projection seed) outcomeWeight target := by
  classical
  unfold groupedMass
  rw [Finset.sum_filter, Fintype.sum_prod_type,
    Finset.sum_filter, Finset.mul_sum]
  simp [injective.eq_iff]
  rw [Finset.sum_eq_single seed]
  · simp
  · intro other _ different
    simp [different]
  · simp

variable {X Y A B : Type*}
variable [Fintype X] [Fintype Y] [Fintype A] [Fintype B]

end

noncomputable section

open scoped BigOperators

set_option backward.isDefEq.respectTransparency false
set_option maxHeartbeats 2800000
set_option maxRecDepth 2048

open QuantumParallelRepetition.Pinsker
open QuantumParallelRepetition.ClassicalInformation

attribute [local instance] Classical.propDecidable

theorem jointConditional_groupedMass_eq_of_fiber
    {Ω C D V : Type*}
    [Fintype Ω] [Fintype C] [Fintype D] [Fintype V]
    [DecidableEq (C × V)] [DecidableEq (D × V)]
    (mass : Ω → ℝ)
    (left : Ω → C) (right : Ω → D) (next : Ω → V)
    (leftTarget : C) (rightTarget : D)
    (same_fiber : ∀ outcome : Ω,
      left outcome = leftTarget ↔ right outcome = rightTarget) :
    jointConditional
        (groupedMass (fun outcome => (left outcome, next outcome)) mass)
        leftTarget =
      jointConditional
        (groupedMass (fun outcome => (right outcome, next outcome)) mass)
        rightTarget := by
  classical
  have hatom (value : V) :
      groupedMass
          (fun outcome => (left outcome, next outcome)) mass
          (leftTarget, value) =
        groupedMass
          (fun outcome => (right outcome, next outcome)) mass
          (rightTarget, value) := by
    unfold groupedMass
    apply Finset.sum_congr
    · ext outcome
      simp only [Finset.mem_filter, Finset.mem_univ, true_and,
        Prod.mk.injEq]
      exact and_congr_left (fun _ => same_fiber outcome)
    · intro outcome _
      rfl
  have hmarginal :
      jointFirstMarginal
          (groupedMass
            (fun outcome => (left outcome, next outcome)) mass)
          leftTarget =
        jointFirstMarginal
          (groupedMass
            (fun outcome => (right outcome, next outcome)) mass)
          rightTarget := by
    unfold jointFirstMarginal
    apply Finset.sum_congr rfl
    intro value _
    exact hatom value
  funext value
  unfold jointConditional
  rw [hatom value, hmarginal]

variable {X Y A B : Type*}
variable [Fintype X] [Fintype Y] [Fintype A] [Fintype B]

theorem exactConditionedAnswerFlag_eq_of_history
    (G : Game X Y A B) (n : ℕ) (S : Strategy (G.repeat n))
    (D : Finset (Fin n))
    (q q' : ExactJointOutcome X Y A B D)
    (same_history :
      exactHistoryCode D q =
        exactHistoryCode D q') :
    repeatedConditionedAnswerFlag G n S D q.2 =
      repeatedConditionedAnswerFlag G n S D q'.2 := by
  apply Prod.ext
  · exact congrArg
      (fun r : ExactHistoryFlag X Y A B D => r.aliceAnswer)
      same_history
  · exact congrArg
      (fun r : ExactHistoryFlag X Y A B D => r.bobAnswer)
      same_history

theorem exactReverseAliceMarkedHistoryContext_eq_of_history
    (G : Game X Y A B) (n : ℕ) (S : Strategy (G.repeat n))
    (D : Finset (Fin n)) (default : Y)
    (seed : ExactRemainingSeed D)
    (outcome outcome' : ExactOutcome X Y A B n)
    (same_history :
      exactHistoryCode D (seed, outcome) =
        exactHistoryCode D (seed, outcome'))
    (same_question :
      outcome.1 seed.coordinate.val =
        outcome'.1 seed.coordinate.val) :
    exactReverseAliceMarkedHistoryContext
        G n S D default seed outcome =
      exactReverseAliceMarkedHistoryContext
        G n S D default seed outcome' := by
  have hmask := exactReverseAliceMaskedProjection_eq_of_history
    (X := X) (Y := Y) (A := A) (B := B)
    D default (seed, outcome) (seed, outcome')
    same_history same_question
  have hflag := exactConditionedAnswerFlag_eq_of_history
    G n S D (seed, outcome) (seed, outcome') same_history
  have hfixed :
      (exactReverseAliceSourceProjection
        (X := X) (Y := Y) (A := A) (B := B)
        D (exactReverseLeftSide seed) (seed, outcome)).1 =
      (exactReverseAliceSourceProjection
        (X := X) (Y := Y) (A := A) (B := B)
        D (exactReverseLeftSide seed) (seed, outcome')).1 := by
    have h := congrArg
      (fun t :
        ExactReverseAliceFixedInformation X Y D
          (exactReverseLeftSide seed) ×
            (Fin (exactReverseLeftSide seed).card → Y) =>
        t.1) hmask
    simpa only [finitePrefixMask] using h
  have hprefix :
      (finitePrefixMask default
        ((exactReverseAliceContext seed).sideRank
          ⟨seed.coordinate,
            exactReverseLeftSide_coordinate_mem seed⟩).castSucc
        (exactReverseAliceSourceProjection
          (X := X) (Y := Y) (A := A) (B := B)
          D (exactReverseLeftSide seed) (seed, outcome))).2 =
      (finitePrefixMask default
        ((exactReverseAliceContext seed).sideRank
          ⟨seed.coordinate,
            exactReverseLeftSide_coordinate_mem seed⟩).castSucc
        (exactReverseAliceSourceProjection
          (X := X) (Y := Y) (A := A) (B := B)
          D (exactReverseLeftSide seed) (seed, outcome'))).2 := by
    exact congrArg
      (fun t :
        ExactReverseAliceFixedInformation X Y D
          (exactReverseLeftSide seed) ×
            (Fin (exactReverseLeftSide seed).card → Y) =>
        t.2) hmask
  unfold exactReverseAliceMarkedHistoryContext
  dsimp
  apply Prod.ext
  · apply Prod.ext
    · exact hfixed
    · exact hflag
  · exact hprefix

theorem exactReverseAliceMarkedHistoryContext_fiber_iff
    (G : Game X Y A B) (n : ℕ) (S : Strategy (G.repeat n))
    (D : Finset (Fin n)) (default : Y)
    (seed : ExactRemainingSeed D)
    (outcome reference : ExactOutcome X Y A B n) :
    (exactReverseAliceMarkedHistoryContext
        G n S D default seed outcome =
      exactReverseAliceMarkedHistoryContext
        G n S D default seed reference) ↔
      (outcome.1 seed.coordinate.val,
        exactHistoryCode D (seed, outcome)) =
      (reference.1 seed.coordinate.val,
        exactHistoryCode D (seed, reference)) := by
  constructor
  · intro same
    obtain ⟨hquestion, hhistory⟩ :=
      exactReverseAlice_history_of_marked_context
        G n S D default seed outcome reference same
    exact Prod.ext hquestion hhistory
  · intro same
    apply exactReverseAliceMarkedHistoryContext_eq_of_history
      G n S D default seed outcome reference
    · exact congrArg Prod.snd same
    · exact congrArg Prod.fst same

theorem exactReverseAliceMarkedPosteriorConditional_eq_sourceFiber
    (G : Game X Y A B) (n : ℕ) (S : Strategy (G.repeat n))
    (D : Finset (Fin n)) (default : Y)
    (seed : ExactRemainingSeed D)
    (reference : ExactOutcome X Y A B n) :
    jointConditional
        (groupedMass
          (fun outcome : ExactOutcome X Y A B n =>
            (exactReverseAliceMarkedHistoryContext
              G n S D default seed outcome,
              outcome.2.1 seed.coordinate.val))
          (repeatedConditionedOutcomeLaw G n S D))
        (exactReverseAliceMarkedHistoryContext
          G n S D default seed reference) =
      jointConditional
        (groupedMass
          (fun outcome : ExactOutcome X Y A B n =>
            ((outcome.1 seed.coordinate.val,
              exactHistoryCode D (seed, outcome)),
              outcome.2.1 seed.coordinate.val))
          (repeatedConditionedOutcomeLaw G n S D))
        (reference.1 seed.coordinate.val,
          exactHistoryCode D (seed, reference)) := by
  apply jointConditional_groupedMass_eq_of_fiber
    (repeatedConditionedOutcomeLaw G n S D)
    (fun outcome : ExactOutcome X Y A B n =>
      exactReverseAliceMarkedHistoryContext
        G n S D default seed outcome)
    (fun outcome : ExactOutcome X Y A B n =>
      (outcome.1 seed.coordinate.val,
        exactHistoryCode D (seed, outcome)))
    (fun outcome : ExactOutcome X Y A B n =>
      outcome.2.1 seed.coordinate.val)
    (exactReverseAliceMarkedHistoryContext
      G n S D default seed reference)
    (reference.1 seed.coordinate.val,
      exactHistoryCode D (seed, reference))
  intro outcome
  exact exactReverseAliceMarkedHistoryContext_fiber_iff
    G n S D default seed outcome reference

end

noncomputable section

open scoped BigOperators

set_option backward.isDefEq.respectTransparency false
set_option maxHeartbeats 3600000
set_option maxRecDepth 2048

open QuantumParallelRepetition.Pinsker
open QuantumParallelRepetition.ClassicalInformation

attribute [local instance] Classical.propDecidable

variable {X Y A B : Type*}
variable [Fintype X] [Fintype Y] [Fintype A] [Fintype B]

theorem exactAliceInformationPosterior_eq_jointPushforward
    (G : Game X Y A B) (n : ℕ) (S : Strategy (G.repeat n))
    (D : Finset (Fin n)) :
    exactAliceInformationPosterior G n S D =
      groupedMass
        (exactAliceSourceAtomCode
          (X := X) (Y := Y) (A := A) (B := B) D)
        (exactPostselectedJointLaw G n S D) := by
  classical
  funext target
  unfold exactAliceInformationPosterior
    exactLocallySampleableLaw
    exactSourcePushforward groupedMass
  apply Finset.sum_congr
  · ext point
    simp only [Finset.mem_filter, Finset.mem_univ, true_and]
    change
      (exactLocallySampleableCode D point =
        (exactAliceInformationEquiv
          (X := X) (Y := Y) (A := A) (B := B) D).symm target) ↔
      (exactAliceInformationEquiv
        (X := X) (Y := Y) (A := A) (B := B) D)
          (exactLocallySampleableCode D point) = target
    exact
      ((exactAliceInformationEquiv
        (X := X) (Y := Y) (A := A) (B := B) D).apply_eq_iff_eq_symm_apply).symm
  · intro point _
    rfl

end

noncomputable section

open scoped BigOperators

set_option backward.isDefEq.respectTransparency false
set_option maxHeartbeats 4200000
set_option maxRecDepth 2048

open QuantumParallelRepetition.Pinsker
open QuantumParallelRepetition.ClassicalInformation

attribute [local instance] Classical.propDecidable

theorem exactSeedWeight_pos_of_seed
    {M : Type*} [Fintype M] [DecidableEq M]
    (seed : ExactForwardSeed M) :
    0 < exactSeedWeight seed := by
  have nonempty : 0 < Fintype.card M :=
    Fintype.card_pos_iff.mpr ⟨seed.coordinate⟩
  have bits : 0 < Fintype.card (M → Bool) :=
    Fintype.card_pos_iff.mpr ⟨fun _ => false⟩
  have left :
      0 < Fintype.card
        (Equiv.Perm
          {j : M // j ∈
            exactLeft seed.coordinate seed.partition}) :=
    Fintype.card_pos_iff.mpr ⟨Equiv.refl _⟩
  have right :
      0 < Fintype.card
        (Equiv.Perm
          {j : M // j ∈
            exactRight seed.coordinate seed.partition}) :=
    Fintype.card_pos_iff.mpr ⟨Equiv.refl _⟩
  unfold exactSeedWeight
  positivity

theorem jointConditional_product_context_seed
    {K Ω C V : Type*}
    [Fintype K] [Fintype Ω] [Fintype C] [Fintype V]
    (context : K → Ω → C)
    (next : K → Ω → V)
    (seedWeight : K → ℝ)
    (outcomeWeight : Ω → ℝ)
    (seed : K) (target : C)
    (nonzero : seedWeight seed ≠ 0) :
    jointConditional
        (groupedMass
          (fun q : K × Ω =>
            ((q.1, context q.1 q.2), next q.1 q.2))
          (fun q : K × Ω =>
            seedWeight q.1 * outcomeWeight q.2))
        (seed, target) =
      jointConditional
        (groupedMass
          (fun outcome : Ω =>
            (context seed outcome, next seed outcome))
          outcomeWeight)
        target := by
  classical
  have atom (value : V) :
      groupedMass
          (fun q : K × Ω =>
            ((q.1, context q.1 q.2), next q.1 q.2))
          (fun q : K × Ω =>
            seedWeight q.1 * outcomeWeight q.2)
          ((seed, target), value) =
        seedWeight seed *
          groupedMass
            (fun outcome : Ω =>
              (context seed outcome, next seed outcome))
            outcomeWeight (target, value) := by
    calc
      groupedMass
          (fun q : K × Ω =>
            ((q.1, context q.1 q.2), next q.1 q.2))
          (fun q : K × Ω =>
            seedWeight q.1 * outcomeWeight q.2)
          ((seed, target), value) =
        groupedMass
          (fun q : K × Ω =>
            (q.1, (context q.1 q.2, next q.1 q.2)))
          (fun q : K × Ω =>
            seedWeight q.1 * outcomeWeight q.2)
          (seed, (target, value)) := by
            unfold groupedMass
            apply Finset.sum_congr
            · ext q
              simp [and_assoc]
            · intro q _
              rfl
      _ = seedWeight seed *
          groupedMass
            (fun outcome : Ω =>
              (context seed outcome, next seed outcome))
            outcomeWeight (target, value) := by
            exact groupedMass_product_injective_seed
              (fun k : K => k) (fun _ _ equal => equal)
              (fun k outcome =>
                (context k outcome, next k outcome))
              seedWeight outcomeWeight seed (target, value)
  funext value
  unfold jointConditional jointFirstMarginal
  simp_rw [atom]
  rw [← Finset.mul_sum]
  exact mul_div_mul_left _ _ nonzero

variable {X Y A B : Type*}
variable [Fintype X] [Fintype Y] [Fintype A] [Fintype B]

theorem exactAliceSourceContextNextPosterior_eq_groupedMass
    (G : Game X Y A B) (n : ℕ) (S : Strategy (G.repeat n))
    (D : Finset (Fin n)) :
    (fun atom :
      ((SourceRemainingCoordinate D × X) ×
        ExactHistoryFlag X Y A B D) × Y =>
      exactAliceInformationPosterior G n S D
        (atom.1.1, (atom.1.2, atom.2))) =
      groupedMass
        (fun point : ExactJointOutcome X Y A B D =>
          (((point.1.coordinate,
              point.2.1 point.1.coordinate.val),
            exactHistoryCode D point),
            point.2.2.1 point.1.coordinate.val))
        (exactPostselectedJointLaw G n S D) := by
  classical
  funext atom
  rcases atom with ⟨⟨⟨coordinate, question⟩, history⟩, next⟩
  rw [exactAliceInformationPosterior_eq_jointPushforward]
  unfold groupedMass
  apply Finset.sum_congr
  · ext point
    simp [exactAliceSourceAtomCode, and_assoc]
  · intro point _
    rfl

theorem exactAliceSourcePosteriorConditional_eq_fixedSeedFiber
    (G : Game X Y A B) (n : ℕ) (S : Strategy (G.repeat n))
    (D : Finset (Fin n))
    (seed : ExactRemainingSeed D)
    (reference : ExactOutcome X Y A B n) :
    jointConditional
        (fun atom :
          ((SourceRemainingCoordinate D × X) ×
            ExactHistoryFlag X Y A B D) × Y =>
          exactAliceInformationPosterior G n S D
            (atom.1.1, (atom.1.2, atom.2)))
        ((seed.coordinate, reference.1 seed.coordinate.val),
          exactHistoryCode D (seed, reference)) =
      jointConditional
        (groupedMass
          (fun outcome : ExactOutcome X Y A B n =>
            ((outcome.1 seed.coordinate.val,
              exactHistoryCode D (seed, outcome)),
              outcome.2.1 seed.coordinate.val))
          (repeatedConditionedOutcomeLaw G n S D))
        (reference.1 seed.coordinate.val,
          exactHistoryCode D (seed, reference)) := by
  classical
  rw [exactAliceSourceContextNextPosterior_eq_groupedMass]
  have fiber :
      jointConditional
          (groupedMass
            (fun point : ExactJointOutcome X Y A B D =>
              (((point.1.coordinate,
                  point.2.1 point.1.coordinate.val),
                exactHistoryCode D point),
                point.2.2.1 point.1.coordinate.val))
            (exactPostselectedJointLaw G n S D))
          ((seed.coordinate, reference.1 seed.coordinate.val),
            exactHistoryCode D (seed, reference)) =
        jointConditional
          (groupedMass
            (fun point : ExactJointOutcome X Y A B D =>
              ((point.1,
                (point.2.1 point.1.coordinate.val,
                  exactHistoryCode D point)),
                point.2.2.1 point.1.coordinate.val))
            (exactPostselectedJointLaw G n S D))
          (seed,
            (reference.1 seed.coordinate.val,
              exactHistoryCode D (seed, reference))) := by
    apply jointConditional_groupedMass_eq_of_fiber
      (exactPostselectedJointLaw G n S D)
      (fun point : ExactJointOutcome X Y A B D =>
        ((point.1.coordinate,
          point.2.1 point.1.coordinate.val),
          exactHistoryCode D point))
      (fun point : ExactJointOutcome X Y A B D =>
        (point.1,
          (point.2.1 point.1.coordinate.val,
            exactHistoryCode D point)))
      (fun point : ExactJointOutcome X Y A B D =>
        point.2.2.1 point.1.coordinate.val)
      ((seed.coordinate, reference.1 seed.coordinate.val),
        exactHistoryCode D (seed, reference))
      (seed,
        (reference.1 seed.coordinate.val,
          exactHistoryCode D (seed, reference)))
    intro point
    constructor
    · intro same
      have history :
          exactHistoryCode D point =
            exactHistoryCode D (seed, reference) :=
        congrArg Prod.snd same
      have seed_eq : point.1 = seed := by
        simpa only [exactHistoryCode] using
          congrArg
            (fun r : ExactHistoryFlag X Y A B D => r.seed)
            history
      have question :
          point.2.1 point.1.coordinate.val =
            reference.1 seed.coordinate.val :=
        congrArg
          (fun t :
            (SourceRemainingCoordinate D × X) ×
              ExactHistoryFlag X Y A B D => t.1.2)
          same
      exact Prod.ext seed_eq (Prod.ext question history)
    · intro same
      have seed_eq : point.1 = seed := congrArg Prod.fst same
      have question :
          point.2.1 point.1.coordinate.val =
            reference.1 seed.coordinate.val :=
        congrArg
          (fun t : ExactRemainingSeed D ×
            (X × ExactHistoryFlag X Y A B D) => t.2.1)
          same
      have history :
          exactHistoryCode D point =
            exactHistoryCode D (seed, reference) :=
        congrArg
          (fun t : ExactRemainingSeed D ×
            (X × ExactHistoryFlag X Y A B D) => t.2.2)
          same
      apply Prod.ext
      · exact Prod.ext
          (congrArg
            (fun s : ExactRemainingSeed D => s.coordinate)
            seed_eq)
          question
      · exact history
  calc
    _ = jointConditional
          (groupedMass
            (fun point : ExactJointOutcome X Y A B D =>
              ((point.1,
                (point.2.1 point.1.coordinate.val,
                  exactHistoryCode D point)),
                point.2.2.1 point.1.coordinate.val))
            (exactPostselectedJointLaw G n S D))
          (seed,
            (reference.1 seed.coordinate.val,
              exactHistoryCode D (seed, reference))) := fiber
    _ = _ := by
      unfold exactPostselectedJointLaw
      convert (jointConditional_product_context_seed
          (fun (source : ExactRemainingSeed D)
            (outcome : ExactOutcome X Y A B n) =>
            (outcome.1 source.coordinate.val,
              exactHistoryCode D (source, outcome)))
          (fun (source : ExactRemainingSeed D)
            (outcome : ExactOutcome X Y A B n) =>
            outcome.2.1 source.coordinate.val)
          exactSeedWeight
          (repeatedConditionedOutcomeLaw G n S D)
          seed
          (reference.1 seed.coordinate.val,
            exactHistoryCode D (seed, reference))
          (ne_of_gt (exactSeedWeight_pos_of_seed seed))) using 1
      · congr 1
        exact exactGroupedMass_decidableEq_irrel _ _ _ _
      · congr 1
        exact exactGroupedMass_decidableEq_irrel _ _ _ _

theorem exactReverseAliceMarkedPosteriorConditional_eq_sourcePosterior
    (G : Game X Y A B) (n : ℕ) (S : Strategy (G.repeat n))
    (D : Finset (Fin n)) (default : Y)
    (seed : ExactRemainingSeed D)
    (reference : ExactOutcome X Y A B n) :
    jointConditional
        (groupedMass
          (fun outcome : ExactOutcome X Y A B n =>
            (exactReverseAliceMarkedHistoryContext
              G n S D default seed outcome,
              outcome.2.1 seed.coordinate.val))
          (repeatedConditionedOutcomeLaw G n S D))
        (exactReverseAliceMarkedHistoryContext
          G n S D default seed reference) =
      jointConditional
        (fun atom :
          ((SourceRemainingCoordinate D × X) ×
            ExactHistoryFlag X Y A B D) × Y =>
          exactAliceInformationPosterior G n S D
            (atom.1.1, (atom.1.2, atom.2)))
        ((seed.coordinate, reference.1 seed.coordinate.val),
          exactHistoryCode D (seed, reference)) := by
  exact
    (exactReverseAliceMarkedPosteriorConditional_eq_sourceFiber
      G n S D default seed reference).trans
      (exactAliceSourcePosteriorConditional_eq_fixedSeedFiber
        G n S D seed reference).symm

end

noncomputable section

open scoped BigOperators

set_option backward.isDefEq.respectTransparency false
set_option maxHeartbeats 5000000
set_option maxRecDepth 2048

open QuantumParallelRepetition.Pinsker
open QuantumParallelRepetition.ClassicalInformation

attribute [local instance] Classical.propDecidable

variable {X Y A B : Type*}
variable [Fintype X] [Fintype Y] [Fintype A] [Fintype B]

theorem exactConditionedReverseAliceNextPrior_marked_conditional
    (G : Game X Y A B) (n : ℕ) (S : Strategy (G.repeat n))
    (D : Finset (Fin n))
    (remaining : 0 < (Finset.univ \ D).card)
    (side : Finset (SourceRemainingCoordinate D))
    (default : Y) (marker : Fin side.card)
    (target : ExactReverseAliceNextContext X Y A B D side)
    (supported :
      jointFirstMarginal
        (groupedMass
          (exactPrefixNextCode default marker)
          (exactConditionedReverseAliceNextPrior
            G n S D remaining side))
        target ≠ 0) :
    jointConditional
        (groupedMass
          (exactPrefixNextCode default marker)
          (exactConditionedReverseAliceNextPrior
            G n S D remaining side))
        target =
      G.conditionalYGivenX
        (target.1.1.2.2.2.1
          (target.1.1.1.sideRank.symm marker)) := by
  funext next
  unfold jointConditional
  rw [exactConditionedReverseAliceNextPrior_marked_joint_factor
    G n S D remaining side default marker target next]
  exact mul_div_cancel_right₀ _ supported

theorem exactReverseAliceMarkedPriorConditional_eq_game
    (G : Game X Y A B) (n : ℕ) (S : Strategy (G.repeat n))
    (D : Finset (Fin n))
    (remaining : 0 < (Finset.univ \ D).card)
    (default : Y)
    (seed : ExactRemainingSeed D)
    (reference : ExactOutcome X Y A B n)
    (supported :
      jointFirstMarginal
        (groupedMass
          (exactPrefixNextCode default
            ((exactReverseAliceContext seed).sideRank
              ⟨seed.coordinate,
                exactReverseLeftSide_coordinate_mem seed⟩))
          (exactConditionedReverseAliceNextPrior
            G n S D remaining
            (exactReverseLeftSide seed)))
        (exactReverseAliceMarkedHistoryContext
          G n S D default seed reference) ≠ 0) :
    jointConditional
        (groupedMass
          (exactPrefixNextCode default
            ((exactReverseAliceContext seed).sideRank
              ⟨seed.coordinate,
                exactReverseLeftSide_coordinate_mem seed⟩))
          (exactConditionedReverseAliceNextPrior
            G n S D remaining
            (exactReverseLeftSide seed)))
        (exactReverseAliceMarkedHistoryContext
          G n S D default seed reference) =
      G.conditionalYGivenX
        (reference.1 seed.coordinate.val) := by
  have actual := exactConditionedReverseAliceNextPrior_marked_conditional
    G n S D remaining
    (exactReverseLeftSide seed) default
    ((exactReverseAliceContext seed).sideRank
      ⟨seed.coordinate,
        exactReverseLeftSide_coordinate_mem seed⟩)
    (exactReverseAliceMarkedHistoryContext
      G n S D default seed reference) supported
  simpa [exactReverseAliceMarkedHistoryContext,
    finitePrefixMask,
    exactReverseAliceSourceProjection] using actual

end

noncomputable section

open scoped BigOperators

set_option backward.isDefEq.respectTransparency false
set_option maxHeartbeats 6000000
set_option maxRecDepth 2048

open QuantumParallelRepetition.Pinsker
open QuantumParallelRepetition.ClassicalInformation

attribute [local instance] Classical.propDecidable

variable {X Y A B : Type*}
variable [Fintype X] [Fintype Y] [Fintype A] [Fintype B]

theorem exactReverseAliceActualConditionalSeedWeight_pos
    {n : ℕ} (D : Finset (Fin n))
    (remaining : 0 < (Finset.univ \ D).card)
    (seed : ExactRemainingSeed D) :
    0 <
      (exactReverseAliceConditionalSeedLaw
        (exactRemainingCoordinate_card_pos D remaining)
        (exactReverseLeftSide seed)).weight seed := by
  have side :
      (exactReverseLeftSide seed).Nonempty :=
    ⟨seed.coordinate,
      exactReverseLeftSide_coordinate_mem seed⟩
  rw [exactReverseAliceConditionalSeedLaw_weight
    (exactRemainingCoordinate_card_pos D remaining)
    (exactReverseLeftSide seed) side seed]
  unfold exactReverseAliceConditionalSeedWeight
  simp only [↓reduceIte]
  exact div_pos
    (exactSeedWeight_pos_of_seed seed)
    ((reversePartitionWeight_pos_iff
      (exactRemainingCoordinate_card_pos D remaining)
      (exactReverseLeftSide seed)).mpr side)

theorem exactReverseAliceMaskedOutcomeContext_actual
    (G : Game X Y A B) (n : ℕ) (S : Strategy (G.repeat n))
    (D : Finset (Fin n)) (default : Y)
    (seed : ExactRemainingSeed D)
    (outcome : ExactOutcome X Y A B n) :
    exactReverseAliceMaskedOutcomeContext
        G n S D (exactReverseLeftSide seed) default
        ((exactReverseAliceContext seed).sideRank
          ⟨seed.coordinate,
            exactReverseLeftSide_coordinate_mem seed⟩)
        (exactReverseAliceContextAt
          (exactReverseLeftSide seed) seed)
        outcome =
      exactReverseAliceMarkedHistoryContext
        G n S D default seed outcome := by
  simp [exactReverseAliceMaskedOutcomeContext,
    exactReverseAliceContextOutcomeProjection,
    exactReverseAliceMarkedHistoryContext,
    exactReverseAliceSourceProjection]

theorem exactReverseAliceSideMarkedPosteriorConditional_eq_sourcePosterior
    (G : Game X Y A B) (n : ℕ) (S : Strategy (G.repeat n))
    (D : Finset (Fin n))
    (remaining : 0 < (Finset.univ \ D).card)
    (default : Y)
    (seed : ExactRemainingSeed D)
    (reference : ExactOutcome X Y A B n) :
    jointConditional
        (groupedMass
          (exactPrefixNextCode default
            ((exactReverseAliceContext seed).sideRank
              ⟨seed.coordinate,
                exactReverseLeftSide_coordinate_mem seed⟩))
          (exactConditionedReverseAliceNextJoint
            G n S D remaining (exactReverseLeftSide seed)))
        (exactReverseAliceMarkedHistoryContext
          G n S D default seed reference) =
      jointConditional
        (fun atom :
          ((SourceRemainingCoordinate D × X) ×
            ExactHistoryFlag X Y A B D) × Y =>
          exactAliceInformationPosterior G n S D
            (atom.1.1, (atom.1.2, atom.2)))
        ((seed.coordinate, reference.1 seed.coordinate.val),
          exactHistoryCode D (seed, reference)) := by
  exact
    (exactReverseAliceSideMarkedPosteriorConditional_eq_fixedSeedFiber
      G n S D remaining default seed reference).trans
      (exactReverseAliceMarkedPosteriorConditional_eq_sourcePosterior
        G n S D default seed reference)

end

noncomputable section

open scoped BigOperators

set_option backward.isDefEq.respectTransparency false
set_option maxHeartbeats 8000000
set_option maxRecDepth 3072

open QuantumParallelRepetition.Pinsker
open QuantumParallelRepetition.ClassicalInformation

attribute [local instance] Classical.propDecidable

variable {X Y A B : Type*}
variable [Fintype X] [Fintype Y] [Fintype A] [Fintype B]

theorem repeatedConditionedOutcomeLaw_pos_of_ne_zero
    (G : Game X Y A B) (n : ℕ) (S : Strategy (G.repeat n))
    (D : Finset (Fin n))
    (positive : 0 < repeatedPostselectionMass G n S D)
    (outcome : ExactOutcome X Y A B n)
    (nonzero : repeatedConditionedOutcomeLaw
      G n S D outcome ≠ 0) :
    0 < repeatedConditionedOutcomeLaw G n S D outcome := by
  have nonnegative :
      0 ≤ repeatedConditionedOutcomeLaw
        G n S D outcome := by
    exact conditionedEventDistribution_nonneg
      (strategyEventLaw (G.repeat n) S)
      (FiniteEventLaw.winEvent (repeatedCoordinateWin G n) D)
      positive outcome
  exact lt_of_le_of_ne nonnegative nonzero.symm

theorem exactReverseAliceMarkedPriorMarginal_ne_zero_of_outcome
    (G : Game X Y A B) (n : ℕ) (S : Strategy (G.repeat n))
    (D : Finset (Fin n))
    (remaining : 0 < (Finset.univ \ D).card)
    (positive : 0 < repeatedPostselectionMass G n S D)
    (default : Y)
    (seed : ExactRemainingSeed D)
    (outcome : ExactOutcome X Y A B n)
    (outcome_nonzero :
      repeatedConditionedOutcomeLaw G n S D outcome ≠ 0) :
    jointFirstMarginal
        (groupedMass
          (exactPrefixNextCode default
            ((exactReverseAliceContext seed).sideRank
              ⟨seed.coordinate,
                exactReverseLeftSide_coordinate_mem seed⟩))
          (exactConditionedReverseAliceNextPrior
            G n S D remaining
            (exactReverseLeftSide seed)))
        (exactReverseAliceMarkedHistoryContext
          G n S D default seed outcome) ≠ 0 := by
  classical
  let side := exactReverseLeftSide seed
  let marker : Fin side.card :=
    (exactReverseAliceContext seed).sideRank
      ⟨seed.coordinate,
        exactReverseLeftSide_coordinate_mem seed⟩
  let law := exactReverseAliceConditionalSeedLaw
    (exactRemainingCoordinate_card_pos D remaining) side
  let projection := exactReverseAliceSourceProjection
    (X := X) (Y := Y) (A := A) (B := B) D side
  have atom_positive :
      0 < reweightedSeedPosterior
        law G n S D (seed, outcome) := by
    rw [reweightedSeedPosterior_eq_product]
    exact mul_pos
      (exactReverseAliceActualConditionalSeedWeight_pos
        D remaining seed)
      (repeatedConditionedOutcomeLaw_pos_of_ne_zero
        G n S D positive outcome outcome_nonzero)
  have supported :=
    reweightedSeedPrefixPriorMarginal_ne_zero_of_positive_atom
      law G n S D positive projection default marker
      (seed, outcome) atom_positive
  simpa [law, projection, side, marker,
    exactConditionedReverseAliceNextPrior,
    exactReverseAliceMarkedHistoryContext,
    exactReverseAliceSourceProjection] using supported

end

end QuantumParallelRepetition


open QuantumParallelRepetition
open scoped ComplexOrder Matrix BigOperators InnerProductSpace
open Complex Matrix Finset
open scoped BigOperators
set_option backward.isDefEq.respectTransparency false
set_option maxHeartbeats 8000000
set_option maxRecDepth 3072
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
    (default : Y)
    (seed : ExactRemainingSeed D) :
    exactReverseAliceContextMarkerInformation
        G n S D remaining default
        (exactReverseLeftSide seed)
        (exactReverseAliceContext seed)
        ((exactReverseAliceContext seed).sideRank
          ⟨seed.coordinate,
            exactReverseLeftSide_coordinate_mem seed⟩) =
      exactAliceSourceSeedBornInformation
        G n S D seed := by
  classical
  unfold exactReverseAliceContextMarkerInformation
    exactAliceSourceSeedBornInformation
  apply Finset.sum_congr rfl
  intro outcome _
  by_cases zero :
      repeatedConditionedOutcomeLaw G n S D outcome = 0
  · simp [zero]
  · have actual_context :
        exactReverseAliceMaskedOutcomeContext
            G n S D (exactReverseLeftSide seed) default
            ((exactReverseAliceContext seed).sideRank
              ⟨seed.coordinate,
                exactReverseLeftSide_coordinate_mem seed⟩)
            (exactReverseAliceContext seed) outcome =
          exactReverseAliceMarkedHistoryContext
            G n S D default seed outcome := by
        simpa only [exactReverseAliceContextAt_actual] using
          exactReverseAliceMaskedOutcomeContext_actual
            G n S D default seed outcome
    rw [actual_context]
    congr 1
    exact congrArg₂ finiteRelativeEntropy
      (exactReverseAliceSideMarkedPosteriorConditional_eq_sourcePosterior
        G n S D remaining default seed outcome)
      (exactReverseAliceMarkedPriorConditional_eq_game
        G n S D remaining default seed outcome
        (exactReverseAliceMarkedPriorMarginal_ne_zero_of_outcome
          G n S D remaining positive default seed outcome zero))
