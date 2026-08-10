import Definitions.Def_quantum_parallel_repetition_game
import Definitions.Def_qpr_core_26
import Theorems.Thm_QuantumParallelRepetition_exactSeedWeight_nonneg
import Theorems.Thm_QuantumParallelRepetition_martingale_log_cost_eq
import Theorems.Thm_QuantumParallelRepetition_exactReverseLeftSide_coordinate_mem
import Theorems.Thm_QuantumParallelRepetition_exactReverseAliceUniformMarkedSeed_sum
import Theorems.Thm_QuantumParallelRepetition_exactReverseBobFilterOperatorMarkerEntropy_sum_le_scalarEntropy
import Theorems.Thm_QuantumParallelRepetition_exactFairBobSeedScalarEntropy_le
import Theorems.Thm_QuantumParallelRepetition_answerLogCost_nonneg_of_postselection
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

open scoped BigOperators

namespace FiniteEventLaw

variable {Ω ι : Type*} [Fintype Ω]

theorem eventMass_univ (law : FiniteEventLaw Ω) :
    law.eventMass Finset.univ = 1 := by
  simpa [eventMass] using law.weight_sum

theorem eventMass_mono
    (law : FiniteEventLaw Ω) {s t : Finset Ω} (h : s ⊆ t) :
    law.eventMass s ≤ law.eventMass t := by
  unfold eventMass
  exact Finset.sum_le_sum_of_subset_of_nonneg h
    (fun ω _ _ => law.weight_nonneg ω)

end FiniteEventLaw

end

open scoped ComplexOrder Matrix BigOperators InnerProductSpace
open Complex Matrix Finset

noncomputable section

open scoped BigOperators

variable {α : Type*} [Fintype α] [DecidableEq α]

omit [DecidableEq α] in
theorem fairPartitionWeight_pos : 0 < fairPartitionWeight α := by
  unfold fairPartitionWeight
  positivity

omit [DecidableEq α] in
theorem fairPartitionWeight_nonneg : 0 ≤ fairPartitionWeight α :=
  fairPartitionWeight_pos.le

theorem fairPartitionWeight_sum :
    (∑ _s : Finset α, fairPartitionWeight α) = 1 := by
  simp [fairPartitionWeight, Fintype.card_finset]

@[simp] theorem reversePartitionWeight_empty :
    reversePartitionWeight (α := α) ∅ = 0 := by
  simp [reversePartitionWeight]

theorem reverseMarkedPartitionWeight_eq_forward
    {s : Finset α} {i : α} (hi : i ∈ s) :
    reverseMarkedPartitionWeight s i =
      forwardMarkedPartitionWeight α := by
  have hs : (s.card : ℝ) ≠ 0 := by
    exact_mod_cast (Nat.ne_of_gt (Finset.card_pos.mpr ⟨i, hi⟩))
  simp only [reverseMarkedPartitionWeight, if_pos hi,
    reversePartitionWeight, forwardMarkedPartitionWeight]
  field_simp

end

noncomputable section

open scoped BigOperators

attribute [local instance] Classical.propDecidable

@[simp] theorem exactSeedEquiv_symm_apply
    {M : Type*} [Fintype M] [DecidableEq M]
    (t : ExactSeedTuple M) :
    (exactSeedEquiv M).symm t =
      ⟨t.1, t.2.1, t.2.2.1, t.2.2.2.1,
        t.2.2.2.2.1, t.2.2.2.2.2⟩ := by
  rfl

theorem exactForwardSeed_sum
    {M : Type*} [Fintype M] [DecidableEq M]
    (f : ExactForwardSeed M → ℝ) :
    (∑ seed : ExactForwardSeed M, f seed) =
      ∑ i : M,
      ∑ partition : M → Bool,
      ∑ leftOrder : Equiv.Perm
        {j : M // j ∈ exactLeft i partition},
      ∑ rightOrder : Equiv.Perm
        {j : M // j ∈ exactRight i partition},
      ∑ leftCut : Fin ((exactLeft i partition).card + 1),
      ∑ rightCut : Fin ((exactRight i partition).card + 1),
        f ⟨i, partition, leftOrder, rightOrder, leftCut, rightCut⟩ := by
  classical
  calc
    (∑ seed : ExactForwardSeed M, f seed) =
        ∑ t : ExactSeedTuple M,
          f ((exactSeedEquiv M).symm t) :=
      ((exactSeedEquiv M).symm.sum_comp f).symm
    _ = _ := by
      simp [Fintype.sum_sigma, Fintype.sum_prod_type,
        exactSeedEquiv_symm_apply]

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

theorem exactHistoryFlag_sum
    {n : ℕ} (D : Finset (Fin n))
    (f : ExactHistoryFlag X Y A B D → ℝ) :
    (∑ r : ExactHistoryFlag X Y A B D, f r) =
      ∑ seed : ExactRemainingSeed D,
      ∑ history : ExactRevealHistory X Y D seed,
      ∑ aliceAnswer : {j : Fin n // j ∈ D} → A,
      ∑ bobAnswer : {j : Fin n // j ∈ D} → B,
        f ⟨seed, history, aliceAnswer, bobAnswer⟩ := by
  classical
  calc
    (∑ r : ExactHistoryFlag X Y A B D, f r) =
        ∑ t : ExactHistoryFlagTuple X Y A B D,
          f ((exactHistoryFlagEquiv
            (X := X) (Y := Y) (A := A) (B := B) D).symm t) :=
      ((exactHistoryFlagEquiv
        (X := X) (Y := Y) (A := A) (B := B) D).symm.sum_comp f).symm
    _ = _ := by
      simp [Fintype.sum_sigma, Fintype.sum_prod_type,
        exactHistoryFlagEquiv]

end

noncomputable section

open scoped BigOperators

section FiniteSamples

variable {ι Ω : Type*} [Fintype ι] [DecidableEq ι] [Fintype Ω]

theorem postselectionMass_le_one
    (law : FiniteEventLaw Ω) (wins : ι → Ω → Bool)
    (C : Finset ι) :
    postselectionMass law wins C ≤ 1 := by
  calc
    postselectionMass law wins C ≤ law.eventMass Finset.univ :=
      law.eventMass_mono (Finset.subset_univ _)
    _ = 1 := law.eventMass_univ

end FiniteSamples

end

noncomputable section

open scoped BigOperators

set_option backward.isDefEq.respectTransparency false
set_option maxHeartbeats 1800000
set_option maxRecDepth 2048

open QuantumParallelRepetition.ClassicalInformation

attribute [local instance] Classical.propDecidable

theorem exactReverseAlicePartitionFiber_card
    {M : Type*} [Fintype M] [DecidableEq M]
    (side : Finset M) (coordinate : M)
    (member : coordinate ∈ side) :
    Fintype.card
      {partition : M → Bool //
        insert coordinate
          (exactLeft coordinate partition) = side} = 2 := by
  simpa using Fintype.card_congr
    (exactReverseAlicePartitionFiberEquiv
      side coordinate member)

theorem exactFiniteIndicator_sum
    {T : Type*} [Fintype T]
    (predicate : T → Prop) [DecidablePred predicate]
    (weight : ℝ) :
    (∑ t : T, if predicate t then weight else 0) =
      (Fintype.card {t : T // predicate t} : ℝ) * weight := by
  classical
  calc
    (∑ t : T, if predicate t then weight else 0) =
        (∑ t : T, if predicate t then (1 : ℝ) else 0) * weight := by
          rw [Finset.sum_mul]
          apply Finset.sum_congr rfl
          intro t _
          split_ifs <;> simp
    _ = (Fintype.card {t : T // predicate t} : ℝ) * weight := by
      simp [Fintype.card_subtype]

theorem exactReverseAlicePartitionFiber_sum
    {M : Type*} [Fintype M] [DecidableEq M]
    (side : Finset M) (coordinate : M)
    (member : coordinate ∈ side) (weight : ℝ) :
    (∑ partition : M → Bool,
      if insert coordinate
          (exactLeft coordinate partition) = side
      then weight else 0) = 2 * weight := by
  rw [exactFiniteIndicator_sum]
  rw [exactReverseAlicePartitionFiber_card
    side coordinate member]
  norm_num

theorem exactReversePartition_orderCut_sum
    {M : Type*} [Fintype M] [DecidableEq M]
    (coordinate : M) (partition : M → Bool) :
    (∑ leftOrder : Equiv.Perm
        {j : M // j ∈ exactLeft coordinate partition},
      ∑ rightOrder : Equiv.Perm
        {j : M // j ∈ exactRight coordinate partition},
      ∑ leftCut : Fin
        ((exactLeft coordinate partition).card + 1),
      ∑ rightCut : Fin
        ((exactRight coordinate partition).card + 1),
        exactSeedWeight
          ⟨coordinate, partition,
            leftOrder, rightOrder, leftCut, rightCut⟩) =
      (1 / (Fintype.card M : ℝ)) *
        (1 / (Fintype.card (M → Bool) : ℝ)) := by
  simp only [exactSeedWeight,
    Finset.sum_const, Finset.card_univ, nsmul_eq_mul,
    Fintype.card_perm, Fintype.card_coe,
    Fintype.card_fin, Nat.cast_add, Nat.cast_one]
  have hleft :
      (0 : ℝ) < ((exactLeft coordinate partition).card + 1) := by
    exact_mod_cast Nat.zero_lt_succ _
  have hright :
      (0 : ℝ) < ((exactRight coordinate partition).card + 1) := by
    exact_mod_cast Nat.zero_lt_succ _
  have hleft_factorial :
      (0 : ℝ) <
        ((exactLeft coordinate partition).card.factorial : ℝ) := by
    exact_mod_cast Nat.factorial_pos _
  have hright_factorial :
      (0 : ℝ) <
        ((exactRight coordinate partition).card.factorial : ℝ) := by
    exact_mod_cast Nat.factorial_pos _
  field_simp [hleft.ne', hright.ne',
    hleft_factorial.ne', hright_factorial.ne']

theorem exactReverseAlicePartition_orderCut_fiber_sum
    {M : Type*} [Fintype M] [DecidableEq M]
    (side : Finset M) (coordinate : M) (partition : M → Bool) :
    (∑ leftOrder : Equiv.Perm
        {j : M // j ∈ exactLeft coordinate partition},
      ∑ rightOrder : Equiv.Perm
        {j : M // j ∈ exactRight coordinate partition},
      ∑ leftCut : Fin
        ((exactLeft coordinate partition).card + 1),
      ∑ rightCut : Fin
        ((exactRight coordinate partition).card + 1),
        if exactReverseLeftSide
              (⟨coordinate, partition,
                leftOrder, rightOrder, leftCut, rightCut⟩ :
                  ExactForwardSeed M) = side
        then exactSeedWeight
          ⟨coordinate, partition,
            leftOrder, rightOrder, leftCut, rightCut⟩
        else 0) =
      if insert coordinate
          (exactLeft coordinate partition) = side
      then (1 / (Fintype.card M : ℝ)) *
        (1 / (Fintype.card (M → Bool) : ℝ))
      else 0 := by
  by_cases hside :
      insert coordinate
        (exactLeft coordinate partition) = side
  · simpa [exactReverseLeftSide, hside] using
      exactReversePartition_orderCut_sum coordinate partition
  · simp [exactReverseLeftSide, hside]

theorem exactReverseAliceSide_marginal
    {M : Type*} [Fintype M] [DecidableEq M]
    (side : Finset M) :
    groupedMass exactReverseLeftSide
        exactSeedWeight side =
      reversePartitionWeight side := by
  classical
  unfold groupedMass
  rw [Finset.sum_filter, exactForwardSeed_sum]
  simp_rw [exactReverseAlicePartition_orderCut_fiber_sum]
  have hcoordinate (coordinate : M) :
      (∑ partition : M → Bool,
        if insert coordinate
            (exactLeft coordinate partition) = side
        then (1 / (Fintype.card M : ℝ)) *
          (1 / (Fintype.card (M → Bool) : ℝ))
        else 0) =
      if coordinate ∈ side
      then 2 * ((1 / (Fintype.card M : ℝ)) *
        (1 / (Fintype.card (M → Bool) : ℝ)))
      else 0 := by
    by_cases hmember : coordinate ∈ side
    · simp only [hmember, ↓reduceIte]
      exact exactReverseAlicePartitionFiber_sum
        side coordinate hmember
        ((1 / (Fintype.card M : ℝ)) *
          (1 / (Fintype.card (M → Bool) : ℝ)))
    · simp only [hmember, ↓reduceIte]
      apply Finset.sum_eq_zero
      intro partition _
      have hnot :
          insert coordinate
            (exactLeft coordinate partition) ≠ side := by
        intro h
        apply hmember
        rw [← h]
        exact Finset.mem_insert_self _ _
      simp [hnot]
  simp_rw [hcoordinate]
  rw [exactFiniteIndicator_sum]
  simp only [Fintype.card_coe, Fintype.card_fun,
    Fintype.card_bool, reversePartitionWeight,
    fairPartitionWeight, Nat.cast_pow]
  ring

end

noncomputable section

open scoped BigOperators ComplexOrder Kronecker MatrixOrder
  Matrix.Norms.L2Operator InnerProductSpace

set_option backward.isDefEq.respectTransparency false
set_option maxHeartbeats 2600000
set_option maxRecDepth 2048

attribute [local instance] Classical.propDecidable

variable {X Y A B : Type*}
variable [Fintype X] [Fintype Y] [Fintype A] [Fintype B]

theorem exactFairBobOperatorEntropy_reverse_marked_average
    (G : Game X Y A B) (n : ℕ) (S : Strategy (G.repeat n))
    (D : Finset (Fin n))
    (remaining : 0 < Fintype.card (SourceRemainingCoordinate D)) :
    (∑ r : ExactHistoryFlag X Y A B D,
      if exactHistoryAccepted G n D r then
        exactFairHistoryPriorWeight G n D r *
          exactFairBobHistoryEntropyIncrement G n S D r
      else 0) =
    ∑ seed : ExactRemainingSeed D,
      exactSeedWeight seed *
        ((∑ marker : Fin (exactReverseLeftSide seed).card,
          exactReverseBobFilterOperatorMarkerEntropy
            G n S D
            (exactReverseLeftSide seed)
            (exactReverseAliceContext seed) marker) /
          ((exactReverseLeftSide seed).card : ℝ)) := by
  classical
  have uniform := exactReverseAliceUniformMarkedSeed_sum
    remaining
    (exactReverseBobFilterOperatorMarkerEntropy G n S D)
  symm
  calc
    (∑ seed : ExactRemainingSeed D,
      exactSeedWeight seed *
        ((∑ marker : Fin (exactReverseLeftSide seed).card,
          exactReverseBobFilterOperatorMarkerEntropy
            G n S D
            (exactReverseLeftSide seed)
            (exactReverseAliceContext seed) marker) /
          ((exactReverseLeftSide seed).card : ℝ))) =
      ∑ seed : ExactRemainingSeed D,
        exactSeedWeight seed *
          exactReverseBobFilterOperatorMarkerEntropy
            G n S D
            (exactReverseLeftSide seed)
            (exactReverseAliceContext seed)
            ((exactReverseAliceContext seed).sideRank
              ⟨seed.coordinate,
                exactReverseLeftSide_coordinate_mem seed⟩) :=
        uniform
    _ = _ := by
      rw [exactHistoryFlag_sum]
      apply Finset.sum_congr rfl
      intro seed _
      have decode :=
        (exactReverseAliceWeightedMarkerEquiv
          (M := SourceRemainingCoordinate D)).left_inv seed
      change
        exactReverseAliceMarkerDecode
          (exactReverseLeftSide seed)
          (exactReverseAliceContext seed)
          ((exactReverseAliceContext seed).sideRank
            ⟨seed.coordinate,
              exactReverseLeftSide_coordinate_mem seed⟩) =
          seed at decode
      unfold exactReverseBobFilterOperatorMarkerEntropy
      rw [decode]
      simp only [exactFairHistoryPriorWeight,
        Finset.mul_sum, mul_ite, mul_zero, mul_assoc]

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

end

noncomputable section

open scoped BigOperators ComplexOrder Kronecker MatrixOrder
  Matrix.Norms.L2Operator InnerProductSpace

set_option backward.isDefEq.respectTransparency false
set_option maxHeartbeats 7000000
set_option maxRecDepth 2048

attribute [local instance] Classical.propDecidable

variable {X Y A B : Type*}
variable [Fintype X] [Fintype Y] [Fintype A] [Fintype B]

theorem exactReverseBobAcceptedScalarEntropy_le
    (G : Game X Y A B) (n : ℕ) (S : Strategy (G.repeat n))
    (D : Finset (Fin n))
    (positive : 0 < repeatedPostselectionMass G n S D)
    (side : Finset (SourceRemainingCoordinate D))
    (context : ExactReverseSideContext
      (SourceRemainingCoordinate D) side)
    (marker : Fin side.card) :
    exactReverseBobAcceptedScalarEntropy
        G n S D side context marker ≤
      repeatedPostselectionMass G n S D *
        Real.log (fullHistoryAnswerCount (A := A) (B := B) D /
          repeatedPostselectionMass G n S D) := by
  exact exactFairBobSeedScalarEntropy_le G n S D positive
    (exactReverseAliceMarkerDecode side context marker)

end

noncomputable section

open scoped BigOperators

variable {X Y A B : Type*}
variable [Fintype X] [Fintype Y] [Fintype A] [Fintype B]

theorem postselectionLogCost_nonneg
    (G : Game X Y A B) (n : ℕ) (S : Strategy (G.repeat n))
    (D : Finset (Fin n))
    (positive : 0 < repeatedPostselectionMass G n S D) :
    0 ≤ postselectionLogCost G n S D := by
  have at_most_one : repeatedPostselectionMass G n S D ≤ 1 :=
    postselectionMass_le_one
      (strategyEventLaw (G.repeat n) S)
      (repeatedCoordinateWin G n) D
  have inverse_at_least_one :
      (1 : ℝ) ≤ 1 / repeatedPostselectionMass G n S D := by
    apply (le_div_iff₀ positive).2
    simpa using at_most_one
  exact Real.log_nonneg inverse_at_least_one

end

noncomputable section

open scoped BigOperators ComplexOrder Kronecker MatrixOrder
  Matrix.Norms.L2Operator InnerProductSpace

set_option backward.isDefEq.respectTransparency false
set_option maxHeartbeats 8000000
set_option maxRecDepth 2048

open QuantumParallelRepetition.ClassicalInformation

attribute [local instance] Classical.propDecidable

variable {X Y A B : Type*}
variable [Fintype X] [Fintype Y] [Fintype A] [Fintype B]

theorem exactReversePartitionInverseCard_le
    {M : Type*} [Fintype M] [DecidableEq M] :
    (∑ side : Finset M,
      reversePartitionWeight side / (side.card : ℝ)) ≤
      2 / (Fintype.card M : ℝ) := by
  classical
  have point (side : Finset M) :
      reversePartitionWeight side / (side.card : ℝ) ≤
        forwardMarkedPartitionWeight M := by
    by_cases nonempty : side.Nonempty
    · obtain ⟨coordinate, member⟩ := nonempty
      have marked := reverseMarkedPartitionWeight_eq_forward member
      simpa only [reverseMarkedPartitionWeight, if_pos member] using
        le_of_eq marked
    · have empty : side = ∅ := Finset.not_nonempty_iff_eq_empty.mp nonempty
      subst side
      have nonnegative : 0 ≤ forwardMarkedPartitionWeight M := by
        unfold forwardMarkedPartitionWeight
        exact div_nonneg
          (mul_nonneg (by norm_num) fairPartitionWeight_nonneg)
          (by exact_mod_cast Nat.zero_le (Fintype.card M))
      simpa using nonnegative
  calc
    (∑ side : Finset M,
      reversePartitionWeight side / (side.card : ℝ)) ≤
      ∑ _side : Finset M, forwardMarkedPartitionWeight M := by
        apply Finset.sum_le_sum
        intro side _
        exact point side
    _ = (2 / (Fintype.card M : ℝ)) *
          (∑ _side : Finset M, fairPartitionWeight M) := by
        rw [Finset.mul_sum]
        apply Finset.sum_congr rfl
        intro side _
        unfold forwardMarkedPartitionWeight
        ring
    _ = _ := by rw [fairPartitionWeight_sum]; ring

theorem exactReverseAliceSeedInverseCard_le
    {M : Type*} [Fintype M] [DecidableEq M] :
    (∑ seed : ExactForwardSeed M,
      exactSeedWeight seed /
        ((exactReverseLeftSide seed).card : ℝ)) ≤
      2 / (Fintype.card M : ℝ) := by
  classical
  have push := groupedMass_expectation
    (exactReverseLeftSide (M := M))
    (exactSeedWeight (M := M))
    (fun side : Finset M => ((side.card : ℝ))⁻¹)
  calc
    (∑ seed : ExactForwardSeed M,
      exactSeedWeight seed /
        ((exactReverseLeftSide seed).card : ℝ)) =
      ∑ seed : ExactForwardSeed M,
        exactSeedWeight seed *
          ((exactReverseLeftSide seed).card : ℝ)⁻¹ := by
        simp only [div_eq_mul_inv]
    _ = ∑ side : Finset M,
        groupedMass (exactReverseLeftSide (M := M))
          (exactSeedWeight (M := M)) side *
          ((side.card : ℝ))⁻¹ := push.symm
    _ = ∑ side : Finset M,
        reversePartitionWeight side / (side.card : ℝ) := by
        apply Finset.sum_congr rfl
        intro side _
        rw [exactReverseAliceSide_marginal]
        exact (div_eq_mul_inv _ _).symm
    _ ≤ _ := exactReversePartitionInverseCard_le

theorem exactFairSourceScalarCost_nonneg
    (G : Game X Y A B) (n : ℕ) (S : Strategy (G.repeat n))
    (D : Finset (Fin n))
    (positive : 0 < repeatedPostselectionMass G n S D) :
    0 ≤ repeatedPostselectionMass G n S D *
      Real.log (fullHistoryAnswerCount (A := A) (B := B) D /
        repeatedPostselectionMass G n S D) := by
  rw [martingale_log_cost_eq G n S D positive]
  exact mul_nonneg positive.le
    (add_nonneg
      (postselectionLogCost_nonneg G n S D positive)
      (answerLogCost_nonneg_of_postselection
        G n S D positive))

end

end QuantumParallelRepetition


open QuantumParallelRepetition
open scoped ComplexOrder Matrix BigOperators InnerProductSpace
open Complex Matrix Finset
open scoped BigOperators ComplexOrder Kronecker MatrixOrder
  Matrix.Norms.L2Operator InnerProductSpace
set_option backward.isDefEq.respectTransparency false
set_option maxHeartbeats 8000000
set_option maxRecDepth 2048
open QuantumParallelRepetition.ClassicalInformation
attribute [local instance] Classical.propDecidable
variable {X Y A B : Type*}
variable [Fintype X] [Fintype Y] [Fintype A] [Fintype B]

theorem solution
    (G : Game X Y A B) (n : ℕ) (S : Strategy (G.repeat n))
    (D : Finset (Fin n))
    (remaining : 0 < (Finset.univ \ D).card)
    (positive : 0 < repeatedPostselectionMass G n S D) :
    exactFairAcceptedBobEntropy G n S D ≤
      2 * (repeatedPostselectionMass G n S D *
        martingaleRate G n S D) := by
  classical
  let cost : ℝ := repeatedPostselectionMass G n S D *
    Real.log (fullHistoryAnswerCount (A := A) (B := B) D /
      repeatedPostselectionMass G n S D)
  have nonnegative : 0 ≤ cost :=
    exactFairSourceScalarCost_nonneg G n S D positive
  have mpositive : 0 < Fintype.card (SourceRemainingCoordinate D) := by
    simpa using remaining
  unfold exactFairAcceptedBobEntropy
  rw [exactFairBobOperatorEntropy_reverse_marked_average
    G n S D mpositive]
  calc
    (∑ seed : ExactRemainingSeed D,
      exactSeedWeight seed *
        ((∑ marker : Fin (exactReverseLeftSide seed).card,
          exactReverseBobFilterOperatorMarkerEntropy
            G n S D
            (exactReverseLeftSide seed)
            (exactReverseAliceContext seed) marker) /
          ((exactReverseLeftSide seed).card : ℝ))) ≤
      ∑ seed : ExactRemainingSeed D,
        exactSeedWeight seed *
          (cost / ((exactReverseLeftSide seed).card : ℝ)) := by
      apply Finset.sum_le_sum
      intro seed _
      have nonempty : 0 < (exactReverseLeftSide seed).card :=
        Finset.card_pos.mpr
          ⟨seed.coordinate,
            exactReverseLeftSide_coordinate_mem seed⟩
      have endpoint :=
        exactReverseBobFilterOperatorMarkerEntropy_sum_le_scalarEntropy
          G n S D
          (exactReverseLeftSide seed)
          (exactReverseAliceContext seed) nonempty
      have scalar := exactReverseBobAcceptedScalarEntropy_le
        G n S D positive
        (exactReverseLeftSide seed)
        (exactReverseAliceContext seed)
        ⟨0, nonempty⟩
      have total :
          (∑ marker : Fin (exactReverseLeftSide seed).card,
            exactReverseBobFilterOperatorMarkerEntropy
              G n S D (exactReverseLeftSide seed)
                (exactReverseAliceContext seed) marker) ≤ cost :=
        endpoint.trans scalar
      apply mul_le_mul_of_nonneg_left
        ((div_le_div_iff_of_pos_right
          (by exact_mod_cast nonempty)).mpr total)
        (exactSeedWeight_nonneg seed)
    _ = cost *
        (∑ seed : ExactRemainingSeed D,
          exactSeedWeight seed /
            ((exactReverseLeftSide seed).card : ℝ)) := by
      rw [Finset.mul_sum]
      apply Finset.sum_congr rfl
      intro seed _
      ring
    _ ≤ cost * (2 / (Fintype.card (SourceRemainingCoordinate D) : ℝ)) :=
      mul_le_mul_of_nonneg_left
        (exactReverseAliceSeedInverseCard_le
          (M := SourceRemainingCoordinate D)) nonnegative
    _ = 2 * (repeatedPostselectionMass G n S D *
        martingaleRate G n S D) := by
      dsimp [cost]
      rw [martingale_log_cost_eq G n S D positive]
      have cardinal : Fintype.card (SourceRemainingCoordinate D) =
          (Finset.univ \ D).card := by simp
      rw [cardinal]
      unfold martingaleRate
      ring
