import Definitions.Def_quantum_parallel_repetition_game
import Definitions.Def_qpr_core_22
import Theorems.Thm_QuantumParallelRepetition_exactSeedWeight_nonneg
import Theorems.Thm_QuantumParallelRepetition_exactAlicePurificationFamily_posSemidef
import Theorems.Thm_QuantumParallelRepetition_exactBobPurificationFamily_posSemidef
import Theorems.Thm_QuantumParallelRepetition_exactPaddedDefault_norm
import Theorems.Thm_QuantumParallelRepetition_exactGlobalHistoryVector_norm
import Theorems.Thm_QuantumParallelRepetition_exactLocallySampleableLaw_eq_fair_born
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

variable {E : Type*} [NormedAddCommGroup E] [NormedSpace ℝ E]

attribute [local instance] Classical.propDecidable

theorem normalizeOrDefault_sub_le
    (fallback u v : E)
    (hfallback : ‖fallback‖ = 1)
    (hu : u ≠ 0) :
    ‖normalizeOrDefault fallback u - normalizeOrDefault fallback v‖ ≤
      2 * ‖u - v‖ / ‖u‖ := by
  classical
  have hupos : 0 < ‖u‖ := norm_pos_iff.mpr hu
  by_cases hv : v = 0
  · simp only [normalizeOrDefault, hu, ↓reduceIte, hv, sub_zero]
    calc
      ‖NormedSpace.normalize u - fallback‖ ≤
          ‖NormedSpace.normalize u‖ + ‖fallback‖ := norm_sub_le _ _
      _ = 2 := by rw [NormedSpace.norm_normalize hu, hfallback]; norm_num
      _ = 2 * ‖u‖ / ‖u‖ := by field_simp
  · simp only [normalizeOrDefault, hu, hv, ↓reduceIte]
    let u₀ := NormedSpace.normalize u
    let v₀ := NormedSpace.normalize v
    have hv₀ : ‖v₀‖ = 1 := NormedSpace.norm_normalize hv
    have hrevu : ‖u‖ • u₀ = u :=
      NormedSpace.norm_smul_normalize u
    have hrevv : ‖v‖ • v₀ = v :=
      NormedSpace.norm_smul_normalize v
    have hreverse : |‖v‖ - ‖u‖| ≤ ‖u - v‖ := by
      simpa [norm_sub_rev] using abs_norm_sub_norm_le v u
    have hscaled :
        ‖u‖ * ‖u₀ - v₀‖ = ‖u - ‖u‖ • v₀‖ := by
      calc
        ‖u‖ * ‖u₀ - v₀‖ = ‖‖u‖ • (u₀ - v₀)‖ := by
          rw [norm_smul, Real.norm_eq_abs,
            abs_of_nonneg (norm_nonneg u)]
        _ = ‖u - ‖u‖ • v₀‖ := by rw [smul_sub, hrevu]
    have hsecond : ‖v - ‖u‖ • v₀‖ = |‖v‖ - ‖u‖| := by
      calc
        ‖v - ‖u‖ • v₀‖ = ‖‖v‖ • v₀ - ‖u‖ • v₀‖ := by
          rw [hrevv]
        _ = ‖(‖v‖ - ‖u‖) • v₀‖ := by rw [sub_smul]
        _ = |‖v‖ - ‖u‖| := by
          rw [norm_smul, Real.norm_eq_abs, hv₀, mul_one]
    have hbound : ‖u‖ * ‖u₀ - v₀‖ ≤ 2 * ‖u - v‖ := by
      rw [hscaled]
      calc
        ‖u - ‖u‖ • v₀‖ ≤
            ‖u - v‖ + ‖v - ‖u‖ • v₀‖ := by
              have hsplit :
                  u - ‖u‖ • v₀ = (u - v) + (v - ‖u‖ • v₀) := by
                abel
              rw [hsplit]
              exact norm_add_le _ _
        _ = ‖u - v‖ + |‖v‖ - ‖u‖| := by rw [hsecond]
        _ ≤ 2 * ‖u - v‖ := by linarith
    change ‖u₀ - v₀‖ ≤ 2 * ‖u - v‖ / ‖u‖
    exact (le_div_iff₀ hupos).mpr (by nlinarith)

end

noncomputable section

open WithLp
open scoped BigOperators ComplexOrder Kronecker MatrixOrder
  Matrix.Norms.L2Operator InnerProductSpace

set_option backward.isDefEq.respectTransparency false
set_option maxHeartbeats 1800000
set_option maxRecDepth 2048

attribute [local instance] Classical.propDecidable

variable {X Y A B : Type*}
variable [Fintype X] [Fintype Y] [Fintype A] [Fintype B]

theorem exactPriorQuestionWeight_nonneg
    (G : Game X Y A B) (n : ℕ)
    (q : ExactFullQuestion X Y n) :
    0 ≤ exactPriorQuestionWeight G n q :=
  (G.repeat n).weight_nonneg q.1 q.2

theorem exactRevealMass_nonneg
    (G : Game X Y A B) (n : ℕ)
    (D : Finset (Fin n))
    (seed : ExactRemainingSeed D)
    (history : ExactRevealHistory X Y D seed) :
    0 ≤ exactRevealMass G n D seed history := by
  unfold exactRevealMass
  apply Finset.sum_nonneg
  intro q _
  split
  · exact exactPriorQuestionWeight_nonneg G n q
  · exact le_rfl

theorem exactPaddedVector_norm
    (G : Game X Y A B) (n : ℕ) (S : Strategy (G.repeat n))
    (D : Finset (Fin n))
    (r : ExactHistoryFlag X Y A B D)
    (z : EuclideanSpace ℂ
      (ExactAliceLocalIndex G n S D r ×
        ExactBobLocalIndex G n S D r)) :
    ‖exactPaddedVector G n S D r z‖ = ‖z‖ := by
  classical
  have hsquare :
      ‖exactPaddedVector G n S D r z‖ ^ 2 = ‖z‖ ^ 2 := by
    simp [EuclideanSpace.norm_sq_eq, exactPaddedVector,
      Fintype.sum_prod_type, Fintype.sum_sum_type]
  nlinarith [norm_nonneg (exactPaddedVector G n S D r z),
    norm_nonneg z]

theorem exactPaddedVector_sub
    (G : Game X Y A B) (n : ℕ) (S : Strategy (G.repeat n))
    (D : Finset (Fin n))
    (r : ExactHistoryFlag X Y A B D)
    (u v : EuclideanSpace ℂ
      (ExactAliceLocalIndex G n S D r ×
        ExactBobLocalIndex G n S D r)) :
    exactPaddedVector G n S D r (u - v) =
      exactPaddedVector G n S D r u -
        exactPaddedVector G n S D r v := by
  classical
  ext q
  rcases q with ⟨a, b⟩
  rcases a with a | (a | a) <;>
    rcases b with b | (b | b) <;>
    simp [exactPaddedVector]

end

noncomputable section

open scoped BigOperators ComplexOrder Kronecker MatrixOrder
  Matrix.Norms.L2Operator InnerProductSpace

set_option backward.isDefEq.respectTransparency false
set_option maxHeartbeats 1200000
set_option maxRecDepth 2048

section ActualPurificationHistories

variable {X Y A B : Type*}
variable [Fintype X] [Fintype Y] [Fintype A] [Fintype B]

theorem bornWeighted_normalized_distance
    {E : Type*} [NormedAddCommGroup E] [NormedSpace ℝ E]
    (fallback u v : E) (hfallback : ‖fallback‖ = 1) :
    ‖u‖ ^ 2 *
      ‖normalizeOrDefault fallback u -
        normalizeOrDefault fallback v‖ ^ 2 ≤
      4 * ‖u - v‖ ^ 2 := by
  by_cases hu : u = 0
  · simp [hu]
  · have hu_pos : 0 < ‖u‖ := norm_pos_iff.mpr hu
    have hdist := normalizeOrDefault_sub_le fallback u v hfallback hu
    have hscaled :
        ‖normalizeOrDefault fallback u -
          normalizeOrDefault fallback v‖ * ‖u‖ ≤
          2 * ‖u - v‖ :=
      (le_div_iff₀ hu_pos).mp hdist
    have hsquare := mul_self_le_mul_self
      (mul_nonneg (norm_nonneg _) (norm_nonneg u)) hscaled
    nlinarith [sq_nonneg
      (‖normalizeOrDefault fallback u -
        normalizeOrDefault fallback v‖ * ‖u‖),
      sq_nonneg (‖u - v‖)]

end ActualPurificationHistories

end

noncomputable section

open WithLp
open scoped BigOperators ComplexOrder Kronecker MatrixOrder
  Matrix.Norms.L2Operator InnerProductSpace

set_option backward.isDefEq.respectTransparency false
set_option maxHeartbeats 1600000
set_option maxRecDepth 2048

section TaggedTensorBlocks

variable {R : Type*} [Fintype R]
variable {ι : R → Type*} [∀ r, Fintype (ι r)]

theorem taggedTensorVector_sub
    (r : R) (u v : EuclideanSpace ℂ (ι r × ι r)) :
    taggedTensorVector r (u - v) =
      taggedTensorVector r u - taggedTensorVector r v := by
  classical
  ext q
  rcases q with ⟨a, b⟩
  rcases a with a | ⟨rA, a⟩
  · rcases b with b | ⟨rB, b⟩ <;>
      simp [taggedTensorVector]
  · rcases b with b | ⟨rB, b⟩
    · simp [taggedTensorVector]
    · by_cases hA : rA = r
      · subst rA
        by_cases hB : rB = r
        · subst rB
          simp [taggedTensorVector]
        · simp [taggedTensorVector, hB]
      · simp [taggedTensorVector, hA]

end TaggedTensorBlocks

variable {X Y A B : Type*}
variable [Fintype X] [Fintype Y] [Fintype A] [Fintype B]

end

noncomputable section

open scoped BigOperators Kronecker ComplexOrder MatrixOrder

set_option backward.isDefEq.respectTransparency false
set_option maxHeartbeats 1600000
set_option maxRecDepth 2048

attribute [local instance] Classical.propDecidable

variable {X Y A B : Type*}
variable [Fintype X] [Fintype Y] [Fintype A] [Fintype B]

theorem exactGlobalHistoryVector_sub
    (G : Game X Y A B) (n : ℕ) (S : Strategy (G.repeat n))
    (D : Finset (Fin n))
    (r : ExactHistoryFlag X Y A B D)
    (u v : EuclideanSpace ℂ
      (ExactPaddedLocalIndex G n S D r ×
        ExactPaddedLocalIndex G n S D r)) :
    exactGlobalHistoryVector G n S D r (u - v) =
      exactGlobalHistoryVector G n S D r u -
        exactGlobalHistoryVector G n S D r v :=
  taggedTensorVector_sub r u v

theorem exactGlobalHistoryFinGamma_sub_Psi_norm
    (G : Game X Y A B) (n : ℕ) (S : Strategy (G.repeat n))
    (D : Finset (Fin n))
    (r : ExactHistoryFlag X Y A B D)
    (x : X) (y : Y) :
    ‖(exactGlobalHistoryFinGamma G n S D r x).val -
      (exactGlobalHistoryFinPsi G n S D r x y).val‖ =
      ‖exactGamma G n S D r x -
        exactPsi G n S D r x y‖ := by
  change
    ‖exactGlobalHistoryFinReindex G n S D
        (exactGlobalHistoryVector G n S D r
          (exactGamma G n S D r x)) -
      exactGlobalHistoryFinReindex G n S D
        (exactGlobalHistoryVector G n S D r
          (exactPsi G n S D r x y))‖ = _
  rw [← map_sub, ← exactGlobalHistoryVector_sub,
    LinearIsometryEquiv.norm_map,
    exactGlobalHistoryVector_norm]

end

noncomputable section

open scoped BigOperators

set_option backward.isDefEq.respectTransparency false
set_option maxHeartbeats 1600000
set_option maxRecDepth 2048

attribute [local instance] Classical.propDecidable

variable {X Y A B : Type*}
variable [Fintype X] [Fintype Y] [Fintype A] [Fintype B]

theorem exactGammaPsi_BornWeighted_normalized_distance
    (G : Game X Y A B) (n : ℕ) (S : Strategy (G.repeat n))
    (D : Finset (Fin n))
    (r : ExactHistoryFlag X Y A B D)
    (x : X) (y : Y) :
    ‖exactUnnormalizedPsi G n S D r x y‖ ^ 2 *
      ‖exactGamma G n S D r x -
        exactPsi G n S D r x y‖ ^ 2 ≤
      4 * ‖exactUnnormalizedGamma G n S D r x -
        exactUnnormalizedPsi G n S D r x y‖ ^ 2 := by
  let fallback := exactPaddedDefault G n S D r
  let u := exactUnnormalizedPsi G n S D r x y
  let v := exactUnnormalizedGamma G n S D r x
  have h := bornWeighted_normalized_distance fallback
    (exactPaddedVector G n S D r u)
    (exactPaddedVector G n S D r v)
    (exactPaddedDefault_norm G n S D r)
  rw [exactPaddedVector_norm,
    ← exactPaddedVector_sub,
    exactPaddedVector_norm] at h
  have hforward :
      ‖exactUnnormalizedPsi G n S D r x y‖ ^ 2 *
        ‖exactPsi G n S D r x y -
          exactGamma G n S D r x‖ ^ 2 ≤
        4 * ‖exactUnnormalizedPsi G n S D r x y -
          exactUnnormalizedGamma G n S D r x‖ ^ 2 := by
    exact h
  calc
    ‖exactUnnormalizedPsi G n S D r x y‖ ^ 2 *
        ‖exactGamma G n S D r x -
          exactPsi G n S D r x y‖ ^ 2 =
      ‖exactUnnormalizedPsi G n S D r x y‖ ^ 2 *
        ‖exactPsi G n S D r x y -
          exactGamma G n S D r x‖ ^ 2 := by
        rw [norm_sub_rev]
    _ ≤ 4 * ‖exactUnnormalizedPsi G n S D r x y -
          exactUnnormalizedGamma G n S D r x‖ ^ 2 := hforward
    _ = 4 * ‖exactUnnormalizedGamma G n S D r x -
          exactUnnormalizedPsi G n S D r x y‖ ^ 2 := by
        rw [norm_sub_rev]

end

noncomputable section

open scoped BigOperators ComplexOrder Kronecker MatrixOrder
  Matrix.Norms.L2Operator InnerProductSpace

set_option backward.isDefEq.respectTransparency false
set_option maxHeartbeats 1600000
set_option maxRecDepth 2048

attribute [local instance] Classical.propDecidable

variable {X Y A B : Type*}
variable [Fintype X] [Fintype Y] [Fintype A] [Fintype B]

theorem exactFairHistoryPriorWeight_nonneg
    (G : Game X Y A B) (n : ℕ)
    (D : Finset (Fin n))
    (r : ExactHistoryFlag X Y A B D) :
    0 ≤ exactFairHistoryPriorWeight G n D r := by
  exact mul_nonneg (exactSeedWeight_nonneg r.seed)
    (exactRevealMass_nonneg G n D r.seed r.history)

end

noncomputable section

open scoped BigOperators ComplexOrder Kronecker MatrixOrder
  Matrix.Norms.L2Operator InnerProductSpace

set_option backward.isDefEq.respectTransparency false
set_option maxHeartbeats 2400000
set_option maxRecDepth 2048

open QuantumParallelRepetition.ClassicalInformation

attribute [local instance] Classical.propDecidable

variable {X Y A B : Type*}
variable [Fintype X] [Fintype Y] [Fintype A] [Fintype B]

theorem exactLocallySampleableLaw_zero_of_coordinate_mismatch
    (G : Game X Y A B) (n : ℕ) (S : Strategy (G.repeat n))
    (D : Finset (Fin n))
    (i : SourceRemainingCoordinate D) (x : X) (y : Y)
    (r : ExactHistoryFlag X Y A B D)
    (different : i ≠ r.seed.coordinate) :
    exactLocallySampleableLaw G n S D (i, x, y, r) = 0 := by
  classical
  unfold exactLocallySampleableLaw
    exactSourcePushforward groupedMass
  apply Finset.sum_eq_zero
  intro q hq
  have code :
      exactLocallySampleableCode D q = (i, x, y, r) :=
    ((@Finset.mem_filter
      (ExactJointOutcome X Y A B D)
      (fun a => exactLocallySampleableCode D a =
        (i, x, y, r))
      (fun _ => Classical.propDecidable _)
      Finset.univ q).mp hq).2
  have coordinate : q.1.coordinate = i := congrArg
    (fun t : ExactLocallySampleableTuple X Y A B D => t.1) code
  have history : exactHistoryCode D q = r := congrArg
    (fun t : ExactLocallySampleableTuple X Y A B D =>
      t.2.2.2) code
  have seed : q.1 = r.seed := congrArg
    ExactHistoryFlag.seed history
  exact (different
    (coordinate.symm.trans (congrArg ExactForwardSeed.coordinate seed))).elim

theorem exactFairPosteriorExpectation_reindex
    (G : Game X Y A B) (n : ℕ) (S : Strategy (G.repeat n))
    (D : Finset (Fin n))
    (f : ExactLocallySampleableTuple X Y A B D → ℝ) :
    (∑ t : ExactLocallySampleableTuple X Y A B D,
      exactLocallySampleableLaw G n S D t * f t) =
      ∑ r : ExactHistoryFlag X Y A B D,
      ∑ y : Y, ∑ x : X,
        exactLocallySampleableLaw G n S D
          (r.seed.coordinate, x, y, r) *
        f (r.seed.coordinate, x, y, r) := by
  classical
  calc
    (∑ t : ExactLocallySampleableTuple X Y A B D,
      exactLocallySampleableLaw G n S D t * f t) =
      ∑ i : SourceRemainingCoordinate D,
      ∑ x : X, ∑ y : Y,
      ∑ r : ExactHistoryFlag X Y A B D,
        exactLocallySampleableLaw G n S D (i, x, y, r) *
          f (i, x, y, r) := by
            simp [Fintype.sum_prod_type]
    _ = ∑ y : Y,
        ∑ r : ExactHistoryFlag X Y A B D,
        ∑ i : SourceRemainingCoordinate D,
        ∑ x : X,
          exactLocallySampleableLaw G n S D (i, x, y, r) *
            f (i, x, y, r) := finite_sum_four_swap _
    _ = ∑ r : ExactHistoryFlag X Y A B D,
        ∑ y : Y,
        ∑ i : SourceRemainingCoordinate D,
        ∑ x : X,
          exactLocallySampleableLaw G n S D (i, x, y, r) *
            f (i, x, y, r) := by
              rw [Finset.sum_comm]
    _ = ∑ r : ExactHistoryFlag X Y A B D,
        ∑ y : Y, ∑ x : X,
        ∑ i : SourceRemainingCoordinate D,
          exactLocallySampleableLaw G n S D (i, x, y, r) *
            f (i, x, y, r) := by
              apply Finset.sum_congr rfl
              intro r _
              apply Finset.sum_congr rfl
              intro y _
              rw [Finset.sum_comm]
    _ = _ := by
      apply Finset.sum_congr rfl
      intro r _
      apply Finset.sum_congr rfl
      intro y _
      apply Finset.sum_congr rfl
      intro x _
      rw [Finset.sum_eq_single r.seed.coordinate]
      · intro i _ different
        simp [exactLocallySampleableLaw_zero_of_coordinate_mismatch
          G n S D i x y r different]
      · simp

end

end QuantumParallelRepetition


open QuantumParallelRepetition
open scoped ComplexOrder Matrix BigOperators InnerProductSpace
open Complex Matrix Finset
open scoped BigOperators ComplexOrder Kronecker MatrixOrder
  Matrix.Norms.L2Operator InnerProductSpace
set_option backward.isDefEq.respectTransparency false
set_option maxHeartbeats 2400000
set_option maxRecDepth 2048
open QuantumParallelRepetition.ClassicalInformation
attribute [local instance] Classical.propDecidable
variable {X Y A B : Type*}
variable [Fintype X] [Fintype Y] [Fintype A] [Fintype B]

theorem solution
    (G : Game X Y A B) (n : ℕ) (S : Strategy (G.repeat n))
    (D : Finset (Fin n))
    (positive : 0 < repeatedPostselectionMass G n S D) :
    (∑ t : ExactLocallySampleableTuple X Y A B D,
      exactLocallySampleableLaw G n S D t *
        ‖exactSourceTupleGamma G n S D t -
          exactSourceTuplePsi G n S D t‖ ^ 2) *
        repeatedPostselectionMass G n S D ≤
      4 * exactFairAcceptedBobVariation G n S D := by
  classical
  rw [exactFairPosteriorExpectation_reindex]
  simp_rw [Finset.sum_mul]
  calc
    (∑ r : ExactHistoryFlag X Y A B D,
      ∑ y : Y, ∑ x : X,
        (exactLocallySampleableLaw G n S D
          (r.seed.coordinate, x, y, r) *
          ‖exactSourceTupleGamma G n S D
              (r.seed.coordinate, x, y, r) -
            exactSourceTuplePsi G n S D
              (r.seed.coordinate, x, y, r)‖ ^ 2) *
          repeatedPostselectionMass G n S D) ≤
      ∑ r : ExactHistoryFlag X Y A B D,
      ∑ y : Y, ∑ x : X,
        if exactHistoryAccepted G n D r then
          4 * (exactFairHistoryPriorWeight G n D r *
            G.questionWeight x y *
            ‖exactUnnormalizedGamma G n S D r x -
              exactUnnormalizedPsi G n S D r x y‖ ^ 2)
        else 0 := by
          apply Finset.sum_le_sum
          intro r _
          apply Finset.sum_le_sum
          intro y _
          apply Finset.sum_le_sum
          intro x _
          by_cases accepted : exactHistoryAccepted G n D r
          · rw [if_pos accepted,
              exactLocallySampleableLaw_eq_fair_born,
              if_pos accepted]
            change
              ((_ / repeatedPostselectionMass G n S D) *
                ‖(exactGlobalHistoryFinGamma
                    G n S D r x).val -
                  (exactGlobalHistoryFinPsi
                    G n S D r x y).val‖ ^ 2) *
                  repeatedPostselectionMass G n S D ≤ _
            rw [exactGlobalHistoryFinGamma_sub_Psi_norm]
            have hnorm :=
              exactGammaPsi_BornWeighted_normalized_distance
                G n S D r x y
            have hw :
                0 ≤ exactFairHistoryPriorWeight G n D r *
                  G.questionWeight x y :=
              mul_nonneg
                (exactFairHistoryPriorWeight_nonneg G n D r)
                (G.weight_nonneg x y)
            have hscaled := mul_le_mul_of_nonneg_left hnorm hw
            unfold exactFairHistoryPriorWeight at hscaled ⊢
            field_simp [positive.ne']
            nlinarith
          · rw [if_neg accepted,
              exactLocallySampleableLaw_eq_fair_born,
              if_neg accepted]
            simp
    _ = 4 * exactFairAcceptedBobVariation G n S D := by
      unfold exactFairAcceptedBobVariation
        exactFairBobHistoryVariation
      rw [Finset.mul_sum]
      apply Finset.sum_congr rfl
      intro r _
      by_cases accepted : exactHistoryAccepted G n D r
      · simp only [if_pos accepted, Finset.mul_sum]
        rw [Finset.sum_comm]
        apply Finset.sum_congr rfl
        intro x _
        apply Finset.sum_congr rfl
        intro y _
        rw [norm_sub_rev]
        ring
      · simp [accepted]
