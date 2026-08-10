import Definitions.Def_quantum_parallel_repetition_game
import Definitions.Def_qpr_core_26
import Theorems.Thm_QuantumParallelRepetition_trace_mul_posSemidef_nonneg
import Theorems.Thm_QuantumParallelRepetition_positiveMatrixSpectralAtom_posSemidef
import Theorems.Thm_QuantumParallelRepetition_positiveMatrixSpectralAtom_sum
import Theorems.Thm_QuantumParallelRepetition_exactAliceQuestionFilter_posSemidef
import Theorems.Thm_QuantumParallelRepetition_exactBobQuestionFilter_posSemidef
import Theorems.Thm_QuantumParallelRepetition_exactFairAcceptedJointStatistic_reindex
import Theorems.Thm_QuantumParallelRepetition_exactReverseBobLowQuestionPotential_eq_alignedPrefix
import Theorems.Thm_QuantumParallelRepetition_exactReverseBobHighQuestionPotential_eq_alignedPrefix
import Theorems.Thm_QuantumParallelRepetition_exactReverseBobFilterOperatorMarkerEntropy_sum_telescope
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

end Game

end

noncomputable section

open scoped BigOperators

variable {ι : Type*}

theorem negMulLog_rescale
    {W p : ℝ} (hW : 0 < W) (hp : 0 < p) :
    W * Real.negMulLog (p / W) = p * Real.log (W / p) := by
  unfold Real.negMulLog
  rw [Real.log_div hp.ne' hW.ne', Real.log_div hW.ne' hp.ne']
  field_simp
  ring

theorem finite_weighted_entropy_le
    (s : Finset ι) (w h : ι → ℝ) {W p : ℝ}
    (hw : ∀ i ∈ s, 0 ≤ w i)
    (hh : ∀ i ∈ s, 0 ≤ h i)
    (hW : 0 < W)
    (hp : 0 < p)
    (hw_sum : (∑ i ∈ s, w i) = W)
    (hp_sum : (∑ i ∈ s, w i * h i) = p) :
    (∑ i ∈ s, w i * Real.negMulLog (h i))
      ≤ p * Real.log (W / p) := by
  classical
  have h_normalized :
      (∑ i ∈ s, w i / W) = 1 := by
    calc
      (∑ i ∈ s, w i / W) = (∑ i ∈ s, w i) / W := by
        rw [Finset.sum_div]
      _ = W / W := by rw [hw_sum]
      _ = 1 := div_self hW.ne'
  have h_mean :
      (∑ i ∈ s, (w i / W) * h i) = p / W := by
    calc
      (∑ i ∈ s, (w i / W) * h i) =
          ∑ i ∈ s, (w i * h i) / W := by
            apply Finset.sum_congr rfl
            intro i hi
            ring
      _ = (∑ i ∈ s, w i * h i) / W := by
            rw [Finset.sum_div]
      _ = p / W := by rw [hp_sum]
  have h_jensen :
      (∑ i ∈ s, (w i / W) * Real.negMulLog (h i))
        ≤ Real.negMulLog (∑ i ∈ s, (w i / W) * h i) := by
    simpa only [smul_eq_mul] using
      (Real.concaveOn_negMulLog.le_map_sum
        (t := s) (w := fun i => w i / W) (p := h)
        (fun i hi => div_nonneg (hw i hi) hW.le)
        h_normalized
        (fun i hi => show h i ∈ Set.Ici (0 : ℝ) from hh i hi))
  calc
    (∑ i ∈ s, w i * Real.negMulLog (h i)) =
        W * (∑ i ∈ s, (w i / W) * Real.negMulLog (h i)) := by
          rw [Finset.mul_sum]
          apply Finset.sum_congr rfl
          intro i hi
          field_simp
    _ ≤ W * Real.negMulLog (∑ i ∈ s, (w i / W) * h i) :=
          mul_le_mul_of_nonneg_left h_jensen hW.le
    _ = W * Real.negMulLog (p / W) := by rw [h_mean]
    _ = p * Real.log (W / p) := negMulLog_rescale hW hp

theorem finite_weighted_entropy_le_of_weight_bound
    (s : Finset ι) (w h : ι → ℝ) {W N p : ℝ}
    (hw : ∀ i ∈ s, 0 ≤ w i)
    (hh : ∀ i ∈ s, 0 ≤ h i)
    (hW : 0 < W)
    (hp : 0 < p)
    (hw_sum : (∑ i ∈ s, w i) = W)
    (hp_sum : (∑ i ∈ s, w i * h i) = p)
    (hWN : W ≤ N) :
    (∑ i ∈ s, w i * Real.negMulLog (h i))
      ≤ p * Real.log (N / p) := by
  have hquot : W / p ≤ N / p := by
    exact (div_le_div_iff_of_pos_right hp).mpr hWN
  have hlog : Real.log (W / p) ≤ Real.log (N / p) :=
    Real.log_le_log (div_pos hW hp) hquot
  exact
    (finite_weighted_entropy_le s w h hw hh hW hp hw_sum hp_sum).trans
      (mul_le_mul_of_nonneg_left hlog hp.le)

end

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

open scoped BigOperators Kronecker

namespace Game

variable {X Y A B : Type*}
variable [Fintype X] [Fintype Y] [Fintype A] [Fintype B]

theorem questionWeight_le_marginalX
    (G : Game X Y A B) (x : X) (y : Y) :
    G.questionWeight x y ≤ G.marginalX x := by
  unfold marginalX
  exact Finset.single_le_sum
    (fun y _ => G.weight_nonneg x y)
    (Finset.mem_univ y)

theorem conditionalYGivenX_nonneg
    (G : Game X Y A B) (x : X) (y : Y) :
    0 ≤ G.conditionalYGivenX x y := by
  exact div_nonneg (G.weight_nonneg x y)
    (G.marginalX_nonneg x)

theorem marginalX_mul_conditionalYGivenX
    (G : Game X Y A B) (x : X) (y : Y) :
    G.marginalX x * G.conditionalYGivenX x y =
      G.questionWeight x y := by
  unfold conditionalYGivenX
  by_cases hx : G.marginalX x = 0
  · have hzero : G.questionWeight x y = 0 := by
      have hle := G.questionWeight_le_marginalX x y
      have hnonneg := G.weight_nonneg x y
      rw [hx] at hle
      linarith
    simp [hx, hzero]
  · field_simp

theorem conditionalYGivenX_sum
    (G : Game X Y A B) (x : X)
    (hx : 0 < G.marginalX x) :
    (∑ y : Y, G.conditionalYGivenX x y) = 1 := by
  unfold conditionalYGivenX
  rw [← Finset.sum_div]
  change G.marginalX x / G.marginalX x = 1
  exact div_self hx.ne'

end Game

section RepeatedQuantumFilters

open scoped ComplexOrder MatrixOrder

variable {X Y A B : Type*}
variable [Fintype X] [Fintype Y] [Fintype A] [Fintype B]

theorem conditionedAliceEffect_complement_positive
    (G : Game X Y A B) (n : ℕ)
    (S : Strategy (G.repeat n))
    (D : Finset (Fin n))
    (α : {i : Fin n // i ∈ D} → A)
    (xs : Fin n → X) :
    (1 - conditionedAliceEffect G n S D α xs).PosSemidef := by
  classical
  have hsplit :
      1 - conditionedAliceEffect G n S D α xs =
        ∑ answers : Fin n → A,
          if ∀ (i : Fin n) (hi : i ∈ D),
            answers i = α ⟨i, hi⟩
          then 0
          else (S.aliceMeasurement xs).operator answers := by
    unfold conditionedAliceEffect
    rw [← (S.aliceMeasurement xs).complete,
      ← Finset.sum_sub_distrib]
    apply Finset.sum_congr rfl
    intro answers _
    split_ifs <;> simp
  rw [hsplit]
  apply Matrix.posSemidef_sum Finset.univ
  intro answers _
  split_ifs
  · exact Matrix.PosSemidef.zero
  · exact (S.aliceMeasurement xs).positive answers

theorem conditionedBobEffect_complement_positive
    (G : Game X Y A B) (n : ℕ)
    (S : Strategy (G.repeat n))
    (D : Finset (Fin n))
    (β : {i : Fin n // i ∈ D} → B)
    (ys : Fin n → Y) :
    (1 - conditionedBobEffect G n S D β ys).PosSemidef := by
  classical
  have hsplit :
      1 - conditionedBobEffect G n S D β ys =
        ∑ answers : Fin n → B,
          if ∀ (i : Fin n) (hi : i ∈ D),
            answers i = β ⟨i, hi⟩
          then 0
          else (S.bobMeasurement ys).operator answers := by
    unfold conditionedBobEffect
    rw [← (S.bobMeasurement ys).complete,
      ← Finset.sum_sub_distrib]
    apply Finset.sum_congr rfl
    intro answers _
    split_ifs <;> simp
  rw [hsplit]
  apply Matrix.posSemidef_sum Finset.univ
  intro answers _
  split_ifs
  · exact Matrix.PosSemidef.zero
  · exact (S.bobMeasurement ys).positive answers

end RepeatedQuantumFilters

end

noncomputable section

open Matrix
open scoped BigOperators Kronecker ComplexOrder MatrixOrder

set_option backward.isDefEq.respectTransparency false
set_option maxHeartbeats 600000

section HistoryContractions

variable {X Y A B : Type*}
variable [Fintype X] [Fintype Y] [Fintype A] [Fintype B]

theorem Game.conditionalYGivenX_sum_le_one
    (G : Game X Y A B) (x : X) :
    (∑ y : Y, G.conditionalYGivenX x y) ≤ 1 := by
  by_cases hx : G.marginalX x = 0
  · simp [Game.conditionalYGivenX, hx]
  · have hpos : 0 < G.marginalX x :=
      lt_of_le_of_ne (G.marginalX_nonneg x) (Ne.symm hx)
    rw [G.conditionalYGivenX_sum x hpos]

theorem matrixLogEntropy_nonpos_of_contraction
    {d : Type*} [Fintype d] [DecidableEq d]
    {F : Matrix d d ℂ}
    (hF : F.PosSemidef)
    (hcomplement : (1 - F).PosSemidef) :
    (-(cfc (fun z : ℝ => z * Real.log z) F)).PosSemidef := by
  have hFle : F ≤ (1 : Matrix d d ℂ) :=
    Matrix.le_iff.mpr hcomplement
  have hupper : ∀ z ∈ spectrum ℝ F, z ≤ 1 :=
    (CFC.le_one_iff (R := ℝ) F hF.isHermitian).mp hFle
  have hlower : ∀ z ∈ spectrum ℝ F, 0 ≤ z := by
    intro z hz
    rw [hF.isHermitian.spectrum_real_eq_range_eigenvalues] at hz
    obtain ⟨i, rfl⟩ := hz
    exact hF.eigenvalues_nonneg i
  have hnonpos : cfc (fun z : ℝ => z * Real.log z) F ≤
      (0 : Matrix d d ℂ) := by
    apply cfc_nonpos
    intro z hz
    exact Real.mul_log_nonpos (hlower z hz) (hupper z hz)
  simpa using Matrix.le_iff.mp hnonpos

theorem matrixLogEntropy_born_nonpos_right
    {dA dB : Type*}
    [Fintype dA] [Fintype dB]
    [DecidableEq dA] [DecidableEq dB]
    (ρ : DensityMatrix (dA × dB))
    (F : Matrix dA dA ℂ)
    (G : Matrix dB dB ℂ)
    (hF : F.PosSemidef)
    (hG : G.PosSemidef)
    (hGcomplement : (1 - G).PosSemidef) :
    bornTracePairing ρ.matrix F
        (cfc (fun z : ℝ => z * Real.log z) G) ≤ 0 := by
  have hneg := matrixLogEntropy_nonpos_of_contraction hG hGcomplement
  have hpair : 0 ≤ bornTracePairing ρ.matrix F
      (-(cfc (fun z : ℝ => z * Real.log z) G)) := by
    exact trace_mul_posSemidef_nonneg ρ.positive (hF.kronecker hneg)
  have hrewrite : bornTracePairing ρ.matrix F
      (-(cfc (fun z : ℝ => z * Real.log z) G)) =
      -bornTracePairing ρ.matrix F
        (cfc (fun z : ℝ => z * Real.log z) G) :=
    (bornTracePairing ρ.matrix F).map_neg _
  rw [hrewrite] at hpair
  exact neg_nonneg.mp hpair

end HistoryContractions

theorem positiveMatrix_cfc_spectral_sum
    {d : Type*} [Fintype d] [DecidableEq d]
    (F : Matrix d d ℂ) (hF : F.PosSemidef)
    (f : ℝ → ℝ) :
    cfc f F =
      ∑ i : d,
        f (hF.isHermitian.eigenvalues i) •
          positiveMatrixSpectralAtom F hF i := by
  classical
  let U := hF.isHermitian.eigenvectorUnitary
  let eigenvalue := hF.isHermitian.eigenvalues
  have hdiag :
      (∑ i : d,
        f (eigenvalue i) •
          Matrix.diagonal (Pi.single i (1 : ℂ))) =
        Matrix.diagonal fun i => (f (eigenvalue i) : ℂ) := by
    ext j k
    by_cases hjk : j = k
    · subst k
      simp [Matrix.sum_apply, Pi.single_apply]
    · simp [Matrix.sum_apply,         hjk]
  calc
    cfc f F =
        spectralConjugationCLM U
          (Matrix.diagonal fun i => (f (eigenvalue i) : ℂ)) := by
      rw [hF.isHermitian.cfc_eq]
      rfl
    _ = spectralConjugationCLM U
          (∑ i : d,
            f (eigenvalue i) •
              Matrix.diagonal (Pi.single i (1 : ℂ))) := by
      rw [hdiag]
    _ = ∑ i : d,
        f (eigenvalue i) •
          positiveMatrixSpectralAtom F hF i := by
      simp [positiveMatrixSpectralAtom, U, eigenvalue]

theorem bornTracePairing_one_one
    {dA dB : Type*}
    [Fintype dA] [Fintype dB]
    [DecidableEq dA] [DecidableEq dB]
    (ρ : DensityMatrix (dA × dB)) :
    bornTracePairing ρ.matrix
      (1 : Matrix dA dA ℂ) (1 : Matrix dB dB ℂ) = 1 := by
  simp [bornTracePairing, ρ.trace_one]

theorem positiveContraction_eigenvalue_le_one
    {d : Type*} [Fintype d] [DecidableEq d]
    (F : Matrix d d ℂ) (hF : F.PosSemidef)
    (hcomplement : (1 - F).PosSemidef)
    (i : d) :
    hF.isHermitian.eigenvalues i ≤ 1 := by
  have hFle : F ≤ (1 : Matrix d d ℂ) :=
    Matrix.le_iff.mpr hcomplement
  have hspectrum : ∀ z ∈ spectrum ℝ F, z ≤ 1 :=
    (CFC.le_one_iff (R := ℝ) F hF.isHermitian).mp hFle
  exact hspectrum _ (hF.isHermitian.eigenvalues_mem_spectrum_real i)

end

open scoped ComplexOrder Matrix BigOperators InnerProductSpace
open Complex Matrix Finset

noncomputable section

open Matrix
open scoped BigOperators Kronecker ComplexOrder MatrixOrder

set_option backward.isDefEq.respectTransparency false
set_option maxHeartbeats 800000

theorem rightSpectralBornWeight_nonneg
    {dA dB : Type*}
    [Fintype dA] [Fintype dB]
    [DecidableEq dA] [DecidableEq dB]
    (ρ : DensityMatrix (dA × dB))
    (F : Matrix dA dA ℂ) (hF : F.PosSemidef)
    (G : Matrix dB dB ℂ) (hG : G.PosSemidef)
    (i : dB) :
    0 ≤ rightSpectralBornWeight ρ F G hG i := by
  exact trace_mul_posSemidef_nonneg ρ.positive
    (hF.kronecker (positiveMatrixSpectralAtom_posSemidef G hG i))

theorem rightSpectralBornWeight_sum
    {dA dB : Type*}
    [Fintype dA] [Fintype dB]
    [DecidableEq dA] [DecidableEq dB]
    (ρ : DensityMatrix (dA × dB))
    (F : Matrix dA dA ℂ)
    (G : Matrix dB dB ℂ) (hG : G.PosSemidef) :
    (∑ i : dB, rightSpectralBornWeight ρ F G hG i) =
      bornTracePairing ρ.matrix F (1 : Matrix dB dB ℂ) := by
  unfold rightSpectralBornWeight
  calc
    (∑ i : dB,
      bornTracePairing ρ.matrix F
        (positiveMatrixSpectralAtom G hG i)) =
      bornTracePairing ρ.matrix F
        (∑ i : dB, positiveMatrixSpectralAtom G hG i) := by
          simp [map_sum]
    _ = bornTracePairing ρ.matrix F (1 : Matrix dB dB ℂ) := by
      rw [positiveMatrixSpectralAtom_sum]

theorem rightSpectralBornWeight_moment
    {dA dB : Type*}
    [Fintype dA] [Fintype dB]
    [DecidableEq dA] [DecidableEq dB]
    (ρ : DensityMatrix (dA × dB))
    (F : Matrix dA dA ℂ)
    (G : Matrix dB dB ℂ) (hG : G.PosSemidef) :
    (∑ i : dB,
      rightSpectralBornWeight ρ F G hG i *
        hG.isHermitian.eigenvalues i) =
      bornTracePairing ρ.matrix F G := by
  have hspectral : G =
      ∑ i : dB,
        hG.isHermitian.eigenvalues i •
          positiveMatrixSpectralAtom G hG i := by
    calc
      G = cfc (fun z : ℝ => z) G :=
        (cfc_id' ℝ G hG.isHermitian).symm
      _ = _ := positiveMatrix_cfc_spectral_sum G hG (fun z : ℝ => z)
  have h := congrArg (bornTracePairing ρ.matrix F) hspectral
  simp only [map_sum, map_smul, smul_eq_mul] at h
  calc
    (∑ i : dB,
      rightSpectralBornWeight ρ F G hG i *
        hG.isHermitian.eigenvalues i) =
      ∑ i : dB,
        hG.isHermitian.eigenvalues i *
          bornTracePairing ρ.matrix F
            (positiveMatrixSpectralAtom G hG i) := by
        apply Finset.sum_congr rfl
        intro i _
        unfold rightSpectralBornWeight
        ring
    _ = bornTracePairing ρ.matrix F G := h.symm

theorem rightSpectralBornWeight_entropy
    {dA dB : Type*}
    [Fintype dA] [Fintype dB]
    [DecidableEq dA] [DecidableEq dB]
    (ρ : DensityMatrix (dA × dB))
    (F : Matrix dA dA ℂ)
    (G : Matrix dB dB ℂ) (hG : G.PosSemidef) :
    bornTracePairing ρ.matrix F
        (cfc (fun z : ℝ => z * Real.log z) G) =
      ∑ i : dB,
        rightSpectralBornWeight ρ F G hG i *
          (hG.isHermitian.eigenvalues i *
            Real.log (hG.isHermitian.eigenvalues i)) := by
  have hspectral := positiveMatrix_cfc_spectral_sum G hG
    (fun z : ℝ => z * Real.log z)
  have h := congrArg (bornTracePairing ρ.matrix F) hspectral
  simp only [map_sum, map_smul, smul_eq_mul] at h
  calc
    bornTracePairing ρ.matrix F
        (cfc (fun z : ℝ => z * Real.log z) G) =
      ∑ i : dB,
        (hG.isHermitian.eigenvalues i *
          Real.log (hG.isHermitian.eigenvalues i)) *
          bornTracePairing ρ.matrix F
            (positiveMatrixSpectralAtom G hG i) := h
    _ = _ := by
      apply Finset.sum_congr rfl
      intro i _
      unfold rightSpectralBornWeight
      ring

theorem rightSpectralBornWeight_negEntropy
    {dA dB : Type*}
    [Fintype dA] [Fintype dB]
    [DecidableEq dA] [DecidableEq dB]
    (ρ : DensityMatrix (dA × dB))
    (F : Matrix dA dA ℂ)
    (G : Matrix dB dB ℂ) (hG : G.PosSemidef) :
    -bornTracePairing ρ.matrix F
        (cfc (fun z : ℝ => z * Real.log z) G) =
      ∑ i : dB,
        rightSpectralBornWeight ρ F G hG i *
          Real.negMulLog (hG.isHermitian.eigenvalues i) := by
  rw [rightSpectralBornWeight_entropy ρ F G hG,
    ← Finset.sum_neg_distrib]
  apply Finset.sum_congr rfl
  intro i _
  simp [Real.negMulLog]

theorem bornTracePairing_le_one_one
    {dA dB : Type*}
    [Fintype dA] [Fintype dB]
    [DecidableEq dA] [DecidableEq dB]
    (ρ : DensityMatrix (dA × dB))
    (F : Matrix dA dA ℂ)
    (hFcomplement : (1 - F).PosSemidef) :
    bornTracePairing ρ.matrix F (1 : Matrix dB dB ℂ) ≤ 1 := by
  have hpositive : 0 ≤ bornTracePairing ρ.matrix
      (1 - F) (1 : Matrix dB dB ℂ) :=
    trace_mul_posSemidef_nonneg ρ.positive
      (hFcomplement.kronecker Matrix.PosSemidef.one)
  have hdiff : bornTracePairing ρ.matrix
      (1 - F) (1 : Matrix dB dB ℂ) =
      bornTracePairing ρ.matrix
        (1 : Matrix dA dA ℂ) (1 : Matrix dB dB ℂ) -
      bornTracePairing ρ.matrix F (1 : Matrix dB dB ℂ) := by
    simp
  rw [hdiff, bornTracePairing_one_one] at hpositive
  linarith

theorem matrixLogEntropy_born_lower_bound_right
    {dA dB : Type*}
    [Fintype dA] [Fintype dB]
    [DecidableEq dA] [DecidableEq dB]
    (ρ : DensityMatrix (dA × dB))
    (F : Matrix dA dA ℂ) (hF : F.PosSemidef)
    (hFcomplement : (1 - F).PosSemidef)
    (G : Matrix dB dB ℂ) (hG : G.PosSemidef)
    (hGcomplement : (1 - G).PosSemidef) :
    -bornTracePairing ρ.matrix F
        (cfc (fun z : ℝ => z * Real.log z) G) ≤
      Real.negMulLog (bornTracePairing ρ.matrix F G) := by
  classical
  have hp_nonneg : 0 ≤ bornTracePairing ρ.matrix F G :=
    trace_mul_posSemidef_nonneg ρ.positive (hF.kronecker hG)
  have hmass_le :
      bornTracePairing ρ.matrix F G ≤
        bornTracePairing ρ.matrix F (1 : Matrix dB dB ℂ) := by
    calc
      bornTracePairing ρ.matrix F G =
        ∑ i : dB,
          rightSpectralBornWeight ρ F G hG i *
            hG.isHermitian.eigenvalues i :=
          (rightSpectralBornWeight_moment ρ F G hG).symm
      _ ≤ ∑ i : dB, rightSpectralBornWeight ρ F G hG i := by
        apply Finset.sum_le_sum
        intro i _
        exact mul_le_of_le_one_right
          (rightSpectralBornWeight_nonneg ρ F hF G hG i)
          (positiveContraction_eigenvalue_le_one G hG hGcomplement i)
      _ = bornTracePairing ρ.matrix F (1 : Matrix dB dB ℂ) :=
        rightSpectralBornWeight_sum ρ F G hG
  by_cases hp : bornTracePairing ρ.matrix F G = 0
  · have hzero :
        (∑ i : dB,
          rightSpectralBornWeight ρ F G hG i *
            hG.isHermitian.eigenvalues i) = 0 := by
        rw [rightSpectralBornWeight_moment, hp]
    have hterm (i : dB) :
        rightSpectralBornWeight ρ F G hG i *
          hG.isHermitian.eigenvalues i = 0 :=
      (Finset.sum_eq_zero_iff_of_nonneg
        (fun j _ => mul_nonneg
          (rightSpectralBornWeight_nonneg ρ F hF G hG j)
          (hG.eigenvalues_nonneg j))).mp hzero i (Finset.mem_univ i)
    have hentropy :
        (∑ i : dB,
          rightSpectralBornWeight ρ F G hG i *
            Real.negMulLog (hG.isHermitian.eigenvalues i)) = 0 := by
      apply Finset.sum_eq_zero
      intro i _
      rcases mul_eq_zero.mp (hterm i) with hw | he
      · simp [hw]
      · simp [he]
    calc
      -bornTracePairing ρ.matrix F
          (cfc (fun z : ℝ => z * Real.log z) G) =
        ∑ i : dB,
          rightSpectralBornWeight ρ F G hG i *
            Real.negMulLog (hG.isHermitian.eigenvalues i) :=
          rightSpectralBornWeight_negEntropy ρ F G hG
      _ = 0 := hentropy
      _ ≤ Real.negMulLog (bornTracePairing ρ.matrix F G) := by
        rw [hp]
        simp
  · have hp_pos : 0 < bornTracePairing ρ.matrix F G :=
      lt_of_le_of_ne hp_nonneg (Ne.symm hp)
    have hW_pos : 0 <
        bornTracePairing ρ.matrix F (1 : Matrix dB dB ℂ) :=
      lt_of_lt_of_le hp_pos hmass_le
    have hscalar := finite_weighted_entropy_le_of_weight_bound
      (Finset.univ : Finset dB)
      (rightSpectralBornWeight ρ F G hG)
      hG.isHermitian.eigenvalues
      (W := bornTracePairing ρ.matrix F (1 : Matrix dB dB ℂ))
      (N := (1 : ℝ))
      (p := bornTracePairing ρ.matrix F G)
      (fun i _ => rightSpectralBornWeight_nonneg ρ F hF G hG i)
      (fun i _ => hG.eigenvalues_nonneg i)
      hW_pos hp_pos
      (rightSpectralBornWeight_sum ρ F G hG)
      (rightSpectralBornWeight_moment ρ F G hG)
      (bornTracePairing_le_one_one ρ F hFcomplement)
    calc
      -bornTracePairing ρ.matrix F
          (cfc (fun z : ℝ => z * Real.log z) G) =
        ∑ i : dB,
          rightSpectralBornWeight ρ F G hG i *
            Real.negMulLog (hG.isHermitian.eigenvalues i) :=
        rightSpectralBornWeight_negEntropy ρ F G hG
      _ ≤ bornTracePairing ρ.matrix F G *
          Real.log (1 / bornTracePairing ρ.matrix F G) := hscalar
      _ = Real.negMulLog (bornTracePairing ρ.matrix F G) := by
        rw [one_div, Real.log_inv]
        simp [Real.negMulLog]

end

noncomputable section

open WithLp
open scoped BigOperators ComplexOrder Kronecker MatrixOrder
  Matrix.Norms.L2Operator InnerProductSpace

set_option backward.isDefEq.respectTransparency false
set_option maxHeartbeats 1800000
set_option maxRecDepth 2048

attribute [local instance] Classical.propDecidable

variable {X Y A B : Type*}
variable [Fintype X] [Fintype Y] [Fintype A] [Fintype B]

theorem exactPriorQuestionWeight_nonneg
    (G : Game X Y A B) (n : ℕ)
    (q : ExactFullQuestion X Y n) :
    0 ≤ exactPriorQuestionWeight G n q :=
  (G.repeat n).weight_nonneg q.1 q.2

theorem exactRevealMass_nonneg
    (G : Game X Y A B) (n : ℕ)
    (D : Finset (Fin n))
    (seed : ExactRemainingSeed D)
    (history : ExactRevealHistory X Y D seed) :
    0 ≤ exactRevealMass G n D seed history := by
  unfold exactRevealMass
  apply Finset.sum_nonneg
  intro q _
  split
  · exact exactPriorQuestionWeight_nonneg G n q
  · exact le_rfl

theorem exactAliceQuestionMass_nonneg
    (G : Game X Y A B) (n : ℕ)
    (D : Finset (Fin n))
    (seed : ExactRemainingSeed D)
    (history : ExactRevealHistory X Y D seed)
    (x : X) :
    0 ≤ exactAliceQuestionMass G n D seed history x := by
  unfold exactAliceQuestionMass
  apply Finset.sum_nonneg
  intro q _
  split
  · exact exactPriorQuestionWeight_nonneg G n q
  · exact le_rfl

theorem exactBobQuestionMass_nonneg
    (G : Game X Y A B) (n : ℕ)
    (D : Finset (Fin n))
    (seed : ExactRemainingSeed D)
    (history : ExactRevealHistory X Y D seed)
    (y : Y) :
    0 ≤ exactBobQuestionMass G n D seed history y := by
  unfold exactBobQuestionMass
  apply Finset.sum_nonneg
  intro q _
  split
  · exact exactPriorQuestionWeight_nonneg G n q
  · exact le_rfl

theorem exactBobMeanFilter_posSemidef
    (G : Game X Y A B) (n : ℕ) (S : Strategy (G.repeat n))
    (D : Finset (Fin n))
    (seed : ExactRemainingSeed D)
    (history : ExactRevealHistory X Y D seed)
    (answer : {j : Fin n // j ∈ D} → B)
    (x : X) :
    (exactBobMeanFilter
      G n S D seed history answer x).PosSemidef := by
  unfold exactBobMeanFilter
  apply Matrix.posSemidef_sum Finset.univ
  intro y _
  exact (exactBobQuestionFilter_posSemidef
    G n S D seed history answer y).smul
    (G.conditionalYGivenX_nonneg x y)

end

noncomputable section

open scoped BigOperators ComplexOrder MatrixOrder

theorem source_equation_nineteen_bob
    {dA dB : Type*}
    [Fintype dA] [Fintype dB]
    [DecidableEq dA] [DecidableEq dB]
    (ρ : DensityMatrix (dA × dB))
    (F : Matrix dA dA ℂ) (hF : F.PosSemidef)
    (hFcomplement : (1 - F).PosSemidef)
    (G : Matrix dB dB ℂ) (hG : G.PosSemidef)
    (hGcomplement : (1 - G).PosSemidef) :
    -bornTracePairing ρ.matrix F
        (cfc (fun z : ℝ => z * Real.log z) G) ≤
      Real.negMulLog (bornTracePairing ρ.matrix F G) :=
  matrixLogEntropy_born_lower_bound_right
    ρ F hF hFcomplement G hG hGcomplement

end

noncomputable section

open scoped BigOperators ComplexOrder Kronecker MatrixOrder
  Matrix.Norms.L2Operator InnerProductSpace

set_option backward.isDefEq.respectTransparency false
set_option maxHeartbeats 2400000
set_option maxRecDepth 2048

attribute [local instance] Classical.propDecidable

variable {X Y A B : Type*}
variable [Fintype X] [Fintype Y] [Fintype A] [Fintype B]

theorem exactAliceQuestionConditionalWeight_sum
    (G : Game X Y A B) (n : ℕ)
    (D : Finset (Fin n))
    (seed : ExactRemainingSeed D)
    (history : ExactRevealHistory X Y D seed)
    (x : X) :
    (∑ q : ExactFullQuestion X Y n,
      if exactRevealCode D seed q = history ∧
        q.1 seed.coordinate.val = x then
        exactPriorQuestionWeight G n q /
          exactAliceQuestionMass G n D seed history x
      else 0) =
      if exactAliceQuestionMass G n D seed history x = 0
      then 0 else 1 := by
  classical
  calc
    (∑ q : ExactFullQuestion X Y n,
      if exactRevealCode D seed q = history ∧
        q.1 seed.coordinate.val = x then
        exactPriorQuestionWeight G n q /
          exactAliceQuestionMass G n D seed history x
      else 0) =
      (∑ q : ExactFullQuestion X Y n,
        if exactRevealCode D seed q = history ∧
          q.1 seed.coordinate.val = x then
          exactPriorQuestionWeight G n q
        else 0) /
          exactAliceQuestionMass G n D seed history x := by
            rw [Finset.sum_div]
            apply Finset.sum_congr rfl
            intro q _
            split <;> simp_all
    _ = exactAliceQuestionMass G n D seed history x /
          exactAliceQuestionMass G n D seed history x := by
            rfl
    _ = _ := by
      split_ifs with zero
      · simp [zero]
      · exact div_self zero

theorem exactBobQuestionConditionalWeight_sum
    (G : Game X Y A B) (n : ℕ)
    (D : Finset (Fin n))
    (seed : ExactRemainingSeed D)
    (history : ExactRevealHistory X Y D seed)
    (y : Y) :
    (∑ q : ExactFullQuestion X Y n,
      if exactRevealCode D seed q = history ∧
        q.2 seed.coordinate.val = y then
        exactPriorQuestionWeight G n q /
          exactBobQuestionMass G n D seed history y
      else 0) =
      if exactBobQuestionMass G n D seed history y = 0
      then 0 else 1 := by
  classical
  calc
    (∑ q : ExactFullQuestion X Y n,
      if exactRevealCode D seed q = history ∧
        q.2 seed.coordinate.val = y then
        exactPriorQuestionWeight G n q /
          exactBobQuestionMass G n D seed history y
      else 0) =
      (∑ q : ExactFullQuestion X Y n,
        if exactRevealCode D seed q = history ∧
          q.2 seed.coordinate.val = y then
          exactPriorQuestionWeight G n q
        else 0) /
          exactBobQuestionMass G n D seed history y := by
            rw [Finset.sum_div]
            apply Finset.sum_congr rfl
            intro q _
            split <;> simp_all
    _ = exactBobQuestionMass G n D seed history y /
          exactBobQuestionMass G n D seed history y := by
            rfl
    _ = _ := by
      split_ifs with zero
      · simp [zero]
      · exact div_self zero

theorem exactAliceQuestionFilter_complement_posSemidef
    (G : Game X Y A B) (n : ℕ) (S : Strategy (G.repeat n))
    (D : Finset (Fin n))
    (seed : ExactRemainingSeed D)
    (history : ExactRevealHistory X Y D seed)
    (answer : {i : Fin n // i ∈ D} → A)
    (x : X) :
    (1 - exactAliceQuestionFilter
      G n S D seed history answer x).PosSemidef := by
  classical
  let w : ExactFullQuestion X Y n → ℝ := fun q =>
    if exactRevealCode D seed q = history ∧
      q.1 seed.coordinate.val = x then
      exactPriorQuestionWeight G n q /
        exactAliceQuestionMass G n D seed history x
    else 0
  let E : ExactFullQuestion X Y n →
      Matrix S.Alice S.Alice ℂ := fun q =>
    conditionedAliceEffect G n S D answer q.1
  have weights_nonnegative (q : ExactFullQuestion X Y n) :
      0 ≤ w q := by
    dsimp [w]
    split
    · exact div_nonneg
        (exactPriorQuestionWeight_nonneg G n q)
        (exactAliceQuestionMass_nonneg G n D seed history x)
    · exact le_rfl
  have weights_sum : (∑ q, w q) ≤ 1 := by
    change
      (∑ q : ExactFullQuestion X Y n,
        if exactRevealCode D seed q = history ∧
          q.1 seed.coordinate.val = x then
          exactPriorQuestionWeight G n q /
            exactAliceQuestionMass G n D seed history x
        else 0) ≤ 1
    rw [exactAliceQuestionConditionalWeight_sum
      G n D seed history x]
    split <;> norm_num
  have filter_eq :
      exactAliceQuestionFilter
          G n S D seed history answer x =
        ∑ q, w q • E q := by
    unfold exactAliceQuestionFilter
    apply Finset.sum_congr rfl
    intro q _
    dsimp [w, E]
    split <;> simp_all
  have split :
      1 - (∑ q, w q • E q) =
        (1 - (∑ q, w q)) •
            (1 : Matrix S.Alice S.Alice ℂ) +
          ∑ q, w q • (1 - E q) := by
    simp_rw [smul_sub]
    rw [Finset.sum_sub_distrib, ← Finset.sum_smul]
    module
  rw [filter_eq, split]
  apply Matrix.PosSemidef.add
  · exact Matrix.PosSemidef.one.smul (sub_nonneg.mpr weights_sum)
  · apply Matrix.posSemidef_sum Finset.univ
    intro q _
    exact (conditionedAliceEffect_complement_positive
      G n S D answer q.1).smul (weights_nonnegative q)

theorem exactBobQuestionFilter_complement_posSemidef
    (G : Game X Y A B) (n : ℕ) (S : Strategy (G.repeat n))
    (D : Finset (Fin n))
    (seed : ExactRemainingSeed D)
    (history : ExactRevealHistory X Y D seed)
    (answer : {i : Fin n // i ∈ D} → B)
    (y : Y) :
    (1 - exactBobQuestionFilter
      G n S D seed history answer y).PosSemidef := by
  classical
  let w : ExactFullQuestion X Y n → ℝ := fun q =>
    if exactRevealCode D seed q = history ∧
      q.2 seed.coordinate.val = y then
      exactPriorQuestionWeight G n q /
        exactBobQuestionMass G n D seed history y
    else 0
  let E : ExactFullQuestion X Y n →
      Matrix S.Bob S.Bob ℂ := fun q =>
    conditionedBobEffect G n S D answer q.2
  have weights_nonnegative (q : ExactFullQuestion X Y n) :
      0 ≤ w q := by
    dsimp [w]
    split
    · exact div_nonneg
        (exactPriorQuestionWeight_nonneg G n q)
        (exactBobQuestionMass_nonneg G n D seed history y)
    · exact le_rfl
  have weights_sum : (∑ q, w q) ≤ 1 := by
    change
      (∑ q : ExactFullQuestion X Y n,
        if exactRevealCode D seed q = history ∧
          q.2 seed.coordinate.val = y then
          exactPriorQuestionWeight G n q /
            exactBobQuestionMass G n D seed history y
        else 0) ≤ 1
    rw [exactBobQuestionConditionalWeight_sum
      G n D seed history y]
    split <;> norm_num
  have filter_eq :
      exactBobQuestionFilter
          G n S D seed history answer y =
        ∑ q, w q • E q := by
    unfold exactBobQuestionFilter
    apply Finset.sum_congr rfl
    intro q _
    dsimp [w, E]
    split <;> simp_all
  have split :
      1 - (∑ q, w q • E q) =
        (1 - (∑ q, w q)) •
            (1 : Matrix S.Bob S.Bob ℂ) +
          ∑ q, w q • (1 - E q) := by
    simp_rw [smul_sub]
    rw [Finset.sum_sub_distrib, ← Finset.sum_smul]
    module
  rw [filter_eq, split]
  apply Matrix.PosSemidef.add
  · exact Matrix.PosSemidef.one.smul (sub_nonneg.mpr weights_sum)
  · apply Matrix.posSemidef_sum Finset.univ
    intro q _
    exact (conditionedBobEffect_complement_positive
      G n S D answer q.2).smul (weights_nonnegative q)

theorem exactBobMeanFilter_complement_posSemidef
    (G : Game X Y A B) (n : ℕ) (S : Strategy (G.repeat n))
    (D : Finset (Fin n))
    (seed : ExactRemainingSeed D)
    (history : ExactRevealHistory X Y D seed)
    (answer : {i : Fin n // i ∈ D} → B)
    (x : X) :
    (1 - exactBobMeanFilter
      G n S D seed history answer x).PosSemidef := by
  classical
  let w : Y → ℝ := G.conditionalYGivenX x
  let E : Y → Matrix S.Bob S.Bob ℂ := fun y =>
    exactBobQuestionFilter G n S D seed history answer y
  have weights_sum : (∑ y, w y) ≤ 1 :=
    G.conditionalYGivenX_sum_le_one x
  have split :
      1 - (∑ y, w y • E y) =
        (1 - (∑ y, w y)) •
            (1 : Matrix S.Bob S.Bob ℂ) +
          ∑ y, w y • (1 - E y) := by
    simp_rw [smul_sub]
    rw [Finset.sum_sub_distrib, ← Finset.sum_smul]
    module
  change (1 - ∑ y, w y • E y).PosSemidef
  rw [split]
  apply Matrix.PosSemidef.add
  · exact Matrix.PosSemidef.one.smul (sub_nonneg.mpr weights_sum)
  · apply Matrix.posSemidef_sum Finset.univ
    intro y _
    exact (exactBobQuestionFilter_complement_posSemidef
      G n S D seed history answer y).smul
        (G.conditionalYGivenX_nonneg x y)

theorem exactFairBobMean_spectral_entropy_le
    (G : Game X Y A B) (n : ℕ) (S : Strategy (G.repeat n))
    (D : Finset (Fin n))
    (r : ExactHistoryFlag X Y A B D)
    (x : X) :
    -bornTracePairing S.state.matrix
        (exactAliceQuestionFilter
          G n S D r.seed r.history r.aliceAnswer x)
        (cfc (fun z : ℝ => z * Real.log z)
          (exactBobMeanFilter
            G n S D r.seed r.history r.bobAnswer x)) ≤
      Real.negMulLog
        (bornTracePairing S.state.matrix
          (exactAliceQuestionFilter
            G n S D r.seed r.history r.aliceAnswer x)
          (exactBobMeanFilter
            G n S D r.seed r.history r.bobAnswer x)) := by
  classical
  exact source_equation_nineteen_bob S.state
    (exactAliceQuestionFilter
      G n S D r.seed r.history r.aliceAnswer x)
    (exactAliceQuestionFilter_posSemidef
      G n S D r.seed r.history r.aliceAnswer x)
    (exactAliceQuestionFilter_complement_posSemidef
      G n S D r.seed r.history r.aliceAnswer x)
    (exactBobMeanFilter
      G n S D r.seed r.history r.bobAnswer x)
    (exactBobMeanFilter_posSemidef
      G n S D r.seed r.history r.bobAnswer x)
    (exactBobMeanFilter_complement_posSemidef
      G n S D r.seed r.history r.bobAnswer x)

theorem exactFairBobHistoryHighOperatorPotential_nonpos
    (G : Game X Y A B) (n : ℕ) (S : Strategy (G.repeat n))
    (D : Finset (Fin n))
    (r : ExactHistoryFlag X Y A B D) :
    exactFairBobHistoryHighOperatorPotential
      G n S D r ≤ 0 := by
  classical
  unfold exactFairBobHistoryHighOperatorPotential
  apply Finset.sum_nonpos
  intro x _
  apply mul_nonpos_of_nonneg_of_nonpos (G.marginalX_nonneg x)
  calc
    bornTracePairing S.state.matrix
        (exactAliceQuestionFilter
          G n S D r.seed r.history r.aliceAnswer x)
        (∑ y : Y, G.conditionalYGivenX x y •
          cfc (fun z : ℝ => z * Real.log z)
            (exactBobQuestionFilter
              G n S D r.seed r.history r.bobAnswer y)) =
      ∑ y : Y, G.conditionalYGivenX x y *
        bornTracePairing S.state.matrix
          (exactAliceQuestionFilter
            G n S D r.seed r.history r.aliceAnswer x)
          (cfc (fun z : ℝ => z * Real.log z)
            (exactBobQuestionFilter
              G n S D r.seed r.history r.bobAnswer y)) := by
              simp only [map_sum, map_smul, smul_eq_mul]
    _ ≤ 0 := by
      apply Finset.sum_nonpos
      intro y _
      exact mul_nonpos_of_nonneg_of_nonpos
        (G.conditionalYGivenX_nonneg x y)
        (matrixLogEntropy_born_nonpos_right S.state
          (exactAliceQuestionFilter
            G n S D r.seed r.history r.aliceAnswer x)
          (exactBobQuestionFilter
            G n S D r.seed r.history r.bobAnswer y)
          (exactAliceQuestionFilter_posSemidef
            G n S D r.seed r.history r.aliceAnswer x)
          (exactBobQuestionFilter_posSemidef
            G n S D r.seed r.history r.bobAnswer y)
          (exactBobQuestionFilter_complement_posSemidef
            G n S D r.seed r.history r.bobAnswer y))

theorem exactFairBobHistoryLowOperatorPotential_neg_le_entropy
    (G : Game X Y A B) (n : ℕ) (S : Strategy (G.repeat n))
    (D : Finset (Fin n))
    (r : ExactHistoryFlag X Y A B D) :
    -exactFairBobHistoryLowOperatorPotential G n S D r ≤
      ∑ x : X, G.marginalX x *
        Real.negMulLog
          (bornTracePairing S.state.matrix
            (exactAliceQuestionFilter
              G n S D r.seed r.history r.aliceAnswer x)
            (exactBobMeanFilter
              G n S D r.seed r.history r.bobAnswer x)) := by
  classical
  unfold exactFairBobHistoryLowOperatorPotential
  rw [← Finset.sum_neg_distrib]
  apply Finset.sum_le_sum
  intro x _
  have bound := mul_le_mul_of_nonneg_left
    (exactFairBobMean_spectral_entropy_le G n S D r x)
    (G.marginalX_nonneg x)
  nlinarith

theorem exactReverseBobFilterHighOperatorPotential_nonpos
    (G : Game X Y A B) (n : ℕ) (S : Strategy (G.repeat n))
    (D : Finset (Fin n))
    (side : Finset (SourceRemainingCoordinate D))
    (context : ExactReverseSideContext
      (SourceRemainingCoordinate D) side)
    (marker : Fin side.card) :
    exactReverseBobFilterHighOperatorPotential
      G n S D side context marker ≤ 0 := by
  classical
  unfold exactReverseBobFilterHighOperatorPotential
  dsimp only
  apply Finset.sum_nonpos
  intro history _
  apply Finset.sum_nonpos
  intro aliceAnswer _
  apply Finset.sum_nonpos
  intro bobAnswer _
  split
  · exact mul_nonpos_of_nonneg_of_nonpos
      (exactRevealMass_nonneg G n D
        (exactReverseAliceMarkerDecode side context marker)
        history)
      (exactFairBobHistoryHighOperatorPotential_nonpos
        G n S D
        ⟨exactReverseAliceMarkerDecode side context marker,
          history, aliceAnswer, bobAnswer⟩)
  · exact le_rfl

end

noncomputable section

open scoped BigOperators ComplexOrder Kronecker MatrixOrder
  Matrix.Norms.L2Operator InnerProductSpace

set_option backward.isDefEq.respectTransparency false
set_option maxHeartbeats 3000000
set_option maxRecDepth 2048

attribute [local instance] Classical.propDecidable

variable {X Y A B : Type*}
variable [Fintype X] [Fintype Y] [Fintype A] [Fintype B]

theorem exactFairBobHistoryHighOperatorPotential_eq_joint
    (G : Game X Y A B) (n : ℕ) (S : Strategy (G.repeat n))
    (D : Finset (Fin n))
    (r : ExactHistoryFlag X Y A B D) :
    exactFairBobHistoryHighOperatorPotential G n S D r =
      ∑ x : X, ∑ y : Y, G.questionWeight x y *
        bornTracePairing S.state.matrix
          (exactAliceQuestionFilter
            G n S D r.seed r.history r.aliceAnswer x)
          (cfc (fun z : ℝ => z * Real.log z)
            (exactBobQuestionFilter
              G n S D r.seed r.history r.bobAnswer y)) := by
  classical
  unfold exactFairBobHistoryHighOperatorPotential
  simp only [map_sum, map_smul, smul_eq_mul]
  apply Finset.sum_congr rfl
  intro x _
  rw [Finset.mul_sum]
  apply Finset.sum_congr rfl
  intro y _
  rw [← G.marginalX_mul_conditionalYGivenX x y]
  ring

theorem exactFairBobHistoryLowOperatorPotential_eq_joint
    (G : Game X Y A B) (n : ℕ) (S : Strategy (G.repeat n))
    (D : Finset (Fin n))
    (r : ExactHistoryFlag X Y A B D) :
    exactFairBobHistoryLowOperatorPotential G n S D r =
      ∑ x : X, ∑ y : Y, G.questionWeight x y *
        bornTracePairing S.state.matrix
          (exactAliceQuestionFilter
            G n S D r.seed r.history r.aliceAnswer x)
          (cfc (fun z : ℝ => z * Real.log z)
            (exactBobMeanFilter
              G n S D r.seed r.history r.bobAnswer x)) := by
  classical
  unfold exactFairBobHistoryLowOperatorPotential
  apply Finset.sum_congr rfl
  intro x _
  unfold Game.marginalX
  rw [Finset.sum_mul]

end

noncomputable section

open scoped BigOperators ComplexOrder Kronecker MatrixOrder
  Matrix.Norms.L2Operator InnerProductSpace

set_option backward.isDefEq.respectTransparency false
set_option maxHeartbeats 3400000
set_option maxRecDepth 2048

attribute [local instance] Classical.propDecidable

variable {X Y A B : Type*}
variable [Fintype X] [Fintype Y] [Fintype A] [Fintype B]

theorem exactReverseBobHighOperatorPotential_eq_question
    (G : Game X Y A B) (n : ℕ) (S : Strategy (G.repeat n))
    (D : Finset (Fin n))
    (side : Finset (SourceRemainingCoordinate D))
    (context : ExactReverseSideContext
      (SourceRemainingCoordinate D) side)
    (marker : Fin side.card) :
    exactReverseBobFilterHighOperatorPotential
        G n S D side context marker =
      exactReverseBobHighQuestionPotential
        G n S D side context marker := by
  classical
  unfold exactReverseBobFilterHighOperatorPotential
    exactReverseBobHighQuestionPotential
  dsimp only
  calc
    (∑ history : ExactRevealHistory X Y D
        (exactReverseAliceMarkerDecode side context marker),
      ∑ aliceAnswer : {j : Fin n // j ∈ D} → A,
      ∑ bobAnswer : {j : Fin n // j ∈ D} → B,
        if exactHistoryAccepted G n D
          ⟨exactReverseAliceMarkerDecode side context marker,
            history, aliceAnswer, bobAnswer⟩ then
          exactRevealMass G n D
            (exactReverseAliceMarkerDecode side context marker)
            history *
          exactFairBobHistoryHighOperatorPotential G n S D
            ⟨exactReverseAliceMarkerDecode side context marker,
              history, aliceAnswer, bobAnswer⟩
        else 0) =
      ∑ history : ExactRevealHistory X Y D
        (exactReverseAliceMarkerDecode side context marker),
      ∑ aliceAnswer : {j : Fin n // j ∈ D} → A,
      ∑ bobAnswer : {j : Fin n // j ∈ D} → B,
        if exactHistoryAccepted G n D
          ⟨exactReverseAliceMarkerDecode side context marker,
            history, aliceAnswer, bobAnswer⟩ then
          exactRevealMass G n D
            (exactReverseAliceMarkerDecode side context marker)
            history *
            (∑ x : X, ∑ y : Y, G.questionWeight x y *
              bornTracePairing S.state.matrix
                (exactAliceQuestionFilter G n S D
                  (exactReverseAliceMarkerDecode side context marker)
                  history aliceAnswer x)
                (cfc (fun z : ℝ => z * Real.log z)
                  (exactBobQuestionFilter G n S D
                    (exactReverseAliceMarkerDecode side context marker)
                    history bobAnswer y)))
        else 0 := by
          apply Finset.sum_congr rfl
          intro history _
          apply Finset.sum_congr rfl
          intro aliceAnswer _
          apply Finset.sum_congr rfl
          intro bobAnswer _
          split
          · rw [exactFairBobHistoryHighOperatorPotential_eq_joint]
          · rfl
    _ = _ := exactFairAcceptedJointStatistic_reindex
      G n S D (exactReverseAliceMarkerDecode side context marker)
      (fun history aliceAnswer bobAnswer x y =>
        bornTracePairing S.state.matrix
          (exactAliceQuestionFilter G n S D
            (exactReverseAliceMarkerDecode side context marker)
            history aliceAnswer x)
          (cfc (fun z : ℝ => z * Real.log z)
            (exactBobQuestionFilter G n S D
              (exactReverseAliceMarkerDecode side context marker)
              history bobAnswer y)))

theorem exactReverseBobLowOperatorPotential_eq_question
    (G : Game X Y A B) (n : ℕ) (S : Strategy (G.repeat n))
    (D : Finset (Fin n))
    (side : Finset (SourceRemainingCoordinate D))
    (context : ExactReverseSideContext
      (SourceRemainingCoordinate D) side)
    (marker : Fin side.card) :
    exactReverseBobFilterLowOperatorPotential
        G n S D side context marker =
      exactReverseBobLowQuestionPotential
        G n S D side context marker := by
  classical
  unfold exactReverseBobFilterLowOperatorPotential
    exactReverseBobLowQuestionPotential
  dsimp only
  calc
    (∑ history : ExactRevealHistory X Y D
        (exactReverseAliceMarkerDecode side context marker),
      ∑ aliceAnswer : {j : Fin n // j ∈ D} → A,
      ∑ bobAnswer : {j : Fin n // j ∈ D} → B,
        if exactHistoryAccepted G n D
          ⟨exactReverseAliceMarkerDecode side context marker,
            history, aliceAnswer, bobAnswer⟩ then
          exactRevealMass G n D
            (exactReverseAliceMarkerDecode side context marker)
            history *
          exactFairBobHistoryLowOperatorPotential G n S D
            ⟨exactReverseAliceMarkerDecode side context marker,
              history, aliceAnswer, bobAnswer⟩
        else 0) =
      ∑ history : ExactRevealHistory X Y D
        (exactReverseAliceMarkerDecode side context marker),
      ∑ aliceAnswer : {j : Fin n // j ∈ D} → A,
      ∑ bobAnswer : {j : Fin n // j ∈ D} → B,
        if exactHistoryAccepted G n D
          ⟨exactReverseAliceMarkerDecode side context marker,
            history, aliceAnswer, bobAnswer⟩ then
          exactRevealMass G n D
            (exactReverseAliceMarkerDecode side context marker)
            history *
            (∑ x : X, ∑ y : Y, G.questionWeight x y *
              bornTracePairing S.state.matrix
                (exactAliceQuestionFilter G n S D
                  (exactReverseAliceMarkerDecode side context marker)
                  history aliceAnswer x)
                (cfc (fun z : ℝ => z * Real.log z)
                  (exactBobMeanFilter G n S D
                    (exactReverseAliceMarkerDecode side context marker)
                    history bobAnswer x)))
        else 0 := by
          apply Finset.sum_congr rfl
          intro history _
          apply Finset.sum_congr rfl
          intro aliceAnswer _
          apply Finset.sum_congr rfl
          intro bobAnswer _
          split
          · rw [exactFairBobHistoryLowOperatorPotential_eq_joint]
          · rfl
    _ = _ := exactFairAcceptedJointStatistic_reindex
      G n S D (exactReverseAliceMarkerDecode side context marker)
      (fun history aliceAnswer bobAnswer x y =>
        bornTracePairing S.state.matrix
          (exactAliceQuestionFilter G n S D
            (exactReverseAliceMarkerDecode side context marker)
            history aliceAnswer x)
          (cfc (fun z : ℝ => z * Real.log z)
            (exactBobMeanFilter G n S D
              (exactReverseAliceMarkerDecode side context marker)
              history bobAnswer x)))

end

noncomputable section

open scoped BigOperators ComplexOrder Kronecker MatrixOrder
  Matrix.Norms.L2Operator InnerProductSpace

set_option backward.isDefEq.respectTransparency false
set_option maxHeartbeats 2400000
set_option maxRecDepth 2048

attribute [local instance] Classical.propDecidable

variable {X Y A B : Type*}
variable [Fintype X] [Fintype Y] [Fintype A] [Fintype B]

theorem exactReverseBobFilterLowOperatorPotential_neg_le_scalarEntropy
    (G : Game X Y A B) (n : ℕ) (S : Strategy (G.repeat n))
    (D : Finset (Fin n))
    (side : Finset (SourceRemainingCoordinate D))
    (context : ExactReverseSideContext
      (SourceRemainingCoordinate D) side)
    (marker : Fin side.card) :
    -exactReverseBobFilterLowOperatorPotential
        G n S D side context marker ≤
      exactReverseBobAcceptedScalarEntropy
        G n S D side context marker := by
  classical
  unfold exactReverseBobFilterLowOperatorPotential
    exactReverseBobAcceptedScalarEntropy
  dsimp only
  simp_rw [← Finset.sum_neg_distrib]
  apply Finset.sum_le_sum
  intro history _
  apply Finset.sum_le_sum
  intro aliceAnswer _
  apply Finset.sum_le_sum
  intro bobAnswer _
  split
  · rename_i accepted
    have bound :=
      exactFairBobHistoryLowOperatorPotential_neg_le_entropy
        G n S D
        ⟨exactReverseAliceMarkerDecode side context marker,
          history, aliceAnswer, bobAnswer⟩
    have scaled := mul_le_mul_of_nonneg_left bound
      (exactRevealMass_nonneg G n D
        (exactReverseAliceMarkerDecode side context marker)
        history)
    simpa only [mul_neg] using scaled
  · simp

theorem exactReverseBobAlignedCfcPrefixPotential_terminal_nonpos
    (G : Game X Y A B) (n : ℕ) (S : Strategy (G.repeat n))
    (D : Finset (Fin n))
    (side : Finset (SourceRemainingCoordinate D))
    (context : ExactReverseSideContext
      (SourceRemainingCoordinate D) side)
    (sideNonempty : 0 < side.card) :
    exactReverseBobAlignedCfcPrefixPotential
      G n S D side context side.card ≤ 0 := by
  let marker : Fin side.card :=
    ⟨side.card - 1, Nat.sub_lt sideNonempty (by decide)⟩
  have step : marker.val + 1 = side.card := by
    dsimp [marker]
    omega
  have high := exactReverseBobFilterHighOperatorPotential_nonpos
    G n S D side context marker
  rw [exactReverseBobHighOperatorPotential_eq_question,
    exactReverseBobHighQuestionPotential_eq_alignedPrefix,
    step] at high
  exact high

end

end QuantumParallelRepetition


open QuantumParallelRepetition
open scoped ComplexOrder Matrix BigOperators InnerProductSpace
open Complex Matrix Finset
open scoped BigOperators ComplexOrder Kronecker MatrixOrder
  Matrix.Norms.L2Operator InnerProductSpace
set_option backward.isDefEq.respectTransparency false
set_option maxHeartbeats 2400000
set_option maxRecDepth 2048
attribute [local instance] Classical.propDecidable
variable {X Y A B : Type*}
variable [Fintype X] [Fintype Y] [Fintype A] [Fintype B]

theorem solution
    (G : Game X Y A B) (n : ℕ) (S : Strategy (G.repeat n))
    (D : Finset (Fin n))
    (side : Finset (SourceRemainingCoordinate D))
    (context : ExactReverseSideContext
      (SourceRemainingCoordinate D) side)
    (sideNonempty : 0 < side.card) :
    (∑ marker : Fin side.card,
      exactReverseBobFilterOperatorMarkerEntropy
        G n S D side context marker) ≤
      exactReverseBobAcceptedScalarEntropy
        G n S D side context ⟨0, sideNonempty⟩ := by
  let initial : Fin side.card := ⟨0, sideNonempty⟩
  have terminal :=
    exactReverseBobAlignedCfcPrefixPotential_terminal_nonpos
      G n S D side context sideNonempty
  have scalar :=
    exactReverseBobFilterLowOperatorPotential_neg_le_scalarEntropy
      G n S D side context initial
  have initialPotential :
      exactReverseBobFilterLowOperatorPotential
          G n S D side context initial =
        exactReverseBobAlignedCfcPrefixPotential
          G n S D side context 0 := by
    rw [exactReverseBobLowOperatorPotential_eq_question,
      exactReverseBobLowQuestionPotential_eq_alignedPrefix]
  rw [exactReverseBobFilterOperatorMarkerEntropy_sum_telescope]
  rw [initialPotential] at scalar
  change
    exactReverseBobAlignedCfcPrefixPotential
        G n S D side context side.card -
      exactReverseBobAlignedCfcPrefixPotential
        G n S D side context 0 ≤
      exactReverseBobAcceptedScalarEntropy
        G n S D side context initial
  linarith
