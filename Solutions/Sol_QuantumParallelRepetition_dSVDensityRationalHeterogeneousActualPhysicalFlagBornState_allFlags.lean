import Definitions.Def_quantum_parallel_repetition_game
import Definitions.Def_qpr_core_27
import Theorems.Thm_QuantumParallelRepetition_dSVSoftBobLeftReducedDensity_posSemidef
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

end

open scoped ComplexOrder Matrix BigOperators InnerProductSpace
open Complex Matrix Finset

noncomputable section

open WithLp
open scoped BigOperators Kronecker

@[simp] theorem permutationUnitary_val
    {ι : Type*} [Fintype ι] [DecidableEq ι]
    (σ : Equiv.Perm ι) :
    (permutationUnitary σ : Matrix ι ι ℂ) =
      σ.permMatrix ℂ := rfl

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

theorem dSVUniformDensityThresholdSharedState_mismatchedFlag
    (N d : ℕ) (k l : Fin N) (i j : Fin d)
    (different : k ≠ l) :
    dSVUniformDensityThresholdSharedState N d
      (⟨k, i⟩, ⟨l, j⟩) = 0 := by
  simp [dSVUniformDensityThresholdSharedState,
    sharedThresholdResource,
    sharedThresholdResourceRaw, different]

theorem dSVUniformDensityThresholdSharedState_mismatchedWork
    (N d : ℕ) (k l : Fin N) (i j : Fin d)
    (different : i ≠ j) :
    dSVUniformDensityThresholdSharedState N d
      (⟨k, i⟩, ⟨l, j⟩) = 0 := by
  simp [dSVUniformDensityThresholdSharedState,
    sharedThresholdResource,
    sharedThresholdResourceRaw, different]

theorem dSVUniformDensityIndependentSharedState_apply
    (L N d : ℕ)
    (alice bob :
      DSVUniformDensityIndependentHistoryLocalIndex L N d) :
    dSVUniformDensityIndependentSharedState L N d
        (alice, bob) =
      ∏ j : Fin L,
        dSVUniformDensityThresholdSharedState N d
          (alice j, bob j) := by
  simp [dSVUniformDensityIndependentSharedState,
    dSVUniformDensityIndependentHistoryPairReindex,
    LinearIsometryEquiv.piLpCongrLeft_apply,
    finiteTensorVector,
    bilateralWorkPairEquiv]

end

noncomputable section

open scoped BigOperators Kronecker ComplexOrder MatrixOrder

theorem controlledFiniteTensorLocalUnitary_apply
    {Ω ι β : Type*}
    [Fintype Ω] [DecidableEq Ω]
    [Fintype ι] [DecidableEq ι]
    [Fintype β] [DecidableEq β]
    (U : Ω → ι → Matrix.unitaryGroup β ℂ)
    (ω ν : Ω) (q r : ι → β) :
    (controlledFiniteTensorLocalUnitary U :
      Matrix (Σ _ : Ω, (ι → β)) (Σ _ : Ω, (ι → β)) ℂ)
        ⟨ω, q⟩ ⟨ν, r⟩ =
      if ω = ν then
        ∏ i : ι, (U ω i : Matrix β β ℂ) (q i) (r i)
      else 0 := by
  classical
  by_cases equal : ω = ν
  · subst ν
    simp [controlledFiniteTensorLocalUnitary,
      coherentSharedRandomControlledUnitary,
      finiteTensorLocalUnitary,
      finiteTensorLocalUnitaryMatrix,
      Matrix.blockDiagonal'_apply]
  · simp [controlledFiniteTensorLocalUnitary,
      coherentSharedRandomControlledUnitary,
      Matrix.blockDiagonal'_apply, equal]

end

noncomputable section

open WithLp
open scoped BigOperators Kronecker ComplexOrder MatrixOrder

theorem dSVUniformDensityCompletePureHistory_raw_norm
    (N d L : ℕ) :
    ‖sharedThresholdResourceRaw
      (d := Fin (L + 1) →
        DSVUniformDensityThresholdLocalIndex N d)
      (fun flag : Fin (L + 1) =>
        if flag.val = 0 then (1 : ℝ) else 0)‖ =
      ‖sharedThresholdResourceRaw (d := Fin d)
        (fun _ : Fin N => (1 : ℝ))‖ ^ (L + 1) := by
  let single := sharedThresholdResourceRaw (d := Fin d)
    (fun _ : Fin N => (1 : ℝ))
  let whole := sharedThresholdResourceRaw
    (d := Fin (L + 1) →
      DSVUniformDensityThresholdLocalIndex N d)
    (fun flag : Fin (L + 1) =>
      if flag.val = 0 then (1 : ℝ) else 0)
  have hsquare : ‖single‖ ^ 2 = (d : ℝ) * (N : ℝ) :=
    dSVUniformDensityThresholdRaw_norm_sq N d
  have hwhole :
      ‖whole‖ ^ 2 = (((N * d) ^ (L + 1) : ℕ) : ℝ) := by
    have original := sharedThresholdResourceRaw_norm_sq
      (d := Fin (L + 1) →
        DSVUniformDensityThresholdLocalIndex N d)
      (fun flag : Fin (L + 1) =>
        if flag.val = 0 then (1 : ℝ) else 0)
    simpa [DSVUniformDensityThresholdLocalIndex,
      whole] using original
  have hpower :
      (‖single‖ ^ (L + 1)) ^ 2 =
        (((N * d) ^ (L + 1) : ℕ) : ℝ) := by
    calc
      (‖single‖ ^ (L + 1)) ^ 2 =
        (‖single‖ ^ 2) ^ (L + 1) := by
          simp [← pow_mul, Nat.mul_comm]
      _ = (((N * d) ^ (L + 1) : ℕ) : ℝ) := by
          rw [hsquare]
          push_cast
          ring
  change ‖whole‖ = ‖single‖ ^ (L + 1)
  nlinarith [norm_nonneg whole,
    pow_nonneg (norm_nonneg single) (L + 1)]

theorem dSVUniformDensityCompletePureHistory_zeroFlag_apply
    (N d L : ℕ)
    (flag other : Fin (L + 1))
    (alice bob :
      DSVUniformDensityIndependentHistoryLocalIndex
        (L + 1) N d) :
    dSVUniformDensityThresholdWholeHistorySharedState N d L
      (⟨flag, alice⟩, ⟨other, bob⟩) =
      if flag.val = 0 ∧ other.val = 0 then
        dSVUniformDensityIndependentSharedState
          (L + 1) N d (alice, bob)
      else 0 := by
  classical
  let single := sharedThresholdResourceRaw (d := Fin d)
    (fun _ : Fin N => (1 : ℝ))
  let whole := sharedThresholdResourceRaw
    (d := Fin (L + 1) →
      DSVUniformDensityThresholdLocalIndex N d)
    (fun k : Fin (L + 1) =>
      if k.val = 0 then (1 : ℝ) else 0)
  have normalization :
      ‖whole‖ = ‖single‖ ^ (L + 1) :=
    dSVUniformDensityCompletePureHistory_raw_norm N d L
  have scalar :
      ‖whole‖⁻¹ = (‖single‖⁻¹) ^ (L + 1) := by
    rw [normalization, inv_pow]
  by_cases first_zero : flag = 0
  · subst flag
    by_cases second_zero : other = 0
    · subst other
      simp only [and_self]
      rw [dSVUniformDensityIndependentSharedState_apply]
      by_cases histories : alice = bob
      · subst bob
        have complex_scalar :
            ((‖whole‖⁻¹ : ℝ) : ℂ) =
              (((‖single‖⁻¹) ^ (L + 1) : ℝ) : ℂ) := by
          exact_mod_cast scalar
        have whole_amplitude :
            dSVUniformDensityThresholdWholeHistorySharedState
                N d L (⟨0, alice⟩, ⟨0, alice⟩) =
              ((‖whole‖⁻¹ : ℝ) : ℂ) := by
          simp [dSVUniformDensityThresholdWholeHistorySharedState,
            sharedThresholdResource,
            sharedThresholdResourceRaw, whole]
        have single_amplitude
            (q : DSVUniformDensityThresholdLocalIndex N d) :
            dSVUniformDensityThresholdSharedState N d (q, q) =
              ((‖single‖⁻¹ : ℝ) : ℂ) := by
          simp [dSVUniformDensityThresholdSharedState,
            sharedThresholdResource,
            sharedThresholdResourceRaw, single]
        rw [whole_amplitude]
        simp_rw [single_amplitude]
        simpa using complex_scalar
      · obtain ⟨j, different⟩ :
          ∃ j : Fin (L + 1), alice j ≠ bob j := by
          by_contra absent
          push Not at absent
          exact histories (funext absent)
        have zero :
            dSVUniformDensityThresholdSharedState N d
              (alice j, bob j) = 0 := by
          by_cases labels : (alice j).1 = (bob j).1
          · have works : (alice j).2 ≠ (bob j).2 := by
              intro same
              apply different
              exact Sigma.ext labels (by simpa using same)
            exact
              dSVUniformDensityThresholdSharedState_mismatchedWork
                N d (alice j).1 (bob j).1
                (alice j).2 (bob j).2 works
          · exact
              dSVUniformDensityThresholdSharedState_mismatchedFlag
                N d (alice j).1 (bob j).1
                (alice j).2 (bob j).2 labels
        have product_zero :
            (∏ i : Fin (L + 1),
              dSVUniformDensityThresholdSharedState N d
                (alice i, bob i)) = 0 :=
          Finset.prod_eq_zero (Finset.mem_univ j) zero
        rw [product_zero]
        simp [dSVUniformDensityThresholdWholeHistorySharedState,
          sharedThresholdResource,
          sharedThresholdResourceRaw, histories]
    · have nonzero : other.val ≠ 0 := by
        simpa using second_zero
      have different : (0 : Fin (L + 1)) ≠ other := by
        exact Ne.symm second_zero
      simp [dSVUniformDensityThresholdWholeHistorySharedState,
        sharedThresholdResource,
        sharedThresholdResourceRaw, different, nonzero]
  · have nonzero : flag.val ≠ 0 := by
      simpa using first_zero
    simp [dSVUniformDensityThresholdWholeHistorySharedState,
      sharedThresholdResource,
      sharedThresholdResourceRaw, first_zero, nonzero]

end

noncomputable section

open WithLp
open scoped BigOperators Kronecker ComplexOrder MatrixOrder

theorem dSVUniformDensityFirstAcceptFinitePrefix
    {L : ℕ} (s : Finset (Fin L)) (j : Fin L) :
    (if h : s.Nonempty then (s.min' h).succ else
      (0 : Fin (L + 1))) = j.succ ↔
      j ∈ s ∧ ∀ i : Fin L, i < j → i ∉ s := by
  classical
  constructor
  · intro selected
    by_cases nonempty : s.Nonempty
    · have minimum : s.min' nonempty = j := by
        have equal : (s.min' nonempty).succ = j.succ := by
          simpa [nonempty] using selected
        exact Fin.succ_injective L equal
      constructor
      · rw [← minimum]
        exact Finset.min'_mem s nonempty
      · intro i before contained
        have least : s.min' nonempty ≤ i := Finset.min'_le s i contained
        rw [minimum] at least
        exact (not_le_of_gt before) least
    · have impossible : (0 : Fin (L + 1)) = j.succ := by
        simpa [nonempty] using selected
      exact False.elim (Fin.succ_ne_zero j impossible.symm)
  · rintro ⟨accepted, prior⟩
    have nonempty : s.Nonempty := ⟨j, accepted⟩
    have minimum : s.min' nonempty = j := by
      apply (Finset.min'_eq_iff s nonempty j).mpr
      refine ⟨accepted, ?_⟩
      intro i contained
      exact le_of_not_gt (fun before => prior i before contained)
    simp [nonempty, minimum]

end

noncomputable section

open WithLp
open scoped BigOperators Kronecker ComplexOrder MatrixOrder

set_option backward.isDefEq.respectTransparency false
set_option maxHeartbeats 8000000
set_option maxRecDepth 3072

theorem dSVUniformDensityFirstAcceptControlledTensor_inv_apply
    {Ω ι β : Type*}
    [Fintype Ω] [DecidableEq Ω]
    [Fintype ι] [DecidableEq ι]
    [Fintype β] [DecidableEq β]
    (U : Ω → ι → Matrix.unitaryGroup β ℂ)
    (ω ν : Ω) (q r : ι → β) :
    (((controlledFiniteTensorLocalUnitary U)⁻¹ :
      Matrix.unitaryGroup (Σ _ : Ω, (ι → β)) ℂ) :
      Matrix (Σ _ : Ω, (ι → β)) (Σ _ : Ω, (ι → β)) ℂ)
      ⟨ω, q⟩ ⟨ν, r⟩ =
      if ω = ν then
        ∏ i : ι, star ((U ω i : Matrix β β ℂ) (r i) (q i))
      else 0 := by
  classical
  change
    star ((controlledFiniteTensorLocalUnitary U :
      Matrix (Σ _ : Ω, (ι → β)) (Σ _ : Ω, (ι → β)) ℂ)
      ⟨ν, r⟩ ⟨ω, q⟩) = _
  rw [controlledFiniteTensorLocalUnitary_apply]
  by_cases same : ω = ν
  · subst ν
    simp [star_prod]
  · have reversed : ν ≠ ω := Ne.symm same
    simp [same, reversed]

end

noncomputable section

open WithLp
open scoped BigOperators Kronecker ComplexOrder MatrixOrder

theorem coherentSharedRandomControlledUnitary_inv
    {ι κ : Type*} [Fintype ι] [DecidableEq ι]
    [Fintype κ] [DecidableEq κ]
    (U : ι → Matrix.unitaryGroup κ ℂ) :
    (coherentSharedRandomControlledUnitary U)⁻¹ =
      coherentSharedRandomControlledUnitary
        (fun i => (U i)⁻¹) := by
  classical
  apply Subtype.ext
  ext ⟨i, x⟩ ⟨j, y⟩
  change
    star ((coherentSharedRandomControlledUnitary U :
      Matrix (Σ _ : ι, κ) (Σ _ : ι, κ) ℂ) ⟨j, y⟩ ⟨i, x⟩) =
      (coherentSharedRandomControlledUnitary
        (fun i => (U i)⁻¹) :
        Matrix (Σ _ : ι, κ) (Σ _ : ι, κ) ℂ) ⟨i, x⟩ ⟨j, y⟩
  by_cases same : i = j
  · subst j
    simp [coherentSharedRandomControlledUnitary,
      Matrix.blockDiagonal'_apply]
  · have reversed : j ≠ i := Ne.symm same
    simp [coherentSharedRandomControlledUnitary,
      Matrix.blockDiagonal'_apply, same, reversed]

end

noncomputable section

open WithLp
open scoped BigOperators Kronecker ComplexOrder MatrixOrder

theorem spectralPartitionPOVM_effect_eq_spectralDiagonal
    {κ ι : Type*}
    [Fintype κ] [DecidableEq κ]
    [Fintype ι] [DecidableEq ι]
    (F : Matrix ι ι ℂ) (positive : F.PosSemidef)
    (bin : ι → κ) (outcome : κ) :
    (spectralPartitionPOVM F positive bin).operator outcome =
      spectralConjugationCLM positive.isHermitian.eigenvectorUnitary
        (Matrix.diagonal fun i : ι =>
          if bin i = outcome then (1 : ℂ) else 0) := by
  classical
  let selected : Finset ι :=
    Finset.univ.filter fun i : ι => bin i = outcome
  have diagonal :
      (∑ i ∈ selected,
        Matrix.diagonal (Pi.single i (1 : ℂ))) =
        Matrix.diagonal fun i : ι =>
          if bin i = outcome then (1 : ℂ) else 0 := by
    ext i j
    by_cases same : i = j
    · subst j
      simp [Matrix.sum_apply, selected, Pi.single_apply]
    · simp [Matrix.sum_apply, same]
  change
    (∑ i ∈ selected,
      spectralConjugationCLM positive.isHermitian.eigenvectorUnitary
        (Matrix.diagonal (Pi.single i (1 : ℂ)))) = _
  rw [← map_sum, diagonal]

theorem dSVUniformDensityPhysicalSpectralAliceCopy_inv
    {N d : ℕ} (ξ : BipartiteUnitVector d) :
    (dSVUniformDensityAliceHistorySpectralCopy
      (N := N) ξ)⁻¹ =
      coherentSharedRandomControlledUnitary
        (fun _ : Fin N =>
          dSVUniformDensityThresholdLeftBobBasis ξ) := by
  unfold dSVUniformDensityAliceHistorySpectralCopy
  rw [coherentSharedRandomControlledUnitary_inv]
  simp

theorem dSVUniformDensityPhysicalSpectralAliceCopy_transpose
    {N d : ℕ} (ξ : BipartiteUnitVector d) :
    (dSVUniformDensityAliceHistorySpectralCopy
      (N := N) ξ : Matrix
        (DSVUniformDensityThresholdLocalIndex N d)
        (DSVUniformDensityThresholdLocalIndex N d) ℂ).transpose =
      (dSVUniformDensityBobHistoryCopyBasis
        (N := N) ξ : Matrix
          (DSVUniformDensityThresholdLocalIndex N d)
          (DSVUniformDensityThresholdLocalIndex N d) ℂ) := by
  classical
  change
    (Matrix.blockDiagonal'
      (fun _ : Fin N =>
        (((dSVUniformDensityThresholdLeftBobBasis ξ)⁻¹ :
          Matrix.unitaryGroup (Fin d) ℂ) : Matrix (Fin d) (Fin d) ℂ))).transpose =
      Matrix.blockDiagonal'
        (fun _ : Fin N =>
          (conjugateUnitary
            (dSVUniformDensityThresholdLeftBobBasis ξ) :
            Matrix (Fin d) (Fin d) ℂ))
  rw [Matrix.blockDiagonal'_transpose]
  apply congrArg Matrix.blockDiagonal'
  funext k
  ext i j
  rfl

theorem dSVUniformDensityPhysicalSpectralAliceCopy_inv_transpose
    {N d : ℕ} (ξ : BipartiteUnitVector d) :
    ((((dSVUniformDensityAliceHistorySpectralCopy
      (N := N) ξ)⁻¹ : Matrix.unitaryGroup
        (DSVUniformDensityThresholdLocalIndex N d) ℂ) :
        Matrix (DSVUniformDensityThresholdLocalIndex N d)
          (DSVUniformDensityThresholdLocalIndex N d) ℂ)).transpose =
      (((dSVUniformDensityBobHistoryCopyBasis
        (N := N) ξ)⁻¹ : Matrix.unitaryGroup
          (DSVUniformDensityThresholdLocalIndex N d) ℂ) :
        Matrix (DSVUniformDensityThresholdLocalIndex N d)
          (DSVUniformDensityThresholdLocalIndex N d) ℂ) := by
  calc
    _ = (dSVUniformDensityAliceHistorySpectralCopy
      (N := N) ξ : Matrix
        (DSVUniformDensityThresholdLocalIndex N d)
        (DSVUniformDensityThresholdLocalIndex N d) ℂ).transpose.conjTranspose := by
          ext i j
          rfl
    _ = (dSVUniformDensityBobHistoryCopyBasis
      (N := N) ξ : Matrix
        (DSVUniformDensityThresholdLocalIndex N d)
        (DSVUniformDensityThresholdLocalIndex N d) ℂ).conjTranspose := by
          rw [dSVUniformDensityPhysicalSpectralAliceCopy_transpose]
    _ = _ := by
          rfl

end

noncomputable section

open WithLp
open scoped BigOperators Kronecker ComplexOrder MatrixOrder

set_option backward.isDefEq.respectTransparency false
set_option maxHeartbeats 16000000
set_option maxRecDepth 4096

attribute [local instance] Classical.propDecidable

theorem dSVUniformDensityPhysicalMatched_doubleTensorSourceFactor
    {ι β : Type*} [Fintype ι] [DecidableEq ι]
    [Fintype β] [DecidableEq β]
    (A B : ι → Matrix β β ℂ)
    (source : β × β → ℂ)
    (a b : ι → β) :
    (∑ x : ι → β, ∑ y : ι → β,
      (∏ i : ι, A i (a i) (x i)) *
      (∏ i : ι, B i (b i) (y i)) *
      (∏ i : ι, source (x i, y i))) =
      ∏ i : ι, ∑ x : β, ∑ y : β,
        A i (a i) x * B i (b i) y * source (x, y) := by
  classical
  calc
    _ = ∑ x : ι → β, ∑ y : ι → β,
        ∏ i : ι,
          (A i (a i) (x i) * B i (b i) (y i) * source (x i, y i)) := by
      apply Finset.sum_congr rfl
      intro x _
      apply Finset.sum_congr rfl
      intro y _
      rw [← Finset.prod_mul_distrib, ← Finset.prod_mul_distrib]
    _ = ∑ x : ι → β,
        ∏ i : ι, ∑ y : β,
          (A i (a i) (x i) * B i (b i) y * source (x i, y)) := by
      apply Finset.sum_congr rfl
      intro x _
      exact (Fintype.prod_sum fun i : ι => fun y : β =>
        A i (a i) (x i) * B i (b i) y * source (x i, y)).symm
    _ = _ :=
      (Fintype.prod_sum fun i : ι => fun x : β =>
        ∑ y : β, A i (a i) x * B i (b i) y * source (x, y)).symm

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

end

noncomputable section

open WithLp
open scoped BigOperators Kronecker ComplexOrder MatrixOrder

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

open scoped Kronecker ComplexOrder MatrixOrder

theorem dSVDensityRationalFirstAcceptPhysicalEffect_eq_spectralMask
    {d : ℕ} (w : ℝ) (N : ℕ)
    (ξ : BipartiteUnitVector d) (outcome : Bool) :
    (dSVDensityRationalCompleteProjectiveBinaryPOVM
        w N ξ).operator outcome =
      (((dSVUniformDensityAliceHistorySpectralCopy
          (N := N) ξ)⁻¹ : Matrix.unitaryGroup
          (DSVUniformDensityThresholdLocalIndex N d) ℂ) :
        Matrix (DSVUniformDensityThresholdLocalIndex N d)
          (DSVUniformDensityThresholdLocalIndex N d) ℂ) *
        dSVDensityRationalFirstAcceptLocalSpectralMask
          w N ξ outcome *
        (dSVUniformDensityAliceHistorySpectralCopy
          (N := N) ξ :
          Matrix (DSVUniformDensityThresholdLocalIndex N d)
            (DSVUniformDensityThresholdLocalIndex N d) ℂ) := by
  classical
  rw [dSVDensityRationalCompleteProjectiveBinaryPOVM_effect,
    dSVUniformDensityPhysicalSpectralAliceCopy_inv]
  change
    Matrix.blockDiagonal'
        (fun k : Fin N =>
          (dSVDensityRationalLeftProjectiveThresholdPOVM
            w N k ξ).operator outcome) =
      Matrix.blockDiagonal'
          (fun _ : Fin N =>
            (dSVUniformDensityThresholdLeftBobBasis ξ :
              Matrix (Fin d) (Fin d) ℂ)) *
        Matrix.blockDiagonal'
          (fun k : Fin N =>
            Matrix.diagonal fun i : Fin d =>
              if dSVDensityRationalProjectiveThresholdBin w N k
                  ((dSVSoftBobLeftReducedDensity_posSemidef
                    ξ).isHermitian.eigenvalues i) = outcome
              then (1 : ℂ) else 0) *
        Matrix.blockDiagonal'
          (fun _ : Fin N =>
            (((dSVUniformDensityThresholdLeftBobBasis ξ)⁻¹ :
              Matrix.unitaryGroup (Fin d) ℂ) :
                Matrix (Fin d) (Fin d) ℂ))
  rw [← Matrix.blockDiagonal'_mul, ← Matrix.blockDiagonal'_mul]
  apply congrArg Matrix.blockDiagonal'
  funext k
  unfold dSVDensityRationalLeftProjectiveThresholdPOVM
    dSVDensityRationalProjectiveThresholdPOVM
  rw [spectralPartitionPOVM_effect_eq_spectralDiagonal]
  rfl

theorem dSVDensityRationalFirstAcceptLocalSpectralMask_transpose
    {d : ℕ} (w : ℝ) (N : ℕ)
    (ξ : BipartiteUnitVector d) (outcome : Bool) :
    (dSVDensityRationalFirstAcceptLocalSpectralMask
      w N ξ outcome).transpose =
      dSVDensityRationalFirstAcceptLocalSpectralMask
        w N ξ outcome := by
  classical
  simp [dSVDensityRationalFirstAcceptLocalSpectralMask]

theorem
    dSVDensityRationalFirstAcceptPhysicalBobEffect_eq_spectralMask
    {d : ℕ} (w : ℝ) (N : ℕ)
    (ζ : BipartiteUnitVector d) (outcome : Bool) :
    (transposePOVM
        (dSVDensityRationalCompleteProjectiveBinaryPOVM
          w N ζ)).operator outcome =
      (dSVUniformDensityBobHistoryCopyBasis
          (N := N) ζ :
          Matrix (DSVUniformDensityThresholdLocalIndex N d)
            (DSVUniformDensityThresholdLocalIndex N d) ℂ) *
        dSVDensityRationalFirstAcceptLocalSpectralMask
          w N ζ outcome *
        (((dSVUniformDensityBobHistoryCopyBasis
            (N := N) ζ)⁻¹ : Matrix.unitaryGroup
              (DSVUniformDensityThresholdLocalIndex N d) ℂ) :
            Matrix (DSVUniformDensityThresholdLocalIndex N d)
              (DSVUniformDensityThresholdLocalIndex N d) ℂ) := by
  change
    ((dSVDensityRationalCompleteProjectiveBinaryPOVM
      w N ζ).operator outcome).transpose = _
  rw [dSVDensityRationalFirstAcceptPhysicalEffect_eq_spectralMask
    w N ζ outcome, Matrix.transpose_mul, Matrix.transpose_mul,
    dSVDensityRationalFirstAcceptLocalSpectralMask_transpose,
    dSVUniformDensityPhysicalSpectralAliceCopy_transpose,
    dSVUniformDensityPhysicalSpectralAliceCopy_inv_transpose]
  simp [Matrix.mul_assoc]

end

noncomputable section

open WithLp
open scoped BigOperators ComplexOrder Kronecker MatrixOrder

attribute [local instance] Classical.propDecidable

theorem dSVDensityRationalHeterogeneousActualFirstAccepted_prefix_iff
    {β : Type*} {L : ℕ}
    (accepted : Fin L → β → Prop)
    (history : Fin (L + 1) → β) (j : Fin L) :
    dSVDensityRationalHeterogeneousActualFirstAccepted
        accepted history = j.succ ↔
      accepted j (history j.castSucc) ∧
        ∀ i : Fin L, i < j →
          ¬ accepted i (history i.castSucc) := by
  classical
  unfold dSVDensityRationalHeterogeneousActualFirstAccepted
  simpa [dSVDensityRationalHeterogeneousActualAcceptSet] using
    dSVUniformDensityFirstAcceptFinitePrefix
      (dSVDensityRationalHeterogeneousActualAcceptSet
        accepted history) j

theorem dSVDensityRationalHeterogeneousActualFirstAccepted_zero_iff
    {β : Type*} {L : ℕ}
    (accepted : Fin L → β → Prop)
    (history : Fin (L + 1) → β) :
    dSVDensityRationalHeterogeneousActualFirstAccepted
        accepted history = 0 ↔
      ∀ i : Fin L, ¬ accepted i (history i.castSucc) := by
  classical
  unfold dSVDensityRationalHeterogeneousActualFirstAccepted
  let hits := dSVDensityRationalHeterogeneousActualAcceptSet
    accepted history
  change (if h : hits.Nonempty then (hits.min' h).succ else 0) = 0 ↔ _
  by_cases nonempty : hits.Nonempty
  · rw [dif_pos nonempty]
    constructor
    · intro impossible
      exact (Fin.succ_ne_zero _ impossible).elim
    · intro none
      obtain ⟨j, member⟩ := nonempty
      have hit : accepted j (history j.castSucc) := by
        simpa [hits,
          dSVDensityRationalHeterogeneousActualAcceptSet]
          using member
      exact (none j hit).elim
  · rw [dif_neg nonempty]
    simp only [true_iff]
    intro j hit
    apply nonempty
    refine ⟨j, ?_⟩
    simpa [hits,
      dSVDensityRationalHeterogeneousActualAcceptSet] using hit

theorem dSVDensityRationalHeterogeneousActualFirstAcceptUnitary_mulVec
    {β : Type*} [Fintype β] [DecidableEq β]
    {L : ℕ} (accepted : Fin L → β → Prop)
    (v : (Σ _ : Fin (L + 1), Fin (L + 1) → β) → ℂ)
    (flag : Fin (L + 1)) (history : Fin (L + 1) → β) :
    ((dSVDensityRationalHeterogeneousActualFirstAcceptUnitary
        accepted :
      Matrix (Σ _ : Fin (L + 1), Fin (L + 1) → β)
        (Σ _ : Fin (L + 1), Fin (L + 1) → β) ℂ)).mulVec
        v ⟨flag, history⟩ =
      v ⟨(Equiv.swap (0 : Fin (L + 1))
        (dSVDensityRationalHeterogeneousActualFirstAccepted
          accepted history)) flag, history⟩ := by
  rw [dSVDensityRationalHeterogeneousActualFirstAcceptUnitary,
    permutationUnitary_val, Matrix.permMatrix_mulVec]
  rfl

theorem
    dSVDensityRationalHeterogeneousActualFirstAcceptUnitary_zeroFlag
    {β : Type*} [Fintype β] [DecidableEq β]
    {L : ℕ} (accepted : Fin L → β → Prop)
    (v : (Fin (L + 1) → β) → ℂ)
    (flag : Fin (L + 1)) (history : Fin (L + 1) → β) :
    ((dSVDensityRationalHeterogeneousActualFirstAcceptUnitary
        accepted :
      Matrix (Σ _ : Fin (L + 1), Fin (L + 1) → β)
        (Σ _ : Fin (L + 1), Fin (L + 1) → β) ℂ)).mulVec
        (fun q => if q.1 = 0 then v q.2 else 0)
        ⟨flag, history⟩ =
      if flag =
        dSVDensityRationalHeterogeneousActualFirstAccepted
          accepted history
      then v history else 0 := by
  rw [dSVDensityRationalHeterogeneousActualFirstAcceptUnitary_mulVec]
  let selected :=
    dSVDensityRationalHeterogeneousActualFirstAccepted
      accepted history
  change
    (if (Equiv.swap (0 : Fin (L + 1)) selected) flag = 0
    then v history else 0) =
    if flag = selected then v history else 0
  congr 1
  apply propext
  constructor
  · intro zero
    have injective :=
      (Equiv.swap (0 : Fin (L + 1)) selected).injective
    apply injective
    simpa using zero
  · intro same
    subst flag
    simp

theorem
    dSVDensityRationalHeterogeneousActualFirstAccepted_allFlags_iff
    {β : Type*} {L : ℕ}
    (accepted : Fin L → β → Prop)
    (history : Fin (L + 1) → β) (flag : Fin (L + 1)) :
    dSVDensityRationalHeterogeneousActualFirstAccepted
        accepted history = flag ↔
      ∀ i : Fin (L + 1),
        dSVDensityRationalHeterogeneousActualCopyCondition
          accepted flag i (history i) := by
  induction flag using Fin.cases with
  | zero =>
      rw [dSVDensityRationalHeterogeneousActualFirstAccepted_zero_iff]
      constructor
      · intro failed i
        by_cases active : i.val < L
        · have actual := failed (⟨i.val, active⟩ : Fin L)
          simpa [dSVDensityRationalHeterogeneousActualCopyCondition,
            active] using actual
        · simp [dSVDensityRationalHeterogeneousActualCopyCondition,
            active]
      · intro all i
        have actual := all i.castSucc
        simpa [dSVDensityRationalHeterogeneousActualCopyCondition,
          i.isLt] using actual
  | succ j =>
      rw [dSVDensityRationalHeterogeneousActualFirstAccepted_prefix_iff]
      constructor
      · rintro ⟨hit, earlier⟩ i
        by_cases active : i.val < L
        · by_cases before : i.val < j.val
          · have failure := earlier
              (⟨i.val, active⟩ : Fin L) (by exact before)
            simpa [dSVDensityRationalHeterogeneousActualCopyCondition,
              active, Fin.succ_ne_zero, before] using failure
          · by_cases equal : i.val = j.val
            · have same : i = j.castSucc := Fin.ext equal
              subst i
              simpa [dSVDensityRationalHeterogeneousActualCopyCondition,
                j.isLt, Fin.succ_ne_zero] using hit
            · simp [dSVDensityRationalHeterogeneousActualCopyCondition,
                active, Fin.succ_ne_zero, before, equal]
        · simp [dSVDensityRationalHeterogeneousActualCopyCondition,
            active]
      · intro all
        constructor
        · have actual := all j.castSucc
          simpa [dSVDensityRationalHeterogeneousActualCopyCondition,
            j.isLt, Fin.succ_ne_zero] using actual
        · intro i before
          have actual := all i.castSucc
          simpa [dSVDensityRationalHeterogeneousActualCopyCondition,
            i.isLt, Fin.succ_ne_zero, before] using actual

theorem
    dSVDensityRationalHeterogeneousActualFirstAccepted_sourceProduct
    {β : Type*} [Fintype β] {L : ℕ}
    (accepted : Fin L → β → Prop)
    (flag : Fin (L + 1))
    (A D : Fin (L + 1) → β → ℂ) :
    (∑ history : Fin (L + 1) → β,
      (∏ i : Fin (L + 1), A i (history i)) *
        (if flag =
          dSVDensityRationalHeterogeneousActualFirstAccepted
            accepted history
        then ∏ i : Fin (L + 1), D i (history i)
        else 0)) =
      ∏ i : Fin (L + 1),
        ∑ atom : β, A i atom *
          (if dSVDensityRationalHeterogeneousActualCopyCondition
              accepted flag i atom
          then D i atom else 0) := by
  classical
  have single (history : Fin (L + 1) → β) :
      (∏ i : Fin (L + 1), A i (history i)) *
          (if flag =
            dSVDensityRationalHeterogeneousActualFirstAccepted
              accepted history
          then ∏ i : Fin (L + 1), D i (history i)
          else 0) =
        ∏ i : Fin (L + 1),
          (A i (history i) *
            (if dSVDensityRationalHeterogeneousActualCopyCondition
                accepted flag i (history i)
            then D i (history i) else 0)) := by
    by_cases selected :
        dSVDensityRationalHeterogeneousActualFirstAccepted
          accepted history = flag
    · have all :=
        (dSVDensityRationalHeterogeneousActualFirstAccepted_allFlags_iff
          accepted history flag).mp selected
      rw [if_pos selected.symm, ← Finset.prod_mul_distrib]
      apply Finset.prod_congr rfl
      intro i _
      rw [if_pos (all i)]
    · have absent : ¬ ∀ i : Fin (L + 1),
          dSVDensityRationalHeterogeneousActualCopyCondition
            accepted flag i (history i) := by
        intro all
        exact selected
          ((dSVDensityRationalHeterogeneousActualFirstAccepted_allFlags_iff
            accepted history flag).mpr all)
      push Not at absent
      obtain ⟨i, rejected⟩ := absent
      have zero :
          (∏ k : Fin (L + 1),
            A k (history k) *
              (if dSVDensityRationalHeterogeneousActualCopyCondition
                  accepted flag k (history k)
              then D k (history k) else 0)) = 0 := by
        apply Finset.prod_eq_zero (Finset.mem_univ i)
        simp [rejected]
      rw [if_neg (Ne.symm selected), mul_zero, zero]
  calc
    _ = ∑ history : Fin (L + 1) → β,
      ∏ i : Fin (L + 1),
        (A i (history i) *
          (if dSVDensityRationalHeterogeneousActualCopyCondition
              accepted flag i (history i)
          then D i (history i) else 0)) := by
        apply Finset.sum_congr rfl
        intro history _
        exact single history
    _ = _ :=
      (Fintype.prod_sum fun i : Fin (L + 1) => fun atom : β =>
        A i atom *
          (if dSVDensityRationalHeterogeneousActualCopyCondition
              accepted flag i atom
          then D i atom else 0)).symm

end

noncomputable section

open WithLp
open scoped BigOperators ComplexOrder Kronecker MatrixOrder

attribute [local instance] Classical.propDecidable

theorem dSVDensityRationalHeterogeneousActualPhysicalState_apply
    (N : ℕ) {S d L : ℕ}
    (width : Fin S → ℝ) (schedule : Fin L → Fin S)
    (ξ ζ : BipartiteUnitVector d)
    (a b : DSVUniformDensityThresholdWholeHistoryLocalIndex
      N d L) :
    dSVDensityRationalHeterogeneousActualPhysicalState
        N width schedule ξ ζ (a, b) =
      ∑ x : DSVUniformDensityThresholdWholeHistoryLocalIndex
          N d L,
        ∑ y : DSVUniformDensityThresholdWholeHistoryLocalIndex
            N d L,
          (dSVDensityRationalHeterogeneousActualAliceUnitary
              N width schedule ξ :
            Matrix
              (DSVUniformDensityThresholdWholeHistoryLocalIndex
                N d L)
              (DSVUniformDensityThresholdWholeHistoryLocalIndex
                N d L) ℂ) a x *
          (dSVDensityRationalHeterogeneousActualBobUnitary
              N width schedule ζ :
            Matrix
              (DSVUniformDensityThresholdWholeHistoryLocalIndex
                N d L)
              (DSVUniformDensityThresholdWholeHistoryLocalIndex
                N d L) ℂ) b y *
          dSVUniformDensityThresholdWholeHistorySharedState
            N d L (x, y) := by
  classical
  unfold dSVDensityRationalHeterogeneousActualPhysicalState
  change
    (∑ q :
      DSVUniformDensityThresholdWholeHistoryLocalIndex N d L ×
        DSVUniformDensityThresholdWholeHistoryLocalIndex N d L,
      ((dSVDensityRationalHeterogeneousActualAliceUnitary
            N width schedule ξ :
          Matrix
            (DSVUniformDensityThresholdWholeHistoryLocalIndex
              N d L)
            (DSVUniformDensityThresholdWholeHistoryLocalIndex
              N d L) ℂ) ⊗ₖ
        (dSVDensityRationalHeterogeneousActualBobUnitary
            N width schedule ζ :
          Matrix
            (DSVUniformDensityThresholdWholeHistoryLocalIndex
              N d L)
            (DSVUniformDensityThresholdWholeHistoryLocalIndex
              N d L) ℂ)) (a, b) q *
        dSVUniformDensityThresholdWholeHistorySharedState
          N d L q) = _
  rw [Fintype.sum_prod_type]
  apply Finset.sum_congr rfl
  intro x _
  apply Finset.sum_congr rfl
  intro y _
  rfl

theorem dSVDensityRationalHeterogeneousActualPhysicalState_apply_zeroFlag
    (N : ℕ) {S d L : ℕ}
    (width : Fin S → ℝ) (schedule : Fin L → Fin S)
    (ξ ζ : BipartiteUnitVector d)
    (a b : DSVUniformDensityThresholdWholeHistoryLocalIndex
      N d L) :
    dSVDensityRationalHeterogeneousActualPhysicalState
        N width schedule ξ ζ (a, b) =
      ∑ x : DSVUniformDensityIndependentHistoryLocalIndex
          (L + 1) N d,
        ∑ y : DSVUniformDensityIndependentHistoryLocalIndex
            (L + 1) N d,
          (dSVDensityRationalHeterogeneousActualAliceUnitary
              N width schedule ξ :
            Matrix
              (DSVUniformDensityThresholdWholeHistoryLocalIndex
                N d L)
              (DSVUniformDensityThresholdWholeHistoryLocalIndex
                N d L) ℂ) a ⟨0, x⟩ *
          (dSVDensityRationalHeterogeneousActualBobUnitary
              N width schedule ζ :
            Matrix
              (DSVUniformDensityThresholdWholeHistoryLocalIndex
                N d L)
              (DSVUniformDensityThresholdWholeHistoryLocalIndex
                N d L) ℂ) b ⟨0, y⟩ *
          dSVUniformDensityIndependentSharedState
            (L + 1) N d (x, y) := by
  classical
  have split_zero (p q : Prop) [Decidable p] [Decidable q]
      (v : ℂ) :
      (if p ∧ q then v else 0) =
        if p then (if q then v else 0) else 0 := by
    split_ifs <;> simp_all
  rw [dSVDensityRationalHeterogeneousActualPhysicalState_apply]
  simp only [Fintype.sum_sigma]
  simp_rw [dSVUniformDensityCompletePureHistory_zeroFlag_apply,
    mul_ite, mul_zero]
  simp_rw [split_zero]
  simp

theorem dSVDensityRationalHeterogeneousActualSpectralStopping_apply
    {β : Type*} [Fintype β] [DecidableEq β]
    {L : ℕ} (accepted : Fin L → β → Prop)
    (U : Matrix.unitaryGroup β ℂ)
    (flag : Fin (L + 1))
    (history input : Fin (L + 1) → β) :
    ((dSVDensityRationalHeterogeneousActualFirstAcceptUnitary
        accepted *
      dSVDensityRationalFirstAcceptActualTensorBasis
        (L := L) U :
      Matrix.unitaryGroup (Σ _ : Fin (L + 1), Fin (L + 1) → β) ℂ) :
      Matrix (Σ _ : Fin (L + 1), Fin (L + 1) → β)
        (Σ _ : Fin (L + 1), Fin (L + 1) → β) ℂ)
        ⟨flag, history⟩ ⟨0, input⟩ =
      if flag =
        dSVDensityRationalHeterogeneousActualFirstAccepted
          accepted history
      then ∏ i : Fin (L + 1),
        (U : Matrix β β ℂ) (history i) (input i)
      else 0 := by
  classical
  let T := dSVDensityRationalFirstAcceptActualTensorBasis
    (L := L) U
  let W := dSVDensityRationalHeterogeneousActualFirstAcceptUnitary
    accepted
  let v : (Fin (L + 1) → β) → ℂ := fun h =>
    ∏ i : Fin (L + 1), (U : Matrix β β ℂ) (h i) (input i)
  have spectral_column :
      (fun q : (Σ _ : Fin (L + 1), Fin (L + 1) → β) =>
        (T : Matrix (Σ _ : Fin (L + 1), Fin (L + 1) → β)
          (Σ _ : Fin (L + 1), Fin (L + 1) → β) ℂ)
          q ⟨0, input⟩) =
      fun q => if q.1 = 0 then v q.2 else 0 := by
    funext q
    rcases q with ⟨stop, copies⟩
    change
      (controlledFiniteTensorLocalUnitary
          (fun (_ : Fin (L + 1)) (_ : Fin (L + 1)) => U) :
        Matrix (Σ _ : Fin (L + 1), Fin (L + 1) → β)
          (Σ _ : Fin (L + 1), Fin (L + 1) → β) ℂ)
          ⟨stop, copies⟩ ⟨0, input⟩ =
        if stop = 0 then v copies else 0
    rw [controlledFiniteTensorLocalUnitary_apply]
  change
    (W : Matrix (Σ _ : Fin (L + 1), Fin (L + 1) → β)
      (Σ _ : Fin (L + 1), Fin (L + 1) → β) ℂ).mulVec
      (fun q =>
        (T : Matrix (Σ _ : Fin (L + 1), Fin (L + 1) → β)
          (Σ _ : Fin (L + 1), Fin (L + 1) → β) ℂ)
          q ⟨0, input⟩)
      ⟨flag, history⟩ =
      if flag =
        dSVDensityRationalHeterogeneousActualFirstAccepted
          accepted history
      then v history else 0
  rw [spectral_column]
  exact
    dSVDensityRationalHeterogeneousActualFirstAcceptUnitary_zeroFlag
      accepted v flag history

theorem dSVDensityRationalHeterogeneousActualPhysicalLocalUnitary_apply
    {β : Type*} [Fintype β] [DecidableEq β]
    {L : ℕ} (accepted : Fin L → β → Prop)
    (U : Matrix.unitaryGroup β ℂ)
    (flag : Fin (L + 1))
    (output input : Fin (L + 1) → β) :
    (dSVDensityRationalHeterogeneousActualPhysicalLocalUnitary
        accepted U :
      Matrix (Σ _ : Fin (L + 1), Fin (L + 1) → β)
        (Σ _ : Fin (L + 1), Fin (L + 1) → β) ℂ)
      ⟨flag, output⟩ ⟨0, input⟩ =
      ∑ history : Fin (L + 1) → β,
        (∏ i : Fin (L + 1),
          star ((U : Matrix β β ℂ) (history i) (output i))) *
        (if flag =
          dSVDensityRationalHeterogeneousActualFirstAccepted
            accepted history
        then ∏ i : Fin (L + 1),
          (U : Matrix β β ℂ) (history i) (input i)
        else 0) := by
  classical
  have restoration (other : Fin (L + 1))
      (history : Fin (L + 1) → β) :
      (((dSVDensityRationalFirstAcceptActualTensorBasis
          (L := L) U)⁻¹ :
          Matrix.unitaryGroup
            (Σ _ : Fin (L + 1), Fin (L + 1) → β) ℂ) :
        Matrix (Σ _ : Fin (L + 1), Fin (L + 1) → β)
          (Σ _ : Fin (L + 1), Fin (L + 1) → β) ℂ)
        ⟨flag, output⟩ ⟨other, history⟩ =
        if flag = other then
          ∏ i : Fin (L + 1),
            star ((U : Matrix β β ℂ) (history i) (output i))
        else 0 := by
    exact dSVUniformDensityFirstAcceptControlledTensor_inv_apply
      (fun (_ : Fin (L + 1)) (_ : Fin (L + 1)) => U)
      flag other output history
  unfold dSVDensityRationalHeterogeneousActualPhysicalLocalUnitary
  rw [mul_assoc]
  change
    ((((dSVDensityRationalFirstAcceptActualTensorBasis
          (L := L) U)⁻¹ :
        Matrix.unitaryGroup
          (Σ _ : Fin (L + 1), Fin (L + 1) → β) ℂ) :
        Matrix (Σ _ : Fin (L + 1), Fin (L + 1) → β)
          (Σ _ : Fin (L + 1), Fin (L + 1) → β) ℂ) *
      ((dSVDensityRationalHeterogeneousActualFirstAcceptUnitary
          accepted *
        dSVDensityRationalFirstAcceptActualTensorBasis
          (L := L) U :
        Matrix.unitaryGroup
          (Σ _ : Fin (L + 1), Fin (L + 1) → β) ℂ) :
        Matrix (Σ _ : Fin (L + 1), Fin (L + 1) → β)
          (Σ _ : Fin (L + 1), Fin (L + 1) → β) ℂ))
        ⟨flag, output⟩ ⟨0, input⟩ = _
  rw [Matrix.mul_apply, Fintype.sum_sigma, Finset.sum_comm]
  simp_rw [restoration,
    dSVDensityRationalHeterogeneousActualSpectralStopping_apply]
  simp [ite_mul]

theorem
    dSVDensityRationalHeterogeneousActualPhysicalLocalUnitary_sourceProduct
    {β : Type*} [Fintype β] [DecidableEq β]
    {L : ℕ} (accepted : Fin L → β → Prop)
    (U : Matrix.unitaryGroup β ℂ)
    (flag : Fin (L + 1))
    (output input : Fin (L + 1) → β) :
    (dSVDensityRationalHeterogeneousActualPhysicalLocalUnitary
        accepted U :
      Matrix (Σ _ : Fin (L + 1), Fin (L + 1) → β)
        (Σ _ : Fin (L + 1), Fin (L + 1) → β) ℂ)
      ⟨flag, output⟩ ⟨0, input⟩ =
      ∏ i : Fin (L + 1),
        ∑ atom : β,
          star ((U : Matrix β β ℂ) atom (output i)) *
          (if dSVDensityRationalHeterogeneousActualCopyCondition
              accepted flag i atom
          then (U : Matrix β β ℂ) atom (input i)
          else 0) := by
  rw [dSVDensityRationalHeterogeneousActualPhysicalLocalUnitary_apply]
  exact
    dSVDensityRationalHeterogeneousActualFirstAccepted_sourceProduct
      accepted flag
      (fun i atom => star ((U : Matrix β β ℂ) atom (output i)))
      (fun i atom => (U : Matrix β β ℂ) atom (input i))

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
open scoped BigOperators Kronecker ComplexOrder MatrixOrder

attribute [local instance] Classical.propDecidable

theorem
    dSVDensityRationalFirstAcceptActualPredicateMask_eq_spectralMask
    {d : ℕ} (w : ℝ) (N : ℕ)
    (ξ : BipartiteUnitVector d) (outcome : Bool) :
    (Matrix.diagonal fun q :
        DSVUniformDensityThresholdLocalIndex N d =>
      if dSVDensityRationalProjectiveThresholdBin w N q.1
          ((dSVSoftBobLeftReducedDensity_posSemidef
            ξ).isHermitian.eigenvalues q.2) = outcome
      then (1 : ℂ) else 0) =
      dSVDensityRationalFirstAcceptLocalSpectralMask
        w N ξ outcome := by
  classical
  ext ⟨k, i⟩ ⟨l, j⟩
  by_cases flags : k = l
  · subst l
    by_cases atoms : i = j
    · subst j
      simp [dSVDensityRationalFirstAcceptLocalSpectralMask,
        Matrix.blockDiagonal'_apply]
    · simp [dSVDensityRationalFirstAcceptLocalSpectralMask,
        Matrix.blockDiagonal'_apply, atoms]
  · simp [dSVDensityRationalFirstAcceptLocalSpectralMask,
      Matrix.blockDiagonal'_apply, flags]

theorem dSVDensityRationalFirstAcceptActualOptionalOutcome_apply
    {d : ℕ} (w : ℝ) (N : ℕ)
    (ξ ζ : BipartiteUnitVector d)
    (a b : Option Bool)
    (alice bob : DSVUniformDensityThresholdLocalIndex N d) :
    dSVDensityRationalCompleteStoppedOptionalOutcome
        w N ξ ζ a b (alice, bob) =
      ∑ x : DSVUniformDensityThresholdLocalIndex N d,
        ∑ y : DSVUniformDensityThresholdLocalIndex N d,
          dSVDensityRationalCompleteStoppedOptionalLocalEffect
            w N ξ a alice x *
          (dSVDensityRationalCompleteStoppedOptionalLocalEffect
            w N ζ b).transpose bob y *
          dSVUniformDensityThresholdSharedState N d (x, y) := by
  classical
  unfold dSVDensityRationalCompleteStoppedOptionalOutcome
  change
    (∑ q :
      DSVUniformDensityThresholdLocalIndex N d ×
        DSVUniformDensityThresholdLocalIndex N d,
      (dSVDensityRationalCompleteStoppedOptionalLocalEffect
          w N ξ a ⊗ₖ
        (dSVDensityRationalCompleteStoppedOptionalLocalEffect
          w N ζ b).transpose) (alice, bob) q *
        dSVUniformDensityThresholdSharedState N d q) = _
  rw [Fintype.sum_prod_type]
  apply Finset.sum_congr rfl
  intro x _
  apply Finset.sum_congr rfl
  intro y _
  rfl

end

noncomputable section

open WithLp
open scoped BigOperators ComplexOrder Kronecker MatrixOrder

attribute [local instance] Classical.propDecidable

theorem
    dSVDensityRationalHeterogeneousActualPhysicalFlagBornCopyMatrix_eq_spectralMask
    {β : Type*} [Fintype β] [DecidableEq β] {L : ℕ}
    (accepted : Fin L → β → Prop) (U : Matrix.unitaryGroup β ℂ)
    (flag : Fin (L + 1)) (i : Fin (L + 1)) :
    dSVDensityRationalHeterogeneousActualPhysicalFlagBornCopyMatrix
        accepted U flag i =
      (((U⁻¹ : Matrix.unitaryGroup β ℂ) : Matrix β β ℂ) *
        (Matrix.diagonal fun atom : β =>
          if dSVDensityRationalHeterogeneousActualCopyCondition
              accepted flag i atom then (1 : ℂ) else 0) *
        (U : Matrix β β ℂ)) := by
  classical
  ext output input
  simp [dSVDensityRationalHeterogeneousActualPhysicalFlagBornCopyMatrix,
    Matrix.mul_apply, Matrix.diagonal_apply, mul_ite]

theorem
    dSVDensityRationalHeterogeneousActualPhysicalFlagBornCopyConditionMask
    {S d N L : ℕ} (width : Fin S → ℝ) (schedule : Fin L → Fin S)
    (ξ : BipartiteUnitVector d)
    (flag i : Fin (L + 1)) :
    (Matrix.diagonal fun q :
        DSVUniformDensityThresholdLocalIndex N d =>
      if dSVDensityRationalHeterogeneousActualCopyCondition
          (dSVDensityRationalHeterogeneousActualCopyAccepted
            width schedule ξ) flag i q
      then (1 : ℂ) else 0) =
      match
        dSVDensityRationalCompleteStoppedOptionalLocalSchedule
          L flag i with
      | none => 1
      | some outcome =>
        dSVDensityRationalFirstAcceptLocalSpectralMask
          (dSVDensityRationalHeterogeneousActualPhysicalFlagBornCopyWidth
            width schedule i) N ξ outcome := by
  classical
  by_cases active : i.val < L
  · induction flag using Fin.cases with
    | zero =>
        rw [dSVDensityRationalCompleteStoppedOptionalLocalSchedule_zero,
          if_pos active]
        simp only [dSVDensityRationalHeterogeneousActualPhysicalFlagBornCopyWidth,
          dif_pos active]
        rw [← dSVDensityRationalFirstAcceptActualPredicateMask_eq_spectralMask
          (width (schedule ⟨i.val, active⟩)) N ξ false]
        congr 1
        funext q
        cases h : dSVDensityRationalProjectiveThresholdBin
            (width (schedule ⟨i.val, active⟩)) N q.1
            ((dSVSoftBobLeftReducedDensity_posSemidef
              ξ).isHermitian.eigenvalues q.2) <;>
          simp [dSVDensityRationalHeterogeneousActualCopyCondition,
            dSVDensityRationalHeterogeneousActualCopyAccepted,
            dSVDensityRationalCompletePhysicalStoppingCopyAccepted,
            active, h]
    | succ j =>
        rcases lt_trichotomy i.val j.val with earlier | equal | later
        · rw [dSVDensityRationalCompleteStoppedOptionalLocalSchedule_before
            j i earlier]
          simp only [dSVDensityRationalHeterogeneousActualPhysicalFlagBornCopyWidth,
            dif_pos active]
          rw [← dSVDensityRationalFirstAcceptActualPredicateMask_eq_spectralMask
            (width (schedule ⟨i.val, active⟩)) N ξ false]
          congr 1
          funext q
          cases h : dSVDensityRationalProjectiveThresholdBin
              (width (schedule ⟨i.val, active⟩)) N q.1
              ((dSVSoftBobLeftReducedDensity_posSemidef
                ξ).isHermitian.eigenvalues q.2) <;>
            simp [dSVDensityRationalHeterogeneousActualCopyCondition,
              dSVDensityRationalHeterogeneousActualCopyAccepted,
              dSVDensityRationalCompletePhysicalStoppingCopyAccepted,
              active, earlier, Fin.succ_ne_zero, h]
        · have selected : i = j.castSucc := Fin.ext equal
          subst i
          rw [dSVDensityRationalCompleteStoppedOptionalLocalSchedule_hit]
          simp only [dSVDensityRationalHeterogeneousActualPhysicalFlagBornCopyWidth,
            dif_pos active]
          have selectedIndex : (⟨j.castSucc.val, active⟩ : Fin L) = j :=
            Fin.ext rfl
          rw [selectedIndex]
          rw [← dSVDensityRationalFirstAcceptActualPredicateMask_eq_spectralMask
            (width (schedule j)) N ξ true]
          congr 1
          funext q
          simp [dSVDensityRationalHeterogeneousActualCopyCondition,
            dSVDensityRationalHeterogeneousActualCopyAccepted,
            dSVDensityRationalCompletePhysicalStoppingCopyAccepted,
            j.isLt, Fin.succ_ne_zero]
        · rw [dSVDensityRationalCompleteStoppedOptionalLocalSchedule_after
            j i later]
          simp [dSVDensityRationalHeterogeneousActualCopyCondition,
            active, Fin.succ_ne_zero,
            show ¬ i.val < j.val by omega,
            show i.val ≠ j.val by omega]
  · simp [dSVDensityRationalHeterogeneousActualCopyCondition,
      dSVDensityRationalCompleteStoppedOptionalLocalSchedule, active]

theorem
    dSVDensityRationalHeterogeneousActualPhysicalFlagBornAliceCopy_eq_optionalEffect
    {S d N L : ℕ} (width : Fin S → ℝ) (schedule : Fin L → Fin S)
    (ξ : BipartiteUnitVector d)
    (flag i : Fin (L + 1)) :
    dSVDensityRationalHeterogeneousActualPhysicalFlagBornCopyMatrix
        (dSVDensityRationalHeterogeneousActualCopyAccepted
          width schedule ξ)
        (dSVUniformDensityAliceHistorySpectralCopy (N := N) ξ)
        flag i =
      dSVDensityRationalCompleteStoppedOptionalLocalEffect
        (dSVDensityRationalHeterogeneousActualPhysicalFlagBornCopyWidth
          width schedule i) N ξ
        (dSVDensityRationalCompleteStoppedOptionalLocalSchedule
          L flag i) := by
  rw [dSVDensityRationalHeterogeneousActualPhysicalFlagBornCopyMatrix_eq_spectralMask,
    dSVDensityRationalHeterogeneousActualPhysicalFlagBornCopyConditionMask]
  cases h : dSVDensityRationalCompleteStoppedOptionalLocalSchedule
      L flag i with
  | none => simp [dSVDensityRationalCompleteStoppedOptionalLocalEffect]
  | some outcome =>
      simpa [h, dSVDensityRationalCompleteStoppedOptionalLocalEffect]
        using
          (dSVDensityRationalFirstAcceptPhysicalEffect_eq_spectralMask
            (dSVDensityRationalHeterogeneousActualPhysicalFlagBornCopyWidth
              width schedule i) N ξ outcome).symm

theorem
    dSVDensityRationalHeterogeneousActualPhysicalFlagBornBobCopy_eq_optionalEffect
    {S d N L : ℕ} (width : Fin S → ℝ) (schedule : Fin L → Fin S)
    (ζ : BipartiteUnitVector d)
    (flag i : Fin (L + 1)) :
    dSVDensityRationalHeterogeneousActualPhysicalFlagBornCopyMatrix
        (dSVDensityRationalHeterogeneousActualCopyAccepted
          width schedule ζ)
        ((dSVUniformDensityBobHistoryCopyBasis (N := N) ζ)⁻¹)
        flag i =
      (dSVDensityRationalCompleteStoppedOptionalLocalEffect
        (dSVDensityRationalHeterogeneousActualPhysicalFlagBornCopyWidth
          width schedule i) N ζ
        (dSVDensityRationalCompleteStoppedOptionalLocalSchedule
          L flag i)).transpose := by
  rw [dSVDensityRationalHeterogeneousActualPhysicalFlagBornCopyMatrix_eq_spectralMask,
    dSVDensityRationalHeterogeneousActualPhysicalFlagBornCopyConditionMask]
  cases h : dSVDensityRationalCompleteStoppedOptionalLocalSchedule
      L flag i with
  | none => simp [dSVDensityRationalCompleteStoppedOptionalLocalEffect]
  | some outcome =>
      change
        _ = (transposePOVM
          (dSVDensityRationalCompleteProjectiveBinaryPOVM
            (dSVDensityRationalHeterogeneousActualPhysicalFlagBornCopyWidth
              width schedule i) N ζ)).operator outcome
      simpa only [inv_inv] using
        (dSVDensityRationalFirstAcceptPhysicalBobEffect_eq_spectralMask
          (dSVDensityRationalHeterogeneousActualPhysicalFlagBornCopyWidth
            width schedule i) N ζ outcome).symm

theorem
    dSVDensityRationalHeterogeneousActualPhysicalFlagBornAlice_sourceProduct
    {S d N L : ℕ} (width : Fin S → ℝ) (schedule : Fin L → Fin S)
    (ξ : BipartiteUnitVector d) (flag : Fin (L + 1))
    (output input : DSVUniformDensityIndependentHistoryLocalIndex
      (L + 1) N d) :
    (dSVDensityRationalHeterogeneousActualAliceUnitary
        N width schedule ξ :
      Matrix (DSVUniformDensityThresholdWholeHistoryLocalIndex N d L)
        (DSVUniformDensityThresholdWholeHistoryLocalIndex N d L) ℂ)
        ⟨flag, output⟩ ⟨0, input⟩ =
      ∏ i : Fin (L + 1),
        dSVDensityRationalCompleteStoppedOptionalLocalEffect
          (dSVDensityRationalHeterogeneousActualPhysicalFlagBornCopyWidth
            width schedule i) N ξ
          (dSVDensityRationalCompleteStoppedOptionalLocalSchedule
            L flag i) (output i) (input i) := by
  change
    (dSVDensityRationalHeterogeneousActualPhysicalLocalUnitary
      (dSVDensityRationalHeterogeneousActualCopyAccepted
        width schedule ξ)
      (dSVUniformDensityAliceHistorySpectralCopy (N := N) ξ) :
      Matrix (DSVUniformDensityThresholdWholeHistoryLocalIndex N d L)
        (DSVUniformDensityThresholdWholeHistoryLocalIndex N d L) ℂ)
      ⟨flag, output⟩ ⟨0, input⟩ = _
  rw [dSVDensityRationalHeterogeneousActualPhysicalLocalUnitary_sourceProduct]
  apply Finset.prod_congr rfl
  intro i _
  change
    dSVDensityRationalHeterogeneousActualPhysicalFlagBornCopyMatrix
      (dSVDensityRationalHeterogeneousActualCopyAccepted
        width schedule ξ)
      (dSVUniformDensityAliceHistorySpectralCopy (N := N) ξ)
      flag i (output i) (input i) = _
  exact congrArg (fun M => M (output i) (input i))
    (dSVDensityRationalHeterogeneousActualPhysicalFlagBornAliceCopy_eq_optionalEffect
      width schedule ξ flag i)

theorem
    dSVDensityRationalHeterogeneousActualPhysicalFlagBornBob_sourceProduct
    {S d N L : ℕ} (width : Fin S → ℝ) (schedule : Fin L → Fin S)
    (ζ : BipartiteUnitVector d) (flag : Fin (L + 1))
    (output input : DSVUniformDensityIndependentHistoryLocalIndex
      (L + 1) N d) :
    (dSVDensityRationalHeterogeneousActualBobUnitary
        N width schedule ζ :
      Matrix (DSVUniformDensityThresholdWholeHistoryLocalIndex N d L)
        (DSVUniformDensityThresholdWholeHistoryLocalIndex N d L) ℂ)
        ⟨flag, output⟩ ⟨0, input⟩ =
      ∏ i : Fin (L + 1),
        (dSVDensityRationalCompleteStoppedOptionalLocalEffect
          (dSVDensityRationalHeterogeneousActualPhysicalFlagBornCopyWidth
            width schedule i) N ζ
          (dSVDensityRationalCompleteStoppedOptionalLocalSchedule
            L flag i)).transpose (output i) (input i) := by
  change
    (dSVDensityRationalHeterogeneousActualPhysicalLocalUnitary
      (dSVDensityRationalHeterogeneousActualCopyAccepted
        width schedule ζ)
      ((dSVUniformDensityBobHistoryCopyBasis (N := N) ζ)⁻¹) :
      Matrix (DSVUniformDensityThresholdWholeHistoryLocalIndex N d L)
        (DSVUniformDensityThresholdWholeHistoryLocalIndex N d L) ℂ)
      ⟨flag, output⟩ ⟨0, input⟩ = _
  rw [dSVDensityRationalHeterogeneousActualPhysicalLocalUnitary_sourceProduct]
  apply Finset.prod_congr rfl
  intro i _
  change
    dSVDensityRationalHeterogeneousActualPhysicalFlagBornCopyMatrix
      (dSVDensityRationalHeterogeneousActualCopyAccepted
        width schedule ζ)
      ((dSVUniformDensityBobHistoryCopyBasis (N := N) ζ)⁻¹)
      flag i (output i) (input i) = _
  exact congrArg (fun M => M (output i) (input i))
    (dSVDensityRationalHeterogeneousActualPhysicalFlagBornBobCopy_eq_optionalEffect
      width schedule ζ flag i)

end

end QuantumParallelRepetition


open QuantumParallelRepetition
open scoped ComplexOrder Matrix BigOperators InnerProductSpace
open Complex Matrix Finset
open WithLp
open scoped BigOperators ComplexOrder Kronecker MatrixOrder
attribute [local instance] Classical.propDecidable

theorem
    solution
    {S d N L : ℕ} (width : Fin S → ℝ) (schedule : Fin L → Fin S)
    (ξ ζ : BipartiteUnitVector d)
    (flagAlice flagBob : Fin (L + 1))
    (alice bob : DSVUniformDensityIndependentHistoryLocalIndex
      (L + 1) N d) :
    dSVDensityRationalHeterogeneousActualPhysicalState
        N width schedule ξ ζ
        (⟨flagAlice, alice⟩, ⟨flagBob, bob⟩) =
      ∏ i : Fin (L + 1),
        dSVDensityRationalCompleteStoppedOptionalOutcome
          (dSVDensityRationalHeterogeneousActualPhysicalFlagBornCopyWidth
            width schedule i) N ξ ζ
          (dSVDensityRationalCompleteStoppedOptionalLocalSchedule
            L flagAlice i)
          (dSVDensityRationalCompleteStoppedOptionalLocalSchedule
            L flagBob i) (alice i, bob i) := by
  rw [dSVDensityRationalHeterogeneousActualPhysicalState_apply_zeroFlag]
  simp_rw [dSVUniformDensityIndependentSharedState_apply,
    dSVDensityRationalHeterogeneousActualPhysicalFlagBornAlice_sourceProduct,
    dSVDensityRationalHeterogeneousActualPhysicalFlagBornBob_sourceProduct]
  calc
    _ = ∏ i : Fin (L + 1),
          ∑ x : DSVUniformDensityThresholdLocalIndex N d,
            ∑ y : DSVUniformDensityThresholdLocalIndex N d,
              dSVDensityRationalCompleteStoppedOptionalLocalEffect
                  (dSVDensityRationalHeterogeneousActualPhysicalFlagBornCopyWidth
                    width schedule i) N ξ
                  (dSVDensityRationalCompleteStoppedOptionalLocalSchedule
                    L flagAlice i) (alice i) x *
                (dSVDensityRationalCompleteStoppedOptionalLocalEffect
                  (dSVDensityRationalHeterogeneousActualPhysicalFlagBornCopyWidth
                    width schedule i) N ζ
                  (dSVDensityRationalCompleteStoppedOptionalLocalSchedule
                    L flagBob i)).transpose (bob i) y *
                dSVUniformDensityThresholdSharedState N d (x, y) :=
      dSVUniformDensityPhysicalMatched_doubleTensorSourceFactor
        (fun i =>
          dSVDensityRationalCompleteStoppedOptionalLocalEffect
            (dSVDensityRationalHeterogeneousActualPhysicalFlagBornCopyWidth
              width schedule i) N ξ
            (dSVDensityRationalCompleteStoppedOptionalLocalSchedule
              L flagAlice i))
        (fun i =>
          (dSVDensityRationalCompleteStoppedOptionalLocalEffect
            (dSVDensityRationalHeterogeneousActualPhysicalFlagBornCopyWidth
              width schedule i) N ζ
            (dSVDensityRationalCompleteStoppedOptionalLocalSchedule
              L flagBob i)).transpose)
        (dSVUniformDensityThresholdSharedState N d)
        alice bob
    _ = _ := by
      apply Finset.prod_congr rfl
      intro i _
      exact
        (dSVDensityRationalFirstAcceptActualOptionalOutcome_apply
          (dSVDensityRationalHeterogeneousActualPhysicalFlagBornCopyWidth
            width schedule i) N ξ ζ
          (dSVDensityRationalCompleteStoppedOptionalLocalSchedule
            L flagAlice i)
          (dSVDensityRationalCompleteStoppedOptionalLocalSchedule
            L flagBob i) (alice i) (bob i)).symm
