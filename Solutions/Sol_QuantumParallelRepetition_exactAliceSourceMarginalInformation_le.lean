import Definitions.Def_quantum_parallel_repetition_game
import Definitions.Def_qpr_core_23
import Theorems.Thm_QuantumParallelRepetition_Strategy_outcomeProbability_normalized
import Theorems.Thm_QuantumParallelRepetition_exactRemainingCoordinate_card_pos
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

theorem marginalX_nonneg (G : Game X Y A B) (x : X) :
    0 ≤ G.marginalX x := by
  unfold marginalX
  exact Finset.sum_nonneg fun y _ => G.weight_nonneg x y

theorem marginalX_normalized (G : Game X Y A B) :
    (∑ x : X, G.marginalX x) = 1 := by
  simpa [marginalX] using G.weight_normalized

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

theorem finite_log_sum_inequality
    (indices : Finset ι) (p q : ι → ℝ)
    (hp : ∀ i, 0 ≤ p i)
    (hq : ∀ i, 0 ≤ q i)
    (absolute_continuity : ∀ i, q i = 0 → p i = 0)
    (positive_mass : 0 < ∑ i ∈ indices, q i) :
    (∑ i ∈ indices, q i) *
        InformationTheory.klFun
          ((∑ i ∈ indices, p i) / (∑ i ∈ indices, q i)) ≤
      ∑ i ∈ indices,
        q i * InformationTheory.klFun (p i / q i) := by
  let total : ℝ := ∑ i ∈ indices, q i
  have htotal : 0 < total := positive_mass
  have hnormalized :
      (∑ i ∈ indices, q i / total) = 1 := by
    rw [← Finset.sum_div]
    exact div_self htotal.ne'
  have hmean :
      (∑ i ∈ indices, (q i / total) * (p i / q i)) =
        (∑ i ∈ indices, p i) / total := by
    calc
      (∑ i ∈ indices, (q i / total) * (p i / q i)) =
          ∑ i ∈ indices, p i / total := by
        apply Finset.sum_congr rfl
        intro i _
        by_cases hqi : q i = 0
        · simp [hqi, absolute_continuity i hqi]
        · field_simp [hqi, htotal.ne']
      _ = (∑ i ∈ indices, p i) / total := by
        rw [Finset.sum_div]
  have hjensen :
      InformationTheory.klFun ((∑ i ∈ indices, p i) / total) ≤
        ∑ i ∈ indices,
          (q i / total) * InformationTheory.klFun (p i / q i) := by
    have h := InformationTheory.convexOn_klFun.map_sum_le
      (t := indices)
      (w := fun i => q i / total)
      (p := fun i => p i / q i)
      (fun i _ => div_nonneg (hq i) htotal.le)
      hnormalized
      (fun i _ => show p i / q i ∈ Set.Ici (0 : ℝ) from
        div_nonneg (hp i) (hq i))
    simpa only [smul_eq_mul, hmean] using h
  change
    total * InformationTheory.klFun
      ((∑ i ∈ indices, p i) / total) ≤
      ∑ i ∈ indices, q i * InformationTheory.klFun (p i / q i)
  calc
    total * InformationTheory.klFun
        ((∑ i ∈ indices, p i) / total) ≤
      total * (∑ i ∈ indices,
        (q i / total) * InformationTheory.klFun (p i / q i)) :=
      mul_le_mul_of_nonneg_left hjensen htotal.le
    _ = ∑ i ∈ indices,
        q i * InformationTheory.klFun (p i / q i) := by
      rw [Finset.mul_sum]
      apply Finset.sum_congr rfl
      intro i _
      field_simp [htotal.ne']

section CoarseGraining

variable {κ : Type*} [Fintype κ] [DecidableEq κ]

theorem finite_relative_entropy_data_processing
    (map : ι → κ) (p q : ι → ℝ)
    (hp : ∀ i, 0 ≤ p i)
    (hq : ∀ i, 0 ≤ q i)
    (absolute_continuity : ∀ i, q i = 0 → p i = 0) :
    finiteRelativeEntropy (groupedMass map p) (groupedMass map q) ≤
      finiteRelativeEntropy p q := by
  change
    (∑ j : κ, groupedMass map q j *
      InformationTheory.klFun
        (groupedMass map p j / groupedMass map q j)) ≤
      ∑ i : ι, q i * InformationTheory.klFun (p i / q i)
  calc
    (∑ j : κ, groupedMass map q j *
        InformationTheory.klFun
          (groupedMass map p j / groupedMass map q j)) ≤
      ∑ j : κ,
        ∑ i ∈ (Finset.univ.filter fun i => map i = j),
          q i * InformationTheory.klFun (p i / q i) := by
        apply Finset.sum_le_sum
        intro j _
        let indices : Finset ι :=
          Finset.univ.filter fun i => map i = j
        change
          (∑ i ∈ indices, q i) *
              InformationTheory.klFun
                ((∑ i ∈ indices, p i) / (∑ i ∈ indices, q i)) ≤
            ∑ i ∈ indices,
              q i * InformationTheory.klFun (p i / q i)
        have hreference : 0 ≤ ∑ i ∈ indices, q i :=
          Finset.sum_nonneg (fun i _ => hq i)
        by_cases hzero : (∑ i ∈ indices, q i) = 0
        · rw [hzero, zero_mul]
          apply Finset.sum_nonneg
          intro i _
          exact mul_nonneg (hq i)
            (InformationTheory.klFun_nonneg
              (div_nonneg (hp i) (hq i)))
        · exact finite_log_sum_inequality indices p q hp hq
            absolute_continuity (lt_of_le_of_ne hreference (Ne.symm hzero))
    _ = ∑ i : ι,
        q i * InformationTheory.klFun (p i / q i) := by
      simpa only [] using
        (Finset.sum_fiberwise (Finset.univ : Finset ι) map
          (fun i => q i * InformationTheory.klFun (p i / q i)))

end CoarseGraining

end ClassicalInformation

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

theorem exactUniform_sum
    {T : Type*} [Fintype T]
    (positive : 0 < Fintype.card T) :
    (∑ _t : T, (1 / (Fintype.card T : ℝ))) = 1 := by
  have hcard : (Fintype.card T : ℝ) ≠ 0 := by
    exact_mod_cast (Nat.ne_of_gt positive)
  simp only [Finset.sum_const, Finset.card_univ, nsmul_eq_mul]
  field_simp [hcard]

theorem exactUniform_sum_mul
    {T : Type*} [Fintype T]
    (positive : 0 < Fintype.card T) (value : ℝ) :
    (∑ _t : T,
      value * (1 / (Fintype.card T : ℝ))) = value := by
  rw [← Finset.mul_sum, exactUniform_sum positive]
  ring

theorem exactPrefixUniform_sum_mul
    (m : ℕ) (value : ℝ) :
    (∑ _k : Fin (m + 1),
      value * (1 / ((m : ℝ) + 1))) = value := by
  simpa only [Fintype.card_fin, Nat.cast_add, Nat.cast_one] using
    (exactUniform_sum_mul
      (T := Fin (m + 1)) (by simp) value)

theorem exactPermutationUniform_sum_mul
    {T : Type*} [Fintype T] (value : ℝ) :
    (∑ _π : Equiv.Perm T,
      value * (1 / (Fintype.card (Equiv.Perm T) : ℝ))) = value := by
  exact exactUniform_sum_mul
    (Fintype.card_pos_iff.mpr ⟨Equiv.refl T⟩) value

end

noncomputable section

open scoped BigOperators

set_option maxHeartbeats 1200000

attribute [local instance] Classical.propDecidable

theorem exactFintypeCard_eq
    {T : Type*} (first second : Fintype T) :
    @Fintype.card T first = @Fintype.card T second :=
  @Fintype.card_congr T T first second (Equiv.refl T)

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

theorem conditionedEventDistribution_absolute_continuity
    {Ω : Type*} [Fintype Ω]
    (law : FiniteEventLaw Ω) (event : Finset Ω) (ω : Ω) :
    law.weight ω = 0 →
      conditionedEventDistribution law event ω = 0 := by
  intro hzero
  simp [conditionedEventDistribution, hzero]

theorem conditionedEventDistribution_relativeEntropy
    {Ω : Type*} [Fintype Ω]
    (law : FiniteEventLaw Ω) (event : Finset Ω)
    (positive : 0 < law.eventMass event) :
    finiteRelativeEntropy
        (conditionedEventDistribution law event)
        law.weight =
      Real.log (1 / law.eventMass event) := by
  rw [finiteRelativeEntropy_eq_log_sum_of_absolute_continuity
    (conditionedEventDistribution law event)
    law.weight law.weight_nonneg
    (conditionedEventDistribution_absolute_continuity law event)
    (conditionedEventDistribution_sum law event positive)
    law.weight_sum]
  calc
    (∑ ω : Ω,
      conditionedEventDistribution law event ω *
        Real.log
          (conditionedEventDistribution law event ω /
            law.weight ω)) =
      ∑ ω : Ω,
        conditionedEventDistribution law event ω *
          Real.log (1 / law.eventMass event) := by
      apply Finset.sum_congr rfl
      intro ω _
      by_cases hmem : ω ∈ event
      · by_cases hweight : law.weight ω = 0
        · simp [conditionedEventDistribution, hmem, hweight]
        · have hratio :
              (law.weight ω / law.eventMass event) /
                  law.weight ω = 1 / law.eventMass event := by
                field_simp [hweight, positive.ne']
          simp only [conditionedEventDistribution,
            if_pos hmem, hratio]
      · simp [conditionedEventDistribution, hmem]
    _ = Real.log (1 / law.eventMass event) := by
      rw [← Finset.sum_mul,
        conditionedEventDistribution_sum law event positive]
      ring

theorem repeatedConditionedOutcomeLaw_relativeEntropy
    (G : Game X Y A B) (n : ℕ) (S : Strategy (G.repeat n))
    (D : Finset (Fin n))
    (hp : 0 < repeatedPostselectionMass G n S D) :
    finiteRelativeEntropy
        (repeatedConditionedOutcomeLaw G n S D)
        (strategyEventLaw (G.repeat n) S).weight =
      postselectionLogCost G n S D := by
  exact conditionedEventDistribution_relativeEntropy
    (strategyEventLaw (G.repeat n) S)
    (FiniteEventLaw.winEvent (repeatedCoordinateWin G n) D) hp

end

noncomputable section

open scoped BigOperators

open QuantumParallelRepetition.Pinsker
open QuantumParallelRepetition.ClassicalInformation

attribute [local instance] Classical.propDecidable

theorem finiteRelativeEntropy_nonneg
    {Ω : Type*} [Fintype Ω]
    (p q : Ω → ℝ)
    (hp : ∀ ω, 0 ≤ p ω)
    (hq : ∀ ω, 0 ≤ q ω) :
    0 ≤ finiteRelativeEntropy p q := by
  unfold finiteRelativeEntropy
  apply Finset.sum_nonneg
  intro ω _
  exact mul_nonneg (hq ω)
    (InformationTheory.klFun_nonneg (div_nonneg (hp ω) (hq ω)))

theorem groupedMass_nonneg
    {Ω κ : Type*} [Fintype Ω] [Fintype κ] [DecidableEq κ]
    (f : Ω → κ) (p : Ω → ℝ)
    (hp : ∀ ω, 0 ≤ p ω) (a : κ) :
    0 ≤ groupedMass f p a := by
  unfold groupedMass
  exact Finset.sum_nonneg (fun ω _ => hp ω)

theorem groupedMass_absolute_continuity
    {Ω κ : Type*} [Fintype Ω] [Fintype κ] [DecidableEq κ]
    (f : Ω → κ) (p q : Ω → ℝ)
    (hq : ∀ ω, 0 ≤ q ω)
    (absolute_continuity : ∀ ω, q ω = 0 → p ω = 0)
    (a : κ) :
    groupedMass f q a = 0 → groupedMass f p a = 0 := by
  intro hzero
  change
    (∑ ω ∈ (Finset.univ.filter fun ω => f ω = a), q ω) = 0 at hzero
  change
    (∑ ω ∈ (Finset.univ.filter fun ω => f ω = a), p ω) = 0
  apply Finset.sum_eq_zero
  intro ω hω
  have hqzero : q ω = 0 :=
    (Finset.sum_eq_zero_iff_of_nonneg
      (fun ω _ => hq ω)).mp hzero ω hω
  exact absolute_continuity ω hqzero

theorem groupedMass_comp
    {Ω κ θ : Type*} [Fintype Ω] [Fintype κ] [Fintype θ]
    [DecidableEq κ] [DecidableEq θ]
    (f : Ω → κ) (g : κ → θ) (p : Ω → ℝ) :
    groupedMass g (groupedMass f p) =
      groupedMass (g ∘ f) p := by
  funext a
  unfold groupedMass
  simpa only [Finset.mem_filter, Finset.mem_univ, true_and,
    Function.comp_apply] using
    (Finset.sum_fiberwise_eq_sum_filter
      (Finset.univ : Finset Ω)
      (Finset.univ.filter fun b : κ => g b = a)
      f p)

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

theorem groupedMass_first
    {Ω Z : Type*} [Fintype Ω] [Fintype Z]
    [DecidableEq Ω]
    (joint : Ω × Z → ℝ) :
    groupedMass Prod.fst joint = jointFirstMarginal joint := by
  funext ω
  classical
  simp only [groupedMass, jointFirstMarginal,
    Finset.sum_filter, Fintype.sum_prod_type]
  rw [Finset.sum_comm]
  simp

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

end

noncomputable section

open scoped BigOperators

set_option maxHeartbeats 1600000

attribute [local instance] Classical.propDecidable

theorem exactSeedCoordinateFiber_sum
    {M : Type*} [Fintype M] [DecidableEq M]
    (coordinate : M) :
    (∑ partition : M → Bool,
      ∑ leftOrder : Equiv.Perm
        {j : M // j ∈ exactLeft coordinate partition},
      ∑ rightOrder : Equiv.Perm
        {j : M // j ∈ exactRight coordinate partition},
      ∑ leftCut : Fin
        ((exactLeft coordinate partition).card + 1),
      ∑ rightCut : Fin
        ((exactRight coordinate partition).card + 1),
        exactSeedWeight
          ⟨coordinate, partition, leftOrder,
            rightOrder, leftCut, rightCut⟩) =
      1 / (Fintype.card M : ℝ) := by
  classical
  have hbits : 0 < Fintype.card (M → Bool) :=
    Fintype.card_pos_iff.mpr ⟨fun _ => false⟩
  conv_rhs =>
    rw [← exactUniform_sum_mul hbits
      (1 / (Fintype.card M : ℝ))]
  apply Finset.sum_congr (by ext; simp)
  intro partition _
  letI : DecidableEq
      {j : M // j ∈ exactLeft coordinate partition} :=
    fun a b => Classical.propDecidable (a = b)
  letI : DecidableEq
      {j : M // j ∈ exactRight coordinate partition} :=
    fun a b => Classical.propDecidable (a = b)
  conv_rhs =>
    rw [← exactPermutationUniform_sum_mul
      (T := {j : M // j ∈ exactLeft coordinate partition})
      ((1 / (Fintype.card M : ℝ)) *
        (1 / (Fintype.card (M → Bool) : ℝ)))]
  apply Finset.sum_congr (by ext; simp)
  intro leftOrder _
  conv_rhs =>
    rw [← exactPermutationUniform_sum_mul
      (T := {j : M // j ∈ exactRight coordinate partition})
      ((1 / (Fintype.card M : ℝ)) *
        (1 / (Fintype.card (M → Bool) : ℝ)) *
        (1 / (Fintype.card
          (Equiv.Perm
            {j : M // j ∈ exactLeft coordinate partition}) : ℝ)))]
  apply Finset.sum_congr (by ext; simp)
  intro rightOrder _
  conv_rhs =>
    rw [← exactPrefixUniform_sum_mul
      (exactLeft coordinate partition).card
      ((1 / (Fintype.card M : ℝ)) *
        (1 / (Fintype.card (M → Bool) : ℝ)) *
        (1 / (Fintype.card
          (Equiv.Perm
            {j : M // j ∈ exactLeft coordinate partition}) : ℝ)) *
        (1 / (Fintype.card
          (Equiv.Perm
            {j : M // j ∈ exactRight coordinate partition}) : ℝ)))]
  apply Finset.sum_congr (by ext; simp)
  intro leftCut _
  conv_rhs =>
    rw [← exactPrefixUniform_sum_mul
      (exactRight coordinate partition).card
      ((1 / (Fintype.card M : ℝ)) *
        (1 / (Fintype.card (M → Bool) : ℝ)) *
        (1 / (Fintype.card
          (Equiv.Perm
            {j : M // j ∈ exactLeft coordinate partition}) : ℝ)) *
        (1 / (Fintype.card
          (Equiv.Perm
            {j : M // j ∈ exactRight coordinate partition}) : ℝ)) *
        (1 / ((exactLeft coordinate partition).card + 1 : ℝ)))]
  apply Finset.sum_congr (by ext; simp)
  intro rightCut _
  simp only [exactSeedWeight]
  congr 2
  congr 3
  · apply congrArg (fun k : ℕ => (k : ℝ))
    exact exactFintypeCard_eq _ _
  · exact exactFintypeCard_eq _ _

theorem exactSeedWeight_coordinate_sum
    {M : Type*} [Fintype M] [DecidableEq M]
    (f : M → ℝ) :
    (∑ seed : ExactForwardSeed M,
      exactSeedWeight seed * f seed.coordinate) =
      ∑ i : M, (1 / (Fintype.card M : ℝ)) * f i := by
  classical
  rw [exactForwardSeed_sum]
  apply Finset.sum_congr (by ext; simp)
  intro i _
  simp_rw [← Finset.sum_mul]
  rw [exactSeedCoordinateFiber_sum i]

theorem exactSeedWeight_coordinate_marginal
    {M : Type*} [Fintype M] [DecidableEq M]
    (i : M) :
    (∑ seed : ExactForwardSeed M,
      if seed.coordinate = i then exactSeedWeight seed else 0) =
      1 / (Fintype.card M : ℝ) := by
  have h := exactSeedWeight_coordinate_sum
    (M := M) (fun j => if j = i then (1 : ℝ) else 0)
  simpa only [mul_ite, mul_one, mul_zero,
    Finset.sum_ite_eq', Finset.mem_univ, ↓reduceIte] using h

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

theorem exactAliceInformationReference_firstMarginal
    (G : Game X Y A B) (n : ℕ) (S : Strategy (G.repeat n))
    (D : Finset (Fin n))
    (base : ExactHistoryFlag X Y A B D)
    (i : SourceRemainingCoordinate D) (x : X) :
    jointFirstMarginal
        (exactAliceInformationReference G n S D base)
        (i, x) =
      exactAliceQuestionPriorMarginal G x /
        (Fintype.card (SourceRemainingCoordinate D) : ℝ) := by
  unfold jointFirstMarginal
  rw [Fintype.sum_prod_type]
  change
    (∑ r : ExactHistoryFlag X Y A B D,
      ∑ y : Y,
        G.questionWeight x y *
          exactAliceLocalConditional D base
            (exactLocallySampleableLaw G n S D) i x r /
          (Fintype.card (SourceRemainingCoordinate D) : ℝ)) =
      (∑ y : Y, G.questionWeight x y) /
        (Fintype.card (SourceRemainingCoordinate D) : ℝ)
  rw [Finset.sum_comm]
  simp_rw [← Finset.sum_div, ← Finset.mul_sum,
    exactAliceLocalConditional_sum, mul_one]

end

noncomputable section

open scoped BigOperators

set_option backward.isDefEq.respectTransparency false
set_option maxHeartbeats 1200000
set_option maxRecDepth 2048

open QuantumParallelRepetition.Pinsker
open QuantumParallelRepetition.ClassicalInformation

attribute [local instance] Classical.propDecidable

variable {X Y A B : Type*}
variable [Fintype X] [Fintype Y] [Fintype A] [Fintype B]

theorem exactGroupedMass_decidableEq_irrel
    {Ω κ : Type*} [Fintype Ω]
    (first second : DecidableEq κ)
    (projection : Ω → κ) (mass : Ω → ℝ) :
    @groupedMass Ω _ κ first projection mass =
      @groupedMass Ω _ κ second projection mass := by
  have h : first = second := Subsingleton.elim first second
  subst second
  rfl

end

noncomputable section

open scoped BigOperators

set_option backward.isDefEq.respectTransparency false
set_option maxHeartbeats 1800000
set_option maxRecDepth 2048

open QuantumParallelRepetition.Pinsker
open QuantumParallelRepetition.ClassicalInformation

attribute [local instance] Classical.propDecidable

theorem finiteIndependentProductWeight_nonneg
    {ι V : Type*} [Fintype ι] [Fintype V]
    (q : ι → V → ℝ) (hq : ∀ i v, 0 ≤ q i v)
    (x : ι → V) :
    0 ≤ finiteIndependentProductWeight q x := by
  classical
  unfold finiteIndependentProductWeight
  exact Finset.prod_nonneg fun i _ => hq i (x i)

theorem finiteIndependentProductWeight_sum
    {ι V : Type*} [Fintype ι] [Fintype V]
    (q : ι → V → ℝ)
    (hq : ∀ i, (∑ v : V, q i v) = 1) :
    (∑ x : ι → V, finiteIndependentProductWeight q x) = 1 := by
  classical
  unfold finiteIndependentProductWeight
  calc
    (∑ x : ι → V, ∏ i : ι, q i (x i)) =
        ∏ i : ι, ∑ v : V, q i v :=
      (Fintype.prod_sum (fun i : ι => fun v : V => q i v)).symm
    _ = 1 := by simp [hq]

theorem finiteCoordinateMarginal_nonneg
    {ι V : Type*} [Fintype ι] [Fintype V]
    (p : (ι → V) → ℝ) (hp : ∀ x, 0 ≤ p x)
    (i : ι) (v : V) :
    0 ≤ finiteCoordinateMarginal p i v := by
  classical
  unfold finiteCoordinateMarginal
  exact groupedMass_nonneg (fun x : ι → V => x i) p hp v

theorem finiteCoordinateMarginal_sum
    {ι V : Type*} [Fintype ι] [Fintype V]
    (p : (ι → V) → ℝ) (i : ι) :
    (∑ v : V, finiteCoordinateMarginal p i v) =
      ∑ x : ι → V, p x := by
  classical
  unfold finiteCoordinateMarginal
  exact groupedMass_sum (fun x : ι → V => x i) p

theorem finiteJoint_le_coordinateMarginal
    {ι V : Type*} [Fintype ι] [Fintype V]
    (p : (ι → V) → ℝ) (hp : ∀ x, 0 ≤ p x)
    (x : ι → V) (i : ι) :
    p x ≤ finiteCoordinateMarginal p i (x i) := by
  classical
  unfold finiteCoordinateMarginal groupedMass
  exact Finset.single_le_sum
    (fun a _ => hp a)
    (by simp)

theorem finiteCoordinateMarginal_absolute_continuity
    {ι V : Type*} [Fintype ι] [Fintype V]
    (p : (ι → V) → ℝ) (q : ι → V → ℝ)
    (hac : ∀ x, finiteIndependentProductWeight q x = 0 → p x = 0)
    (i : ι) (v : V) :
    q i v = 0 → finiteCoordinateMarginal p i v = 0 := by
  classical
  intro hz
  unfold finiteCoordinateMarginal groupedMass
  apply Finset.sum_eq_zero
  intro x hx
  have hxi : x i = v := (Finset.mem_filter.mp hx).2
  apply hac x
  unfold finiteIndependentProductWeight
  apply Finset.prod_eq_zero (Finset.mem_univ i)
  simpa [hxi] using hz

theorem finiteJoint_absolute_continuous_product_marginals
    {ι V : Type*} [Fintype ι] [Fintype V]
    (p : (ι → V) → ℝ) (hp : ∀ x, 0 ≤ p x)
    (x : ι → V) :
    finiteIndependentProductWeight
        (finiteCoordinateMarginal p) x = 0 → p x = 0 := by
  classical
  intro hz
  by_contra hpx
  have hpositive : 0 < p x :=
    lt_of_le_of_ne (hp x) (Ne.symm hpx)
  have hmarginal (i : ι) :
      0 < finiteCoordinateMarginal p i (x i) :=
    lt_of_lt_of_le hpositive
      (finiteJoint_le_coordinateMarginal p hp x i)
  have hproduct :
      0 < finiteIndependentProductWeight
        (finiteCoordinateMarginal p) x := by
    unfold finiteIndependentProductWeight
    exact Finset.prod_pos fun i _ => hmarginal i
  exact hproduct.ne' hz

theorem finiteCoordinateMarginal_sum_mul
    {ι V : Type*} [Fintype ι] [Fintype V]
    (p : (ι → V) → ℝ) (i : ι) (f : V → ℝ) :
    (∑ x : ι → V, p x * f (x i)) =
      ∑ v : V, finiteCoordinateMarginal p i v * f v := by
  classical
  calc
    (∑ x : ι → V, p x * f (x i)) =
        ∑ v : V,
          groupedMass (fun x : ι → V => x i)
            (fun x => p x * f (x i)) v := by
      symm
      exact groupedMass_sum
        (fun x : ι → V => x i)
        (fun x => p x * f (x i))
    _ = ∑ v : V, finiteCoordinateMarginal p i v * f v := by
      apply Finset.sum_congr rfl
      intro v _
      unfold finiteCoordinateMarginal groupedMass
      rw [Finset.sum_mul]
      apply Finset.sum_congr rfl
      intro x hx
      have hxi : x i = v := (Finset.mem_filter.mp hx).2
      simp [hxi]

theorem finiteProductMarginal_relativeEntropy_le
    {ι V : Type*} [Fintype ι] [Fintype V]
    (p : (ι → V) → ℝ) (q : ι → V → ℝ)
    (hp : ∀ x, 0 ≤ p x)
    (hp_normalized : (∑ x : ι → V, p x) = 1)
    (hq : ∀ i v, 0 ≤ q i v)
    (hq_normalized : ∀ i, (∑ v : V, q i v) = 1)
    (absolute_continuity :
      ∀ x, finiteIndependentProductWeight q x = 0 → p x = 0) :
    (∑ i : ι,
      finiteRelativeEntropy (finiteCoordinateMarginal p i) (q i)) ≤
      finiteRelativeEntropy p (finiteIndependentProductWeight q) := by
  classical
  let marginal : ι → V → ℝ := finiteCoordinateMarginal p
  have hm_nonnegative (i : ι) (v : V) : 0 ≤ marginal i v :=
    finiteCoordinateMarginal_nonneg p hp i v
  have hm_normalized (i : ι) : (∑ v : V, marginal i v) = 1 := by
    change (∑ v : V, finiteCoordinateMarginal p i v) = 1
    rw [finiteCoordinateMarginal_sum, hp_normalized]
  have hm_absolute (x : ι → V) :
      finiteIndependentProductWeight marginal x = 0 → p x = 0 :=
    finiteJoint_absolute_continuous_product_marginals p hp x
  have hq_absolute (i : ι) (v : V) :
      q i v = 0 → marginal i v = 0 :=
    finiteCoordinateMarginal_absolute_continuity
      p q absolute_continuity i v
  have hpoint (x : ι → V) :
      p x * Real.log
        (p x / finiteIndependentProductWeight q x) =
        p x * Real.log
            (p x / finiteIndependentProductWeight marginal x) +
          ∑ i : ι,
            p x * Real.log (marginal i (x i) / q i (x i)) := by
    by_cases hpx : p x = 0
    · simp [hpx]
    · have hp_positive : 0 < p x :=
        lt_of_le_of_ne (hp x) (Ne.symm hpx)
      have hq_product :
          finiteIndependentProductWeight q x ≠ 0 := by
        intro hz
        exact hpx (absolute_continuity x hz)
      have hm_product :
          finiteIndependentProductWeight marginal x ≠ 0 := by
        intro hz
        exact hpx (hm_absolute x hz)
      have hq_factor (i : ι) : q i (x i) ≠ 0 := by
        intro hz
        apply hq_product
        unfold finiteIndependentProductWeight
        exact Finset.prod_eq_zero (Finset.mem_univ i) hz
      have hm_factor (i : ι) : marginal i (x i) ≠ 0 := by
        have hm_positive : 0 < marginal i (x i) :=
          lt_of_lt_of_le hp_positive
            (finiteJoint_le_coordinateMarginal p hp x i)
        exact hm_positive.ne'
      have hlogq :
          Real.log (finiteIndependentProductWeight q x) =
            ∑ i : ι, Real.log (q i (x i)) := by
        unfold finiteIndependentProductWeight
        exact Real.log_prod (fun i _ => hq_factor i)
      have hlogm :
          Real.log (finiteIndependentProductWeight marginal x) =
            ∑ i : ι, Real.log (marginal i (x i)) := by
        unfold finiteIndependentProductWeight
        exact Real.log_prod (fun i _ => hm_factor i)
      rw [Real.log_div hpx hq_product,
        Real.log_div hpx hm_product, hlogq, hlogm]
      simp_rw [Real.log_div (hm_factor _) (hq_factor _)]
      rw [← Finset.mul_sum, Finset.sum_sub_distrib]
      ring
  have hidentity :
      finiteRelativeEntropy p (finiteIndependentProductWeight q) =
        finiteRelativeEntropy p
            (finiteIndependentProductWeight marginal) +
          ∑ i : ι, finiteRelativeEntropy (marginal i) (q i) := by
    rw [finiteRelativeEntropy_eq_log_sum_of_absolute_continuity
      p (finiteIndependentProductWeight q)
      (finiteIndependentProductWeight_nonneg q hq)
      absolute_continuity hp_normalized
      (finiteIndependentProductWeight_sum q hq_normalized)]
    rw [finiteRelativeEntropy_eq_log_sum_of_absolute_continuity
      p (finiteIndependentProductWeight marginal)
      (finiteIndependentProductWeight_nonneg marginal hm_nonnegative)
      hm_absolute hp_normalized
      (finiteIndependentProductWeight_sum marginal hm_normalized)]
    simp_rw [finiteRelativeEntropy_eq_log_sum_of_absolute_continuity
      (marginal _) (q _) (hq _) (hq_absolute _)
      (hm_normalized _) (hq_normalized _)]
    calc
      (∑ x : ι → V, p x *
          Real.log (p x / finiteIndependentProductWeight q x)) =
        ∑ x : ι → V,
          (p x * Real.log
            (p x / finiteIndependentProductWeight marginal x) +
            ∑ i : ι,
              p x * Real.log (marginal i (x i) / q i (x i))) := by
          apply Finset.sum_congr rfl
          intro x _
          exact hpoint x
      _ = (∑ x : ι → V, p x *
            Real.log
              (p x / finiteIndependentProductWeight marginal x)) +
          ∑ i : ι,
            ∑ x : ι → V,
              p x * Real.log (marginal i (x i) / q i (x i)) := by
          rw [Finset.sum_add_distrib, Finset.sum_comm]
      _ = (∑ x : ι → V, p x *
            Real.log
              (p x / finiteIndependentProductWeight marginal x)) +
          ∑ i : ι,
            ∑ v : V,
              marginal i v * Real.log (marginal i v / q i v) := by
          congr 1
          apply Finset.sum_congr rfl
          intro i _
          exact finiteCoordinateMarginal_sum_mul
            p i (fun v => Real.log (marginal i v / q i v))
  rw [hidentity]
  have hnonnegative :
      0 ≤ finiteRelativeEntropy p
        (finiteIndependentProductWeight marginal) :=
    finiteRelativeEntropy_nonneg p
      (finiteIndependentProductWeight marginal)
      hp (finiteIndependentProductWeight_nonneg
        marginal hm_nonnegative)
  change (∑ i : ι, finiteRelativeEntropy (marginal i) (q i)) ≤ _
  linarith

end

noncomputable section

open scoped BigOperators

set_option backward.isDefEq.respectTransparency false
set_option maxHeartbeats 2200000
set_option maxRecDepth 2048

open QuantumParallelRepetition.Pinsker
open QuantumParallelRepetition.ClassicalInformation

attribute [local instance] Classical.propDecidable

variable {X Y A B : Type*}
variable [Fintype X] [Fintype Y] [Fintype A] [Fintype B]

theorem exactIndependentCoordinateQuestion_marginal
    {M Ω V : Type*} [Fintype M] [DecidableEq M]
    [Fintype Ω] [Fintype V]
    (outcome : Ω → ℝ) (question : Ω → M → V)
    (i : M) (v : V) :
    groupedMass
        (fun t : ExactForwardSeed M × Ω =>
          (t.1.coordinate, question t.2 t.1.coordinate))
        (fun t : ExactForwardSeed M × Ω =>
          exactSeedWeight t.1 * outcome t.2) (i, v) =
      (1 / (Fintype.card M : ℝ)) *
        groupedMass (fun ω : Ω => question ω i) outcome v := by
  classical
  let coordinateMass :=
    groupedMass (fun ω : Ω => question ω i) outcome v
  have hinner (seed : ExactForwardSeed M) :
      (∑ ω : Ω,
        if (seed.coordinate, question ω seed.coordinate) = (i, v)
        then exactSeedWeight seed * outcome ω
        else 0) =
      if seed.coordinate = i
      then exactSeedWeight seed * coordinateMass
      else 0 := by
    by_cases hc : seed.coordinate = i
    · subst i
      simp only [Prod.mk.injEq, true_and, ↓reduceIte]
      dsimp [coordinateMass]
      unfold groupedMass
      rw [Finset.sum_filter]
      rw [Finset.mul_sum]
      apply Finset.sum_congr rfl
      intro ω _
      split_ifs <;> simp_all
    · simp [hc]
  unfold groupedMass
  rw [Finset.sum_filter, Fintype.sum_prod_type]
  simp_rw [hinner]
  calc
    (∑ seed : ExactForwardSeed M,
      if seed.coordinate = i
      then exactSeedWeight seed * coordinateMass
      else 0) =
        (∑ seed : ExactForwardSeed M,
          if seed.coordinate = i
          then exactSeedWeight seed else 0) * coordinateMass := by
          rw [Finset.sum_mul]
          apply Finset.sum_congr rfl
          intro seed _
          split_ifs <;> simp
    _ = (1 / (Fintype.card M : ℝ)) * coordinateMass := by
      rw [exactSeedWeight_coordinate_marginal i]

theorem strategyAliceQuestionPrior_marginal
    (G : Game X Y A B) (S : Strategy G) (x : X) :
    groupedMass (fun ω : StrategyOutcome X Y A B => ω.1)
        (strategyEventLaw G S).weight x =
      G.marginalX x := by
  classical
  unfold groupedMass
  rw [Finset.sum_filter]
  simp only [Fintype.sum_prod_type]
  change
    (∑ x' : X, ∑ y : Y, ∑ a : A, ∑ b : B,
      if x' = x then
        G.questionWeight x' y * S.outcomeProbability x' y a b
      else 0) = G.marginalX x
  simp only [Finset.sum_ite_irrel, Finset.sum_const_zero,
    Finset.sum_ite_eq', Finset.mem_univ, ↓reduceIte]
  unfold Game.marginalX
  apply Finset.sum_congr rfl
  intro y _
  simp_rw [← Finset.mul_sum]
  rw [S.outcomeProbability_normalized x y]
  ring

theorem repeatedAliceQuestionPrior_product
    (G : Game X Y A B) (n : ℕ) (S : Strategy (G.repeat n))
    (xs : Fin n → X) :
    groupedMass
        (fun ω : ExactOutcome X Y A B n => ω.1)
        (strategyEventLaw (G.repeat n) S).weight xs =
      finiteIndependentProductWeight
        (fun _ : Fin n => G.marginalX) xs := by
  classical
  calc
    groupedMass
        (fun ω : ExactOutcome X Y A B n => ω.1)
        (strategyEventLaw (G.repeat n) S).weight xs =
      (G.repeat n).marginalX xs := by
        calc
          groupedMass
              (fun ω : ExactOutcome X Y A B n => ω.1)
              (strategyEventLaw (G.repeat n) S).weight xs =
            @groupedMass
              (ExactOutcome X Y A B n) inferInstance
              (Fin n → X)
              (fun a b => Classical.propDecidable (a = b))
              (fun ω : ExactOutcome X Y A B n => ω.1)
              (strategyEventLaw (G.repeat n) S).weight xs := by
                exact congrFun
                  (exactGroupedMass_decidableEq_irrel _ _
                    (fun ω : ExactOutcome X Y A B n => ω.1)
                    (strategyEventLaw (G.repeat n) S).weight) xs
          _ = (G.repeat n).marginalX xs :=
            strategyAliceQuestionPrior_marginal
              (G.repeat n) S xs
    _ = finiteIndependentProductWeight
        (fun _ : Fin n => G.marginalX) xs := by
      unfold Game.marginalX finiteIndependentProductWeight
      simp only [Game.repeat_questionWeight]
      exact (Fintype.prod_sum
        (fun i : Fin n => fun y : Y => G.questionWeight (xs i) y)).symm

theorem exactGroupedMass_equiv
    {Ω K V : Type*} [Fintype Ω] [Fintype K] [Fintype V]
    (equiv : Ω ≃ K) (projection : Ω → V) (mass : Ω → ℝ)
    (v : V) :
    groupedMass (fun k : K => projection (equiv.symm k))
        (fun k : K => mass (equiv.symm k)) v =
      groupedMass projection mass v := by
  classical
  unfold groupedMass
  rw [Finset.sum_filter, Finset.sum_filter]
  exact equiv.symm.sum_comp
    (fun ω : Ω => if projection ω = v then mass ω else 0)

theorem exactAliceInformationPosterior_firstMarginal_pushforward
    (G : Game X Y A B) (n : ℕ) (S : Strategy (G.repeat n))
    (D : Finset (Fin n)) (i : SourceRemainingCoordinate D) (x : X) :
    jointFirstMarginal
        (exactAliceInformationPosterior G n S D) (i, x) =
      groupedMass
        (fun t : ExactLocallySampleableTuple X Y A B D =>
          (t.1, t.2.1))
        (exactLocallySampleableLaw G n S D) (i, x) := by
  classical
  let equiv := exactAliceInformationEquiv
    (X := X) (Y := Y) (A := A) (B := B) D
  let projection :=
    fun t : ExactLocallySampleableTuple X Y A B D =>
      (t.1, t.2.1)
  let mass := exactLocallySampleableLaw G n S D
  have hfirst := congrFun
    (groupedMass_first
      (exactAliceInformationPosterior G n S D)) (i, x)
  have hreindex := exactGroupedMass_equiv
    equiv projection mass (i, x)
  have hprojection :
      (fun k :
        (SourceRemainingCoordinate D × X) ×
          (ExactHistoryFlag X Y A B D × Y) =>
        projection (equiv.symm k)) = Prod.fst := by
    funext k
    rcases k with ⟨⟨j, z⟩, r, w⟩
    rfl
  have hmass :
      (fun k :
        (SourceRemainingCoordinate D × X) ×
          (ExactHistoryFlag X Y A B D × Y) =>
        mass (equiv.symm k)) =
        exactAliceInformationPosterior G n S D := by
    funext k
    rfl
  rw [hprojection, hmass] at hreindex
  calc
    jointFirstMarginal
        (exactAliceInformationPosterior G n S D) (i, x) =
      groupedMass Prod.fst
        (exactAliceInformationPosterior G n S D) (i, x) := by
          exact hfirst.symm
    _ = groupedMass projection mass (i, x) := by
      have hchange :
          groupedMass Prod.fst
              (exactAliceInformationPosterior G n S D) (i, x) =
            @groupedMass
              ((SourceRemainingCoordinate D × X) ×
                (ExactHistoryFlag X Y A B D × Y))
              inferInstance (SourceRemainingCoordinate D × X)
              (fun a b => Classical.propDecidable (a = b))
              Prod.fst
              (exactAliceInformationPosterior G n S D) (i, x) := by
        exact congrFun
          (exactGroupedMass_decidableEq_irrel _ _ Prod.fst
            (exactAliceInformationPosterior G n S D)) (i, x)
      have hreindex' :
          @groupedMass
              ((SourceRemainingCoordinate D × X) ×
                (ExactHistoryFlag X Y A B D × Y))
              inferInstance (SourceRemainingCoordinate D × X)
              (fun a b => Classical.propDecidable (a = b))
              Prod.fst
              (exactAliceInformationPosterior G n S D) (i, x) =
            @groupedMass
              (ExactLocallySampleableTuple X Y A B D)
              inferInstance (SourceRemainingCoordinate D × X)
              (fun a b => Classical.propDecidable (a = b))
              projection mass (i, x) := by
        exact hreindex
      have hright :
          @groupedMass
              (ExactLocallySampleableTuple X Y A B D)
              inferInstance (SourceRemainingCoordinate D × X)
              (fun a b => Classical.propDecidable (a = b))
              projection mass (i, x) =
            groupedMass projection mass (i, x) := by
        exact congrFun
          (exactGroupedMass_decidableEq_irrel _ _
            projection mass) (i, x)
      exact hchange.trans (hreindex'.trans hright)

theorem exactAliceInformationPosterior_firstMarginal
    (G : Game X Y A B) (n : ℕ) (S : Strategy (G.repeat n))
    (D : Finset (Fin n)) (i : SourceRemainingCoordinate D) (x : X) :
    jointFirstMarginal
        (exactAliceInformationPosterior G n S D) (i, x) =
      (1 / (Fintype.card (SourceRemainingCoordinate D) : ℝ)) *
        groupedMass
          (fun ω : ExactOutcome X Y A B n => ω.1 i.val)
          (repeatedConditionedOutcomeLaw G n S D) x := by
  classical
  let code := exactLocallySampleableCode
    (X := X) (Y := Y) (A := A) (B := B) D
  let projection :=
    fun t : ExactLocallySampleableTuple X Y A B D =>
      (t.1, t.2.1)
  let joint := exactPostselectedJointLaw G n S D
  have hlaw :
      exactLocallySampleableLaw G n S D =
        groupedMass code joint := by
    unfold exactLocallySampleableLaw
      exactSourcePushforward
    exact exactGroupedMass_decidableEq_irrel _ _ _ _
  have hcomp := congrFun
    (groupedMass_comp code projection joint) (i, x)
  have hprojection :
      projection ∘ code =
        (fun q : ExactJointOutcome X Y A B D =>
          (q.1.coordinate, q.2.1 q.1.coordinate.val)) := by
    funext q
    rfl
  rw [hprojection] at hcomp
  calc
    jointFirstMarginal
        (exactAliceInformationPosterior G n S D) (i, x) =
      groupedMass projection
        (exactLocallySampleableLaw G n S D) (i, x) :=
      exactAliceInformationPosterior_firstMarginal_pushforward
        G n S D i x
    _ = groupedMass projection (groupedMass code joint) (i, x) := by
      rw [hlaw]
    _ = groupedMass
        (fun q : ExactJointOutcome X Y A B D =>
          (q.1.coordinate, q.2.1 q.1.coordinate.val)) joint (i, x) :=
      hcomp
    _ = (1 / (Fintype.card (SourceRemainingCoordinate D) : ℝ)) *
        groupedMass
          (fun ω : ExactOutcome X Y A B n => ω.1 i.val)
          (repeatedConditionedOutcomeLaw G n S D) x := by
      exact exactIndependentCoordinateQuestion_marginal
        (repeatedConditionedOutcomeLaw G n S D)
        (fun ω : ExactOutcome X Y A B n =>
          fun j : SourceRemainingCoordinate D => ω.1 j.val) i x

theorem finiteProductMarginal_projection_relativeEntropy_le
    {Ω ι V : Type*} [Fintype Ω] [Fintype ι] [Fintype V]
    (posterior prior : Ω → ℝ) (projection : Ω → (ι → V))
    (q : ι → V → ℝ) (budget : ℝ)
    (posterior_nonnegative : ∀ ω, 0 ≤ posterior ω)
    (posterior_normalized : (∑ ω : Ω, posterior ω) = 1)
    (prior_nonnegative : ∀ ω, 0 ≤ prior ω)
    (absolute_continuity : ∀ ω, prior ω = 0 → posterior ω = 0)
    (coordinate_nonnegative : ∀ i v, 0 ≤ q i v)
    (coordinate_normalized : ∀ i, (∑ v : V, q i v) = 1)
    (actual_prior :
      groupedMass projection prior =
        finiteIndependentProductWeight q)
    (actual_budget : finiteRelativeEntropy posterior prior ≤ budget) :
    (∑ i : ι,
      finiteRelativeEntropy
        (finiteCoordinateMarginal
          (groupedMass projection posterior) i)
        (q i)) ≤ budget := by
  classical
  let projected := groupedMass projection posterior
  have hnonnegative (x : ι → V) : 0 ≤ projected x :=
    groupedMass_nonneg projection posterior
      posterior_nonnegative x
  have hnormalized : (∑ x : ι → V, projected x) = 1 := by
    dsimp [projected]
    rw [groupedMass_sum, posterior_normalized]
  have habsolute (x : ι → V) :
      finiteIndependentProductWeight q x = 0 → projected x = 0 := by
    intro hx
    have hprior : groupedMass projection prior x = 0 := by
      rw [actual_prior]
      exact hx
    exact groupedMass_absolute_continuity
      projection posterior prior prior_nonnegative
      absolute_continuity x hprior
  have htensor := finiteProductMarginal_relativeEntropy_le
    projected q hnonnegative hnormalized coordinate_nonnegative
    coordinate_normalized habsolute
  have hdpi := finite_relative_entropy_data_processing
    projection posterior prior posterior_nonnegative prior_nonnegative
    absolute_continuity
  rw [actual_prior] at hdpi
  exact htensor.trans (hdpi.trans actual_budget)

theorem repeatedAliceCoordinateInformation_sum_le
    (G : Game X Y A B) (n : ℕ) (S : Strategy (G.repeat n))
    (D : Finset (Fin n))
    (positive : 0 < repeatedPostselectionMass G n S D) :
    (∑ j : Fin n,
      finiteRelativeEntropy
        (finiteCoordinateMarginal
          (repeatedAlicePostselectedQuestionLaw G n S D) j)
        G.marginalX) ≤
      postselectionLogCost G n S D := by
  classical
  let posterior := repeatedConditionedOutcomeLaw G n S D
  let prior := (strategyEventLaw (G.repeat n) S).weight
  let projection :=
    fun ω : ExactOutcome X Y A B n => ω.1
  let q := fun _ : Fin n => G.marginalX
  have hposterior (ω : ExactOutcome X Y A B n) :
      0 ≤ posterior ω :=
    conditionedEventDistribution_nonneg
      (strategyEventLaw (G.repeat n) S)
      (FiniteEventLaw.winEvent (repeatedCoordinateWin G n) D)
      positive ω
  have hnormalized :
      (∑ ω : ExactOutcome X Y A B n, posterior ω) = 1 :=
    conditionedEventDistribution_sum
      (strategyEventLaw (G.repeat n) S)
      (FiniteEventLaw.winEvent (repeatedCoordinateWin G n) D)
      positive
  have hac (ω : ExactOutcome X Y A B n) :
      prior ω = 0 → posterior ω = 0 :=
    conditionedEventDistribution_absolute_continuity
      (strategyEventLaw (G.repeat n) S)
      (FiniteEventLaw.winEvent (repeatedCoordinateWin G n) D) ω
  have hprior :
      groupedMass projection prior =
        finiteIndependentProductWeight q := by
    funext xs
    exact repeatedAliceQuestionPrior_product G n S xs
  have hbudget :
      finiteRelativeEntropy posterior prior ≤
        postselectionLogCost G n S D := by
    exact le_of_eq
      (repeatedConditionedOutcomeLaw_relativeEntropy
        G n S D positive)
  have h := finiteProductMarginal_projection_relativeEntropy_le
    posterior prior projection q
    (postselectionLogCost G n S D)
    hposterior hnormalized
    (strategyEventLaw (G.repeat n) S).weight_nonneg hac
    (fun j x => G.marginalX_nonneg x)
    (fun j => G.marginalX_normalized)
    hprior hbudget
  have hprojected :
      groupedMass projection posterior =
        repeatedAlicePostselectedQuestionLaw G n S D := by
    unfold repeatedAlicePostselectedQuestionLaw
    exact exactGroupedMass_decidableEq_irrel _ _ _ _
  rw [hprojected] at h
  exact h

theorem finiteCoordinateMarginal_groupedMass
    {Ω ι V : Type*} [Fintype Ω] [Fintype ι] [Fintype V]
    (projection : Ω → (ι → V)) (mass : Ω → ℝ)
    (i : ι) (v : V) :
    finiteCoordinateMarginal
        (groupedMass projection mass) i v =
      groupedMass (fun ω : Ω => projection ω i) mass v := by
  classical
  let eval : (ι → V) → V := fun x => x i
  have h := congrFun
    (groupedMass_comp projection eval mass) v
  unfold finiteCoordinateMarginal
  have hleft :
      groupedMass (fun x : ι → V => x i)
          (groupedMass projection mass) v =
        @groupedMass (ι → V) inferInstance V
          (fun a b => Classical.propDecidable (a = b))
          eval (groupedMass projection mass) v := by
    exact congrFun
      (exactGroupedMass_decidableEq_irrel _ _
        eval (groupedMass projection mass)) v
  have hright :
      @groupedMass Ω inferInstance V
          (fun a b => Classical.propDecidable (a = b))
          (eval ∘ projection) mass v =
        groupedMass (fun ω : Ω => projection ω i) mass v := by
    exact congrFun
      (exactGroupedMass_decidableEq_irrel _ _
        (fun ω : Ω => projection ω i) mass) v
  exact hleft.trans (h.trans hright)

theorem finiteUniformCoordinate_relativeEntropy
    {ι V : Type*} [Fintype ι] [Fintype V]
    (positive : 0 < Fintype.card ι)
    (posterior : ι → V → ℝ) (prior : V → ℝ) :
    finiteRelativeEntropy
        (fun t : ι × V =>
          (1 / (Fintype.card ι : ℝ)) * posterior t.1 t.2)
        (fun t : ι × V =>
          (1 / (Fintype.card ι : ℝ)) * prior t.2) =
      (1 / (Fintype.card ι : ℝ)) *
        ∑ i : ι, finiteRelativeEntropy (posterior i) prior := by
  classical
  have hcard : (Fintype.card ι : ℝ) ≠ 0 := by
    exact_mod_cast (Nat.ne_of_gt positive)
  have huniform : (1 / (Fintype.card ι : ℝ)) ≠ 0 :=
    one_div_ne_zero hcard
  unfold finiteRelativeEntropy
  rw [Fintype.sum_prod_type]
  rw [Finset.mul_sum]
  apply Finset.sum_congr rfl
  intro i _
  rw [Finset.mul_sum]
  apply Finset.sum_congr rfl
  intro v _
  rw [mul_div_mul_left _ _ huniform]
  ring

theorem repeatedAlicePostselectedQuestionLaw_nonneg
    (G : Game X Y A B) (n : ℕ) (S : Strategy (G.repeat n))
    (D : Finset (Fin n))
    (positive : 0 < repeatedPostselectionMass G n S D)
    (xs : Fin n → X) :
    0 ≤ repeatedAlicePostselectedQuestionLaw G n S D xs := by
  classical
  unfold repeatedAlicePostselectedQuestionLaw
  apply groupedMass_nonneg
  intro ω
  exact conditionedEventDistribution_nonneg
    (strategyEventLaw (G.repeat n) S)
    (FiniteEventLaw.winEvent (repeatedCoordinateWin G n) D)
    positive ω

theorem repeatedAlicePostselectedCoordinateMarginal
    (G : Game X Y A B) (n : ℕ) (S : Strategy (G.repeat n))
    (D : Finset (Fin n)) (j : Fin n) (x : X) :
    finiteCoordinateMarginal
        (repeatedAlicePostselectedQuestionLaw G n S D) j x =
      groupedMass
        (fun ω : ExactOutcome X Y A B n => ω.1 j)
        (repeatedConditionedOutcomeLaw G n S D) x := by
  classical
  let projection :=
    fun ω : ExactOutcome X Y A B n => ω.1
  let posterior := repeatedConditionedOutcomeLaw G n S D
  have hlaw :
      repeatedAlicePostselectedQuestionLaw G n S D =
        groupedMass projection posterior := by
    unfold repeatedAlicePostselectedQuestionLaw
    exact exactGroupedMass_decidableEq_irrel _ _ _ _
  rw [hlaw]
  exact finiteCoordinateMarginal_groupedMass
    projection posterior j x

theorem exactAliceSourceMarginalInformation_eq
    (G : Game X Y A B) (n : ℕ) (S : Strategy (G.repeat n))
    (D : Finset (Fin n))
    (remaining : 0 < (Finset.univ \ D).card)
    (base : ExactHistoryFlag X Y A B D) :
    exactAliceSourceMarginalInformation G n S D base =
      (1 / (Fintype.card (SourceRemainingCoordinate D) : ℝ)) *
        ∑ i : SourceRemainingCoordinate D,
          finiteRelativeEntropy
            (finiteCoordinateMarginal
              (repeatedAlicePostselectedQuestionLaw G n S D)
              i.val)
            G.marginalX := by
  classical
  let posterior := repeatedAlicePostselectedQuestionLaw G n S D
  have hposterior :
      jointFirstMarginal
          (exactAliceInformationPosterior G n S D) =
        (fun t : SourceRemainingCoordinate D × X =>
          (1 / (Fintype.card (SourceRemainingCoordinate D) : ℝ)) *
            finiteCoordinateMarginal posterior t.1.val t.2) := by
    funext t
    rcases t with ⟨i, x⟩
    rw [exactAliceInformationPosterior_firstMarginal]
    congr 1
    exact (repeatedAlicePostselectedCoordinateMarginal
      G n S D i.val x).symm
  have hreference :
      jointFirstMarginal
          (exactAliceInformationReference G n S D base) =
        (fun t : SourceRemainingCoordinate D × X =>
          (1 / (Fintype.card (SourceRemainingCoordinate D) : ℝ)) *
            G.marginalX t.2) := by
    funext t
    rcases t with ⟨i, x⟩
    rw [exactAliceInformationReference_firstMarginal]
    change G.marginalX x /
      (Fintype.card (SourceRemainingCoordinate D) : ℝ) = _
    ring
  unfold exactAliceSourceMarginalInformation
  rw [hposterior, hreference]
  exact finiteUniformCoordinate_relativeEntropy
    (exactRemainingCoordinate_card_pos D remaining)
    (fun i : SourceRemainingCoordinate D =>
      finiteCoordinateMarginal posterior i.val)
    G.marginalX

theorem sourceRemaining_nonnegative_sum_le
    {n : ℕ} (D : Finset (Fin n)) (f : Fin n → ℝ)
    (nonnegative : ∀ j, 0 ≤ f j) :
    (∑ i : SourceRemainingCoordinate D, f i.val) ≤
      ∑ j : Fin n, f j := by
  classical
  change
    (∑ i ∈ (Finset.univ \ D).attach, f i.val) ≤
      ∑ j : Fin n, f j
  rw [Finset.sum_attach]
  exact Finset.sum_le_sum_of_subset_of_nonneg
    (Finset.subset_univ (Finset.univ \ D))
    (fun j _ _ => nonnegative j)

end

end QuantumParallelRepetition


open QuantumParallelRepetition
open scoped ComplexOrder Matrix BigOperators InnerProductSpace
open Complex Matrix Finset
open scoped BigOperators
set_option backward.isDefEq.respectTransparency false
set_option maxHeartbeats 2200000
set_option maxRecDepth 2048
open QuantumParallelRepetition.Pinsker
open QuantumParallelRepetition.ClassicalInformation
attribute [local instance] Classical.propDecidable
variable {X Y A B : Type*}
variable [Fintype X] [Fintype Y] [Fintype A] [Fintype B]

theorem solution
    (G : Game X Y A B) (n : ℕ) (S : Strategy (G.repeat n))
    (D : Finset (Fin n))
    (remaining : 0 < (Finset.univ \ D).card)
    (positive : 0 < repeatedPostselectionMass G n S D)
    (base : ExactHistoryFlag X Y A B D) :
    exactAliceSourceMarginalInformation G n S D base ≤
      postselectionLogCost G n S D /
        ((Finset.univ \ D).card : ℝ) := by
  classical
  let posterior := repeatedAlicePostselectedQuestionLaw G n S D
  let coordinateInfo : Fin n → ℝ := fun j =>
    finiteRelativeEntropy
      (finiteCoordinateMarginal posterior j) G.marginalX
  have hnonnegative (j : Fin n) : 0 ≤ coordinateInfo j := by
    exact finiteRelativeEntropy_nonneg
      (finiteCoordinateMarginal posterior j) G.marginalX
      (fun x => finiteCoordinateMarginal_nonneg
        posterior
        (repeatedAlicePostselectedQuestionLaw_nonneg
          G n S D positive) j x)
      G.marginalX_nonneg
  have hremaining :
      (∑ i : SourceRemainingCoordinate D, coordinateInfo i.val) ≤
        postselectionLogCost G n S D := by
    exact
      (sourceRemaining_nonnegative_sum_le
        D coordinateInfo hnonnegative).trans
      (repeatedAliceCoordinateInformation_sum_le
        G n S D positive)
  have hcard :
      Fintype.card (SourceRemainingCoordinate D) =
        (Finset.univ \ D).card := by
    simp
  calc
    exactAliceSourceMarginalInformation G n S D base =
      (1 / (Fintype.card (SourceRemainingCoordinate D) : ℝ)) *
        ∑ i : SourceRemainingCoordinate D, coordinateInfo i.val :=
      exactAliceSourceMarginalInformation_eq
        G n S D remaining base
    _ ≤ (1 / (Fintype.card (SourceRemainingCoordinate D) : ℝ)) *
        postselectionLogCost G n S D := by
      exact mul_le_mul_of_nonneg_left hremaining
        (one_div_nonneg.mpr (Nat.cast_nonneg _))
    _ = postselectionLogCost G n S D /
        ((Finset.univ \ D).card : ℝ) := by
      rw [hcard]
      ring
