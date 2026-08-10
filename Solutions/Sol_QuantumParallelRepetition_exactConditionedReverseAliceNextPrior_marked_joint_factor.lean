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

@[simp] theorem repeat_questionWeight (G : Game X Y A B) (n : ℕ)
    (xs : Fin n → X) (ys : Fin n → Y) :
    (G.repeat n).questionWeight xs ys =
      ∏ i : Fin n, G.questionWeight (xs i) (ys i) := rfl

end Game

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

end Game

end

open scoped ComplexOrder Matrix BigOperators InnerProductSpace
open Complex Matrix Finset

noncomputable section

open scoped BigOperators

open QuantumParallelRepetition.Pinsker
open QuantumParallelRepetition.ClassicalInformation

attribute [local instance] Classical.propDecidable

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

theorem groupedMass_product_injective_seed
    {K Ω C T : Type*}
    [Fintype K] [Fintype Ω] [Fintype C] [Fintype T]
    [DecidableEq C] [DecidableEq T]
    (code : K → C) (injective : Function.Injective code)
    (projection : K → Ω → T)
    (seedWeight : K → ℝ) (outcomeWeight : Ω → ℝ)
    (seed : K) (target : T) :
    groupedMass
        (fun q : K × Ω => (code q.1, projection q.1 q.2))
        (fun q : K × Ω => seedWeight q.1 * outcomeWeight q.2)
        (code seed, target) =
      seedWeight seed *
        groupedMass (projection seed) outcomeWeight target := by
  classical
  unfold groupedMass
  rw [Finset.sum_filter, Fintype.sum_prod_type,
    Finset.sum_filter, Finset.mul_sum]
  simp [injective.eq_iff]
  rw [Finset.sum_eq_single seed]
  · simp
  · intro other _ different
    simp [different]
  · simp

variable {X Y A B : Type*}
variable [Fintype X] [Fintype Y] [Fintype A] [Fintype B]

end

noncomputable section

open scoped BigOperators

set_option backward.isDefEq.respectTransparency false
set_option maxHeartbeats 2600000
set_option maxRecDepth 2048

open QuantumParallelRepetition.Pinsker
open QuantumParallelRepetition.ClassicalInformation

attribute [local instance] Classical.propDecidable

variable {X Y A B : Type*}
variable [Fintype X] [Fintype Y] [Fintype A] [Fintype B]

theorem reweightedSeedPrefixPrior_as_flagged_pushforward
    {K Ω V : Type*} [Fintype K] [Fintype Ω] [Fintype V]
    {h : ℕ}
    (seedLaw : FiniteEventLaw K)
    (G : Game X Y A B) (n : ℕ) (S : Strategy (G.repeat n))
    (D : Finset (Fin n))
    (projection : K × ExactOutcome X Y A B n →
      Ω × (Fin h → V))
    (t : (Ω × ConditionedAnswerFlag A B D) ×
      (Fin h → V)) :
    reweightedSeedPrefixPrior
        seedLaw G n S D projection t =
      groupedMass
        (fun q : ConditionedAnswerFlag A B D ×
            (K × ExactOutcome X Y A B n) =>
          (((projection q.2).1, q.1), (projection q.2).2))
        (fun q : ConditionedAnswerFlag A B D ×
            (K × ExactOutcome X Y A B n) =>
          finiteUniformWeight
              (ConditionedAnswerFlag A B D) *
            (reweightedSeedPriorEventLaw
              seedLaw G n S).weight q.2)
        t := by
  classical
  change
    groupedMass projection
        (reweightedSeedPriorEventLaw seedLaw G n S).weight
        (t.1.1, t.2) *
      finiteUniformWeight
        (ConditionedAnswerFlag A B D) = _
  calc
    groupedMass projection
        (reweightedSeedPriorEventLaw seedLaw G n S).weight
        (t.1.1, t.2) *
      finiteUniformWeight
        (ConditionedAnswerFlag A B D) =
      finiteUniformWeight
        (ConditionedAnswerFlag A B D) *
        groupedMass projection
          (reweightedSeedPriorEventLaw seedLaw G n S).weight
          (t.1.1, t.2) := by
            ring
    _ = groupedMass
        (fun q : ConditionedAnswerFlag A B D ×
            (K × ExactOutcome X Y A B n) =>
          (q.1, projection q.2))
        (fun q : ConditionedAnswerFlag A B D ×
            (K × ExactOutcome X Y A B n) =>
          finiteUniformWeight
              (ConditionedAnswerFlag A B D) *
            (reweightedSeedPriorEventLaw
              seedLaw G n S).weight q.2)
        (t.1.2, (t.1.1, t.2)) := by
          symm
          exact groupedMass_product_injective_seed
            (fun z : ConditionedAnswerFlag A B D => z)
            (fun _ _ same => same)
            (fun (_ : ConditionedAnswerFlag A B D) q =>
              projection q)
            (fun _ : ConditionedAnswerFlag A B D =>
              finiteUniformWeight
                (ConditionedAnswerFlag A B D))
            (reweightedSeedPriorEventLaw seedLaw G n S).weight
            t.1.2 (t.1.1, t.2)
    _ = groupedMass
        (fun q : ConditionedAnswerFlag A B D ×
            (K × ExactOutcome X Y A B n) =>
          (((projection q.2).1, q.1), (projection q.2).2))
        (fun q : ConditionedAnswerFlag A B D ×
            (K × ExactOutcome X Y A B n) =>
          finiteUniformWeight
              (ConditionedAnswerFlag A B D) *
            (reweightedSeedPriorEventLaw
              seedLaw G n S).weight q.2)
        t := by
          unfold groupedMass
          congr 1
          ext q
          simp only [Finset.mem_filter, Finset.mem_univ, true_and]
          constructor
          · intro same
            have hflag : q.1 = t.1.2 :=
              congrArg Prod.fst same
            have hprojection : projection q.2 = (t.1.1, t.2) :=
              congrArg Prod.snd same
            apply Prod.ext
            · apply Prod.ext
              · exact congrArg
                  (fun u : Ω × (Fin h → V) => u.1) hprojection
              · exact hflag
            · exact congrArg
                (fun u : Ω × (Fin h → V) => u.2) hprojection
          · intro same
            have hfixed :
                ((projection q.2).1, q.1) = t.1 :=
              congrArg Prod.fst same
            have hsequence : (projection q.2).2 = t.2 :=
              congrArg Prod.snd same
            apply Prod.ext
            · exact congrArg
                (fun u : Ω × ConditionedAnswerFlag A B D => u.2)
                hfixed
            · apply Prod.ext
              · exact congrArg
                  (fun u : Ω × ConditionedAnswerFlag A B D =>
                    u.1) hfixed
              · exact hsequence

theorem reweightedSeedPrefixPrior_next_flagged_pushforward
    {K Ω V : Type*} [Fintype K] [Fintype Ω] [Fintype V]
    {h : ℕ}
    (seedLaw : FiniteEventLaw K)
    (G : Game X Y A B) (n : ℕ) (S : Strategy (G.repeat n))
    (D : Finset (Fin n))
    (projection : K × ExactOutcome X Y A B n →
      Ω × (Fin h → V))
    (default : V) (k : Fin h)
    (target :
      ((Ω × ConditionedAnswerFlag A B D) ×
        (Fin h → V)) × V) :
    groupedMass (exactPrefixNextCode default k)
        (reweightedSeedPrefixPrior
          seedLaw G n S D projection) target =
      groupedMass
        (fun q : ConditionedAnswerFlag A B D ×
            (K × ExactOutcome X Y A B n) =>
          exactPrefixNextCode default k
            (((projection q.2).1, q.1), (projection q.2).2))
        (fun q : ConditionedAnswerFlag A B D ×
            (K × ExactOutcome X Y A B n) =>
          finiteUniformWeight
              (ConditionedAnswerFlag A B D) *
            (reweightedSeedPriorEventLaw
              seedLaw G n S).weight q.2)
        target := by
  classical
  let augmented :
      ConditionedAnswerFlag A B D ×
        (K × ExactOutcome X Y A B n) →
          (Ω × ConditionedAnswerFlag A B D) ×
            (Fin h → V) :=
    fun q => (((projection q.2).1, q.1), (projection q.2).2)
  let weight :
      ConditionedAnswerFlag A B D ×
        (K × ExactOutcome X Y A B n) → ℝ :=
    fun q =>
      finiteUniformWeight
          (ConditionedAnswerFlag A B D) *
        (reweightedSeedPriorEventLaw
          seedLaw G n S).weight q.2
  have hprior :
      reweightedSeedPrefixPrior
          seedLaw G n S D projection =
        groupedMass augmented weight := by
    funext t
    exact reweightedSeedPrefixPrior_as_flagged_pushforward
      seedLaw G n S D projection t
  rw [hprior]
  exact congrFun
    (groupedMass_comp augmented
      (exactPrefixNextCode default k) weight) target

end

noncomputable section

open scoped BigOperators

set_option backward.isDefEq.respectTransparency false
set_option maxHeartbeats 2800000
set_option maxRecDepth 2048

open QuantumParallelRepetition.Pinsker
open QuantumParallelRepetition.ClassicalInformation

attribute [local instance] Classical.propDecidable

theorem jointFirstMarginal_groupedContextNext
    {Ω C V : Type*} [Fintype Ω] [Fintype C] [Fintype V]
    [DecidableEq C] [DecidableEq (C × V)]
    (context : Ω → C) (next : Ω → V)
    (mass : Ω → ℝ) (target : C) :
    jointFirstMarginal
        (groupedMass
          (fun outcome => (context outcome, next outcome)) mass)
        target =
      groupedMass context mass target := by
  classical
  unfold jointFirstMarginal groupedMass
  calc
    (∑ value : V,
      ∑ outcome ∈
        (Finset.univ.filter fun outcome : Ω =>
          (context outcome, next outcome) = (target, value)),
        mass outcome) =
      ∑ value : V,
        ∑ outcome ∈
          ((Finset.univ.filter fun outcome : Ω =>
            context outcome = target).filter
              fun outcome => next outcome = value),
          mass outcome := by
        apply Finset.sum_congr rfl
        intro value _
        congr 1
        ext outcome
        simp [Prod.mk.injEq]
    _ = ∑ outcome ∈
        (Finset.univ.filter fun outcome : Ω =>
          context outcome = target), mass outcome :=
      Finset.sum_fiberwise
        (Finset.univ.filter fun outcome : Ω =>
          context outcome = target)
        next mass

variable {X Y A B : Type*}
variable [Fintype X] [Fintype Y] [Fintype A] [Fintype B]

end

noncomputable section

open scoped BigOperators

set_option backward.isDefEq.respectTransparency false
set_option maxHeartbeats 3200000
set_option maxRecDepth 2048

open QuantumParallelRepetition.Pinsker
open QuantumParallelRepetition.ClassicalInformation

attribute [local instance] Classical.propDecidable

variable {X Y A B : Type*}
variable [Fintype X] [Fintype Y] [Fintype A] [Fintype B]

theorem exactStrategyQuestionCodeGroupedMass
    {C : Type*} [Fintype C] [DecidableEq C]
    (G : Game X Y A B) (n : ℕ) (S : Strategy (G.repeat n))
    (code : (Fin n → X) → (Fin n → Y) → C)
    (target : C) :
    groupedMass
        (fun outcome : ExactOutcome X Y A B n =>
          code outcome.1 outcome.2.1)
        (strategyEventLaw (G.repeat n) S).weight target =
      ∑ xs : Fin n → X, ∑ ys : Fin n → Y,
        if code xs ys = target then
          (G.repeat n).questionWeight xs ys
        else 0 := by
  classical
  unfold groupedMass
  rw [Finset.sum_filter]
  simp only [Fintype.sum_prod_type]
  change
    (∑ xs : Fin n → X, ∑ ys : Fin n → Y,
      ∑ answersA : Fin n → A, ∑ answersB : Fin n → B,
        if code xs ys = target then
          (G.repeat n).questionWeight xs ys *
            S.outcomeProbability xs ys answersA answersB
        else 0) = _
  apply Finset.sum_congr rfl
  intro xs _
  apply Finset.sum_congr rfl
  intro ys _
  by_cases compatible : code xs ys = target
  · simp only [if_pos compatible]
    calc
      (∑ answersA : Fin n → A, ∑ answersB : Fin n → B,
        (G.repeat n).questionWeight xs ys *
          S.outcomeProbability xs ys answersA answersB) =
        (G.repeat n).questionWeight xs ys *
          (∑ answersA : Fin n → A, ∑ answersB : Fin n → B,
            S.outcomeProbability xs ys answersA answersB) := by
              rw [Finset.mul_sum]
              apply Finset.sum_congr rfl
              intro answersA _
              rw [Finset.mul_sum]
      _ = (G.repeat n).questionWeight xs ys := by
        rw [S.outcomeProbability_normalized xs ys]
        ring
  · simp [compatible]

theorem exactRepeatedQuestionWeight_splitAt_bob
    (G : Game X Y A B) (n : ℕ)
    (i : Fin n) (xs : Fin n → X)
    (y : Y) (tail : {j : Fin n // j ≠ i} → Y) :
    (G.repeat n).questionWeight xs
        ((Equiv.funSplitAt i Y).symm (y, tail)) =
      G.questionWeight (xs i) y *
        ∏ j ∈ (Finset.univ : Finset (Fin n)).erase i,
          G.questionWeight (xs j)
            ((Equiv.funSplitAt i Y).symm (y, tail) j) := by
  classical
  rw [Game.repeat_questionWeight]
  rw [← Finset.mul_prod_erase
    (Finset.univ : Finset (Fin n))
    (fun j : Fin n =>
      G.questionWeight (xs j)
        ((Equiv.funSplitAt i Y).symm (y, tail) j))
    (Finset.mem_univ i)]
  simp [Equiv.funSplitAt, Equiv.piSplitAt]

theorem exactRepeatedQuestionTail_splitAt_bob
    (G : Game X Y A B) (n : ℕ)
    (i : Fin n) (xs : Fin n → X)
    (y y' : Y) (tail : {j : Fin n // j ≠ i} → Y) :
    (∏ j ∈ (Finset.univ : Finset (Fin n)).erase i,
      G.questionWeight (xs j)
        ((Equiv.funSplitAt i Y).symm (y, tail) j)) =
    (∏ j ∈ (Finset.univ : Finset (Fin n)).erase i,
      G.questionWeight (xs j)
        ((Equiv.funSplitAt i Y).symm (y', tail) j)) := by
  classical
  apply Finset.prod_congr rfl
  intro j hj
  have different : j ≠ i := (Finset.mem_erase.mp hj).1
  simp [Equiv.funSplitAt, Equiv.piSplitAt, different]

end

noncomputable section

open scoped BigOperators

set_option backward.isDefEq.respectTransparency false
set_option maxHeartbeats 3200000
set_option maxRecDepth 2048

open QuantumParallelRepetition.Pinsker
open QuantumParallelRepetition.ClassicalInformation

attribute [local instance] Classical.propDecidable

variable {X Y A B : Type*}
variable [Fintype X] [Fintype Y] [Fintype A] [Fintype B]

theorem exactStrategyStableBobQuestionCode_joint_factor
    {C : Type*} [Fintype C] [DecidableEq C]
    (G : Game X Y A B) (n : ℕ) (S : Strategy (G.repeat n))
    (coordinate : Fin n)
    (code : (Fin n → X) → (Fin n → Y) → C)
    (target : C) (question : X) (next : Y)
    (stable : ∀ (xs : Fin n → X)
      (tail : {j : Fin n // j ≠ coordinate} → Y)
      (y y' : Y),
      code xs ((Equiv.funSplitAt coordinate Y).symm (y, tail)) =
        code xs ((Equiv.funSplitAt coordinate Y).symm (y', tail)))
    (determines : ∀ (xs : Fin n → X) (ys : Fin n → Y),
      code xs ys = target → xs coordinate = question) :
    groupedMass
        (fun outcome : ExactOutcome X Y A B n =>
          (code outcome.1 outcome.2.1,
            outcome.2.1 coordinate))
        (strategyEventLaw (G.repeat n) S).weight
        (target, next) =
      G.conditionalYGivenX question next *
        groupedMass
          (fun outcome : ExactOutcome X Y A B n =>
            code outcome.1 outcome.2.1)
          (strategyEventLaw (G.repeat n) S).weight target := by
  classical
  rw [exactStrategyQuestionCodeGroupedMass
    G n S (fun xs ys => (code xs ys, ys coordinate))
    (target, next),
    exactStrategyQuestionCodeGroupedMass G n S code target]
  rw [Finset.mul_sum]
  apply Finset.sum_congr rfl
  intro xs _
  let split := Equiv.funSplitAt coordinate Y
  have hsplit (f : (Fin n → Y) → ℝ) :
      (∑ ys : Fin n → Y, f ys) =
        ∑ pair : Y × ({j : Fin n // j ≠ coordinate} → Y),
          f (split.symm pair) :=
    (split.symm.sum_comp f).symm
  rw [hsplit
    (fun ys => if (code xs ys, ys coordinate) = (target, next)
      then (G.repeat n).questionWeight xs ys else 0),
    hsplit
      (fun ys => if code xs ys = target
        then (G.repeat n).questionWeight xs ys else 0)]
  simp only [Fintype.sum_prod_type]
  conv_lhs =>
    rw [Finset.sum_comm]
  conv_rhs =>
    arg 2
    rw [Finset.sum_comm]
  rw [Finset.mul_sum]
  apply Finset.sum_congr rfl
  intro tail _
  have same_code (y : Y) :
      code xs (split.symm (y, tail)) =
        code xs (split.symm (next, tail)) :=
    stable xs tail y next
  have same_tail (y : Y) :
      (∏ j ∈ (Finset.univ : Finset (Fin n)).erase coordinate,
        G.questionWeight (xs j)
          (split.symm (y, tail) j)) =
      ∏ j ∈ (Finset.univ : Finset (Fin n)).erase coordinate,
        G.questionWeight (xs j)
          (split.symm (next, tail) j) :=
    exactRepeatedQuestionTail_splitAt_bob
      G n coordinate xs y next tail
  by_cases compatible :
      code xs (split.symm (next, tail)) = target
  · have hx : xs coordinate = question :=
      determines xs (split.symm (next, tail)) compatible
    have marked (y : Y) : split.symm (y, tail) coordinate = y := by
      simp [split, Equiv.funSplitAt, Equiv.piSplitAt]
    simp_rw [same_code, marked]
    simp only [compatible, Prod.mk.injEq, true_and, ↓reduceIte]
    simp only [Finset.sum_ite_eq', Finset.mem_univ, ↓reduceIte]
    have hweight (y : Y) :
        (G.repeat n).questionWeight xs (split.symm (y, tail)) =
          G.questionWeight (xs coordinate) y *
            (∏ j ∈ (Finset.univ : Finset (Fin n)).erase coordinate,
              G.questionWeight (xs j)
                (split.symm (next, tail) j)) := by
      calc
        (G.repeat n).questionWeight xs (split.symm (y, tail)) =
          G.questionWeight (xs coordinate) y *
            (∏ j ∈ (Finset.univ : Finset (Fin n)).erase coordinate,
              G.questionWeight (xs j)
                (split.symm (y, tail) j)) := by
            exact exactRepeatedQuestionWeight_splitAt_bob
              G n coordinate xs y tail
        _ = _ := by rw [same_tail y]
    simp_rw [hweight]
    rw [← Finset.sum_mul]
    change
      G.questionWeight (xs coordinate) next * _ =
        G.conditionalYGivenX question next *
          (G.marginalX (xs coordinate) * _)
    rw [hx]
    rw [← G.marginalX_mul_conditionalYGivenX question next]
    ring
  · simp_rw [same_code]
    simp [compatible]

end

noncomputable section

open scoped BigOperators

set_option backward.isDefEq.respectTransparency false
set_option maxHeartbeats 5000000
set_option maxRecDepth 2048

open QuantumParallelRepetition.Pinsker
open QuantumParallelRepetition.ClassicalInformation

attribute [local instance] Classical.propDecidable

theorem groupedMass_productCode_weighted_sum
    {K Ω C : Type*} [Fintype K] [Fintype Ω]
    [Fintype C] [DecidableEq C]
    (code : K → Ω → C)
    (weight : K → ℝ) (mass : Ω → ℝ) (target : C) :
    groupedMass (fun point : K × Ω => code point.1 point.2)
        (fun point : K × Ω => weight point.1 * mass point.2)
        target =
      ∑ index : K, weight index * groupedMass (code index) mass target := by
  classical
  unfold groupedMass
  simp only [Finset.sum_filter, Fintype.sum_prod_type]
  apply Finset.sum_congr rfl
  intro index _
  rw [Finset.mul_sum]
  apply Finset.sum_congr rfl
  intro outcome _
  split <;> simp_all

theorem groupedMass_flagSeedOutcome_reassoc
    {F K Ω C : Type*}
    [Fintype F] [Fintype K] [Fintype Ω]
    [Fintype C] [DecidableEq C]
    (code : F → K → Ω → C)
    (flagWeight : F → ℝ) (seedWeight : K → ℝ)
    (outcomeWeight : Ω → ℝ) (target : C) :
    groupedMass
        (fun point : F × (K × Ω) =>
          code point.1 point.2.1 point.2.2)
        (fun point : F × (K × Ω) =>
          flagWeight point.1 *
            (seedWeight point.2.1 * outcomeWeight point.2.2))
        target =
      groupedMass
        (fun point : (F × K) × Ω =>
          code point.1.1 point.1.2 point.2)
        (fun point : (F × K) × Ω =>
          (flagWeight point.1.1 * seedWeight point.1.2) *
            outcomeWeight point.2)
        target := by
  classical
  unfold groupedMass
  simp only [Finset.sum_filter]
  symm
  apply Fintype.sum_equiv (Equiv.prodAssoc F K Ω)
  intro point
  change
    (if code point.1.1 point.1.2 point.2 = target then
      (flagWeight point.1.1 * seedWeight point.1.2) *
        outcomeWeight point.2 else 0) =
    (if code point.1.1 point.1.2 point.2 = target then
      flagWeight point.1.1 *
        (seedWeight point.1.2 * outcomeWeight point.2) else 0)
  split <;> simp [mul_assoc]

variable {X Y A B : Type*}
variable [Fintype X] [Fintype Y] [Fintype A] [Fintype B]

theorem mixedStableBobQuestionCode_joint_factor
    {K C : Type*} [Fintype K] [Fintype C] [DecidableEq C]
    (G : Game X Y A B) (n : ℕ) (S : Strategy (G.repeat n))
    (weight : K → ℝ)
    (coordinate : K → Fin n)
    (code : K → (Fin n → X) → (Fin n → Y) → C)
    (target : C) (question : X) (next : Y)
    (stable : ∀ (index : K) (xs : Fin n → X)
      (tail : {j : Fin n // j ≠ coordinate index} → Y)
      (y y' : Y),
      code index xs
          ((Equiv.funSplitAt (coordinate index) Y).symm (y, tail)) =
        code index xs
          ((Equiv.funSplitAt (coordinate index) Y).symm (y', tail)))
    (determines : ∀ (index : K)
      (xs : Fin n → X) (ys : Fin n → Y),
      code index xs ys = target → xs (coordinate index) = question) :
    groupedMass
        (fun point : K × ExactOutcome X Y A B n =>
          (code point.1 point.2.1 point.2.2.1,
            point.2.2.1 (coordinate point.1)))
        (fun point : K × ExactOutcome X Y A B n =>
          weight point.1 *
            (strategyEventLaw (G.repeat n) S).weight point.2)
        (target, next) =
      G.conditionalYGivenX question next *
        groupedMass
          (fun point : K × ExactOutcome X Y A B n =>
            code point.1 point.2.1 point.2.2.1)
          (fun point : K × ExactOutcome X Y A B n =>
            weight point.1 *
              (strategyEventLaw (G.repeat n) S).weight point.2)
          target := by
  classical
  calc
    groupedMass
        (fun point : K × ExactOutcome X Y A B n =>
          (code point.1 point.2.1 point.2.2.1,
            point.2.2.1 (coordinate point.1)))
        (fun point : K × ExactOutcome X Y A B n =>
          weight point.1 *
            (strategyEventLaw (G.repeat n) S).weight point.2)
        (target, next) =
      ∑ index : K, weight index *
        groupedMass
          (fun outcome : ExactOutcome X Y A B n =>
            (code index outcome.1 outcome.2.1,
              outcome.2.1 (coordinate index)))
          (strategyEventLaw (G.repeat n) S).weight
          (target, next) :=
      groupedMass_productCode_weighted_sum
        (fun index (outcome : ExactOutcome X Y A B n) =>
          (code index outcome.1 outcome.2.1,
            outcome.2.1 (coordinate index)))
        weight (strategyEventLaw (G.repeat n) S).weight (target, next)
    _ = ∑ index : K, weight index *
        (G.conditionalYGivenX question next *
          groupedMass
            (fun outcome : ExactOutcome X Y A B n =>
              code index outcome.1 outcome.2.1)
            (strategyEventLaw (G.repeat n) S).weight target) := by
      apply Finset.sum_congr rfl
      intro index _
      congr 1
      exact exactStrategyStableBobQuestionCode_joint_factor
        G n S (coordinate index) (code index) target question next
        (stable index) (determines index)
    _ = G.conditionalYGivenX question next *
          (∑ index : K, weight index *
            groupedMass
              (fun outcome : ExactOutcome X Y A B n =>
                code index outcome.1 outcome.2.1)
              (strategyEventLaw (G.repeat n) S).weight target) := by
      rw [Finset.mul_sum]
      apply Finset.sum_congr rfl
      intro index _
      ring
    _ = G.conditionalYGivenX question next *
        groupedMass
          (fun point : K × ExactOutcome X Y A B n =>
            code point.1 point.2.1 point.2.2.1)
          (fun point : K × ExactOutcome X Y A B n =>
            weight point.1 *
              (strategyEventLaw (G.repeat n) S).weight point.2)
          target := by
      congr 1
      exact (groupedMass_productCode_weighted_sum
        (fun index (outcome : ExactOutcome X Y A B n) =>
          code index outcome.1 outcome.2.1)
        weight (strategyEventLaw (G.repeat n) S).weight target).symm

theorem exactReverseAliceMaskedQuestionRegister_stable
    {n : ℕ} (D : Finset (Fin n))
    (side : Finset (SourceRemainingCoordinate D))
    (default : Y) (marker : Fin side.card)
    (flag : ConditionedAnswerFlag A B D)
    (seed : ExactRemainingSeed D)
    (xs : Fin n → X)
    (tail : {j : Fin n //
      j ≠ ((exactReverseAliceContextAt side seed).sideRank.symm
        marker).val.val} → Y)
    (y y' : Y) :
    exactReverseAliceMaskedQuestionRegister
        D side default marker flag seed xs
        ((Equiv.funSplitAt
          ((exactReverseAliceContextAt side seed).sideRank.symm
            marker).val.val Y).symm (y, tail)) =
      exactReverseAliceMaskedQuestionRegister
        D side default marker flag seed xs
        ((Equiv.funSplitAt
          ((exactReverseAliceContextAt side seed).sideRank.symm
            marker).val.val Y).symm (y', tail)) := by
  classical
  let context := exactReverseAliceContextAt side seed
  let marked : SourceRemainingCoordinate D :=
    (context.sideRank.symm marker).val
  let coordinate : Fin n := marked.val
  have outsideD : coordinate ∉ D := by
    exact (Finset.mem_sdiff.mp marked.property).2
  have outsideOther : marked ∉ context.otherSide := by
    rw [context.otherSide_eq_complement]
    simp [marked, (context.sideRank.symm marker).property]
  change
    exactReverseAliceMaskedQuestionRegister
        D side default marker flag seed xs
        ((Equiv.funSplitAt coordinate Y).symm (y, tail)) =
      exactReverseAliceMaskedQuestionRegister
        D side default marker flag seed xs
        ((Equiv.funSplitAt coordinate Y).symm (y', tail))
  unfold exactReverseAliceMaskedQuestionRegister
    finitePrefixMask
  apply Prod.ext
  · apply Prod.ext
    · apply Sigma.ext
      · rfl
      · apply heq_of_eq
        apply Prod.ext
        · rfl
        apply Prod.ext
        · funext j
          have different : j.val ≠ coordinate := by
            intro same
            exact outsideD (same ▸ j.property)
          simp [Equiv.funSplitAt, Equiv.piSplitAt, different]
        apply Prod.ext
        · rfl
        apply Prod.ext
        · funext j
          have different : j.val.val ≠ coordinate := by
            intro same
            apply outsideOther
            have actual : j.val = marked := by
              apply Subtype.ext
              exact same
            exact actual ▸ j.property
          simp [Equiv.funSplitAt, Equiv.piSplitAt, different]
        · rfl
    · rfl
  · funext position
    by_cases before : position.val < marker.val
    · have different :
          ((context.sideRank.symm position).val.val) ≠ coordinate := by
        intro same
        have sameMarked :
            context.sideRank.symm position =
              context.sideRank.symm marker := by
          apply Subtype.ext
          apply Subtype.ext
          exact same
        have samePosition :=
          context.sideRank.symm.injective sameMarked
        exact (Nat.ne_of_lt before)
          (congrArg Fin.val samePosition)
      simp [before, context, Equiv.funSplitAt,
        Equiv.piSplitAt, different]
    · simp [before]

theorem exactConditionedReverseAliceNextPrior_flagged_mixture
    (G : Game X Y A B) (n : ℕ) (S : Strategy (G.repeat n))
    (D : Finset (Fin n))
    (remaining : 0 < (Finset.univ \ D).card)
    (side : Finset (SourceRemainingCoordinate D))
    (default : Y) (marker : Fin side.card) :
    groupedMass (exactPrefixNextCode default marker)
        (exactConditionedReverseAliceNextPrior
          G n S D remaining side) =
      groupedMass
        (fun point :
          (ConditionedAnswerFlag A B D ×
            ExactRemainingSeed D) ×
              ExactOutcome X Y A B n =>
          (exactReverseAliceMaskedQuestionRegister
            D side default marker point.1.1 point.1.2
            point.2.1 point.2.2.1,
            point.2.2.1
              (((exactReverseAliceContextAt
                side point.1.2).sideRank.symm marker).val.val)))
        (fun point :
          (ConditionedAnswerFlag A B D ×
            ExactRemainingSeed D) ×
              ExactOutcome X Y A B n =>
          (finiteUniformWeight
              (ConditionedAnswerFlag A B D) *
            (exactReverseAliceConditionalSeedLaw
              (exactRemainingCoordinate_card_pos
                D remaining) side).weight point.1.2) *
            (strategyEventLaw (G.repeat n) S).weight point.2) := by
  classical
  funext target
  let seedLaw := exactReverseAliceConditionalSeedLaw
    (exactRemainingCoordinate_card_pos D remaining) side
  let projection := exactReverseAliceSourceProjection
    (X := X) (Y := Y) (A := A) (B := B) D side
  change
    groupedMass (exactPrefixNextCode default marker)
        (reweightedSeedPrefixPrior
          seedLaw G n S D projection) target = _
  calc
    groupedMass (exactPrefixNextCode default marker)
        (reweightedSeedPrefixPrior
          seedLaw G n S D projection) target =
      groupedMass
        (fun point : ConditionedAnswerFlag A B D ×
          (ExactRemainingSeed D ×
            ExactOutcome X Y A B n) =>
          exactPrefixNextCode default marker
            (((projection point.2).1, point.1),
              (projection point.2).2))
        (fun point : ConditionedAnswerFlag A B D ×
          (ExactRemainingSeed D ×
            ExactOutcome X Y A B n) =>
          finiteUniformWeight
              (ConditionedAnswerFlag A B D) *
            (reweightedSeedPriorEventLaw
              seedLaw G n S).weight point.2)
        target :=
      reweightedSeedPrefixPrior_next_flagged_pushforward
        seedLaw G n S D projection default marker target
    _ = _ := by
      change
        groupedMass
          (fun point : ConditionedAnswerFlag A B D ×
            (ExactRemainingSeed D ×
              ExactOutcome X Y A B n) =>
            (exactReverseAliceMaskedQuestionRegister
              D side default marker point.1 point.2.1
              point.2.2.1 point.2.2.2.1,
              point.2.2.2.1
                (((exactReverseAliceContextAt
                  side point.2.1).sideRank.symm marker).val.val)))
          (fun point : ConditionedAnswerFlag A B D ×
            (ExactRemainingSeed D ×
              ExactOutcome X Y A B n) =>
            finiteUniformWeight
                (ConditionedAnswerFlag A B D) *
              (seedLaw.weight point.2.1 *
                (strategyEventLaw (G.repeat n) S).weight point.2.2))
          target = _
      exact groupedMass_flagSeedOutcome_reassoc
        (fun flag seed (outcome : ExactOutcome X Y A B n) =>
          (exactReverseAliceMaskedQuestionRegister
            D side default marker flag seed outcome.1 outcome.2.1,
            outcome.2.1
              (((exactReverseAliceContextAt
                side seed).sideRank.symm marker).val.val)))
        (fun _ : ConditionedAnswerFlag A B D =>
          finiteUniformWeight
            (ConditionedAnswerFlag A B D))
        seedLaw.weight
        (strategyEventLaw (G.repeat n) S).weight target

theorem exactReverseAliceMaskedQuestionRegister_determines
    {n : ℕ} (D : Finset (Fin n))
    (side : Finset (SourceRemainingCoordinate D))
    (default : Y) (marker : Fin side.card)
    (flag : ConditionedAnswerFlag A B D)
    (seed : ExactRemainingSeed D)
    (xs : Fin n → X) (ys : Fin n → Y)
    (target : ExactReverseAliceNextContext X Y A B D side)
    (same :
      exactReverseAliceMaskedQuestionRegister
        D side default marker flag seed xs ys = target) :
    xs (((exactReverseAliceContextAt
        side seed).sideRank.symm marker).val.val) =
      target.1.1.2.2.2.1
        (target.1.1.1.sideRank.symm marker) := by
  have actual := congrArg
    (fun context : ExactReverseAliceNextContext
      X Y A B D side =>
      context.1.1.2.2.2.1
        (context.1.1.1.sideRank.symm marker)) same
  exact actual

end

end QuantumParallelRepetition


open QuantumParallelRepetition
open scoped ComplexOrder Matrix BigOperators InnerProductSpace
open Complex Matrix Finset
open scoped BigOperators
set_option backward.isDefEq.respectTransparency false
set_option maxHeartbeats 5000000
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
    (side : Finset (SourceRemainingCoordinate D))
    (default : Y) (marker : Fin side.card)
    (target : ExactReverseAliceNextContext X Y A B D side)
    (next : Y) :
    groupedMass
        (exactPrefixNextCode default marker)
        (exactConditionedReverseAliceNextPrior
          G n S D remaining side)
        (target, next) =
      G.conditionalYGivenX
          (target.1.1.2.2.2.1
            (target.1.1.1.sideRank.symm marker)) next *
        jointFirstMarginal
          (groupedMass
            (exactPrefixNextCode default marker)
            (exactConditionedReverseAliceNextPrior
              G n S D remaining side))
          target := by
  classical
  let seedLaw := exactReverseAliceConditionalSeedLaw
    (exactRemainingCoordinate_card_pos D remaining) side
  let mixedWeight :
      ConditionedAnswerFlag A B D ×
        ExactRemainingSeed D → ℝ :=
    fun index =>
      finiteUniformWeight
        (ConditionedAnswerFlag A B D) *
        seedLaw.weight index.2
  let coordinate :
      ConditionedAnswerFlag A B D ×
        ExactRemainingSeed D → Fin n :=
    fun index =>
      ((exactReverseAliceContextAt
        side index.2).sideRank.symm marker).val.val
  let code :
      (ConditionedAnswerFlag A B D ×
        ExactRemainingSeed D) →
          (Fin n → X) → (Fin n → Y) →
            ExactReverseAliceNextContext X Y A B D side :=
    fun index xs ys =>
      exactReverseAliceMaskedQuestionRegister
        D side default marker index.1 index.2 xs ys
  let question : X :=
    target.1.1.2.2.2.1
      (target.1.1.1.sideRank.symm marker)
  have stable :
      ∀ (index : ConditionedAnswerFlag A B D ×
          ExactRemainingSeed D)
        (xs : Fin n → X)
        (tail : {j : Fin n // j ≠ coordinate index} → Y)
        (y y' : Y),
        code index xs
            ((Equiv.funSplitAt (coordinate index) Y).symm (y, tail)) =
          code index xs
            ((Equiv.funSplitAt (coordinate index) Y).symm (y', tail)) := by
    intro index xs tail y y'
    exact exactReverseAliceMaskedQuestionRegister_stable
      D side default marker index.1 index.2 xs tail y y'
  have determines :
      ∀ (index : ConditionedAnswerFlag A B D ×
          ExactRemainingSeed D)
        (xs : Fin n → X) (ys : Fin n → Y),
        code index xs ys = target →
          xs (coordinate index) = question := by
    intro index xs ys same
    exact exactReverseAliceMaskedQuestionRegister_determines
      D side default marker index.1 index.2 xs ys target same
  have mixed := mixedStableBobQuestionCode_joint_factor
    G n S mixedWeight coordinate code target question next
    stable determines
  rw [exactConditionedReverseAliceNextPrior_flagged_mixture
    G n S D remaining side default marker]
  change
    groupedMass
        (fun point :
          (ConditionedAnswerFlag A B D ×
            ExactRemainingSeed D) ×
              ExactOutcome X Y A B n =>
          (code point.1 point.2.1 point.2.2.1,
            point.2.2.1 (coordinate point.1)))
        (fun point :
          (ConditionedAnswerFlag A B D ×
            ExactRemainingSeed D) ×
              ExactOutcome X Y A B n =>
          mixedWeight point.1 *
            (strategyEventLaw (G.repeat n) S).weight point.2)
        (target, next) =
      G.conditionalYGivenX question next *
        jointFirstMarginal
          (groupedMass
            (fun point :
              (ConditionedAnswerFlag A B D ×
                ExactRemainingSeed D) ×
                  ExactOutcome X Y A B n =>
              (code point.1 point.2.1 point.2.2.1,
                point.2.2.1 (coordinate point.1)))
            (fun point :
              (ConditionedAnswerFlag A B D ×
                ExactRemainingSeed D) ×
                  ExactOutcome X Y A B n =>
              mixedWeight point.1 *
                (strategyEventLaw (G.repeat n) S).weight point.2))
          target
  rw [jointFirstMarginal_groupedContextNext]
  convert mixed using 1
  exact congrFun (exactGroupedMass_decidableEq_irrel
    _ _ _ _) (target, next)
