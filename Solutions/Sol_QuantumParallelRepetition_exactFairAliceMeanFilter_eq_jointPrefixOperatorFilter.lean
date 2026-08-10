import Definitions.Def_quantum_parallel_repetition_game
import Definitions.Def_qpr_core_25
import Theorems.Thm_QuantumParallelRepetition_exactLeft_coordinate_not_mem
import Theorems.Thm_QuantumParallelRepetition_exactRight_coordinate_not_mem
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

theorem questionWeight_le_marginalY
    (G : Game X Y A B) (x : X) (y : Y) :
    G.questionWeight x y ≤ G.marginalY y := by
  unfold marginalY
  exact Finset.single_le_sum
    (fun x _ => G.weight_nonneg x y)
    (Finset.mem_univ x)

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

open scoped ComplexOrder Matrix BigOperators InnerProductSpace
open Complex Matrix Finset

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

open scoped BigOperators

set_option backward.isDefEq.respectTransparency false
set_option maxHeartbeats 1600000
set_option maxRecDepth 2048

attribute [local instance] Classical.propDecidable

variable {X Y A B : Type*}
variable [Fintype X] [Fintype Y] [Fintype A] [Fintype B]

theorem exactFixedBobQuestionMass_eq_product
    (G : Game X Y A B) (n : ℕ)
    (fixed : Finset (Fin n))
    (xs : Fin n → X) (known : Fin n → Y) :
    exactFixedBobQuestionMass G n fixed xs known =
      ∏ j : Fin n,
        if j ∈ fixed then G.questionWeight (xs j) (known j)
        else G.marginalX (xs j) := by
  classical
  unfold exactFixedBobQuestionMass
  simp only [Game.repeat_questionWeight]
  calc
    (∑ ys : Fin n → Y,
      if ∀ j : Fin n, j ∈ fixed → ys j = known j then
        ∏ j : Fin n, G.questionWeight (xs j) (ys j)
      else 0) =
      ∑ ys : Fin n → Y,
        ∏ j : Fin n,
          if j ∈ fixed then
            if ys j = known j then
              G.questionWeight (xs j) (ys j)
            else 0
          else G.questionWeight (xs j) (ys j) := by
            apply Finset.sum_congr rfl
            intro ys _
            calc
              (if ∀ j : Fin n,
                  j ∈ fixed → ys j = known j then
                  ∏ j : Fin n,
                    G.questionWeight (xs j) (ys j)
                else 0) =
                ∏ j : Fin n,
                  if j ∈ fixed → ys j = known j then
                    G.questionWeight (xs j) (ys j)
                  else 0 :=
                  by
                    simp only [Fintype.prod_ite_zero]
                    split <;> simp_all
              _ = _ := by
                apply Finset.prod_congr rfl
                intro j _
                by_cases hj : j ∈ fixed <;>
                  by_cases he : ys j = known j <;>
                    simp [hj, he]
    _ = ∏ j : Fin n,
        ∑ y : Y,
          if j ∈ fixed then
            if y = known j then G.questionWeight (xs j) y else 0
          else G.questionWeight (xs j) y :=
      (Fintype.prod_sum
        (fun (j : Fin n) (y : Y) =>
          if j ∈ fixed then
            if y = known j then G.questionWeight (xs j) y else 0
          else G.questionWeight (xs j) y)).symm
    _ = _ := by
      apply Finset.prod_congr rfl
      intro j _
      by_cases hj : j ∈ fixed
      · simp [hj]
      · simp [hj, Game.marginalX]

theorem exactFixedAliceQuestionMass_eq_product
    (G : Game X Y A B) (n : ℕ)
    (fixed : Finset (Fin n))
    (known : Fin n → X) (ys : Fin n → Y) :
    exactFixedAliceQuestionMass G n fixed known ys =
      ∏ j : Fin n,
        if j ∈ fixed then G.questionWeight (known j) (ys j)
        else G.marginalY (ys j) := by
  classical
  unfold exactFixedAliceQuestionMass
  simp only [Game.repeat_questionWeight]
  calc
    (∑ xs : Fin n → X,
      if ∀ j : Fin n, j ∈ fixed → xs j = known j then
        ∏ j : Fin n, G.questionWeight (xs j) (ys j)
      else 0) =
      ∑ xs : Fin n → X,
        ∏ j : Fin n,
          if j ∈ fixed then
            if xs j = known j then
              G.questionWeight (xs j) (ys j)
            else 0
          else G.questionWeight (xs j) (ys j) := by
            apply Finset.sum_congr rfl
            intro xs _
            calc
              (if ∀ j : Fin n,
                  j ∈ fixed → xs j = known j then
                  ∏ j : Fin n,
                    G.questionWeight (xs j) (ys j)
                else 0) =
                ∏ j : Fin n,
                  if j ∈ fixed → xs j = known j then
                    G.questionWeight (xs j) (ys j)
                  else 0 :=
                  by
                    simp only [Fintype.prod_ite_zero]
                    split <;> simp_all
              _ = _ := by
                apply Finset.prod_congr rfl
                intro j _
                by_cases hj : j ∈ fixed <;>
                  by_cases he : xs j = known j <;>
                    simp [hj, he]
    _ = ∏ j : Fin n,
        ∑ x : X,
          if j ∈ fixed then
            if x = known j then G.questionWeight x (ys j) else 0
          else G.questionWeight x (ys j) :=
      (Fintype.prod_sum
        (fun (j : Fin n) (x : X) =>
          if j ∈ fixed then
            if x = known j then G.questionWeight x (ys j) else 0
          else G.questionWeight x (ys j))).symm
    _ = _ := by
      apply Finset.prod_congr rfl
      intro j _
      by_cases hj : j ∈ fixed
      · simp [hj]
      · simp [hj, Game.marginalY]

theorem exactFixedBobQuestionMass_insert
    (G : Game X Y A B) (n : ℕ)
    (fixed : Finset (Fin n)) (j : Fin n) (fresh : j ∉ fixed)
    (xs : Fin n → X) (known : Fin n → Y) (y : Y) :
    exactFixedBobQuestionMass
        G n (insert j fixed) xs (Function.update known j y) =
      G.conditionalYGivenX (xs j) y *
        exactFixedBobQuestionMass G n fixed xs known := by
  classical
  rw [exactFixedBobQuestionMass_eq_product,
    exactFixedBobQuestionMass_eq_product]
  have tails :
      (∏ k ∈ (Finset.univ : Finset (Fin n)).erase j,
        if k ∈ insert j fixed then
          G.questionWeight (xs k)
            (Function.update known j y k)
        else G.marginalX (xs k)) =
      ∏ k ∈ (Finset.univ : Finset (Fin n)).erase j,
        if k ∈ fixed then
          G.questionWeight (xs k) (known k)
        else G.marginalX (xs k) := by
    apply Finset.prod_congr rfl
    intro k hk
    have hkj : k ≠ j := (Finset.mem_erase.mp hk).1
    simp [hkj]
  rw [← Finset.mul_prod_erase Finset.univ
        (fun k : Fin n =>
          if k ∈ insert j fixed then
            G.questionWeight (xs k)
              (Function.update known j y k)
          else G.marginalX (xs k)) (Finset.mem_univ j),
      ← Finset.mul_prod_erase Finset.univ
        (fun k : Fin n =>
          if k ∈ fixed then
            G.questionWeight (xs k) (known k)
          else G.marginalX (xs k)) (Finset.mem_univ j),
      tails]
  simp only [Finset.mem_insert_self, ↓reduceIte,
    Function.update_self, fresh]
  rw [← G.marginalX_mul_conditionalYGivenX (xs j) y]
  ring

theorem exactFixedAliceQuestionMass_insert
    (G : Game X Y A B) (n : ℕ)
    (fixed : Finset (Fin n)) (j : Fin n) (fresh : j ∉ fixed)
    (known : Fin n → X) (ys : Fin n → Y) (x : X) :
    exactFixedAliceQuestionMass
        G n (insert j fixed) (Function.update known j x) ys =
      G.conditionalXGivenY (ys j) x *
        exactFixedAliceQuestionMass G n fixed known ys := by
  classical
  rw [exactFixedAliceQuestionMass_eq_product,
    exactFixedAliceQuestionMass_eq_product]
  have tails :
      (∏ k ∈ (Finset.univ : Finset (Fin n)).erase j,
        if k ∈ insert j fixed then
          G.questionWeight
            (Function.update known j x k) (ys k)
        else G.marginalY (ys k)) =
      ∏ k ∈ (Finset.univ : Finset (Fin n)).erase j,
        if k ∈ fixed then
          G.questionWeight (known k) (ys k)
        else G.marginalY (ys k) := by
    apply Finset.prod_congr rfl
    intro k hk
    have hkj : k ≠ j := (Finset.mem_erase.mp hk).1
    simp [hkj]
  rw [← Finset.mul_prod_erase Finset.univ
        (fun k : Fin n =>
          if k ∈ insert j fixed then
            G.questionWeight
              (Function.update known j x k) (ys k)
          else G.marginalY (ys k)) (Finset.mem_univ j),
      ← Finset.mul_prod_erase Finset.univ
        (fun k : Fin n =>
          if k ∈ fixed then
            G.questionWeight (known k) (ys k)
          else G.marginalY (ys k)) (Finset.mem_univ j),
      tails]
  simp only [Finset.mem_insert_self, ↓reduceIte,
    Function.update_self, fresh]
  rw [← G.marginalY_mul_conditionalXGivenY x (ys j)]
  ring

end

noncomputable section

open scoped BigOperators ComplexOrder Kronecker MatrixOrder
  Matrix.Norms.L2Operator InnerProductSpace

set_option backward.isDefEq.respectTransparency false
set_option maxHeartbeats 2600000
set_option maxRecDepth 2048

attribute [local instance] Classical.propDecidable

variable {X Y A B : Type*}
variable [Fintype X] [Fintype Y] [Fintype A] [Fintype B]

theorem exactFixedQuestionPrefix_insert_iff
    {T : Type*} [DecidableEq T]
    {n : ℕ} (fixed : Finset (Fin n)) (j : Fin n)
    (fresh : j ∉ fixed)
    (candidate known : Fin n → T) (value : T) :
    (∀ k : Fin n, k ∈ insert j fixed →
      candidate k = (Function.update known j value) k) ↔
      candidate j = value ∧
        ∀ k : Fin n, k ∈ fixed → candidate k = known k := by
  constructor
  · intro h
    refine ⟨?_, ?_⟩
    · simpa using h j (Finset.mem_insert_self j fixed)
    · intro k hk
      have different : k ≠ j := by
        intro same
        exact fresh (same ▸ hk)
      simpa [Function.update_of_ne different] using
        h k (Finset.mem_insert_of_mem hk)
  · rintro ⟨hvalue, hfixed⟩ k hk
    rcases Finset.mem_insert.mp hk with same | hk
    · subst k
      simpa using hvalue
    · have different : k ≠ j := by
        intro same
        exact fresh (same ▸ hk)
      simpa [Function.update_of_ne different] using hfixed k hk

end

noncomputable section

open scoped BigOperators ComplexOrder Kronecker MatrixOrder
  Matrix.Norms.L2Operator InnerProductSpace

set_option backward.isDefEq.respectTransparency false
set_option maxHeartbeats 2800000
set_option maxRecDepth 2048

attribute [local instance] Classical.propDecidable

variable {X Y A B : Type*}
variable [Fintype X] [Fintype Y] [Fintype A] [Fintype B]

theorem exactJointPrefixQuestionMass_eq_sum_alice
    (G : Game X Y A B) (n : ℕ)
    (fixedX fixedY : Finset (Fin n))
    (knownX : Fin n → X) (knownY : Fin n → Y) :
    exactJointPrefixQuestionMass
        G n fixedX fixedY knownX knownY =
      ∑ ys : Fin n → Y,
        if ∀ j : Fin n, j ∈ fixedY → ys j = knownY j then
          exactFixedAliceQuestionMass
            G n fixedX knownX ys
        else 0 := by
  classical
  unfold exactJointPrefixQuestionMass
  rw [Finset.sum_comm]
  apply Finset.sum_congr rfl
  intro ys _
  unfold exactFixedAliceQuestionMass
  by_cases compatible :
      ∀ j : Fin n, j ∈ fixedY → ys j = knownY j
  · rw [if_pos compatible]
    apply Finset.sum_congr rfl
    intro xs _
    by_cases alice_compatible :
        ∀ j : Fin n, j ∈ fixedX → xs j = knownX j
    · rw [if_pos ⟨alice_compatible, compatible⟩,
        if_pos alice_compatible]
    · rw [if_neg (fun h => alice_compatible h.1),
        if_neg alice_compatible]
  · rw [if_neg compatible]
    apply Finset.sum_eq_zero
    intro xs _
    rw [if_neg]
    exact fun h => compatible h.2

theorem exactJointPrefixQuestionMass_eq_sum_bob
    (G : Game X Y A B) (n : ℕ)
    (fixedX fixedY : Finset (Fin n))
    (knownX : Fin n → X) (knownY : Fin n → Y) :
    exactJointPrefixQuestionMass
        G n fixedX fixedY knownX knownY =
      ∑ xs : Fin n → X,
        if ∀ j : Fin n, j ∈ fixedX → xs j = knownX j then
          exactFixedBobQuestionMass
            G n fixedY xs knownY
        else 0 := by
  classical
  unfold exactJointPrefixQuestionMass
  apply Finset.sum_congr rfl
  intro xs _
  unfold exactFixedBobQuestionMass
  by_cases compatible :
      ∀ j : Fin n, j ∈ fixedX → xs j = knownX j
  · rw [if_pos compatible]
    apply Finset.sum_congr rfl
    intro ys _
    by_cases bob_compatible :
        ∀ j : Fin n, j ∈ fixedY → ys j = knownY j
    · rw [if_pos ⟨compatible, bob_compatible⟩,
        if_pos bob_compatible]
    · rw [if_neg (fun h => bob_compatible h.2),
        if_neg bob_compatible]
  · rw [if_neg compatible]
    apply Finset.sum_eq_zero
    intro ys _
    rw [if_neg]
    exact fun h => compatible h.1

theorem exactJointPrefixQuestionMass_insert_alice
    (G : Game X Y A B) (n : ℕ)
    (fixedX fixedY : Finset (Fin n)) (j : Fin n)
    (fresh : j ∉ fixedX) (opposite_fixed : j ∈ fixedY)
    (knownX : Fin n → X) (knownY : Fin n → Y) (x : X) :
    exactJointPrefixQuestionMass G n
        (insert j fixedX) fixedY
        (Function.update knownX j x) knownY =
      G.conditionalXGivenY (knownY j) x *
        exactJointPrefixQuestionMass G n
          fixedX fixedY knownX knownY := by
  classical
  rw [exactJointPrefixQuestionMass_eq_sum_alice,
    exactJointPrefixQuestionMass_eq_sum_alice,
    Finset.mul_sum]
  apply Finset.sum_congr rfl
  intro ys _
  by_cases compatible :
      ∀ k : Fin n, k ∈ fixedY → ys k = knownY k
  · rw [if_pos compatible, if_pos compatible,
      exactFixedAliceQuestionMass_insert
        G n fixedX j fresh knownX ys x,
      compatible j opposite_fixed]
  · simp [compatible]

theorem exactJointPrefixQuestionMass_insert_bob
    (G : Game X Y A B) (n : ℕ)
    (fixedX fixedY : Finset (Fin n)) (j : Fin n)
    (opposite_fixed : j ∈ fixedX) (fresh : j ∉ fixedY)
    (knownX : Fin n → X) (knownY : Fin n → Y) (y : Y) :
    exactJointPrefixQuestionMass G n
        fixedX (insert j fixedY)
        knownX (Function.update knownY j y) =
      G.conditionalYGivenX (knownX j) y *
        exactJointPrefixQuestionMass G n
          fixedX fixedY knownX knownY := by
  classical
  rw [exactJointPrefixQuestionMass_eq_sum_bob,
    exactJointPrefixQuestionMass_eq_sum_bob,
    Finset.mul_sum]
  apply Finset.sum_congr rfl
  intro xs _
  by_cases compatible :
      ∀ k : Fin n, k ∈ fixedX → xs k = knownX k
  · rw [if_pos compatible, if_pos compatible,
      exactFixedBobQuestionMass_insert
        G n fixedY j fresh xs knownY y,
      compatible j opposite_fixed]
  · simp [compatible]

theorem exactJointPrefixQuestionAtom_zero_of_mass_zero
    (G : Game X Y A B) (n : ℕ)
    (fixedX fixedY : Finset (Fin n))
    (knownX : Fin n → X) (knownY : Fin n → Y)
    (zero : exactJointPrefixQuestionMass
      G n fixedX fixedY knownX knownY = 0)
    (xs : Fin n → X) (ys : Fin n → Y) :
    (if (∀ j : Fin n, j ∈ fixedX → xs j = knownX j) ∧
        (∀ j : Fin n, j ∈ fixedY → ys j = knownY j) then
       (G.repeat n).questionWeight xs ys
     else 0) = 0 := by
  unfold exactJointPrefixQuestionMass at zero
  have row_nonnegative (xx : Fin n → X) :
      0 ≤ ∑ yy : Fin n → Y,
        if (∀ j : Fin n, j ∈ fixedX → xx j = knownX j) ∧
           (∀ j : Fin n, j ∈ fixedY → yy j = knownY j) then
          (G.repeat n).questionWeight xx yy
        else 0 := by
    apply Finset.sum_nonneg
    intro yy _
    split
    · exact (G.repeat n).weight_nonneg xx yy
    · exact le_rfl
  have row_zero := (Finset.sum_eq_zero_iff_of_nonneg
    (fun xx _ => row_nonnegative xx)).mp zero xs
      (Finset.mem_univ xs)
  exact (Finset.sum_eq_zero_iff_of_nonneg
    (fun yy _ => by
      split
      · exact (G.repeat n).weight_nonneg xs yy
      · exact le_rfl)).mp row_zero ys (Finset.mem_univ ys)

theorem exactJointPrefixAliceOperatorMass_zero_of_mass_zero
    (G : Game X Y A B) (n : ℕ) (S : Strategy (G.repeat n))
    (D fixedX fixedY : Finset (Fin n))
    (answer : {j : Fin n // j ∈ D} → A)
    (knownX : Fin n → X) (knownY : Fin n → Y)
    (zero : exactJointPrefixQuestionMass
      G n fixedX fixedY knownX knownY = 0) :
    exactJointPrefixAliceOperatorMass
      G n S D fixedX fixedY answer knownX knownY = 0 := by
  unfold exactJointPrefixAliceOperatorMass
  apply Finset.sum_eq_zero
  intro xs _
  apply Finset.sum_eq_zero
  intro ys _
  have atom := exactJointPrefixQuestionAtom_zero_of_mass_zero
    G n fixedX fixedY knownX knownY zero xs ys
  by_cases compatible :
      (∀ j : Fin n, j ∈ fixedX → xs j = knownX j) ∧
      (∀ j : Fin n, j ∈ fixedY → ys j = knownY j)
  · have weight_zero : (G.repeat n).questionWeight xs ys = 0 := by
      simpa only [if_pos compatible] using atom
    rw [if_pos compatible, weight_zero]
    exact zero_smul ℝ (conditionedAliceEffect G n S D answer xs)
  · rw [if_neg compatible]

theorem exactJointPrefixAliceOperatorMass_sum_insert
    (G : Game X Y A B) (n : ℕ) (S : Strategy (G.repeat n))
    (D fixedX fixedY : Finset (Fin n)) (j : Fin n)
    (fresh : j ∉ fixedX)
    (answer : {k : Fin n // k ∈ D} → A)
    (knownX : Fin n → X) (knownY : Fin n → Y) :
    (∑ x : X,
      exactJointPrefixAliceOperatorMass G n S D
        (insert j fixedX) fixedY answer
        (Function.update knownX j x) knownY) =
      exactJointPrefixAliceOperatorMass G n S D
        fixedX fixedY answer knownX knownY := by
  classical
  unfold exactJointPrefixAliceOperatorMass
  calc
    (∑ x : X, ∑ xs : Fin n → X, ∑ ys : Fin n → Y,
      if (∀ k : Fin n, k ∈ insert j fixedX →
          xs k = (Function.update knownX j x) k) ∧
         (∀ k : Fin n, k ∈ fixedY → ys k = knownY k) then
        (G.repeat n).questionWeight xs ys •
          conditionedAliceEffect G n S D answer xs
      else 0) =
      ∑ xs : Fin n → X, ∑ ys : Fin n → Y, ∑ x : X,
        if (∀ k : Fin n, k ∈ insert j fixedX →
            xs k = (Function.update knownX j x) k) ∧
           (∀ k : Fin n, k ∈ fixedY → ys k = knownY k) then
          (G.repeat n).questionWeight xs ys •
            conditionedAliceEffect G n S D answer xs
        else 0 := by
          rw [Finset.sum_comm]
          apply Finset.sum_congr rfl
          intro xs _
          rw [Finset.sum_comm]
    _ = _ := by
      apply Finset.sum_congr rfl
      intro xs _
      apply Finset.sum_congr rfl
      intro ys _
      simp_rw [exactFixedQuestionPrefix_insert_iff
        fixedX j fresh xs knownX]
      by_cases compatible :
          (∀ k : Fin n, k ∈ fixedX → xs k = knownX k) ∧
          (∀ k : Fin n, k ∈ fixedY → ys k = knownY k)
      · rw [if_pos compatible]
        calc
          _ = (if
              (xs j = xs j ∧
                (∀ k : Fin n, k ∈ fixedX → xs k = knownX k)) ∧
                (∀ k : Fin n, k ∈ fixedY → ys k = knownY k)
              then (G.repeat n).questionWeight xs ys •
                conditionedAliceEffect G n S D answer xs
              else 0) := by
                apply Finset.sum_eq_single (xs j)
                · intro x _ different
                  rw [if_neg]
                  exact fun h => different h.1.1.symm
                · intro absent
                  exact (absent (Finset.mem_univ (xs j))).elim
          _ = _ := if_pos ⟨⟨rfl, compatible.1⟩, compatible.2⟩
      · rw [if_neg compatible]
        apply Finset.sum_eq_zero
        intro x _
        rw [if_neg]
        exact fun h => compatible ⟨h.1.2, h.2⟩

theorem exactJointPrefixAliceOperatorFilter_martingale
    (G : Game X Y A B) (n : ℕ) (S : Strategy (G.repeat n))
    (D fixedX fixedY : Finset (Fin n)) (j : Fin n)
    (fresh : j ∉ fixedX) (opposite_fixed : j ∈ fixedY)
    (answer : {k : Fin n // k ∈ D} → A)
    (knownX : Fin n → X) (knownY : Fin n → Y)
    (supported : exactJointPrefixQuestionMass
      G n fixedX fixedY knownX knownY ≠ 0) :
    (∑ x : X, G.conditionalXGivenY (knownY j) x •
      exactJointPrefixAliceOperatorFilter G n S D
        (insert j fixedX) fixedY answer
        (Function.update knownX j x) knownY) =
      exactJointPrefixAliceOperatorFilter G n S D
        fixedX fixedY answer knownX knownY := by
  classical
  unfold exactJointPrefixAliceOperatorFilter
  calc
    (∑ x : X, G.conditionalXGivenY (knownY j) x •
      ((exactJointPrefixQuestionMass G n
        (insert j fixedX) fixedY
        (Function.update knownX j x) knownY)⁻¹ •
        exactJointPrefixAliceOperatorMass G n S D
          (insert j fixedX) fixedY answer
          (Function.update knownX j x) knownY)) =
      ∑ x : X,
        (exactJointPrefixQuestionMass
          G n fixedX fixedY knownX knownY)⁻¹ •
          exactJointPrefixAliceOperatorMass G n S D
            (insert j fixedX) fixedY answer
            (Function.update knownX j x) knownY := by
      apply Finset.sum_congr rfl
      intro x _
      by_cases child_zero :
          exactJointPrefixQuestionMass G n
            (insert j fixedX) fixedY
            (Function.update knownX j x) knownY = 0
      · have matrix_zero :=
          exactJointPrefixAliceOperatorMass_zero_of_mass_zero
            G n S D (insert j fixedX) fixedY answer
            (Function.update knownX j x) knownY child_zero
        rw [matrix_zero]
        simp
      · have insertion := exactJointPrefixQuestionMass_insert_alice
          G n fixedX fixedY j fresh opposite_fixed knownX knownY x
        have conditional :
            exactJointPrefixQuestionMass G n
                (insert j fixedX) fixedY
                (Function.update knownX j x) knownY /
              exactJointPrefixQuestionMass
                G n fixedX fixedY knownX knownY =
                G.conditionalXGivenY (knownY j) x := by
          rw [insertion]
          field_simp
        have coefficient :
            G.conditionalXGivenY (knownY j) x *
              (exactJointPrefixQuestionMass G n
                (insert j fixedX) fixedY
                (Function.update knownX j x) knownY)⁻¹ =
              (exactJointPrefixQuestionMass
                G n fixedX fixedY knownX knownY)⁻¹ := by
          rw [← conditional]
          field_simp
        rw [smul_smul, coefficient]
    _ = (exactJointPrefixQuestionMass
          G n fixedX fixedY knownX knownY)⁻¹ •
        (∑ x : X,
          exactJointPrefixAliceOperatorMass G n S D
            (insert j fixedX) fixedY answer
            (Function.update knownX j x) knownY) := by
          rw [Finset.smul_sum]
    _ = (exactJointPrefixQuestionMass
          G n fixedX fixedY knownX knownY)⁻¹ •
        exactJointPrefixAliceOperatorMass G n S D
          fixedX fixedY answer knownX knownY := by
          rw [exactJointPrefixAliceOperatorMass_sum_insert
            G n S D fixedX fixedY j fresh answer knownX knownY]

end

noncomputable section

open scoped BigOperators ComplexOrder Kronecker MatrixOrder
  Matrix.Norms.L2Operator InnerProductSpace

set_option backward.isDefEq.respectTransparency false
set_option maxHeartbeats 2800000
set_option maxRecDepth 2048

attribute [local instance] Classical.propDecidable

variable {X Y A B : Type*}
variable [Fintype X] [Fintype Y] [Fintype A] [Fintype B]

theorem exactRevealCode_eq_iff_fair_question_masks
    {n : ℕ} (D : Finset (Fin n))
    (seed : ExactRemainingSeed D)
    (q q' : ExactFullQuestion X Y n) :
    exactRevealCode D seed q' =
        exactRevealCode D seed q ↔
      (∀ j : Fin n,
        j ∈ exactFairAliceQuestionMask D seed →
          q'.1 j = q.1 j) ∧
      (∀ j : Fin n,
        j ∈ exactFairBobQuestionMask D seed →
          q'.2 j = q.2 j) := by
  classical
  constructor
  · intro same
    have aliceD := congrArg
      (fun h : ExactRevealHistory X Y D seed =>
        h.aliceConditioned) same
    have bobD := congrArg
      (fun h : ExactRevealHistory X Y D seed =>
        h.bobConditioned) same
    have aliceL := congrArg
      (fun h : ExactRevealHistory X Y D seed =>
        h.aliceLeft) same
    have bobR := congrArg
      (fun h : ExactRevealHistory X Y D seed =>
        h.bobRight) same
    have bobLP := congrArg
      (fun h : ExactRevealHistory X Y D seed =>
        h.bobLeftPrefix) same
    have aliceRP := congrArg
      (fun h : ExactRevealHistory X Y D seed =>
        h.aliceRightPrefix) same
    constructor
    · intro j hj
      change j ∈ (D ∪
        (exactLeft seed.coordinate seed.partition).image
          Subtype.val) ∪
        (exactRightPrefix seed).image Subtype.val at hj
      rcases Finset.mem_union.mp hj with hmain | hprefix
      · rcases Finset.mem_union.mp hmain with hD | hleft
        · exact congrFun aliceD ⟨j, hD⟩
        · obtain ⟨k, hk, samej⟩ := Finset.mem_image.mp hleft
          subst j
          exact congrFun aliceL ⟨k, hk⟩
      · obtain ⟨k, hk, samej⟩ := Finset.mem_image.mp hprefix
        subst j
        exact congrFun aliceRP ⟨k, hk⟩
    · intro j hj
      change j ∈ (D ∪
        (exactRight seed.coordinate seed.partition).image
          Subtype.val) ∪
        (exactLeftPrefix seed).image Subtype.val at hj
      rcases Finset.mem_union.mp hj with hmain | hprefix
      · rcases Finset.mem_union.mp hmain with hD | hright
        · exact congrFun bobD ⟨j, hD⟩
        · obtain ⟨k, hk, samej⟩ := Finset.mem_image.mp hright
          subst j
          exact congrFun bobR ⟨k, hk⟩
      · obtain ⟨k, hk, samej⟩ := Finset.mem_image.mp hprefix
        subst j
        exact congrFun bobLP ⟨k, hk⟩
  · rintro ⟨alice, bob⟩
    unfold exactRevealCode
    congr 1
    · funext j
      exact alice j.val <|
        Finset.mem_union_left _ <|
          Finset.mem_union_left _ j.property
    · funext j
      exact bob j.val <|
        Finset.mem_union_left _ <|
          Finset.mem_union_left _ j.property
    · funext j
      exact alice j.val.val <|
        Finset.mem_union_left _ <|
          Finset.mem_union_right _ <|
            Finset.mem_image.mpr ⟨j.val, j.property, rfl⟩
    · funext j
      exact bob j.val.val <|
        Finset.mem_union_left _ <|
          Finset.mem_union_right _ <|
            Finset.mem_image.mpr ⟨j.val, j.property, rfl⟩
    · funext j
      exact bob j.val.val <|
        Finset.mem_union_right _ <|
          Finset.mem_image.mpr ⟨j.val, j.property, rfl⟩
    · funext j
      exact alice j.val.val <|
        Finset.mem_union_right _ <|
          Finset.mem_image.mpr ⟨j.val, j.property, rfl⟩

theorem exactAliceQuestionMass_eq_jointPrefixQuestionMass
    (G : Game X Y A B) (n : ℕ)
    (D : Finset (Fin n))
    (seed : ExactRemainingSeed D)
    (q : ExactFullQuestion X Y n) :
    exactAliceQuestionMass G n D seed
        (exactRevealCode D seed q)
        (q.1 seed.coordinate.val) =
      exactJointPrefixQuestionMass G n
        (insert seed.coordinate.val
          (exactFairAliceQuestionMask D seed))
        (exactFairBobQuestionMask D seed) q.1 q.2 := by
  classical
  unfold exactAliceQuestionMass
    exactJointPrefixQuestionMass
  rw [Fintype.sum_prod_type]
  apply Finset.sum_congr rfl
  intro xs _
  apply Finset.sum_congr rfl
  intro ys _
  have same :
      (exactRevealCode D seed (xs, ys) =
          exactRevealCode D seed q ∧
        xs seed.coordinate.val = q.1 seed.coordinate.val) ↔
      ((∀ j : Fin n,
        j ∈ insert seed.coordinate.val
          (exactFairAliceQuestionMask D seed) →
          xs j = q.1 j) ∧
       (∀ j : Fin n,
        j ∈ exactFairBobQuestionMask D seed →
          ys j = q.2 j)) := by
    constructor
    · rintro ⟨history, distinguished⟩
      obtain ⟨alice, bob⟩ :=
        (exactRevealCode_eq_iff_fair_question_masks
          D seed q (xs, ys)).mp history
      refine ⟨?_, bob⟩
      intro j hj
      rcases Finset.mem_insert.mp hj with samej | hj
      · subst j
        exact distinguished
      · exact alice j hj
    · rintro ⟨alice, bob⟩
      refine ⟨(exactRevealCode_eq_iff_fair_question_masks
        D seed q (xs, ys)).mpr ⟨?_, bob⟩, ?_⟩
      · intro j hj
        exact alice j (Finset.mem_insert_of_mem hj)
      · exact alice seed.coordinate.val
          (Finset.mem_insert_self _ _)
  by_cases compatible :
      (∀ j : Fin n,
        j ∈ insert seed.coordinate.val
          (exactFairAliceQuestionMask D seed) →
          xs j = q.1 j) ∧
      (∀ j : Fin n,
        j ∈ exactFairBobQuestionMask D seed →
          ys j = q.2 j)
  · rw [if_pos (same.mpr compatible), if_pos compatible]
    rfl
  · rw [if_neg (fun h => compatible (same.mp h)),
      if_neg compatible]

theorem exactAliceQuestionFilter_eq_jointPrefixOperatorFilter
    (G : Game X Y A B) (n : ℕ) (S : Strategy (G.repeat n))
    (D : Finset (Fin n))
    (seed : ExactRemainingSeed D)
    (q : ExactFullQuestion X Y n)
    (answer : {j : Fin n // j ∈ D} → A) :
    exactAliceQuestionFilter G n S D seed
        (exactRevealCode D seed q) answer
        (q.1 seed.coordinate.val) =
      exactJointPrefixAliceOperatorFilter G n S D
        (insert seed.coordinate.val
          (exactFairAliceQuestionMask D seed))
        (exactFairBobQuestionMask D seed)
        answer q.1 q.2 := by
  classical
  unfold exactAliceQuestionFilter
  rw [exactAliceQuestionMass_eq_jointPrefixQuestionMass
    G n D seed q]
  unfold exactJointPrefixAliceOperatorFilter
    exactJointPrefixAliceOperatorMass
  rw [Fintype.sum_prod_type]
  simp only [Finset.smul_sum]
  apply Finset.sum_congr rfl
  intro xs _
  apply Finset.sum_congr rfl
  intro ys _
  have same :
      (exactRevealCode D seed (xs, ys) =
          exactRevealCode D seed q ∧
        xs seed.coordinate.val = q.1 seed.coordinate.val) ↔
      ((∀ j : Fin n,
        j ∈ insert seed.coordinate.val
          (exactFairAliceQuestionMask D seed) →
          xs j = q.1 j) ∧
       (∀ j : Fin n,
        j ∈ exactFairBobQuestionMask D seed →
          ys j = q.2 j)) := by
    constructor
    · rintro ⟨history, distinguished⟩
      obtain ⟨alice, bob⟩ :=
        (exactRevealCode_eq_iff_fair_question_masks
          D seed q (xs, ys)).mp history
      refine ⟨?_, bob⟩
      intro j hj
      rcases Finset.mem_insert.mp hj with samej | hj
      · subst j
        exact distinguished
      · exact alice j hj
    · rintro ⟨alice, bob⟩
      refine ⟨(exactRevealCode_eq_iff_fair_question_masks
        D seed q (xs, ys)).mpr ⟨?_, bob⟩, ?_⟩
      · intro j hj
        exact alice j (Finset.mem_insert_of_mem hj)
      · exact alice seed.coordinate.val
          (Finset.mem_insert_self _ _)
  by_cases compatible :
      (∀ j : Fin n,
        j ∈ insert seed.coordinate.val
          (exactFairAliceQuestionMask D seed) →
          xs j = q.1 j) ∧
      (∀ j : Fin n,
        j ∈ exactFairBobQuestionMask D seed →
          ys j = q.2 j)
  · rw [if_pos (same.mpr compatible), if_pos compatible,
      smul_smul]
    unfold exactPriorQuestionWeight
    rw [div_eq_mul_inv]
    congr 1
    ring
  · rw [if_neg (fun h => compatible (same.mp h)),
      if_neg compatible, smul_zero]

end

noncomputable section

open scoped BigOperators ComplexOrder Kronecker MatrixOrder
  Matrix.Norms.L2Operator InnerProductSpace

set_option backward.isDefEq.respectTransparency false
set_option maxHeartbeats 2600000
set_option maxRecDepth 2048

attribute [local instance] Classical.propDecidable

variable {X Y A B : Type*}
variable [Fintype X] [Fintype Y] [Fintype A] [Fintype B]

theorem exactJointPrefixAliceOperatorMass_eq_sum_bobMass
    (G : Game X Y A B) (n : ℕ) (S : Strategy (G.repeat n))
    (D fixedX fixedY : Finset (Fin n))
    (answer : {j : Fin n // j ∈ D} → A)
    (knownX : Fin n → X) (knownY : Fin n → Y) :
    exactJointPrefixAliceOperatorMass
        G n S D fixedX fixedY answer knownX knownY =
      ∑ xs : Fin n → X,
        if ∀ j : Fin n, j ∈ fixedX → xs j = knownX j then
          exactFixedBobQuestionMass
              G n fixedY xs knownY •
            conditionedAliceEffect G n S D answer xs
        else 0 := by
  classical
  unfold exactJointPrefixAliceOperatorMass
  apply Finset.sum_congr rfl
  intro xs _
  by_cases compatible :
      ∀ j : Fin n, j ∈ fixedX → xs j = knownX j
  · rw [if_pos compatible]
    unfold exactFixedBobQuestionMass
    rw [Finset.sum_smul]
    apply Finset.sum_congr rfl
    intro ys _
    by_cases bob_compatible :
        ∀ j : Fin n, j ∈ fixedY → ys j = knownY j
    · rw [if_pos ⟨compatible, bob_compatible⟩,
        if_pos bob_compatible]
    · rw [if_neg (fun h => bob_compatible h.2),
        if_neg bob_compatible, zero_smul]
  · rw [if_neg compatible]
    apply Finset.sum_eq_zero
    intro ys _
    rw [if_neg]
    exact fun h => compatible h.1

theorem exactJointPrefixAliceOperatorMass_insert_bob
    (G : Game X Y A B) (n : ℕ) (S : Strategy (G.repeat n))
    (D fixedX fixedY : Finset (Fin n)) (j : Fin n)
    (opposite_fixed : j ∈ fixedX) (fresh : j ∉ fixedY)
    (answer : {k : Fin n // k ∈ D} → A)
    (knownX : Fin n → X) (knownY : Fin n → Y) (y : Y) :
    exactJointPrefixAliceOperatorMass G n S D
        fixedX (insert j fixedY) answer
        knownX (Function.update knownY j y) =
      G.conditionalYGivenX (knownX j) y •
        exactJointPrefixAliceOperatorMass G n S D
          fixedX fixedY answer knownX knownY := by
  classical
  rw [exactJointPrefixAliceOperatorMass_eq_sum_bobMass,
    exactJointPrefixAliceOperatorMass_eq_sum_bobMass,
    Finset.smul_sum]
  apply Finset.sum_congr rfl
  intro xs _
  by_cases compatible :
      ∀ k : Fin n, k ∈ fixedX → xs k = knownX k
  · rw [if_pos compatible, if_pos compatible,
      exactFixedBobQuestionMass_insert
        G n fixedY j fresh xs knownY y,
      compatible j opposite_fixed, smul_smul]
  · rw [if_neg compatible, if_neg compatible, smul_zero]

theorem exactJointPrefixAliceOperatorFilter_insert_bob
    (G : Game X Y A B) (n : ℕ) (S : Strategy (G.repeat n))
    (D fixedX fixedY : Finset (Fin n)) (j : Fin n)
    (opposite_fixed : j ∈ fixedX) (fresh : j ∉ fixedY)
    (answer : {k : Fin n // k ∈ D} → A)
    (knownX : Fin n → X) (knownY : Fin n → Y) (y : Y)
    (edge : G.conditionalYGivenX (knownX j) y ≠ 0) :
    exactJointPrefixAliceOperatorFilter G n S D
        fixedX (insert j fixedY) answer
        knownX (Function.update knownY j y) =
      exactJointPrefixAliceOperatorFilter G n S D
        fixedX fixedY answer knownX knownY := by
  unfold exactJointPrefixAliceOperatorFilter
  rw [exactJointPrefixQuestionMass_insert_bob
      G n fixedX fixedY j opposite_fixed fresh knownX knownY y,
    exactJointPrefixAliceOperatorMass_insert_bob
      G n S D fixedX fixedY j opposite_fixed fresh answer
      knownX knownY y,
    smul_smul]
  have coefficient :
      (G.conditionalYGivenX (knownX j) y *
        exactJointPrefixQuestionMass G n
          fixedX fixedY knownX knownY)⁻¹ *
        G.conditionalYGivenX (knownX j) y =
      (exactJointPrefixQuestionMass G n
        fixedX fixedY knownX knownY)⁻¹ := by
    by_cases zero :
        exactJointPrefixQuestionMass
          G n fixedX fixedY knownX knownY = 0
    · simp [zero]
    · field_simp
  rw [coefficient]

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

theorem exactFairAliceQuestionMask_coordinate_not_mem
    {n : ℕ} (D : Finset (Fin n))
    (seed : ExactRemainingSeed D) :
    seed.coordinate.val ∉ exactFairAliceQuestionMask D seed := by
  classical
  intro member
  change seed.coordinate.val ∈
    (D ∪ (exactLeft seed.coordinate seed.partition).image
      Subtype.val) ∪
      (exactRightPrefix seed).image Subtype.val at member
  rcases Finset.mem_union.mp member with main | exposed
  · rcases Finset.mem_union.mp main with conditioned | left
    · exact (Finset.mem_sdiff.mp seed.coordinate.property).2 conditioned
    · obtain ⟨a, ha, same⟩ := Finset.mem_image.mp left
      have equal : a = seed.coordinate := Subtype.ext same
      exact exactLeft_coordinate_not_mem
        seed.coordinate seed.partition (equal ▸ ha)
  · obtain ⟨a, ha, same⟩ := Finset.mem_image.mp exposed
    have equal : a = seed.coordinate := Subtype.ext same
    have belongs := exactRightPrefix_subset seed ha
    exact exactRight_coordinate_not_mem
      seed.coordinate seed.partition (equal ▸ belongs)

theorem exactFairBobQuestionMask_coordinate_not_mem
    {n : ℕ} (D : Finset (Fin n))
    (seed : ExactRemainingSeed D) :
    seed.coordinate.val ∉ exactFairBobQuestionMask D seed := by
  classical
  intro member
  change seed.coordinate.val ∈
    (D ∪ (exactRight seed.coordinate seed.partition).image
      Subtype.val) ∪
      (exactLeftPrefix seed).image Subtype.val at member
  rcases Finset.mem_union.mp member with main | exposed
  · rcases Finset.mem_union.mp main with conditioned | right
    · exact (Finset.mem_sdiff.mp seed.coordinate.property).2 conditioned
    · obtain ⟨a, ha, same⟩ := Finset.mem_image.mp right
      have equal : a = seed.coordinate := Subtype.ext same
      exact exactRight_coordinate_not_mem
        seed.coordinate seed.partition (equal ▸ ha)
  · obtain ⟨a, ha, same⟩ := Finset.mem_image.mp exposed
    have equal : a = seed.coordinate := Subtype.ext same
    have belongs := exactLeftPrefix_subset seed ha
    exact exactLeft_coordinate_not_mem
      seed.coordinate seed.partition (equal ▸ belongs)

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

theorem exactJointPrefixQuestionMass_pos_of_question
    (G : Game X Y A B) (n : ℕ)
    (fixedX fixedY : Finset (Fin n))
    (knownX : Fin n → X) (knownY : Fin n → Y)
    (positive : 0 < (G.repeat n).questionWeight knownX knownY) :
    0 < exactJointPrefixQuestionMass
      G n fixedX fixedY knownX knownY := by
  classical
  unfold exactJointPrefixQuestionMass
  have term_nonnegative (xs : Fin n → X) (ys : Fin n → Y) :
      0 ≤ if (∀ j : Fin n, j ∈ fixedX → xs j = knownX j) ∧
          (∀ j : Fin n, j ∈ fixedY → ys j = knownY j) then
        (G.repeat n).questionWeight xs ys
      else 0 := by
    split
    · exact (G.repeat n).weight_nonneg xs ys
    · exact le_rfl
  have row_nonnegative (xs : Fin n → X) :
      0 ≤ ∑ ys : Fin n → Y,
        if (∀ j : Fin n, j ∈ fixedX → xs j = knownX j) ∧
           (∀ j : Fin n, j ∈ fixedY → ys j = knownY j) then
          (G.repeat n).questionWeight xs ys
        else 0 :=
    Finset.sum_nonneg (fun ys _ => term_nonnegative xs ys)
  have own_compatible :
      (∀ j : Fin n, j ∈ fixedX → knownX j = knownX j) ∧
      (∀ j : Fin n, j ∈ fixedY → knownY j = knownY j) :=
    ⟨fun _ _ => rfl, fun _ _ => rfl⟩
  calc
    0 < (G.repeat n).questionWeight knownX knownY := positive
    _ = (if (∀ j : Fin n,
              j ∈ fixedX → knownX j = knownX j) ∧
            (∀ j : Fin n,
              j ∈ fixedY → knownY j = knownY j) then
          (G.repeat n).questionWeight knownX knownY
        else 0) := (if_pos own_compatible).symm
    _ ≤ (∑ ys : Fin n → Y,
        if (∀ j : Fin n,
              j ∈ fixedX → knownX j = knownX j) ∧
            (∀ j : Fin n,
              j ∈ fixedY → ys j = knownY j) then
          (G.repeat n).questionWeight knownX ys
        else 0) :=
      Finset.single_le_sum
        (fun ys _ => term_nonnegative knownX ys)
        (Finset.mem_univ knownY)
    _ ≤ _ := Finset.single_le_sum
      (fun xs _ => row_nonnegative xs)
      (Finset.mem_univ knownX)

theorem exactRevealCode_update_distinguished_alice
    {n : ℕ} (D : Finset (Fin n))
    (seed : ExactRemainingSeed D)
    (q : ExactFullQuestion X Y n) (x : X) :
    exactRevealCode D seed
        (Function.update q.1 seed.coordinate.val x, q.2) =
      exactRevealCode D seed q := by
  apply (exactRevealCode_eq_iff_fair_question_masks
    D seed q (Function.update q.1 seed.coordinate.val x, q.2)).mpr
  constructor
  · intro j hj
    have different : j ≠ seed.coordinate.val := by
      intro same
      exact exactFairAliceQuestionMask_coordinate_not_mem
        D seed (same ▸ hj)
    exact Function.update_of_ne different x q.1
  · intro j _
    rfl

end

end QuantumParallelRepetition


open QuantumParallelRepetition
open scoped ComplexOrder Matrix BigOperators InnerProductSpace
open Complex Matrix Finset
open scoped BigOperators ComplexOrder Kronecker MatrixOrder
  Matrix.Norms.L2Operator InnerProductSpace
set_option backward.isDefEq.respectTransparency false
set_option maxHeartbeats 3400000
set_option maxRecDepth 2048
attribute [local instance] Classical.propDecidable
variable {X Y A B : Type*}
variable [Fintype X] [Fintype Y] [Fintype A] [Fintype B]

theorem solution
    (G : Game X Y A B) (n : ℕ) (S : Strategy (G.repeat n))
    (D : Finset (Fin n))
    (seed : ExactRemainingSeed D)
    (q : ExactFullQuestion X Y n)
    (answer : {j : Fin n // j ∈ D} → A)
    (supported : exactPriorQuestionWeight G n q ≠ 0) :
    exactAliceMeanFilter G n S D seed
        (exactRevealCode D seed q) answer
        (q.2 seed.coordinate.val) =
      exactJointPrefixAliceOperatorFilter G n S D
        (exactFairAliceQuestionMask D seed)
        (insert seed.coordinate.val
          (exactFairBobQuestionMask D seed))
        answer q.1 q.2 := by
  classical
  have question_nonzero :
      (G.repeat n).questionWeight q.1 q.2 ≠ 0 := by
    simpa [exactPriorQuestionWeight] using supported
  have question_positive :
      0 < (G.repeat n).questionWeight q.1 q.2 :=
    lt_of_le_of_ne ((G.repeat n).weight_nonneg q.1 q.2)
      (Ne.symm question_nonzero)
  have register_positive := exactJointPrefixQuestionMass_pos_of_question
    G n (exactFairAliceQuestionMask D seed)
    (insert seed.coordinate.val
      (exactFairBobQuestionMask D seed))
    q.1 q.2 question_positive
  have tower := exactJointPrefixAliceOperatorFilter_martingale
    G n S D
    (exactFairAliceQuestionMask D seed)
    (insert seed.coordinate.val
      (exactFairBobQuestionMask D seed))
    seed.coordinate.val
    (exactFairAliceQuestionMask_coordinate_not_mem D seed)
    (Finset.mem_insert_self _ _)
    answer q.1 q.2 register_positive.ne'
  unfold exactAliceMeanFilter
  rw [← tower]
  apply Finset.sum_congr rfl
  intro x _
  by_cases missing : G.conditionalXGivenY (q.2 seed.coordinate.val) x = 0
  · simp [missing]
  · have edge : G.questionWeight x (q.2 seed.coordinate.val) ≠ 0 := by
      intro zero
      apply missing
      simp [Game.conditionalXGivenY, zero]
    have mirror_edge :
        G.conditionalYGivenX x (q.2 seed.coordinate.val) ≠ 0 := by
      intro zero
      have factor := G.marginalX_mul_conditionalYGivenX
        x (q.2 seed.coordinate.val)
      rw [zero, mul_zero] at factor
      exact edge factor.symm
    have source :=
      exactAliceQuestionFilter_eq_jointPrefixOperatorFilter
        G n S D seed
        (Function.update q.1 seed.coordinate.val x, q.2) answer
    have source_filter :
        exactAliceQuestionFilter G n S D seed
          (exactRevealCode D seed q) answer x =
        exactJointPrefixAliceOperatorFilter G n S D
          (insert seed.coordinate.val
            (exactFairAliceQuestionMask D seed))
          (exactFairBobQuestionMask D seed) answer
          (Function.update q.1 seed.coordinate.val x) q.2 := by
      simpa only [
        exactRevealCode_update_distinguished_alice,
        Function.update_self] using source
    have stable :=
      exactJointPrefixAliceOperatorFilter_insert_bob
        G n S D
        (insert seed.coordinate.val
          (exactFairAliceQuestionMask D seed))
        (exactFairBobQuestionMask D seed)
        seed.coordinate.val
        (Finset.mem_insert_self _ _)
        (exactFairBobQuestionMask_coordinate_not_mem D seed)
        answer (Function.update q.1 seed.coordinate.val x) q.2
        (q.2 seed.coordinate.val)
        (by simpa only [Function.update_self] using mirror_edge)
    have equal :
        exactAliceQuestionFilter G n S D seed
          (exactRevealCode D seed q) answer x =
        exactJointPrefixAliceOperatorFilter G n S D
          (insert seed.coordinate.val
            (exactFairAliceQuestionMask D seed))
          (insert seed.coordinate.val
            (exactFairBobQuestionMask D seed))
          answer (Function.update q.1 seed.coordinate.val x) q.2 := by
      rw [source_filter]
      simpa only [Function.update_eq_self] using stable.symm
    rw [equal]
