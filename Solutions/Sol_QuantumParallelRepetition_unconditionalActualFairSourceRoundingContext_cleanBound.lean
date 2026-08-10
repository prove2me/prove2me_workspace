import Definitions.Def_quantum_parallel_repetition_game
import Definitions.Def_qpr_core_28
import Theorems.Thm_QuantumParallelRepetition_dSVSoftBobLeftReducedDensity_posSemidef
import Theorems.Thm_QuantumParallelRepetition_dSVUniformDensityThresholdSharedState_norm
import Theorems.Thm_QuantumParallelRepetition_exactAlicePurificationFamily_posSemidef
import Theorems.Thm_QuantumParallelRepetition_exactBobPurificationFamily_posSemidef
import Theorems.Thm_QuantumParallelRepetition_exactGlobalHistoryLocalIndex_card_pos
import Theorems.Thm_QuantumParallelRepetition_UnconditionalActualFairSourceRoundingContext_width_all
import Theorems.Thm_QuantumParallelRepetition_UnconditionalActualFairSourceRoundingContext_fine_all
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

open WithLp
open scoped BigOperators Kronecker ComplexOrder MatrixOrder

theorem finiteTensorVector_norm_sq
    {ι d : Type*} [Fintype ι] [DecidableEq ι] [Fintype d]
    (v : ι → EuclideanSpace ℂ d) :
    ‖finiteTensorVector v‖ ^ 2 =
      ∏ i : ι, ‖v i‖ ^ 2 := by
  classical
  rw [EuclideanSpace.norm_sq_eq]
  change
    (∑ q : ι → d, ‖∏ i : ι, v i (q i)‖ ^ 2) =
      ∏ i : ι, ‖v i‖ ^ 2
  calc
    (∑ q : ι → d, ‖∏ i : ι, v i (q i)‖ ^ 2) =
        ∑ q : ι → d, ∏ i : ι, ‖v i (q i)‖ ^ 2 := by
          apply Finset.sum_congr rfl
          intro q _
          rw [norm_prod, ← Finset.prod_pow]
    _ = ∏ i : ι, ∑ a : d, ‖v i a‖ ^ 2 :=
      (Fintype.prod_sum
        (fun i : ι => fun a : d => ‖v i a‖ ^ 2)).symm
    _ = ∏ i : ι, ‖v i‖ ^ 2 := by
      apply Finset.prod_congr rfl
      intro i _
      exact (EuclideanSpace.norm_sq_eq (v i)).symm

theorem finiteTensorVector_norm
    {ι d : Type*} [Fintype ι] [DecidableEq ι] [Fintype d]
    (v : ι → EuclideanSpace ℂ d)
    (hv : ∀ i, ‖v i‖ = 1) :
    ‖finiteTensorVector v‖ = 1 := by
  have hsquare := finiteTensorVector_norm_sq v
  simp_rw [hv, one_pow, Finset.prod_const_one] at hsquare
  nlinarith [norm_nonneg (finiteTensorVector v)]

theorem sharedThresholdResourceRaw_norm_sq
    {κ d : Type*} [Fintype κ] [Fintype d]
    [DecidableEq κ] [DecidableEq d]
    (τ : κ → ℝ) :
    ‖sharedThresholdResourceRaw (d := d) τ‖ ^ 2 =
      (Fintype.card d : ℝ) * ∑ k : κ, τ k ^ 2 := by
  classical
  have hterm (k l : κ) (i j : d) :
      ‖if k = l ∧ i = j then (τ k : ℂ) else 0‖ ^ 2 =
        if k = l then if i = j then τ k ^ 2 else 0 else 0 := by
    split_ifs <;>
      simp_all [Complex.norm_real, Real.norm_eq_abs, sq_abs]
  rw [EuclideanSpace.norm_sq_eq, Fintype.sum_prod_type]
  simp_rw [Fintype.sum_sigma]
  change
    (∑ k : κ, ∑ i : d, ∑ l : κ, ∑ j : d,
      ‖if k = l ∧ i = j then (τ k : ℂ) else 0‖ ^ 2) =
        (Fintype.card d : ℝ) * ∑ k : κ, τ k ^ 2
  simp_rw [hterm]
  simp [Finset.mul_sum]

theorem schmidtVector_apply
    {d : ℕ}
    (σ : Fin d → ℝ)
    (U V : Matrix.unitaryGroup (Fin d) ℂ)
    (a b : Fin d) :
    schmidtVector σ U V (a, b) =
      ∑ i : Fin d, (σ i : ℂ) * U a i * V b i := by
  classical
  simp [schmidtVector, localUnitaryAction,
    Matrix.mulVec, dotProduct, Matrix.kroneckerMap_apply,
    diagonalSchmidtState, Fintype.sum_prod_type,
    mul_assoc, mul_comm]

@[simp] theorem unitaryBasisOverlap_apply
    {d : Type*} [Fintype d] [DecidableEq d]
    (U V : Matrix.unitaryGroup d ℂ) (i j : d) :
    unitaryBasisOverlap U V i j =
      (((U : Matrix d d ℂ).conjTranspose *
        (V : Matrix d d ℂ)) i j) := by
  rfl

end

open scoped ComplexOrder Matrix BigOperators InnerProductSpace
open Complex Matrix Finset

noncomputable section

@[simp] theorem conjugateUnitary_apply
    {d : ℕ}
    (U : Matrix.unitaryGroup (Fin d) ℂ)
    (i j : Fin d) :
    conjugateUnitary U i j = star (U i j) := by
  rfl

end

noncomputable section

open WithLp
open scoped BigOperators Kronecker

theorem ePRState_norm (m : ℕ) (hm : 0 < m) :
    ‖ePRState m‖ = 1 := by
  have hmreal : 0 < (m : ℝ) := by exact_mod_cast hm
  have hamp :
      ‖(↑((Real.sqrt (m : ℝ))⁻¹) : ℂ)‖ ^ 2 =
        (m : ℝ)⁻¹ := by
    rw [Complex.norm_real, Real.norm_eq_abs,
      abs_of_nonneg (inv_nonneg.mpr (Real.sqrt_nonneg _)),
      inv_pow, Real.sq_sqrt hmreal.le]
  have hsquare : ‖ePRState m‖ ^ 2 = 1 := by
    rw [EuclideanSpace.norm_sq_eq, Fintype.sum_prod_type]
    have hterm (i j : Fin m) :
        ‖if i = j then
          (↑((Real.sqrt (m : ℝ))⁻¹) : ℂ)
        else
          0‖ ^ 2 =
          if i = j then (m : ℝ)⁻¹ else 0 := by
      split_ifs with h
      · exact hamp
      · simp
    change
      (∑ i : Fin m, ∑ j : Fin m,
        ‖if i = j then
          (↑((Real.sqrt (m : ℝ))⁻¹) : ℂ)
        else
          0‖ ^ 2) = 1
    simp_rw [hterm]
    simp [hmreal.ne']
  nlinarith [norm_nonneg (ePRState m)]

end

noncomputable section

open WithLp
open scoped BigOperators Kronecker ComplexOrder MatrixOrder

theorem dSVUniformDensityThresholdRaw_norm_sq
    (N d : ℕ) :
    ‖sharedThresholdResourceRaw (d := Fin d)
      (fun _ : Fin N => (1 : ℝ))‖ ^ 2 =
      (d : ℝ) * (N : ℝ) := by
  simpa using sharedThresholdResourceRaw_norm_sq
    (d := Fin d) (fun _ : Fin N => (1 : ℝ))

theorem dSVUniformDensityIndependentSharedState_norm
    (L : ℕ) {N d : ℕ}
    (grid : 0 < N) (dimension : 0 < d) :
    ‖dSVUniformDensityIndependentSharedState L N d‖ = 1 := by
  unfold dSVUniformDensityIndependentSharedState
  rw [LinearIsometryEquiv.norm_map]
  exact finiteTensorVector_norm
    (fun _ : Fin L =>
      dSVUniformDensityThresholdSharedState N d)
    (fun _ =>
      dSVUniformDensityThresholdSharedState_norm
        grid dimension)

end

noncomputable section

open WithLp
open scoped BigOperators Kronecker ComplexOrder MatrixOrder

attribute [local instance] Classical.propDecidable

theorem dSVUniformDensityThresholdWeight_nonneg
    (N : ℕ) (k : Fin N) :
    0 ≤ dSVUniformDensityThresholdWeight N k := by
  unfold dSVUniformDensityThresholdWeight
  positivity

theorem dSVUniformDensityGridPrefix_eq_count
    (N : ℕ) (density : ℝ) :
    dSVUniformDensityGridPrefix N density =
      ((Finset.univ.filter fun k : Fin N =>
        dSVUniformDensityThresholdGrid N k ≤ density).card : ℝ) /
        (N : ℝ) := by
  classical
  unfold dSVUniformDensityGridPrefix
    dSVUniformDensityThresholdWeight
  simp_rw [mul_ite, mul_one, mul_zero]
  rw [← Finset.sum_filter]
  simp [div_eq_mul_inv, mul_comm]

end

noncomputable section

open WithLp
open scoped BigOperators ComplexOrder Kronecker MatrixOrder
  Matrix.Norms.L2Operator InnerProductSpace

theorem rectangular_matrix_mulVec_norm_sq
    {d e : Type*} [Fintype d] [Fintype e] [DecidableEq d]
    (K : Matrix e d ℂ) (z : EuclideanSpace ℂ d) :
    ‖toLp 2 (K.mulVec (ofLp z))‖ ^ 2 =
      quadraticExpectation
        (Matrix.toEuclideanCLM (n := d) (𝕜 := ℂ)
          (K.conjTranspose * K)) z := by
  calc
    ‖toLp 2 (K.mulVec (ofLp z))‖ ^ 2 =
        (⟪toLp 2 (K.mulVec (ofLp z)),
          toLp 2 (K.mulVec (ofLp z))⟫_ℂ).re :=
      norm_sq_eq_re_inner (𝕜 := ℂ)
        (toLp 2 (K.mulVec (ofLp z)))
    _ = (star (K.mulVec (ofLp z)) ⬝ᵥ
          K.mulVec (ofLp z)).re := by
      rw [EuclideanSpace.inner_eq_star_dotProduct]
      change
        (K.mulVec (ofLp z) ⬝ᵥ star (K.mulVec (ofLp z))).re = _
      rw [dotProduct_comm]
    _ = (star (ofLp z) ⬝ᵥ
          (K.conjTranspose * K).mulVec (ofLp z)).re := by
      rw [Matrix.star_mulVec, ← Matrix.dotProduct_mulVec,
        Matrix.mulVec_mulVec]
    _ = quadraticExpectation
          (Matrix.toEuclideanCLM (n := d) (𝕜 := ℂ)
            (K.conjTranspose * K)) z := by
      unfold quadraticExpectation
      rw [EuclideanSpace.inner_eq_star_dotProduct]
      change
        (star (ofLp z) ⬝ᵥ
            (K.conjTranspose * K).mulVec (ofLp z)).re =
          ((K.conjTranspose * K).mulVec (ofLp z) ⬝ᵥ
            star (ofLp z)).re
      rw [dotProduct_comm]

end

noncomputable section

open scoped BigOperators ComplexOrder MatrixOrder

theorem dSVDensityRationalGridPrefix_nonneg
    (N : ℕ) (a : ℝ) :
    0 ≤ dSVUniformDensityGridPrefix N a := by
  unfold dSVUniformDensityGridPrefix
  apply Finset.sum_nonneg
  intro k _
  exact mul_nonneg
    (dSVUniformDensityThresholdWeight_nonneg N k)
    (by split <;> norm_num)

theorem dSVDensityRationalCanonicalAcceptedCoefficient_nonneg
    {d : ℕ} (w : ℝ) (N : ℕ)
    (ξ : BipartiteUnitVector d) (i : Fin d) :
    0 ≤ dSVDensityRationalCanonicalAcceptedCoefficient
      w N ξ i := Real.sqrt_nonneg _

theorem dSVDensityRationalCanonicalAcceptedCoefficient_sq
    {d : ℕ} {w : ℝ} (width : 0 < w) (N : ℕ)
    (ξ : BipartiteUnitVector d) (i : Fin d) :
    dSVDensityRationalCanonicalAcceptedCoefficient
        w N ξ i ^ 2 =
      w * dSVUniformDensityGridPrefix N
        (dSVRationalSoftPass w
          ((dSVSoftBobLeftReducedDensity_posSemidef ξ).isHermitian.eigenvalues i)) := by
  unfold dSVDensityRationalCanonicalAcceptedCoefficient
  apply Real.sq_sqrt
  exact mul_nonneg width.le
    (dSVDensityRationalGridPrefix_nonneg _ _)

end

noncomputable section

open WithLp
open scoped BigOperators Kronecker ComplexOrder MatrixOrder

theorem dSVDensityRationalPhysicalAcceptedRank_gridPrefix
    {d : ℕ} (w : ℝ) (N : ℕ)
    (ξ : BipartiteUnitVector d) (i : Fin d) :
    dSVUniformDensityGridPrefix N
        (dSVRationalSoftPass w
          ((dSVSoftBobLeftReducedDensity_posSemidef
            ξ).isHermitian.eigenvalues i)) =
      ((dSVDensityRationalPhysicalAcceptedRank
        w N ξ i).val : ℝ) / (N : ℝ) := by
  classical
  rw [dSVUniformDensityGridPrefix_eq_count]
  simp [dSVDensityRationalPhysicalAcceptedRank,
    dSVDensityRationalProjectiveThresholdBin]

theorem dSVDensityRationalPhysicalAcceptedRank_targetCoefficient_sq
    {d : ℕ} {w : ℝ} (width : 0 < w) (N : ℕ)
    (ξ : BipartiteUnitVector d) (i : Fin d) :
    dSVDensityRationalCanonicalAcceptedCoefficient
        w N ξ i ^ 2 =
      w * ((dSVDensityRationalPhysicalAcceptedRank
        w N ξ i).val : ℝ) / (N : ℝ) := by
  rw [dSVDensityRationalCanonicalAcceptedCoefficient_sq
    width N ξ i,
    dSVDensityRationalPhysicalAcceptedRank_gridPrefix]
  ring

end

noncomputable section

open WithLp
open scoped BigOperators ComplexOrder Kronecker MatrixOrder

theorem
    dSVDensityRationalHeterogeneousStoppedCommonPrefixFailureVector_norm_sq
    {S N d L : ℕ} (width : Fin S → ℝ)
    (schedule : Fin L → Fin S)
    (ξ ζ : BipartiteUnitVector d)
    (j : Fin L) :
    ‖dSVDensityRationalHeterogeneousStoppedCommonPrefixFailureVector
        (N := N) width schedule ξ ζ j‖ ^ 2 =
      dSVDensityRationalHeterogeneousPhysicalSurvival
        N width schedule ξ ζ j.val := by
  rw [dSVDensityRationalHeterogeneousStoppedCommonPrefixFailureVector,
    finiteTensorVector_norm_sq]
  unfold dSVDensityRationalHeterogeneousPhysicalSurvival
    dSVHeterogeneousRealPrefix
  calc
    (∏ i : Fin j.val,
      ‖dSVDensityRationalHeterogeneousStoppedCommonPrefixFailureCopy
        width schedule ξ ζ j i‖ ^ 2) =
        ∏ i : Fin j.val,
          dSVDensityRationalHeterogeneousPhysicalStageContinue
            N width schedule ξ ζ i.val := by
      apply Finset.prod_congr rfl
      intro i _
      simp [dSVDensityRationalHeterogeneousStoppedCommonPrefixFailureCopy,
        dSVDensityRationalHeterogeneousPhysicalStageContinue,
        dSVDensityRationalHeterogeneousPhysicalStageOutcome,
        lt_trans i.isLt j.isLt]
    _ = _ :=
      Fin.prod_univ_eq_prod_range
        (dSVDensityRationalHeterogeneousPhysicalStageContinue
          N width schedule ξ ζ) j.val

end

noncomputable section

open WithLp
open scoped BigOperators Kronecker ComplexOrder MatrixOrder
  Matrix.Norms.L2Operator InnerProductSpace

theorem unconditionalMatchedVerifierTensor_norm_sq
    {s t : Type*} [Fintype s] [Fintype t]
    (target : EuclideanSpace ℂ s)
    (work : EuclideanSpace ℂ t) :
    ‖unconditionalMatchedVerifierTensor target work‖ ^ 2 =
      ‖target‖ ^ 2 * ‖work‖ ^ 2 := by
  classical
  rw [EuclideanSpace.norm_sq_eq, Fintype.sum_prod_type]
  change
    (∑ i : s, ∑ j : t, ‖target i * work j‖ ^ 2) =
      ‖target‖ ^ 2 * ‖work‖ ^ 2
  simp_rw [norm_mul, mul_pow]
  rw [← Fintype.sum_mul_sum, ← EuclideanSpace.norm_sq_eq,
    ← EuclideanSpace.norm_sq_eq]

theorem unconditionalMatchedVerifierTensor_norm
    {s t : Type*} [Fintype s] [Fintype t]
    (target : EuclideanSpace ℂ s)
    (work : EuclideanSpace ℂ t) :
    ‖unconditionalMatchedVerifierTensor target work‖ =
      ‖target‖ * ‖work‖ := by
  have squared :=
    unconditionalMatchedVerifierTensor_norm_sq target work
  nlinarith [
    norm_nonneg (unconditionalMatchedVerifierTensor target work),
    norm_nonneg target, norm_nonneg work,
    mul_nonneg (norm_nonneg target) (norm_nonneg work)]

variable {X Y A B : Type*}
variable [Fintype X] [Fintype Y] [Fintype A] [Fintype B]

end

noncomputable section

open WithLp
open scoped BigOperators Kronecker ComplexOrder MatrixOrder
  Matrix.Norms.L2Operator InnerProductSpace

theorem unconditionalSelectedCopy_tensor_sub
    {s τ : Type*} [Fintype s] [Fintype τ]
    (x y : EuclideanSpace ℂ s) (work : EuclideanSpace ℂ τ) :
    unconditionalMatchedVerifierTensor x work -
        unconditionalMatchedVerifierTensor y work =
      unconditionalMatchedVerifierTensor (x - y) work := by
  ext ⟨i, j⟩
  change x i * work j - y i * work j =
    (x i - y i) * work j
  ring

theorem unconditionalSelectedCopyRetainedWork_norm_sq
    {S N d L : ℕ} {τ : Type*} [Fintype τ]
    (width : Fin S → ℝ) (schedule : Fin L → Fin S)
    (ξ ζ : BipartiteUnitVector d)
    (j : Fin L) (rest : EuclideanSpace ℂ τ) :
    ‖unconditionalSelectedCopyRetainedWork
        (N := N) width schedule ξ ζ j rest‖ ^ 2 =
      dSVDensityRationalHeterogeneousPhysicalSurvival
        N width schedule ξ ζ j.val * ‖rest‖ ^ 2 := by
  unfold unconditionalSelectedCopyRetainedWork
  rw [unconditionalMatchedVerifierTensor_norm_sq,
    dSVDensityRationalHeterogeneousStoppedCommonPrefixFailureVector_norm_sq]

theorem unconditionalSelectedCopyMatchedBranch_deviation_sq
    {S N d L B m : ℕ} {τ : Type*} [Fintype τ]
    (Q : ℕ) (width : Fin S → ℝ)
    (schedule : Fin L → Fin S)
    (ξ ζ : BipartiteUnitVector d)
    (A C : Fin B → Option ℕ →
      Matrix.unitaryGroup (Fin (N * m)) ℂ)
    (j : Fin L) (rest : EuclideanSpace ℂ τ)
    (rest_unit : ‖rest‖ = 1) :
    ‖unconditionalSelectedCopyCleanedMatchedBranch
          Q width schedule ξ ζ A C j rest -
        unconditionalSelectedCopyIdealMatchedBranch
          (B := B) (m := m) width schedule ξ ζ j rest‖ ^ 2 =
      dSVDensityRationalHeterogeneousPhysicalSurvival
          N width schedule ξ ζ j.val *
        dSVDensityRationalHeterogeneousCommonStopGaugeStageError
          Q (width (schedule j)) m ξ ζ A C := by
  unfold unconditionalSelectedCopyCleanedMatchedBranch
    unconditionalSelectedCopyIdealMatchedBranch
  rw [unconditionalSelectedCopy_tensor_sub,
    unconditionalMatchedVerifierTensor_norm_sq,
    unconditionalSelectedCopyRetainedWork_norm_sq,
    rest_unit]
  unfold dSVDensityRationalHeterogeneousCommonStopGaugeStageError
    unconditionalSelectedCopyCleanedStage
    unconditionalSelectedCopyIdealStage
  ring

end

noncomputable section

open WithLp
open scoped BigOperators Kronecker ComplexOrder MatrixOrder

theorem unconditionalPublicBucketPhysicalCoherentTarget_apply
    {d N B n : ℕ} (w : ℝ)
    (ξ ζ : BipartiteUnitVector d)
    (φ ψ : Fin B) (i j : Fin d) (a b : Fin (N * n)) :
    dSVDensityRationalPublicBucketPhysicalCoherentTargetState
        (N := N) (B := B) w n ξ ζ
        (⟨(φ, i), a⟩, ⟨(ψ, j), b⟩) =
      (ePRState B (φ, ψ) *
        (((‖sharedThresholdResourceRaw (d := Fin d)
          (fun _ : Fin N => (1 : ℝ))‖⁻¹ : ℝ) : ℂ) *
          dSVDensityRationalLocalSpectralPairBasisOverlap
            ξ ζ i j)) *
        ((Real.sqrt
            ((dSVDensityRationalPhysicalAcceptedRank
              w N ξ i).val : ℝ) : ℂ) *
          embezzlementState (N * n) (a, b)) := by
  rfl

theorem unconditionalCanonicalAcceptedCoefficient_sourceScale
    {d N : ℕ} {w : ℝ}
    (width : 0 < w) (grid : 0 < N) (dimension : 0 < d)
    (ξ : BipartiteUnitVector d) (i : Fin d) :
    Real.sqrt (w * (d : ℝ)) *
        (‖sharedThresholdResourceRaw (d := Fin d)
          (fun _ : Fin N => (1 : ℝ))‖⁻¹ : ℝ) *
        Real.sqrt
          ((dSVDensityRationalPhysicalAcceptedRank
            w N ξ i).val : ℝ) =
      dSVDensityRationalCanonicalAcceptedCoefficient w N ξ i := by
  have d_nonzero : (d : ℝ) ≠ 0 := by
    exact_mod_cast (Nat.ne_of_gt dimension)
  have n_nonzero : (N : ℝ) ≠ 0 := by
    exact_mod_cast (Nat.ne_of_gt grid)
  have source_positive :
      0 < ‖sharedThresholdResourceRaw (d := Fin d)
        (fun _ : Fin N => (1 : ℝ))‖ := by
    have source_sq := dSVUniformDensityThresholdRaw_norm_sq N d
    have product_positive : (0 : ℝ) < (d : ℝ) * (N : ℝ) := by
      positivity
    nlinarith [norm_nonneg
      (sharedThresholdResourceRaw (d := Fin d)
        (fun _ : Fin N => (1 : ℝ)))]
  have left_nonnegative :
      0 ≤ Real.sqrt (w * (d : ℝ)) *
        (‖sharedThresholdResourceRaw (d := Fin d)
          (fun _ : Fin N => (1 : ℝ))‖⁻¹ : ℝ) *
        Real.sqrt
          ((dSVDensityRationalPhysicalAcceptedRank
            w N ξ i).val : ℝ) := by
    positivity
  have right_nonnegative :=
    dSVDensityRationalCanonicalAcceptedCoefficient_nonneg
      w N ξ i
  have same_square :
      (Real.sqrt (w * (d : ℝ)) *
        (‖sharedThresholdResourceRaw (d := Fin d)
          (fun _ : Fin N => (1 : ℝ))‖⁻¹ : ℝ) *
        Real.sqrt
          ((dSVDensityRationalPhysicalAcceptedRank
            w N ξ i).val : ℝ)) ^ 2 =
        dSVDensityRationalCanonicalAcceptedCoefficient
          w N ξ i ^ 2 := by
    rw [mul_pow, mul_pow,
      Real.sq_sqrt (by positivity : (0 : ℝ) ≤ w * (d : ℝ)),
      inv_pow, dSVUniformDensityThresholdRaw_norm_sq,
      Real.sq_sqrt (by positivity :
        (0 : ℝ) ≤
          (dSVDensityRationalPhysicalAcceptedRank
            w N ξ i).val),
      dSVDensityRationalPhysicalAcceptedRank_targetCoefficient_sq
        width N ξ i]
    field_simp
  nlinarith

theorem unconditionalConjugateTranspose_eq_inverse
    {d : ℕ} (U : Matrix.unitaryGroup (Fin d) ℂ) :
    (conjugateUnitary U : Matrix (Fin d) (Fin d) ℂ).transpose =
      ((U⁻¹ : Matrix.unitaryGroup (Fin d) ℂ) :
        Matrix (Fin d) (Fin d) ℂ) := by
  change U.val.conjTranspose.transpose.transpose =
    ((U⁻¹ : Matrix.unitaryGroup (Fin d) ℂ) :
      Matrix (Fin d) (Fin d) ℂ)
  rw [Matrix.transpose_transpose]
  change star (U : Matrix (Fin d) (Fin d) ℂ) = _
  exact congrArg
    (fun V : Matrix.unitaryGroup (Fin d) ℂ =>
      (V : Matrix (Fin d) (Fin d) ℂ))
    (Unitary.star_eq_inv U)

theorem unconditionalConjugateBobBasisOverlapCancellation
    {d : ℕ} (U V : Matrix.unitaryGroup (Fin d) ℂ) :
    (unitaryBasisOverlap U V : Matrix (Fin d) (Fin d) ℂ) *
        (conjugateUnitary V :
          Matrix (Fin d) (Fin d) ℂ).transpose =
      (conjugateUnitary U :
        Matrix (Fin d) (Fin d) ℂ).transpose := by
  rw [unconditionalConjugateTranspose_eq_inverse,
    unconditionalConjugateTranspose_eq_inverse]
  change
    (((U⁻¹ * V : Matrix.unitaryGroup (Fin d) ℂ) :
      Matrix (Fin d) (Fin d) ℂ)) *
      ((V⁻¹ : Matrix.unitaryGroup (Fin d) ℂ) :
        Matrix (Fin d) (Fin d) ℂ) =
      ((U⁻¹ : Matrix.unitaryGroup (Fin d) ℂ) :
        Matrix (Fin d) (Fin d) ℂ)
  change
    (((U⁻¹ * V) * V⁻¹ : Matrix.unitaryGroup (Fin d) ℂ) :
      Matrix (Fin d) (Fin d) ℂ) =
      ((U⁻¹ : Matrix.unitaryGroup (Fin d) ℂ) :
        Matrix (Fin d) (Fin d) ℂ)
  simp

theorem unconditionalConjugateBobBasisOverlap_sum
    {d : ℕ} (U V : Matrix.unitaryGroup (Fin d) ℂ)
    (i b : Fin d) :
    (∑ j : Fin d,
      unitaryBasisOverlap U V i j *
        star ((V : Matrix (Fin d) (Fin d) ℂ) b j)) =
      star ((U : Matrix (Fin d) (Fin d) ℂ) b i) := by
  have identity := congrArg
    (fun M : Matrix (Fin d) (Fin d) ℂ => M i b)
    (unconditionalConjugateBobBasisOverlapCancellation U V)
  simpa [Matrix.mul_apply, Matrix.transpose_apply,
    conjugateUnitary_apply] using identity

theorem unconditionalRationalMixedConjugateBobSpectral_sum
    {d : ℕ} (ξ ζ : BipartiteUnitVector d)
    (i b : Fin d) :
    (∑ j : Fin d,
      dSVDensityRationalLocalSpectralPairBasisOverlap ξ ζ i j *
        star
          ((dSVUniformDensityThresholdLeftBobBasis ζ :
            Matrix (Fin d) (Fin d) ℂ) b j)) =
      star
        ((dSVUniformDensityThresholdLeftBobBasis ξ :
          Matrix (Fin d) (Fin d) ℂ) b i) := by
  exact unconditionalConjugateBobBasisOverlap_sum
    (dSVUniformDensityThresholdLeftBobBasis ξ)
    (dSVUniformDensityThresholdLeftBobBasis ζ) i b

theorem unconditionalConjugateCanonicalAcceptedTarget_apply
    {d N : ℕ} (w : ℝ)
    (ξ : BipartiteUnitVector d)
    (a b : Fin d) :
    star
        (dSVDensityRationalCanonicalAcceptedTarget w N ξ
          (a, b)) =
      ∑ i : Fin d,
        (dSVDensityRationalCanonicalAcceptedCoefficient
          w N ξ i : ℂ) *
        star
          ((dSVDensityRationalCanonicalAliceBasis ξ :
            Matrix (Fin d) (Fin d) ℂ) a i) *
        star
          ((dSVUniformDensityThresholdLeftBobBasis ξ :
            Matrix (Fin d) (Fin d) ℂ) b i) := by
  unfold dSVDensityRationalCanonicalAcceptedTarget
  rw [schmidtVector_apply]
  simp

theorem unconditionalMixedConjugateCanonicalAcceptedTarget_sum
    {d N : ℕ} {w : ℝ}
    (width : 0 < w) (grid : 0 < N) (dimension : 0 < d)
    (ξ ζ : BipartiteUnitVector d)
    (a b : Fin d) :
    (∑ i : Fin d, ∑ j : Fin d,
      (Real.sqrt (w * (d : ℝ)) : ℂ) *
        ((‖sharedThresholdResourceRaw (d := Fin d)
          (fun _ : Fin N => (1 : ℝ))‖⁻¹ : ℝ) : ℂ) *
        (Real.sqrt
          ((dSVDensityRationalPhysicalAcceptedRank
            w N ξ i).val : ℝ) : ℂ) *
        star
          ((dSVDensityRationalCanonicalAliceBasis ξ :
            Matrix (Fin d) (Fin d) ℂ) a i) *
        dSVDensityRationalLocalSpectralPairBasisOverlap
          ξ ζ i j *
        star
          ((dSVUniformDensityThresholdLeftBobBasis ζ :
            Matrix (Fin d) (Fin d) ℂ) b j)) =
      star
        (dSVDensityRationalCanonicalAcceptedTarget
          w N ξ (a, b)) := by
  classical
  calc
    _ =
        ∑ i : Fin d,
          ((Real.sqrt (w * (d : ℝ)) : ℂ) *
            ((‖sharedThresholdResourceRaw (d := Fin d)
              (fun _ : Fin N => (1 : ℝ))‖⁻¹ : ℝ) : ℂ) *
            (Real.sqrt
              ((dSVDensityRationalPhysicalAcceptedRank
                w N ξ i).val : ℝ) : ℂ) *
            star
              ((dSVDensityRationalCanonicalAliceBasis ξ :
                Matrix (Fin d) (Fin d) ℂ) a i)) *
          (∑ j : Fin d,
            dSVDensityRationalLocalSpectralPairBasisOverlap
              ξ ζ i j *
            star
              ((dSVUniformDensityThresholdLeftBobBasis ζ :
                Matrix (Fin d) (Fin d) ℂ) b j)) := by
          apply Finset.sum_congr rfl
          intro i _
          rw [Finset.mul_sum]
          apply Finset.sum_congr rfl
          intro j _
          ring
    _ =
        ∑ i : Fin d,
          (dSVDensityRationalCanonicalAcceptedCoefficient
            w N ξ i : ℂ) *
          star
            ((dSVDensityRationalCanonicalAliceBasis ξ :
              Matrix (Fin d) (Fin d) ℂ) a i) *
          star
            ((dSVUniformDensityThresholdLeftBobBasis ξ :
              Matrix (Fin d) (Fin d) ℂ) b i) := by
          apply Finset.sum_congr rfl
          intro i _
          rw [unconditionalRationalMixedConjugateBobSpectral_sum]
          have coefficient := congrArg (fun x : ℝ => (x : ℂ))
            (unconditionalCanonicalAcceptedCoefficient_sourceScale
              width grid dimension ξ i)
          push_cast at coefficient
          rw [← coefficient]
          push_cast
          ring
    _ = _ :=
      (unconditionalConjugateCanonicalAcceptedTarget_apply
        w ξ a b).symm

theorem unconditionalMixedConjugateSigmaAtomLift_apply
    {d m : ℕ} (B : ℕ)
    (U : Matrix.unitaryGroup (Fin d) ℂ)
    (φ ψ : Fin B) (i j : Fin d) (a b : Fin m) :
    (unconditionalMixedConjugateSigmaAtomLift (m := m) B U :
      Matrix (Σ _ : Fin B × Fin d, Fin m)
        (Σ _ : Fin B × Fin d, Fin m) ℂ)
      ⟨(φ, i), a⟩ ⟨(ψ, j), b⟩ =
      if φ = ψ ∧ a = b then
        (U : Matrix (Fin d) (Fin d) ℂ) i j
      else 0 := by
  classical
  by_cases phase : φ = ψ <;>
    by_cases work : a = b <;>
      simp [unconditionalMixedConjugateSigmaAtomLift,
        Matrix.reindex_apply, Matrix.kroneckerMap_apply, phase, work]

theorem unconditionalMixedConjugateSigmaLocalAction_apply
    {d m : ℕ} (B : ℕ)
    (U V : Matrix.unitaryGroup (Fin d) ℂ)
    (z : EuclideanSpace ℂ
      ((Σ _ : Fin B × Fin d, Fin m) ×
        (Σ _ : Fin B × Fin d, Fin m)))
    (φ ψ : Fin B) (i j : Fin d) (a b : Fin m) :
    unconditionalMixedConjugateSigmaLocalAction B U V z
        (⟨(φ, i), a⟩, ⟨(ψ, j), b⟩) =
      ∑ k : Fin d, ∑ l : Fin d,
        (U : Matrix (Fin d) (Fin d) ℂ) i k *
        (V : Matrix (Fin d) (Fin d) ℂ) j l *
        z (⟨(φ, k), a⟩, ⟨(ψ, l), b⟩) := by
  classical
  simp [unconditionalMixedConjugateSigmaLocalAction,
    Matrix.mulVec, dotProduct, Matrix.kroneckerMap_apply,
    Fintype.sum_prod_type, Fintype.sum_sigma,
    unconditionalMixedConjugateSigmaAtomLift_apply,
    mul_assoc, ite_and]

theorem unconditionalMixedConjugateTargetCovariance
    {d N B n : ℕ} {w : ℝ}
    (width : 0 < w) (grid : 0 < N) (dimension : 0 < d)
    (ξ ζ : BipartiteUnitVector d) :
    Real.sqrt (w * (d : ℝ)) •
      unconditionalMixedConjugateSigmaLocalAction
        (m := N * n) B
        (conjugateUnitary
          (dSVDensityRationalCanonicalAliceBasis ξ))
        (conjugateUnitary
          (dSVUniformDensityThresholdLeftBobBasis ζ))
        (dSVDensityRationalPublicBucketPhysicalCoherentTargetState
          (N := N) (B := B) w n ξ ζ) =
    unconditionalMixedConjugateAcceptedPhaseHarmonicTarget
        (B := B) w n ξ := by
  classical
  ext ⟨⟨⟨φ, i⟩, a⟩, ⟨⟨ψ, j⟩, b⟩⟩
  change
    (Real.sqrt (w * (d : ℝ)) : ℂ) *
      unconditionalMixedConjugateSigmaLocalAction B
        (conjugateUnitary
          (dSVDensityRationalCanonicalAliceBasis ξ))
        (conjugateUnitary
          (dSVUniformDensityThresholdLeftBobBasis ζ))
        (dSVDensityRationalPublicBucketPhysicalCoherentTargetState
          (N := N) (B := B) w n ξ ζ)
        (⟨(φ, i), a⟩, ⟨(ψ, j), b⟩) =
      (ePRState B (φ, ψ) *
        star (dSVDensityRationalCanonicalAcceptedTarget
          w N ξ (i, j))) *
        embezzlementState (N * n) (a, b)
  rw [unconditionalMixedConjugateSigmaLocalAction_apply]
  simp_rw [conjugateUnitary_apply,
    unconditionalPublicBucketPhysicalCoherentTarget_apply]
  rw [← unconditionalMixedConjugateCanonicalAcceptedTarget_sum
    width grid dimension ξ ζ i j]
  simp_rw [Finset.mul_sum, Finset.sum_mul]
  apply Finset.sum_congr rfl
  intro k _
  apply Finset.sum_congr rfl
  intro l _
  ring

end

noncomputable section

open WithLp
open scoped BigOperators Kronecker ComplexOrder MatrixOrder

theorem unconditionalMixedConjugateSelectedBranch_tensorAction
    {ι τ : Type*} [Fintype ι] [DecidableEq ι]
    [Fintype τ] [DecidableEq τ]
    (U V : Matrix.unitaryGroup ι ℂ)
    (stage : EuclideanSpace ℂ (ι × ι))
    (work : EuclideanSpace ℂ τ) :
    unconditionalMixedConjugateSelectedBranchLocalAction
        U V
        (unconditionalMatchedVerifierTensor stage work) =
      unconditionalMatchedVerifierTensor
        (toLp 2
          ((((U : Matrix ι ι ℂ) ⊗ₖ
              (V : Matrix ι ι ℂ)).mulVec
            (ofLp stage)))) work := by
  classical
  ext ⟨⟨a, b⟩, t⟩
  simp [unconditionalMixedConjugateSelectedBranchLocalAction,
    unconditionalMixedConjugateSelectedBranchUnitary,
    unconditionalMatchedVerifierTensor,
    Matrix.mulVec, dotProduct, Matrix.kroneckerMap_apply,
    Matrix.one_apply,
    Fintype.sum_prod_type, Finset.sum_mul, mul_assoc]

theorem unconditionalMixedConjugateSelectedBranch_tensor_smul
    {s τ : Type*} [Fintype s] [Fintype τ]
    (c : ℝ) (stage : EuclideanSpace ℂ s)
    (work : EuclideanSpace ℂ τ) :
    c • unconditionalMatchedVerifierTensor stage work =
      unconditionalMatchedVerifierTensor
        (c • stage) work := by
  ext ⟨a, b⟩
  change (c : ℂ) * (stage a * work b) =
    ((c : ℂ) * stage a) * work b
  ring

theorem unconditionalMixedConjugateSelectedBranchCovariance
    {S N d L B m : ℕ} {τ : Type*} [Fintype τ] [DecidableEq τ]
    (grid : 0 < N) (dimension : 0 < d)
    (width : Fin S → ℝ) (schedule : Fin L → Fin S)
    (ξ ζ : BipartiteUnitVector d)
    (j : Fin L)
    (positive : 0 < width (schedule j))
    (rest : EuclideanSpace ℂ τ) :
    Real.sqrt (width (schedule j) * (d : ℝ)) •
      unconditionalMixedConjugateSelectedBranchLocalAction
        (unconditionalMixedConjugateSigmaAtomLift
          (m := N * m) B
          (conjugateUnitary
            (dSVDensityRationalCanonicalAliceBasis ξ)))
        (unconditionalMixedConjugateSigmaAtomLift
          (m := N * m) B
          (conjugateUnitary
            (dSVUniformDensityThresholdLeftBobBasis ζ)))
        (unconditionalSelectedCopyIdealMatchedBranch
          (N := N) (B := B) (m := m)
          width schedule ξ ζ j rest) =
      unconditionalMatchedVerifierTensor
        (unconditionalMixedConjugateAcceptedPhaseHarmonicTarget
          (N := N) (B := B) (width (schedule j)) m ξ)
        (unconditionalSelectedCopyRetainedWork
          (N := N) width schedule ξ ζ j rest) := by
  classical
  unfold unconditionalSelectedCopyIdealMatchedBranch
    unconditionalSelectedCopyIdealStage
  rw [unconditionalMixedConjugateSelectedBranch_tensorAction,
    unconditionalMixedConjugateSelectedBranch_tensor_smul]
  congr 1
  exact unconditionalMixedConjugateTargetCovariance
    positive grid dimension ξ ζ

end

noncomputable section

open WithLp
open scoped BigOperators Kronecker ComplexOrder MatrixOrder
  Matrix.Norms.L2Operator InnerProductSpace

variable {X Y A B : Type*}
variable [Fintype X] [Fintype Y] [Fintype A] [Fintype B]

theorem unconditionalExactFairGammaUnit_eq_global
    (G : Game X Y A B) (n : ℕ) (S : Strategy (G.repeat n))
    (D : Finset (Fin n))
    (u : ExactLocallySampleableTuple X Y A B D) :
    unconditionalExactFairGammaUnit G n S D u =
      exactGlobalHistoryFinGamma
        G n S D u.2.2.2 u.2.1 := by
  apply Subtype.ext
  rfl

end

noncomputable section

open WithLp
open scoped BigOperators Kronecker ComplexOrder MatrixOrder
  Matrix.Norms.L2Operator InnerProductSpace

theorem unconditionalCanonicalRaw_eq_norm_smul_unit
    {d N : ℕ} {w : ℝ}
    (width : 0 < w) (grid : 0 < N)
    (fine : (d : ℝ) / (N : ℝ) < 1 / (w + 1))
    (gamma : BipartiteUnitVector d) :
    dSVDensityRationalCanonicalAcceptedTarget w N gamma =
      ‖dSVDensityRationalCanonicalAcceptedTarget
        w N gamma‖ •
        (dSVDensityRationalCanonicalAcceptedUnitTarget
          width grid fine gamma).val := by
  exact (NormedSpace.norm_smul_normalize
    (dSVDensityRationalCanonicalAcceptedTarget
      w N gamma)).symm

theorem unconditionalConjugateCanonicalRaw_eq_norm_smul_unit
    {d N : ℕ} {w : ℝ}
    (width : 0 < w) (grid : 0 < N)
    (fine : (d : ℝ) / (N : ℝ) < 1 / (w + 1))
    (gamma : BipartiteUnitVector d) :
    unconditionalConjugatePureVector
        (dSVDensityRationalCanonicalAcceptedTarget
          w N gamma) =
      ‖dSVDensityRationalCanonicalAcceptedTarget
        w N gamma‖ •
        unconditionalConjugatePureVector
          (dSVDensityRationalCanonicalAcceptedUnitTarget
            width grid fine gamma).val := by
  have raw := unconditionalCanonicalRaw_eq_norm_smul_unit
    width grid fine gamma
  ext i
  have coefficient := congrArg
    (fun z : EuclideanSpace ℂ (Fin d × Fin d) => z i) raw
  change
    star (dSVDensityRationalCanonicalAcceptedTarget
      w N gamma i) =
      (‖dSVDensityRationalCanonicalAcceptedTarget
        w N gamma‖ : ℂ) *
        star
          ((dSVDensityRationalCanonicalAcceptedUnitTarget
            width grid fine gamma).val i)
  change
    dSVDensityRationalCanonicalAcceptedTarget
      w N gamma i =
      (‖dSVDensityRationalCanonicalAcceptedTarget
        w N gamma‖ : ℂ) *
        (dSVDensityRationalCanonicalAcceptedUnitTarget
          width grid fine gamma).val i at coefficient
  rw [coefficient]
  simp

theorem unconditionalPhaseCanonicalRaw_eq_norm_smul_unit
    {d N B m : ℕ} {w : ℝ}
    (width : 0 < w) (grid : 0 < N)
    (fine : (d : ℝ) / (N : ℝ) < 1 / (w + 1))
    (gamma : BipartiteUnitVector d) :
    dSVDensityRationalPublicBucketCoherentPhaseSigmaState
        B
        (unconditionalConjugatePureVector
          (dSVDensityRationalCanonicalAcceptedTarget
            w N gamma))
        (fun _ _ _ => embezzlementState m) =
      ‖dSVDensityRationalCanonicalAcceptedTarget
        w N gamma‖ •
        dSVDensityRationalPublicBucketCoherentPhaseSigmaState
          B
          (unconditionalConjugatePureVector
            (dSVDensityRationalCanonicalAcceptedUnitTarget
              width grid fine gamma).val)
          (fun _ _ _ => embezzlementState m) := by
  have raw :=
    unconditionalConjugateCanonicalRaw_eq_norm_smul_unit
      width grid fine gamma
  ext ⟨⟨⟨φ, i⟩, a⟩, ⟨⟨ψ, j⟩, b⟩⟩
  have coefficient := congrArg
    (fun z : EuclideanSpace ℂ (Fin d × Fin d) => z (i, j)) raw
  change
    (ePRState B (φ, ψ) *
      star (dSVDensityRationalCanonicalAcceptedTarget
        w N gamma (i, j))) *
      embezzlementState m (a, b) =
    (‖dSVDensityRationalCanonicalAcceptedTarget
      w N gamma‖ : ℂ) *
      ((ePRState B (φ, ψ) *
        star ((dSVDensityRationalCanonicalAcceptedUnitTarget
          width grid fine gamma).val (i, j))) *
        embezzlementState m (a, b))
  change
    star (dSVDensityRationalCanonicalAcceptedTarget
      w N gamma (i, j)) =
      (‖dSVDensityRationalCanonicalAcceptedTarget
        w N gamma‖ : ℂ) *
        star ((dSVDensityRationalCanonicalAcceptedUnitTarget
          width grid fine gamma).val (i, j)) at coefficient
  rw [coefficient]
  ring

theorem unconditionalMatchedTensor_real_smul_work
    {s t : Type*} [Fintype s] [Fintype t]
    (c : ℝ)
    (stage : EuclideanSpace ℂ s)
    (work : EuclideanSpace ℂ t) :
    c • unconditionalMatchedVerifierTensor stage work =
      unconditionalMatchedVerifierTensor stage (c • work) := by
  ext q
  change (c : ℂ) * (stage q.1 * work q.2) =
    stage q.1 * ((c : ℂ) * work q.2)
  ring

theorem unconditionalPhaseCanonical_sourceScale_absorbed
    {d N B m : ℕ} {w : ℝ}
    (width : 0 < w) (grid : 0 < N) (dimension : 0 < d)
    (fine : (d : ℝ) / (N : ℝ) < 1 / (w + 1))
    (gamma : BipartiteUnitVector d)
    {T : Type*} [Fintype T]
    (work : EuclideanSpace ℂ T) :
    Real.sqrt (w * (d : ℝ)) •
      unconditionalMatchedVerifierTensor
        (dSVDensityRationalPublicBucketCoherentPhaseSigmaState
          B
          (unconditionalConjugatePureVector
            (dSVDensityRationalCanonicalAcceptedUnitTarget
              width grid fine gamma).val)
          (fun _ _ _ => embezzlementState m))
        ((‖dSVDensityRationalCanonicalAcceptedTarget
            w N gamma‖ / Real.sqrt (w * (d : ℝ))) • work) =
      unconditionalMatchedVerifierTensor
        (dSVDensityRationalPublicBucketCoherentPhaseSigmaState
          B
          (unconditionalConjugatePureVector
            (dSVDensityRationalCanonicalAcceptedTarget
              w N gamma))
          (fun _ _ _ => embezzlementState m))
        work := by
  let scale : ℝ := Real.sqrt (w * (d : ℝ))
  let mass : ℝ :=
    ‖dSVDensityRationalCanonicalAcceptedTarget w N gamma‖
  let stage :=
    dSVDensityRationalPublicBucketCoherentPhaseSigmaState
      B
      (unconditionalConjugatePureVector
        (dSVDensityRationalCanonicalAcceptedUnitTarget
          width grid fine gamma).val)
      (fun _ _ _ => embezzlementState m)
  have real_dimension : 0 < (d : ℝ) := by
    exact_mod_cast dimension
  have scale_positive : 0 < scale := by
    dsimp [scale]
    positivity
  have scalar : scale * (mass / scale) = mass := by
    field_simp [ne_of_gt scale_positive]
  have factor :=
    unconditionalPhaseCanonicalRaw_eq_norm_smul_unit
      (B := B) (m := m) width grid fine gamma
  change
    scale •
        unconditionalMatchedVerifierTensor
          stage ((mass / scale) • work) = _
  calc
    scale •
        unconditionalMatchedVerifierTensor
          stage ((mass / scale) • work) =
        unconditionalMatchedVerifierTensor
          stage (scale • ((mass / scale) • work)) :=
      unconditionalMatchedTensor_real_smul_work
        scale stage ((mass / scale) • work)
    _ = unconditionalMatchedVerifierTensor
          stage (mass • work) := by
      rw [smul_smul, scalar]
    _ = mass •
          unconditionalMatchedVerifierTensor stage work :=
      (unconditionalMatchedTensor_real_smul_work
        mass stage work).symm
    _ = unconditionalMatchedVerifierTensor
          (mass • stage) work :=
      unconditionalMixedConjugateSelectedBranch_tensor_smul
        mass stage work
    _ = _ := by
      rw [factor]

theorem integratorActualCanonicalRetainedPhaseTail_norm
    {S B N d L : ℕ}
    (phases : 0 < B) (grid : 0 < N) (dimension : 0 < d)
    (j : Fin L) :
    ‖unconditionalActualCanonicalRetainedPhaseTail
        (S := S) (B := B) (N := N) (d := d) (L := L) j‖ = 1 := by
  have residual : 0 < Fintype.card (Fin (S - 1) → Fin B) := by
    apply Fintype.card_pos_iff.mpr
    exact ⟨fun _ => ⟨0, phases⟩⟩
  change
    ‖unconditionalMatchedVerifierTensor
        (dSVUniformDensityIndependentSharedState
          (L - j.val) N d)
        (ePRState
          (Fintype.card (Fin (S - 1) → Fin B)))‖ = 1
  rw [unconditionalMatchedVerifierTensor_norm,
    dSVUniformDensityIndependentSharedState_norm
      (L - j.val) grid dimension,
    ePRState_norm _ residual]
  norm_num

end

noncomputable section

open WithLp
open scoped BigOperators Kronecker ComplexOrder MatrixOrder
  Matrix.Norms.L2Operator InnerProductSpace

theorem unconditionalActualSelectedBranchLocalAction_decidableEq_irrel
    {ι τ : Type*} [Fintype ι] [DecidableEq ι] [Fintype τ]
    (left right : DecidableEq τ)
    (U V : Matrix.unitaryGroup ι ℂ)
    (z : EuclideanSpace ℂ ((ι × ι) × τ)) :
    @unconditionalMixedConjugateSelectedBranchLocalAction
      ι τ inferInstance inferInstance inferInstance left U V z =
    @unconditionalMixedConjugateSelectedBranchLocalAction
      ι τ inferInstance inferInstance inferInstance right U V z := by
  have same : left = right := Subsingleton.elim left right
  cases same
  rfl

theorem unconditionalActualC485CanonicalCorrectedIdeal_generic
    {S N d L B m : ℕ} {T : Type*}
    [Fintype T] [DecidableEq T]
    {width : Fin S → ℝ}
    (schedule : Fin L → Fin S)
    (ξ ζ : BipartiteUnitVector d)
    (j : Fin L)
    (positive : 0 < width (schedule j))
    (grid : 0 < N) (dimension : 0 < d)
    (fine : (d : ℝ) / (N : ℝ) < 1 / (width (schedule j) + 1))
    (rest : EuclideanSpace ℂ T) :
    unconditionalMatchedVerifierTensor
        (dSVDensityRationalPublicBucketCoherentPhaseSigmaState B
          (unconditionalConjugatePureVector
            (dSVDensityRationalCanonicalAcceptedUnitTarget
              positive grid fine ξ).val)
          (fun _ _ _ => embezzlementState (N * m)))
        ((‖dSVDensityRationalCanonicalAcceptedTarget
              (width (schedule j)) N ξ‖ /
            Real.sqrt (width (schedule j) * (d : ℝ))) •
          unconditionalSelectedCopyRetainedWork
            (N := N) width schedule ξ ζ j rest) =
      unconditionalMixedConjugateSelectedBranchLocalAction
        (unconditionalMixedConjugateSigmaAtomLift
          (m := N * m) B
          (conjugateUnitary
            (dSVDensityRationalCanonicalAliceBasis ξ)))
        (unconditionalMixedConjugateSigmaAtomLift
          (m := N * m) B
          (conjugateUnitary
            (dSVUniformDensityThresholdLeftBobBasis ζ)))
        (unconditionalSelectedCopyIdealMatchedBranch
          (N := N) (B := B) (m := m)
          width schedule ξ ζ j rest) := by
  have scale_positive : 0 < Real.sqrt (width (schedule j) * (d : ℝ)) := by
    positivity
  apply smul_right_injective _ scale_positive.ne'
  exact
    (unconditionalPhaseCanonical_sourceScale_absorbed
      (B := B) (m := N * m) positive grid dimension fine ξ
      (unconditionalSelectedCopyRetainedWork
        (N := N) width schedule ξ ζ j rest)).trans
      (unconditionalMixedConjugateSelectedBranchCovariance
        (B := B) (m := m) grid dimension width schedule ξ ζ j
        positive rest).symm

theorem unconditionalActualC485CanonicalVector_eq_correctedIdeal
    {S B N d L m : ℕ}
    {width : Fin S → ℝ}
    (schedule : Fin L → Fin S)
    (ξ ζ : BipartiteUnitVector d)
    (j : Fin L)
    (positive : 0 < width (schedule j))
    (grid : 0 < N) (dimension : 0 < d)
    (fine : (d : ℝ) / (N : ℝ) < 1 / (width (schedule j) + 1)) :
    integratorActualC485CanonicalVector
        (B := B) (m := m) schedule ξ ζ j positive grid fine =
      unconditionalMixedConjugateSelectedBranchLocalAction
        (unconditionalMixedConjugateSigmaAtomLift
          (m := N * m) B
          (conjugateUnitary
            (dSVDensityRationalCanonicalAliceBasis ξ)))
        (unconditionalMixedConjugateSigmaAtomLift
          (m := N * m) B
          (conjugateUnitary
            (dSVUniformDensityThresholdLeftBobBasis ζ)))
        (unconditionalSelectedCopyIdealMatchedBranch
          (N := N) (B := B) (m := m)
          width schedule ξ ζ j
          (unconditionalActualCanonicalRetainedPhaseTail
            (S := S) (B := B) (N := N) (d := d) (L := L) j)) := by
  change
    unconditionalMatchedVerifierTensor
        (dSVDensityRationalPublicBucketCoherentPhaseSigmaState B
          (unconditionalConjugatePureVector
            (dSVDensityRationalCanonicalAcceptedUnitTarget
              positive grid fine ξ).val)
          (fun _ _ _ => embezzlementState (N * m)))
        ((‖dSVDensityRationalCanonicalAcceptedTarget
              (width (schedule j)) N ξ‖ /
            Real.sqrt (width (schedule j) * (d : ℝ))) •
          unconditionalSelectedCopyRetainedWork
            (N := N) width schedule ξ ζ j
            (unconditionalActualCanonicalRetainedPhaseTail
              (S := S) (B := B) (N := N) (d := d) (L := L) j)) = _
  convert
    (unconditionalActualC485CanonicalCorrectedIdeal_generic
      (B := B) (m := m)
      schedule ξ ζ j positive grid dimension fine
      (unconditionalActualCanonicalRetainedPhaseTail
        (S := S) (B := B) (N := N) (d := d) (L := L) j)) using 1
  exact unconditionalActualSelectedBranchLocalAction_decidableEq_irrel
    _ _ _ _ _

theorem unconditionalActualSelectedBranchLocalAction_norm
    {ι τ : Type*} [Fintype ι] [DecidableEq ι]
    [Fintype τ] [DecidableEq τ]
    (U V : Matrix.unitaryGroup ι ℂ)
    (z : EuclideanSpace ℂ ((ι × ι) × τ)) :
    ‖unconditionalMixedConjugateSelectedBranchLocalAction U V z‖ =
      ‖z‖ := by
  classical
  let M : Matrix ((ι × ι) × τ) ((ι × ι) × τ) ℂ :=
    (unconditionalMixedConjugateSelectedBranchUnitary
      (τ := τ) U V : Matrix ((ι × ι) × τ) ((ι × ι) × τ) ℂ)
  have gram : M.conjTranspose * M = 1 := by
    simpa [M, Matrix.star_eq_conjTranspose] using
      (Matrix.mem_unitaryGroup_iff'.mp
        (unconditionalMixedConjugateSelectedBranchUnitary
          (τ := τ) U V).property)
  have squared : ‖toLp 2 (M.mulVec (ofLp z))‖ ^ 2 = ‖z‖ ^ 2 := by
    rw [rectangular_matrix_mulVec_norm_sq, gram]
    simp [quadraticExpectation, ← Complex.ofReal_pow]
  change ‖toLp 2 (M.mulVec (ofLp z))‖ = ‖z‖
  nlinarith [norm_nonneg (toLp 2 (M.mulVec (ofLp z))), norm_nonneg z]

theorem unconditionalActualSelectedBranchLocalAction_sub
    {ι τ : Type*} [Fintype ι] [DecidableEq ι]
    [Fintype τ] [DecidableEq τ]
    (U V : Matrix.unitaryGroup ι ℂ)
    (x y : EuclideanSpace ℂ ((ι × ι) × τ)) :
    unconditionalMixedConjugateSelectedBranchLocalAction U V x -
        unconditionalMixedConjugateSelectedBranchLocalAction U V y =
      unconditionalMixedConjugateSelectedBranchLocalAction
        U V (x - y) := by
  classical
  ext i
  simp [unconditionalMixedConjugateSelectedBranchLocalAction,
    Matrix.mulVec, dotProduct, Finset.sum_sub_distrib, mul_sub]

theorem unconditionalActualC485CleanDeviation_sq
    {S B N d L m : ℕ}
    (Q : ℕ) (width : Fin S → ℝ)
    (schedule : Fin L → Fin S)
    (ξ ζ : BipartiteUnitVector d)
    (A C : Fin B → Option ℕ →
      Matrix.unitaryGroup (Fin (N * m)) ℂ)
    (j : Fin L)
    (positive : 0 < width (schedule j))
    (phases : 0 < B) (grid : 0 < N) (dimension : 0 < d)
    (fine : (d : ℝ) / (N : ℝ) < 1 / (width (schedule j) + 1)) :
    ‖integratorActualC485CleanedVector
          (B := B) (m := m) Q width schedule ξ ζ A C j -
        integratorActualC485CanonicalVector
          (B := B) (m := m) schedule ξ ζ j positive grid fine‖ ^ 2 =
      dSVDensityRationalHeterogeneousPhysicalSurvival
          N width schedule ξ ζ j.val *
        dSVDensityRationalHeterogeneousCommonStopGaugeStageError
          Q (width (schedule j)) m ξ ζ A C := by
  classical
  rw [unconditionalActualC485CanonicalVector_eq_correctedIdeal
    schedule ξ ζ j positive grid dimension fine]
  unfold integratorActualC485CleanedVector
  rw [unconditionalActualSelectedBranchLocalAction_sub,
    unconditionalActualSelectedBranchLocalAction_norm]
  exact unconditionalSelectedCopyMatchedBranch_deviation_sq
    Q width schedule ξ ζ A C j
    (unconditionalActualCanonicalRetainedPhaseTail
      (S := S) (B := B) (N := N) (d := d) (L := L) j)
    (integratorActualCanonicalRetainedPhaseTail_norm
      phases grid dimension j)

theorem unconditionalActualC485CleanDeviation_eq_hazard
    {S B N d L m : ℕ}
    (Q : ℕ) (width : Fin S → ℝ)
    (schedule : Fin L → Fin S)
    (ξ ζ : BipartiteUnitVector d)
    (A C : Fin B → Option ℕ →
      Matrix.unitaryGroup (Fin (N * m)) ℂ)
    (positive : ∀ s, 0 < width s)
    (phases : 0 < B) (grid : 0 < N) (dimension : 0 < d)
    (fine : ∀ s, (d : ℝ) / (N : ℝ) < 1 / (width s + 1)) :
    (∑ j : Fin L,
      ‖integratorActualC485CleanedVector
            (B := B) (m := m) Q width schedule ξ ζ A C j -
          integratorActualC485CanonicalVector
            (B := B) (m := m) schedule ξ ζ j
            (positive (schedule j)) grid (fine (schedule j))‖ ^ 2) =
      dSVDensityRationalHeterogeneousStoppedCommonPrefixHazard
        Q m width schedule ξ ζ A C := by
  classical
  simp_rw [unconditionalActualC485CleanDeviation_sq
    Q width schedule ξ ζ A C _ (positive _) phases grid dimension (fine _)]
  unfold dSVDensityRationalHeterogeneousStoppedCommonPrefixHazard
  simp_rw [
    dSVDensityRationalHeterogeneousStoppedCommonPrefixFailureVector_norm_sq]

theorem unconditionalActualC485WeightedCleanDeviation_eq_hazard
    {ι : Type*} [Fintype ι]
    {S B N d L m : ℕ}
    (law : ι → ℝ)
    (Q : ℕ) (width : Fin S → ℝ)
    (schedule : Fin L → Fin S)
    (ξ ζ : ι → BipartiteUnitVector d)
    (A C : Fin B → Option ℕ →
      Matrix.unitaryGroup (Fin (N * m)) ℂ)
    (positive : ∀ s, 0 < width s)
    (phases : 0 < B) (grid : 0 < N) (dimension : 0 < d)
    (fine : ∀ s, (d : ℝ) / (N : ℝ) < 1 / (width s + 1)) :
    (∑ u : ι, law u *
      ∑ j : Fin L,
        ‖integratorActualC485CleanedVector
              (B := B) (m := m)
              Q width schedule (ξ u) (ζ u) A C j -
            integratorActualC485CanonicalVector
              (B := B) (m := m) schedule (ξ u) (ζ u) j
              (positive (schedule j)) grid (fine (schedule j))‖ ^ 2) =
      ∑ u : ι, law u *
        dSVDensityRationalHeterogeneousStoppedCommonPrefixHazard
          Q m width schedule (ξ u) (ζ u) A C := by
  classical
  apply Finset.sum_congr rfl
  intro u _
  rw [unconditionalActualC485CleanDeviation_eq_hazard
    Q width schedule (ξ u) (ζ u) A C positive phases grid dimension fine]

end

noncomputable section

open WithLp
open scoped BigOperators Kronecker ComplexOrder MatrixOrder
  Matrix.Norms.L2Operator InnerProductSpace

open QuantumParallelRepetition.ClassicalSampling

attribute [local instance] Classical.propDecidable

namespace UnconditionalActualFairSourceRoundingContext

variable {X Y A B : Type}
variable [Fintype X] [Fintype Y] [Fintype A] [Fintype B]
variable {G : Game X Y A B} {n : ℕ} {S : Strategy (G.repeat n)}
variable {D : Finset (Fin n)} {alpha gamma : ℝ}

theorem dimension_pos
    (c : UnconditionalActualFairSourceRoundingContext
      G n S D alpha gamma) : 0 < d c :=
  exactGlobalHistoryLocalIndex_card_pos G n S D

end UnconditionalActualFairSourceRoundingContext

end

end QuantumParallelRepetition


open QuantumParallelRepetition
open scoped ComplexOrder Matrix BigOperators InnerProductSpace
open Complex Matrix Finset
open WithLp
open scoped BigOperators Kronecker ComplexOrder MatrixOrder
  Matrix.Norms.L2Operator InnerProductSpace
open QuantumParallelRepetition.ClassicalSampling
open UnconditionalActualFairSourceRoundingContext
attribute [local instance] Classical.propDecidable

theorem solution
    {X Y A B : Type}
    [Fintype X] [Fintype Y] [Fintype A] [Fintype B]
    {G : Game X Y A B} {n : ℕ} {S : Strategy (G.repeat n)}
    {D : Finset (Fin n)} {alpha gamma : ℝ}
    (c : UnconditionalActualFairSourceRoundingContext
      G n S D alpha gamma) :
    deviation c ≤
      (34 / Real.sqrt
          (64 * Real.sqrt (martingaleRate G n S D) +
            alpha ^ (1 / 3 : ℝ))) *
        (64 * Real.sqrt (martingaleRate G n S D) +
          alpha ^ (1 / 3 : ℝ)) +
        4 * (alpha ^ (1 / 12 : ℝ)) ^ 2 +
          unconditionalPrefactorBucketCoefficient *
            Real.sqrt
              (64 * Real.sqrt (martingaleRate G n S D) +
                alpha ^ (1 / 3 : ℝ)) := by
  have identification :=
    unconditionalActualC485WeightedCleanDeviation_eq_hazard
      (law c) c.stopping.Q (width c) (schedule c)
      (gammaVector c) (phiVector c)
      c.stopping.UA c.stopping.UB
      (width_all c) c.stopping.phases c.stopping.grid
      (dimension_pos c) (fine_all c)
  have fair_hazard :
      (∑ h : ExactLocallySampleableTuple X Y A B D,
        law c h *
          dSVDensityRationalHeterogeneousStoppedCommonPrefixHazard
            c.stopping.Q c.stopping.m (width c) (schedule c)
            (gammaVector c h) (phiVector c h)
            c.stopping.UA c.stopping.UB) ≤
        (34 / Real.sqrt
            (64 * Real.sqrt (martingaleRate G n S D) +
              alpha ^ (1 / 3 : ℝ))) *
          (64 * Real.sqrt (martingaleRate G n S D) +
            alpha ^ (1 / 3 : ℝ)) +
          4 * (alpha ^ (1 / 12 : ℝ)) ^ 2 +
            unconditionalPrefactorBucketCoefficient *
              Real.sqrt
                (64 * Real.sqrt (martingaleRate G n S D) +
                  alpha ^ (1 / 3 : ℝ)) := by
    change
      (∑ h : ExactLocallySampleableTuple X Y A B D,
        exactLocallySampleableLaw G n S D h *
          dSVDensityRationalHeterogeneousStoppedCommonPrefixHazard
            c.stopping.Q c.stopping.m
            (fun _ : Fin 1 => c.stopping.w)
            (fun _ : Fin c.stopping.L => 0)
            (unconditionalExactFairGammaUnit G n S D h)
            (exactGlobalHistoryFinPhi
              G n S D h.2.2.2 h.2.2.1)
            c.stopping.UA c.stopping.UB) ≤ _
    simpa only [unconditionalExactFairGammaUnit_eq_global] using
      c.stopping.hazard
  calc
    deviation c =
        (∑ h : ExactLocallySampleableTuple X Y A B D,
          law c h *
            dSVDensityRationalHeterogeneousStoppedCommonPrefixHazard
              c.stopping.Q c.stopping.m (width c) (schedule c)
              (gammaVector c h) (phiVector c h)
              c.stopping.UA c.stopping.UB) := by
          simpa only [deviation, actual, canonical] using identification
    _ ≤ _ := fair_hazard
