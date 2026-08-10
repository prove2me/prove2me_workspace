import Definitions.Def_quantum_parallel_repetition_game
import Definitions.Def_qpr_core_21
import Theorems.Thm_QuantumParallelRepetition_exactRight_coordinate_not_mem
import Theorems.Thm_QuantumParallelRepetition_exactReverseRightSide_coordinate_mem
import Theorems.Thm_QuantumParallelRepetition_exactReverseRightSide_card
import Theorems.Thm_QuantumParallelRepetition_exactReverseRightSide_complement
import Theorems.Thm_QuantumParallelRepetition_exactReverseBobCanonicalPartition_side
import Theorems.Thm_QuantumParallelRepetition_exactReverseBobCanonicalPartition_otherSide
import Theorems.Thm_QuantumParallelRepetition_exactReverseBobCanonicalPartition_card
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

end

noncomputable section

open scoped BigOperators

set_option backward.isDefEq.respectTransparency false
set_option maxHeartbeats 3600000
set_option maxRecDepth 2048

open QuantumParallelRepetition.Pinsker
open QuantumParallelRepetition.ClassicalInformation

attribute [local instance] Classical.propDecidable

theorem exactInsertedRank_deleteMarked
    {M : Type*} [DecidableEq M]
    (i : M) (side : Finset M) (not_mem : i ∉ side)
    (rank : {j : M // j ∈ insert i side} ≃
      Fin (side.card + 1))
    (cut : Fin (side.card + 1))
    (marked :
      rank ⟨i, Finset.mem_insert_self i side⟩ = cut) :
    exactInsertedRank i side not_mem
        (exactDeleteMarkedRank
          i side not_mem rank cut marked) cut = rank := by
  apply Equiv.ext
  intro j
  by_cases is_marker : j.val = i
  · have hj : j = ⟨i, Finset.mem_insert_self i side⟩ :=
      Subtype.ext is_marker
    rw [hj, exactInsertedRank_marker, marked]
  · have old_member : j.val ∈ side :=
      (Finset.mem_insert.mp j.property).resolve_left is_marker
    let old : {j : M // j ∈ side} := ⟨j.val, old_member⟩
    have hj :
        (⟨old.val, Finset.mem_insert_of_mem old.property⟩ :
          {j : M // j ∈ insert i side}) = j := by
      apply Subtype.ext
      rfl
    rw [← hj, exactInsertedRank_old]
    have distinct :
        rank ⟨old.val, Finset.mem_insert_of_mem old.property⟩ ≠ cut := by
      intro same
      apply is_marker
      have hrank :
          rank ⟨old.val, Finset.mem_insert_of_mem old.property⟩ =
            rank ⟨i, Finset.mem_insert_self i side⟩ := by
        rw [marked]
        exact same
      exact congrArg Subtype.val (rank.injective hrank)
    let deleted : {k : Fin (side.card + 1) // k ≠ cut} :=
      ⟨rank ⟨old.val, Finset.mem_insert_of_mem old.property⟩,
        distinct⟩
    have hdelete :
        exactDeleteMarkedRank
            i side not_mem rank cut marked old =
          (finSuccAboveEquiv cut).symm deleted := by
      rfl
    rw [hdelete]
    have h := (finSuccAboveEquiv cut).apply_symm_apply deleted
    exact congrArg Subtype.val h

end

noncomputable section

open scoped BigOperators

set_option backward.isDefEq.respectTransparency false
set_option maxHeartbeats 4200000
set_option maxRecDepth 2048

open QuantumParallelRepetition.Pinsker
open QuantumParallelRepetition.ClassicalInformation

attribute [local instance] Classical.propDecidable

theorem exactPermutationOfSideRank_rank
    {M : Type*} [Fintype M] [DecidableEq M]
    (side : Finset M)
    (rank : {j : M // j ∈ side} ≃ Fin side.card) :
    (exactPermutationOfSideRank side rank).symm.trans
      (Finset.equivFin side) = rank := by
  apply Equiv.ext
  intro j
  simp [exactPermutationOfSideRank, Equiv.trans_apply]

end

noncomputable section

open scoped BigOperators

set_option backward.isDefEq.respectTransparency false
set_option maxHeartbeats 5000000
set_option maxRecDepth 2048

open QuantumParallelRepetition.Pinsker
open QuantumParallelRepetition.ClassicalInformation

attribute [local instance] Classical.propDecidable

@[simp] theorem exactReverseBobMarkerDecode_coordinate
    {M : Type*} [Fintype M] [DecidableEq M]
    (side : Finset M)
    (context : ExactReverseSideContext M side)
    (marker : Fin side.card) :
    (exactReverseBobMarkerDecode
      side context marker).coordinate =
      (context.sideRank.symm marker).val := by
  rfl

@[simp] theorem exactReverseBobMarkerDecode_side
    {M : Type*} [Fintype M] [DecidableEq M]
    (side : Finset M)
    (context : ExactReverseSideContext M side)
    (marker : Fin side.card) :
    exactReverseRightSide
        (exactReverseBobMarkerDecode
          side context marker) = side := by
  change
    insert (context.sideRank.symm marker).val
      (exactRight (context.sideRank.symm marker).val
        (exactReverseBobCanonicalPartition
          side (context.sideRank.symm marker).val
          context.ignoredBit)) = side
  exact exactReverseBobCanonicalPartition_side
    side (context.sideRank.symm marker).val
    (context.sideRank.symm marker).property context.ignoredBit

@[simp] theorem exactReverseBobMarkerDecode_ignoredBit
    {M : Type*} [Fintype M] [DecidableEq M]
    (side : Finset M)
    (context : ExactReverseSideContext M side)
    (marker : Fin side.card) :
    (exactReverseBobMarkerDecode
      side context marker).partition
      (exactReverseBobMarkerDecode
        side context marker).coordinate = context.ignoredBit := by
  simp [exactReverseBobMarkerDecode,
    exactReverseBobCanonicalPartition]

theorem exactSigmaFinCutTransport
    {M : Type*} [DecidableEq M]
    (source target : Finset M) (same : source = target)
    (cut : Fin (target.card + 1)) :
    (⟨source,
        (finCongr
          (congrArg (fun side : Finset M => side.card + 1) same).symm)
          cut⟩ : Σ side : Finset M, Fin (side.card + 1)) =
      ⟨target, cut⟩ := by
  subst target
  simp

theorem exactSigmaSideRankTransport
    {M : Type*} [DecidableEq M]
    (source target : Finset M) (same : source = target)
    (rank : {j : M // j ∈ target} ≃ Fin target.card) :
    (⟨source,
        (Equiv.subtypeEquivRight (fun j => by rw [same])).trans
          (rank.trans (finCongr (congrArg Finset.card same).symm))⟩ :
        Σ side : Finset M, ({j : M // j ∈ side} ≃ Fin side.card)) =
      ⟨target, rank⟩ := by
  subst target
  apply Sigma.ext
  · rfl
  · apply heq_of_eq
    apply Equiv.ext
    intro j
    simp [Equiv.trans_apply]
    apply Subtype.ext
    rfl

end

noncomputable section

open scoped BigOperators

set_option backward.isDefEq.respectTransparency false
set_option maxHeartbeats 5000000
set_option maxRecDepth 2048

open QuantumParallelRepetition.Pinsker
open QuantumParallelRepetition.ClassicalInformation

attribute [local instance] Classical.propDecidable

theorem exactReverseBobMarkerDecode_otherRank
    {M : Type*} [Fintype M] [DecidableEq M]
    (side : Finset M)
    (context : ExactReverseSideContext M side)
    (marker : Fin side.card) :
    (⟨exactLeft
        (exactReverseBobMarkerDecode
          side context marker).coordinate
        (exactReverseBobMarkerDecode
          side context marker).partition,
      exactLeftRank
        (exactReverseBobMarkerDecode
          side context marker)⟩ :
        Σ other : Finset M,
          ({j : M // j ∈ other} ≃ Fin other.card)) =
      ⟨context.otherSide, context.otherRank⟩ := by
  classical
  let coordinate := (context.sideRank.symm marker).val
  let partition :=
    exactReverseBobCanonicalPartition
      side coordinate context.ignoredBit
  have other : exactLeft coordinate partition =
      context.otherSide := by
    exact (exactReverseBobCanonicalPartition_otherSide
      side coordinate (context.sideRank.symm marker).property
      context.ignoredBit).trans
        context.otherSide_eq_complement.symm
  have transported := exactSigmaSideRankTransport
    (exactLeft coordinate partition)
    context.otherSide other context.otherRank
  simpa only [exactReverseBobMarkerDecode,
    exactLeftRank,
    exactPermutationOfSideRank_rank] using transported

theorem exactReverseBobMarkerDecode_otherCut
    {M : Type*} [Fintype M] [DecidableEq M]
    (side : Finset M)
    (context : ExactReverseSideContext M side)
    (marker : Fin side.card) :
    (⟨exactLeft
        (exactReverseBobMarkerDecode
          side context marker).coordinate
        (exactReverseBobMarkerDecode
          side context marker).partition,
      (exactReverseBobMarkerDecode
        side context marker).leftCut⟩ :
        Σ other : Finset M, Fin (other.card + 1)) =
      ⟨context.otherSide, context.otherCut⟩ := by
  classical
  let coordinate := (context.sideRank.symm marker).val
  let partition :=
    exactReverseBobCanonicalPartition
      side coordinate context.ignoredBit
  have other : exactLeft coordinate partition =
      context.otherSide := by
    exact (exactReverseBobCanonicalPartition_otherSide
      side coordinate (context.sideRank.symm marker).property
      context.ignoredBit).trans
        context.otherSide_eq_complement.symm
  have transported := exactSigmaFinCutTransport
    (exactLeft coordinate partition)
    context.otherSide other context.otherCut
  simpa only [exactReverseBobMarkerDecode] using transported

theorem exactReverseBobMarkerDecode_sideRank
    {M : Type*} [Fintype M] [DecidableEq M]
    (side : Finset M)
    (context : ExactReverseSideContext M side)
    (marker : Fin side.card) :
    (⟨exactReverseRightSide
        (exactReverseBobMarkerDecode
          side context marker),
      (exactReverseBobContext
        (exactReverseBobMarkerDecode
          side context marker)).sideRank⟩ :
        Σ actualSide : Finset M,
          ({j : M // j ∈ actualSide} ≃ Fin actualSide.card)) =
      ⟨side, context.sideRank⟩ := by
  classical
  let coordinate := (context.sideRank.symm marker).val
  let partition :=
    exactReverseBobCanonicalPartition
      side coordinate context.ignoredBit
  have actual : insert coordinate
      (exactRight coordinate partition) = side :=
    exactReverseBobCanonicalPartition_side
      side coordinate (context.sideRank.symm marker).property
      context.ignoredBit
  let transportedRank :
      {j : M //
        j ∈ insert coordinate (exactRight coordinate partition)} ≃
        Fin (insert coordinate (exactRight coordinate partition)).card :=
    (Equiv.subtypeEquivRight (fun j => by rw [actual])).trans
      (context.sideRank.trans
        (finCongr (congrArg Finset.card actual).symm))
  have transported :
      (⟨insert coordinate (exactRight coordinate partition),
        transportedRank⟩ :
          Σ actualSide : Finset M,
            ({j : M // j ∈ actualSide} ≃ Fin actualSide.card)) =
        ⟨side, context.sideRank⟩ :=
    exactSigmaSideRankTransport
      (insert coordinate (exactRight coordinate partition))
      side actual context.sideRank
  calc
    (⟨exactReverseRightSide
        (exactReverseBobMarkerDecode side context marker),
      (exactReverseBobContext
        (exactReverseBobMarkerDecode
          side context marker)).sideRank⟩ :
        Σ actualSide : Finset M,
          ({j : M // j ∈ actualSide} ≃ Fin actualSide.card)) =
        ⟨insert coordinate (exactRight coordinate partition),
          transportedRank⟩ := by
            apply Sigma.ext
            · change
                insert (context.sideRank.symm marker).val
                    (exactRight (context.sideRank.symm marker).val
                      (exactReverseBobCanonicalPartition
                        side (context.sideRank.symm marker).val
                        context.ignoredBit)) =
                  insert coordinate (exactRight coordinate partition)
              rfl
            · apply heq_of_eq
              apply Equiv.ext
              intro j
              apply Fin.ext
              simp [coordinate, partition, transportedRank,
                exactReverseBobMarkerDecode,
                exactReverseBobContext,
                exactReverseRightSide,
                exactReverseRightRank,
                exactRightRank,
                exactPermutationOfSideRank_rank,
                exactInsertedRank_deleteMarked,
                Equiv.trans_assoc, Equiv.trans_apply,
                finCongr_apply, Fin.val_cast]
    _ = ⟨side, context.sideRank⟩ := transported

end

end QuantumParallelRepetition


open QuantumParallelRepetition
open scoped ComplexOrder Matrix BigOperators InnerProductSpace
open Complex Matrix Finset
open scoped BigOperators
set_option backward.isDefEq.respectTransparency false
set_option maxHeartbeats 5000000
set_option maxRecDepth 2048
open QuantumParallelRepetition.Pinsker
open QuantumParallelRepetition.ClassicalInformation
attribute [local instance] Classical.propDecidable

theorem solution
    {M : Type*} [Fintype M] [DecidableEq M]
    (side : Finset M)
    (context : ExactReverseSideContext M side)
    (marker : Fin side.card) :
    exactReverseBobMarkerCode
        (exactReverseBobMarkerDecode
          side context marker) =
      ⟨side, context, marker⟩ := by
  classical
  generalize decoded :
    exactReverseBobMarkerDecode side context marker = seed
  have sameSide : exactReverseRightSide seed = side := by
    rw [← decoded]
    exact exactReverseBobMarkerDecode_side
      side context marker
  subst side
  apply Sigma.ext
  · rfl
  · apply heq_of_eq
    change
      (exactReverseBobContext seed,
        (exactReverseBobContext seed).sideRank
          ⟨seed.coordinate,
            exactReverseRightSide_coordinate_mem seed⟩) =
        (context, marker)
    have sameContext : exactReverseBobContext seed = context := by
      cases context with
      | mk otherSide sideRank otherRank otherCut ignored complement =>
        simp only [exactReverseBobContext,
          ExactReverseSideContext.mk.injEq]
        let reverseContext : ExactReverseSideContext M
            (exactReverseRightSide seed) :=
          { otherSide := otherSide
            sideRank := sideRank
            otherRank := otherRank
            otherCut := otherCut
            ignoredBit := ignored
            otherSide_eq_complement := complement }
        have exactSideRank :=
          exactReverseBobMarkerDecode_sideRank
            (exactReverseRightSide seed)
            reverseContext marker
        have exactOtherRank :=
          exactReverseBobMarkerDecode_otherRank
            (exactReverseRightSide seed)
            reverseContext marker
        have exactOtherCut :=
          exactReverseBobMarkerDecode_otherCut
            (exactReverseRightSide seed)
            reverseContext marker
        change
          exactReverseBobMarkerDecode
              (exactReverseRightSide seed)
              reverseContext marker = seed at decoded
        rw [decoded] at exactSideRank exactOtherRank exactOtherCut
        refine ⟨(exactReverseRightSide_complement seed).trans
            complement.symm, ?_, ?_, ?_, ?_⟩
        · exact eq_of_heq (Sigma.mk.inj exactSideRank).2
        · exact (Sigma.mk.inj exactOtherRank).2
        · exact (Sigma.mk.inj exactOtherCut).2
        · have exactIgnored := congrArg
            (fun original : ExactForwardSeed M =>
              original.partition original.coordinate) decoded
          simpa only
            [exactReverseBobMarkerDecode_ignoredBit]
              using exactIgnored.symm
    apply Prod.ext
    · exact sameContext
    · rw [sameContext]
      apply context.sideRank.symm.injective
      change
        context.sideRank.symm
            (context.sideRank ⟨seed.coordinate, _⟩) =
          context.sideRank.symm marker
      rw [Equiv.symm_apply_apply]
      apply Subtype.ext
      have coordinate := congrArg
        (fun original : ExactForwardSeed M => original.coordinate)
        decoded
      simpa only [exactReverseBobMarkerDecode_coordinate]
        using coordinate.symm
