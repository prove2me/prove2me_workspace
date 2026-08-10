import Definitions.Def_quantum_parallel_repetition_game
import Definitions.Def_qpr_core_24
import Theorems.Thm_QuantumParallelRepetition_spectralPurificationFilter_memLp_two
import Theorems.Thm_QuantumParallelRepetition_exactLeft_coordinate_not_mem
import Theorems.Thm_QuantumParallelRepetition_exactRight_coordinate_not_mem
import Theorems.Thm_QuantumParallelRepetition_exactAlicePurificationFamily_posSemidef
import Theorems.Thm_QuantumParallelRepetition_exactBobPurificationFamily_posSemidef
import Theorems.Thm_QuantumParallelRepetition_exactFairConditionedAnswerBornMass_eq_fiber_norm
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

noncomputable section

open MeasureTheory Filter Set
open scoped BigOperators Topology

theorem scalar_resolvent_purification_integrable_of_pos
    {z : ℝ} (hz : 0 < z) :
    IntegrableOn (fun s : ℝ => (z / (z + s)) ^ 2) (Ioi 0) := by
  have hpower :
      IntegrableOn (fun s : ℝ => (s + z) ^ (-2 : ℝ)) (Ioi 0) := by
    exact integrableOn_add_rpow_Ioi_of_lt
      (a := (-2 : ℝ)) (c := (0 : ℝ)) (m := z)
      (by norm_num) (by linarith)
  have hscaled :
      IntegrableOn (fun s : ℝ => z ^ 2 * (s + z) ^ (-2 : ℝ))
        (Ioi 0) :=
    hpower.const_mul (z ^ 2)
  refine hscaled.congr_fun (fun s hs => ?_) measurableSet_Ioi
  have hspos : 0 < s + z := by
    have : 0 < s := hs
    linarith
  change z ^ 2 * (s + z) ^ (-2 : ℝ) = (z / (z + s)) ^ 2
  rw [show (-2 : ℝ) = -(2 : ℝ) by norm_num,
    Real.rpow_neg hspos.le, Real.rpow_two]
  rw [div_pow]
  simp [div_eq_mul_inv, add_comm]

theorem scalar_resolvent_purification_integrable
    {z : ℝ} (hz : 0 ≤ z) :
    IntegrableOn (fun s : ℝ => (z / (z + s)) ^ 2) (Ioi 0) := by
  rcases hz.eq_or_lt with rfl | hzpos
  · simp
  · exact scalar_resolvent_purification_integrable_of_pos hzpos

theorem scalar_resolvent_purification_integral
    {z : ℝ} (hz : 0 ≤ z) :
    (∫ s in Ioi (0 : ℝ), (z / (z + s)) ^ 2) = z := by
  rcases hz.eq_or_lt with rfl | hzpos
  · simp
  · have hderiv :
        ∀ x ∈ Ici (0 : ℝ),
          HasDerivAt (fun t : ℝ => -(z ^ 2) / (z + t))
            ((z / (z + x)) ^ 2) x := by
      intro x hx
      have hden : z + x ≠ 0 := by
        have hx_nonneg : 0 ≤ x := hx
        exact ne_of_gt (by linarith)
      have hd := ((hasDerivAt_const x (-(z ^ 2))).div
        ((hasDerivAt_const x z).add (hasDerivAt_id x)) hden)
      have hfun :
          (fun t : ℝ => -(z ^ 2) / (z + t)) =
            (fun _t : ℝ => -(z ^ 2)) /
              ((fun _t : ℝ => z) + id) := by
        funext t
        rfl
      rw [hfun]
      simpa [div_pow] using hd
    have hlimit :
        Tendsto (fun t : ℝ => -(z ^ 2) / (z + t))
          atTop (𝓝 (0 : ℝ)) := by
      have hden : Tendsto (fun t : ℝ => t + z) atTop atTop :=
        tendsto_atTop_add_const_right atTop z tendsto_id
      have hzero : Tendsto (fun t : ℝ => -(z ^ 2) / (t + z))
          atTop (𝓝 (0 : ℝ)) :=
        tendsto_const_nhds.div_atTop hden
      simpa [add_comm] using hzero
    have hftc := integral_Ioi_of_hasDerivAt_of_tendsto'
      hderiv (scalar_resolvent_purification_integrable_of_pos hzpos) hlimit
    calc
      (∫ s in Ioi (0 : ℝ), (z / (z + s)) ^ 2) =
          (0 : ℝ) - (-(z ^ 2) / (z + 0)) := hftc
      _ = z := by
        field_simp
        ; ring

end

noncomputable section

open MeasureTheory Filter Set
open scoped BigOperators Topology ComplexOrder MatrixOrder Matrix.Norms.Elementwise

set_option backward.isDefEq.respectTransparency false

attribute [local instance] Matrix.normedAddCommGroup Matrix.normedSpace

theorem diagonalPurificationGram_integrable
    {d : Type*} [Fintype d] [DecidableEq d]
    (eigenvalue : d → ℝ)
    (h_nonneg : ∀ i, 0 ≤ eigenvalue i) :
    IntegrableOn (diagonalPurificationGram eigenvalue) (Ioi 0) := by
  apply MeasureTheory.Integrable.of_eval
  intro i
  apply MeasureTheory.Integrable.of_eval
  intro j
  classical
  by_cases h : i = j
  · subst j
    have hcomplex :
        Integrable
          (fun s : ℝ =>
            (((eigenvalue i / (eigenvalue i + s)) ^ 2 : ℝ) : ℂ))
          (volume.restrict (Ioi 0)) :=
      MeasureTheory.Integrable.ofReal (𝕜 := ℂ)
        (scalar_resolvent_purification_integrable (h_nonneg i))
    simpa only [diagonalPurificationGram, Matrix.diagonal_apply_eq] using
      hcomplex
  · simp [diagonalPurificationGram, h]

theorem integral_diagonalPurificationGram
    {d : Type*} [Fintype d] [DecidableEq d]
    (eigenvalue : d → ℝ)
    (h_nonneg : ∀ i, 0 ≤ eigenvalue i) :
    (∫ s in Ioi (0 : ℝ), diagonalPurificationGram eigenvalue s) =
      Matrix.diagonal (fun i => (eigenvalue i : ℂ)) := by
  classical
  have hmatrix := diagonalPurificationGram_integrable eigenvalue h_nonneg
  have hrows :
      ∀ i : d,
        Integrable
          (fun s : ℝ => diagonalPurificationGram eigenvalue s i)
          (volume.restrict (Ioi 0)) :=
    fun i => hmatrix.eval i
  have hentry (i : d) :
      ∀ j : d,
        Integrable
          (fun s : ℝ => diagonalPurificationGram eigenvalue s i j)
          (volume.restrict (Ioi 0)) :=
    fun j => (hrows i).eval j
  ext i j
  rw [MeasureTheory.eval_integral hrows i,
    MeasureTheory.eval_integral (hentry i) j]
  by_cases h : i = j
  · subst j
    simp only [diagonalPurificationGram, Matrix.diagonal_apply_eq]
    calc
      (∫ s in Ioi (0 : ℝ),
        (((eigenvalue i / (eigenvalue i + s)) ^ 2 : ℝ) : ℂ)) =
          ((∫ s in Ioi (0 : ℝ),
            (eigenvalue i / (eigenvalue i + s)) ^ 2 : ℝ) : ℂ) :=
        integral_ofReal
      _ = (eigenvalue i : ℂ) := by
        rw [scalar_resolvent_purification_integral (h_nonneg i)]
  · simp [diagonalPurificationGram, h]

@[simp] theorem spectralConjugationCLM_apply
    {d : Type*} [Fintype d] [DecidableEq d]
    (U : Matrix.unitaryGroup d ℂ) (A : Matrix d d ℂ) :
    spectralConjugationCLM U A =
      (U : Matrix d d ℂ) * A * star (U : Matrix d d ℂ) := by
  rfl

theorem spectralPurificationGram_integrable
    {d : Type*} [Fintype d] [DecidableEq d]
    (F : Matrix d d ℂ) (hF : F.PosSemidef) :
    IntegrableOn (spectralPurificationGram F hF) (Ioi 0) := by
  have hdiag := diagonalPurificationGram_integrable
    hF.isHermitian.eigenvalues (fun i => hF.eigenvalues_nonneg i)
  exact (spectralConjugationCLM hF.isHermitian.eigenvectorUnitary).integrable_comp
    hdiag

theorem integral_spectralPurificationGram
    {d : Type*} [Fintype d] [DecidableEq d]
    (F : Matrix d d ℂ) (hF : F.PosSemidef) :
    (∫ s in Ioi (0 : ℝ), spectralPurificationGram F hF s) = F := by
  let U := hF.isHermitian.eigenvectorUnitary
  let eigenvalue := hF.isHermitian.eigenvalues
  have hdiag := diagonalPurificationGram_integrable
    eigenvalue (fun i => hF.eigenvalues_nonneg i)
  calc
    (∫ s in Ioi (0 : ℝ), spectralPurificationGram F hF s) =
        spectralConjugationCLM U
          (∫ s in Ioi (0 : ℝ), diagonalPurificationGram eigenvalue s) := by
            exact ContinuousLinearMap.integral_comp_comm
              (spectralConjugationCLM U) hdiag
    _ = spectralConjugationCLM U
          (Matrix.diagonal (fun i => (eigenvalue i : ℂ))) := by
            rw [integral_diagonalPurificationGram eigenvalue
              (fun i => hF.eigenvalues_nonneg i)]
    _ = F := by
          simpa [U, eigenvalue, Function.comp_def,
            Unitary.conjStarAlgAut_apply] using
            hF.isHermitian.spectral_theorem.symm

end

noncomputable section

open MeasureTheory Filter Set
open scoped BigOperators Topology ComplexOrder MatrixOrder Kronecker Matrix.Norms.Elementwise

set_option backward.isDefEq.respectTransparency false

attribute [local instance] Matrix.normedAddCommGroup Matrix.normedSpace

theorem spectralPurificationFilter_gram
    {d : Type*} [Fintype d] [DecidableEq d]
    (F : Matrix d d ℂ) (hF : F.PosSemidef) (s : ℝ) :
    star (spectralPurificationFilter F hF s) *
        spectralPurificationFilter F hF s =
      spectralPurificationGram F hF s := by
  classical
  let U := hF.isHermitian.eigenvectorUnitary
  let eigenvalue := hF.isHermitian.eigenvalues
  let D : Matrix d d ℂ := Matrix.diagonal fun i =>
    ((eigenvalue i / (eigenvalue i + s) : ℝ) : ℂ)
  let e := Unitary.conjStarAlgAut ℂ (Matrix d d ℂ) U
  have hDhermitian : D.IsHermitian := by
    apply Matrix.isHermitian_diagonal_iff.mpr
    intro i
    change star ((eigenvalue i / (eigenvalue i + s) : ℝ) : ℂ) = _
    simp
  have hDstar : star D = D := by
    simpa only [Matrix.star_eq_conjTranspose] using hDhermitian.eq
  have hDsquare : D * D = diagonalPurificationGram eigenvalue s := by
    dsimp [D]
    rw [Matrix.diagonal_mul_diagonal]
    ext i j
    by_cases h : i = j
    · subst j
      simp [diagonalPurificationGram, pow_two]
    · simp [diagonalPurificationGram, h]
  change star (e D) * e D = e (diagonalPurificationGram eigenvalue s)
  calc
    star (e D) * e D = e (star D) * e D := by rw [map_star]
    _ = e (star D * D) := (map_mul e (star D) D).symm
    _ = e (diagonalPurificationGram eigenvalue s) := by
      rw [hDstar, hDsquare]

theorem integral_spectralPurificationFilter_gram
    {d : Type*} [Fintype d] [DecidableEq d]
    (F : Matrix d d ℂ) (hF : F.PosSemidef) :
    (∫ s in Ioi (0 : ℝ),
      star (spectralPurificationFilter F hF s) *
        spectralPurificationFilter F hF s) = F := by
  simp_rw [spectralPurificationFilter_gram]
  exact integral_spectralPurificationGram F hF

theorem spectralPurificationFilter_gram_integrable
    {d : Type*} [Fintype d] [DecidableEq d]
    (F : Matrix d d ℂ) (hF : F.PosSemidef) :
    IntegrableOn
      (fun s : ℝ => star (spectralPurificationFilter F hF s) *
        spectralPurificationFilter F hF s) (Ioi 0) := by
  simpa only [spectralPurificationFilter_gram] using
    spectralPurificationGram_integrable F hF

end

noncomputable section

open scoped BigOperators Kronecker

namespace Game

variable {X Y A B : Type*}
variable [Fintype X] [Fintype Y] [Fintype A] [Fintype B]

theorem questionWeight_le_marginalY
    (G : Game X Y A B) (x : X) (y : Y) :
    G.questionWeight x y ≤ G.marginalY y := by
  unfold marginalY
  exact Finset.single_le_sum
    (fun x _ => G.weight_nonneg x y)
    (Finset.mem_univ x)

theorem marginalY_mul_conditionalXGivenY
    (G : Game X Y A B) (x : X) (y : Y) :
    G.marginalY y * G.conditionalXGivenY y x =
      G.questionWeight x y := by
  unfold conditionalXGivenY
  by_cases hy : G.marginalY y = 0
  · have hzero : G.questionWeight x y = 0 := by
      have hle := G.questionWeight_le_marginalY x y
      have hnonneg := G.weight_nonneg x y
      rw [hy] at hle
      linarith
    simp [hy, hzero]
  · field_simp

end Game

end

noncomputable section

open scoped BigOperators ComplexOrder MatrixOrder

theorem spectralSupportFunctional_mul
    {d : Type*} [Fintype d] [DecidableEq d]
    (F : Matrix d d ℂ) (hF : F.PosSemidef)
    (f g : ℝ → ℝ) :
    spectralSupportFunctional F hF f *
        spectralSupportFunctional F hF g =
      spectralSupportFunctional F hF (fun x => f x * g x) := by
  classical
  let e := Unitary.conjStarAlgAut ℂ (Matrix d d ℂ)
    hF.isHermitian.eigenvectorUnitary
  change e _ * e _ = e _
  rw [← map_mul, Matrix.diagonal_mul_diagonal]
  congr 1
  funext i
  push_cast
  rfl

theorem spectralSupportFunctional_id
    {d : Type*} [Fintype d] [DecidableEq d]
    (F : Matrix d d ℂ) (hF : F.PosSemidef) :
    spectralSupportFunctional F hF (fun x => x) = F := by
  simpa [spectralSupportFunctional, Function.comp_def] using
    hF.isHermitian.spectral_theorem.symm

theorem spectralSupportFunctional_congr
    {d : Type*} [Fintype d] [DecidableEq d]
    (F : Matrix d d ℂ) (hF : F.PosSemidef)
    {f g : ℝ → ℝ}
    (h : ∀ i : d,
      f (hF.isHermitian.eigenvalues i) =
        g (hF.isHermitian.eigenvalues i)) :
    spectralSupportFunctional F hF f =
      spectralSupportFunctional F hF g := by
  unfold spectralSupportFunctional
  congr 2
  funext i
  exact_mod_cast h i

theorem spectralSupportFunctional_isHermitian
    {d : Type*} [Fintype d] [DecidableEq d]
    (F : Matrix d d ℂ) (hF : F.PosSemidef)
    (f : ℝ → ℝ) :
    (spectralSupportFunctional F hF f).IsHermitian := by
  classical
  let e := Unitary.conjStarAlgAut ℂ (Matrix d d ℂ)
    hF.isHermitian.eigenvectorUnitary
  let D : Matrix d d ℂ :=
    Matrix.diagonal fun i => (f (hF.isHermitian.eigenvalues i) : ℂ)
  have hD : D.IsHermitian := by
    apply Matrix.isHermitian_diagonal_iff.mpr
    intro i
    change star (f (hF.isHermitian.eigenvalues i) : ℂ) = _
    simp
  have hDstar : star D = D := by
    simpa only [Matrix.star_eq_conjTranspose] using hD.eq
  change Matrix.conjTranspose (e D) = e D
  simpa only [Matrix.star_eq_conjTranspose] using
    (show star (e D) = e D by rw [← map_star, hDstar])

theorem spectralSupportSqrt_sq
    {d : Type*} [Fintype d] [DecidableEq d]
    (F : Matrix d d ℂ) (hF : F.PosSemidef) :
    spectralSupportSqrt F hF * spectralSupportSqrt F hF = F := by
  change spectralSupportFunctional F hF Real.sqrt *
    spectralSupportFunctional F hF Real.sqrt = F
  calc
    spectralSupportFunctional F hF Real.sqrt *
        spectralSupportFunctional F hF Real.sqrt =
      spectralSupportFunctional F hF
        (fun x => Real.sqrt x * Real.sqrt x) :=
      spectralSupportFunctional_mul F hF _ _
    _ = spectralSupportFunctional F hF (fun x => x) :=
      spectralSupportFunctional_congr F hF (by
        intro i
        exact Real.mul_self_sqrt (hF.eigenvalues_nonneg i))
    _ = F := spectralSupportFunctional_id F hF

end

noncomputable section

open Matrix
open scoped BigOperators Kronecker ComplexOrder MatrixOrder

set_option backward.isDefEq.respectTransparency false
set_option maxHeartbeats 600000

section ActualHistoryWeights

variable {X Y A B : Type*}
variable [Fintype X] [Fintype Y] [Fintype A] [Fintype B]

theorem conditionedEffects_born_expansion
    [DecidableEq A] [DecidableEq B]
    (G : Game X Y A B) (n : ℕ)
    (S : Strategy (G.repeat n))
    (D : Finset (Fin n))
    (α : {i : Fin n // i ∈ D} → A)
    (β : {i : Fin n // i ∈ D} → B)
    (xs : Fin n → X) (ys : Fin n → Y) :
    bornTracePairing S.state.matrix
        (conditionedAliceEffect G n S D α xs)
        (conditionedBobEffect G n S D β ys) =
      ∑ aa : Fin n → A, ∑ bb : Fin n → B,
        if ∀ (i : Fin n) (hi : i ∈ D), aa i = α ⟨i, hi⟩ then
          if ∀ (i : Fin n) (hi : i ∈ D), bb i = β ⟨i, hi⟩ then
            S.outcomeProbability xs ys aa bb
          else 0
        else 0 := by
  classical
  simp only [conditionedAliceEffect, conditionedBobEffect,
    map_sum, LinearMap.sum_apply]
  rw [Finset.sum_comm]
  apply Finset.sum_congr rfl
  intro aa _
  split_ifs with ha
  · apply Finset.sum_congr rfl
    intro bb _
    split_ifs with hb
    · rfl
    · exact map_zero _
  · simp

end ActualHistoryWeights

end

open scoped ComplexOrder Matrix BigOperators InnerProductSpace
open Complex Matrix Finset

noncomputable section

open MeasureTheory Filter Set
open scoped BigOperators Topology ComplexOrder MatrixOrder
  Matrix.Norms.Elementwise InnerProductSpace

set_option backward.isDefEq.respectTransparency false

attribute [local instance] Matrix.normedAddCommGroup Matrix.normedSpace

theorem spectralPurificationFilterEntryLp_coeFn
    {d : Type*} [Fintype d] [DecidableEq d]
    (F : Matrix d d ℂ) (hF : F.PosSemidef) (i j : d) :
    (spectralPurificationFilterEntryLp F hF i j : ℝ → ℂ)
      =ᵐ[volume.restrict (Ioi 0)]
        (fun s : ℝ => spectralPurificationFilter F hF s i j) :=
  (((spectralPurificationFilter_memLp_two F hF).eval i).eval j).coeFn_toLp

end

noncomputable section

open MeasureTheory Filter Set
open scoped BigOperators Topology ComplexOrder MatrixOrder
  Matrix.Norms.Elementwise InnerProductSpace

set_option backward.isDefEq.respectTransparency false

attribute [local instance] Matrix.normedAddCommGroup Matrix.normedSpace

theorem finitePurificationMatrix_gram_apply
    {ι d : Type*} [Fintype ι] [Fintype d] [DecidableEq d]
    (F : ι → Matrix d d ℂ) (M : Matrix d d ℂ)
    (positive : ∀ i, (F i).PosSemidef)
    (hM : M.PosSemidef) (a : ι) (i j : d) :
    ((finitePurificationMatrix F M positive hM a).conjTranspose *
      finitePurificationMatrix F M positive hM a) i j =
      ∑ r : d,
        inner ℂ
          (ensemblePurificationSubspaceEntry F M positive hM a r i)
          (ensemblePurificationSubspaceEntry F M positive hM a r j) := by
  classical
  simp only [Matrix.mul_apply, Matrix.conjTranspose_apply,
    finitePurificationMatrix, Fintype.sum_prod_type]
  apply Finset.sum_congr rfl
  intro r _
  let b := commonPurificationOrthonormalBasis F M positive hM
  let u := ensemblePurificationSubspaceEntry
    F M positive hM a r i
  let v := ensemblePurificationSubspaceEntry
    F M positive hM a r j
  have hisometry := b.repr.inner_map_map u v
  change (∑ k, star (b.repr u k) * b.repr v k) =
    inner ℂ u v
  rw [← hisometry, EuclideanSpace.inner_eq_star_dotProduct]
  simp [dotProduct, mul_comm]

theorem ensemblePurificationSubspaceEntry_inner_eq_integral
    {ι d : Type*} [Fintype ι] [Fintype d] [DecidableEq d]
    (F : ι → Matrix d d ℂ) (M : Matrix d d ℂ)
    (positive : ∀ i, (F i).PosSemidef)
    (hM : M.PosSemidef)
    (a : ι) (r i j : d) :
    inner ℂ
        (ensemblePurificationSubspaceEntry F M positive hM a r i)
        (ensemblePurificationSubspaceEntry F M positive hM a r j) =
      ∫ s in Ioi (0 : ℝ),
        star (spectralPurificationFilter (F a) (positive a) s r i) *
          spectralPurificationFilter (F a) (positive a) s r j := by
  rw [Submodule.coe_inner, MeasureTheory.L2.inner_def]
  apply integral_congr_ae
  have hi := spectralPurificationFilterEntryLp_coeFn
    (F a) (positive a) r i
  have hj := spectralPurificationFilterEntryLp_coeFn
    (F a) (positive a) r j
  filter_upwards [hi, hj] with s hs ht
  change
    inner ℂ
      (spectralPurificationFilterEntryLp
        (F a) (positive a) r i s)
      (spectralPurificationFilterEntryLp
        (F a) (positive a) r j s) = _
  rw [hs, ht]
  simp [RCLike.inner_apply, mul_comm]

theorem finitePurificationMatrix_gram_eq_integral
    {ι d : Type*} [Fintype ι] [Fintype d] [DecidableEq d]
    (F : ι → Matrix d d ℂ) (M : Matrix d d ℂ)
    (positive : ∀ i, (F i).PosSemidef)
    (hM : M.PosSemidef) (a : ι) :
    (finitePurificationMatrix F M positive hM a).conjTranspose *
        finitePurificationMatrix F M positive hM a =
      ∫ s in Ioi (0 : ℝ),
        star (spectralPurificationFilter (F a) (positive a) s) *
          spectralPurificationFilter (F a) (positive a) s := by
  classical
  have hfilter := spectralPurificationFilter_memLp_two
    (F a) (positive a)
  have hmatrix := spectralPurificationFilter_gram_integrable
    (F a) (positive a)
  have hrows :
      ∀ i : d,
        Integrable
          (fun s : ℝ =>
            (star (spectralPurificationFilter (F a) (positive a) s) *
              spectralPurificationFilter (F a) (positive a) s) i)
          (volume.restrict (Ioi 0)) :=
    fun i => hmatrix.eval i
  ext i j
  rw [finitePurificationMatrix_gram_apply]
  rw [MeasureTheory.eval_integral hrows i,
    MeasureTheory.eval_integral (fun k => (hrows i).eval k) j]
  simp_rw [ensemblePurificationSubspaceEntry_inner_eq_integral]
  have hproduct (r : d) :
      Integrable
        (fun s : ℝ =>
          star (spectralPurificationFilter (F a) (positive a) s r i) *
            spectralPurificationFilter (F a) (positive a) s r j)
        (volume.restrict (Ioi 0)) :=
    (((hfilter.eval r).eval i).star).integrable_mul
      ((hfilter.eval r).eval j)
  rw [← integral_finsetSum Finset.univ (fun r _ => hproduct r)]
  apply integral_congr_ae
  filter_upwards with s
  simp [Matrix.mul_apply, Matrix.star_apply]

theorem finitePurificationMatrix_gram
    {ι d : Type*} [Fintype ι] [Fintype d] [DecidableEq d]
    (F : ι → Matrix d d ℂ) (M : Matrix d d ℂ)
    (positive : ∀ i, (F i).PosSemidef)
    (hM : M.PosSemidef) (a : ι) :
    (finitePurificationMatrix F M positive hM a).conjTranspose *
      finitePurificationMatrix F M positive hM a = F a := by
  rw [finitePurificationMatrix_gram_eq_integral]
  exact integral_spectralPurificationFilter_gram (F a) (positive a)

end

noncomputable section

open WithLp
open scoped BigOperators ComplexOrder Kronecker MatrixOrder
  Matrix.Norms.L2Operator InnerProductSpace

theorem reindexedMatrixQuadratic
    {d e : Type*} [Fintype d] [Fintype e]
    [DecidableEq d] [DecidableEq e]
    (φ : e ≃ d) (M : Matrix d d ℂ) (v : d → ℂ) :
    quadraticExpectation
      (Matrix.toEuclideanCLM (n := e) (𝕜 := ℂ)
        (M.submatrix φ φ))
      (toLp 2 (v ∘ φ)) =
      (star v ⬝ᵥ M.mulVec v).re := by
  unfold quadraticExpectation
  rw [EuclideanSpace.inner_eq_star_dotProduct]
  change
    (((M.submatrix φ φ).mulVec (v ∘ φ)) ⬝ᵥ
      star (v ∘ φ)).re = (star v ⬝ᵥ M.mulVec v).re
  have h_mul :
      (M.submatrix φ φ).mulVec (v ∘ φ) =
        M.mulVec v ∘ φ := by
    simpa [Function.comp_def] using
      Matrix.submatrix_mulVec_equiv M (v ∘ φ) φ φ
  have h_star : star (v ∘ φ) = star v ∘ φ := by
    rfl
  rw [h_mul, h_star, comp_equiv_dotProduct_comp_equiv]
  rw [dotProduct_comm]

theorem purificationJointEffect_submatrix
    {dA dB : Type} [Fintype dA] [Fintype dB]
    [DecidableEq dA] [DecidableEq dB]
    (A : Matrix dA dA ℂ) (B : Matrix dB dB ℂ) :
    (A ⊗ₖ (1 : Matrix (dA × dB) (dA × dB) ℂ)) ⊗ₖ B =
      ((1 : Matrix (dA × dB) (dA × dB) ℂ) ⊗ₖ
        (A ⊗ₖ B)).submatrix
          (strategyPurificationShuffle dA dB)
          (strategyPurificationShuffle dA dB) := by
  classical
  ext ⟨⟨a, k⟩, b⟩ ⟨⟨a', k'⟩, b'⟩
  simp [Matrix.kroneckerMap_apply, Matrix.submatrix_apply,
    strategyPurificationShuffle, Matrix.one_apply]

theorem strategyPurificationVector_quadratic
    {X Y A B : Type*}
    [Fintype X] [Fintype Y] [Fintype A] [Fintype B]
    {G : Game X Y A B} (S : Strategy G)
    (EA : Matrix S.Alice S.Alice ℂ)
    (EB : Matrix S.Bob S.Bob ℂ) :
    quadraticExpectation
      (Matrix.toEuclideanCLM
        (n := (S.Alice × (S.Alice × S.Bob)) × S.Bob) (𝕜 := ℂ)
        ((EA ⊗ₖ (1 : Matrix (S.Alice × S.Bob)
          (S.Alice × S.Bob) ℂ)) ⊗ₖ EB))
      (strategyPurificationVector S) =
      (Matrix.trace
        (S.state.matrix * (EA ⊗ₖ EB))).re := by
  let K := spectralSupportSqrt S.state.matrix S.state.positive
  let E := EA ⊗ₖ EB
  let φ := strategyPurificationShuffle S.Alice S.Bob
  have h_hermitian : (Matrix.conjTranspose K) = K :=
    (spectralSupportFunctional_isHermitian
      S.state.matrix S.state.positive Real.sqrt).eq
  have h_lift := purificationJointEffect_submatrix EA EB
  change
    quadraticExpectation
      (Matrix.toEuclideanCLM
        (n := (S.Alice × (S.Alice × S.Bob)) × S.Bob) (𝕜 := ℂ)
        ((EA ⊗ₖ (1 : Matrix (S.Alice × S.Bob)
          (S.Alice × S.Bob) ℂ)) ⊗ₖ EB))
      (toLp 2 (Matrix.vec K ∘ φ)) =
      (Matrix.trace (S.state.matrix * E)).re
  rw [h_lift]
  rw [reindexedMatrixQuadratic φ
    ((1 : Matrix (S.Alice × S.Bob) (S.Alice × S.Bob) ℂ) ⊗ₖ E)
    (Matrix.vec K)]
  have h_vec :
      Matrix.mulVec
        ((1 : Matrix (S.Alice × S.Bob) (S.Alice × S.Bob) ℂ) ⊗ₖ E)
        (Matrix.vec K) =
        Matrix.vec (E * K) := by
    exact (Matrix.vec_mul_eq_mulVec E K).symm
  rw [h_vec, Matrix.star_vec_dotProduct_vec]
  rw [h_hermitian]
  congr 1
  calc
    Matrix.trace (K * (E * K)) =
      Matrix.trace (K * E * K) := by rw [Matrix.mul_assoc]
    _ = Matrix.trace (K * K * E) := by
      rw [Matrix.trace_mul_cycle]
    _ = Matrix.trace (S.state.matrix * E) := by
      change
        Matrix.trace
          (spectralSupportSqrt S.state.matrix S.state.positive *
            spectralSupportSqrt S.state.matrix S.state.positive * E) = _
      rw [spectralSupportSqrt_sq]

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

theorem finiteLocalPurificationJointMatrix_gram
    {X Y A B eA eB : Type*}
    [Fintype X] [Fintype Y] [Fintype A] [Fintype B]
    [Fintype eA] [Fintype eB]
    {G : Game X Y A B} (S : Strategy G)
    (KA : Matrix eA S.Alice ℂ) (KB : Matrix eB S.Bob ℂ) :
    (finiteLocalPurificationJointMatrix S KA KB).conjTranspose *
        finiteLocalPurificationJointMatrix S KA KB =
      ((KA.conjTranspose * KA) ⊗ₖ
        (1 : Matrix (S.Alice × S.Bob) (S.Alice × S.Bob) ℂ)) ⊗ₖ
        (KB.conjTranspose * KB) := by
  unfold finiteLocalPurificationJointMatrix
  rw [Matrix.conjTranspose_kronecker,
    ← Matrix.mul_kronecker_mul,
    Matrix.conjTranspose_kronecker,
    ← Matrix.mul_kronecker_mul]
  simp

theorem finiteLocalPurificationVector_norm_sq
    {X Y A B eA eB : Type*}
    [Fintype X] [Fintype Y] [Fintype A] [Fintype B]
    [Fintype eA] [Fintype eB]
    {G : Game X Y A B} (S : Strategy G)
    (KA : Matrix eA S.Alice ℂ) (KB : Matrix eB S.Bob ℂ) :
    ‖finiteLocalPurificationVector S KA KB‖ ^ 2 =
      (Matrix.trace
        (S.state.matrix *
          ((KA.conjTranspose * KA) ⊗ₖ
            (KB.conjTranspose * KB)))).re := by
  unfold finiteLocalPurificationVector
  rw [rectangular_matrix_mulVec_norm_sq,
    finiteLocalPurificationJointMatrix_gram]
  exact strategyPurificationVector_quadratic S
    (KA.conjTranspose * KA) (KB.conjTranspose * KB)

end

noncomputable section

open Matrix
open scoped BigOperators Kronecker ComplexOrder MatrixOrder

set_option backward.isDefEq.respectTransparency false
set_option maxHeartbeats 1500000

variable {X Y A B : Type*}
variable [Fintype X] [Fintype Y] [Fintype A] [Fintype B]

theorem fullCoordinate_three_sum_rotate
    {I J K T : Type*}
    [Fintype I] [Fintype J] [Fintype K] [AddCommMonoid T]
    (f : I → J → K → T) :
    (∑ i : I, ∑ j : J, ∑ k : K, f i j k) =
      ∑ j : J, ∑ k : K, ∑ i : I, f i j k := by
  calc
    (∑ i : I, ∑ j : J, ∑ k : K, f i j k) =
      ∑ j : J, ∑ i : I, ∑ k : K, f i j k := by
        rw [Finset.sum_comm]
    _ = ∑ j : J, ∑ k : K, ∑ i : I, f i j k := by
      apply Finset.sum_congr rfl
      intro j _
      rw [Finset.sum_comm]

end

noncomputable section

open scoped BigOperators

attribute [local instance] Classical.propDecidable

theorem exactLeftPrefix_subset
    {M : Type*} [Fintype M] [DecidableEq M]
    (seed : ExactForwardSeed M) :
    exactLeftPrefix seed ⊆
      exactLeft seed.coordinate seed.partition := by
  intro j hj
  obtain ⟨a, _, ha⟩ := Finset.mem_image.mp hj
  exact ha ▸ a.property

theorem exactRightPrefix_subset
    {M : Type*} [Fintype M] [DecidableEq M]
    (seed : ExactForwardSeed M) :
    exactRightPrefix seed ⊆
      exactRight seed.coordinate seed.partition := by
  intro j hj
  obtain ⟨a, _, ha⟩ := Finset.mem_image.mp hj
  exact ha ▸ a.property

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

theorem exactAlicePurificationMatrix_gram
    (G : Game X Y A B) (n : ℕ) (S : Strategy (G.repeat n))
    (D : Finset (Fin n))
    (seed : ExactRemainingSeed D)
    (history : ExactRevealHistory X Y D seed)
    (answer : {j : Fin n // j ∈ D} → A)
    (q : Sum X Y) :
    (exactAlicePurificationMatrix
      G n S D seed history answer q).conjTranspose *
      exactAlicePurificationMatrix
        G n S D seed history answer q =
      exactAlicePurificationFamily
        G n S D seed history answer q :=
  finitePurificationMatrix_gram
    (exactAlicePurificationFamily
      G n S D seed history answer)
    0
    (exactAlicePurificationFamily_posSemidef
      G n S D seed history answer)
    Matrix.PosSemidef.zero q

theorem exactBobPurificationMatrix_gram
    (G : Game X Y A B) (n : ℕ) (S : Strategy (G.repeat n))
    (D : Finset (Fin n))
    (seed : ExactRemainingSeed D)
    (history : ExactRevealHistory X Y D seed)
    (answer : {j : Fin n // j ∈ D} → B)
    (q : Sum Y X) :
    (exactBobPurificationMatrix
      G n S D seed history answer q).conjTranspose *
      exactBobPurificationMatrix
        G n S D seed history answer q =
      exactBobPurificationFamily
        G n S D seed history answer q :=
  finitePurificationMatrix_gram
    (exactBobPurificationFamily
      G n S D seed history answer)
    0
    (exactBobPurificationFamily_posSemidef
      G n S D seed history answer)
    Matrix.PosSemidef.zero q

theorem exactUnnormalizedPsi_norm_sq
    (G : Game X Y A B) (n : ℕ) (S : Strategy (G.repeat n))
    (D : Finset (Fin n))
    (r : ExactHistoryFlag X Y A B D)
    (x : X) (y : Y) :
    ‖exactUnnormalizedPsi G n S D r x y‖ ^ 2 =
      bornTracePairing S.state.matrix
        (exactAliceQuestionFilter
          G n S D r.seed r.history r.aliceAnswer x)
        (exactBobQuestionFilter
          G n S D r.seed r.history r.bobAnswer y) := by
  unfold exactUnnormalizedPsi
  rw [finiteLocalPurificationVector_norm_sq,
    exactAlicePurificationMatrix_gram,
    exactBobPurificationMatrix_gram]
  rfl

end

noncomputable section

open scoped BigOperators

set_option backward.isDefEq.respectTransparency false
set_option maxHeartbeats 1200000
set_option maxRecDepth 2048

attribute [local instance] Classical.propDecidable

variable {X Y A B : Type*}
variable [Fintype X] [Fintype Y] [Fintype A] [Fintype B]

theorem exactRevealCode_compatible_iff
    {n : ℕ} (D : Finset (Fin n))
    (seed : ExactRemainingSeed D)
    (history : ExactRevealHistory X Y D seed)
    (x : X) (y : Y)
    (xs : Fin n → X) (ys : Fin n → Y) :
    (exactRevealCode D seed (xs, ys) = history ∧
      xs seed.coordinate.val = x ∧ ys seed.coordinate.val = y) ↔
      exactAliceQuestionCompatible
        D seed history x xs ∧
      exactBobQuestionCompatible
        D seed history y ys := by
  constructor
  · rintro ⟨h, hx, hy⟩
    subst history
    exact ⟨⟨fun _ => rfl, fun _ => rfl, fun _ => rfl, hx⟩,
      ⟨fun _ => rfl, fun _ => rfl, fun _ => rfl, hy⟩⟩
  · rintro ⟨⟨hxc, hxl, hxr, hx⟩,
      ⟨hyc, hyr, hyl, hy⟩⟩
    refine ⟨?_, hx, hy⟩
    cases history with
    | mk ac bc al br bl ar =>
      have hac :
          (fun j : {j : Fin n // j ∈ D} => xs j.val) = ac :=
        funext hxc
      have hbc :
          (fun j : {j : Fin n // j ∈ D} => ys j.val) = bc :=
        funext hyc
      have hal :
          (fun j : {j : SourceRemainingCoordinate D //
            j ∈ exactLeft seed.coordinate seed.partition} =>
            xs j.val.val) = al :=
        funext hxl
      have hbr :
          (fun j : {j : SourceRemainingCoordinate D //
            j ∈ exactRight seed.coordinate seed.partition} =>
            ys j.val.val) = br :=
        funext hyr
      have hbl :
          (fun j : {j : SourceRemainingCoordinate D //
            j ∈ exactLeftPrefix seed} =>
            ys j.val.val) = bl :=
        funext hyl
      have har :
          (fun j : {j : SourceRemainingCoordinate D //
            j ∈ exactRightPrefix seed} =>
            xs j.val.val) = ar :=
        funext hxr
      cases hac
      cases hbc
      cases hal
      cases hbr
      cases hbl
      cases har
      rfl

end

noncomputable section

open WithLp
open scoped BigOperators ComplexOrder Kronecker MatrixOrder
  Matrix.Norms.L2Operator InnerProductSpace

set_option backward.isDefEq.respectTransparency false
set_option maxHeartbeats 1600000
set_option maxRecDepth 2048

attribute [local instance] Classical.propDecidable

variable {X Y A B : Type*}
variable [Fintype X] [Fintype Y] [Fintype A] [Fintype B]

theorem exactFiberQuestionMass_eq_jointQuestionMass
    (G : Game X Y A B) (n : ℕ)
    (D : Finset (Fin n))
    (seed : ExactRemainingSeed D)
    (history : ExactRevealHistory X Y D seed)
    (x : X) (y : Y) :
    exactFiberQuestionMass G n D seed history x y =
      exactJointQuestionMass G n D seed history x y := by
  classical
  unfold exactFiberQuestionMass
    exactFiberQuestionWeight
    exactJointQuestionMass
  rw [Fintype.sum_prod_type]
  apply Finset.sum_congr rfl
  intro xs _
  apply Finset.sum_congr rfl
  intro ys _
  simp [exactPriorQuestionWeight,
    exactRevealCode_compatible_iff]

end

noncomputable section

open scoped BigOperators

set_option backward.isDefEq.respectTransparency false
set_option maxHeartbeats 1800000
set_option maxRecDepth 2048

attribute [local instance] Classical.propDecidable

variable {X Y A B : Type*}
variable [Fintype X] [Fintype Y] [Fintype A] [Fintype B]

theorem exactRevealCode_splitAt_independent
    {n : ℕ} (D : Finset (Fin n))
    (seed : ExactRemainingSeed D)
    (x x' : X) (y y' : Y)
    (tailX : {j : Fin n // j ≠ seed.coordinate.val} → X)
    (tailY : {j : Fin n // j ≠ seed.coordinate.val} → Y) :
    exactRevealCode D seed
      ((Equiv.funSplitAt seed.coordinate.val X).symm (x, tailX),
       (Equiv.funSplitAt seed.coordinate.val Y).symm (y, tailY)) =
    exactRevealCode D seed
      ((Equiv.funSplitAt seed.coordinate.val X).symm (x', tailX),
       (Equiv.funSplitAt seed.coordinate.val Y).symm (y', tailY)) := by
  unfold exactRevealCode
  congr 1
  · funext j
    have hiD : seed.coordinate.val ∉ D :=
      (Finset.mem_sdiff.mp seed.coordinate.property).2
    have different : j.val ≠ seed.coordinate.val := by
      intro h
      exact hiD (h ▸ j.property)
    simp [Equiv.funSplitAt, Equiv.piSplitAt, different]
  · funext j
    have hiD : seed.coordinate.val ∉ D :=
      (Finset.mem_sdiff.mp seed.coordinate.property).2
    have different : j.val ≠ seed.coordinate.val := by
      intro h
      exact hiD (h ▸ j.property)
    simp [Equiv.funSplitAt, Equiv.piSplitAt, different]
  · funext j
    have different : j.val.val ≠ seed.coordinate.val := by
      intro h
      have same : j.val = seed.coordinate := Subtype.ext h
      have mem : seed.coordinate ∈
          exactLeft seed.coordinate seed.partition := by
        simpa [same] using j.property
      exact exactLeft_coordinate_not_mem
        seed.coordinate seed.partition mem
    simp [Equiv.funSplitAt, Equiv.piSplitAt, different]
  · funext j
    have different : j.val.val ≠ seed.coordinate.val := by
      intro h
      have same : j.val = seed.coordinate := Subtype.ext h
      have mem : seed.coordinate ∈
          exactRight seed.coordinate seed.partition := by
        simpa [same] using j.property
      exact exactRight_coordinate_not_mem
        seed.coordinate seed.partition mem
    simp [Equiv.funSplitAt, Equiv.piSplitAt, different]
  · funext j
    have different : j.val.val ≠ seed.coordinate.val := by
      intro h
      have same : j.val = seed.coordinate := Subtype.ext h
      have hleft := exactLeftPrefix_subset seed j.property
      exact exactLeft_coordinate_not_mem
        seed.coordinate seed.partition (same ▸ hleft)
    simp [Equiv.funSplitAt, Equiv.piSplitAt, different]
  · funext j
    have different : j.val.val ≠ seed.coordinate.val := by
      intro h
      have same : j.val = seed.coordinate := Subtype.ext h
      have hright := exactRightPrefix_subset seed j.property
      exact exactRight_coordinate_not_mem
        seed.coordinate seed.partition (same ▸ hright)
    simp [Equiv.funSplitAt, Equiv.piSplitAt, different]

theorem exactRepeatedQuestionWeight_splitAt_joint
    (G : Game X Y A B) (n : ℕ) (i : Fin n)
    (x : X) (y : Y)
    (tailX : {j : Fin n // j ≠ i} → X)
    (tailY : {j : Fin n // j ≠ i} → Y) :
    (G.repeat n).questionWeight
        ((Equiv.funSplitAt i X).symm (x, tailX))
        ((Equiv.funSplitAt i Y).symm (y, tailY)) =
      G.questionWeight x y *
        ∏ j : {j : Fin n // j ≠ i},
          G.questionWeight (tailX j) (tailY j) := by
  classical
  rw [Game.repeat_questionWeight]
  rw [← Finset.mul_prod_erase
    (Finset.univ : Finset (Fin n))
    (fun j : Fin n => G.questionWeight
      ((Equiv.funSplitAt i X).symm (x, tailX) j)
      ((Equiv.funSplitAt i Y).symm (y, tailY) j))
    (Finset.mem_univ i)]
  simp only [Equiv.funSplitAt, Equiv.piSplitAt,
    Equiv.coe_fn_symm_mk, dite_true]
  congr 1
  let e : {j : Fin n // j ∈ (Finset.univ : Finset (Fin n)).erase i} ≃
      {j : Fin n // j ≠ i} :=
    { toFun := fun j => ⟨j.val, (Finset.mem_erase.mp j.property).1⟩
      invFun := fun j => ⟨j.val,
        Finset.mem_erase.mpr ⟨j.property, Finset.mem_univ _⟩⟩
      left_inv := fun _ => rfl
      right_inv := fun _ => rfl }
  rw [← Finset.prod_coe_sort, ← e.prod_comp]
  apply Finset.prod_congr rfl
  intro j _
  have different : j.val ≠ i := (Finset.mem_erase.mp j.property).1
  simp [different, e]

theorem exactFairQuestionTailWeight_independent
    (G : Game X Y A B) (n : ℕ)
    (D : Finset (Fin n))
    (seed : ExactRemainingSeed D)
    (history : ExactRevealHistory X Y D seed)
    (x x' : X) (y y' : Y) :
    exactFairQuestionTailWeight
        G n D seed history x y =
      exactFairQuestionTailWeight
        G n D seed history x' y' := by
  unfold exactFairQuestionTailWeight
  apply Finset.sum_congr rfl
  intro tailX _
  apply Finset.sum_congr rfl
  intro tailY _
  rw [exactRevealCode_splitAt_independent
    D seed x x' y y' tailX tailY]

theorem exactJointQuestionMass_eq_question_mul_tail
    (G : Game X Y A B) (n : ℕ)
    (D : Finset (Fin n))
    (seed : ExactRemainingSeed D)
    (history : ExactRevealHistory X Y D seed)
    (x : X) (y : Y) :
    exactJointQuestionMass G n D seed history x y =
      G.questionWeight x y *
        exactFairQuestionTailWeight
          G n D seed history x y := by
  classical
  let e := Equiv.prodCongr
    (Equiv.funSplitAt seed.coordinate.val X)
    (Equiv.funSplitAt seed.coordinate.val Y)
  calc
    exactJointQuestionMass G n D seed history x y =
      ∑ t : (X × ({j : Fin n // j ≠ seed.coordinate.val} → X)) ×
          (Y × ({j : Fin n // j ≠ seed.coordinate.val} → Y)),
        if exactRevealCode D seed (e.symm t) = history ∧
          (e.symm t).1 seed.coordinate.val = x ∧
          (e.symm t).2 seed.coordinate.val = y
        then exactPriorQuestionWeight G n (e.symm t)
        else 0 := by
          unfold exactJointQuestionMass
          exact (e.symm.sum_comp (fun q =>
            if exactRevealCode D seed q = history ∧
              q.1 seed.coordinate.val = x ∧
              q.2 seed.coordinate.val = y
            then exactPriorQuestionWeight G n q
            else 0)).symm
    _ = ∑ tailX : {j : Fin n // j ≠ seed.coordinate.val} → X,
        ∑ tailY : {j : Fin n // j ≠ seed.coordinate.val} → Y,
          if exactRevealCode D seed
             ((Equiv.funSplitAt seed.coordinate.val X).symm (x, tailX),
              (Equiv.funSplitAt seed.coordinate.val Y).symm (y, tailY)) =
                history
          then exactPriorQuestionWeight G n
             ((Equiv.funSplitAt seed.coordinate.val X).symm (x, tailX),
              (Equiv.funSplitAt seed.coordinate.val Y).symm (y, tailY))
          else 0 := by
            simp only [Fintype.sum_prod_type, e, Equiv.prodCongr,
              Equiv.coe_fn_symm_mk, Prod.map, Equiv.funSplitAt,
              Equiv.piSplitAt, dite_true]
            change
              (∑ xx : X,
                ∑ tailX : {j : Fin n // j ≠ seed.coordinate.val} → X,
                ∑ yy : Y,
                ∑ tailY : {j : Fin n // j ≠ seed.coordinate.val} → Y,
                  if exactRevealCode D seed
                      ((Equiv.funSplitAt seed.coordinate.val X).symm
                         (xx, tailX),
                       (Equiv.funSplitAt seed.coordinate.val Y).symm
                         (yy, tailY)) = history ∧
                    xx = x ∧ yy = y then
                    exactPriorQuestionWeight G n
                      ((Equiv.funSplitAt seed.coordinate.val X).symm
                         (xx, tailX),
                       (Equiv.funSplitAt seed.coordinate.val Y).symm
                         (yy, tailY))
                  else 0) = _
            rw [Finset.sum_comm]
            apply Finset.sum_congr rfl
            intro tailX _
            calc
              (∑ xx : X,
                ∑ yy : Y,
                ∑ tailY : {j : Fin n // j ≠ seed.coordinate.val} → Y,
                  if exactRevealCode D seed
                      ((Equiv.funSplitAt seed.coordinate.val X).symm
                         (xx, tailX),
                       (Equiv.funSplitAt seed.coordinate.val Y).symm
                         (yy, tailY)) = history ∧
                    xx = x ∧ yy = y then
                    exactPriorQuestionWeight G n
                      ((Equiv.funSplitAt seed.coordinate.val X).symm
                         (xx, tailX),
                       (Equiv.funSplitAt seed.coordinate.val Y).symm
                         (yy, tailY))
                  else 0) =
                ∑ xx : X,
                ∑ tailY : {j : Fin n // j ≠ seed.coordinate.val} → Y,
                ∑ yy : Y,
                  if exactRevealCode D seed
                      ((Equiv.funSplitAt seed.coordinate.val X).symm
                         (xx, tailX),
                       (Equiv.funSplitAt seed.coordinate.val Y).symm
                         (yy, tailY)) = history ∧
                    xx = x ∧ yy = y then
                    exactPriorQuestionWeight G n
                      ((Equiv.funSplitAt seed.coordinate.val X).symm
                         (xx, tailX),
                       (Equiv.funSplitAt seed.coordinate.val Y).symm
                         (yy, tailY))
                  else 0 := by
                    apply Finset.sum_congr rfl
                    intro xx _
                    rw [Finset.sum_comm]
              _ = ∑ tailY : {j : Fin n // j ≠ seed.coordinate.val} → Y,
                  ∑ xx : X, ∑ yy : Y,
                    if exactRevealCode D seed
                        ((Equiv.funSplitAt seed.coordinate.val X).symm
                           (xx, tailX),
                         (Equiv.funSplitAt seed.coordinate.val Y).symm
                           (yy, tailY)) = history ∧
                      xx = x ∧ yy = y then
                      exactPriorQuestionWeight G n
                        ((Equiv.funSplitAt seed.coordinate.val X).symm
                           (xx, tailX),
                         (Equiv.funSplitAt seed.coordinate.val Y).symm
                           (yy, tailY))
                    else 0 := by
                      rw [Finset.sum_comm]
              _ = _ := by
                    apply Finset.sum_congr rfl
                    intro tailY _
                    have hcondition (xx : X) (yy : Y) :
                        (exactRevealCode D seed
                            ((Equiv.funSplitAt seed.coordinate.val X).symm
                               (xx, tailX),
                             (Equiv.funSplitAt seed.coordinate.val Y).symm
                               (yy, tailY)) = history ∧
                          xx = x ∧ yy = y) =
                        (xx = x ∧ yy = y ∧
                          exactRevealCode D seed
                            ((Equiv.funSplitAt seed.coordinate.val X).symm
                               (xx, tailX),
                             (Equiv.funSplitAt seed.coordinate.val Y).symm
                               (yy, tailY)) = history) := by
                          apply propext
                          tauto
                    simp_rw [hcondition, ite_and]
                    simp [Equiv.funSplitAt, Equiv.piSplitAt]
    _ = G.questionWeight x y *
        exactFairQuestionTailWeight G n D seed history x y := by
          unfold exactFairQuestionTailWeight
          rw [Finset.mul_sum]
          apply Finset.sum_congr rfl
          intro tailX _
          rw [Finset.mul_sum]
          apply Finset.sum_congr rfl
          intro tailY _
          by_cases h : exactRevealCode D seed
              ((Equiv.funSplitAt seed.coordinate.val X).symm (x, tailX),
               (Equiv.funSplitAt seed.coordinate.val Y).symm (y, tailY)) =
                history
          · rw [if_pos h, if_pos h]
            exact exactRepeatedQuestionWeight_splitAt_joint
              G n seed.coordinate.val x y tailX tailY
          · simp [h]

theorem exactJointQuestionMass_sum
    (G : Game X Y A B) (n : ℕ)
    (D : Finset (Fin n))
    (seed : ExactRemainingSeed D)
    (history : ExactRevealHistory X Y D seed) :
    (∑ x : X, ∑ y : Y,
      exactJointQuestionMass G n D seed history x y) =
      exactRevealMass G n D seed history := by
  classical
  unfold exactJointQuestionMass exactRevealMass
  calc
    (∑ x : X, ∑ y : Y,
      ∑ q : ExactFullQuestion X Y n,
        if exactRevealCode D seed q = history ∧
          q.1 seed.coordinate.val = x ∧
          q.2 seed.coordinate.val = y
        then exactPriorQuestionWeight G n q
        else 0) =
      ∑ q : ExactFullQuestion X Y n,
        ∑ x : X, ∑ y : Y,
          if exactRevealCode D seed q = history ∧
            q.1 seed.coordinate.val = x ∧
            q.2 seed.coordinate.val = y
          then exactPriorQuestionWeight G n q
          else 0 := by
            calc
              (∑ x : X, ∑ y : Y,
                ∑ q : ExactFullQuestion X Y n,
                  if exactRevealCode D seed q = history ∧
                    q.1 seed.coordinate.val = x ∧
                    q.2 seed.coordinate.val = y
                  then exactPriorQuestionWeight G n q
                  else 0) =
                ∑ y : Y, ∑ q : ExactFullQuestion X Y n,
                ∑ x : X,
                  if exactRevealCode D seed q = history ∧
                    q.1 seed.coordinate.val = x ∧
                    q.2 seed.coordinate.val = y
                  then exactPriorQuestionWeight G n q
                  else 0 :=
                    fullCoordinate_three_sum_rotate _
              _ = _ := fullCoordinate_three_sum_rotate _
    _ = ∑ q : ExactFullQuestion X Y n,
        if exactRevealCode D seed q = history
        then exactPriorQuestionWeight G n q
        else 0 := by
          apply Finset.sum_congr rfl
          intro q _
          by_cases h : exactRevealCode D seed q = history
          · have hsum :
                (∑ xx : X, ∑ yy : Y,
                  if q.1 seed.coordinate.val = xx ∧
                    q.2 seed.coordinate.val = yy
                  then exactPriorQuestionWeight G n q
                  else 0) = exactPriorQuestionWeight G n q := by
                  calc
                    (∑ xx : X, ∑ yy : Y,
                      if q.1 seed.coordinate.val = xx ∧
                        q.2 seed.coordinate.val = yy
                      then exactPriorQuestionWeight G n q
                      else 0) =
                      ∑ xx : X,
                        if q.1 seed.coordinate.val = xx
                        then exactPriorQuestionWeight G n q
                        else 0 := by
                          apply Finset.sum_congr rfl
                          intro xx _
                          by_cases hx : q.1 seed.coordinate.val = xx
                          · simp [hx]
                          · simp [hx]
                    _ = _ := by simp
            simpa [h] using hsum
          · simp [h]

theorem exactJointQuestionMass_eq_reveal_mul_question
    (G : Game X Y A B) (n : ℕ)
    (D : Finset (Fin n))
    (seed : ExactRemainingSeed D)
    (history : ExactRevealHistory X Y D seed)
    (x : X) (y : Y) :
    exactJointQuestionMass G n D seed history x y =
      exactRevealMass G n D seed history *
        G.questionWeight x y := by
  have htotal := exactJointQuestionMass_sum
    G n D seed history
  have htail :
      exactRevealMass G n D seed history =
        exactFairQuestionTailWeight
          G n D seed history x y := by
    calc
      exactRevealMass G n D seed history =
        ∑ xx : X, ∑ yy : Y,
          exactJointQuestionMass
            G n D seed history xx yy := htotal.symm
      _ = ∑ xx : X, ∑ yy : Y,
          G.questionWeight xx yy *
            exactFairQuestionTailWeight
              G n D seed history x y := by
            apply Finset.sum_congr rfl
            intro xx _
            apply Finset.sum_congr rfl
            intro yy _
            rw [exactJointQuestionMass_eq_question_mul_tail]
            rw [exactFairQuestionTailWeight_independent
              G n D seed history xx x yy y]
      _ = (∑ xx : X, ∑ yy : Y,
          G.questionWeight xx yy) *
            exactFairQuestionTailWeight
              G n D seed history x y := by
            simp [Finset.sum_mul]
      _ = exactFairQuestionTailWeight
          G n D seed history x y := by
            rw [G.weight_normalized]
            simp
  rw [exactJointQuestionMass_eq_question_mul_tail,
    ← htail]
  ring

end

noncomputable section

open scoped BigOperators ComplexOrder Kronecker MatrixOrder
  Matrix.Norms.L2Operator InnerProductSpace

set_option backward.isDefEq.respectTransparency false
set_option maxHeartbeats 1800000
set_option maxRecDepth 2048

attribute [local instance] Classical.propDecidable

variable {X Y A B : Type*}
variable [Fintype X] [Fintype Y] [Fintype A] [Fintype B]

theorem exactFairConditionedAnswerBornMass_eq_reveal_question_norm
    (G : Game X Y A B) (n : ℕ) (S : Strategy (G.repeat n))
    (D : Finset (Fin n))
    (r : ExactHistoryFlag X Y A B D)
    (x : X) (y : Y) :
    exactFairConditionedAnswerBornMass G n S D r x y =
      exactRevealMass G n D r.seed r.history *
        G.questionWeight x y *
        ‖exactUnnormalizedPsi G n S D r x y‖ ^ 2 := by
  rw [exactFairConditionedAnswerBornMass_eq_fiber_norm,
    exactFiberQuestionMass_eq_jointQuestionMass,
    exactJointQuestionMass_eq_reveal_mul_question]

end

noncomputable section

open scoped BigOperators ComplexOrder Kronecker MatrixOrder
  Matrix.Norms.L2Operator InnerProductSpace

set_option backward.isDefEq.respectTransparency false
set_option maxHeartbeats 2200000
set_option maxRecDepth 2048

open QuantumParallelRepetition.ClassicalInformation

attribute [local instance] Classical.propDecidable

variable {X Y A B : Type*}
variable [Fintype X] [Fintype Y] [Fintype A] [Fintype B]

theorem exactLocallySampleableCode_fixedSeed_fiber_iff
    {n : ℕ} (D : Finset (Fin n))
    (r : ExactHistoryFlag X Y A B D)
    (x : X) (y : Y)
    (o : ExactOutcome X Y A B n) :
    exactLocallySampleableCode D (r.seed, o) =
        (r.seed.coordinate, x, y, r) ↔
      exactRevealCode D r.seed (o.1, o.2.1) = r.history ∧
      o.1 r.seed.coordinate.val = x ∧
      o.2.1 r.seed.coordinate.val = y ∧
      (∀ j : {j : Fin n // j ∈ D},
        o.2.2.1 j.val = r.aliceAnswer j) ∧
      (∀ j : {j : Fin n // j ∈ D},
        o.2.2.2 j.val = r.bobAnswer j) := by
  constructor
  · intro h
    have hx := congrArg
      (fun t : ExactLocallySampleableTuple X Y A B D => t.2.1) h
    have hy := congrArg
      (fun t : ExactLocallySampleableTuple X Y A B D => t.2.2.1) h
    have hr := congrArg
      (fun t : ExactLocallySampleableTuple X Y A B D => t.2.2.2) h
    have hh0 := congrArg
      (fun z : ExactHistoryFlag X Y A B D =>
        if hs : z.seed = r.seed then hs ▸ z.history else r.history) hr
    have hh :
        exactRevealCode D r.seed (o.1, o.2.1) = r.history := by
      simpa [exactLocallySampleableCode,
        exactHistoryCode] using hh0
    refine ⟨hh, hx, hy, ?_, ?_⟩
    · have ha := congrArg ExactHistoryFlag.aliceAnswer hr
      intro j
      exact congrFun ha j
    · have hb := congrArg ExactHistoryFlag.bobAnswer hr
      intro j
      exact congrFun hb j
  · rintro ⟨hh, hx, hy, ha, hb⟩
    have hr : exactHistoryCode D (r.seed, o) = r := by
      apply ExactHistoryFlag.ext
      · rfl
      · exact heq_of_eq hh
      · funext j
        exact ha j
      · funext j
        exact hb j
    change
      (r.seed.coordinate,
        o.1 r.seed.coordinate.val,
        o.2.1 r.seed.coordinate.val,
        exactHistoryCode D (r.seed, o)) =
      (r.seed.coordinate, x, y, r)
    rw [hx, hy, hr]

theorem exactFairFullOutcomeBornMass_eq_conditioned
    (G : Game X Y A B) (n : ℕ) (S : Strategy (G.repeat n))
    (D : Finset (Fin n))
    (r : ExactHistoryFlag X Y A B D)
    (x : X) (y : Y) :
    exactFairFullOutcomeBornMass G n S D r x y =
      exactFairConditionedAnswerBornMass G n S D r x y := by
  classical
  unfold exactFairFullOutcomeBornMass
    exactFairConditionedAnswerBornMass
  simp only [Fintype.sum_prod_type]
  apply Finset.sum_congr rfl
  intro xs _
  apply Finset.sum_congr rfl
  intro ys _
  have hq :
      (exactAliceQuestionCompatible
        D r.seed r.history x xs ∧
        exactBobQuestionCompatible
          D r.seed r.history y ys) ↔
        exactRevealCode D r.seed (xs, ys) = r.history ∧
        xs r.seed.coordinate.val = x ∧
        ys r.seed.coordinate.val = y :=
    (exactRevealCode_compatible_iff
      D r.seed r.history x y xs ys).symm
  by_cases compatible :
      exactAliceQuestionCompatible
        D r.seed r.history x xs ∧
      exactBobQuestionCompatible
        D r.seed r.history y ys
  · have hc := hq.mp compatible
    rw [exactFiberQuestionWeight]
    simp only [if_pos compatible]
    rw [conditionedEffects_born_expansion]
    rw [Finset.mul_sum]
    apply Finset.sum_congr rfl
    intro aa _
    rw [Finset.mul_sum]
    apply Finset.sum_congr rfl
    intro bb _
    have hf := exactLocallySampleableCode_fixedSeed_fiber_iff
      D r x y (xs, ys, aa, bb)
    have ha :
        (∀ (j : Fin n) (hj : j ∈ D),
          aa j = r.aliceAnswer ⟨j, hj⟩) ↔
        (∀ j : {j : Fin n // j ∈ D},
          aa j.val = r.aliceAnswer j) := by
      constructor
      · intro h j
        exact h j.val j.property
      · intro h j hj
        exact h ⟨j, hj⟩
    have hb :
        (∀ (j : Fin n) (hj : j ∈ D),
          bb j = r.bobAnswer ⟨j, hj⟩) ↔
        (∀ j : {j : Fin n // j ∈ D},
          bb j.val = r.bobAnswer j) := by
      constructor
      · intro h j
        exact h j.val j.property
      · intro h j hj
        exact h ⟨j, hj⟩
    by_cases aok : ∀ (j : Fin n) (hj : j ∈ D),
      aa j = r.aliceAnswer ⟨j, hj⟩
    · by_cases bok : ∀ (j : Fin n) (hj : j ∈ D),
          bb j = r.bobAnswer ⟨j, hj⟩
      · have code :
            exactLocallySampleableCode D
              (r.seed, (xs, ys, aa, bb)) =
                (r.seed.coordinate, x, y, r) :=
          hf.mpr ⟨hc.1, hc.2.1, hc.2.2,
            ha.mp aok, hb.mp bok⟩
        simp only [if_pos code, if_pos aok, if_pos bok]
        rfl
      · have notcode :
            exactLocallySampleableCode D
              (r.seed, (xs, ys, aa, bb)) ≠
                (r.seed.coordinate, x, y, r) := by
          intro code
          exact bok (hb.mpr (hf.mp code).2.2.2.2)
        simp [notcode, bok]
    · have notcode :
          exactLocallySampleableCode D
            (r.seed, (xs, ys, aa, bb)) ≠
              (r.seed.coordinate, x, y, r) := by
        intro code
        exact aok (ha.mpr (hf.mp code).2.2.2.1)
      simp [notcode, aok]
  · have notfiber :
        ¬ (exactRevealCode D r.seed (xs, ys) = r.history ∧
          xs r.seed.coordinate.val = x ∧
          ys r.seed.coordinate.val = y) := by
      intro h
      exact compatible (hq.mpr h)
    rw [exactFiberQuestionWeight]
    simp only [if_neg compatible, zero_mul]
    apply Finset.sum_eq_zero
    intro aa _
    apply Finset.sum_eq_zero
    intro bb _
    have notcode :
        exactLocallySampleableCode D
          (r.seed, (xs, ys, aa, bb)) ≠
            (r.seed.coordinate, x, y, r) := by
      intro code
      have h := (exactLocallySampleableCode_fixedSeed_fiber_iff
        D r x y (xs, ys, aa, bb)).mp code
      exact notfiber ⟨h.1, h.2.1, h.2.2.1⟩
    simp [notcode]

theorem exactFairFullOutcomeBornMass_eq_reveal_question_norm
    (G : Game X Y A B) (n : ℕ) (S : Strategy (G.repeat n))
    (D : Finset (Fin n))
    (r : ExactHistoryFlag X Y A B D)
    (x : X) (y : Y) :
    exactFairFullOutcomeBornMass G n S D r x y =
      exactRevealMass G n D r.seed r.history *
        G.questionWeight x y *
        ‖exactUnnormalizedPsi G n S D r x y‖ ^ 2 := by
  rw [exactFairFullOutcomeBornMass_eq_conditioned,
    exactFairConditionedAnswerBornMass_eq_reveal_question_norm]

end

noncomputable section

open scoped BigOperators ComplexOrder Kronecker MatrixOrder
  Matrix.Norms.L2Operator InnerProductSpace

set_option backward.isDefEq.respectTransparency false
set_option maxHeartbeats 6000000
set_option maxRecDepth 2048

attribute [local instance] Classical.propDecidable

variable {X Y A B : Type*}
variable [Fintype X] [Fintype Y] [Fintype A] [Fintype B]

theorem exactFairFullOutcomeBornMass_eq_reveal_question_born
    (G : Game X Y A B) (n : ℕ) (S : Strategy (G.repeat n))
    (D : Finset (Fin n))
    (r : ExactHistoryFlag X Y A B D)
    (x : X) (y : Y) :
    exactFairFullOutcomeBornMass G n S D r x y =
      exactRevealMass G n D r.seed r.history *
        G.questionWeight x y *
        bornTracePairing S.state.matrix
          (exactAliceQuestionFilter
            G n S D r.seed r.history r.aliceAnswer x)
          (exactBobQuestionFilter
            G n S D r.seed r.history r.bobAnswer y) := by
  rw [exactFairFullOutcomeBornMass_eq_reveal_question_norm,
    exactUnnormalizedPsi_norm_sq]

theorem exactFairAliceMeanBorn_eq_conditional
    (G : Game X Y A B) (n : ℕ) (S : Strategy (G.repeat n))
    (D : Finset (Fin n))
    (r : ExactHistoryFlag X Y A B D)
    (y : Y) :
    bornTracePairing S.state.matrix
        (exactAliceMeanFilter
          G n S D r.seed r.history r.aliceAnswer y)
        (exactBobQuestionFilter
          G n S D r.seed r.history r.bobAnswer y) =
      ∑ x : X, G.conditionalXGivenY y x *
        bornTracePairing S.state.matrix
          (exactAliceQuestionFilter
            G n S D r.seed r.history r.aliceAnswer x)
          (exactBobQuestionFilter
            G n S D r.seed r.history r.bobAnswer y) := by
  unfold exactAliceMeanFilter
  simp only [map_sum, map_smul, LinearMap.sum_apply,
    LinearMap.smul_apply, smul_eq_mul]

end

end QuantumParallelRepetition


open QuantumParallelRepetition
open scoped ComplexOrder Matrix BigOperators InnerProductSpace
open Complex Matrix Finset
open scoped BigOperators ComplexOrder Kronecker MatrixOrder
  Matrix.Norms.L2Operator InnerProductSpace
set_option backward.isDefEq.respectTransparency false
set_option maxHeartbeats 6000000
set_option maxRecDepth 2048
attribute [local instance] Classical.propDecidable
variable {X Y A B : Type*}
variable [Fintype X] [Fintype Y] [Fintype A] [Fintype B]

theorem solution
    (G : Game X Y A B) (n : ℕ) (S : Strategy (G.repeat n))
    (D : Finset (Fin n))
    (r : ExactHistoryFlag X Y A B D) :
    exactRevealMass G n D r.seed r.history *
        (∑ y : Y, G.marginalY y *
          bornTracePairing S.state.matrix
            (exactAliceMeanFilter
              G n S D r.seed r.history r.aliceAnswer y)
            (exactBobQuestionFilter
              G n S D r.seed r.history r.bobAnswer y)) =
      ∑ x : X, ∑ y : Y,
        exactFairFullOutcomeBornMass G n S D r x y := by
  classical
  calc
    exactRevealMass G n D r.seed r.history *
        (∑ y : Y, G.marginalY y *
          bornTracePairing S.state.matrix
            (exactAliceMeanFilter
              G n S D r.seed r.history r.aliceAnswer y)
            (exactBobQuestionFilter
              G n S D r.seed r.history r.bobAnswer y)) =
      ∑ y : Y, ∑ x : X,
        exactRevealMass G n D r.seed r.history *
          (G.marginalY y * G.conditionalXGivenY y x) *
          bornTracePairing S.state.matrix
            (exactAliceQuestionFilter
              G n S D r.seed r.history r.aliceAnswer x)
            (exactBobQuestionFilter
              G n S D r.seed r.history r.bobAnswer y) := by
        rw [Finset.mul_sum]
        apply Finset.sum_congr rfl
        intro y _
        rw [exactFairAliceMeanBorn_eq_conditional,
          Finset.mul_sum, Finset.mul_sum]
        apply Finset.sum_congr rfl
        intro x _
        ring
    _ = ∑ x : X, ∑ y : Y,
        exactRevealMass G n D r.seed r.history *
          G.questionWeight x y *
          bornTracePairing S.state.matrix
            (exactAliceQuestionFilter
              G n S D r.seed r.history r.aliceAnswer x)
            (exactBobQuestionFilter
              G n S D r.seed r.history r.bobAnswer y) := by
        rw [Finset.sum_comm]
        apply Finset.sum_congr rfl
        intro x _
        apply Finset.sum_congr rfl
        intro y _
        rw [G.marginalY_mul_conditionalXGivenY]
    _ = _ := by
        apply Finset.sum_congr rfl
        intro x _
        apply Finset.sum_congr rfl
        intro y _
        exact (exactFairFullOutcomeBornMass_eq_reveal_question_born
          G n S D r x y).symm
