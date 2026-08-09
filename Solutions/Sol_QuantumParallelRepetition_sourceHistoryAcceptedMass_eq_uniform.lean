import Definitions.Def_quantum_parallel_repetition_game
import Definitions.Def_qpr_core_17
import Theorems.Thm_QuantumParallelRepetition_fullSubsetHistory_mass_eq_postselection
import Theorems.Thm_QuantumParallelRepetition_fullHistoryRemaining_insert_conditioned
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

open Matrix
open scoped BigOperators Kronecker ComplexOrder MatrixOrder

set_option backward.isDefEq.respectTransparency false
set_option maxHeartbeats 1000000

theorem finsetSubtype_prod_insert
    {ι T : Type*} [DecidableEq ι] [CommMonoid T]
    (s : Finset ι) (i : ι) (hi : i ∉ s)
    (f : {j : ι // j ∈ insert i s} → T) :
    (∏ j : {j : ι // j ∈ insert i s}, f j) =
      f ⟨i, Finset.mem_insert_self i s⟩ *
        ∏ j : {j : ι // j ∈ s},
          f ⟨j, Finset.mem_insert_of_mem j.property⟩ := by
  classical
  let e := Finset.subtypeInsertEquivOption hi
  let g : Option {j : ι // j ∈ s} → T
    | none => f ⟨i, Finset.mem_insert_self i s⟩
    | some j => f ⟨j, Finset.mem_insert_of_mem j.property⟩
  have hcomp (j : {j : ι // j ∈ insert i s}) :
      g (e j) = f j := by
    rcases j with ⟨j, hj⟩
    by_cases hji : j = i
    · subst j
      simp [e, g, Finset.subtypeInsertEquivOption]
    · simp [e, g, Finset.subtypeInsertEquivOption, hji]
  calc
    (∏ j : {j : ι // j ∈ insert i s}, f j) =
      ∏ j : {j : ι // j ∈ insert i s}, g (e j) := by
        apply Finset.prod_congr rfl
        intro j _
        exact (hcomp j).symm
    _ = ∏ j : Option {j : ι // j ∈ s}, g j := e.prod_comp g
    _ = g none * ∏ j : {j : ι // j ∈ s}, g (some j) :=
      Fintype.prod_option g
    _ = _ := rfl

end

noncomputable section

open scoped BigOperators

@[simp] theorem sourceRemainingPermutationRank_coordinate
    {n : ℕ} (D : Finset (Fin n))
    (π : SourceRemainingPermutation D)
    (k : Fin (Finset.univ \ D).card) :
    sourceRemainingPermutationRank D π
      (sourceRemainingPermutationCoordinateSubtype D π k) = k := by
  simp [sourceRemainingPermutationCoordinateSubtype]

theorem sourceRemainingPermutationCoordinate_not_mem
    {n : ℕ} (D : Finset (Fin n))
    (π : SourceRemainingPermutation D)
    (k : Fin (Finset.univ \ D).card) :
    sourceRemainingPermutationCoordinate D π k ∉ D := by
  have h := (sourceRemainingPermutationCoordinateSubtype D π k).property
  exact (Finset.mem_sdiff.mp h).2

theorem sourceRemainingPermutationPrefix_subset
    {n : ℕ} (D : Finset (Fin n))
    (π : SourceRemainingPermutation D)
    (k : Fin ((Finset.univ \ D).card + 1)) :
    sourceRemainingPermutationPrefix D π k ⊆ Finset.univ \ D := by
  classical
  intro i hi
  obtain ⟨j, _, hj⟩ := Finset.mem_image.mp hi
  simpa [hj] using j.property

theorem sourceRemainingPermutationCoordinate_not_mem_prefix
    {n : ℕ} (D : Finset (Fin n))
    (π : SourceRemainingPermutation D)
    (k : Fin (Finset.univ \ D).card) :
    sourceRemainingPermutationCoordinate D π k ∉
      sourceRemainingPermutationPrefix D π k.castSucc := by
  classical
  intro hmem
  obtain ⟨j, hj, hval⟩ := Finset.mem_image.mp hmem
  have heq : j = sourceRemainingPermutationCoordinateSubtype D π k := by
    apply Subtype.ext
    exact hval
  subst j
  have hlt := (Finset.mem_filter.mp hj).2
  simp at hlt

end

noncomputable section

open Matrix
open scoped BigOperators Kronecker ComplexOrder MatrixOrder

set_option backward.isDefEq.respectTransparency false
set_option maxHeartbeats 1500000

section InsertedWeights

variable {X Y A B : Type*}
variable [Fintype X] [Fintype Y] [Fintype A] [Fintype B]

theorem fullCoordinateInsertedHistory_weight
    (G : Game X Y A B) {n : ℕ}
    (D L : Finset (Fin n)) (i : Fin n) (hiD : i ∉ D)
    (r : FullCoordinateRevealHistory X Y n D L i)
    (x : X) (y : Y) :
    fullHistoryWeight G (fullCoordinateInsertedHistory D L i r x y) =
      fullCoordinateBaseWeight G D L i r * G.questionWeight x y := by
  classical
  have hremaining :
      (∏ j : {j : Fin n //
        j ∈ fullHistoryRemaining n (insert i D) L},
        G.marginalY
          ((fullCoordinateInsertedHistory D L i r x y).bobRemaining j)) =
      ∏ j : {j : Fin n //
        j ∈ fullHistoryRemaining n D (insert i L)},
        G.marginalY (r.bobRemaining j) := by
    let e := fullHistoryRemainingInsertedEquiv D L i
    calc
      (∏ j : {j : Fin n //
        j ∈ fullHistoryRemaining n (insert i D) L},
        G.marginalY
          ((fullCoordinateInsertedHistory D L i r x y).bobRemaining j)) =
        ∏ j : {j : Fin n //
          j ∈ fullHistoryRemaining n (insert i D) L},
          G.marginalY (r.bobRemaining (e j)) := by
            apply Finset.prod_congr rfl
            intro j _
            rfl
      _ = _ := e.prod_comp (fun j => G.marginalY (r.bobRemaining j))
  have hpair (j : {j : Fin n // j ∈ D}) :
      G.questionWeight
        ((fullCoordinateInsertedHistory D L i r x y).aliceConditioned
          ⟨j, Finset.mem_insert_of_mem j.property⟩)
        ((fullCoordinateInsertedHistory D L i r x y).bobConditioned
          ⟨j, Finset.mem_insert_of_mem j.property⟩) =
      G.questionWeight (r.aliceConditioned j) (r.bobConditioned j) := by
    have hj : (j : Fin n) ≠ i := by
      intro he
      exact hiD (he ▸ j.property)
    simp [fullCoordinateInsertedHistory,
      fullCoordinateAnswerExtension, hj]
  unfold fullHistoryWeight fullCoordinateBaseWeight
  change
    (∏ j : {j : Fin n // j ∈ insert i D},
      G.questionWeight
        ((fullCoordinateInsertedHistory D L i r x y).aliceConditioned j)
        ((fullCoordinateInsertedHistory D L i r x y).bobConditioned j)) *
    (∏ j : {j : Fin n // j ∈ L},
      G.marginalX (r.aliceRevealed j)) *
    (∏ j : {j : Fin n //
      j ∈ fullHistoryRemaining n (insert i D) L},
      G.marginalY
        ((fullCoordinateInsertedHistory D L i r x y).bobRemaining j)) = _
  rw [finsetSubtype_prod_insert D i hiD]
  rw [hremaining]
  simp_rw [hpair]
  simp [fullCoordinateInsertedHistory,
    fullCoordinateAnswerExtension]
  ring

theorem conditionedAliceEffect_insert_eq_coordinate
    (G : Game X Y A B) (n : ℕ) (S : Strategy (G.repeat n))
    (D : Finset (Fin n)) (i : Fin n) (hiD : i ∉ D)
    (α : {j : Fin n // j ∈ D} → A)
    (a : A) (xs : Fin n → X) :
    conditionedAliceEffect G n S (insert i D)
      (fullCoordinateAnswerExtension D i α a) xs =
      conditionedAliceCoordinateEffect G n S D α xs i a := by
  classical
  unfold conditionedAliceEffect conditionedAliceCoordinateEffect
  apply Finset.sum_congr rfl
  intro answers _
  have hiff :
      (∀ (j : Fin n) (hj : j ∈ insert i D),
        answers j = fullCoordinateAnswerExtension D i α a ⟨j, hj⟩) ↔
      ((∀ (j : Fin n) (hj : j ∈ D), answers j = α ⟨j, hj⟩) ∧
        answers i = a) := by
    constructor
    · intro h
      constructor
      · intro j hj
        have hji : j ≠ i := by
          intro he
          exact hiD (he ▸ hj)
        simpa [fullCoordinateAnswerExtension, hji]
          using h j (Finset.mem_insert_of_mem hj)
      · simpa [fullCoordinateAnswerExtension]
          using h i (Finset.mem_insert_self i D)
    · rintro ⟨hD, ha⟩ j hj
      by_cases hji : j = i
      · subst j
        simpa [fullCoordinateAnswerExtension] using ha
      · have hjD := (Finset.mem_insert.mp hj).resolve_left hji
        simpa [fullCoordinateAnswerExtension, hji] using hD j hjD
  by_cases h :
      ∀ (j : Fin n) (hj : j ∈ insert i D),
        answers j = fullCoordinateAnswerExtension D i α a ⟨j, hj⟩
  · simp only [if_pos h, if_pos (hiff.mp h)]
  · have hnot := mt hiff.mpr h
    simp only [if_neg h, if_neg hnot]

theorem conditionedBobEffect_insert_eq_coordinate
    (G : Game X Y A B) (n : ℕ) (S : Strategy (G.repeat n))
    (D : Finset (Fin n)) (i : Fin n) (hiD : i ∉ D)
    (β : {j : Fin n // j ∈ D} → B)
    (b : B) (ys : Fin n → Y) :
    conditionedBobEffect G n S (insert i D)
      (fullCoordinateAnswerExtension D i β b) ys =
      conditionedBobCoordinateEffect G n S D β ys i b := by
  classical
  unfold conditionedBobEffect conditionedBobCoordinateEffect
  apply Finset.sum_congr rfl
  intro answers _
  have hiff :
      (∀ (j : Fin n) (hj : j ∈ insert i D),
        answers j = fullCoordinateAnswerExtension D i β b ⟨j, hj⟩) ↔
      ((∀ (j : Fin n) (hj : j ∈ D), answers j = β ⟨j, hj⟩) ∧
        answers i = b) := by
    constructor
    · intro h
      constructor
      · intro j hj
        have hji : j ≠ i := by
          intro he
          exact hiD (he ▸ hj)
        simpa [fullCoordinateAnswerExtension, hji]
          using h j (Finset.mem_insert_of_mem hj)
      · simpa [fullCoordinateAnswerExtension]
          using h i (Finset.mem_insert_self i D)
    · rintro ⟨hD, hb⟩ j hj
      by_cases hji : j = i
      · subst j
        simpa [fullCoordinateAnswerExtension] using hb
      · have hjD := (Finset.mem_insert.mp hj).resolve_left hji
        simpa [fullCoordinateAnswerExtension, hji] using hD j hjD
  by_cases h :
      ∀ (j : Fin n) (hj : j ∈ insert i D),
        answers j = fullCoordinateAnswerExtension D i β b ⟨j, hj⟩
  · simp only [if_pos h, if_pos (hiff.mp h)]
  · have hnot := mt hiff.mpr h
    simp only [if_neg h, if_neg hnot]

end InsertedWeights

end

noncomputable section

open scoped BigOperators ComplexOrder Kronecker MatrixOrder
  Matrix.Norms.L2Operator InnerProductSpace

variable {X Y A B : Type*}
variable [Fintype X] [Fintype Y] [Fintype A] [Fintype B]

theorem sourceHistoryFlag_sum
    {n : ℕ} (D : Finset (Fin n))
    (f : SourceHistoryFlag X Y A B D → ℝ) :
    (∑ r : SourceHistoryFlag X Y A B D, f r) =
      ∑ π : SourceRemainingPermutation D,
      ∑ k : Fin (Finset.univ \ D).card,
      ∑ r : FullCoordinateRevealHistory X Y n D
          (sourceRemainingPermutationPrefix D π k.castSucc)
          (sourceRemainingPermutationCoordinate D π k),
      ∑ α : {i : Fin n // i ∈ D} → A,
      ∑ β : {i : Fin n // i ∈ D} → B,
        f ⟨π, k, r, α, β⟩ := by
  classical
  calc
    (∑ r : SourceHistoryFlag X Y A B D, f r) =
        ∑ t : SourceHistoryFlagTuple X Y A B D,
          f ((sourceHistoryFlagEquiv (X := X) (Y := Y)
            (A := A) (B := B) D).symm t) :=
      ((sourceHistoryFlagEquiv (X := X) (Y := Y)
        (A := A) (B := B) D).symm.sum_comp f).symm
    _ = _ := by
      simp [Fintype.sum_sigma, Fintype.sum_prod_type,
        sourceHistoryFlagEquiv]

end

noncomputable section

open Matrix
open scoped BigOperators Kronecker ComplexOrder MatrixOrder
  Matrix.Norms.L2Operator InnerProductSpace

set_option backward.isDefEq.respectTransparency false
set_option maxHeartbeats 1800000

variable {X Y A B : Type*}
variable [Fintype X] [Fintype Y] [Fintype A] [Fintype B]

theorem fullCoordinateInsertedHistory_winIndicator_eq
    (G : Game X Y A B) {n : ℕ}
    (D L : Finset (Fin n)) (i : Fin n) (hiD : i ∉ D)
    (r : FullCoordinateRevealHistory X Y n D L i)
    (x : X) (y : Y)
    (α : {j : Fin n // j ∈ D} → A) (a : A)
    (β : {j : Fin n // j ∈ D} → B) (b : B) :
    fullHistoryWinIndicator G
      (fullCoordinateInsertedHistory D L i r x y)
      (fullCoordinateAnswerExtension D i α a)
      (fullCoordinateAnswerExtension D i β b) =
      fullCoordinateBaseWinIndicator G D L i r α β *
        (if G.predicate x y a b = true then 1 else 0) := by
  classical
  have hiff :
      (∀ j : {j : Fin n // j ∈ insert i D},
        G.predicate
          ((fullCoordinateInsertedHistory D L i r x y).aliceConditioned j)
          ((fullCoordinateInsertedHistory D L i r x y).bobConditioned j)
          (fullCoordinateAnswerExtension D i α a j)
          (fullCoordinateAnswerExtension D i β b j) = true) ↔
      ((∀ j : {j : Fin n // j ∈ D},
        G.predicate (r.aliceConditioned j) (r.bobConditioned j)
          (α j) (β j) = true) ∧ G.predicate x y a b = true) := by
    constructor
    · intro h
      constructor
      · intro j
        have hji : (j : Fin n) ≠ i := by
          intro he
          exact hiD (he ▸ j.property)
        simpa [fullCoordinateInsertedHistory,
          fullCoordinateAnswerExtension, hji] using
          h ⟨j, Finset.mem_insert_of_mem j.property⟩
      · simpa [fullCoordinateInsertedHistory,
          fullCoordinateAnswerExtension] using
          h ⟨i, Finset.mem_insert_self i D⟩
    · rintro ⟨hD, hi⟩ j
      by_cases hji : (j : Fin n) = i
      · have hjsub :
            j = (⟨i, Finset.mem_insert_self i D⟩ :
              {j : Fin n // j ∈ insert i D}) := Subtype.ext hji
        subst j
        simpa [fullCoordinateInsertedHistory,
          fullCoordinateAnswerExtension] using hi
      · have hjD : (j : Fin n) ∈ D :=
          (Finset.mem_insert.mp j.property).resolve_left hji
        simpa [fullCoordinateInsertedHistory,
          fullCoordinateAnswerExtension, hji] using hD ⟨j, hjD⟩
  change
    (if ∀ j : {j : Fin n // j ∈ insert i D},
      G.predicate
        ((fullCoordinateInsertedHistory D L i r x y).aliceConditioned j)
        ((fullCoordinateInsertedHistory D L i r x y).bobConditioned j)
        (fullCoordinateAnswerExtension D i α a j)
        (fullCoordinateAnswerExtension D i β b j) = true
      then (1 : ℝ) else 0) =
      (if ∀ j : {j : Fin n // j ∈ D},
        G.predicate (r.aliceConditioned j) (r.bobConditioned j)
          (α j) (β j) = true then (1 : ℝ) else 0) *
      (if G.predicate x y a b = true then (1 : ℝ) else 0)
  split_ifs with hall hD hi <;> aesop

theorem fullCoordinateInsertedAliceQuestion_eq
    {n : ℕ} (D L : Finset (Fin n)) (i : Fin n)
    (hiD : i ∉ D) (hiL : i ∉ L)
    (r : FullCoordinateRevealHistory X Y n D L i)
    (x : X) (y : Y)
    (hidden : {j : Fin n //
      j ∈ fullHistoryRemaining n D (insert i L)} → X) :
    fullHistoryAliceQuestion
      (fullCoordinateInsertedHistory D L i r x y)
      ((fullCoordinateInsertedHiddenAliceEquiv (X := X) D L i).symm hidden) =
      fullHistoryAliceQuestion
        (fullCoordinateNewHistory D L i r x) hidden := by
  classical
  funext j
  by_cases hjD : j ∈ D
  · have hji : j ≠ i := by
      intro he
      exact hiD (he ▸ hjD)
    simp [fullHistoryAliceQuestion, fullCoordinateInsertedHistory,
      fullCoordinateAnswerExtension, fullCoordinateNewHistory,
      hjD, hji]
  · by_cases hji : j = i
    · subst j
      simp [fullHistoryAliceQuestion, fullCoordinateInsertedHistory,
        fullCoordinateAnswerExtension, fullCoordinateNewHistory,
        hiD, hiL]
    · by_cases hjL : j ∈ L
      · simp [fullHistoryAliceQuestion, fullCoordinateInsertedHistory,
          fullCoordinateNewHistory,
          hjD, hji, hjL]
      · simp [fullHistoryAliceQuestion,                     fullCoordinateInsertedHiddenAliceEquiv,
          fullHistoryRemainingInsertedEquiv, hjD, hji, hjL]
        congr 1

theorem fullCoordinateInsertedHiddenAliceWeight_eq
    (G : Game X Y A B) {n : ℕ}
    (D L : Finset (Fin n)) (i : Fin n)
    (r : FullCoordinateRevealHistory X Y n D L i)
    (x : X) (y : Y)
    (hidden : {j : Fin n //
      j ∈ fullHistoryRemaining n D (insert i L)} → X) :
    fullHistoryHiddenAliceWeight G
      (fullCoordinateInsertedHistory D L i r x y)
      ((fullCoordinateInsertedHiddenAliceEquiv (X := X) D L i).symm hidden) =
      fullHistoryHiddenAliceWeight G
        (fullCoordinateNewHistory D L i r x) hidden := by
  classical
  let e := fullHistoryRemainingInsertedEquiv D L i
  unfold fullHistoryHiddenAliceWeight
  calc
    (∏ j : {j : Fin n //
      j ∈ fullHistoryRemaining n (insert i D) L},
      G.conditionalXGivenY
        ((fullCoordinateInsertedHistory D L i r x y).bobRemaining j)
        (((fullCoordinateInsertedHiddenAliceEquiv
          (X := X) D L i).symm hidden) j)) =
      ∏ j : {j : Fin n //
        j ∈ fullHistoryRemaining n (insert i D) L},
        G.conditionalXGivenY (r.bobRemaining (e j)) (hidden (e j)) := by
          apply Finset.prod_congr rfl
          intro j _
          rfl
    _ = ∏ j : {j : Fin n //
        j ∈ fullHistoryRemaining n D (insert i L)},
        G.conditionalXGivenY (r.bobRemaining j) (hidden j) :=
      e.prod_comp (fun j =>
        G.conditionalXGivenY (r.bobRemaining j) (hidden j))
    _ = _ := rfl

theorem fullCoordinateInsertedBobQuestion_eq
    {n : ℕ} (D L : Finset (Fin n)) (i : Fin n)
    (hiD : i ∉ D) (hiL : i ∉ L)
    (r : FullCoordinateRevealHistory X Y n D L i)
    (x : X) (y : Y)
    (hidden : {j : Fin n // j ∈ L} → Y) :
    fullHistoryBobQuestion
      (fullCoordinateInsertedHistory D L i r x y) hidden =
      fullHistoryBobQuestion
        (fullCoordinateOldHistory D L i r y) hidden := by
  classical
  funext j
  by_cases hjD : j ∈ D
  · have hji : j ≠ i := by
      intro he
      exact hiD (he ▸ hjD)
    simp [fullHistoryBobQuestion, fullCoordinateInsertedHistory,
      fullCoordinateAnswerExtension, fullCoordinateOldHistory,
      hjD, hji]
  · by_cases hji : j = i
    · subst j
      simp [fullHistoryBobQuestion, fullCoordinateInsertedHistory,
        fullCoordinateAnswerExtension, fullCoordinateOldHistory,
        hiD, hiL]
    · by_cases hjL : j ∈ L
      · simp [fullHistoryBobQuestion,                     hjD, hji, hjL]
      · simp [fullHistoryBobQuestion, fullCoordinateInsertedHistory,
          fullCoordinateOldHistory,
          hjD, hji, hjL]

theorem fullCoordinateInsertedHiddenBobWeight_eq
    (G : Game X Y A B) {n : ℕ}
    (D L : Finset (Fin n)) (i : Fin n)
    (r : FullCoordinateRevealHistory X Y n D L i)
    (x : X) (y : Y)
    (hidden : {j : Fin n // j ∈ L} → Y) :
    fullHistoryHiddenBobWeight G
      (fullCoordinateInsertedHistory D L i r x y) hidden =
    fullHistoryHiddenBobWeight G
        (fullCoordinateOldHistory D L i r y) hidden := by
  rfl

theorem fullCoordinateInsertedHistory_aliceFilter
    (G : Game X Y A B) (n : ℕ) (S : Strategy (G.repeat n))
    (D L : Finset (Fin n)) (i : Fin n)
    (hiD : i ∉ D) (hiL : i ∉ L)
    (r : FullCoordinateRevealHistory X Y n D L i)
    (x : X) (y : Y)
    (α : {j : Fin n // j ∈ D} → A) (a : A) :
    fullHistoryAliceFilter G n S (insert i D) L
      (fullCoordinateInsertedHistory D L i r x y)
      (fullCoordinateAnswerExtension D i α a) =
      fullCoordinateAliceRefinementEffect G n S D L i r α x a := by
  classical
  change
    (∑ hidden : {j : Fin n //
      j ∈ fullHistoryRemaining n (insert i D) L} → X,
      fullHistoryHiddenAliceWeight G
        (fullCoordinateInsertedHistory D L i r x y) hidden •
      conditionedAliceEffect G n S (insert i D)
        (fullCoordinateAnswerExtension D i α a)
        (fullHistoryAliceQuestion
          (fullCoordinateInsertedHistory D L i r x y) hidden)) =
      ∑ hidden : {j : Fin n //
        j ∈ fullHistoryRemaining n D (insert i L)} → X,
        fullHistoryHiddenAliceWeight G
          (fullCoordinateNewHistory D L i r x) hidden •
        conditionedAliceCoordinateEffect G n S D α
          (fullHistoryAliceQuestion
            (fullCoordinateNewHistory D L i r x) hidden) i a
  calc
    (∑ hidden : {j : Fin n //
      j ∈ fullHistoryRemaining n (insert i D) L} → X,
      fullHistoryHiddenAliceWeight G
        (fullCoordinateInsertedHistory D L i r x y) hidden •
      conditionedAliceEffect G n S (insert i D)
        (fullCoordinateAnswerExtension D i α a)
        (fullHistoryAliceQuestion
          (fullCoordinateInsertedHistory D L i r x y) hidden)) =
      ∑ hidden : {j : Fin n //
        j ∈ fullHistoryRemaining n D (insert i L)} → X,
        fullHistoryHiddenAliceWeight G
          (fullCoordinateInsertedHistory D L i r x y)
          ((fullCoordinateInsertedHiddenAliceEquiv
            (X := X) D L i).symm hidden) •
        conditionedAliceEffect G n S (insert i D)
          (fullCoordinateAnswerExtension D i α a)
          (fullHistoryAliceQuestion
            (fullCoordinateInsertedHistory D L i r x y)
            ((fullCoordinateInsertedHiddenAliceEquiv
              (X := X) D L i).symm hidden)) := by
        exact ((fullCoordinateInsertedHiddenAliceEquiv
          (X := X) D L i).symm.sum_comp
          (fun hidden =>
            fullHistoryHiddenAliceWeight G
              (fullCoordinateInsertedHistory D L i r x y) hidden •
            conditionedAliceEffect G n S (insert i D)
              (fullCoordinateAnswerExtension D i α a)
              (fullHistoryAliceQuestion
                (fullCoordinateInsertedHistory D L i r x y)
                hidden))).symm
    _ = _ := by
      apply Finset.sum_congr rfl
      intro hidden _
      rw [fullCoordinateInsertedHiddenAliceWeight_eq
        G D L i r x y hidden]
      rw [fullCoordinateInsertedAliceQuestion_eq
        D L i hiD hiL r x y hidden]
      rw [conditionedAliceEffect_insert_eq_coordinate
        G n S D i hiD α a]

theorem fullCoordinateInsertedHistory_bobFilter
    (G : Game X Y A B) (n : ℕ) (S : Strategy (G.repeat n))
    (D L : Finset (Fin n)) (i : Fin n)
    (hiD : i ∉ D) (hiL : i ∉ L)
    (r : FullCoordinateRevealHistory X Y n D L i)
    (x : X) (y : Y)
    (β : {j : Fin n // j ∈ D} → B) (b : B) :
    fullHistoryBobFilter G n S (insert i D) L
      (fullCoordinateInsertedHistory D L i r x y)
      (fullCoordinateAnswerExtension D i β b) =
      fullCoordinateBobRefinementEffect G n S D L i r β y b := by
  classical
  change
    (∑ hidden : {j : Fin n // j ∈ L} → Y,
      fullHistoryHiddenBobWeight G
        (fullCoordinateInsertedHistory D L i r x y) hidden •
      conditionedBobEffect G n S (insert i D)
        (fullCoordinateAnswerExtension D i β b)
        (fullHistoryBobQuestion
          (fullCoordinateInsertedHistory D L i r x y) hidden)) =
      ∑ hidden : {j : Fin n // j ∈ L} → Y,
        fullHistoryHiddenBobWeight G
          (fullCoordinateOldHistory D L i r y) hidden •
        conditionedBobCoordinateEffect G n S D β
          (fullHistoryBobQuestion
            (fullCoordinateOldHistory D L i r y) hidden) i b
  apply Finset.sum_congr rfl
  intro hidden _
  rw [fullCoordinateInsertedHiddenBobWeight_eq G D L i r x y hidden]
  rw [fullCoordinateInsertedBobQuestion_eq D L i hiD hiL r x y hidden]
  rw [conditionedBobEffect_insert_eq_coordinate G n S D i hiD β b]

theorem fullCoordinateInsertedHistory_sum
    {T : Type*} [AddCommMonoid T]
    {n : ℕ} (D L : Finset (Fin n)) (i : Fin n)
    (hiD : i ∉ D)
    (f : FullSubsetHistory X Y n (insert i D) L → T) :
    (∑ h : FullSubsetHistory X Y n (insert i D) L, f h) =
      ∑ r : FullCoordinateRevealHistory X Y n D L i,
      ∑ x : X, ∑ y : Y,
        f (fullCoordinateInsertedHistory D L i r x y) := by
  classical
  simpa [fullCoordinateInsertedHistoryEquiv, Fintype.sum_prod_type]
    using ((fullCoordinateInsertedHistoryEquiv
      (X := X) (Y := Y) D L i hiD).sum_comp f).symm

theorem fullCoordinateAnswerExtension_sum
    {T R : Type*} [Fintype T] [AddCommMonoid R]
    {n : ℕ} (D : Finset (Fin n)) (i : Fin n)
    (hiD : i ∉ D)
    (f : ({j : Fin n // j ∈ insert i D} → T) → R) :
    (∑ α : {j : Fin n // j ∈ insert i D} → T, f α) =
      ∑ α : {j : Fin n // j ∈ D} → T, ∑ a : T,
        f (fullCoordinateAnswerExtension D i α a) := by
  classical
  simpa [fullCoordinateAnswerExtensionEquiv, Fintype.sum_prod_type]
    using ((fullCoordinateAnswerExtensionEquiv
      (T := T) D i hiD).sum_comp f).symm

theorem fullCoordinateWeightedInsertedSum
    (G : Game X Y A B) {n : ℕ}
    (D L : Finset (Fin n)) (i : Fin n)
    (hiD : i ∉ D)
    (value : (h : FullSubsetHistory X Y n (insert i D) L) →
      ({j : Fin n // j ∈ insert i D} → A) →
      ({j : Fin n // j ∈ insert i D} → B) → ℝ) :
    (∑ h : FullSubsetHistory X Y n (insert i D) L,
      ∑ α : {j : Fin n // j ∈ insert i D} → A,
      ∑ β : {j : Fin n // j ∈ insert i D} → B,
        fullHistoryWeight G h * fullHistoryWinIndicator G h α β *
          value h α β) =
      ∑ r : FullCoordinateRevealHistory X Y n D L i,
      ∑ α : {j : Fin n // j ∈ D} → A,
      ∑ β : {j : Fin n // j ∈ D} → B,
        fullCoordinateBaseWeight G D L i r *
          fullCoordinateBaseWinIndicator G D L i r α β *
          (∑ x : X, ∑ y : Y, G.questionWeight x y *
            (∑ a : A, ∑ b : B,
              (if G.predicate x y a b = true then 1 else 0) *
                value (fullCoordinateInsertedHistory D L i r x y)
                  (fullCoordinateAnswerExtension D i α a)
                  (fullCoordinateAnswerExtension D i β b))) := by
  classical
  calc
    (∑ h : FullSubsetHistory X Y n (insert i D) L,
      ∑ α : {j : Fin n // j ∈ insert i D} → A,
      ∑ β : {j : Fin n // j ∈ insert i D} → B,
        fullHistoryWeight G h * fullHistoryWinIndicator G h α β *
          value h α β) =
      ∑ r : FullCoordinateRevealHistory X Y n D L i,
      ∑ x : X, ∑ y : Y,
      ∑ α : {j : Fin n // j ∈ insert i D} → A,
      ∑ β : {j : Fin n // j ∈ insert i D} → B,
        fullHistoryWeight G
            (fullCoordinateInsertedHistory D L i r x y) *
          fullHistoryWinIndicator G
            (fullCoordinateInsertedHistory D L i r x y) α β *
          value (fullCoordinateInsertedHistory D L i r x y) α β :=
      fullCoordinateInsertedHistory_sum D L i hiD
        (fun h =>
          ∑ α : {j : Fin n // j ∈ insert i D} → A,
          ∑ β : {j : Fin n // j ∈ insert i D} → B,
            fullHistoryWeight G h * fullHistoryWinIndicator G h α β *
              value h α β)
    _ =
      ∑ r : FullCoordinateRevealHistory X Y n D L i,
      ∑ x : X, ∑ y : Y,
      ∑ α : {j : Fin n // j ∈ D} → A, ∑ a : A,
      ∑ β : {j : Fin n // j ∈ D} → B, ∑ b : B,
        fullHistoryWeight G
            (fullCoordinateInsertedHistory D L i r x y) *
          fullHistoryWinIndicator G
            (fullCoordinateInsertedHistory D L i r x y)
            (fullCoordinateAnswerExtension D i α a)
            (fullCoordinateAnswerExtension D i β b) *
          value (fullCoordinateInsertedHistory D L i r x y)
            (fullCoordinateAnswerExtension D i α a)
            (fullCoordinateAnswerExtension D i β b) := by
      apply Finset.sum_congr rfl
      intro r _
      apply Finset.sum_congr rfl
      intro x _
      apply Finset.sum_congr rfl
      intro y _
      rw [fullCoordinateAnswerExtension_sum (T := A) D i hiD]
      apply Finset.sum_congr rfl
      intro α _
      apply Finset.sum_congr rfl
      intro a _
      rw [fullCoordinateAnswerExtension_sum (T := B) D i hiD]
    _ =
      ∑ r : FullCoordinateRevealHistory X Y n D L i,
      ∑ α : {j : Fin n // j ∈ D} → A,
      ∑ β : {j : Fin n // j ∈ D} → B,
      ∑ x : X, ∑ y : Y, ∑ a : A, ∑ b : B,
        fullHistoryWeight G
            (fullCoordinateInsertedHistory D L i r x y) *
          fullHistoryWinIndicator G
            (fullCoordinateInsertedHistory D L i r x y)
            (fullCoordinateAnswerExtension D i α a)
            (fullCoordinateAnswerExtension D i β b) *
          value (fullCoordinateInsertedHistory D L i r x y)
            (fullCoordinateAnswerExtension D i α a)
            (fullCoordinateAnswerExtension D i β b) := by
      apply Finset.sum_congr rfl
      intro r _
      calc
        (∑ x : X, ∑ y : Y,
          ∑ α : {j : Fin n // j ∈ D} → A, ∑ a : A,
          ∑ β : {j : Fin n // j ∈ D} → B, ∑ b : B,
            fullHistoryWeight G
                (fullCoordinateInsertedHistory D L i r x y) *
              fullHistoryWinIndicator G
                (fullCoordinateInsertedHistory D L i r x y)
                (fullCoordinateAnswerExtension D i α a)
                (fullCoordinateAnswerExtension D i β b) *
              value (fullCoordinateInsertedHistory D L i r x y)
                (fullCoordinateAnswerExtension D i α a)
                (fullCoordinateAnswerExtension D i β b)) =
          ∑ x : X, ∑ y : Y,
          ∑ α : {j : Fin n // j ∈ D} → A,
          ∑ β : {j : Fin n // j ∈ D} → B,
          ∑ a : A, ∑ b : B,
            fullHistoryWeight G
                (fullCoordinateInsertedHistory D L i r x y) *
              fullHistoryWinIndicator G
                (fullCoordinateInsertedHistory D L i r x y)
                (fullCoordinateAnswerExtension D i α a)
                (fullCoordinateAnswerExtension D i β b) *
              value (fullCoordinateInsertedHistory D L i r x y)
                (fullCoordinateAnswerExtension D i α a)
                (fullCoordinateAnswerExtension D i β b) := by
            apply Finset.sum_congr rfl
            intro x _
            apply Finset.sum_congr rfl
            intro y _
            apply Finset.sum_congr rfl
            intro α _
            rw [Finset.sum_comm]
        _ = _ := finite_sum_four_swap (fun x y α β =>
          ∑ a : A, ∑ b : B,
            fullHistoryWeight G
                (fullCoordinateInsertedHistory D L i r x y) *
              fullHistoryWinIndicator G
                (fullCoordinateInsertedHistory D L i r x y)
                (fullCoordinateAnswerExtension D i α a)
                (fullCoordinateAnswerExtension D i β b) *
              value (fullCoordinateInsertedHistory D L i r x y)
                (fullCoordinateAnswerExtension D i α a)
                (fullCoordinateAnswerExtension D i β b))
    _ = _ := by
      apply Finset.sum_congr rfl
      intro r _
      apply Finset.sum_congr rfl
      intro α _
      apply Finset.sum_congr rfl
      intro β _
      simp only [Finset.mul_sum]
      apply Finset.sum_congr rfl
      intro x _
      apply Finset.sum_congr rfl
      intro y _
      apply Finset.sum_congr rfl
      intro a _
      apply Finset.sum_congr rfl
      intro b _
      rw [fullCoordinateInsertedHistory_weight G D L i hiD r x y]
      rw [fullCoordinateInsertedHistory_winIndicator_eq
        G D L i hiD r x y α a β b]
      ring

theorem fullCoordinateAcceptedPostselectedMass_eq
    [DecidableEq A] [DecidableEq B]
    (G : Game X Y A B) (n : ℕ) (S : Strategy (G.repeat n))
    (D L : Finset (Fin n)) (i : Fin n)
    (hiD : i ∉ D) (hiL : i ∉ L)
    (hL : L ⊆ Finset.univ \ D) :
    fullCoordinateAcceptedPostselectedMass G n S D L i =
      (strategyEventLaw (G.repeat n) S).eventMass
        (FiniteEventLaw.winEvent
          (repeatedCoordinateWin G n) (insert i D)) := by
  classical
  have hLinsert : L ⊆ Finset.univ \ insert i D := by
    intro j hj
    have hjD : j ∉ D := (Finset.mem_sdiff.mp (hL hj)).2
    have hji : j ≠ i := by
      intro he
      exact hiL (he ▸ hj)
    simp [hjD, hji]
  calc
    fullCoordinateAcceptedPostselectedMass G n S D L i =
      ∑ h : FullSubsetHistory X Y n (insert i D) L,
      ∑ α : {j : Fin n // j ∈ insert i D} → A,
      ∑ β : {j : Fin n // j ∈ insert i D} → B,
        fullHistoryWeight G h * fullHistoryWinIndicator G h α β *
          bornTracePairing S.state.matrix
            (fullHistoryAliceFilter G n S (insert i D) L h α)
            (fullHistoryBobFilter G n S (insert i D) L h β) := by
      have hweighted := fullCoordinateWeightedInsertedSum
        G D L i hiD
        (fun h α β => bornTracePairing S.state.matrix
          (fullHistoryAliceFilter G n S (insert i D) L h α)
          (fullHistoryBobFilter G n S (insert i D) L h β))
      simp_rw [fullCoordinateInsertedHistory_aliceFilter
        G n S D L i hiD hiL,
        fullCoordinateInsertedHistory_bobFilter
          G n S D L i hiD hiL] at hweighted
      simpa [fullCoordinateAcceptedPostselectedMass] using hweighted.symm
    _ = _ := fullSubsetHistory_mass_eq_postselection
      G n S (insert i D) L hLinsert

end

end QuantumParallelRepetition


open QuantumParallelRepetition
open scoped ComplexOrder Matrix BigOperators InnerProductSpace
open Complex Matrix Finset
open scoped BigOperators ComplexOrder Kronecker MatrixOrder
  Matrix.Norms.L2Operator InnerProductSpace
set_option backward.isDefEq.respectTransparency false
set_option maxHeartbeats 1600000
attribute [local instance] Classical.propDecidable
variable {X Y A B : Type*}
variable [Fintype X] [Fintype Y] [Fintype A] [Fintype B]

theorem solution
    (G : Game X Y A B) (n : ℕ)
    (S : Strategy (G.repeat n)) (D : Finset (Fin n)) :
    sourceHistoryAcceptedMass G n S D =
      sourceUniformPermutationAverage D
        (fun π k =>
          (strategyEventLaw (G.repeat n) S).eventMass
            (FiniteEventLaw.winEvent (repeatedCoordinateWin G n)
              (insert (sourceRemainingPermutationCoordinate D π k) D))) := by
  classical
  have hlocal (π : SourceRemainingPermutation D)
      (k : Fin (Finset.univ \ D).card) :
      fullCoordinateAcceptedPostselectedMass G n S D
        (sourceRemainingPermutationPrefix D π k.castSucc)
        (sourceRemainingPermutationCoordinate D π k) =
        (strategyEventLaw (G.repeat n) S).eventMass
          (FiniteEventLaw.winEvent (repeatedCoordinateWin G n)
            (insert (sourceRemainingPermutationCoordinate D π k) D)) := by
    apply fullCoordinateAcceptedPostselectedMass_eq
    · exact sourceRemainingPermutationCoordinate_not_mem D π k
    · exact sourceRemainingPermutationCoordinate_not_mem_prefix D π k
    · exact sourceRemainingPermutationPrefix_subset D π k.castSucc
  calc
    sourceHistoryAcceptedMass G n S D =
      ∑ π : SourceRemainingPermutation D,
      ∑ k : Fin (Finset.univ \ D).card,
        sourceHistoryPermutationPositionWeight D *
          fullCoordinateAcceptedPostselectedMass G n S D
            (sourceRemainingPermutationPrefix D π k.castSucc)
            (sourceRemainingPermutationCoordinate D π k) := by
      unfold sourceHistoryAcceptedMass
      rw [sourceHistoryFlag_sum]
      apply Finset.sum_congr rfl
      intro π _
      apply Finset.sum_congr rfl
      intro k _
      unfold fullCoordinateAcceptedPostselectedMass
      simp only [Finset.mul_sum]
      apply Finset.sum_congr rfl
      intro r _
      apply Finset.sum_congr rfl
      intro α _
      apply Finset.sum_congr rfl
      intro β _
      simp only [sourceHistoryRaw, sourceHistoryAcceptedQuestionMass,
        Finset.mul_sum]
      ring_nf
    _ =
      ∑ π : SourceRemainingPermutation D,
      ∑ k : Fin (Finset.univ \ D).card,
        sourceHistoryPermutationPositionWeight D *
          (strategyEventLaw (G.repeat n) S).eventMass
            (FiniteEventLaw.winEvent (repeatedCoordinateWin G n)
              (insert (sourceRemainingPermutationCoordinate D π k) D)) := by
      apply Finset.sum_congr rfl
      intro π _
      apply Finset.sum_congr rfl
      intro k _
      rw [hlocal π k]
    _ = _ := by
      unfold sourceHistoryPermutationPositionWeight
        sourceUniformPermutationAverage
      simp_rw [one_div, div_eq_mul_inv]
      rw [Finset.sum_mul]
      apply Finset.sum_congr rfl
      intro π _
      rw [Finset.sum_mul]
      apply Finset.sum_congr rfl
      intro k _
      ring
