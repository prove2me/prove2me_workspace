import Definitions.Def_quantum_parallel_repetition_game
import Definitions.Def_qpr_core_23
import Theorems.Thm_QuantumParallelRepetition_exactLeft_coordinate_not_mem
import Theorems.Thm_QuantumParallelRepetition_exactReverseLeftSide_coordinate_mem
import Theorems.Thm_QuantumParallelRepetition_exactReverseLeftSide_card
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

end QuantumParallelRepetition


open QuantumParallelRepetition
open scoped ComplexOrder Matrix BigOperators InnerProductSpace
open Complex Matrix Finset
open scoped BigOperators
set_option backward.isDefEq.respectTransparency false
set_option maxHeartbeats 2800000
set_option maxRecDepth 2048
open QuantumParallelRepetition.Pinsker
open QuantumParallelRepetition.ClassicalInformation
attribute [local instance] Classical.propDecidable
variable {X Y A B : Type*}
variable [Fintype X] [Fintype Y] [Fintype A] [Fintype B]

theorem solution
    (G : Game X Y A B) (n : ℕ) (S : Strategy (G.repeat n))
    (D : Finset (Fin n)) (default : Y)
    (seed : ExactRemainingSeed D)
    (outcome outcome' : ExactOutcome X Y A B n)
    (same_context :
      exactReverseAliceMarkedHistoryContext
          G n S D default seed outcome =
        exactReverseAliceMarkedHistoryContext
          G n S D default seed outcome') :
    outcome.1 seed.coordinate.val =
        outcome'.1 seed.coordinate.val ∧
      exactHistoryCode D (seed, outcome) =
        exactHistoryCode D (seed, outcome') := by
  let side := exactReverseLeftSide seed
  let context := exactReverseAliceContext seed
  let marker : Fin side.card :=
    context.sideRank
      ⟨seed.coordinate,
        exactReverseLeftSide_coordinate_mem seed⟩
  have hfixed :
      (exactReverseAliceSourceProjection
        (X := X) (Y := Y) (A := A) (B := B)
        D side (seed, outcome)).1 =
      (exactReverseAliceSourceProjection
        (X := X) (Y := Y) (A := A) (B := B)
        D side (seed, outcome')).1 := by
    have h := congrArg
      (fun t : ExactReverseAliceNextContext
        X Y A B D (exactReverseLeftSide seed) => t.1.1)
      same_context
    simpa only [exactReverseAliceMarkedHistoryContext,
      finitePrefixMask, side] using h
  have hflag :
      repeatedConditionedAnswerFlag G n S D outcome =
        repeatedConditionedAnswerFlag G n S D outcome' := by
    have h := congrArg
      (fun t : ExactReverseAliceNextContext
        X Y A B D (exactReverseLeftSide seed) => t.1.2)
      same_context
    simpa only [exactReverseAliceMarkedHistoryContext,
      finitePrefixMask] using h
  have hprefix :
      (finitePrefixMask default marker.castSucc
        (exactReverseAliceSourceProjection
          (X := X) (Y := Y) (A := A) (B := B)
          D side (seed, outcome))).2 =
      (finitePrefixMask default marker.castSucc
        (exactReverseAliceSourceProjection
          (X := X) (Y := Y) (A := A) (B := B)
          D side (seed, outcome'))).2 := by
    have h := congrArg
      (fun t : ExactReverseAliceNextContext
        X Y A B D (exactReverseLeftSide seed) => t.2)
      same_context
    simpa only [exactReverseAliceMarkedHistoryContext,
      finitePrefixMask, side, context, marker] using h
  have hfields := eq_of_heq (Sigma.mk.inj hfixed).2
  have hac := congrArg (fun t => t.1) hfields
  have hbc := congrArg (fun t => t.2.1) hfields
  have hside := congrArg (fun t => t.2.2.1) hfields
  have hother := congrArg (fun t => t.2.2.2.1) hfields
  have hoppositePrefix := congrArg (fun t => t.2.2.2.2) hfields
  have hquestion :
      outcome.1 seed.coordinate.val =
        outcome'.1 seed.coordinate.val := by
    have h := congrFun hside
      ⟨seed.coordinate,
        exactReverseLeftSide_coordinate_mem seed⟩
    exact h
  have hreveal :
      exactRevealCode D seed
          (outcome.1, outcome.2.1) =
        exactRevealCode D seed
          (outcome'.1, outcome'.2.1) := by
    apply (exactRevealHistoryEquiv
      (X := X) (Y := Y) D seed).injective
    apply Prod.ext
    · exact hac
    apply Prod.ext
    · exact hbc
    apply Prod.ext
    · funext j
      have hj : j.val ∈ side := by
        change j.val ∈ insert seed.coordinate
          (exactLeft seed.coordinate seed.partition)
        exact Finset.mem_insert_of_mem j.property
      exact congrFun hside ⟨j.val, hj⟩
    apply Prod.ext
    · funext j
      have hotherSide :
          (exactReverseAliceContextAt side seed).otherSide =
            exactRight seed.coordinate seed.partition := by
        change
          (exactReverseAliceContextAt
            (exactReverseLeftSide seed) seed).otherSide = _
        rw [exactReverseAliceContextAt_actual]
        rfl
      have hj :
          j.val ∈
            (exactReverseAliceContextAt side seed).otherSide :=
        (Finset.ext_iff.mp hotherSide j.val).mpr j.property
      exact congrFun hother ⟨j.val, hj⟩
    apply Prod.ext
    · funext j
      have hbefore :
          j.val ∈ exactReverseContextPrefixBefore
            context marker := by
        change
          j.val ∈ exactReverseContextPrefixBefore
            (exactReverseAliceContext seed)
            ((exactReverseAliceContext seed).sideRank
              ⟨seed.coordinate,
                exactReverseLeftSide_coordinate_mem seed⟩)
        rw [exactReverseAliceContext_prefix_before_marked]
        exact j.property
      have hparts :=
        (exactOrderedSidePrefix_mem_iff
          side context.sideRank marker.castSucc j.val).mp
          (by simpa [exactReverseContextPrefixBefore]
            using hbefore)
      let position : Fin side.card :=
        context.sideRank ⟨j.val, hparts.1⟩
      have hlt : position.val < marker.val := by
        simpa [position] using hparts.2
      have hltCut : position.val < seed.leftCut.val := by
        calc
          position.val < marker.val := hlt
          _ = seed.leftCut.val := by
            exact exactReverseAliceContext_marked_rank seed
      have h := congrFun hprefix position
      change outcome.2.1 j.val.val = outcome'.2.1 j.val.val
      simpa [finitePrefixMask,
        exactReverseAliceSourceProjection,
        exactReverseAliceContextAt, side,
        context, marker, position, hlt, hltCut] using h
    · funext j
      have hotherPrefix :
          exactReverseContextOtherPrefix
              (exactReverseAliceContextAt side seed) =
            exactRightPrefix seed := by
        change
          exactReverseContextOtherPrefix
            (exactReverseAliceContextAt
              (exactReverseLeftSide seed) seed) = _
        rw [exactReverseAliceContextAt_actual,
          exactReverseAliceContext_otherPrefix]
      have hj :
          j.val ∈ exactReverseContextOtherPrefix
            (exactReverseAliceContextAt side seed) :=
        (Finset.ext_iff.mp hotherPrefix j.val).mpr j.property
      exact congrFun hoppositePrefix ⟨j.val, hj⟩
  refine ⟨hquestion, ?_⟩
  apply (exactHistoryFlagEquiv
    (X := X) (Y := Y) (A := A) (B := B) D).injective
  change
    (⟨seed,
       (exactRevealCode D seed (outcome.1, outcome.2.1),
        (fun j : {j : Fin n // j ∈ D} => outcome.2.2.1 j.val),
        (fun j : {j : Fin n // j ∈ D} => outcome.2.2.2 j.val))⟩ :
      ExactHistoryFlagTuple X Y A B D) =
    (⟨seed,
       (exactRevealCode D seed (outcome'.1, outcome'.2.1),
        (fun j : {j : Fin n // j ∈ D} => outcome'.2.2.1 j.val),
        (fun j : {j : Fin n // j ∈ D} => outcome'.2.2.2 j.val))⟩ :
      ExactHistoryFlagTuple X Y A B D)
  apply Sigma.ext
  · rfl
  · apply heq_of_eq
    apply Prod.ext
    · exact hreveal
    apply Prod.ext
    · exact congrArg Prod.fst hflag
    · exact congrArg Prod.snd hflag
