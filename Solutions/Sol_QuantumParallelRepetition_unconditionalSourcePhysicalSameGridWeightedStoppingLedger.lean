import Definitions.Def_quantum_parallel_repetition_game
import Definitions.Def_qpr_core_23
import Theorems.Thm_QuantumParallelRepetition_dSVUniformDensityThresholdSharedState_norm
import Theorems.Thm_QuantumParallelRepetition_dSVDensityRationalHeterogeneousPhysicalStopped_mass_partition
import Theorems.Thm_QuantumParallelRepetition_dSVDensityRationalHeterogeneousPhysicalStoppedAsynchronousMass_le_targetDistance
import Theorems.Thm_QuantumParallelRepetition_dSVDensityRationalHeterogeneousPhysicalTerminalMass_le_pow
import Theorems.Thm_QuantumParallelRepetition_dSVDensityRationalHeterogeneousActualPhysicalFlagBornState_allFlags
import Theorems.Thm_QuantumParallelRepetition_exists_proofUnconditionalStoppedCommonPrefixBalancedHazard
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

theorem sharedThresholdResourceRaw_ne_zero
    {κ d : Type*} [Fintype κ] [Fintype d]
    [DecidableEq κ] [DecidableEq d]
    (τ : κ → ℝ) (k : κ) (i : d) (hk : τ k ≠ 0) :
    sharedThresholdResourceRaw (d := d) τ ≠ 0 := by
  intro hzero
  have hentry := congrArg
    (fun z : EuclideanSpace ℂ
        ((Σ _ : κ, d) × (Σ _ : κ, d)) =>
      z (⟨k, i⟩, ⟨k, i⟩)) hzero
  have hcast : (τ k : ℂ) = 0 := by
    simpa [sharedThresholdResourceRaw] using hentry
  exact hk (by exact_mod_cast hcast)

theorem sharedThresholdResource_norm
    {κ d : Type*} [Fintype κ] [Fintype d]
    [DecidableEq κ] [DecidableEq d]
    (τ : κ → ℝ) (k : κ) (i : d) (hk : τ k ≠ 0) :
    ‖sharedThresholdResource (d := d) τ‖ = 1 := by
  have hnorm : ‖sharedThresholdResourceRaw (d := d) τ‖ ≠ 0 :=
    norm_ne_zero_iff.mpr
      (sharedThresholdResourceRaw_ne_zero τ k i hk)
  rw [sharedThresholdResource, norm_smul, Real.norm_eq_abs,
    abs_of_nonneg (inv_nonneg.mpr (norm_nonneg _)),
    inv_mul_cancel₀ hnorm]

end

open scoped ComplexOrder Matrix BigOperators InnerProductSpace
open Complex Matrix Finset

noncomputable section

open WithLp
open scoped BigOperators Kronecker ComplexOrder MatrixOrder

theorem dSVUniformDensityThresholdWholeHistorySharedState_norm
    {N d : ℕ} (grid : 0 < N) (dimension : 0 < d)
    (L : ℕ) :
    ‖dSVUniformDensityThresholdWholeHistorySharedState
      N d L‖ = 1 := by
  let k : Fin (L + 1) := ⟨0, by omega⟩
  let i : Fin (L + 1) →
      DSVUniformDensityThresholdLocalIndex N d :=
    fun _ => ⟨⟨0, grid⟩, ⟨0, dimension⟩⟩
  apply sharedThresholdResource_norm
    (fun flag : Fin (L + 1) =>
      if flag.val = 0 then (1 : ℝ) else 0) k i
  simp [k]

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

attribute [local instance] Classical.propDecidable

theorem dSVUniformDensityPhysicalAsync_doubleProductSum
    {ι β γ : Type*} [Fintype ι] [DecidableEq ι]
    [Fintype β] [DecidableEq β] [Fintype γ] [DecidableEq γ]
    (f : ι → β → γ → ℝ) :
    (∑ x : ι → β, ∑ y : ι → γ,
      ∏ i : ι, f i (x i) (y i)) =
      ∏ i : ι, ∑ a : β, ∑ b : γ, f i a b := by
  classical
  calc
    (∑ x : ι → β, ∑ y : ι → γ,
      ∏ i : ι, f i (x i) (y i)) =
        ∑ x : ι → β,
          ∏ i : ι, ∑ b : γ, f i (x i) b := by
      apply Finset.sum_congr rfl
      intro x _
      exact (Fintype.prod_sum
        (fun i : ι => fun b : γ => f i (x i) b)).symm
    _ = ∏ i : ι, ∑ a : β, ∑ b : γ, f i a b :=
      (Fintype.prod_sum
        (fun i : ι => fun a : β => ∑ b : γ, f i a b)).symm

end

noncomputable section

open WithLp
open scoped BigOperators Kronecker ComplexOrder MatrixOrder

theorem dSVDensityRationalCompleteProjectiveThresholdEffect_false
    {d : ℕ} (w : ℝ) (N : ℕ)
    (ξ : BipartiteUnitVector d) (k : Fin N) :
    (dSVDensityRationalLeftProjectiveThresholdPOVM
      w N k ξ).operator false =
      1 - dSVDensityRationalCompleteProjectiveThresholdProjector
        w N ξ k := by
  have complete :=
    (dSVDensityRationalLeftProjectiveThresholdPOVM
      w N k ξ).complete
  rw [Fintype.sum_bool, add_comm] at complete
  exact eq_sub_of_add_eq complete

theorem dSVDensityRationalCompleteProjectiveBinaryPOVM_effect
    {d : ℕ} (w : ℝ) (N : ℕ)
    (ξ : BipartiteUnitVector d) (a : Bool) :
    (dSVDensityRationalCompleteProjectiveBinaryPOVM
      w N ξ).operator a =
      Matrix.blockDiagonal' (fun k : Fin N =>
        (dSVDensityRationalLeftProjectiveThresholdPOVM
          w N k ξ).operator a) := by
  cases a
  · change
      Matrix.blockDiagonal' (fun k : Fin N =>
        1 - dSVDensityRationalCompleteProjectiveThresholdProjector
          w N ξ k) = _
    congr 1
    funext k
    exact
      (dSVDensityRationalCompleteProjectiveThresholdEffect_false
        w N ξ k).symm
  · rfl

theorem dSVDensityRationalCompleteProjectiveOutcome_eq_block_action
    {d : ℕ} (w : ℝ) (N : ℕ)
    (ξ ζ : BipartiteUnitVector d) (a b : Bool) :
    dSVDensityRationalCompleteProjectiveOutcome
        w N ξ ζ a b =
      toLp 2
        ((Matrix.blockDiagonal'
            (fun k : Fin N =>
              (dSVDensityRationalLeftProjectiveThresholdPOVM
                w N k ξ).operator a) ⊗ₖ
          (Matrix.blockDiagonal'
            (fun k : Fin N =>
              (dSVDensityRationalLeftProjectiveThresholdPOVM
                w N k ζ).operator b)).transpose).mulVec
          (ofLp
            (dSVUniformDensityThresholdSharedState N d))) := by
  unfold dSVDensityRationalCompleteProjectiveOutcome
    coherentBinaryJointOutcome
  change
    toLp 2
      (((dSVDensityRationalCompleteProjectiveBinaryPOVM
            w N ξ).operator a ⊗ₖ
         ((dSVDensityRationalCompleteProjectiveBinaryPOVM
            w N ζ).operator b).transpose).mulVec
        (ofLp (dSVUniformDensityThresholdSharedState N d))) = _
  rw [dSVDensityRationalCompleteProjectiveBinaryPOVM_effect,
    dSVDensityRationalCompleteProjectiveBinaryPOVM_effect]

end

noncomputable section

open WithLp
open scoped BigOperators Kronecker ComplexOrder MatrixOrder

theorem dSVDensityRationalCompleteStoppedOptionalOutcome_some_some
    {d : ℕ} (w : ℝ) (N : ℕ)
    (ξ ζ : BipartiteUnitVector d) (alice bob : Bool) :
    dSVDensityRationalCompleteStoppedOptionalOutcome
        w N ξ ζ (some alice) (some bob) =
      dSVDensityRationalCompleteProjectiveOutcome
        w N ξ ζ alice bob := by
  rw [dSVDensityRationalCompleteProjectiveOutcome_eq_block_action]
  simp [dSVDensityRationalCompleteStoppedOptionalOutcome,
    dSVDensityRationalCompleteStoppedOptionalLocalEffect,
    dSVDensityRationalCompleteProjectiveBinaryPOVM_effect]

theorem dSVDensityRationalCompleteStoppedOptionalOutcome_none_none
    {d : ℕ} (w : ℝ) (N : ℕ)
    (ξ ζ : BipartiteUnitVector d) :
    dSVDensityRationalCompleteStoppedOptionalOutcome
        w N ξ ζ none none =
      dSVUniformDensityThresholdSharedState N d := by
  simp [dSVDensityRationalCompleteStoppedOptionalOutcome,
    dSVDensityRationalCompleteStoppedOptionalLocalEffect]

theorem dSVDensityRationalCompleteStoppedOptionalLocalSchedule_zero
    (L : ℕ) (copy : Fin (L + 1)) :
    dSVDensityRationalCompleteStoppedOptionalLocalSchedule
      L 0 copy =
      if copy.val < L then some false else none := by
  simp [dSVDensityRationalCompleteStoppedOptionalLocalSchedule]

theorem dSVDensityRationalCompleteStoppedOptionalLocalSchedule_hit
    {L : ℕ} (j : Fin L) :
    dSVDensityRationalCompleteStoppedOptionalLocalSchedule
      L j.succ j.castSucc = some true := by
  simp [dSVDensityRationalCompleteStoppedOptionalLocalSchedule,
    j.isLt]

end

noncomputable section

open WithLp
open scoped BigOperators ComplexOrder Kronecker MatrixOrder

attribute [local instance] Classical.propDecidable

theorem dSVDensityRationalHeterogeneousActualPhysicalState_norm
    {S N d L : ℕ} (grid : 0 < N) (dimension : 0 < d)
    (width : Fin S → ℝ) (schedule : Fin L → Fin S)
    (ξ ζ : BipartiteUnitVector d) :
    ‖dSVDensityRationalHeterogeneousActualPhysicalState
      N width schedule ξ ζ‖ = 1 := by
  unfold dSVDensityRationalHeterogeneousActualPhysicalState
  rw [dSVUniformDensityMixedProtocolLocalAction_norm]
  exact dSVUniformDensityThresholdWholeHistorySharedState_norm
    grid dimension L

end

noncomputable section

open scoped BigOperators ComplexOrder Kronecker MatrixOrder

theorem
    dSVDensityRationalHeterogeneousPhysicalUniformEscapeRate_pos
    {d : ℕ} (dimension : 0 < d)
    {W : ℝ} (W_nonnegative : 0 ≤ W) :
    0 < dSVDensityRationalHeterogeneousPhysicalUniformEscapeRate
      d W := by
  unfold dSVDensityRationalHeterogeneousPhysicalUniformEscapeRate
  positivity

theorem
    dSVDensityRationalHeterogeneousPhysicalUniformEscapeRate_le_half
    {d : ℕ} (dimension : 0 < d)
    {W : ℝ} (W_nonnegative : 0 ≤ W) :
    dSVDensityRationalHeterogeneousPhysicalUniformEscapeRate
      d W ≤ (1 / 2 : ℝ) := by
  have real_dimension : 0 < (d : ℝ) := by
    exact_mod_cast dimension
  have dimension_one : (1 : ℝ) ≤ (d : ℝ) := by
    exact_mod_cast (Nat.one_le_iff_ne_zero.mpr (Nat.ne_of_gt dimension))
  have denominator : 0 < 2 * (W + 1) * (d : ℝ) := by
    positivity
  unfold dSVDensityRationalHeterogeneousPhysicalUniformEscapeRate
  apply (div_le_div_iff₀ denominator (by norm_num : (0 : ℝ) < 2)).mpr
  nlinarith [mul_nonneg W_nonnegative real_dimension.le]

theorem
    dSVDensityRationalHeterogeneousPhysical_exists_positive_horizon
    {d : ℕ} (dimension : 0 < d)
    {W ε : ℝ} (W_nonnegative : 0 ≤ W) (precision : 0 < ε) :
    ∃ L : ℕ, 0 < L ∧
      (1 -
        dSVDensityRationalHeterogeneousPhysicalUniformEscapeRate
          d W) ^ L ≤ ε ^ 2 := by
  have rate :=
    dSVDensityRationalHeterogeneousPhysicalUniformEscapeRate_pos
      dimension W_nonnegative
  have bounded :=
    dSVDensityRationalHeterogeneousPhysicalUniformEscapeRate_le_half
      dimension W_nonnegative
  have continuation : 0 ≤
      1 -
        dSVDensityRationalHeterogeneousPhysicalUniformEscapeRate
          d W := by
    linarith
  have square : 0 < ε ^ 2 := sq_pos_of_pos precision
  obtain ⟨k, tail⟩ := exists_pow_lt_of_lt_one square
    (show
      1 -
        dSVDensityRationalHeterogeneousPhysicalUniformEscapeRate
          d W < 1 by linarith)
  refine ⟨k + 1, by omega, ?_⟩
  calc
    (1 -
        dSVDensityRationalHeterogeneousPhysicalUniformEscapeRate
          d W) ^ (k + 1) ≤
      (1 -
        dSVDensityRationalHeterogeneousPhysicalUniformEscapeRate
          d W) ^ k := by
      rw [pow_succ]
      nlinarith [pow_nonneg continuation k]
    _ ≤ ε ^ 2 := tail.le

theorem
    dSVDensityRationalHeterogeneousPhysicalTerminalMass_le_horizon
    {d S L N : ℕ} (grid : 0 < N) (dimension : 0 < d)
    (width : Fin S → ℝ) (large : ∀ s, 1 ≤ width s)
    (fine : ∀ s : Fin S,
      (d : ℝ) / N ≤ 1 / (2 * (width s + 1)))
    {W ε : ℝ} (W_nonnegative : 0 ≤ W)
    (upper : ∀ s, width s ≤ W)
    (tail :
      (1 -
        dSVDensityRationalHeterogeneousPhysicalUniformEscapeRate
          d W) ^ L ≤ ε ^ 2)
    (schedule : Fin L → Fin S)
    (ξ ζ : BipartiteUnitVector d) :
    dSVDensityRationalHeterogeneousPhysicalTerminalMass
        N width schedule ξ ζ ≤ ε ^ 2 :=
  (dSVDensityRationalHeterogeneousPhysicalTerminalMass_le_pow
    grid dimension width large fine W_nonnegative upper
    schedule ξ ζ).trans tail

end

noncomputable section

open scoped BigOperators

theorem weighted_rpow_mean_le
    {ι : Type*} [Fintype ι]
    (weight value : ι → ℝ)
    (nonnegative : ∀ i, 0 ≤ weight i)
    (normalized : (∑ i, weight i) = 1)
    (value_nonnegative : ∀ i, 0 ≤ value i)
    {r : ℝ} (hrzero : 0 ≤ r) (hrone : r ≤ 1) :
    (∑ i, weight i * value i ^ r) ≤
      (∑ i, weight i * value i) ^ r := by
  classical
  simpa [smul_eq_mul] using
    (Real.concaveOn_rpow hrzero hrone).le_map_sum
      (t := Finset.univ)
      (w := weight)
      (p := value)
      (fun i _ => nonnegative i)
      normalized
      (fun i _ => value_nonnegative i)

end

noncomputable section

open scoped BigOperators ComplexOrder Kronecker MatrixOrder

theorem unconditionalLiterature_weightedNormMean_le_sqrtEnergy
    {ι : Type*} [Fintype ι]
    (weight value : ι → ℝ)
    (weight_nonnegative : ∀ i, 0 ≤ weight i)
    (weight_normalized : (∑ i, weight i) = 1)
    (value_nonnegative : ∀ i, 0 ≤ value i) :
    (∑ i, weight i * value i) ≤
      Real.sqrt (∑ i, weight i * value i ^ 2) := by
  classical
  have jensen := weighted_rpow_mean_le weight
    (fun i => value i ^ 2)
    weight_nonnegative weight_normalized
    (fun i => sq_nonneg (value i))
    (r := (1 / 2 : ℝ)) (by norm_num) (by norm_num)
  calc
    (∑ i, weight i * value i) =
        ∑ i, weight i * (value i ^ 2) ^ (1 / 2 : ℝ) := by
          apply Finset.sum_congr rfl
          intro i _
          rw [← Real.sqrt_eq_rpow, Real.sqrt_sq_eq_abs,
            abs_of_nonneg (value_nonnegative i)]
    _ ≤ (∑ i, weight i * value i ^ 2) ^ (1 / 2 : ℝ) := jensen
    _ = Real.sqrt (∑ i, weight i * value i ^ 2) := by
      rw [Real.sqrt_eq_rpow]

theorem unconditionalLiterature_sqrt_two_mul_sqrt_thirtytwo
    (η : ℝ) :
    8 * Real.sqrt 2 * Real.sqrt (32 * η) =
      64 * Real.sqrt η := by
  calc
    8 * Real.sqrt 2 * Real.sqrt (32 * η) =
        8 * Real.sqrt ((2 : ℝ) * (32 * η)) := by
          rw [Real.sqrt_mul (by norm_num : (0 : ℝ) ≤ 2)]
          ring
    _ = 8 * Real.sqrt ((64 : ℝ) * η) := by
          congr 2
          ring
    _ = 64 * Real.sqrt η := by
          rw [Real.sqrt_mul (by norm_num : (0 : ℝ) ≤ 64)]
          norm_num
          ring

theorem unconditionalLiterature_weightedAsynchronous_le
    {ι : Type*} [Fintype ι]
    (weight value asynchronous : ι → ℝ)
    (weight_nonnegative : ∀ i, 0 ≤ weight i)
    (weight_normalized : (∑ i, weight i) = 1)
    (value_nonnegative : ∀ i, 0 ≤ value i)
    (η δ : ℝ)
    (source_energy : (∑ i, weight i * value i ^ 2) ≤ 32 * η)
    (physical : ∀ i,
      asynchronous i ≤ 8 * Real.sqrt 2 * value i + δ) :
    (∑ i, weight i * asynchronous i) ≤
      64 * Real.sqrt η + δ := by
  classical
  have mean :=
    unconditionalLiterature_weightedNormMean_le_sqrtEnergy
      weight value weight_nonnegative weight_normalized
      value_nonnegative
  have distance :
      (∑ i, weight i * value i) ≤ Real.sqrt (32 * η) :=
    mean.trans (Real.sqrt_le_sqrt source_energy)
  calc
    (∑ i, weight i * asynchronous i) ≤
        ∑ i, weight i *
          (8 * Real.sqrt 2 * value i + δ) := by
            apply Finset.sum_le_sum
            intro i _
            exact mul_le_mul_of_nonneg_left
              (physical i) (weight_nonnegative i)
    _ = 8 * Real.sqrt 2 *
          (∑ i, weight i * value i) + δ := by
          calc
            (∑ i, weight i *
                (8 * Real.sqrt 2 * value i + δ)) =
                8 * Real.sqrt 2 *
                  (∑ i, weight i * value i) +
                    δ * (∑ i, weight i) := by
                      rw [Finset.mul_sum, Finset.mul_sum,
                        ← Finset.sum_add_distrib]
                      apply Finset.sum_congr rfl
                      intro i _
                      ring
            _ = _ := by rw [weight_normalized]; ring
    _ ≤ 8 * Real.sqrt 2 * Real.sqrt (32 * η) + δ := by
          gcongr
    _ = 64 * Real.sqrt η + δ := by
          rw [unconditionalLiterature_sqrt_two_mul_sqrt_thirtytwo]

end

noncomputable section

open WithLp
open scoped BigOperators Kronecker ComplexOrder MatrixOrder

theorem dSVDensityRationalCompleteStoppedOptionalLocalSchedule_before
    {L : ℕ} (j : Fin L) (i : Fin (L + 1))
    (earlier : i.val < j.val) :
    dSVDensityRationalCompleteStoppedOptionalLocalSchedule
      L j.succ i = some false := by
  have attempted : i.val < L := lt_trans earlier j.isLt
  simp [dSVDensityRationalCompleteStoppedOptionalLocalSchedule,
    attempted, Fin.succ_ne_zero, earlier]

theorem dSVDensityRationalCompleteStoppedOptionalLocalSchedule_after
    {L : ℕ} (j : Fin L) (i : Fin (L + 1))
    (later : j.val < i.val) :
    dSVDensityRationalCompleteStoppedOptionalLocalSchedule
      L j.succ i = none := by
  have not_before : ¬ i.val < j.val := by omega
  have not_equal : i.val ≠ j.val := by omega
  simp [dSVDensityRationalCompleteStoppedOptionalLocalSchedule,
    Fin.succ_ne_zero, not_before, not_equal]

end

noncomputable section

open WithLp
open scoped BigOperators ComplexOrder Kronecker MatrixOrder

theorem dSVDensityRationalPureMatchedFlagIndicator_sum
    {L : ℕ} (a b : Fin (L + 1)) :
    (∑ flag : Fin (L + 1),
      if a = flag ∧ b = flag then (1 : ℝ) else 0) =
      if a = b then 1 else 0 := by
  classical
  by_cases same : a = b
  · subst b
    simp
  · have absent (flag : Fin (L + 1)) :
        ¬ (a = flag ∧ b = flag) := by
      rintro ⟨first, second⟩
      exact same (first.trans second.symm)
    simp [same, absent]

theorem dSVDensityRationalPureMatchedFlagBorn_sum_eq
    {A C : Type*} [Fintype A] [Fintype C]
    {L : ℕ} (alice : A → Fin (L + 1))
    (bob : C → Fin (L + 1))
    (z : EuclideanSpace ℂ (A × C)) :
    (∑ flag : Fin (L + 1),
      dSVDensityRationalPureBaseExactFlagBornMass
        alice bob z flag flag) =
      ∑ a : A, ∑ c : C,
        ‖z (a, c)‖ ^ 2 *
          if alice a = bob c then (1 : ℝ) else 0 := by
  classical
  unfold dSVDensityRationalPureBaseExactFlagBornMass
  calc
    (∑ flag : Fin (L + 1),
      ∑ a : A, ∑ c : C,
        ‖z (a, c)‖ ^ 2 *
          if alice a = flag ∧ bob c = flag then (1 : ℝ) else 0) =
      ∑ a : A, ∑ c : C, ∑ flag : Fin (L + 1),
        ‖z (a, c)‖ ^ 2 *
          if alice a = flag ∧ bob c = flag then (1 : ℝ) else 0 := by
      rw [Finset.sum_comm]
      apply Finset.sum_congr rfl
      intro a _
      rw [Finset.sum_comm]
    _ = ∑ a : A, ∑ c : C,
      ‖z (a, c)‖ ^ 2 *
        if alice a = bob c then (1 : ℝ) else 0 := by
      apply Finset.sum_congr rfl
      intro a _
      apply Finset.sum_congr rfl
      intro c _
      rw [← Finset.mul_sum,
        dSVDensityRationalPureMatchedFlagIndicator_sum]

theorem dSVDensityRationalPureFlagBorn_partition
    {A C : Type*} [Fintype A] [Fintype C]
    {L : ℕ} (alice : A → Fin (L + 1))
    (bob : C → Fin (L + 1))
    (z : EuclideanSpace ℂ (A × C)) :
    dSVDensityRationalPublicMultiscaleFirstHitPhysicalFlagMismatchMass
        alice bob z +
      (∑ flag : Fin (L + 1),
        dSVDensityRationalPureBaseExactFlagBornMass
          alice bob z flag flag) =
      ‖z‖ ^ 2 := by
  classical
  rw [dSVDensityRationalPureMatchedFlagBorn_sum_eq]
  unfold
    dSVDensityRationalPublicMultiscaleFirstHitPhysicalFlagMismatchMass
  rw [EuclideanSpace.norm_sq_eq, Fintype.sum_prod_type]
  rw [← Finset.sum_add_distrib]
  apply Finset.sum_congr rfl
  intro a _
  rw [← Finset.sum_add_distrib]
  apply Finset.sum_congr rfl
  intro c _
  split_ifs <;> ring

theorem dSVDensityRationalPureMatchedFlagBorn_zero_succ
    {A C : Type*} [Fintype A] [Fintype C]
    {L : ℕ} (alice : A → Fin (L + 1))
    (bob : C → Fin (L + 1))
    (z : EuclideanSpace ℂ (A × C)) :
    (∑ flag : Fin (L + 1),
      dSVDensityRationalPureBaseExactFlagBornMass
        alice bob z flag flag) =
      dSVDensityRationalPureBaseExactFlagBornMass
          alice bob z 0 0 +
        ∑ j : Fin L,
          dSVDensityRationalPureBaseExactFlagBornMass
            alice bob z j.succ j.succ := by
  rw [Fin.sum_univ_succ]

theorem dSVDensityRationalPureFlagBorn_partition_zero_succ
    {A C : Type*} [Fintype A] [Fintype C]
    {L : ℕ} (alice : A → Fin (L + 1))
    (bob : C → Fin (L + 1))
    (z : EuclideanSpace ℂ (A × C)) :
    dSVDensityRationalPublicMultiscaleFirstHitPhysicalFlagMismatchMass
        alice bob z +
      dSVDensityRationalPureBaseExactFlagBornMass
          alice bob z 0 0 +
      (∑ j : Fin L,
        dSVDensityRationalPureBaseExactFlagBornMass
          alice bob z j.succ j.succ) =
      ‖z‖ ^ 2 := by
  have actual := dSVDensityRationalPureFlagBorn_partition
    alice bob z
  rw [dSVDensityRationalPureMatchedFlagBorn_zero_succ
    alice bob z] at actual
  linarith

theorem dSVDensityRationalPureFlagBorn_normalized_partition_zero_succ
    {A C : Type*} [Fintype A] [Fintype C]
    {L : ℕ} (alice : A → Fin (L + 1))
    (bob : C → Fin (L + 1))
    (z : EuclideanSpace ℂ (A × C)) (normalized : ‖z‖ = 1) :
    dSVDensityRationalPublicMultiscaleFirstHitPhysicalFlagMismatchMass
        alice bob z +
      dSVDensityRationalPureBaseExactFlagBornMass
          alice bob z 0 0 +
      (∑ j : Fin L,
        dSVDensityRationalPureBaseExactFlagBornMass
          alice bob z j.succ j.succ) = 1 := by
  simpa [normalized] using
    dSVDensityRationalPureFlagBorn_partition_zero_succ
      alice bob z

end

noncomputable section

open WithLp
open scoped BigOperators ComplexOrder Kronecker MatrixOrder

attribute [local instance] Classical.propDecidable

theorem
    dSVDensityRationalHeterogeneousActualPhysicalFlagMass_eq_optionalProduct
    {S d N L : ℕ} (width : Fin S → ℝ) (schedule : Fin L → Fin S)
    (ξ ζ : BipartiteUnitVector d)
    (flagAlice flagBob : Fin (L + 1)) :
    dSVDensityRationalHeterogeneousActualPhysicalFlagMass
        N width schedule ξ ζ flagAlice flagBob =
      ∏ i : Fin (L + 1),
        ‖dSVDensityRationalCompleteStoppedOptionalOutcome
          (dSVDensityRationalHeterogeneousActualPhysicalFlagBornCopyWidth
            width schedule i) N ξ ζ
          (dSVDensityRationalCompleteStoppedOptionalLocalSchedule
            L flagAlice i)
          (dSVDensityRationalCompleteStoppedOptionalLocalSchedule
            L flagBob i)‖ ^ 2 := by
  classical
  unfold dSVDensityRationalHeterogeneousActualPhysicalFlagMass
  simp_rw [dSVDensityRationalHeterogeneousActualPhysicalFlagBornState_allFlags,
    norm_prod, ← Finset.prod_pow]
  calc
    _ = ∏ i : Fin (L + 1),
          ∑ a : DSVUniformDensityThresholdLocalIndex N d,
            ∑ b : DSVUniformDensityThresholdLocalIndex N d,
              ‖dSVDensityRationalCompleteStoppedOptionalOutcome
                (dSVDensityRationalHeterogeneousActualPhysicalFlagBornCopyWidth
                  width schedule i) N ξ ζ
                (dSVDensityRationalCompleteStoppedOptionalLocalSchedule
                  L flagAlice i)
                (dSVDensityRationalCompleteStoppedOptionalLocalSchedule
                  L flagBob i) (a, b)‖ ^ 2 :=
      dSVUniformDensityPhysicalAsync_doubleProductSum
        (fun i a b =>
          ‖dSVDensityRationalCompleteStoppedOptionalOutcome
            (dSVDensityRationalHeterogeneousActualPhysicalFlagBornCopyWidth
              width schedule i) N ξ ζ
            (dSVDensityRationalCompleteStoppedOptionalLocalSchedule
              L flagAlice i)
            (dSVDensityRationalCompleteStoppedOptionalLocalSchedule
              L flagBob i) (a, b)‖ ^ 2)
    _ = _ := by
      apply Finset.prod_congr rfl
      intro i _
      rw [EuclideanSpace.norm_sq_eq, Fintype.sum_prod_type]

theorem
    dSVDensityRationalHeterogeneousActualPhysical_firstHitProduct
    {L : ℕ} (continuation : ℕ → ℝ) (success : ℝ) (j : Fin L) :
    (∏ i : Fin (L + 1),
      if i.val < j.val then continuation i.val
      else if i.val = j.val then success else 1) =
      dSVHeterogeneousRealPrefix continuation j.val * success := by
  classical
  let f : ℕ → ℝ := fun i =>
    if i < j.val then continuation i
    else if i = j.val then success else 1
  have length : L + 1 = (j.val + 1) + (L - j.val) := by
    omega
  calc
    _ = ∏ k ∈ Finset.range (L + 1), f k :=
      Fin.prod_univ_eq_prod_range f (L + 1)
    _ = (∏ k ∈ Finset.range (j.val + 1), f k) *
          (∏ k ∈ Finset.range (L - j.val), f (j.val + 1 + k)) := by
      rw [length, Finset.prod_range_add]
    _ = (∏ k ∈ Finset.range j.val, continuation k) * success := by
      rw [Finset.prod_range_succ]
      have prefixProduct :
          (∏ k ∈ Finset.range j.val, f k) =
            (∏ k ∈ Finset.range j.val, continuation k) := by
        apply Finset.prod_congr rfl
        intro k member
        have earlier : k < j.val := Finset.mem_range.mp member
        simp [f, earlier]
      have selected : f j.val = success := by
        simp [f]
      have tail :
          (∏ k ∈ Finset.range (L - j.val),
            f (j.val + 1 + k)) = 1 := by
        apply Finset.prod_eq_one
        intro k _
        have notEarlier : ¬ j.val + 1 + k < j.val := by omega
        have notEqual : j.val + 1 + k ≠ j.val := by omega
        simp [f, notEarlier, notEqual]
      rw [prefixProduct, selected, tail, mul_one]
    _ = _ := rfl

theorem
    dSVDensityRationalHeterogeneousActualPhysicalMatchedCopyBorn
    {S d N L : ℕ} (grid : 0 < N) (dimension : 0 < d)
    (width : Fin S → ℝ) (schedule : Fin L → Fin S)
    (ξ ζ : BipartiteUnitVector d)
    (j : Fin L) (i : Fin (L + 1)) :
    ‖dSVDensityRationalCompleteStoppedOptionalOutcome
        (dSVDensityRationalHeterogeneousActualPhysicalFlagBornCopyWidth
          width schedule i) N ξ ζ
        (dSVDensityRationalCompleteStoppedOptionalLocalSchedule
          L j.succ i)
        (dSVDensityRationalCompleteStoppedOptionalLocalSchedule
          L j.succ i)‖ ^ 2 =
      if i.val < j.val then
        dSVDensityRationalHeterogeneousPhysicalStageContinue
          N width schedule ξ ζ i.val
      else if i.val = j.val then
        dSVDensityRationalHeterogeneousPhysicalStageSuccess
          N width schedule ξ ζ j.val
      else 1 := by
  classical
  rcases lt_trichotomy i.val j.val with earlier | equal | later
  · rw [dSVDensityRationalCompleteStoppedOptionalLocalSchedule_before
      j i earlier,
      dSVDensityRationalCompleteStoppedOptionalOutcome_some_some]
    have active : i.val < L := lt_trans earlier j.isLt
    simp [dSVDensityRationalHeterogeneousActualPhysicalFlagBornCopyWidth,
      dSVDensityRationalHeterogeneousPhysicalStageContinue,
      dSVDensityRationalHeterogeneousPhysicalStageOutcome,
      active, earlier]
  · have selected : i = j.castSucc := Fin.ext equal
    subst i
    rw [dSVDensityRationalCompleteStoppedOptionalLocalSchedule_hit,
      dSVDensityRationalCompleteStoppedOptionalOutcome_some_some]
    simp [dSVDensityRationalHeterogeneousActualPhysicalFlagBornCopyWidth,
      dSVDensityRationalHeterogeneousPhysicalStageSuccess,
      dSVDensityRationalHeterogeneousPhysicalStageOutcome,
      j.isLt]
  · rw [dSVDensityRationalCompleteStoppedOptionalLocalSchedule_after
      j i later,
      dSVDensityRationalCompleteStoppedOptionalOutcome_none_none,
      dSVUniformDensityThresholdSharedState_norm grid dimension]
    simp [show ¬ i.val < j.val by omega,
      show i.val ≠ j.val by omega]

theorem
    dSVDensityRationalHeterogeneousActualPhysicalFlagMass_succ_succ_eq_stage
    {S d N L : ℕ} (grid : 0 < N) (dimension : 0 < d)
    (width : Fin S → ℝ) (schedule : Fin L → Fin S)
    (ξ ζ : BipartiteUnitVector d) (j : Fin L) :
    dSVDensityRationalHeterogeneousActualPhysicalFlagMass
        N width schedule ξ ζ j.succ j.succ =
      dSVDensityRationalHeterogeneousPhysicalSurvival
          N width schedule ξ ζ j.val *
        dSVDensityRationalHeterogeneousPhysicalStageSuccess
          N width schedule ξ ζ j.val := by
  rw [dSVDensityRationalHeterogeneousActualPhysicalFlagMass_eq_optionalProduct]
  simp_rw [dSVDensityRationalHeterogeneousActualPhysicalMatchedCopyBorn
    grid dimension width schedule ξ ζ j]
  exact dSVDensityRationalHeterogeneousActualPhysical_firstHitProduct
    (dSVDensityRationalHeterogeneousPhysicalStageContinue
      N width schedule ξ ζ)
    (dSVDensityRationalHeterogeneousPhysicalStageSuccess
      N width schedule ξ ζ j.val) j

theorem dSVDensityRationalHeterogeneousActualPhysicalNoHitCopyBorn
    {S d N L : ℕ} (grid : 0 < N) (dimension : 0 < d)
    (width : Fin S → ℝ) (schedule : Fin L → Fin S)
    (ξ ζ : BipartiteUnitVector d) (i : Fin (L + 1)) :
    ‖dSVDensityRationalCompleteStoppedOptionalOutcome
        (dSVDensityRationalHeterogeneousActualPhysicalFlagBornCopyWidth
          width schedule i) N ξ ζ
        (dSVDensityRationalCompleteStoppedOptionalLocalSchedule
          L 0 i)
        (dSVDensityRationalCompleteStoppedOptionalLocalSchedule
          L 0 i)‖ ^ 2 =
      if i.val < L then
        dSVDensityRationalHeterogeneousPhysicalStageContinue
          N width schedule ξ ζ i.val
      else 1 := by
  classical
  rw [dSVDensityRationalCompleteStoppedOptionalLocalSchedule_zero]
  by_cases active : i.val < L
  · rw [if_pos active,
      dSVDensityRationalCompleteStoppedOptionalOutcome_some_some]
    simp [dSVDensityRationalHeterogeneousActualPhysicalFlagBornCopyWidth,
      dSVDensityRationalHeterogeneousPhysicalStageContinue,
      dSVDensityRationalHeterogeneousPhysicalStageOutcome,
      active]
  · rw [if_neg active,
      dSVDensityRationalCompleteStoppedOptionalOutcome_none_none,
      dSVUniformDensityThresholdSharedState_norm grid dimension]
    simp [active]

theorem
    dSVDensityRationalHeterogeneousActualPhysicalFlagMass_zero_zero_eq_terminal
    {S d N L : ℕ} (grid : 0 < N) (dimension : 0 < d)
    (width : Fin S → ℝ) (schedule : Fin L → Fin S)
    (ξ ζ : BipartiteUnitVector d) :
    dSVDensityRationalHeterogeneousActualPhysicalFlagMass
        N width schedule ξ ζ 0 0 =
      dSVDensityRationalHeterogeneousPhysicalTerminalMass
        N width schedule ξ ζ := by
  rw [dSVDensityRationalHeterogeneousActualPhysicalFlagMass_eq_optionalProduct]
  simp_rw [dSVDensityRationalHeterogeneousActualPhysicalNoHitCopyBorn
    grid dimension width schedule ξ ζ]
  unfold dSVDensityRationalHeterogeneousPhysicalTerminalMass
    dSVDensityRationalHeterogeneousPhysicalSurvival
    dSVHeterogeneousRealPrefix
  rw [Fin.prod_univ_castSucc]
  simp only [Fin.val_castSucc, Fin.val_last, Fin.is_lt, ↓reduceIte,
    lt_self_iff_false, mul_one]
  exact Fin.prod_univ_eq_prod_range
    (dSVDensityRationalHeterogeneousPhysicalStageContinue
      N width schedule ξ ζ) L

theorem
    dSVDensityRationalHeterogeneousActualPhysicalBaseFlagBorn_eq_flagMass
    {S d N L : ℕ} (width : Fin S → ℝ) (schedule : Fin L → Fin S)
    (ξ ζ : BipartiteUnitVector d)
    (flagAlice flagBob : Fin (L + 1)) :
    dSVDensityRationalPureBaseExactFlagBornMass
        (fun q : DSVUniformDensityThresholdWholeHistoryLocalIndex
          N d L => q.1)
        (fun q : DSVUniformDensityThresholdWholeHistoryLocalIndex
          N d L => q.1)
        (dSVDensityRationalHeterogeneousActualPhysicalState
          N width schedule ξ ζ)
        flagAlice flagBob =
      dSVDensityRationalHeterogeneousActualPhysicalFlagMass
        N width schedule ξ ζ flagAlice flagBob := by
  classical
  unfold dSVDensityRationalPureBaseExactFlagBornMass
    dSVDensityRationalHeterogeneousActualPhysicalFlagMass
  simp only [Fintype.sum_sigma]
  simp [mul_ite, ite_and]

theorem
    dSVDensityRationalHeterogeneousActualPhysicalMatchedFlagMass_eq_stoppedSuccess
    {S d N L : ℕ} (grid : 0 < N) (dimension : 0 < d)
    (width : Fin S → ℝ) (schedule : Fin L → Fin S)
    (ξ ζ : BipartiteUnitVector d) :
    (∑ j : Fin L,
      dSVDensityRationalHeterogeneousActualPhysicalFlagMass
        N width schedule ξ ζ j.succ j.succ) =
      dSVDensityRationalHeterogeneousPhysicalStoppedSuccessMass
        N width schedule ξ ζ := by
  simp_rw [dSVDensityRationalHeterogeneousActualPhysicalFlagMass_succ_succ_eq_stage
    grid dimension width schedule ξ ζ]
  unfold dSVDensityRationalHeterogeneousPhysicalStoppedSuccessMass
  exact Fin.sum_univ_eq_sum_range
    (fun k : ℕ =>
      dSVDensityRationalHeterogeneousPhysicalSurvival
          N width schedule ξ ζ k *
        dSVDensityRationalHeterogeneousPhysicalStageSuccess
          N width schedule ξ ζ k) L

theorem
    dSVDensityRationalHeterogeneousActualPhysicalFlagBorn_mass_partition
    {S d N L : ℕ} (grid : 0 < N) (dimension : 0 < d)
    (width : Fin S → ℝ) (schedule : Fin L → Fin S)
    (ξ ζ : BipartiteUnitVector d) :
    dSVDensityRationalHeterogeneousActualAsynchronousFlagMass
        N width schedule ξ ζ +
      dSVDensityRationalHeterogeneousActualPhysicalFlagMass
          N width schedule ξ ζ 0 0 +
      (∑ j : Fin L,
        dSVDensityRationalHeterogeneousActualPhysicalFlagMass
          N width schedule ξ ζ j.succ j.succ) = 1 := by
  have actual :=
    dSVDensityRationalPureFlagBorn_normalized_partition_zero_succ
      (fun q : DSVUniformDensityThresholdWholeHistoryLocalIndex
        N d L => q.1)
      (fun q : DSVUniformDensityThresholdWholeHistoryLocalIndex
        N d L => q.1)
      (dSVDensityRationalHeterogeneousActualPhysicalState
        N width schedule ξ ζ)
      (dSVDensityRationalHeterogeneousActualPhysicalState_norm
        grid dimension width schedule ξ ζ)
  change
    dSVDensityRationalHeterogeneousActualAsynchronousFlagMass
        N width schedule ξ ζ +
      dSVDensityRationalPureBaseExactFlagBornMass
        (fun q : DSVUniformDensityThresholdWholeHistoryLocalIndex
          N d L => q.1)
        (fun q : DSVUniformDensityThresholdWholeHistoryLocalIndex
          N d L => q.1)
        (dSVDensityRationalHeterogeneousActualPhysicalState
          N width schedule ξ ζ) 0 0 +
      (∑ j : Fin L,
        dSVDensityRationalPureBaseExactFlagBornMass
          (fun q : DSVUniformDensityThresholdWholeHistoryLocalIndex
            N d L => q.1)
          (fun q : DSVUniformDensityThresholdWholeHistoryLocalIndex
            N d L => q.1)
          (dSVDensityRationalHeterogeneousActualPhysicalState
            N width schedule ξ ζ) j.succ j.succ) = 1 at actual
  simpa only
    [dSVDensityRationalHeterogeneousActualPhysicalBaseFlagBorn_eq_flagMass]
    using actual

theorem
    dSVDensityRationalHeterogeneousActualAsynchronousFlagMass_eq_stoppedAsynchronousMass
    {S d N L : ℕ} (grid : 0 < N) (dimension : 0 < d)
    (width : Fin S → ℝ) (schedule : Fin L → Fin S)
    (ξ ζ : BipartiteUnitVector d) :
    dSVDensityRationalHeterogeneousActualAsynchronousFlagMass
        N width schedule ξ ζ =
      dSVDensityRationalHeterogeneousPhysicalStoppedAsynchronousMass
        N width schedule ξ ζ := by
  have physical :=
    dSVDensityRationalHeterogeneousActualPhysicalFlagBorn_mass_partition
      grid dimension width schedule ξ ζ
  rw [dSVDensityRationalHeterogeneousActualPhysicalFlagMass_zero_zero_eq_terminal
        grid dimension width schedule ξ ζ,
      dSVDensityRationalHeterogeneousActualPhysicalMatchedFlagMass_eq_stoppedSuccess
        grid dimension width schedule ξ ζ] at physical
  have stages :=
    dSVDensityRationalHeterogeneousPhysicalStopped_mass_partition
      grid dimension width schedule ξ ζ
  linarith

end

noncomputable section

open WithLp
open scoped BigOperators Kronecker ComplexOrder MatrixOrder
  Matrix.Norms.L2Operator InnerProductSpace

theorem unconditionalSelectedCopy_weightedAffine
    {ι : Type*} [Fintype ι]
    (weight error asynchronous : ι → ℝ)
    (nonnegative : ∀ i, 0 ≤ weight i)
    (normalized : (∑ i, weight i) = 1)
    (coefficient residual : ℝ)
    (pointwise : ∀ i, error i ≤ coefficient * asynchronous i + residual) :
    (∑ i, weight i * error i) ≤
      coefficient * (∑ i, weight i * asynchronous i) + residual := by
  classical
  calc
    (∑ i, weight i * error i) ≤
        ∑ i, weight i *
          (coefficient * asynchronous i + residual) := by
            apply Finset.sum_le_sum
            intro i _
            exact mul_le_mul_of_nonneg_left
              (pointwise i) (nonnegative i)
    _ = coefficient * (∑ i, weight i * asynchronous i) +
          (∑ i, weight i) * residual := by
            simp_rw [mul_add]
            rw [Finset.sum_add_distrib,
              Finset.mul_sum, Finset.sum_mul]
            congr 1
            apply Finset.sum_congr rfl
            intro i _
            ring
    _ = coefficient * (∑ i, weight i * asynchronous i) + residual := by
          rw [normalized]
          ring

end

end QuantumParallelRepetition


open QuantumParallelRepetition
open scoped ComplexOrder Matrix BigOperators InnerProductSpace
open Complex Matrix Finset
open scoped BigOperators ComplexOrder Kronecker MatrixOrder
  Matrix.Norms.L2Operator InnerProductSpace

theorem solution
    {d N : ℕ} (dimension : 0 < d) (grid : 0 < N)
    (w δ : ℝ) (large : 1 ≤ w)
    (precision : 0 < δ) (bounded : δ ≤ 1)
    (grid_budget : 2 * (w + 1) * ((d : ℝ) / N) ≤ δ)
    (t : ℝ) (t_positive : 0 < t) (t_bounded : t ≤ 1)
    (rho : ℝ) (rho_positive : 0 < rho)
    {ι : Type} [Fintype ι]
    (weight : ι → ℝ)
    (weight_nonnegative : ∀ i, 0 ≤ weight i)
    (weight_normalized : (∑ i, weight i) = 1)
    (ξ ζ : ι → BipartiteUnitVector d)
    (eta : ℝ)
    (source_energy :
      (∑ i, weight i * ‖(ξ i).val - (ζ i).val‖ ^ 2) ≤ 32 * eta) :
    ∃ L B Q m : ℕ,
      0 < L ∧ 0 < B ∧ 0 < Q ∧ 0 < m ∧
      ∃ A C : Fin B → Option ℕ →
          Matrix.unitaryGroup (Fin (N * m)) ℂ,
        let width : Fin 1 → ℝ := fun _ => w
        let schedule : Fin L → Fin 1 := fun _ => 0
        (∀ i,
          dSVDensityRationalHeterogeneousPhysicalStoppedAsynchronousMass
              N width schedule (ξ i) (ζ i) ≤
            8 * Real.sqrt 2 * ‖(ξ i).val - (ζ i).val‖ + δ) ∧
        (∀ i,
          dSVDensityRationalHeterogeneousPhysicalTerminalMass
              N width schedule (ξ i) (ζ i) ≤ δ ^ 2) ∧
        ((∑ i, weight i *
          dSVDensityRationalHeterogeneousPhysicalStoppedAsynchronousMass
            N width schedule (ξ i) (ζ i)) ≤
              64 * Real.sqrt eta + δ) ∧
        ((∑ i, weight i *
          dSVDensityRationalHeterogeneousPhysicalTerminalMass
            N width schedule (ξ i) (ζ i)) ≤ δ ^ 2) ∧
        ((∑ i, weight i *
          dSVDensityRationalHeterogeneousStoppedCommonPrefixHazard
            Q m width schedule (ξ i) (ζ i) A C) ≤
          (34 / t) * (64 * Real.sqrt eta + δ) +
            4 * rho ^ 2 +
              (16 * (Real.exp 1 - 1) + 4) * t) := by
  classical
  have w_nonnegative : 0 ≤ w := by linarith
  obtain ⟨L, horizon_positive, tail⟩ :=
    dSVDensityRationalHeterogeneousPhysical_exists_positive_horizon
      dimension w_nonnegative precision
  obtain ⟨B, Q, m, phases, resolution, harmonic, A, C, selected⟩ :=
    exists_proofUnconditionalStoppedCommonPrefixBalancedHazard
      grid dimension t t_positive t_bounded rho rho_positive
  refine ⟨L, B, Q, m, horizon_positive, phases, resolution,
    harmonic, A, C, ?_⟩
  let width : Fin 1 → ℝ := fun _ => w
  let schedule : Fin L → Fin 1 := fun _ => 0
  have width_large : ∀ s : Fin 1, 1 ≤ width s := by
    intro s
    exact large
  have upper : ∀ s : Fin 1, width s ≤ w := by
    intro s
    exact le_rfl
  have fine : ∀ s : Fin 1,
      (d : ℝ) / N ≤ 1 / (2 * (width s + 1)) := by
    intro s
    have denominator : 0 < 2 * (width s + 1) := by
      dsimp [width]
      linarith
    apply (le_div_iff₀ denominator).mpr
    dsimp [width]
    nlinarith [grid_budget, bounded]
  have asynchronous (i : ι) :
      dSVDensityRationalHeterogeneousPhysicalStoppedAsynchronousMass
          N width schedule (ξ i) (ζ i) ≤
        8 * Real.sqrt 2 * ‖(ξ i).val - (ζ i).val‖ + δ := by
    calc
      _ ≤ 8 * Real.sqrt 2 * ‖(ξ i).val - (ζ i).val‖ +
          2 * (w + 1) * ((d : ℝ) / N) :=
        dSVDensityRationalHeterogeneousPhysicalStoppedAsynchronousMass_le_targetDistance
          grid dimension width width_large fine upper w_nonnegative
          schedule (ξ i) (ζ i)
      _ ≤ _ := by linarith
  have terminal (i : ι) :
      dSVDensityRationalHeterogeneousPhysicalTerminalMass
          N width schedule (ξ i) (ζ i) ≤ δ ^ 2 :=
    dSVDensityRationalHeterogeneousPhysicalTerminalMass_le_horizon
      grid dimension width width_large fine w_nonnegative upper tail
      schedule (ξ i) (ζ i)
  have mean_asynchronous :
      (∑ i, weight i *
        dSVDensityRationalHeterogeneousPhysicalStoppedAsynchronousMass
          N width schedule (ξ i) (ζ i)) ≤
        64 * Real.sqrt eta + δ :=
    unconditionalLiterature_weightedAsynchronous_le
      weight (fun i => ‖(ξ i).val - (ζ i).val‖)
      (fun i =>
        dSVDensityRationalHeterogeneousPhysicalStoppedAsynchronousMass
          N width schedule (ξ i) (ζ i))
      weight_nonnegative weight_normalized (fun _ => norm_nonneg _)
      eta δ source_energy asynchronous
  have mean_terminal :
      (∑ i, weight i *
        dSVDensityRationalHeterogeneousPhysicalTerminalMass
          N width schedule (ξ i) (ζ i)) ≤ δ ^ 2 := by
    calc
      _ ≤ ∑ i, weight i * δ ^ 2 := by
        apply Finset.sum_le_sum
        intro i _
        exact mul_le_mul_of_nonneg_left (terminal i)
          (weight_nonnegative i)
      _ = (∑ i, weight i) * δ ^ 2 := by
        rw [Finset.sum_mul]
      _ = δ ^ 2 := by rw [weight_normalized, one_mul]
  have pointwise (i : ι) :
      dSVDensityRationalHeterogeneousStoppedCommonPrefixHazard
          Q m width schedule (ξ i) (ζ i) A C ≤
        (34 / t) *
            dSVDensityRationalHeterogeneousPhysicalStoppedAsynchronousMass
              N width schedule (ξ i) (ζ i) +
          (4 * rho ^ 2 +
            (16 * (Real.exp 1 - 1) + 4) * t) := by
    have actual := selected width schedule (ξ i) (ζ i)
    rw [dSVDensityRationalHeterogeneousActualAsynchronousFlagMass_eq_stoppedAsynchronousMass
      grid dimension width schedule (ξ i) (ζ i)] at actual
    linarith
  have mean_hazard :=
    unconditionalSelectedCopy_weightedAffine
      weight
      (fun i =>
        dSVDensityRationalHeterogeneousStoppedCommonPrefixHazard
          Q m width schedule (ξ i) (ζ i) A C)
      (fun i =>
        dSVDensityRationalHeterogeneousPhysicalStoppedAsynchronousMass
          N width schedule (ξ i) (ζ i))
      weight_nonnegative weight_normalized
      (34 / t)
      (4 * rho ^ 2 + (16 * (Real.exp 1 - 1) + 4) * t)
      pointwise
  dsimp only
  refine ⟨asynchronous, terminal, mean_asynchronous, mean_terminal, ?_⟩
  have scaled := mul_le_mul_of_nonneg_left mean_asynchronous
    (show 0 ≤ (34 : ℝ) / t by positivity)
  linarith
