import Definitions.Def_quantum_parallel_repetition_game
import Definitions.Def_qpr_core_24
import Theorems.Thm_QuantumParallelRepetition_exactSourceSharedFlagWeight_nonneg
import Theorems.Thm_QuantumParallelRepetition_exactSourceAliceSampleTuple_expectation
import Theorems.Thm_QuantumParallelRepetition_exactLocallySampleableLaw_absolute_continuous_roundedJA
import Theorems.Thm_QuantumParallelRepetition_exact_source_equation_twenty_seven_support_preserving_unconditional
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

open QuantumParallelRepetition.Pinsker

theorem finiteTotalVariation_comm
    {ι : Type*} [Fintype ι]
    (p q : ι → ℝ) :
    finiteTotalVariation p q = finiteTotalVariation q p := by
  unfold finiteTotalVariation
  congr 1
  apply Finset.sum_congr rfl
  intro i _
  exact abs_sub_comm (p i) (q i)

end

noncomputable section

open scoped BigOperators ComplexOrder Kronecker MatrixOrder
  Matrix.Norms.L2Operator InnerProductSpace

section ActualSharedFlag

variable {X Y A B dA dB J : Type}
variable [Fintype X] [Fintype Y] [Fintype A] [Fintype B]
variable [Fintype dA] [Fintype dB] [DecidableEq dA] [DecidableEq dB]
variable [Fintype J] [DecidableEq J]

theorem flaggedQuestionWeight_nonneg
    (G : Game X Y A B) (flagWeight : J → ℝ)
    (nonnegative : ∀ j, 0 ≤ flagWeight j)
    (ω : J × (X × Y)) :
    0 ≤ flaggedQuestionWeight G flagWeight ω :=
  mul_nonneg (nonnegative ω.1)
    (G.weight_nonneg ω.2.1 ω.2.2)

end ActualSharedFlag

end

noncomputable section

open scoped BigOperators

set_option backward.isDefEq.respectTransparency false
set_option maxHeartbeats 1500000
set_option maxRecDepth 2048

open QuantumParallelRepetition.Pinsker
open QuantumParallelRepetition.ClassicalSampling
open QuantumParallelRepetition.ClassicalInformation

attribute [local instance] Classical.propDecidable

variable {X Y A B : Type}
variable [Fintype X] [Fintype Y] [Fintype A] [Fintype B]

theorem exactUniformPermutationProbability_eq_indicator_sum
    {ι : Type*} [Fintype ι] [DecidableEq ι]
    (event : Equiv.Perm ι → Prop) :
    uniformPermutationProbability event =
      (∑ permutation : Equiv.Perm ι,
        if event permutation then (1 : ℝ) else 0) /
        (Fintype.card (Equiv.Perm ι) : ℝ) := by
  classical
  unfold uniformPermutationProbability
  congr 1
  exact (Finset.sum_boole (R := ℝ) event
    (Finset.univ : Finset (Equiv.Perm ι))).symm

theorem exactSourceSharedFlag_mismatch_eq
    (G : Game X Y A B) (n : ℕ)
    (D : Finset (Fin n)) (denominator : ℕ)
    (numerator : ExactLocalSamplerIndex X Y D →
      ExactHistoryFlag X Y A B D → ℕ)
    (nonempty : ∀ k,
      (rationalMarked denominator (numerator k)).Nonempty) :
    (∑ ω :
      ExactSourceSharedFlag X Y A B D denominator × (X × Y),
      flaggedQuestionWeight G
        (exactSourceSharedFlagWeight D denominator) ω *
        if exactSourcePermutationMatched
            D denominator numerator nonempty ω then 0 else 1) =
      exactLocallySampleablePermutationMismatch
        G n D denominator numerator nonempty := by
  classical
  have point
      (i : SourceRemainingCoordinate D) (x : X) (y : Y) :
      (∑ permutation :
        Equiv.Perm
          (ExactHistoryFlag X Y A B D × Fin denominator),
        ((1 / (Fintype.card (SourceRemainingCoordinate D) : ℝ)) *
          (1 / (Fintype.card
            (Equiv.Perm
              (ExactHistoryFlag X Y A B D ×
                Fin denominator)) : ℝ))) *
          G.questionWeight x y *
          if rationalPermutationOutput denominator
              (numerator (.inl (i, x)))
              (nonempty (.inl (i, x))) permutation =
            rationalPermutationOutput denominator
              (numerator (.inr (i, y)))
              (nonempty (.inr (i, y))) permutation
          then 0 else 1) =
        (G.questionWeight x y /
          (Fintype.card (SourceRemainingCoordinate D) : ℝ)) *
          uniformPermutationProbability
            (fun permutation :
              Equiv.Perm
                (ExactHistoryFlag X Y A B D ×
                  Fin denominator) =>
              rationalPermutationOutput denominator
                  (numerator (.inl (i, x)))
                  (nonempty (.inl (i, x))) permutation ≠
                rationalPermutationOutput denominator
                  (numerator (.inr (i, y)))
                  (nonempty (.inr (i, y))) permutation) := by
    have probability :=
      exactUniformPermutationProbability_eq_indicator_sum
        (ι := ExactHistoryFlag X Y A B D × Fin denominator)
        (fun permutation :
          Equiv.Perm
            (ExactHistoryFlag X Y A B D × Fin denominator) =>
          rationalPermutationOutput denominator
              (numerator (.inl (i, x)))
              (nonempty (.inl (i, x))) permutation ≠
            rationalPermutationOutput denominator
              (numerator (.inr (i, y)))
              (nonempty (.inr (i, y))) permutation)
    rw [probability, Finset.sum_div, Finset.mul_sum]
    apply Finset.sum_congr rfl
    intro permutation _
    by_cases matched :
      rationalPermutationOutput denominator
          (numerator (.inl (i, x)))
          (nonempty (.inl (i, x))) permutation =
        rationalPermutationOutput denominator
          (numerator (.inr (i, y)))
          (nonempty (.inr (i, y))) permutation
    · simp [matched]
    · simp [matched]
      ring
  unfold exactLocallySampleablePermutationMismatch
  simp only [flaggedQuestionWeight,
    exactSourceSharedFlagWeight,
    localQuestionWeight,
    exactSourcePermutationMatched,
    exactSourceAlicePermutationHistory,
    exactSourceBobPermutationHistory,
    Fintype.sum_prod_type, decide_eq_true_eq]
  apply Finset.sum_congr rfl
  intro i _
  rw [Finset.sum_comm]
  apply Finset.sum_congr rfl
  intro x _
  rw [Finset.sum_comm]
  apply Finset.sum_congr rfl
  intro y _
  exact point i x y

theorem exactSourceSharedFlag_mismatch_le
    (G : Game X Y A B) (n : ℕ)
    (D : Finset (Fin n)) (denominator : ℕ)
    (numerator : ExactLocalSamplerIndex X Y D →
      ExactHistoryFlag X Y A B D → ℕ)
    (nonempty : ∀ k,
      (rationalMarked denominator (numerator k)).Nonempty)
    {lam : ℝ}
    (mismatch :
      exactLocallySampleablePermutationMismatch
        G n D denominator numerator nonempty ≤ 4 * lam) :
    (∑ ω :
      ExactSourceSharedFlag X Y A B D denominator × (X × Y),
      flaggedQuestionWeight G
        (exactSourceSharedFlagWeight D denominator) ω *
        if exactSourcePermutationMatched
            D denominator numerator nonempty ω then 0 else 1) ≤
      4 * lam := by
  rw [exactSourceSharedFlag_mismatch_eq
    G n D denominator numerator nonempty]
  exact mismatch

end

noncomputable section

open scoped BigOperators

set_option backward.isDefEq.respectTransparency false
set_option maxHeartbeats 2800000
set_option maxRecDepth 2048

open QuantumParallelRepetition.Pinsker
open QuantumParallelRepetition.ClassicalInformation

attribute [local instance] Classical.propDecidable

theorem finiteGroupedExpectation_eq_atom_sum
    {Ω C : Type*} [Fintype Ω] [Fintype C] [DecidableEq C]
    (code : Ω → C) (mass : Ω → ℝ) (value : C → ℝ) :
    (∑ target : C, groupedMass code mass target * value target) =
      ∑ outcome : Ω, mass outcome * value (code outcome) := by
  classical
  unfold groupedMass
  calc
    (∑ target : C,
      (∑ outcome ∈
        (Finset.univ.filter fun outcome : Ω =>
          code outcome = target), mass outcome) * value target) =
      ∑ target : C,
        ∑ outcome ∈
          (Finset.univ.filter fun outcome : Ω =>
            code outcome = target),
          mass outcome * value (code outcome) := by
        apply Finset.sum_congr rfl
        intro target _
        rw [Finset.sum_mul]
        apply Finset.sum_congr rfl
        intro outcome houtcome
        have hcode : code outcome = target :=
          (Finset.mem_filter.mp houtcome).2
        rw [hcode]
    _ = ∑ outcome : Ω, mass outcome * value (code outcome) :=
      Finset.sum_fiberwise Finset.univ code
        (fun outcome => mass outcome * value (code outcome))

variable {X Y A B : Type*}
variable [Fintype X] [Fintype Y] [Fintype A] [Fintype B]

end

noncomputable section

open scoped BigOperators

set_option backward.isDefEq.respectTransparency false
set_option maxHeartbeats 1600000
set_option maxRecDepth 2048

open QuantumParallelRepetition.Pinsker
open QuantumParallelRepetition.ClassicalSampling
open QuantumParallelRepetition.ClassicalInformation

attribute [local instance] Classical.propDecidable

variable {X Y A B : Type}
variable [Fintype X] [Fintype Y] [Fintype A] [Fintype B]

theorem exactSourceAliceSampleTuple_groupedMass
    (G : Game X Y A B) (n : ℕ) (D : Finset (Fin n))
    (denominator : ℕ)
    (numerator : ExactLocalSamplerIndex X Y D →
      ExactHistoryFlag X Y A B D → ℕ)
    (normalized : ∀ k, (∑ r, numerator k r) = denominator)
    (nonempty : ∀ k,
      (rationalMarked denominator (numerator k)).Nonempty)
    (history : ExactLocallySampleableTuple X Y A B D) :
    groupedMass
      (exactSourceAliceSampleTuple
        D denominator numerator nonempty)
      (flaggedQuestionWeight G
        (exactSourceSharedFlagWeight D denominator)) history =
      exactLocallySampleableJARounded
        G n D denominator numerator history := by
  classical
  have expectation := exactSourceAliceSampleTuple_expectation
    G n D denominator numerator normalized nonempty
    (fun candidate => if candidate = history then (1 : ℝ) else 0)
  simpa [groupedMass, Finset.sum_filter, mul_ite] using expectation

end

noncomputable section

open scoped BigOperators

open QuantumParallelRepetition.Pinsker
open QuantumParallelRepetition.ClassicalInformation

attribute [local instance] Classical.propDecidable

variable {Ω T : Type*} [Fintype Ω] [Fintype T] [DecidableEq T]

theorem exactFiniteFiberLift_absolute_groupedMass
    (projection : Ω → T) (original : Ω → ℝ) (target : T → ℝ)
    (original_nonnegative : ∀ outcome, 0 ≤ original outcome)
    (supported : ∀ point,
      groupedMass projection original point = 0 → target point = 0)
    (point : T) :
    groupedMass projection
      (fun outcome =>
        |original outcome -
          exactFiniteFiberLift projection original target outcome|)
      point =
        |groupedMass projection original point - target point| := by
  classical
  by_cases empty : groupedMass projection original point = 0
  · have vanishes : ∀ outcome,
        outcome ∈ (Finset.univ.filter fun outcome : Ω =>
          projection outcome = point) → original outcome = 0 := by
      intro outcome member
      exact
        (Finset.sum_eq_zero_iff_of_nonneg
          (fun outcome _ => original_nonnegative outcome)).mp
          (show
            (∑ outcome ∈
              (Finset.univ.filter fun outcome : Ω =>
                projection outcome = point),
              original outcome) = 0 from empty)
          outcome member
    unfold groupedMass
    rw [Finset.sum_eq_zero (fun outcome member => by
      have zero := vanishes outcome member
      simp [exactFiniteFiberLift, zero])]
    simpa [supported point empty, groupedMass] using
      (congrArg abs empty).symm
  · have pointwise (outcome : Ω)
        (member : outcome ∈
          (Finset.univ.filter fun outcome : Ω =>
            projection outcome = point)) :
        |original outcome -
          exactFiniteFiberLift projection original target outcome| =
          original outcome *
            |groupedMass projection original point - target point| /
              groupedMass projection original point := by
      have same : projection outcome = point :=
        (Finset.mem_filter.mp member).2
      have mass_nonnegative :
          0 ≤ groupedMass projection original point := by
        unfold groupedMass
        exact Finset.sum_nonneg
          (fun outcome _ => original_nonnegative outcome)
      have mass_positive :
          0 < groupedMass projection original point :=
        lt_of_le_of_ne mass_nonnegative (Ne.symm empty)
      rw [exactFiniteFiberLift, same]
      rw [show original outcome -
          target point * original outcome /
            groupedMass projection original point =
          original outcome *
            (groupedMass projection original point - target point) /
              groupedMass projection original point by
            field_simp]
      rw [abs_div, abs_mul,
        abs_of_nonneg (original_nonnegative outcome),
        abs_of_pos mass_positive]
    change
      (∑ outcome ∈
        (Finset.univ.filter fun outcome : Ω =>
          projection outcome = point),
        |original outcome -
          exactFiniteFiberLift projection original target outcome|) =
        |groupedMass projection original point - target point|
    calc
      (∑ outcome ∈
        (Finset.univ.filter fun outcome : Ω =>
          projection outcome = point),
        |original outcome -
          exactFiniteFiberLift projection original target outcome|) =
        ∑ outcome ∈
          (Finset.univ.filter fun outcome : Ω =>
            projection outcome = point),
          original outcome *
            |groupedMass projection original point - target point| /
              groupedMass projection original point := by
          apply Finset.sum_congr rfl
          exact pointwise
      _ = groupedMass projection original point *
          |groupedMass projection original point - target point| /
            groupedMass projection original point := by
          rw [← Finset.sum_div, ← Finset.sum_mul]
          rfl
      _ = |groupedMass projection original point - target point| := by
          field_simp

theorem exactFiniteFiberLift_totalVariation
    (projection : Ω → T) (original : Ω → ℝ) (target : T → ℝ)
    (original_nonnegative : ∀ outcome, 0 ≤ original outcome)
    (supported : ∀ point,
      groupedMass projection original point = 0 → target point = 0) :
    finiteTotalVariation original
      (exactFiniteFiberLift projection original target) =
        finiteTotalVariation (groupedMass projection original) target := by
  unfold finiteTotalVariation
  congr 1
  calc
    (∑ outcome : Ω,
      |original outcome -
        exactFiniteFiberLift projection original target outcome|) =
      ∑ point : T,
        groupedMass projection
          (fun outcome =>
            |original outcome -
              exactFiniteFiberLift projection original target outcome|)
          point := by
        simpa using
          (finiteGroupedExpectation_eq_atom_sum projection
            (fun outcome =>
              |original outcome -
                exactFiniteFiberLift
                  projection original target outcome|)
            (fun _ => (1 : ℝ))).symm
    _ = ∑ point : T,
      |groupedMass projection original point - target point| := by
        simp_rw [exactFiniteFiberLift_absolute_groupedMass
          projection original target original_nonnegative supported]

end

noncomputable section

open scoped BigOperators ComplexOrder Kronecker MatrixOrder
  Matrix.Norms.L2Operator InnerProductSpace

set_option backward.isDefEq.respectTransparency false
set_option maxHeartbeats 1800000
set_option maxRecDepth 2048

open QuantumParallelRepetition.Pinsker
open QuantumParallelRepetition.ClassicalSampling
open QuantumParallelRepetition.ClassicalInformation

attribute [local instance] Classical.propDecidable

variable {X Y A B dA dB : Type}
variable [Fintype X] [Fintype Y] [Fintype A] [Fintype B]
variable [Fintype dA] [Fintype dB] [DecidableEq dA] [DecidableEq dB]

theorem exactSourceAliceFlagCoupling_supported
    (G : Game X Y A B) (n : ℕ) (S : Strategy (G.repeat n))
    (D : Finset (Fin n))
    (remaining : 0 < (Finset.univ \ D).card)
    (positive : 0 < repeatedPostselectionMass G n S D)
    (base : ExactHistoryFlag X Y A B D)
    (denominator : ℕ) (denominator_positive : 0 < denominator)
    (numerator : ExactLocalSamplerIndex X Y D →
      ExactHistoryFlag X Y A B D → ℕ)
    (normalized : ∀ index,
      (∑ history, numerator index history) = denominator)
    (preserves : ∀ index history,
      0 < exactLocalConditionalFamily D base
          (exactLocallySampleableLaw G n S D) index history →
        0 < numerator index history)
    (nonempty : ∀ index,
      (rationalMarked denominator (numerator index)).Nonempty)
    (history : ExactLocallySampleableTuple X Y A B D) :
    groupedMass
        (exactSourceAliceSampleTuple
          D denominator numerator nonempty)
        (flaggedQuestionWeight G
          (exactSourceSharedFlagWeight D denominator)) history = 0 →
      exactLocallySampleableLaw G n S D history = 0 := by
  rw [exactSourceAliceSampleTuple_groupedMass
    G n D denominator numerator normalized nonempty]
  exact exactLocallySampleableLaw_absolute_continuous_roundedJA
    G n S D remaining positive base denominator denominator_positive
    numerator preserves history

theorem exactSourceAliceFlagCoupling_totalVariation
    (G : Game X Y A B) (n : ℕ) (S : Strategy (G.repeat n))
    (D : Finset (Fin n))
    (remaining : 0 < (Finset.univ \ D).card)
    (positive : 0 < repeatedPostselectionMass G n S D)
    (base : ExactHistoryFlag X Y A B D)
    (denominator : ℕ) (denominator_positive : 0 < denominator)
    (numerator : ExactLocalSamplerIndex X Y D →
      ExactHistoryFlag X Y A B D → ℕ)
    (normalized : ∀ index,
      (∑ history, numerator index history) = denominator)
    (preserves : ∀ index history,
      0 < exactLocalConditionalFamily D base
          (exactLocallySampleableLaw G n S D) index history →
        0 < numerator index history)
    (nonempty : ∀ index,
      (rationalMarked denominator (numerator index)).Nonempty) :
    finiteTotalVariation
      (flaggedQuestionWeight G
        (exactSourceSharedFlagWeight D denominator))
      (exactSourceAliceFlagCoupling
        G n S D denominator numerator nonempty) =
      finiteTotalVariation
        (exactLocallySampleableJARounded
          G n D denominator numerator)
        (exactLocallySampleableLaw G n S D) := by
  change
    finiteTotalVariation
      (flaggedQuestionWeight G
        (exactSourceSharedFlagWeight D denominator))
      (exactFiniteFiberLift
        (exactSourceAliceSampleTuple
          D denominator numerator nonempty)
        (flaggedQuestionWeight G
          (exactSourceSharedFlagWeight D denominator))
        (exactLocallySampleableLaw G n S D)) = _
  rw [exactFiniteFiberLift_totalVariation
    (exactSourceAliceSampleTuple
      D denominator numerator nonempty)
    (flaggedQuestionWeight G
      (exactSourceSharedFlagWeight D denominator))
    (exactLocallySampleableLaw G n S D)
    (flaggedQuestionWeight_nonneg G
      (exactSourceSharedFlagWeight D denominator)
      (exactSourceSharedFlagWeight_nonneg D denominator))
    (exactSourceAliceFlagCoupling_supported
      G n S D remaining positive base denominator denominator_positive
      numerator normalized preserves nonempty)]
  congr 1
  funext history
  exact exactSourceAliceSampleTuple_groupedMass
    G n D denominator numerator normalized nonempty history

end

end QuantumParallelRepetition


open QuantumParallelRepetition
open scoped ComplexOrder Matrix BigOperators InnerProductSpace
open Complex Matrix Finset
open scoped BigOperators ComplexOrder Kronecker MatrixOrder
  Matrix.Norms.L2Operator InnerProductSpace
open QuantumParallelRepetition.ClassicalSampling
open QuantumParallelRepetition.Pinsker
attribute [local instance] Classical.propDecidable

theorem solution
    {X Y A B : Type}
    [Fintype X] [Fintype Y] [Fintype A] [Fintype B]
    (G : Game X Y A B)
    (n : ℕ) (S : Strategy (G.repeat n))
    (D : Finset (Fin n))
    (remaining : 0 < (Finset.univ \ D).card)
    (positive : 0 < repeatedPostselectionMass G n S D)
    (base : ExactHistoryFlag X Y A B D)
    (gamma : ℝ) (gamma_positive : 0 < gamma) :
    ∃ (denominator : ℕ), 0 < denominator ∧
      ∃ numerator : ExactLocalSamplerIndex X Y D →
        ExactHistoryFlag X Y A B D → ℕ,
        (∀ index, (∑ history, numerator index history) = denominator) ∧
        (∀ index history,
          0 < exactLocalConditionalFamily D base
              (exactLocallySampleableLaw G n S D)
              index history →
            0 < numerator index history) ∧
        ∃ nonempty : ∀ index,
            (rationalMarked denominator (numerator index)).Nonempty,
          QuantumParallelRepetition.Pinsker.finiteTotalVariation
              (flaggedQuestionWeight G
                (exactSourceSharedFlagWeight D denominator))
              (exactSourceAliceFlagCoupling
                G n S D denominator numerator nonempty) ≤
            exactSourcePinskerRate G n S D + gamma ∧
          (∑ outcome :
            ExactSourceSharedFlag X Y A B D denominator ×
              (X × Y),
            flaggedQuestionWeight G
              (exactSourceSharedFlagWeight D denominator) outcome *
              if exactSourcePermutationMatched
                  D denominator numerator nonempty outcome
                then 0 else 1) ≤
            4 * (exactSourcePinskerRate G n S D + gamma) := by
  classical
  obtain ⟨denominator, denominator_positive, numerator,
      numerator_normalized, _approximation, preserves, nonempty,
      rounded_alice, _rounded_bob, sampler_mismatch⟩ :=
    exact_source_equation_twenty_seven_support_preserving_unconditional
      G n S D remaining positive base gamma_positive
  refine ⟨denominator, denominator_positive, numerator,
    numerator_normalized, preserves, nonempty, ?_, ?_⟩
  · rw [exactSourceAliceFlagCoupling_totalVariation
      G n S D remaining positive base denominator denominator_positive
      numerator numerator_normalized preserves nonempty,
      finiteTotalVariation_comm]
    exact rounded_alice
  · exact exactSourceSharedFlag_mismatch_le
      G n D denominator numerator nonempty sampler_mismatch
