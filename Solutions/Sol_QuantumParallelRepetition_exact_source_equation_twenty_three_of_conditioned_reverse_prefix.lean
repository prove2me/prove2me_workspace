import Definitions.Def_quantum_parallel_repetition_game
import Definitions.Def_qpr_core_21
import Theorems.Thm_QuantumParallelRepetition_Strategy_outcomeProbability_nonneg
import Theorems.Thm_QuantumParallelRepetition_Strategy_outcomeProbability_normalized
import Theorems.Thm_QuantumParallelRepetition_exactSeedWeight_nonneg
import Theorems.Thm_QuantumParallelRepetition_exactSeedWeight_sum
import Theorems.Thm_QuantumParallelRepetition_exactRemainingCoordinate_card_pos
import Theorems.Thm_QuantumParallelRepetition_reweightedSeed_source_equation_twenty_six
import Theorems.Thm_QuantumParallelRepetition_exactAliceSourceMarginalInformation_le
import Theorems.Thm_QuantumParallelRepetition_exactBobSourceMarginalInformation_le
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

open scoped BigOperators ComplexOrder Kronecker MatrixOrder
open Matrix

variable {X Y A B : Type*}

namespace Game

variable [Fintype X] [Fintype Y] [Fintype A] [Fintype B]

@[simp] theorem repeat_questionWeight (G : Game X Y A B) (n : ℕ)
    (xs : Fin n → X) (ys : Fin n → Y) :
    (G.repeat n).questionWeight xs ys =
      ∏ i : Fin n, G.questionWeight (xs i) (ys i) := rfl

end Game

end

open scoped ComplexOrder Matrix BigOperators InnerProductSpace
open Complex Matrix Finset

noncomputable section

open scoped BigOperators

namespace Pinsker

theorem finiteRelativeEntropy_eq_log_sum_of_absolute_continuity
    {ι : Type*} [Fintype ι]
    (p q : ι → ℝ)
    (hq : ∀ i, 0 ≤ q i)
    (absolute_continuity : ∀ i, q i = 0 → p i = 0)
    (hp_normalized : (∑ i, p i) = 1)
    (hq_normalized : (∑ i, q i) = 1) :
    finiteRelativeEntropy p q =
      ∑ i, p i * Real.log (p i / q i) := by
  unfold finiteRelativeEntropy
  calc
    (∑ i, q i * InformationTheory.klFun (p i / q i)) =
        ∑ i, (p i * Real.log (p i / q i) + q i - p i) := by
      apply Finset.sum_congr rfl
      intro i _
      by_cases hqi : q i = 0
      · simp [hqi, absolute_continuity i hqi]
      · unfold InformationTheory.klFun
        have hqpos : 0 < q i := lt_of_le_of_ne (hq i) (Ne.symm hqi)
        field_simp [hqpos.ne']
    _ = ∑ i, p i * Real.log (p i / q i) := by
      rw [Finset.sum_sub_distrib, Finset.sum_add_distrib,
        hp_normalized, hq_normalized]
      ring

end Pinsker

namespace ClassicalInformation

open QuantumParallelRepetition.Pinsker
open QuantumParallelRepetition.ClassicalSampling

variable {ι : Type*} [Fintype ι] [DecidableEq ι]

section JointChainRule

variable {κ : Type*} [Fintype κ]

theorem jointFirstMarginal_nonneg
    (joint : ι × κ → ℝ)
    (nonnegative : ∀ point, 0 ≤ joint point) (i : ι) :
    0 ≤ jointFirstMarginal joint i := by
  exact Finset.sum_nonneg (fun j _ => nonnegative (i, j))

theorem jointFirstMarginal_sum (joint : ι × κ → ℝ) :
    (∑ i : ι, jointFirstMarginal joint i) =
      ∑ point : ι × κ, joint point := by
  exact (Fintype.sum_prod_type joint).symm

theorem jointFirstMarginal_absolute_continuity
    (p q : ι × κ → ℝ)
    (hq : ∀ point, 0 ≤ q point)
    (absolute_continuity : ∀ point, q point = 0 → p point = 0)
    (i : ι) :
    jointFirstMarginal q i = 0 → jointFirstMarginal p i = 0 := by
  intro hzero
  change (∑ j : κ, q (i, j)) = 0 at hzero
  have hcoordinates : ∀ j : κ, q (i, j) = 0 := by
    intro j
    exact (Finset.sum_eq_zero_iff_of_nonneg
      (fun j _ => hq (i, j))).mp hzero j (Finset.mem_univ j)
  change (∑ j : κ, p (i, j)) = 0
  exact Finset.sum_eq_zero
    (fun j _ => absolute_continuity (i, j) (hcoordinates j))

theorem jointConditional_sum
    (joint : ι × κ → ℝ) (i : ι)
    (nonzero : jointFirstMarginal joint i ≠ 0) :
    (∑ j : κ, jointConditional joint i j) = 1 := by
  unfold jointConditional
  rw [← Finset.sum_div]
  exact div_self nonzero

theorem finite_relative_entropy_joint_chain_rule
    (p q : ι × κ → ℝ)
    (hp : ∀ point, 0 ≤ p point)
    (hq : ∀ point, 0 ≤ q point)
    (absolute_continuity : ∀ point, q point = 0 → p point = 0)
    (hp_normalized : (∑ point, p point) = 1)
    (hq_normalized : (∑ point, q point) = 1) :
    finiteRelativeEntropy p q =
      finiteRelativeEntropy (jointFirstMarginal p)
        (jointFirstMarginal q) +
      ∑ i : ι, jointFirstMarginal p i *
        finiteRelativeEntropy (jointConditional p i)
          (jointConditional q i) := by
  have hp_marginal : (∑ i : ι, jointFirstMarginal p i) = 1 :=
    (jointFirstMarginal_sum p).trans hp_normalized
  have hq_marginal : (∑ i : ι, jointFirstMarginal q i) = 1 :=
    (jointFirstMarginal_sum q).trans hq_normalized
  have h_marginal_absolute :
      ∀ i : ι, jointFirstMarginal q i = 0 →
        jointFirstMarginal p i = 0 :=
    jointFirstMarginal_absolute_continuity p q hq absolute_continuity
  have h_joint_log :
      finiteRelativeEntropy p q =
        ∑ point : ι × κ,
          p point * Real.log (p point / q point) :=
    finiteRelativeEntropy_eq_log_sum_of_absolute_continuity
      p q hq absolute_continuity hp_normalized hq_normalized
  have h_marginal_log :
      finiteRelativeEntropy (jointFirstMarginal p)
        (jointFirstMarginal q) =
        ∑ i : ι, jointFirstMarginal p i *
          Real.log (jointFirstMarginal p i /
            jointFirstMarginal q i) :=
    finiteRelativeEntropy_eq_log_sum_of_absolute_continuity
      (jointFirstMarginal p) (jointFirstMarginal q)
      (jointFirstMarginal_nonneg q hq)
      h_marginal_absolute hp_marginal hq_marginal
  calc
    finiteRelativeEntropy p q =
      ∑ point : ι × κ,
        p point * Real.log (p point / q point) := h_joint_log
    _ = ∑ i : ι, ∑ j : κ,
        p (i, j) * Real.log (p (i, j) / q (i, j)) :=
          Fintype.sum_prod_type _
    _ = ∑ i : ι,
        (jointFirstMarginal p i *
          Real.log (jointFirstMarginal p i /
            jointFirstMarginal q i) +
          jointFirstMarginal p i *
            finiteRelativeEntropy (jointConditional p i)
              (jointConditional q i)) := by
      apply Finset.sum_congr rfl
      intro i _
      by_cases hpzero : jointFirstMarginal p i = 0
      · have hcoordinates : ∀ j : κ, p (i, j) = 0 := by
          intro j
          apply (Finset.sum_eq_zero_iff_of_nonneg
            (fun j _ => hp (i, j))).mp
              (show (∑ j : κ, p (i, j)) = 0 from hpzero)
              j (Finset.mem_univ j)
        simp [hpzero, hcoordinates]
      · have hqzero : jointFirstMarginal q i ≠ 0 := by
          intro hzero
          exact hpzero (h_marginal_absolute i hzero)
        have hconditional_absolute :
            ∀ j : κ, jointConditional q i j = 0 →
              jointConditional p i j = 0 := by
          intro j hzero
          change q (i, j) / jointFirstMarginal q i = 0 at hzero
          have hpoint : q (i, j) = 0 := by
            rcases (div_eq_zero_iff.mp hzero) with hpoint | hmarginal
            · exact hpoint
            · exact (hqzero hmarginal).elim
          simp [jointConditional, absolute_continuity (i, j) hpoint]
        have hconditional_log :
            finiteRelativeEntropy (jointConditional p i)
              (jointConditional q i) =
              ∑ j : κ,
                jointConditional p i j *
                  Real.log (jointConditional p i j /
                    jointConditional q i j) := by
          apply finiteRelativeEntropy_eq_log_sum_of_absolute_continuity
          · intro j
            exact div_nonneg (hq (i, j))
              (jointFirstMarginal_nonneg q hq i)
          · exact hconditional_absolute
          · exact jointConditional_sum p i hpzero
          · exact jointConditional_sum q i hqzero
        rw [hconditional_log]
        calc
          (∑ j : κ,
            p (i, j) * Real.log (p (i, j) / q (i, j))) =
            ∑ j : κ,
              (p (i, j) *
                Real.log (jointFirstMarginal p i /
                  jointFirstMarginal q i) +
                jointFirstMarginal p i *
                  (jointConditional p i j *
                    Real.log (jointConditional p i j /
                      jointConditional q i j))) := by
              apply Finset.sum_congr rfl
              intro j _
              by_cases hpj : p (i, j) = 0
              · simp [hpj, jointConditional]
              · have hqj : q (i, j) ≠ 0 := by
                  intro hzero
                  exact hpj (absolute_continuity (i, j) hzero)
                have hfactorization :
                    p (i, j) / q (i, j) =
                      (jointFirstMarginal p i /
                        jointFirstMarginal q i) *
                        (jointConditional p i j /
                          jointConditional q i j) := by
                  unfold jointConditional
                  field_simp [hpzero, hqzero, hqj]
                have hfirst :
                    jointFirstMarginal p i /
                      jointFirstMarginal q i ≠ 0 :=
                  div_ne_zero hpzero hqzero
                have hsecond :
                    jointConditional p i j /
                      jointConditional q i j ≠ 0 := by
                  unfold jointConditional
                  exact div_ne_zero
                    (div_ne_zero hpj hpzero)
                    (div_ne_zero hqj hqzero)
                rw [hfactorization, Real.log_mul hfirst hsecond]
                unfold jointConditional
                field_simp [hpzero]
          _ = jointFirstMarginal p i *
              Real.log (jointFirstMarginal p i /
                jointFirstMarginal q i) +
              jointFirstMarginal p i *
                (∑ j : κ,
                  jointConditional p i j *
                    Real.log (jointConditional p i j /
                      jointConditional q i j)) := by
                rw [Finset.sum_add_distrib, ← Finset.sum_mul,
                  ← Finset.mul_sum]
                rfl
    _ = (∑ i : ι,
          jointFirstMarginal p i *
            Real.log (jointFirstMarginal p i /
              jointFirstMarginal q i)) +
        ∑ i : ι, jointFirstMarginal p i *
          finiteRelativeEntropy (jointConditional p i)
            (jointConditional q i) := by
      rw [Finset.sum_add_distrib]
    _ = finiteRelativeEntropy (jointFirstMarginal p)
          (jointFirstMarginal q) +
        ∑ i : ι, jointFirstMarginal p i *
          finiteRelativeEntropy (jointConditional p i)
            (jointConditional q i) := by
      rw [h_marginal_log]

end JointChainRule

end ClassicalInformation

end

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

theorem reversePartition_relativeEntropy_budget
    {M : Type*} [Fintype M] [DecidableEq M]
    (nonempty : 0 < Fintype.card M)
    (increment : (s : Finset M) → Fin s.card → ℝ)
    {cost : ℝ} (hcost : 0 ≤ cost)
    (hbudget : ∀ s : Finset M,
      (∑ k : Fin s.card, increment s k) ≤ cost) :
    (∑ s : Finset M,
      reversePartitionWeight s *
        ((∑ k : Fin s.card, increment s k) /
          (s.card : ℝ))) ≤
      2 * cost / (Fintype.card M : ℝ) := by
  have hcard : 0 < (Fintype.card M : ℝ) := by
    exact_mod_cast nonempty
  calc
    (∑ s : Finset M,
      reversePartitionWeight s *
        ((∑ k : Fin s.card, increment s k) /
          (s.card : ℝ))) ≤
      ∑ s : Finset M,
        fairPartitionWeight M *
          (2 * cost / (Fintype.card M : ℝ)) := by
      apply Finset.sum_le_sum
      intro s _
      by_cases hs : s.card = 0
      · have hempty : s = ∅ := Finset.card_eq_zero.mp hs
        subst s
        simp only [reversePartitionWeight_empty, zero_mul]
        exact mul_nonneg (fairPartitionWeight_nonneg (α := M))
          (div_nonneg (mul_nonneg (by norm_num) hcost) hcard.le)
      · have hsreal : (s.card : ℝ) ≠ 0 := by exact_mod_cast hs
        calc
          reversePartitionWeight s *
              ((∑ k : Fin s.card, increment s k) /
                (s.card : ℝ)) =
            (fairPartitionWeight M *
              (2 / (Fintype.card M : ℝ))) *
                (∑ k : Fin s.card, increment s k) := by
              unfold reversePartitionWeight
              field_simp [hsreal, hcard.ne']
          _ ≤ (fairPartitionWeight M *
              (2 / (Fintype.card M : ℝ))) * cost := by
            apply mul_le_mul_of_nonneg_left (hbudget s)
            exact mul_nonneg (fairPartitionWeight_nonneg (α := M))
              (div_nonneg (by norm_num) hcard.le)
          _ = fairPartitionWeight M *
              (2 * cost / (Fintype.card M : ℝ)) := by ring
    _ = 2 * cost / (Fintype.card M : ℝ) := by
      rw [← Finset.sum_mul, fairPartitionWeight_sum (α := M)]
      ring

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

theorem exactLocallySampleableLaw_eq_zero_of_question_zero
    (G : Game X Y A B) (n : ℕ) (S : Strategy (G.repeat n))
    (D : Finset (Fin n))
    (i : SourceRemainingCoordinate D) (x : X) (y : Y)
    (r : ExactHistoryFlag X Y A B D)
    (zero : G.questionWeight x y = 0) :
    exactLocallySampleableLaw G n S D (i, x, y, r) = 0 := by
  classical
  unfold exactLocallySampleableLaw
    exactSourcePushforward groupedMass
  apply Finset.sum_eq_zero
  intro q hq
  have hcode :
      exactLocallySampleableCode D q = (i, x, y, r) := by
    exact ((@Finset.mem_filter
      (ExactJointOutcome X Y A B D)
      (fun a => exactLocallySampleableCode D a = (i, x, y, r))
      (fun _ => Classical.propDecidable _)
      Finset.univ q).mp hq).2
  have hx : q.2.1 q.1.coordinate.val = x :=
    congrArg
      (fun t : ExactLocallySampleableTuple X Y A B D =>
        t.2.1) hcode
  have hy : q.2.2.1 q.1.coordinate.val = y :=
    congrArg
      (fun t : ExactLocallySampleableTuple X Y A B D =>
        t.2.2.1) hcode
  have hproduct :
      (G.repeat n).questionWeight q.2.1 q.2.2.1 = 0 := by
    rw [Game.repeat_questionWeight]
    apply Finset.prod_eq_zero
      (Finset.mem_univ q.1.coordinate.val)
    simpa [hx, hy] using zero
  have hprod :
      (∏ j : Fin n,
        G.questionWeight (q.2.1 j) (q.2.2.1 j)) = 0 := by
    simpa only [Game.repeat_questionWeight] using hproduct
  simp [exactPostselectedJointLaw,
    repeatedConditionedOutcomeLaw,
    conditionedEventDistribution,
    strategyEventLaw, hprod]

theorem exactAliceLocalMass_nonneg
    {n : ℕ} (D : Finset (Fin n))
    (Q : ExactLocallySampleableTuple X Y A B D → ℝ)
    (nonnegative : ∀ t, 0 ≤ Q t)
    (i : SourceRemainingCoordinate D) (x : X) :
    0 ≤ exactAliceLocalMass D Q i x := by
  unfold exactAliceLocalMass
  exact Finset.sum_nonneg
    (fun r _ => Finset.sum_nonneg (fun y _ => nonnegative (i, x, y, r)))

theorem exactBobLocalMass_nonneg
    {n : ℕ} (D : Finset (Fin n))
    (Q : ExactLocallySampleableTuple X Y A B D → ℝ)
    (nonnegative : ∀ t, 0 ≤ Q t)
    (i : SourceRemainingCoordinate D) (y : Y) :
    0 ≤ exactBobLocalMass D Q i y := by
  unfold exactBobLocalMass
  exact Finset.sum_nonneg
    (fun r _ => Finset.sum_nonneg (fun x _ => nonnegative (i, x, y, r)))

theorem exactAliceLocalConditional_nonneg
    {n : ℕ} (D : Finset (Fin n))
    (base : ExactHistoryFlag X Y A B D)
    (Q : ExactLocallySampleableTuple X Y A B D → ℝ)
    (nonnegative : ∀ t, 0 ≤ Q t)
    (i : SourceRemainingCoordinate D) (x : X)
    (r : ExactHistoryFlag X Y A B D) :
    0 ≤ exactAliceLocalConditional D base Q i x r := by
  unfold exactAliceLocalConditional
  split_ifs with hmass hbase
  · exact zero_le_one
  · exact le_rfl
  · exact div_nonneg
      (Finset.sum_nonneg (fun y _ => nonnegative (i, x, y, r)))
      (exactAliceLocalMass_nonneg D Q nonnegative i x)

theorem exactBobLocalConditional_nonneg
    {n : ℕ} (D : Finset (Fin n))
    (base : ExactHistoryFlag X Y A B D)
    (Q : ExactLocallySampleableTuple X Y A B D → ℝ)
    (nonnegative : ∀ t, 0 ≤ Q t)
    (i : SourceRemainingCoordinate D) (y : Y)
    (r : ExactHistoryFlag X Y A B D) :
    0 ≤ exactBobLocalConditional D base Q i y r := by
  unfold exactBobLocalConditional
  split_ifs with hmass hbase
  · exact zero_le_one
  · exact le_rfl
  · exact div_nonneg
      (Finset.sum_nonneg (fun x _ => nonnegative (i, x, y, r)))
      (exactBobLocalMass_nonneg D Q nonnegative i y)

theorem exactAliceLocalMass_zero_apply
    {n : ℕ} (D : Finset (Fin n))
    (Q : ExactLocallySampleableTuple X Y A B D → ℝ)
    (nonnegative : ∀ t, 0 ≤ Q t)
    (i : SourceRemainingCoordinate D) (x : X)
    (y : Y) (r : ExactHistoryFlag X Y A B D)
    (zero : exactAliceLocalMass D Q i x = 0) :
    Q (i, x, y, r) = 0 := by
  change
    (∑ r : ExactHistoryFlag X Y A B D,
      ∑ y : Y, Q (i, x, y, r)) = 0 at zero
  have hr : (∑ y : Y, Q (i, x, y, r)) = 0 :=
    (Finset.sum_eq_zero_iff_of_nonneg
      (fun r _ => Finset.sum_nonneg
        (fun y _ => nonnegative (i, x, y, r)))).mp
          zero r (Finset.mem_univ r)
  exact (Finset.sum_eq_zero_iff_of_nonneg
    (fun y _ => nonnegative (i, x, y, r))).mp
      hr y (Finset.mem_univ y)

theorem exactBobLocalMass_zero_apply
    {n : ℕ} (D : Finset (Fin n))
    (Q : ExactLocallySampleableTuple X Y A B D → ℝ)
    (nonnegative : ∀ t, 0 ≤ Q t)
    (i : SourceRemainingCoordinate D) (x : X)
    (y : Y) (r : ExactHistoryFlag X Y A B D)
    (zero : exactBobLocalMass D Q i y = 0) :
    Q (i, x, y, r) = 0 := by
  change
    (∑ r : ExactHistoryFlag X Y A B D,
      ∑ x : X, Q (i, x, y, r)) = 0 at zero
  have hr : (∑ x : X, Q (i, x, y, r)) = 0 :=
    (Finset.sum_eq_zero_iff_of_nonneg
      (fun r _ => Finset.sum_nonneg
        (fun x _ => nonnegative (i, x, y, r)))).mp
          zero r (Finset.mem_univ r)
  exact (Finset.sum_eq_zero_iff_of_nonneg
    (fun x _ => nonnegative (i, x, y, r))).mp
      hr x (Finset.mem_univ x)

theorem exactAliceLocalConditional_zero_apply
    {n : ℕ} (D : Finset (Fin n))
    (base : ExactHistoryFlag X Y A B D)
    (Q : ExactLocallySampleableTuple X Y A B D → ℝ)
    (nonnegative : ∀ t, 0 ≤ Q t)
    (i : SourceRemainingCoordinate D) (x : X)
    (y : Y) (r : ExactHistoryFlag X Y A B D)
    (zero : exactAliceLocalConditional D base Q i x r = 0) :
    Q (i, x, y, r) = 0 := by
  by_cases hmass : exactAliceLocalMass D Q i x = 0
  · exact exactAliceLocalMass_zero_apply
      D Q nonnegative i x y r hmass
  · unfold exactAliceLocalConditional at zero
    rw [if_neg hmass] at zero
    have hfiber : (∑ y : Y, Q (i, x, y, r)) = 0 :=
      (div_eq_zero_iff.mp zero).resolve_right hmass
    exact (Finset.sum_eq_zero_iff_of_nonneg
      (fun y _ => nonnegative (i, x, y, r))).mp
        hfiber y (Finset.mem_univ y)

theorem exactBobLocalConditional_zero_apply
    {n : ℕ} (D : Finset (Fin n))
    (base : ExactHistoryFlag X Y A B D)
    (Q : ExactLocallySampleableTuple X Y A B D → ℝ)
    (nonnegative : ∀ t, 0 ≤ Q t)
    (i : SourceRemainingCoordinate D) (x : X)
    (y : Y) (r : ExactHistoryFlag X Y A B D)
    (zero : exactBobLocalConditional D base Q i y r = 0) :
    Q (i, x, y, r) = 0 := by
  by_cases hmass : exactBobLocalMass D Q i y = 0
  · exact exactBobLocalMass_zero_apply
      D Q nonnegative i x y r hmass
  · unfold exactBobLocalConditional at zero
    rw [if_neg hmass] at zero
    have hfiber : (∑ x : X, Q (i, x, y, r)) = 0 :=
      (div_eq_zero_iff.mp zero).resolve_right hmass
    exact (Finset.sum_eq_zero_iff_of_nonneg
      (fun x _ => nonnegative (i, x, y, r))).mp
        hfiber x (Finset.mem_univ x)

theorem exactAliceLocalConditional_sum
    {n : ℕ} (D : Finset (Fin n))
    (base : ExactHistoryFlag X Y A B D)
    (Q : ExactLocallySampleableTuple X Y A B D → ℝ)
    (i : SourceRemainingCoordinate D) (x : X) :
    (∑ r : ExactHistoryFlag X Y A B D,
      exactAliceLocalConditional D base Q i x r) = 1 := by
  unfold exactAliceLocalConditional
  split_ifs with hmass
  · simp
  · rw [← Finset.sum_div]
    exact div_self hmass

theorem exactBobLocalConditional_sum
    {n : ℕ} (D : Finset (Fin n))
    (base : ExactHistoryFlag X Y A B D)
    (Q : ExactLocallySampleableTuple X Y A B D → ℝ)
    (i : SourceRemainingCoordinate D) (y : Y) :
    (∑ r : ExactHistoryFlag X Y A B D,
      exactBobLocalConditional D base Q i y r) = 1 := by
  unfold exactBobLocalConditional
  split_ifs with hmass
  · simp
  · rw [← Finset.sum_div]
    exact div_self hmass

theorem exactLocallySampleableJA_nonneg
    (G : Game X Y A B) (n : ℕ) (S : Strategy (G.repeat n))
    (D : Finset (Fin n))
    (positive : 0 < repeatedPostselectionMass G n S D)
    (base : ExactHistoryFlag X Y A B D)
    (t : ExactLocallySampleableTuple X Y A B D) :
    0 ≤ exactLocallySampleableJA G n S D base t := by
  unfold exactLocallySampleableJA
  exact div_nonneg
    (mul_nonneg (G.weight_nonneg t.2.1 t.2.2.1)
      (exactAliceLocalConditional_nonneg D base
        (exactLocallySampleableLaw G n S D)
        (exactLocallySampleableLaw_nonneg G n S D positive)
        t.1 t.2.1 t.2.2.2))
    (Nat.cast_nonneg _)

theorem exactLocallySampleableJB_nonneg
    (G : Game X Y A B) (n : ℕ) (S : Strategy (G.repeat n))
    (D : Finset (Fin n))
    (positive : 0 < repeatedPostselectionMass G n S D)
    (base : ExactHistoryFlag X Y A B D)
    (t : ExactLocallySampleableTuple X Y A B D) :
    0 ≤ exactLocallySampleableJB G n S D base t := by
  unfold exactLocallySampleableJB
  exact div_nonneg
    (mul_nonneg (G.weight_nonneg t.2.1 t.2.2.1)
      (exactBobLocalConditional_nonneg D base
        (exactLocallySampleableLaw G n S D)
        (exactLocallySampleableLaw_nonneg G n S D positive)
        t.1 t.2.2.1 t.2.2.2))
    (Nat.cast_nonneg _)

theorem exactLocallySampleableJA_sum
    (G : Game X Y A B) (n : ℕ) (S : Strategy (G.repeat n))
    (D : Finset (Fin n))
    (remaining : 0 < (Finset.univ \ D).card)
    (base : ExactHistoryFlag X Y A B D) :
    (∑ t : ExactLocallySampleableTuple X Y A B D,
      exactLocallySampleableJA G n S D base t) = 1 := by
  have hcard :
      (Fintype.card (SourceRemainingCoordinate D) : ℝ) ≠ 0 := by
    exact_mod_cast
      (Nat.ne_of_gt (exactRemainingCoordinate_card_pos D remaining))
  calc
    (∑ t : ExactLocallySampleableTuple X Y A B D,
      exactLocallySampleableJA G n S D base t) =
      (∑ i : SourceRemainingCoordinate D,
        ∑ x : X, ∑ y : Y,
          G.questionWeight x y *
            (∑ r : ExactHistoryFlag X Y A B D,
              exactAliceLocalConditional D base
                (exactLocallySampleableLaw G n S D) i x r)) /
        (Fintype.card (SourceRemainingCoordinate D) : ℝ) := by
      simp only [exactLocallySampleableJA,
        Fintype.sum_prod_type]
      simp_rw [← Finset.sum_div]
      congr 1
      apply Finset.sum_congr rfl
      intro i _
      apply Finset.sum_congr rfl
      intro x _
      apply Finset.sum_congr rfl
      intro y _
      rw [Finset.mul_sum]
    _ = (∑ i : SourceRemainingCoordinate D,
        ∑ x : X, ∑ y : Y, G.questionWeight x y) /
        (Fintype.card (SourceRemainingCoordinate D) : ℝ) := by
      simp_rw [exactAliceLocalConditional_sum, mul_one]
    _ = 1 := by
      simp_rw [G.weight_normalized]
      simp only [Finset.sum_const, Finset.card_univ,
        nsmul_eq_mul, mul_one]
      exact div_self hcard

theorem exactLocallySampleableJB_sum
    (G : Game X Y A B) (n : ℕ) (S : Strategy (G.repeat n))
    (D : Finset (Fin n))
    (remaining : 0 < (Finset.univ \ D).card)
    (base : ExactHistoryFlag X Y A B D) :
    (∑ t : ExactLocallySampleableTuple X Y A B D,
      exactLocallySampleableJB G n S D base t) = 1 := by
  have hcard :
      (Fintype.card (SourceRemainingCoordinate D) : ℝ) ≠ 0 := by
    exact_mod_cast
      (Nat.ne_of_gt (exactRemainingCoordinate_card_pos D remaining))
  calc
    (∑ t : ExactLocallySampleableTuple X Y A B D,
      exactLocallySampleableJB G n S D base t) =
      (∑ i : SourceRemainingCoordinate D,
        ∑ x : X, ∑ y : Y,
          G.questionWeight x y *
            (∑ r : ExactHistoryFlag X Y A B D,
              exactBobLocalConditional D base
                (exactLocallySampleableLaw G n S D) i y r)) /
        (Fintype.card (SourceRemainingCoordinate D) : ℝ) := by
      simp only [exactLocallySampleableJB,
        Fintype.sum_prod_type]
      simp_rw [← Finset.sum_div]
      congr 1
      apply Finset.sum_congr rfl
      intro i _
      apply Finset.sum_congr rfl
      intro x _
      apply Finset.sum_congr rfl
      intro y _
      rw [Finset.mul_sum]
    _ = (∑ i : SourceRemainingCoordinate D,
        ∑ x : X, ∑ y : Y, G.questionWeight x y) /
        (Fintype.card (SourceRemainingCoordinate D) : ℝ) := by
      simp_rw [exactBobLocalConditional_sum, mul_one]
    _ = 1 := by
      simp_rw [G.weight_normalized]
      simp only [Finset.sum_const, Finset.card_univ,
        nsmul_eq_mul, mul_one]
      exact div_self hcard

theorem exactLocallySampleableLaw_absolute_continuous_JA
    (G : Game X Y A B) (n : ℕ) (S : Strategy (G.repeat n))
    (D : Finset (Fin n))
    (remaining : 0 < (Finset.univ \ D).card)
    (positive : 0 < repeatedPostselectionMass G n S D)
    (base : ExactHistoryFlag X Y A B D)
    (t : ExactLocallySampleableTuple X Y A B D) :
    exactLocallySampleableJA G n S D base t = 0 →
      exactLocallySampleableLaw G n S D t = 0 := by
  rcases t with ⟨i, x, y, r⟩
  intro zero
  have hcard :
      (Fintype.card (SourceRemainingCoordinate D) : ℝ) ≠ 0 := by
    exact_mod_cast
      (Nat.ne_of_gt (exactRemainingCoordinate_card_pos D remaining))
  change
    G.questionWeight x y *
      exactAliceLocalConditional D base
        (exactLocallySampleableLaw G n S D) i x r /
        (Fintype.card (SourceRemainingCoordinate D) : ℝ) = 0 at zero
  have hproduct :
      G.questionWeight x y *
        exactAliceLocalConditional D base
          (exactLocallySampleableLaw G n S D) i x r = 0 :=
    (div_eq_zero_iff.mp zero).resolve_right hcard
  rcases mul_eq_zero.mp hproduct with hquestion | hconditional
  · exact exactLocallySampleableLaw_eq_zero_of_question_zero
      G n S D i x y r hquestion
  · exact exactAliceLocalConditional_zero_apply D base
      (exactLocallySampleableLaw G n S D)
      (exactLocallySampleableLaw_nonneg G n S D positive)
      i x y r hconditional

theorem exactLocallySampleableLaw_absolute_continuous_JB
    (G : Game X Y A B) (n : ℕ) (S : Strategy (G.repeat n))
    (D : Finset (Fin n))
    (remaining : 0 < (Finset.univ \ D).card)
    (positive : 0 < repeatedPostselectionMass G n S D)
    (base : ExactHistoryFlag X Y A B D)
    (t : ExactLocallySampleableTuple X Y A B D) :
    exactLocallySampleableJB G n S D base t = 0 →
      exactLocallySampleableLaw G n S D t = 0 := by
  rcases t with ⟨i, x, y, r⟩
  intro zero
  have hcard :
      (Fintype.card (SourceRemainingCoordinate D) : ℝ) ≠ 0 := by
    exact_mod_cast
      (Nat.ne_of_gt (exactRemainingCoordinate_card_pos D remaining))
  change
    G.questionWeight x y *
      exactBobLocalConditional D base
        (exactLocallySampleableLaw G n S D) i y r /
        (Fintype.card (SourceRemainingCoordinate D) : ℝ) = 0 at zero
  have hproduct :
      G.questionWeight x y *
        exactBobLocalConditional D base
          (exactLocallySampleableLaw G n S D) i y r = 0 :=
    (div_eq_zero_iff.mp zero).resolve_right hcard
  rcases mul_eq_zero.mp hproduct with hquestion | hconditional
  · exact exactLocallySampleableLaw_eq_zero_of_question_zero
      G n S D i x y r hquestion
  · exact exactBobLocalConditional_zero_apply D base
      (exactLocallySampleableLaw G n S D)
      (exactLocallySampleableLaw_nonneg G n S D positive)
      i x y r hconditional

end

noncomputable section

open scoped BigOperators

attribute [local instance] Classical.propDecidable

theorem exactRemainingReverse_relativeEntropy_budget
    {n : ℕ} (D : Finset (Fin n))
    (remaining : 0 < (Finset.univ \ D).card)
    (increment :
      (s : Finset (SourceRemainingCoordinate D)) → Fin s.card → ℝ)
    {cost : ℝ} (nonnegative_cost : 0 ≤ cost)
    (budget : ∀ s : Finset (SourceRemainingCoordinate D),
      (∑ k : Fin s.card, increment s k) ≤ cost) :
    (∑ s : Finset (SourceRemainingCoordinate D),
      reversePartitionWeight s *
        ((∑ k : Fin s.card, increment s k) /
          (s.card : ℝ))) ≤
      2 * cost / ((Finset.univ \ D).card : ℝ) := by
  have hcard : 0 < Fintype.card (SourceRemainingCoordinate D) := by
    simpa using remaining
  simpa using
    (reversePartition_relativeEntropy_budget
      hcard increment nonnegative_cost budget)

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

theorem exactFiniteRelativeEntropy_equiv
    {ι κ : Type*} [Fintype ι] [Fintype κ]
    (e : ι ≃ κ) (p q : ι → ℝ) :
    finiteRelativeEntropy
        (fun k : κ => p (e.symm k))
        (fun k : κ => q (e.symm k)) =
      finiteRelativeEntropy p q := by
  unfold finiteRelativeEntropy
  exact e.symm.sum_comp
    (fun i => q i * InformationTheory.klFun (p i / q i))

theorem exact_source_equation_twenty_four_alice
    (G : Game X Y A B) (n : ℕ) (S : Strategy (G.repeat n))
    (D : Finset (Fin n))
    (remaining : 0 < (Finset.univ \ D).card)
    (positive : 0 < repeatedPostselectionMass G n S D)
    (base : ExactHistoryFlag X Y A B D) :
    finiteRelativeEntropy
        (exactLocallySampleableLaw G n S D)
        (exactLocallySampleableJA G n S D base) =
      finiteRelativeEntropy
          (jointFirstMarginal
            (exactAliceInformationPosterior G n S D))
          (jointFirstMarginal
            (exactAliceInformationReference G n S D base)) +
        ∑ ix : SourceRemainingCoordinate D × X,
          jointFirstMarginal
              (exactAliceInformationPosterior G n S D) ix *
            finiteRelativeEntropy
              (jointConditional
                (exactAliceInformationPosterior G n S D) ix)
              (jointConditional
                (exactAliceInformationReference G n S D base) ix) := by
  let e := exactAliceInformationEquiv
    (X := X) (Y := Y) (A := A) (B := B) D
  let p := exactAliceInformationPosterior G n S D
  let q := exactAliceInformationReference G n S D base
  have hp : ∀ t, 0 ≤ p t := by
    intro t
    exact exactLocallySampleableLaw_nonneg
      G n S D positive (e.symm t)
  have hq : ∀ t, 0 ≤ q t := by
    intro t
    exact exactLocallySampleableJA_nonneg
      G n S D positive base (e.symm t)
  have hac : ∀ t, q t = 0 → p t = 0 := by
    intro t ht
    exact exactLocallySampleableLaw_absolute_continuous_JA
      G n S D remaining positive base (e.symm t) ht
  have hpnorm : (∑ t, p t) = 1 := by
    change (∑ t, exactLocallySampleableLaw
      G n S D (e.symm t)) = 1
    rw [e.symm.sum_comp]
    exact exactLocallySampleableLaw_sum
      G n S D remaining positive
  have hqnorm : (∑ t, q t) = 1 := by
    change (∑ t, exactLocallySampleableJA
      G n S D base (e.symm t)) = 1
    rw [e.symm.sum_comp]
    exact exactLocallySampleableJA_sum
      G n S D remaining base
  calc
    finiteRelativeEntropy
        (exactLocallySampleableLaw G n S D)
        (exactLocallySampleableJA G n S D base) =
      finiteRelativeEntropy p q := by
        exact (exactFiniteRelativeEntropy_equiv e
          (exactLocallySampleableLaw G n S D)
          (exactLocallySampleableJA G n S D base)).symm
    _ = _ := finite_relative_entropy_joint_chain_rule
      p q hp hq hac hpnorm hqnorm

theorem exact_source_equation_twenty_four_bob
    (G : Game X Y A B) (n : ℕ) (S : Strategy (G.repeat n))
    (D : Finset (Fin n))
    (remaining : 0 < (Finset.univ \ D).card)
    (positive : 0 < repeatedPostselectionMass G n S D)
    (base : ExactHistoryFlag X Y A B D) :
    finiteRelativeEntropy
        (exactLocallySampleableLaw G n S D)
        (exactLocallySampleableJB G n S D base) =
      finiteRelativeEntropy
          (jointFirstMarginal
            (exactBobInformationPosterior G n S D))
          (jointFirstMarginal
            (exactBobInformationReference G n S D base)) +
        ∑ iy : SourceRemainingCoordinate D × Y,
          jointFirstMarginal
              (exactBobInformationPosterior G n S D) iy *
            finiteRelativeEntropy
              (jointConditional
                (exactBobInformationPosterior G n S D) iy)
              (jointConditional
                (exactBobInformationReference G n S D base) iy) := by
  let e := exactBobInformationEquiv
    (X := X) (Y := Y) (A := A) (B := B) D
  let p := exactBobInformationPosterior G n S D
  let q := exactBobInformationReference G n S D base
  have hp : ∀ t, 0 ≤ p t := by
    intro t
    exact exactLocallySampleableLaw_nonneg
      G n S D positive (e.symm t)
  have hq : ∀ t, 0 ≤ q t := by
    intro t
    exact exactLocallySampleableJB_nonneg
      G n S D positive base (e.symm t)
  have hac : ∀ t, q t = 0 → p t = 0 := by
    intro t ht
    exact exactLocallySampleableLaw_absolute_continuous_JB
      G n S D remaining positive base (e.symm t) ht
  have hpnorm : (∑ t, p t) = 1 := by
    change (∑ t, exactLocallySampleableLaw
      G n S D (e.symm t)) = 1
    rw [e.symm.sum_comp]
    exact exactLocallySampleableLaw_sum
      G n S D remaining positive
  have hqnorm : (∑ t, q t) = 1 := by
    change (∑ t, exactLocallySampleableJB
      G n S D base (e.symm t)) = 1
    rw [e.symm.sum_comp]
    exact exactLocallySampleableJB_sum
      G n S D remaining base
  calc
    finiteRelativeEntropy
        (exactLocallySampleableLaw G n S D)
        (exactLocallySampleableJB G n S D base) =
      finiteRelativeEntropy p q := by
        exact (exactFiniteRelativeEntropy_equiv e
          (exactLocallySampleableLaw G n S D)
          (exactLocallySampleableJB G n S D base)).symm
    _ = _ := finite_relative_entropy_joint_chain_rule
      p q hp hq hac hpnorm hqnorm

end

noncomputable section

open scoped BigOperators

set_option backward.isDefEq.respectTransparency false
set_option maxHeartbeats 1800000
set_option maxRecDepth 2048

open QuantumParallelRepetition.Pinsker
open QuantumParallelRepetition.ClassicalInformation

attribute [local instance] Classical.propDecidable

variable {X Y A B : Type*}
variable [Fintype X] [Fintype Y] [Fintype A] [Fintype B]

theorem reweightedSeed_reverse_source_prefix_information_budget
    {K V : Type*} [Fintype K] [Fintype V]
    (G : Game X Y A B) (n : ℕ) (S : Strategy (G.repeat n))
    (D : Finset (Fin n))
    (remaining : 0 < (Finset.univ \ D).card)
    (positive : 0 < repeatedPostselectionMass G n S D)
    (seedLaw : Finset (SourceRemainingCoordinate D) →
      FiniteEventLaw K)
    (Ω : Finset (SourceRemainingCoordinate D) → Type*)
    [∀ side, Fintype (Ω side)]
    (projection : ∀ side : Finset (SourceRemainingCoordinate D),
      K × ExactOutcome X Y A B n →
        Ω side × (Fin side.card → V))
    (default : V) :
    (∑ side : Finset (SourceRemainingCoordinate D),
      reversePartitionWeight side *
        ((∑ k : Fin side.card,
          reweightedSeedPrefixEntropyIncrement
            (seedLaw side) G n S D
            (projection side) default k) /
          (side.card : ℝ))) ≤
      2 * (postselectionLogCost G n S D +
        answerLogCost (A := A) (B := B) D) /
        ((Finset.univ \ D).card : ℝ) := by
  have nonnegative_cost :
      0 ≤ postselectionLogCost G n S D +
        answerLogCost (A := A) (B := B) D := by
    have hempty := reweightedSeed_source_equation_twenty_six
      (seedLaw ∅) G n S D positive (projection ∅) default
    simpa using hempty
  exact exactRemainingReverse_relativeEntropy_budget
    D remaining
    (fun side k => reweightedSeedPrefixEntropyIncrement
      (seedLaw side) G n S D (projection side) default k)
    nonnegative_cost
    (fun side => reweightedSeed_source_equation_twenty_six
      (seedLaw side) G n S D positive (projection side) default)

end

end QuantumParallelRepetition


open QuantumParallelRepetition
open scoped ComplexOrder Matrix BigOperators InnerProductSpace
open Complex Matrix Finset
open scoped BigOperators
set_option backward.isDefEq.respectTransparency false
set_option maxHeartbeats 2000000
set_option maxRecDepth 2048
open QuantumParallelRepetition.Pinsker
open QuantumParallelRepetition.ClassicalInformation
attribute [local instance] Classical.propDecidable
variable {X Y A B : Type*}
variable [Fintype X] [Fintype Y] [Fintype A] [Fintype B]

theorem solution
    {KA KB : Type*} [Fintype KA] [Fintype KB]
    (G : Game X Y A B) (n : ℕ) (S : Strategy (G.repeat n))
    (D : Finset (Fin n))
    (remaining : 0 < (Finset.univ \ D).card)
    (positive : 0 < repeatedPostselectionMass G n S D)
    (base : ExactHistoryFlag X Y A B D)
    (seedLawA : Finset (SourceRemainingCoordinate D) →
      FiniteEventLaw KA)
    (seedLawB : Finset (SourceRemainingCoordinate D) →
      FiniteEventLaw KB)
    (ΩA ΩB : Finset (SourceRemainingCoordinate D) → Type*)
    [∀ side, Fintype (ΩA side)]
    [∀ side, Fintype (ΩB side)]
    (projectionA : ∀ side : Finset (SourceRemainingCoordinate D),
      KA × ExactOutcome X Y A B n →
        ΩA side × (Fin side.card → Y))
    (projectionB : ∀ side : Finset (SourceRemainingCoordinate D),
      KB × ExactOutcome X Y A B n →
        ΩB side × (Fin side.card → X))
    (defaultY : Y) (defaultX : X)
    (aliceConditionedReverseIdentification :
      exactAliceSourceConditionalInformation G n S D base =
        ∑ side : Finset (SourceRemainingCoordinate D),
          reversePartitionWeight side *
            ((∑ k : Fin side.card,
              reweightedSeedPrefixEntropyIncrement
                (seedLawA side) G n S D
                (projectionA side) defaultY k) /
              (side.card : ℝ)))
    (bobConditionedReverseIdentification :
      exactBobSourceConditionalInformation G n S D base =
        ∑ side : Finset (SourceRemainingCoordinate D),
          reversePartitionWeight side *
            ((∑ k : Fin side.card,
              reweightedSeedPrefixEntropyIncrement
                (seedLawB side) G n S D
                (projectionB side) defaultX k) /
              (side.card : ℝ))) :
    ExactSourceClassicalInformationBound G n S D base := by
  constructor
  · rw [exact_source_equation_twenty_four_alice
      G n S D remaining positive base]
    change
      exactAliceSourceMarginalInformation G n S D base +
          exactAliceSourceConditionalInformation G n S D base ≤
        exactSourceClassicalInformationRate G n S D
    calc
      exactAliceSourceMarginalInformation G n S D base +
          exactAliceSourceConditionalInformation G n S D base ≤
        postselectionLogCost G n S D /
            ((Finset.univ \ D).card : ℝ) +
          2 * (postselectionLogCost G n S D +
            answerLogCost (A := A) (B := B) D) /
              ((Finset.univ \ D).card : ℝ) := by
            apply add_le_add
            · exact exactAliceSourceMarginalInformation_le
                G n S D remaining positive base
            · rw [aliceConditionedReverseIdentification]
              exact
                reweightedSeed_reverse_source_prefix_information_budget
                  G n S D remaining positive
                  seedLawA ΩA projectionA defaultY
      _ = exactSourceClassicalInformationRate G n S D := by
        unfold exactSourceClassicalInformationRate
        ring
  · rw [exact_source_equation_twenty_four_bob
      G n S D remaining positive base]
    change
      exactBobSourceMarginalInformation G n S D base +
          exactBobSourceConditionalInformation G n S D base ≤
        exactSourceClassicalInformationRate G n S D
    calc
      exactBobSourceMarginalInformation G n S D base +
          exactBobSourceConditionalInformation G n S D base ≤
        postselectionLogCost G n S D /
            ((Finset.univ \ D).card : ℝ) +
          2 * (postselectionLogCost G n S D +
            answerLogCost (A := A) (B := B) D) /
              ((Finset.univ \ D).card : ℝ) := by
            apply add_le_add
            · exact exactBobSourceMarginalInformation_le
                G n S D remaining positive base
            · rw [bobConditionedReverseIdentification]
              exact
                reweightedSeed_reverse_source_prefix_information_budget
                  G n S D remaining positive
                  seedLawB ΩB projectionB defaultX
      _ = exactSourceClassicalInformationRate G n S D := by
        unfold exactSourceClassicalInformationRate
        ring
