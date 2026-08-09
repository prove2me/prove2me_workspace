import Definitions.Def_quantum_parallel_repetition_game
import Definitions.Def_qpr_core_00
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

open scoped BigOperators ComplexConjugate InnerProductSpace

variable {H : Type*} [NormedAddCommGroup H] [InnerProductSpace ℂ H]

theorem norm_le_of_operator_contraction
    (W : H →L[ℂ] H) (hW : ‖W‖ ≤ 1) (z : H) :
    ‖W z‖ ≤ ‖z‖ := by
  calc
    ‖W z‖ ≤ ‖W‖ * ‖z‖ := W.le_opNorm z
    _ ≤ 1 * ‖z‖ := mul_le_mul_of_nonneg_right hW (norm_nonneg z)
    _ = ‖z‖ := one_mul _

theorem quadraticExpectation_sub_le
    (W : H →L[ℂ] H) (hW : ‖W‖ ≤ 1) (z w : H) :
    |quadraticExpectation W z - quadraticExpectation W w| ≤
      (‖z‖ + ‖w‖) * ‖z - w‖ := by
  have h_expand :
      ⟪z, W z⟫_ℂ - ⟪w, W w⟫_ℂ =
        ⟪z - w, W z⟫_ℂ + ⟪w, W (z - w)⟫_ℂ := by
    simp [map_sub]
  have hz := norm_le_of_operator_contraction W hW z
  have hdiff := norm_le_of_operator_contraction W hW (z - w)
  unfold quadraticExpectation
  calc
    |(⟪z, W z⟫_ℂ).re - (⟪w, W w⟫_ℂ).re| =
        |(⟪z, W z⟫_ℂ - ⟪w, W w⟫_ℂ).re| := by
          rw [Complex.sub_re]
    _ ≤ ‖⟪z, W z⟫_ℂ - ⟪w, W w⟫_ℂ‖ :=
      Complex.abs_re_le_norm _
    _ = ‖⟪z - w, W z⟫_ℂ + ⟪w, W (z - w)⟫_ℂ‖ := by
      rw [h_expand]
    _ ≤ ‖⟪z - w, W z⟫_ℂ‖ + ‖⟪w, W (z - w)⟫_ℂ‖ :=
      norm_add_le _ _
    _ ≤ ‖z - w‖ * ‖W z‖ + ‖w‖ * ‖W (z - w)‖ :=
      add_le_add (norm_inner_le_norm _ _) (norm_inner_le_norm _ _)
    _ ≤ ‖z - w‖ * ‖z‖ + ‖w‖ * ‖z - w‖ := by
      gcongr
    _ = (‖z‖ + ‖w‖) * ‖z - w‖ := by ring

theorem weighted_real_cauchy
    {ι : Type*} [Fintype ι]
    (weight f g : ι → ℝ)
    (h_weight : ∀ i, 0 ≤ weight i) :
    (∑ i : ι, weight i * f i * g i) ≤
      Real.sqrt (∑ i : ι, weight i * f i ^ 2) *
        Real.sqrt (∑ i : ι, weight i * g i ^ 2) := by
  have h := Real.sum_mul_le_sqrt_mul_sqrt Finset.univ
    (fun i : ι => Real.sqrt (weight i) * f i)
    (fun i : ι => Real.sqrt (weight i) * g i)
  have hsq (i : ι) : Real.sqrt (weight i) ^ 2 = weight i :=
    Real.sq_sqrt (h_weight i)
  have h_left :
      (∑ i : ι,
        (Real.sqrt (weight i) * f i) *
          (Real.sqrt (weight i) * g i)) =
        ∑ i : ι, weight i * f i * g i := by
    apply Finset.sum_congr rfl
    intro i _
    calc
      (Real.sqrt (weight i) * f i) *
          (Real.sqrt (weight i) * g i) =
        Real.sqrt (weight i) ^ 2 * f i * g i := by ring
      _ = weight i * f i * g i := by rw [hsq i]
  have h_f :
      (∑ i : ι, (Real.sqrt (weight i) * f i) ^ 2) =
        ∑ i : ι, weight i * f i ^ 2 := by
    apply Finset.sum_congr rfl
    intro i _
    rw [mul_pow, hsq i]
  have h_g :
      (∑ i : ι, (Real.sqrt (weight i) * g i) ^ 2) =
        ∑ i : ι, weight i * g i ^ 2 := by
    apply Finset.sum_congr rfl
    intro i _
    rw [mul_pow, hsq i]
  simpa [h_left, h_f, h_g] using h

end

open scoped ComplexOrder Matrix BigOperators InnerProductSpace
open Complex Matrix Finset

noncomputable section

open WithLp
open scoped BigOperators Kronecker ComplexOrder MatrixOrder
  Matrix.Norms.L2Operator InnerProductSpace

theorem unconditionalMatchedVerifierAggregate_dependent_continuity
    {J : Type*} [Fintype J]
    {H : J → Type*}
    [∀ j, NormedAddCommGroup (H j)]
    [∀ j, InnerProductSpace ℂ (H j)]
    (weight : J → ℝ)
    (nonnegative : ∀ j, 0 ≤ weight j)
    (operator : (j : J) → (H j →L[ℂ] H j))
    (contraction : ∀ j, ‖operator j‖ ≤ 1)
    (actual ideal : (j : J) → H j) :
    |(∑ j : J, weight j * quadraticExpectation (operator j) (actual j)) -
      (∑ j : J, weight j * quadraticExpectation (operator j) (ideal j))| ≤
      (Real.sqrt (∑ j : J, weight j * ‖actual j‖ ^ 2) +
        Real.sqrt (∑ j : J, weight j * ‖ideal j‖ ^ 2)) *
        Real.sqrt (∑ j : J, weight j * ‖actual j - ideal j‖ ^ 2) := by
  classical
  have point (j : J) :
      |quadraticExpectation (operator j) (actual j) -
        quadraticExpectation (operator j) (ideal j)| ≤
        (‖actual j‖ + ‖ideal j‖) * ‖actual j - ideal j‖ :=
    quadraticExpectation_sub_le
      (operator j) (contraction j) (actual j) (ideal j)
  calc
    |(∑ j : J, weight j * quadraticExpectation (operator j) (actual j)) -
        (∑ j : J, weight j * quadraticExpectation (operator j) (ideal j))| =
      |∑ j : J, weight j *
        (quadraticExpectation (operator j) (actual j) -
          quadraticExpectation (operator j) (ideal j))| := by
            congr 1
            simp_rw [mul_sub]
            rw [Finset.sum_sub_distrib]
    _ ≤ ∑ j : J, |weight j *
      (quadraticExpectation (operator j) (actual j) -
        quadraticExpectation (operator j) (ideal j))| :=
      Finset.abs_sum_le_sum_abs _ _
    _ = ∑ j : J, weight j *
      |quadraticExpectation (operator j) (actual j) -
        quadraticExpectation (operator j) (ideal j)| := by
          apply Finset.sum_congr rfl
          intro j _
          rw [abs_mul, abs_of_nonneg (nonnegative j)]
    _ ≤ ∑ j : J, weight j *
      ((‖actual j‖ + ‖ideal j‖) * ‖actual j - ideal j‖) := by
          apply Finset.sum_le_sum
          intro j _
          exact mul_le_mul_of_nonneg_left (point j) (nonnegative j)
    _ = (∑ j : J, weight j * ‖actual j‖ * ‖actual j - ideal j‖) +
        (∑ j : J, weight j * ‖ideal j‖ * ‖actual j - ideal j‖) := by
          rw [← Finset.sum_add_distrib]
          apply Finset.sum_congr rfl
          intro j _
          ring
    _ ≤ Real.sqrt (∑ j : J, weight j * ‖actual j‖ ^ 2) *
          Real.sqrt (∑ j : J, weight j * ‖actual j - ideal j‖ ^ 2) +
        Real.sqrt (∑ j : J, weight j * ‖ideal j‖ ^ 2) *
          Real.sqrt (∑ j : J, weight j * ‖actual j - ideal j‖ ^ 2) := by
          exact add_le_add
            (weighted_real_cauchy weight
              (fun j => ‖actual j‖)
              (fun j => ‖actual j - ideal j‖) nonnegative)
            (weighted_real_cauchy weight
              (fun j => ‖ideal j‖)
              (fun j => ‖actual j - ideal j‖) nonnegative)
    _ = (Real.sqrt (∑ j : J, weight j * ‖actual j‖ ^ 2) +
        Real.sqrt (∑ j : J, weight j * ‖ideal j‖ ^ 2)) *
        Real.sqrt (∑ j : J, weight j * ‖actual j - ideal j‖ ^ 2) := by
          ring

theorem unconditionalMatchedVerifierAggregate_dependent_le
    {J : Type*} [Fintype J]
    {H : J → Type*}
    [∀ j, NormedAddCommGroup (H j)]
    [∀ j, InnerProductSpace ℂ (H j)]
    (weight : J → ℝ)
    (nonnegative : ∀ j, 0 ≤ weight j)
    (operator : (j : J) → (H j →L[ℂ] H j))
    (contraction : ∀ j, ‖operator j‖ ≤ 1)
    (actual ideal : (j : J) → H j)
    (actual_mass : (∑ j : J, weight j * ‖actual j‖ ^ 2) ≤ 1)
    (ideal_mass : (∑ j : J, weight j * ‖ideal j‖ ^ 2) ≤ 1)
    (Δ : ℝ)
    (deviation :
      (∑ j : J, weight j * ‖actual j - ideal j‖ ^ 2) ≤ Δ) :
    |(∑ j : J, weight j * quadraticExpectation (operator j) (actual j)) -
      (∑ j : J, weight j * quadraticExpectation (operator j) (ideal j))| ≤
      2 * Real.sqrt Δ := by
  have actual_nonnegative :
      0 ≤ ∑ j : J, weight j * ‖actual j‖ ^ 2 :=
    Finset.sum_nonneg
      (fun j _ => mul_nonneg (nonnegative j) (sq_nonneg _))
  have ideal_nonnegative :
      0 ≤ ∑ j : J, weight j * ‖ideal j‖ ^ 2 :=
    Finset.sum_nonneg
      (fun j _ => mul_nonneg (nonnegative j) (sq_nonneg _))
  have error_nonnegative :
      0 ≤ ∑ j : J, weight j * ‖actual j - ideal j‖ ^ 2 :=
    Finset.sum_nonneg
      (fun j _ => mul_nonneg (nonnegative j) (sq_nonneg _))
  have actual_root :
      Real.sqrt (∑ j : J, weight j * ‖actual j‖ ^ 2) ≤ 1 := by
    nlinarith [
      Real.sq_sqrt actual_nonnegative,
      Real.sqrt_nonneg (∑ j : J, weight j * ‖actual j‖ ^ 2)]
  have ideal_root :
      Real.sqrt (∑ j : J, weight j * ‖ideal j‖ ^ 2) ≤ 1 := by
    nlinarith [
      Real.sq_sqrt ideal_nonnegative,
      Real.sqrt_nonneg (∑ j : J, weight j * ‖ideal j‖ ^ 2)]
  calc
    |(∑ j : J, weight j * quadraticExpectation (operator j) (actual j)) -
        (∑ j : J, weight j * quadraticExpectation (operator j) (ideal j))| ≤
      (Real.sqrt (∑ j : J, weight j * ‖actual j‖ ^ 2) +
        Real.sqrt (∑ j : J, weight j * ‖ideal j‖ ^ 2)) *
        Real.sqrt (∑ j : J, weight j * ‖actual j - ideal j‖ ^ 2) :=
          unconditionalMatchedVerifierAggregate_dependent_continuity
            weight nonnegative operator contraction actual ideal
    _ ≤ 2 * Real.sqrt Δ := by
      apply mul_le_mul
      · linarith
      · exact Real.sqrt_le_sqrt deviation
      · exact Real.sqrt_nonneg _
      · norm_num

variable {X Y A B : Type*}
variable [Fintype X] [Fintype Y] [Fintype A] [Fintype B]

end

end QuantumParallelRepetition


open QuantumParallelRepetition
open scoped ComplexOrder Matrix BigOperators InnerProductSpace
open Complex Matrix Finset
open WithLp
open scoped BigOperators ComplexOrder Kronecker MatrixOrder
  Matrix.Norms.L2Operator InnerProductSpace

theorem solution
    {I K : Type*} [Fintype I] [Fintype K]
    (weight : I → ℝ)
    (weight_nonnegative : ∀ i, 0 ≤ weight i)
    (weight_normalized : (∑ i : I, weight i) = 1)
    (win : I → ℝ) (win_bounded : ∀ i, win i ≤ 1)
    {H : I × K → Type*}
    [∀ p, NormedAddCommGroup (H p)]
    [∀ p, InnerProductSpace ℂ (H p)]
    (operator : (p : I × K) → (H p →L[ℂ] H p))
    (contraction : ∀ p, ‖operator p‖ ≤ 1)
    (actual canonical source : (p : I × K) → H p)
    (actual_mass :
      (∑ i : I, weight i *
        ∑ k : K, ‖actual (i, k)‖ ^ 2) ≤ 1)
    (canonical_mass :
      (∑ i : I, weight i *
        ∑ k : K, ‖canonical (i, k)‖ ^ 2) ≤ 1)
    (canonical_row_mass : ∀ i : I,
      (∑ k : K, ‖canonical (i, k)‖ ^ 2) ≤ 1)
    (same_work_mass : ∀ (i : I) (k : K),
      ‖source (i, k)‖ = ‖canonical (i, k)‖)
    (supported_born : ∀ (i : I), weight i ≠ 0 →
      ∀ k : K,
        quadraticExpectation (operator (i, k)) (source (i, k)) =
          ‖source (i, k)‖ ^ 2 * win i)
    (Δclean Δclip bad : ℝ)
    (clean_deviation :
      (∑ i : I, weight i *
        ∑ k : K,
          ‖actual (i, k) - canonical (i, k)‖ ^ 2) ≤ Δclean)
    (clip_deviation :
      (∑ i : I, weight i *
        ∑ k : K,
          ‖canonical (i, k) - source (i, k)‖ ^ 2) ≤ Δclip)
    (actual_success :
      1 - bad ≤ ∑ i : I, weight i *
        ∑ k : K, ‖actual (i, k)‖ ^ 2) :
    (∑ i : I, weight i * win i) - bad -
        4 * Real.sqrt Δclean - 2 * Real.sqrt Δclip ≤
      ∑ i : I, weight i *
        ∑ k : K,
          quadraticExpectation (operator (i, k)) (actual (i, k)) := by
  classical
  let pairWeight : I × K → ℝ := fun p => weight p.1
  have pair_nonnegative (p : I × K) : 0 ≤ pairWeight p :=
    weight_nonnegative p.1
  have pair_actual_mass :
      (∑ p : I × K, pairWeight p * ‖actual p‖ ^ 2) ≤ 1 := by
    simpa [pairWeight, Fintype.sum_prod_type, Finset.mul_sum]
      using actual_mass
  have pair_canonical_mass :
      (∑ p : I × K, pairWeight p * ‖canonical p‖ ^ 2) ≤ 1 := by
    simpa [pairWeight, Fintype.sum_prod_type, Finset.mul_sum]
      using canonical_mass
  have source_mass :
      (∑ i : I, weight i *
        ∑ k : K, ‖source (i, k)‖ ^ 2) ≤ 1 := by
    simpa only [same_work_mass] using canonical_mass
  have pair_source_mass :
      (∑ p : I × K, pairWeight p * ‖source p‖ ^ 2) ≤ 1 := by
    simpa [pairWeight, Fintype.sum_prod_type, Finset.mul_sum]
      using source_mass
  have pair_clean_deviation :
      (∑ p : I × K,
        pairWeight p * ‖actual p - canonical p‖ ^ 2) ≤ Δclean := by
    simpa [pairWeight, Fintype.sum_prod_type, Finset.mul_sum]
      using clean_deviation
  have pair_clip_deviation :
      (∑ p : I × K,
        pairWeight p * ‖canonical p - source p‖ ^ 2) ≤ Δclip := by
    simpa [pairWeight, Fintype.sum_prod_type, Finset.mul_sum]
      using clip_deviation
  have clean_verifier_gap :
      |(∑ i : I, weight i *
          ∑ k : K,
            quadraticExpectation (operator (i, k)) (actual (i, k))) -
        (∑ i : I, weight i *
          ∑ k : K,
            quadraticExpectation (operator (i, k)) (canonical (i, k)))| ≤
        2 * Real.sqrt Δclean := by
    simpa [pairWeight, Fintype.sum_prod_type, Finset.mul_sum] using
      (unconditionalMatchedVerifierAggregate_dependent_le
        pairWeight pair_nonnegative operator contraction actual canonical
        pair_actual_mass pair_canonical_mass Δclean pair_clean_deviation)
  have clip_verifier_gap :
      |(∑ i : I, weight i *
          ∑ k : K,
            quadraticExpectation (operator (i, k)) (canonical (i, k))) -
        (∑ i : I, weight i *
          ∑ k : K,
            quadraticExpectation (operator (i, k)) (source (i, k)))| ≤
        2 * Real.sqrt Δclip := by
    simpa [pairWeight, Fintype.sum_prod_type, Finset.mul_sum] using
      (unconditionalMatchedVerifierAggregate_dependent_le
        pairWeight pair_nonnegative operator contraction canonical source
        pair_canonical_mass pair_source_mass Δclip pair_clip_deviation)
  have identity_expectation (p : I × K) (v : H p) :
      quadraticExpectation (ContinuousLinearMap.id ℂ (H p)) v =
        ‖v‖ ^ 2 := by
    unfold quadraticExpectation
    change (⟪v, v⟫_ℂ).re = ‖v‖ ^ 2
    exact (norm_sq_eq_re_inner (𝕜 := ℂ) v).symm
  have clean_mass_gap :
      |(∑ i : I, weight i *
          ∑ k : K, ‖actual (i, k)‖ ^ 2) -
        (∑ i : I, weight i *
          ∑ k : K, ‖canonical (i, k)‖ ^ 2)| ≤
        2 * Real.sqrt Δclean := by
    have bounded :=
      unconditionalMatchedVerifierAggregate_dependent_le
        pairWeight pair_nonnegative
        (fun p => ContinuousLinearMap.id ℂ (H p))
        (fun _ => ContinuousLinearMap.norm_id_le)
        actual canonical pair_actual_mass pair_canonical_mass
        Δclean pair_clean_deviation
    simpa [pairWeight, Fintype.sum_prod_type, Finset.mul_sum,
      identity_expectation] using bounded
  have source_row_mass (i : I) :
      (∑ k : K, ‖source (i, k)‖ ^ 2) ≤ 1 := by
    simpa only [same_work_mass] using canonical_row_mass i
  have ideal_payoff :
      (∑ i : I, weight i * win i) -
          (1 - ∑ i : I, weight i *
            ∑ k : K, ‖source (i, k)‖ ^ 2) ≤
        ∑ i : I, weight i *
          ∑ k : K,
            quadraticExpectation (operator (i, k)) (source (i, k)) := by
    have born :
        (∑ i : I, weight i *
          ∑ k : K,
            quadraticExpectation (operator (i, k)) (source (i, k))) =
          ∑ i : I, weight i *
            ((∑ k : K, ‖source (i, k)‖ ^ 2) * win i) := by
      apply Finset.sum_congr rfl
      intro i _
      by_cases zero : weight i = 0
      · simp [zero]
      · congr 1
        simp_rw [supported_born i zero]
        rw [Finset.sum_mul]
    rw [born]
    have lost_mass :
        (∑ i : I, weight i *
          (1 - ∑ k : K, ‖source (i, k)‖ ^ 2)) =
          1 - ∑ i : I, weight i *
            ∑ k : K, ‖source (i, k)‖ ^ 2 := by
      calc
        (∑ i : I, weight i *
          (1 - ∑ k : K, ‖source (i, k)‖ ^ 2)) =
            (∑ i : I, weight i) -
              ∑ i : I, weight i *
                ∑ k : K, ‖source (i, k)‖ ^ 2 := by
          rw [← Finset.sum_sub_distrib]
          apply Finset.sum_congr rfl
          intro i _
          ring
        _ = _ := by rw [weight_normalized]
    calc
      (∑ i : I, weight i * win i) -
          (1 - ∑ i : I, weight i *
            ∑ k : K, ‖source (i, k)‖ ^ 2) =
          ∑ i : I, weight i *
            (win i - (1 - ∑ k : K, ‖source (i, k)‖ ^ 2)) := by
        rw [← lost_mass, ← Finset.sum_sub_distrib]
        apply Finset.sum_congr rfl
        intro i _
        ring
      _ ≤ ∑ i : I, weight i *
            ((∑ k : K, ‖source (i, k)‖ ^ 2) * win i) := by
        apply Finset.sum_le_sum
        intro i _
        apply mul_le_mul_of_nonneg_left _ (weight_nonnegative i)
        have loss := mul_nonneg
          (sub_nonneg.mpr (source_row_mass i))
          (sub_nonneg.mpr (win_bounded i))
        nlinarith
  have clean_verifier_signed :
      (∑ i : I, weight i *
        ∑ k : K,
          quadraticExpectation (operator (i, k)) (canonical (i, k))) -
      (∑ i : I, weight i *
        ∑ k : K,
          quadraticExpectation (operator (i, k)) (actual (i, k))) ≤
        2 * Real.sqrt Δclean := by
    exact (le_abs_self _).trans (by
      simpa [abs_sub_comm] using clean_verifier_gap)
  have clip_verifier_signed :
      (∑ i : I, weight i *
        ∑ k : K,
          quadraticExpectation (operator (i, k)) (source (i, k))) -
      (∑ i : I, weight i *
        ∑ k : K,
          quadraticExpectation (operator (i, k)) (canonical (i, k))) ≤
        2 * Real.sqrt Δclip := by
    exact (le_abs_self _).trans (by
      simpa [abs_sub_comm] using clip_verifier_gap)
  have clean_mass_signed :
      (∑ i : I, weight i *
        ∑ k : K, ‖actual (i, k)‖ ^ 2) -
      (∑ i : I, weight i *
        ∑ k : K, ‖source (i, k)‖ ^ 2) ≤
        2 * Real.sqrt Δclean := by
    simpa only [same_work_mass] using
      ((le_abs_self _).trans clean_mass_gap)
  linarith
