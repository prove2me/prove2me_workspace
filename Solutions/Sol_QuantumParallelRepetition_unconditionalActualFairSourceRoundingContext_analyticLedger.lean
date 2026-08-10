import Definitions.Def_quantum_parallel_repetition_game
import Definitions.Def_qpr_core_50
import Theorems.Thm_QuantumParallelRepetition_embezzlementState_norm
import Theorems.Thm_QuantumParallelRepetition_dSVSoftBobLeftReducedDensity_posSemidef
import Theorems.Thm_QuantumParallelRepetition_dSVUniformDensityThresholdSharedState_norm
import Theorems.Thm_QuantumParallelRepetition_dSVDensityRationalMixedAcceptedPrefix_norm_sq
import Theorems.Thm_QuantumParallelRepetition_dSVDensityRationalHeterogeneousPhysicalStopped_mass_partition
import Theorems.Thm_QuantumParallelRepetition_exactSeedWeight_nonneg
import Theorems.Thm_QuantumParallelRepetition_exactAlicePurificationFamily_posSemidef
import Theorems.Thm_QuantumParallelRepetition_exactBobPurificationFamily_posSemidef
import Theorems.Thm_QuantumParallelRepetition_exactSeedWeight_sum
import Theorems.Thm_QuantumParallelRepetition_exactGlobalHistoryLocalIndex_card_pos
import Theorems.Thm_QuantumParallelRepetition_unconditionalActualC485NormalizedDiagonalWork_mass_sum_le_one
import Theorems.Thm_QuantumParallelRepetition_unconditionalActualFairWeightedStoppedSuccess
import Theorems.Thm_QuantumParallelRepetition_UnconditionalActualFairSourceRoundingContext_width_positive
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

open MeasureTheory Filter Set
open scoped BigOperators Topology ComplexOrder MatrixOrder Matrix.Norms.Elementwise

set_option backward.isDefEq.respectTransparency false

attribute [local instance] Matrix.normedAddCommGroup Matrix.normedSpace

@[simp] theorem spectralConjugationCLM_apply
    {d : Type*} [Fintype d] [DecidableEq d]
    (U : Matrix.unitaryGroup d ℂ) (A : Matrix d d ℂ) :
    spectralConjugationCLM U A =
      (U : Matrix d d ℂ) * A * star (U : Matrix d d ℂ) := by
  rfl

end

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

theorem targetSpectralAtom_apply
    {d : Type*} [Fintype d] [DecidableEq d]
    (F : Matrix d d ℂ) (hF : F.PosSemidef)
    (i a b : d) :
    positiveMatrixSpectralAtom F hF i a b =
      (hF.isHermitian.eigenvectorUnitary : Matrix d d ℂ) a i *
        star ((hF.isHermitian.eigenvectorUnitary : Matrix d d ℂ) b i) := by
  classical
  simp [positiveMatrixSpectralAtom, spectralConjugationCLM_apply,
    Matrix.mul_apply, Matrix.diagonal_apply,
    Pi.single_apply]

theorem targetSpectralAtomOverlap_eq_basis_norm_sq
    {d : Type*} [Fintype d] [DecidableEq d]
    (F G : Matrix d d ℂ)
    (hF : F.PosSemidef) (hG : G.PosSemidef)
    (i j : d) :
    spectralAtomOverlap F G hF hG i j =
      ‖unitaryBasisOverlap
        hF.isHermitian.eigenvectorUnitary
        hG.isHermitian.eigenvectorUnitary i j‖ ^ 2 := by
  classical
  let U : Matrix d d ℂ := hF.isHermitian.eigenvectorUnitary
  let V : Matrix d d ℂ := hG.isHermitian.eigenvectorUnitary
  let z : ℂ := ∑ a : d, star (U a i) * V a j
  have cross :
      Matrix.trace
        (positiveMatrixSpectralAtom F hF i *
          positiveMatrixSpectralAtom G hG j) = star z * z := by
    simp only [Matrix.trace, Matrix.diag_apply, Matrix.mul_apply,
      targetSpectralAtom_apply]
    change
      (∑ a : d, ∑ b : d,
        (U a i * star (U b i)) *
          (V b j * star (V a j))) = star z * z
    dsimp [z]
    rw [map_sum, Finset.sum_mul]
    simp only [map_mul]
    simp_rw [Finset.mul_sum]
    apply Finset.sum_congr rfl
    intro a _
    apply Finset.sum_congr rfl
    intro b _
    simp only [starRingEnd_apply, star_star]
    ring
  unfold spectralAtomOverlap
  rw [cross]
  have coeff :
      unitaryBasisOverlap
        hF.isHermitian.eigenvectorUnitary
        hG.isHermitian.eigenvectorUnitary i j = z := by
    simp [unitaryBasisOverlap_apply,
      Matrix.mul_apply, Matrix.conjTranspose_apply, U, V, z]
  rw [coeff, ← Complex.normSq_eq_norm_sq]
  change (star z * z).re = Complex.normSq z
  simpa [Complex.star_def] using
    (congrArg Complex.re
      (@Complex.normSq_eq_conj_mul_self z)).symm

end

noncomputable section

open WithLp
open scoped BigOperators Kronecker ComplexOrder MatrixOrder

set_option backward.isDefEq.respectTransparency false
set_option maxHeartbeats 1800000
set_option maxRecDepth 2048

theorem dSVCanonicalFailurePrefix_card
    {d : ℕ} (r : Fin (d + 1)) :
    (Finset.univ.filter
      (fun i : Fin d => i.val < r.val)).card = r.val := by
  classical
  calc
    (Finset.univ.filter
      (fun i : Fin d => i.val < r.val)).card =
        (Finset.range r.val).card := by
      apply Finset.card_bij (fun i _ => i.val)
      · intro i member
        exact Finset.mem_range.mpr (Finset.mem_filter.mp member).2
      · intro i _ j _ equal
        exact Fin.ext equal
      · intro j member
        have before : j < r.val := Finset.mem_range.mp member
        have bounded : j < d := by
          have endpoint : r.val ≤ d := by omega
          omega
        refine ⟨⟨j, bounded⟩, ?_, rfl⟩
        exact Finset.mem_filter.mpr
          ⟨Finset.mem_univ _, before⟩
    _ = r.val := Finset.card_range _

theorem dSVCanonicalFailurePrefix_norm_sq
    {d : ℕ} (r : Fin (d + 1)) :
    ‖dSVCanonicalFailurePrefix r‖ ^ 2 = (r.val : ℝ) := by
  classical
  rw [EuclideanSpace.norm_sq_eq, Fintype.sum_prod_type]
  change
    (∑ i : Fin d, ∑ j : Fin d,
      ‖if i = j ∧ i.val < r.val then (1 : ℂ) else 0‖ ^ 2) =
      (r.val : ℝ)
  have atom (i j : Fin d) :
      ‖if i = j ∧ i.val < r.val then (1 : ℂ) else 0‖ ^ 2 =
        if i = j then if i.val < r.val then (1 : ℝ) else 0
        else 0 := by
    by_cases same : i = j
    · subst j
      by_cases before : i.val < r.val <;> simp [before]
    · simp [same]
  simp_rw [atom]
  have count := dSVCanonicalFailurePrefix_card r
  simpa [Finset.sum_boole] using congrArg
    (fun n : ℕ => (n : ℝ)) count

end

noncomputable section

open scoped BigOperators ComplexOrder

theorem dSVHeterogeneousRealPrefix_nonneg
    (continuation : ℕ → ℝ)
    (nonnegative : ∀ k, 0 ≤ continuation k) (k : ℕ) :
    0 ≤ dSVHeterogeneousRealPrefix continuation k := by
  unfold dSVHeterogeneousRealPrefix
  exact Finset.prod_nonneg (fun i _ => nonnegative i)

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

open WithLp
open scoped BigOperators Kronecker ComplexOrder MatrixOrder InnerProductSpace

theorem dSVUniformDensityMixedProtocolLocalAction_norm
    {ι : Type*} [Fintype ι] [DecidableEq ι]
    (U V : Matrix.unitaryGroup ι ℂ)
    (z : EuclideanSpace ℂ (ι × ι)) :
    ‖toLp 2
        (((U : Matrix ι ι ℂ) ⊗ₖ
          (V : Matrix ι ι ℂ)).mulVec (ofLp z))‖ = ‖z‖ := by
  classical
  let M : Matrix (ι × ι) (ι × ι) ℂ :=
    (U : Matrix ι ι ℂ) ⊗ₖ (V : Matrix ι ι ℂ)
  have unitary : M ∈ Matrix.unitaryGroup (ι × ι) ℂ :=
    Matrix.kronecker_mem_unitary U.property V.property
  have gram : M.conjTranspose * M = 1 := by
    simpa [Matrix.star_eq_conjTranspose] using
      (Matrix.mem_unitaryGroup_iff'.mp unitary)
  have squared :
      ‖toLp 2 (M.mulVec (ofLp z))‖ ^ 2 = ‖z‖ ^ 2 := by
    rw [rectangular_matrix_mulVec_norm_sq, gram]
    simp [quadraticExpectation, ← Complex.ofReal_pow]
  change ‖toLp 2 (M.mulVec (ofLp z))‖ = ‖z‖
  nlinarith [norm_nonneg (toLp 2 (M.mulVec (ofLp z))),
    norm_nonneg z]

end

noncomputable section

open WithLp
open scoped BigOperators Kronecker ComplexOrder MatrixOrder

theorem dSVUniformDensityPhysicalAsyncSigmaContinuation_norm
    {ι κ : Type*} [Fintype ι] [DecidableEq ι]
    [Fintype κ] [DecidableEq κ]
    (U V : ι → Matrix.unitaryGroup κ ℂ)
    (z : EuclideanSpace ℂ
      ((Σ _ : ι, κ) × (Σ _ : ι, κ))) :
    ‖dSVUniformDensityPhysicalAsyncSigmaContinuation U V z‖ =
      ‖z‖ := by
  simpa [dSVUniformDensityPhysicalAsyncSigmaContinuation]
    using dSVUniformDensityMixedProtocolLocalAction_norm
      (coherentSharedRandomControlledUnitary U)
      (coherentSharedRandomControlledUnitary V) z

end

noncomputable section

open WithLp
open scoped BigOperators Kronecker ComplexOrder MatrixOrder

theorem dSVUniformDensityCorrectedMatchedSigmaWeightedResidual_distance_sq
    {H : Type*} [Fintype H] {n : ℕ}
    (history : EuclideanSpace ℂ (H × H))
    (work target : H → H → EuclideanSpace ℂ (Fin n × Fin n)) :
    ‖dSVUniformDensityCorrectedMatchedSigmaWeightedResidual
        history work -
      dSVUniformDensityCorrectedMatchedSigmaWeightedResidual
        history target‖ ^ 2 =
      ∑ a : H, ∑ b : H,
        ‖history (a, b)‖ ^ 2 * ‖work a b - target a b‖ ^ 2 := by
  classical
  rw [EuclideanSpace.norm_sq_eq]
  simp only [Fintype.sum_prod_type, Fintype.sum_sigma]
  change
    (∑ a : H, ∑ i : Fin n,
      ∑ b : H, ∑ j : Fin n,
        ‖history (a, b) * work a b (i, j) -
          history (a, b) * target a b (i, j)‖ ^ 2) = _
  apply Finset.sum_congr rfl
  intro a _
  rw [Finset.sum_comm]
  apply Finset.sum_congr rfl
  intro b _
  rw [EuclideanSpace.norm_sq_eq, Fintype.sum_prod_type,
    Finset.mul_sum]
  apply Finset.sum_congr rfl
  intro i _
  rw [Finset.mul_sum]
  apply Finset.sum_congr rfl
  intro j _
  change
    ‖history (a, b) * work a b (i, j) -
      history (a, b) * target a b (i, j)‖ ^ 2 =
      ‖history (a, b)‖ ^ 2 *
        ‖work a b (i, j) - target a b (i, j)‖ ^ 2
  rw [← mul_sub, norm_mul, mul_pow]

end

noncomputable section

open WithLp
open scoped BigOperators Kronecker ComplexOrder MatrixOrder

attribute [local instance] Classical.propDecidable

theorem dSVDensityRationalPhysicalMixedAcceptedPrefixWork_norm_sq
    {d : ℕ} (w : ℝ) (N : ℕ)
    (ξ ζ : BipartiteUnitVector d) (i j : Fin d) :
    ‖dSVDensityRationalPhysicalMixedAcceptedPrefixWork
        w N ξ ζ i j‖ ^ 2 =
      ((dSVDensityRationalPhysicalMixedAcceptedIntersectionRank
        w N ξ ζ i j).val : ℝ) := by
  exact dSVCanonicalFailurePrefix_norm_sq
    (dSVDensityRationalPhysicalMixedAcceptedIntersectionRank
      w N ξ ζ i j)

end

noncomputable section

open WithLp
open scoped BigOperators Kronecker ComplexOrder MatrixOrder

theorem dSVDensityRationalPublicBucketCoherentPhaseHistory_apply
    {H : Type*} [Fintype H] (B : ℕ)
    (history : EuclideanSpace ℂ (H × H))
    (φ ψ : Fin B) (a b : H) :
    dSVDensityRationalPublicBucketCoherentPhaseHistory
        B history ((φ, a), (ψ, b)) =
      ePRState B (φ, ψ) * history (a, b) := by
  rfl

theorem dSVDensityRationalPublicBucketCoherentPhaseHistory_apply_norm_sq
    {H : Type*} [Fintype H] {B : ℕ}
    (positive : 0 < B)
    (history : EuclideanSpace ℂ (H × H))
    (φ ψ : Fin B) (a b : H) :
    ‖dSVDensityRationalPublicBucketCoherentPhaseHistory
        B history ((φ, a), (ψ, b))‖ ^ 2 =
      (if φ = ψ then (B : ℝ)⁻¹ else 0) *
        ‖history (a, b)‖ ^ 2 := by
  rw [dSVDensityRationalPublicBucketCoherentPhaseHistory_apply,
    norm_mul, mul_pow]
  by_cases same : φ = ψ
  · subst ψ
    simp only [ePRState, ↓reduceIte]
    rw [Complex.norm_real, Real.norm_eq_abs,
      abs_of_nonneg (inv_nonneg.mpr (Real.sqrt_nonneg _)),
      inv_pow, Real.sq_sqrt (by positivity : (0 : ℝ) ≤ B)]
  · simp [ePRState, same]

end

noncomputable section

open WithLp
open scoped BigOperators Kronecker ComplexOrder MatrixOrder

theorem dSVDensityRationalLocalSpectralPairBasisOverlap_norm_sq
    {d : ℕ} (ξ ζ : BipartiteUnitVector d)
    (i j : Fin d) :
    ‖dSVDensityRationalLocalSpectralPairBasisOverlap
        ξ ζ i j‖ ^ 2 =
      dSVDensityRationalPrefixHarmonicSpectralOverlap
        ξ ζ i j := by
  unfold dSVDensityRationalLocalSpectralPairBasisOverlap
    dSVDensityRationalPrefixHarmonicSpectralOverlap
  exact (targetSpectralAtomOverlap_eq_basis_norm_sq
    (dSVSoftBobLeftReducedDensity ξ)
    (dSVSoftBobLeftReducedDensity ζ)
    (dSVSoftBobLeftReducedDensity_posSemidef ξ)
    (dSVSoftBobLeftReducedDensity_posSemidef ζ) i j).symm

theorem dSVDensityRationalLocalSpectralPairHistory_apply_norm_sq
    {d : ℕ} (N : ℕ)
    (ξ ζ : BipartiteUnitVector d)
    (i j : Fin d) :
    ‖dSVDensityRationalLocalSpectralPairHistory
        N ξ ζ (i, j)‖ ^ 2 =
      dSVDensityRationalPrefixHarmonicSpectralOverlap
        ξ ζ i j / ((d : ℝ) * (N : ℝ)) := by
  unfold dSVDensityRationalLocalSpectralPairHistory
  change
    ‖((‖sharedThresholdResourceRaw (d := Fin d)
        (fun _ : Fin N => (1 : ℝ))‖⁻¹ : ℝ) : ℂ) *
      dSVDensityRationalLocalSpectralPairBasisOverlap
        ξ ζ i j‖ ^ 2 = _
  rw [norm_mul, mul_pow, Complex.norm_real, Real.norm_eq_abs,
    sq_abs,
    dSVDensityRationalLocalSpectralPairBasisOverlap_norm_sq,
    inv_pow, dSVUniformDensityThresholdRaw_norm_sq]
  ring

end

noncomputable section

open scoped BigOperators ComplexOrder Kronecker MatrixOrder

theorem dSVDensityRationalHeterogeneousPhysicalStageOutcome_nonneg
    {d S L : ℕ} (N : ℕ)
    (width : Fin S → ℝ) (schedule : Fin L → Fin S)
    (ξ ζ : BipartiteUnitVector d)
    (k : ℕ) (alice bob : Bool) :
    0 ≤ dSVDensityRationalHeterogeneousPhysicalStageOutcome
      N width schedule ξ ζ k alice bob := by
  unfold dSVDensityRationalHeterogeneousPhysicalStageOutcome
  split_ifs <;> positivity

theorem dSVDensityRationalHeterogeneousPhysicalSurvival_nonneg
    {d S L : ℕ} (N : ℕ)
    (width : Fin S → ℝ) (schedule : Fin L → Fin S)
    (ξ ζ : BipartiteUnitVector d) (k : ℕ) :
    0 ≤ dSVDensityRationalHeterogeneousPhysicalSurvival
      N width schedule ξ ζ k := by
  unfold dSVDensityRationalHeterogeneousPhysicalSurvival
  apply dSVHeterogeneousRealPrefix_nonneg
  intro j
  exact dSVDensityRationalHeterogeneousPhysicalStageOutcome_nonneg
    N width schedule ξ ζ j false false

theorem
    dSVDensityRationalHeterogeneousPhysicalStoppedAsynchronousMass_nonneg
    {d S L : ℕ} (N : ℕ)
    (width : Fin S → ℝ) (schedule : Fin L → Fin S)
    (ξ ζ : BipartiteUnitVector d) :
    0 ≤
      dSVDensityRationalHeterogeneousPhysicalStoppedAsynchronousMass
        N width schedule ξ ζ := by
  unfold
    dSVDensityRationalHeterogeneousPhysicalStoppedAsynchronousMass
  apply Finset.sum_nonneg
  intro k _
  apply mul_nonneg
    (dSVDensityRationalHeterogeneousPhysicalSurvival_nonneg
      N width schedule ξ ζ k)
  exact add_nonneg
    (dSVDensityRationalHeterogeneousPhysicalStageOutcome_nonneg
      N width schedule ξ ζ k true false)
    (dSVDensityRationalHeterogeneousPhysicalStageOutcome_nonneg
      N width schedule ξ ζ k false true)

theorem dSVDensityRationalHeterogeneousPhysicalTerminalMass_nonneg
    {d S L : ℕ} (N : ℕ)
    (width : Fin S → ℝ) (schedule : Fin L → Fin S)
    (ξ ζ : BipartiteUnitVector d) :
    0 ≤ dSVDensityRationalHeterogeneousPhysicalTerminalMass
      N width schedule ξ ζ :=
  dSVDensityRationalHeterogeneousPhysicalSurvival_nonneg
    N width schedule ξ ζ L

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

theorem conditionedEventDistribution_sum
    {Ω : Type*} [Fintype Ω]
    (law : FiniteEventLaw Ω) (event : Finset Ω)
    (positive : 0 < law.eventMass event) :
    (∑ ω : Ω, conditionedEventDistribution law event ω) = 1 := by
  classical
  unfold conditionedEventDistribution
  calc
    (∑ ω : Ω,
      if ω ∈ event then law.weight ω / law.eventMass event else 0) =
      (∑ ω ∈ event, law.weight ω) / law.eventMass event := by
      rw [Finset.sum_div]
      simp
    _ = 1 := by
      change law.eventMass event / law.eventMass event = 1
      exact div_self positive.ne'

end

noncomputable section

open scoped BigOperators

open QuantumParallelRepetition.Pinsker
open QuantumParallelRepetition.ClassicalInformation

attribute [local instance] Classical.propDecidable

theorem groupedMass_nonneg
    {Ω κ : Type*} [Fintype Ω] [Fintype κ] [DecidableEq κ]
    (f : Ω → κ) (p : Ω → ℝ)
    (hp : ∀ ω, 0 ≤ p ω) (a : κ) :
    0 ≤ groupedMass f p a := by
  unfold groupedMass
  exact Finset.sum_nonneg (fun ω _ => hp ω)

end

noncomputable section

open scoped BigOperators

set_option backward.isDefEq.respectTransparency false
set_option maxHeartbeats 1600000
set_option maxRecDepth 2048

open QuantumParallelRepetition.Pinsker
open QuantumParallelRepetition.ClassicalInformation

attribute [local instance] Classical.propDecidable

variable {X Y A B : Type*}
variable [Fintype X] [Fintype Y] [Fintype A] [Fintype B]

theorem groupedMass_sum
    {Ω κ : Type*} [Fintype Ω] [Fintype κ] [DecidableEq κ]
    (projection : Ω → κ) (mass : Ω → ℝ) :
    (∑ a : κ, groupedMass projection mass a) =
      ∑ ω : Ω, mass ω := by
  unfold groupedMass
  exact Finset.sum_fiberwise Finset.univ projection mass

end

noncomputable section

open scoped BigOperators

set_option backward.isDefEq.respectTransparency false
set_option maxHeartbeats 1600000
set_option maxRecDepth 2048

open QuantumParallelRepetition.Pinsker
open QuantumParallelRepetition.ClassicalInformation

attribute [local instance] Classical.propDecidable

variable {X Y A B : Type*}
variable [Fintype X] [Fintype Y] [Fintype A] [Fintype B]

theorem exactRemainingSeedWeight_sum
    {n : ℕ} (D : Finset (Fin n))
    (remaining : 0 < (Finset.univ \ D).card) :
    (∑ seed : ExactRemainingSeed D,
      exactSeedWeight seed) = 1 := by
  apply exactSeedWeight_sum
  simpa using remaining

theorem exactPostselectedJointLaw_nonneg
    (G : Game X Y A B) (n : ℕ) (S : Strategy (G.repeat n))
    (D : Finset (Fin n))
    (positive : 0 < repeatedPostselectionMass G n S D)
    (q : ExactJointOutcome X Y A B D) :
    0 ≤ exactPostselectedJointLaw G n S D q := by
  apply mul_nonneg (exactSeedWeight_nonneg q.1)
  exact conditionedEventDistribution_nonneg
    (strategyEventLaw (G.repeat n) S)
    (FiniteEventLaw.winEvent (repeatedCoordinateWin G n) D)
    positive q.2

theorem exactPostselectedJointLaw_sum
    (G : Game X Y A B) (n : ℕ) (S : Strategy (G.repeat n))
    (D : Finset (Fin n))
    (remaining : 0 < (Finset.univ \ D).card)
    (positive : 0 < repeatedPostselectionMass G n S D) :
    (∑ q : ExactJointOutcome X Y A B D,
      exactPostselectedJointLaw G n S D q) = 1 := by
  have hconditional_sum :
      (∑ outcome : ExactOutcome X Y A B n,
        repeatedConditionedOutcomeLaw G n S D outcome) = 1 := by
    exact conditionedEventDistribution_sum
      (strategyEventLaw (G.repeat n) S)
      (FiniteEventLaw.winEvent (repeatedCoordinateWin G n) D)
      positive
  unfold exactPostselectedJointLaw
  rw [Fintype.sum_prod_type]
  calc
    (∑ seed : ExactRemainingSeed D,
      ∑ outcome : ExactOutcome X Y A B n,
        exactSeedWeight seed *
          repeatedConditionedOutcomeLaw G n S D outcome) =
      ∑ seed : ExactRemainingSeed D,
        exactSeedWeight seed *
          (∑ outcome : ExactOutcome X Y A B n,
            repeatedConditionedOutcomeLaw G n S D outcome) := by
          simp_rw [Finset.mul_sum]
    _ = ∑ seed : ExactRemainingSeed D,
        exactSeedWeight seed := by
          rw [hconditional_sum]
          simp
    _ = 1 := exactRemainingSeedWeight_sum D remaining

theorem exactSourcePushforward_nonneg
    {K : Type*} [Fintype K]
    (G : Game X Y A B) (n : ℕ) (S : Strategy (G.repeat n))
    (D : Finset (Fin n))
    (positive : 0 < repeatedPostselectionMass G n S D)
    (projection : ExactJointOutcome X Y A B D → K)
    (k : K) :
    0 ≤ exactSourcePushforward G n S D projection k := by
  exact groupedMass_nonneg projection
    (exactPostselectedJointLaw G n S D)
    (exactPostselectedJointLaw_nonneg G n S D positive) k

theorem exactSourcePushforward_sum
    {K : Type*} [Fintype K]
    (G : Game X Y A B) (n : ℕ) (S : Strategy (G.repeat n))
    (D : Finset (Fin n))
    (remaining : 0 < (Finset.univ \ D).card)
    (positive : 0 < repeatedPostselectionMass G n S D)
    (projection : ExactJointOutcome X Y A B D → K) :
    (∑ k : K,
      exactSourcePushforward G n S D projection k) = 1 := by
  unfold exactSourcePushforward
  rw [groupedMass_sum]
  exact exactPostselectedJointLaw_sum
    G n S D remaining positive

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

theorem exactLocallySampleableLaw_nonneg
    (G : Game X Y A B) (n : ℕ) (S : Strategy (G.repeat n))
    (D : Finset (Fin n))
    (positive : 0 < repeatedPostselectionMass G n S D)
    (t : ExactLocallySampleableTuple X Y A B D) :
    0 ≤ exactLocallySampleableLaw G n S D t :=
  exactSourcePushforward_nonneg G n S D positive
    (exactLocallySampleableCode D) t

theorem exactLocallySampleableLaw_sum
    (G : Game X Y A B) (n : ℕ) (S : Strategy (G.repeat n))
    (D : Finset (Fin n))
    (remaining : 0 < (Finset.univ \ D).card)
    (positive : 0 < repeatedPostselectionMass G n S D) :
    (∑ t : ExactLocallySampleableTuple X Y A B D,
      exactLocallySampleableLaw G n S D t) = 1 :=
  exactSourcePushforward_sum G n S D remaining positive
    (exactLocallySampleableCode D)

end

noncomputable section

open scoped BigOperators

set_option backward.isDefEq.respectTransparency false
set_option maxHeartbeats 1600000
set_option maxRecDepth 2048

attribute [local instance] Classical.propDecidable

variable {X Y A B : Type*}
variable [Fintype X] [Fintype Y] [Fintype A] [Fintype B]

theorem exactSourceTuplePsi_norm
    (G : Game X Y A B) (n : ℕ) (S : Strategy (G.repeat n))
    (D : Finset (Fin n))
    (t : ExactLocallySampleableTuple X Y A B D) :
    ‖exactSourceTuplePsi G n S D t‖ = 1 :=
  (exactGlobalHistoryFinPsi
    G n S D t.2.2.2 t.2.1 t.2.2.1).property

end

noncomputable section

open WithLp
open scoped BigOperators Kronecker ComplexOrder MatrixOrder

theorem
    dSVDensityRationalMixedCanonicalPrefixPureHarmonicTensor_norm_sq
    {N n : ℕ} (positive : 0 < n)
    (z : EuclideanSpace ℂ (Fin N × Fin N)) :
    ‖dSVDensityRationalMixedCanonicalPrefixPureHarmonicTensor
      n z‖ ^ 2 = ‖z‖ ^ 2 := by
  classical
  let e : ((Fin N × Fin N) × (Fin n × Fin n)) ≃
      (Fin (N * n) × Fin (N * n)) :=
    (Equiv.prodProdProdComm (Fin N) (Fin N) (Fin n) (Fin n)).trans
      (Equiv.prodCongr finProdFinEquiv finProdFinEquiv)
  have point (q : (Fin N × Fin N) × (Fin n × Fin n)) :
      dSVDensityRationalMixedCanonicalPrefixPureHarmonicTensor
          n z (e q) =
        z q.1 * embezzlementState n q.2 := by
    rcases q with ⟨⟨a, b⟩, ⟨i, j⟩⟩
    change
      z ((finProdFinEquiv.symm (finProdFinEquiv (a, i))).1,
          (finProdFinEquiv.symm (finProdFinEquiv (b, j))).1) *
        embezzlementState n
          ((finProdFinEquiv.symm (finProdFinEquiv (a, i))).2,
            (finProdFinEquiv.symm (finProdFinEquiv (b, j))).2) =
      z (a, b) * embezzlementState n (i, j)
    simp only [Equiv.symm_apply_apply]
  rw [EuclideanSpace.norm_sq_eq]
  calc
    (∑ q : Fin (N * n) × Fin (N * n),
        ‖dSVDensityRationalMixedCanonicalPrefixPureHarmonicTensor
          n z q‖ ^ 2) =
      ∑ q : (Fin N × Fin N) × (Fin n × Fin n),
        ‖dSVDensityRationalMixedCanonicalPrefixPureHarmonicTensor
          n z (e q)‖ ^ 2 :=
        (Equiv.sum_comp e
          (fun q : Fin (N * n) × Fin (N * n) =>
            ‖dSVDensityRationalMixedCanonicalPrefixPureHarmonicTensor
              n z q‖ ^ 2)).symm
    _ = ∑ q : (Fin N × Fin N) × (Fin n × Fin n),
          ‖z q.1 * embezzlementState n q.2‖ ^ 2 := by
          apply Finset.sum_congr rfl
          intro q _
          rw [point q]
    _ = (∑ a : Fin N × Fin N, ‖z a‖ ^ 2) *
          (∑ b : Fin n × Fin n,
            ‖embezzlementState n b‖ ^ 2) := by
          rw [Fintype.sum_prod_type]
          simp_rw [norm_mul, mul_pow]
          exact (Fintype.sum_mul_sum
            (fun a : Fin N × Fin N => ‖z a‖ ^ 2)
            (fun b : Fin n × Fin n =>
              ‖embezzlementState n b‖ ^ 2)).symm
    _ = ‖z‖ ^ 2 := by
          rw [← EuclideanSpace.norm_sq_eq,
            ← EuclideanSpace.norm_sq_eq,
            embezzlementState_norm n positive]
          ring

theorem
    dSVDensityRationalMixedCanonicalPrefixPhysicalSigmaWeighted_norm_sq
    {H : Type*} [Fintype H] {n : ℕ}
    (history : EuclideanSpace ℂ (H × H))
    (work : H → H → EuclideanSpace ℂ (Fin n × Fin n)) :
    ‖dSVUniformDensityCorrectedMatchedSigmaWeightedResidual
        history work‖ ^ 2 =
      ∑ i : H, ∑ j : H,
        ‖history (i, j)‖ ^ 2 * ‖work i j‖ ^ 2 := by
  have zero :
      dSVUniformDensityCorrectedMatchedSigmaWeightedResidual
          history (fun _ _ => (0 : EuclideanSpace ℂ (Fin n × Fin n))) =
        0 := by
    ext q
    simp [dSVUniformDensityCorrectedMatchedSigmaWeightedResidual]
  have distance :=
    dSVUniformDensityCorrectedMatchedSigmaWeightedResidual_distance_sq
      history work (fun _ _ => (0 : EuclideanSpace ℂ (Fin n × Fin n)))
  simpa [zero] using distance

theorem
    dSVDensityRationalMixedCanonicalPrefixPhysicalAcceptedSigmaState_norm_sq
    {d N n : ℕ} {w : ℝ} (width : 0 < w)
    (grid : 0 < N) (residual : 0 < n)
    (ξ ζ : BipartiteUnitVector d) :
    ‖dSVDensityRationalMixedCanonicalPrefixPhysicalAcceptedSigmaState
        (N := N) w n ξ ζ‖ ^ 2 =
      ‖dSVDensityRationalCompleteProjectiveOutcome
        w N ξ ζ true true‖ ^ 2 := by
  unfold dSVDensityRationalMixedCanonicalPrefixPhysicalAcceptedSigmaState
  rw [dSVDensityRationalMixedCanonicalPrefixPhysicalSigmaWeighted_norm_sq]
  simp_rw [
    dSVDensityRationalLocalSpectralPairHistory_apply_norm_sq,
    dSVDensityRationalMixedCanonicalPrefixPureHarmonicTensor_norm_sq
      residual,
    dSVDensityRationalPhysicalMixedAcceptedPrefixWork_norm_sq]
  rw [dSVDensityRationalMixedAcceptedPrefix_norm_sq
    width grid ξ ζ]
  unfold dSVDensityRationalPrefixHarmonicSpectralOverlap
  simp_rw [Finset.sum_div]
  apply Finset.sum_congr rfl
  intro i _
  apply Finset.sum_congr rfl
  intro j _
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

end

noncomputable section

open WithLp
open scoped BigOperators Kronecker ComplexOrder MatrixOrder
  Matrix.Norms.L2Operator InnerProductSpace

@[simp] theorem unconditionalConjugatePureVector_apply
    {ι : Type*} [Fintype ι]
    (z : EuclideanSpace ℂ ι) (i : ι) :
    unconditionalConjugatePureVector z i = star (z i) := by
  rfl

theorem unconditionalConjugatePureVector_norm_sq
    {ι : Type*} [Fintype ι] (z : EuclideanSpace ℂ ι) :
    ‖unconditionalConjugatePureVector z‖ ^ 2 = ‖z‖ ^ 2 := by
  simp [EuclideanSpace.norm_sq_eq]

end

noncomputable section

open WithLp
open scoped BigOperators Kronecker ComplexOrder MatrixOrder
  Matrix.Norms.L2Operator InnerProductSpace

theorem unconditionalSelectedCopy_coherentPhaseSigma_norm_sq
    {H : Type*} [Fintype H] {B m : ℕ}
    (phases : 0 < B)
    (history : EuclideanSpace ℂ (H × H))
    (work : H → H → EuclideanSpace ℂ (Fin m × Fin m)) :
    ‖dSVDensityRationalPublicBucketCoherentPhaseSigmaState
        B history (fun _ i j => work i j)‖ ^ 2 =
      ‖dSVUniformDensityCorrectedMatchedSigmaWeightedResidual
        history work‖ ^ 2 := by
  classical
  unfold dSVDensityRationalPublicBucketCoherentPhaseSigmaState
  rw [dSVDensityRationalMixedCanonicalPrefixPhysicalSigmaWeighted_norm_sq,
    dSVDensityRationalMixedCanonicalPrefixPhysicalSigmaWeighted_norm_sq]
  simp only [Fintype.sum_prod_type]
  simp_rw [
    dSVDensityRationalPublicBucketCoherentPhaseHistory_apply_norm_sq
      phases]
  have phase_ne : (B : ℝ) ≠ 0 := by
    exact_mod_cast (Nat.ne_of_gt phases)
  calc
    (∑ φ : Fin B, ∑ i : H, ∑ ψ : Fin B, ∑ j : H,
        (if φ = ψ then (B : ℝ)⁻¹ else 0) *
          ‖history (i, j)‖ ^ 2 * ‖work i j‖ ^ 2) =
        ∑ φ : Fin B, ∑ i : H, ∑ j : H,
          (B : ℝ)⁻¹ * ‖history (i, j)‖ ^ 2 * ‖work i j‖ ^ 2 := by
            apply Finset.sum_congr rfl
            intro φ _
            apply Finset.sum_congr rfl
            intro i _
            simp
    _ = _ := by
      calc
        (∑ φ : Fin B, ∑ i : H, ∑ j : H,
            (B : ℝ)⁻¹ * ‖history (i, j)‖ ^ 2 * ‖work i j‖ ^ 2) =
          ∑ _φ : Fin B, (B : ℝ)⁻¹ *
            (∑ i : H, ∑ j : H,
              ‖history (i, j)‖ ^ 2 * ‖work i j‖ ^ 2) := by
              apply Finset.sum_congr rfl
              intro φ _
              simp_rw [Finset.mul_sum]
              apply Finset.sum_congr rfl
              intro i _
              apply Finset.sum_congr rfl
              intro j _
              ring
        _ = _ := by
          rw [Finset.sum_const, Finset.card_univ,
            Fintype.card_fin, nsmul_eq_mul]
          field_simp

theorem unconditionalSelectedCopy_coherentPhaseConstantWork_norm_sq
    {H : Type*} [Fintype H] {B m : ℕ}
    (phases : 0 < B)
    (history : EuclideanSpace ℂ (H × H))
    (work : EuclideanSpace ℂ (Fin m × Fin m)) :
    ‖dSVDensityRationalPublicBucketCoherentPhaseSigmaState
        B history (fun _ _ _ => work)‖ ^ 2 =
      ‖history‖ ^ 2 * ‖work‖ ^ 2 := by
  rw [unconditionalSelectedCopy_coherentPhaseSigma_norm_sq
    phases history (fun _ _ => work),
    dSVDensityRationalMixedCanonicalPrefixPhysicalSigmaWeighted_norm_sq]
  calc
    (∑ i : H, ∑ j : H, ‖history (i, j)‖ ^ 2 * ‖work‖ ^ 2) =
        (∑ i : H, ∑ j : H, ‖history (i, j)‖ ^ 2) * ‖work‖ ^ 2 := by
          simp_rw [Finset.sum_mul]
    _ = _ := by
      congr 1
      rw [EuclideanSpace.norm_sq_eq, Fintype.sum_prod_type]

theorem unconditionalSelectedCopyCleanedStage_norm_sq
    {d N B m : ℕ} {w : ℝ}
    (phases : 0 < B) (grid : 0 < N) (harmonic : 0 < m)
    (width : 0 < w)
    (ξ ζ : BipartiteUnitVector d)
    (Q : ℕ)
    (A C : Fin B → Option ℕ → Matrix.unitaryGroup (Fin (N * m)) ℂ) :
    ‖unconditionalSelectedCopyCleanedStage
        (N := N) (B := B) (m := m) Q w ξ ζ A C‖ ^ 2 =
      ‖dSVDensityRationalCompleteProjectiveOutcome
        w N ξ ζ true true‖ ^ 2 := by
  unfold unconditionalSelectedCopyCleanedStage
    dSVDensityRationalPublicBucketPhysicalCoherentLocalReset
  rw [dSVUniformDensityPhysicalAsyncSigmaContinuation_norm]
  unfold dSVDensityRationalPublicBucketPhysicalCoherentMixedState
  rw [unconditionalSelectedCopy_coherentPhaseSigma_norm_sq phases]
  exact
    dSVDensityRationalMixedCanonicalPrefixPhysicalAcceptedSigmaState_norm_sq
      width grid harmonic ξ ζ

theorem unconditionalSelectedCopyCleanedMatchedBranch_norm_sq
    {S N d L B m : ℕ} {τ : Type*} [Fintype τ]
    (phases : 0 < B) (grid : 0 < N) (harmonic : 0 < m)
    (width : Fin S → ℝ) (width_positive : ∀ s, 0 < width s)
    (schedule : Fin L → Fin S)
    (ξ ζ : BipartiteUnitVector d)
    (Q : ℕ)
    (A C : Fin B → Option ℕ → Matrix.unitaryGroup (Fin (N * m)) ℂ)
    (j : Fin L) (rest : EuclideanSpace ℂ τ)
    (rest_unit : ‖rest‖ = 1) :
    ‖unconditionalSelectedCopyCleanedMatchedBranch
        Q width schedule ξ ζ A C j rest‖ ^ 2 =
      dSVDensityRationalHeterogeneousPhysicalSurvival
          N width schedule ξ ζ j.val *
        dSVDensityRationalHeterogeneousPhysicalStageSuccess
          N width schedule ξ ζ j.val := by
  unfold unconditionalSelectedCopyCleanedMatchedBranch
  rw [unconditionalMatchedVerifierTensor_norm_sq,
    unconditionalSelectedCopyCleanedStage_norm_sq
      phases grid harmonic (width_positive (schedule j)),
    unconditionalSelectedCopyRetainedWork_norm_sq,
    rest_unit]
  simp [dSVDensityRationalHeterogeneousPhysicalStageSuccess,
    dSVDensityRationalHeterogeneousPhysicalStageOutcome,
    j.isLt, mul_comm]

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

attribute [local instance] Classical.propDecidable

theorem unconditionalActualFairSelectedLocalAction_norm_sq
    {ι τ : Type} [Fintype ι] [DecidableEq ι]
    [Fintype τ] [DecidableEq τ]
    (U V : Matrix.unitaryGroup ι ℂ)
    (z : EuclideanSpace ℂ ((ι × ι) × τ)) :
    ‖unconditionalMixedConjugateSelectedBranchLocalAction
        U V z‖ ^ 2 = ‖z‖ ^ 2 := by
  classical
  let M : Matrix ((ι × ι) × τ) ((ι × ι) × τ) ℂ :=
    (unconditionalMixedConjugateSelectedBranchUnitary
      (τ := τ) U V : Matrix _ _ ℂ)
  have gram : M.conjTranspose * M = 1 := by
    simpa [M, Matrix.star_eq_conjTranspose] using
      (Matrix.mem_unitaryGroup_iff'.mp
        (unconditionalMixedConjugateSelectedBranchUnitary
          (τ := τ) U V).property)
  change ‖toLp 2 (M.mulVec (ofLp z))‖ ^ 2 = ‖z‖ ^ 2
  rw [rectangular_matrix_mulVec_norm_sq, gram]
  simp [quadraticExpectation, ← Complex.ofReal_pow]

theorem unconditionalActualFairCleanedVector_norm_sq
    {S B N d L m : Nat}
    (phases : 0 < B) (grid : 0 < N)
    (dimension : 0 < d) (harmonic : 0 < m)
    (width : Fin S → ℝ) (width_positive : ∀ s, 0 < width s)
    (schedule : Fin L → Fin S)
    (ξ ζ : BipartiteUnitVector d)
    (Q : Nat)
    (A C : Fin B → Option Nat →
      Matrix.unitaryGroup (Fin (N * m)) ℂ)
    (j : Fin L) :
    ‖integratorActualC485CleanedVector
        Q width schedule ξ ζ A C j‖ ^ 2 =
      dSVDensityRationalHeterogeneousPhysicalSurvival
          N width schedule ξ ζ j.val *
        dSVDensityRationalHeterogeneousPhysicalStageSuccess
          N width schedule ξ ζ j.val := by
  letI : DecidableEq
      (IntegratorActualC485RetainedIndex S B N d L j) :=
    FinEnum.decEq
  unfold integratorActualC485CleanedVector
  rw [unconditionalActualFairSelectedLocalAction_norm_sq]
  exact unconditionalSelectedCopyCleanedMatchedBranch_norm_sq
    phases grid harmonic width width_positive schedule ξ ζ Q A C j
    (unconditionalActualCanonicalRetainedPhaseTail
      (S := S) (B := B) (N := N) (d := d) (L := L) j)
    (integratorActualCanonicalRetainedPhaseTail_norm
      phases grid dimension j)

theorem unconditionalActualFairCleanedRow_eq_stoppedSuccess
    {S B N d L m : Nat}
    (phases : 0 < B) (grid : 0 < N)
    (dimension : 0 < d) (harmonic : 0 < m)
    (width : Fin S → ℝ) (width_positive : ∀ s, 0 < width s)
    (schedule : Fin L → Fin S)
    (ξ ζ : BipartiteUnitVector d)
    (Q : Nat)
    (A C : Fin B → Option Nat →
      Matrix.unitaryGroup (Fin (N * m)) ℂ) :
    (∑ j : Fin L,
      ‖integratorActualC485CleanedVector
        Q width schedule ξ ζ A C j‖ ^ 2) =
      dSVDensityRationalHeterogeneousPhysicalStoppedSuccessMass
        N width schedule ξ ζ := by
  simp_rw [unconditionalActualFairCleanedVector_norm_sq
    phases grid dimension harmonic width width_positive schedule ξ ζ Q A C]
  unfold dSVDensityRationalHeterogeneousPhysicalStoppedSuccessMass
  simpa using
    (Fin.sum_univ_eq_sum_range
      (fun k : Nat =>
        dSVDensityRationalHeterogeneousPhysicalSurvival
            N width schedule ξ ζ k *
          dSVDensityRationalHeterogeneousPhysicalStageSuccess
            N width schedule ξ ζ k) L)

theorem unconditionalActualFairCleanedRow_le_one
    {S B N d L m : Nat}
    (phases : 0 < B) (grid : 0 < N)
    (dimension : 0 < d) (harmonic : 0 < m)
    (width : Fin S → ℝ) (width_positive : ∀ s, 0 < width s)
    (schedule : Fin L → Fin S)
    (ξ ζ : BipartiteUnitVector d)
    (Q : Nat)
    (A C : Fin B → Option Nat →
      Matrix.unitaryGroup (Fin (N * m)) ℂ) :
    (∑ j : Fin L,
      ‖integratorActualC485CleanedVector
        Q width schedule ξ ζ A C j‖ ^ 2) ≤ 1 := by
  rw [unconditionalActualFairCleanedRow_eq_stoppedSuccess
    phases grid dimension harmonic width width_positive schedule ξ ζ Q A C]
  have partition :=
    dSVDensityRationalHeterogeneousPhysicalStopped_mass_partition
      grid dimension width schedule ξ ζ
  have asynchronous :=
    dSVDensityRationalHeterogeneousPhysicalStoppedAsynchronousMass_nonneg
      N width schedule ξ ζ
  have terminal :=
    dSVDensityRationalHeterogeneousPhysicalTerminalMass_nonneg
      N width schedule ξ ζ
  linarith

theorem unconditionalActualFairWeightedCleanedMass_le_one
    {I : Type} [Fintype I]
    {S B N d L m : Nat}
    (weight : I → ℝ)
    (weight_nonnegative : ∀ h, 0 ≤ weight h)
    (weight_normalized : (∑ h : I, weight h) = 1)
    (phases : 0 < B) (grid : 0 < N)
    (dimension : 0 < d) (harmonic : 0 < m)
    (width : Fin S → ℝ) (width_positive : ∀ s, 0 < width s)
    (schedule : Fin L → Fin S)
    (ξ ζ : I → BipartiteUnitVector d)
    (Q : Nat)
    (A C : Fin B → Option Nat →
      Matrix.unitaryGroup (Fin (N * m)) ℂ) :
    (∑ h : I, weight h *
      ∑ j : Fin L,
        ‖integratorActualC485CleanedVector
          Q width schedule (ξ h) (ζ h) A C j‖ ^ 2) ≤ 1 := by
  calc
    _ ≤ ∑ h : I, weight h * 1 := by
      apply Finset.sum_le_sum
      intro h _
      exact mul_le_mul_of_nonneg_left
        (unconditionalActualFairCleanedRow_le_one
          phases grid dimension harmonic width width_positive
          schedule (ξ h) (ζ h) Q A C)
        (weight_nonnegative h)
    _ = 1 := by simpa using weight_normalized

end

noncomputable section

open WithLp
open scoped BigOperators Kronecker ComplexOrder MatrixOrder
  Matrix.Norms.L2Operator InnerProductSpace

attribute [local instance] Classical.propDecidable

theorem unconditionalActualFairCanonicalVector_norm_sq
    {S B N d L m : ℕ}
    (phases : 0 < B) (grid : 0 < N) (harmonic : 0 < m)
    (width : Fin S → ℝ) (schedule : Fin L → Fin S)
    (ξ ζ : BipartiteUnitVector d) (j : Fin L)
    (positive : 0 < width (schedule j))
    (fine : (d : ℝ) / (N : ℝ) < 1 / (width (schedule j) + 1)) :
    ‖integratorActualC485CanonicalVector
        (B := B) (m := m) schedule ξ ζ j positive grid fine‖ ^ 2 =
      ‖integratorActualC485NormalizedDiagonalWork
          (B := B) (N := N) width schedule ξ ζ j‖ ^ 2 := by
  unfold integratorActualC485CanonicalVector
  rw [unconditionalMatchedVerifierTensor_norm_sq,
    unconditionalSelectedCopy_coherentPhaseConstantWork_norm_sq
      phases,
    unconditionalConjugatePureVector_norm_sq,
    (dSVDensityRationalCanonicalAcceptedUnitTarget
      positive grid fine ξ).property,
    embezzlementState_norm (N * m)
      (Nat.mul_pos grid harmonic)]
  ring

theorem unconditionalActualFairCanonicalRow_le_one
    {S B N d L m : ℕ}
    (phases : 0 < B) (grid : 0 < N)
    (dimension : 0 < d) (harmonic : 0 < m)
    (width : Fin S → ℝ) (width_positive : ∀ s, 0 < width s)
    (schedule : Fin L → Fin S)
    (ξ ζ : BipartiteUnitVector d)
    (fine : ∀ s,
      (d : ℝ) / (N : ℝ) < 1 / (width s + 1)) :
    (∑ j : Fin L,
      ‖integratorActualC485CanonicalVector
        (B := B) (m := m) schedule ξ ζ j
        (width_positive (schedule j)) grid
        (fine (schedule j))‖ ^ 2) ≤ 1 := by
  calc
    _ = ∑ j : Fin L,
      ‖integratorActualC485NormalizedDiagonalWork
        (B := B) (N := N) width schedule ξ ζ j‖ ^ 2 := by
      apply Finset.sum_congr rfl
      intro j _
      exact unconditionalActualFairCanonicalVector_norm_sq
        phases grid harmonic width schedule ξ ζ j
        (width_positive (schedule j)) (fine (schedule j))
    _ ≤ 1 :=
      unconditionalActualC485NormalizedDiagonalWork_mass_sum_le_one
        (m := m) phases grid dimension harmonic
        width width_positive schedule ξ ζ

theorem unconditionalActualFairWeightedCanonicalMass_le_one
    {I : Type} [Fintype I]
    {S B N d L m : ℕ}
    (weight : I → ℝ)
    (weight_nonnegative : ∀ h, 0 ≤ weight h)
    (weight_normalized : (∑ h : I, weight h) = 1)
    (phases : 0 < B) (grid : 0 < N)
    (dimension : 0 < d) (harmonic : 0 < m)
    (width : Fin S → ℝ) (width_positive : ∀ s, 0 < width s)
    (schedule : Fin L → Fin S)
    (ξ ζ : I → BipartiteUnitVector d)
    (fine : ∀ s,
      (d : ℝ) / (N : ℝ) < 1 / (width s + 1)) :
    (∑ h : I, weight h *
      ∑ j : Fin L,
        ‖integratorActualC485CanonicalVector
          (B := B) (m := m) schedule (ξ h) (ζ h) j
          (width_positive (schedule j)) grid
          (fine (schedule j))‖ ^ 2) ≤ 1 := by
  calc
    _ ≤ ∑ h : I, weight h * 1 := by
      apply Finset.sum_le_sum
      intro h _
      exact mul_le_mul_of_nonneg_left
        (unconditionalActualFairCanonicalRow_le_one
          phases grid dimension harmonic width width_positive
          schedule (ξ h) (ζ h) fine)
        (weight_nonnegative h)
    _ = 1 := by simpa using weight_normalized

end

noncomputable section

open WithLp
open scoped BigOperators Kronecker ComplexOrder MatrixOrder
  Matrix.Norms.L2Operator InnerProductSpace

attribute [local instance] Classical.propDecidable

theorem unconditionalActualFairSourceVector_norm_sq
    {S B N d L m : ℕ}
    (phases : 0 < B) (grid : 0 < N) (harmonic : 0 < m)
    (width : Fin S → ℝ) (schedule : Fin L → Fin S)
    (ξ ζ : BipartiteUnitVector d)
    (ψ : EuclideanSpace ℂ (Fin d × Fin d))
    (unit : ‖ψ‖ = 1) (j : Fin L) :
    ‖integratorActualC485SourceVector
        (S := S) (B := B) (N := N) (d := d) (L := L) (m := m)
        width schedule ξ ζ ψ j‖ ^ 2 =
      ‖integratorActualC485NormalizedDiagonalWork
          (S := S) (B := B) (N := N) (d := d) (L := L)
          width schedule ξ ζ j‖ ^ 2 := by
  unfold integratorActualC485SourceVector
  rw [unconditionalMatchedVerifierTensor_norm_sq,
    unconditionalSelectedCopy_coherentPhaseConstantWork_norm_sq
      phases,
    unconditionalConjugatePureVector_norm_sq,
    unit,
    embezzlementState_norm (N * m)
      (Nat.mul_pos grid harmonic)]
  ring

theorem unconditionalActualFairSourceCanonicalVector_norm_sq
    {S B N d L m : ℕ}
    (phases : 0 < B) (grid : 0 < N) (harmonic : 0 < m)
    (width : Fin S → ℝ) (schedule : Fin L → Fin S)
    (ξ ζ : BipartiteUnitVector d)
    (ψ : EuclideanSpace ℂ (Fin d × Fin d))
    (unit : ‖ψ‖ = 1) (j : Fin L)
    (positive : 0 < width (schedule j))
    (fine : (d : ℝ) / (N : ℝ) < 1 / (width (schedule j) + 1)) :
    ‖integratorActualC485SourceVector
        (S := S) (B := B) (N := N) (d := d) (L := L) (m := m)
        width schedule ξ ζ ψ j‖ ^ 2 =
      ‖integratorActualC485CanonicalVector
          (S := S) (B := B) (N := N) (d := d) (L := L) (m := m)
          (width := width) schedule ξ ζ j positive grid fine‖ ^ 2 := by
  rw [unconditionalActualFairSourceVector_norm_sq
    phases grid harmonic width schedule ξ ζ ψ unit j,
    unconditionalActualFairCanonicalVector_norm_sq
      phases grid harmonic width schedule ξ ζ j positive fine]

theorem unconditionalActualFairSourceCanonicalVector_norm
    {S B N d L m : ℕ}
    (phases : 0 < B) (grid : 0 < N) (harmonic : 0 < m)
    (width : Fin S → ℝ) (schedule : Fin L → Fin S)
    (ξ ζ : BipartiteUnitVector d)
    (ψ : EuclideanSpace ℂ (Fin d × Fin d))
    (unit : ‖ψ‖ = 1) (j : Fin L)
    (positive : 0 < width (schedule j))
    (fine : (d : ℝ) / (N : ℝ) < 1 / (width (schedule j) + 1)) :
    ‖integratorActualC485SourceVector
        (S := S) (B := B) (N := N) (d := d) (L := L) (m := m)
        width schedule ξ ζ ψ j‖ =
      ‖integratorActualC485CanonicalVector
          (S := S) (B := B) (N := N) (d := d) (L := L) (m := m)
          (width := width) schedule ξ ζ j positive grid fine‖ := by
  have squared :=
    unconditionalActualFairSourceCanonicalVector_norm_sq
      phases grid harmonic width schedule ξ ζ ψ unit j positive fine
  nlinarith [
    norm_nonneg (integratorActualC485SourceVector
      (S := S) (B := B) (N := N) (d := d) (L := L) (m := m)
      width schedule ξ ζ ψ j),
    norm_nonneg (integratorActualC485CanonicalVector
      (S := S) (B := B) (N := N) (d := d) (L := L) (m := m)
      (width := width) schedule ξ ζ j positive grid fine)]

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
    UnconditionalActualFairCachedStoppedAnalyticLedger
      (law c) (actual c) (canonical c) (source c)
      (deviation c) (clipping c) (bad c) := by
  refine ⟨?_, ?_, ?_, ?_, ?_, ?_, ?_⟩
  · exact unconditionalActualFairWeightedCleanedMass_le_one
      (law c)
      (exactLocallySampleableLaw_nonneg G n S D c.positive)
      (exactLocallySampleableLaw_sum
        G n S D c.remaining c.positive)
      c.stopping.phases c.stopping.grid (dimension_pos c)
      c.stopping.harmonic (width c) (width_all c) (schedule c)
      (gammaVector c) (phiVector c)
      c.stopping.Q c.stopping.UA c.stopping.UB
  · exact unconditionalActualFairWeightedCanonicalMass_le_one
      (law c)
      (exactLocallySampleableLaw_nonneg G n S D c.positive)
      (exactLocallySampleableLaw_sum
        G n S D c.remaining c.positive)
      c.stopping.phases c.stopping.grid (dimension_pos c)
      c.stopping.harmonic (width c) (width_all c) (schedule c)
      (gammaVector c) (phiVector c) (fine_all c)
  · intro h
    exact unconditionalActualFairCanonicalRow_le_one
      c.stopping.phases c.stopping.grid (dimension_pos c)
      c.stopping.harmonic (width c) (width_all c) (schedule c)
      (gammaVector c h) (phiVector c h) (fine_all c)
  · intro h j
    exact unconditionalActualFairSourceCanonicalVector_norm
      c.stopping.phases c.stopping.grid c.stopping.harmonic
      (width c) (schedule c) (gammaVector c h) (phiVector c h)
      (psiVector c h) (exactSourceTuplePsi_norm G n S D h) j
      (width_all c (schedule c j)) (fine_all c (schedule c j))
  · exact le_refl (deviation c)
  · change
      (∑ h : ExactLocallySampleableTuple X Y A B D,
        law c h *
          ∑ j : Fin c.stopping.L,
            ‖canonical c (h, j) - source c (h, j)‖ ^ 2) ≤
        unconditionalActualC485FairSourceClipEnergy
          (P := c.stopping.P) (m := c.stopping.m)
          G n S D (width_positive c) c.stopping.grid
          c.stopping.fine (schedule c)
    unfold unconditionalActualC485FairSourceClipEnergy
    apply le_of_eq
    apply Finset.sum_congr rfl
    intro h _
    congr 1
    apply Finset.sum_congr rfl
    intro j _
    change
      ‖canonical c (h, j) - source c (h, j)‖ ^ 2 =
        ‖source c (h, j) - canonical c (h, j)‖ ^ 2
    rw [norm_sub_rev]
  · have async :
        (∑ h : ExactLocallySampleableTuple X Y A B D,
          law c h *
            dSVDensityRationalHeterogeneousPhysicalStoppedAsynchronousMass
              c.stopping.N (width c) (schedule c)
              (gammaVector c h) (phiVector c h)) ≤
          64 * Real.sqrt (martingaleRate G n S D) +
            alpha ^ (1 / 3 : ℝ) := by
      change
        (∑ h : ExactLocallySampleableTuple X Y A B D,
          exactLocallySampleableLaw G n S D h *
            dSVDensityRationalHeterogeneousPhysicalStoppedAsynchronousMass
              c.stopping.N
              (fun _ : Fin 1 => c.stopping.w)
              (fun _ : Fin c.stopping.L => 0)
              (unconditionalExactFairGammaUnit G n S D h)
              (exactGlobalHistoryFinPhi
                G n S D h.2.2.2 h.2.2.1)) ≤ _
      simpa only [unconditionalExactFairGammaUnit_eq_global] using
        c.stopping.asynchronous
    have finish :
        (∑ h : ExactLocallySampleableTuple X Y A B D,
          law c h *
            dSVDensityRationalHeterogeneousPhysicalTerminalMass
              c.stopping.N (width c) (schedule c)
              (gammaVector c h) (phiVector c h)) ≤
          (alpha ^ (1 / 3 : ℝ)) ^ 2 := by
      change
        (∑ h : ExactLocallySampleableTuple X Y A B D,
          exactLocallySampleableLaw G n S D h *
            dSVDensityRationalHeterogeneousPhysicalTerminalMass
              c.stopping.N
              (fun _ : Fin 1 => c.stopping.w)
              (fun _ : Fin c.stopping.L => 0)
              (unconditionalExactFairGammaUnit G n S D h)
              (exactGlobalHistoryFinPhi
                G n S D h.2.2.2 h.2.2.1)) ≤ _
      simpa only [unconditionalExactFairGammaUnit_eq_global] using
        c.stopping.terminal
    exact unconditionalActualFairWeightedStoppedSuccess
      (law c)
      (exactLocallySampleableLaw_sum
        G n S D c.remaining c.positive)
      c.stopping.phases c.stopping.grid (dimension_pos c)
      c.stopping.harmonic (width c) (width_all c) (schedule c)
      (gammaVector c) (phiVector c)
      c.stopping.Q c.stopping.UA c.stopping.UB
      (64 * Real.sqrt (martingaleRate G n S D) +
        alpha ^ (1 / 3 : ℝ))
      ((alpha ^ (1 / 3 : ℝ)) ^ 2) async finish
