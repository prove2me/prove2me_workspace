import Definitions.Def_quantum_parallel_repetition_game
import Definitions.Def_qpr_core_17
import Theorems.Thm_QuantumParallelRepetition_trace_mul_posSemidef_nonneg
import Theorems.Thm_QuantumParallelRepetition_fullHistoryAliceEntropyPotential_lower_bound
import Theorems.Thm_QuantumParallelRepetition_fullHistoryRemaining_insert_subset
import Theorems.Thm_QuantumParallelRepetition_martingale_log_cost_eq
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

theorem marginalY_nonneg (G : Game X Y A B) (y : Y) :
    0 ≤ G.marginalY y := by
  unfold marginalY
  exact Finset.sum_nonneg fun x _ => G.weight_nonneg x y

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

theorem conditionalYGivenX_nonneg
    (G : Game X Y A B) (x : X) (y : Y) :
    0 ≤ G.conditionalYGivenX x y := by
  exact div_nonneg (G.weight_nonneg x y)
    (G.marginalX_nonneg x)

theorem conditionalXGivenY_nonneg
    (G : Game X Y A B) (y : Y) (x : X) :
    0 ≤ G.conditionalXGivenY y x := by
  exact div_nonneg (G.weight_nonneg x y)
    (G.marginalY_nonneg y)

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

theorem conditionalXGivenY_sum
    (G : Game X Y A B) (y : Y)
    (hy : 0 < G.marginalY y) :
    (∑ x : X, G.conditionalXGivenY y x) = 1 := by
  unfold conditionalXGivenY
  rw [← Finset.sum_div]
  change G.marginalY y / G.marginalY y = 1
  exact div_self hy.ne'

end Game

section MixedHistories

variable {X Y A B U V : Type*}
variable [Fintype X] [Fintype Y] [Fintype A] [Fintype B]
variable [AddCommGroup U] [Module ℝ U]
variable [AddCommGroup V] [Module ℝ V]

theorem alice_mixed_history_pairing
    (G : Game X Y A B)
    (pair : U →ₗ[ℝ] V →ₗ[ℝ] ℝ)
    (H : X → U) (K : Y → V) :
    (∑ x : X,
      G.marginalX x *
        pair (H x) (conditionalBobAverage G K x))
      =
    ∑ x : X, ∑ y : Y,
      G.questionWeight x y * pair (H x) (K y) := by
  classical
  apply Finset.sum_congr rfl
  intro x _
  unfold conditionalBobAverage
  rw [map_sum, Finset.mul_sum]
  apply Finset.sum_congr rfl
  intro y _
  rw [map_smul]
  simp only [smul_eq_mul]
  rw [← mul_assoc, G.marginalX_mul_conditionalYGivenX x y]

theorem bob_mixed_history_pairing
    (G : Game X Y A B)
    (pair : U →ₗ[ℝ] V →ₗ[ℝ] ℝ)
    (H : X → U) (K : Y → V) :
    (∑ y : Y,
      G.marginalY y *
        pair (conditionalAliceAverage G H y) (K y))
      =
    ∑ x : X, ∑ y : Y,
      G.questionWeight x y * pair (H x) (K y) := by
  classical
  calc
    (∑ y : Y,
      G.marginalY y *
        pair (conditionalAliceAverage G H y) (K y))
      =
      ∑ y : Y, ∑ x : X,
        G.questionWeight x y * pair (H x) (K y) := by
        apply Finset.sum_congr rfl
        intro y _
        unfold conditionalAliceAverage
        rw [map_sum]
        simp only [LinearMap.sum_apply, map_smul,
          LinearMap.smul_apply, smul_eq_mul]
        rw [Finset.mul_sum]
        apply Finset.sum_congr rfl
        intro x _
        rw [← mul_assoc, G.marginalY_mul_conditionalXGivenY x y]
    _ =
      ∑ x : X, ∑ y : Y,
        G.questionWeight x y * pair (H x) (K y) := by
          rw [Finset.sum_comm]

theorem alice_reveal_increment
    (G : Game X Y A B)
    (pair : U →ₗ[ℝ] V →ₗ[ℝ] ℝ)
    (H : X → U) (M : Y → U) (K : Y → V)
    (f : U → U) :
    (∑ x : X,
      G.marginalX x *
        pair (f (H x)) (conditionalBobAverage G K x))
      -
    (∑ y : Y,
      G.marginalY y *
        pair (f (M y)) (K y))
      =
    ∑ y : Y,
      G.marginalY y *
        pair
          (conditionalAliceAverage G (fun x => f (H x)) y -
            f (M y))
          (K y) := by
  classical
  rw [alice_mixed_history_pairing G pair (fun x => f (H x)) K]
  rw [← bob_mixed_history_pairing G pair (fun x => f (H x)) K]
  rw [← Finset.sum_sub_distrib]
  apply Finset.sum_congr rfl
  intro y _
  rw [map_sub]
  simp only [LinearMap.sub_apply]
  ring

end MixedHistories

section RepeatedQuantumFilters

open scoped ComplexOrder MatrixOrder

variable {X Y A B : Type*}
variable [Fintype X] [Fintype Y] [Fintype A] [Fintype B]

theorem conditionedAliceEffect_positive
    (G : Game X Y A B) (n : ℕ)
    (S : Strategy (G.repeat n))
    (D : Finset (Fin n))
    (α : {i : Fin n // i ∈ D} → A)
    (xs : Fin n → X) :
    (conditionedAliceEffect G n S D α xs).PosSemidef := by
  classical
  unfold conditionedAliceEffect
  apply Matrix.posSemidef_sum Finset.univ
  intro answers _
  split_ifs
  · exact (S.aliceMeasurement xs).positive answers
  · exact Matrix.PosSemidef.zero

theorem conditionedBobEffect_positive
    (G : Game X Y A B) (n : ℕ)
    (S : Strategy (G.repeat n))
    (D : Finset (Fin n))
    (β : {i : Fin n // i ∈ D} → B)
    (ys : Fin n → Y) :
    (conditionedBobEffect G n S D β ys).PosSemidef := by
  classical
  unfold conditionedBobEffect
  apply Matrix.posSemidef_sum Finset.univ
  intro answers _
  split_ifs
  · exact (S.bobMeasurement ys).positive answers
  · exact Matrix.PosSemidef.zero

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

end RepeatedQuantumFilters

end

noncomputable section

open Matrix
open scoped BigOperators Kronecker ComplexOrder MatrixOrder

set_option backward.isDefEq.respectTransparency false
set_option maxHeartbeats 600000

section ActualHistoryWeights

variable {X Y A B : Type*}
variable [Fintype X] [Fintype Y] [Fintype A] [Fintype B]

theorem fullHistoryWeight_nonneg
    (G : Game X Y A B) {n : ℕ}
    {D L : Finset (Fin n)}
    (h : FullSubsetHistory X Y n D L) :
    0 ≤ fullHistoryWeight G h := by
  unfold fullHistoryWeight
  apply mul_nonneg
  · apply mul_nonneg
    · exact Finset.prod_nonneg fun i _ =>
        G.weight_nonneg (h.aliceConditioned i) (h.bobConditioned i)
    · exact Finset.prod_nonneg fun i _ =>
        G.marginalX_nonneg (h.aliceRevealed i)
  · exact Finset.prod_nonneg fun i _ =>
      G.marginalY_nonneg (h.bobRemaining i)

theorem fullHistoryHiddenAliceWeight_nonneg
    (G : Game X Y A B) {n : ℕ}
    {D L : Finset (Fin n)}
    (h : FullSubsetHistory X Y n D L)
    (hidden : {i : Fin n // i ∈ fullHistoryRemaining n D L} → X) :
    0 ≤ fullHistoryHiddenAliceWeight G h hidden := by
  unfold fullHistoryHiddenAliceWeight
  exact Finset.prod_nonneg fun i _ =>
    G.conditionalXGivenY_nonneg (h.bobRemaining i) (hidden i)

theorem fullHistoryHiddenBobWeight_nonneg
    (G : Game X Y A B) {n : ℕ}
    {D L : Finset (Fin n)}
    (h : FullSubsetHistory X Y n D L)
    (hidden : {i : Fin n // i ∈ L} → Y) :
    0 ≤ fullHistoryHiddenBobWeight G h hidden := by
  unfold fullHistoryHiddenBobWeight
  exact Finset.prod_nonneg fun i _ =>
    G.conditionalYGivenX_nonneg (h.aliceRevealed i) (hidden i)

theorem fullHistoryAliceFilter_posSemidef
    (G : Game X Y A B) (n : ℕ)
    (S : Strategy (G.repeat n))
    (D L : Finset (Fin n))
    (h : FullSubsetHistory X Y n D L)
    (α : {i : Fin n // i ∈ D} → A) :
    (fullHistoryAliceFilter G n S D L h α).PosSemidef := by
  unfold fullHistoryAliceFilter
  apply Matrix.posSemidef_sum Finset.univ
  intro hidden _
  exact (conditionedAliceEffect_positive G n S D α
    (fullHistoryAliceQuestion h hidden)).smul
      (fullHistoryHiddenAliceWeight_nonneg G h hidden)

theorem fullHistoryBobFilter_posSemidef
    (G : Game X Y A B) (n : ℕ)
    (S : Strategy (G.repeat n))
    (D L : Finset (Fin n))
    (h : FullSubsetHistory X Y n D L)
    (β : {i : Fin n // i ∈ D} → B) :
    (fullHistoryBobFilter G n S D L h β).PosSemidef := by
  unfold fullHistoryBobFilter
  apply Matrix.posSemidef_sum Finset.univ
  intro hidden _
  exact (conditionedBobEffect_positive G n S D β
    (fullHistoryBobQuestion h hidden)).smul
      (fullHistoryHiddenBobWeight_nonneg G h hidden)

theorem fullHistoryWinIndicator_nonneg
    (G : Game X Y A B) {n : ℕ}
    {D L : Finset (Fin n)}
    (h : FullSubsetHistory X Y n D L)
    (α : {i : Fin n // i ∈ D} → A)
    (β : {i : Fin n // i ∈ D} → B) :
    0 ≤ fullHistoryWinIndicator G h α β := by
  classical
  unfold fullHistoryWinIndicator
  split <;> norm_num

end ActualHistoryWeights

end

noncomputable section

open Matrix
open scoped BigOperators Kronecker ComplexOrder MatrixOrder

set_option backward.isDefEq.respectTransparency false
set_option maxHeartbeats 600000

section HistoryContractions

variable {X Y A B : Type*}
variable [Fintype X] [Fintype Y] [Fintype A] [Fintype B]

theorem Game.conditionalXGivenY_sum_le_one
    (G : Game X Y A B) (y : Y) :
    (∑ x : X, G.conditionalXGivenY y x) ≤ 1 := by
  by_cases hy : G.marginalY y = 0
  · simp [Game.conditionalXGivenY, hy]
  · have hpos : 0 < G.marginalY y :=
      lt_of_le_of_ne (G.marginalY_nonneg y) (Ne.symm hy)
    rw [G.conditionalXGivenY_sum y hpos]

theorem fullHistoryHiddenAliceWeight_sum_le_one
    (G : Game X Y A B) {n : ℕ}
    {D L : Finset (Fin n)}
    (h : FullSubsetHistory X Y n D L) :
    (∑ hidden : {i : Fin n // i ∈ fullHistoryRemaining n D L} → X,
      fullHistoryHiddenAliceWeight G h hidden) ≤ 1 := by
  unfold fullHistoryHiddenAliceWeight
  rw [← Fintype.prod_sum]
  apply Finset.prod_le_one
  · intro i _
    exact Finset.sum_nonneg fun x _ =>
      G.conditionalXGivenY_nonneg (h.bobRemaining i) x
  · intro i _
    exact G.conditionalXGivenY_sum_le_one (h.bobRemaining i)

theorem fullHistoryAliceFilter_complement_posSemidef
    (G : Game X Y A B) (n : ℕ)
    (S : Strategy (G.repeat n))
    (D L : Finset (Fin n))
    (h : FullSubsetHistory X Y n D L)
    (α : {i : Fin n // i ∈ D} → A) :
    (1 - fullHistoryAliceFilter G n S D L h α).PosSemidef := by
  classical
  let w : ({i : Fin n // i ∈ fullHistoryRemaining n D L} → X) → ℝ :=
    fullHistoryHiddenAliceWeight G h
  let E : ({i : Fin n // i ∈ fullHistoryRemaining n D L} → X) →
      Matrix S.Alice S.Alice ℂ := fun x =>
    conditionedAliceEffect G n S D α (fullHistoryAliceQuestion h x)
  have hsum : (∑ x, w x) ≤ 1 :=
    fullHistoryHiddenAliceWeight_sum_le_one G h
  have hsplit :
      1 - (∑ x, w x • E x) =
        (1 - (∑ x, w x)) • (1 : Matrix S.Alice S.Alice ℂ) +
          ∑ x, w x • (1 - E x) := by
    simp_rw [smul_sub]
    rw [Finset.sum_sub_distrib, ← Finset.sum_smul]
    module
  change (1 - ∑ x, w x • E x).PosSemidef
  rw [hsplit]
  apply Matrix.PosSemidef.add
  · exact Matrix.PosSemidef.one.smul (sub_nonneg.mpr hsum)
  · apply Matrix.posSemidef_sum Finset.univ
    intro x _
    exact (conditionedAliceEffect_complement_positive G n S D α
      (fullHistoryAliceQuestion h x)).smul
        (fullHistoryHiddenAliceWeight_nonneg G h x)

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

theorem matrixLogEntropy_born_nonpos_left
    {dA dB : Type*}
    [Fintype dA] [Fintype dB]
    [DecidableEq dA] [DecidableEq dB]
    (ρ : DensityMatrix (dA × dB))
    (F : Matrix dA dA ℂ)
    (G : Matrix dB dB ℂ)
    (hF : F.PosSemidef)
    (hFcomplement : (1 - F).PosSemidef)
    (hG : G.PosSemidef) :
    bornTracePairing ρ.matrix
        (cfc (fun z : ℝ => z * Real.log z) F) G ≤ 0 := by
  have hneg := matrixLogEntropy_nonpos_of_contraction hF hFcomplement
  have hpair : 0 ≤ bornTracePairing ρ.matrix
      (-(cfc (fun z : ℝ => z * Real.log z) F)) G := by
    exact trace_mul_posSemidef_nonneg ρ.positive (hneg.kronecker hG)
  have hrewrite : bornTracePairing ρ.matrix
      (-(cfc (fun z : ℝ => z * Real.log z) F)) G =
      -bornTracePairing ρ.matrix
        (cfc (fun z : ℝ => z * Real.log z) F) G := by
    simp
  rw [hrewrite] at hpair
  exact neg_nonneg.mp hpair

theorem fullHistoryAliceEntropyPotential_nonpos
    (G : Game X Y A B) (n : ℕ)
    (S : Strategy (G.repeat n))
    (D L : Finset (Fin n)) :
    fullHistoryAliceEntropyPotential G n S D L ≤ 0 := by
  unfold fullHistoryAliceEntropyPotential
  apply Finset.sum_nonpos
  intro h _
  apply Finset.sum_nonpos
  intro α _
  apply Finset.sum_nonpos
  intro β _
  apply mul_nonpos_of_nonneg_of_nonpos
  · exact mul_nonneg (fullHistoryWeight_nonneg G h)
      (fullHistoryWinIndicator_nonneg G h α β)
  · exact matrixLogEntropy_born_nonpos_left S.state
      (fullHistoryAliceFilter G n S D L h α)
      (fullHistoryBobFilter G n S D L h β)
      (fullHistoryAliceFilter_posSemidef G n S D L h α)
      (fullHistoryAliceFilter_complement_posSemidef G n S D L h α)
      (fullHistoryBobFilter_posSemidef G n S D L h β)

end HistoryContractions

end

open scoped ComplexOrder Matrix BigOperators InnerProductSpace
open Complex Matrix Finset

noncomputable section

open Matrix
open scoped BigOperators Kronecker ComplexOrder MatrixOrder

set_option backward.isDefEq.respectTransparency false
set_option maxHeartbeats 1000000

theorem finsetSubtype_prod_insert
    {ι T : Type*} [DecidableEq ι] [CommMonoid T]
    (s : Finset ι) (i : ι) (hi : i ∉ s)
    (f : {j : ι // j ∈ insert i s} → T) :
    (∏ j : {j : ι // j ∈ insert i s}, f j) =
      f ⟨i, Finset.mem_insert_self i s⟩ *
        ∏ j : {j : ι // j ∈ s},
          f ⟨j, Finset.mem_insert_of_mem j.property⟩ := by
  classical
  let e := Finset.subtypeInsertEquivOption hi
  let g : Option {j : ι // j ∈ s} → T
    | none => f ⟨i, Finset.mem_insert_self i s⟩
    | some j => f ⟨j, Finset.mem_insert_of_mem j.property⟩
  have hcomp (j : {j : ι // j ∈ insert i s}) :
      g (e j) = f j := by
    rcases j with ⟨j, hj⟩
    by_cases hji : j = i
    · subst j
      simp [e, g, Finset.subtypeInsertEquivOption]
    · simp [e, g, Finset.subtypeInsertEquivOption, hji]
  calc
    (∏ j : {j : ι // j ∈ insert i s}, f j) =
      ∏ j : {j : ι // j ∈ insert i s}, g (e j) := by
        apply Finset.prod_congr rfl
        intro j _
        exact (hcomp j).symm
    _ = ∏ j : Option {j : ι // j ∈ s}, g j := e.prod_comp g
    _ = g none * ∏ j : {j : ι // j ∈ s}, g (some j) :=
      Fintype.prod_option g
    _ = _ := rfl

theorem fullHistoryRemaining_prod_split
    {n : ℕ} {T : Type*} [CommMonoid T]
    (D L : Finset (Fin n)) (i : Fin n)
    (hiD : i ∉ D) (hiL : i ∉ L)
    (f : {j : Fin n // j ∈ fullHistoryRemaining n D L} → T) :
    (∏ j : {j : Fin n // j ∈ fullHistoryRemaining n D L}, f j) =
      f ⟨i, by simp [fullHistoryRemaining, hiD, hiL]⟩ *
        ∏ j : {j : Fin n //
          j ∈ fullHistoryRemaining n D (insert i L)},
          f ⟨j, fullHistoryRemaining_insert_subset D L i j.property⟩ := by
  classical
  let e := fullHistoryRemainingCoordinateEquiv D L i hiD hiL
  let g : Option {j : Fin n //
      j ∈ fullHistoryRemaining n D (insert i L)} → T
    | none => f ⟨i, by simp [fullHistoryRemaining, hiD, hiL]⟩
    | some j =>
      f ⟨j, fullHistoryRemaining_insert_subset D L i j.property⟩
  have hcomp (j : {j : Fin n //
      j ∈ fullHistoryRemaining n D L}) :
      g (e j) = f j := by
    by_cases hj : (j : Fin n) = i
    · have hjsub :
          j = (⟨i, by simp [fullHistoryRemaining, hiD, hiL]⟩ :
            {j : Fin n // j ∈ fullHistoryRemaining n D L}) :=
        Subtype.ext hj
      subst j
      simp [e, g, fullHistoryRemainingCoordinateEquiv]
    · simp [e, g, fullHistoryRemainingCoordinateEquiv, hj]
  calc
    (∏ j : {j : Fin n // j ∈ fullHistoryRemaining n D L}, f j) =
      ∏ j : {j : Fin n // j ∈ fullHistoryRemaining n D L},
        g (e j) := by
          apply Finset.prod_congr rfl
          intro j _
          exact (hcomp j).symm
    _ = ∏ j : Option {j : Fin n //
        j ∈ fullHistoryRemaining n D (insert i L)}, g j :=
      e.prod_comp g
    _ = g none * ∏ j : {j : Fin n //
        j ∈ fullHistoryRemaining n D (insert i L)}, g (some j) :=
      Fintype.prod_option g
    _ = _ := rfl

section CoordinateWeights

variable {X Y A B : Type*}
variable [Fintype X] [Fintype Y] [Fintype A] [Fintype B]

theorem fullCoordinateOldHistory_weight
    (G : Game X Y A B) {n : ℕ}
    (D L : Finset (Fin n)) (i : Fin n)
    (hiD : i ∉ D) (hiL : i ∉ L)
    (h : FullCoordinateRevealHistory X Y n D L i) (y : Y) :
    fullHistoryWeight G (fullCoordinateOldHistory D L i h y) =
      fullCoordinateBaseWeight G D L i h * G.marginalY y := by
  classical
  have hold (j : {j : Fin n //
      j ∈ fullHistoryRemaining n D (insert i L)}) :
      (fullCoordinateOldHistory D L i h y).bobRemaining
        ⟨j, fullHistoryRemaining_insert_subset D L i j.property⟩ =
      h.bobRemaining j := by
    have hj : (j : Fin n) ≠ i := by
      intro he
      have hnot : (j : Fin n) ∉ insert i L :=
        (Finset.mem_sdiff.mp j.property).2
      apply hnot
      simp [he]
    simp [fullCoordinateOldHistory, hj]
  unfold fullHistoryWeight fullCoordinateBaseWeight
  change
    (∏ j : {j : Fin n // j ∈ D},
      G.questionWeight (h.aliceConditioned j) (h.bobConditioned j)) *
    (∏ j : {j : Fin n // j ∈ L},
      G.marginalX (h.aliceRevealed j)) *
    (∏ j : {j : Fin n // j ∈ fullHistoryRemaining n D L},
      G.marginalY
        ((fullCoordinateOldHistory D L i h y).bobRemaining j)) = _
  rw [fullHistoryRemaining_prod_split D L i hiD hiL]
  simp_rw [hold]
  simp [fullCoordinateOldHistory]
  ring

theorem fullCoordinateNewHistory_weight
    (G : Game X Y A B) {n : ℕ}
    (D L : Finset (Fin n)) (i : Fin n)
    (hiL : i ∉ L)
    (h : FullCoordinateRevealHistory X Y n D L i) (x : X) :
    fullHistoryWeight G (fullCoordinateNewHistory D L i h x) =
      fullCoordinateBaseWeight G D L i h * G.marginalX x := by
  classical
  have hnew (j : {j : Fin n // j ∈ L}) :
      (fullCoordinateNewHistory D L i h x).aliceRevealed
        ⟨j, Finset.mem_insert_of_mem j.property⟩ =
      h.aliceRevealed j := by
    have hj : (j : Fin n) ≠ i := by
      intro he
      exact hiL (he ▸ j.property)
    simp [fullCoordinateNewHistory, hj]
  unfold fullHistoryWeight fullCoordinateBaseWeight
  change
    (∏ j : {j : Fin n // j ∈ D},
      G.questionWeight (h.aliceConditioned j) (h.bobConditioned j)) *
    (∏ j : {j : Fin n // j ∈ insert i L},
      G.marginalX
        ((fullCoordinateNewHistory D L i h x).aliceRevealed j)) *
    (∏ j : {j : Fin n //
      j ∈ fullHistoryRemaining n D (insert i L)},
      G.marginalY (h.bobRemaining j)) = _
  rw [finsetSubtype_prod_insert L i hiL]
  simp_rw [hnew]
  simp [fullCoordinateNewHistory]
  ring

end CoordinateWeights

end

noncomputable section

open Matrix
open scoped BigOperators Kronecker ComplexOrder MatrixOrder

set_option backward.isDefEq.respectTransparency false
set_option maxHeartbeats 1200000

section CoordinateFilters

variable {X Y A B : Type*}
variable [Fintype X] [Fintype Y] [Fintype A] [Fintype B]

theorem fullCoordinateBobQuestion_eq
    {n : ℕ} (D L : Finset (Fin n)) (i : Fin n)
    (hiD : i ∉ D) (hiL : i ∉ L)
    (r : FullCoordinateRevealHistory X Y n D L i)
    (x : X) (y : Y)
    (hidden : {j : Fin n // j ∈ L} → Y) :
    fullHistoryBobQuestion
        (fullCoordinateNewHistory D L i r x)
        (fullCoordinateAssembleHiddenBob L i y hidden) =
      fullHistoryBobQuestion
        (fullCoordinateOldHistory D L i r y) hidden := by
  classical
  funext j
  by_cases hjD : j ∈ D
  · simp [fullHistoryBobQuestion, fullCoordinateOldHistory,
      fullCoordinateNewHistory, hjD]
  · by_cases hjL : j ∈ L
    · have hji : j ≠ i := by
        intro he
        exact hiL (he ▸ hjL)
      simp [fullHistoryBobQuestion,
        fullCoordinateAssembleHiddenBob,
                hjD, hjL, hji]
    · by_cases hji : j = i
      · subst j
        simp [fullHistoryBobQuestion,
          fullCoordinateAssembleHiddenBob,
          fullCoordinateOldHistory,           hiD, hiL]
      · simp [fullHistoryBobQuestion,
                    fullCoordinateOldHistory, fullCoordinateNewHistory,
          hjD, hjL, hji]

theorem fullCoordinateHiddenBobWeight_split
    (G : Game X Y A B) {n : ℕ}
    (D L : Finset (Fin n)) (i : Fin n)
    (hiL : i ∉ L)
    (r : FullCoordinateRevealHistory X Y n D L i)
    (x : X) (y : Y)
    (hidden : {j : Fin n // j ∈ L} → Y) :
    fullHistoryHiddenBobWeight G
        (fullCoordinateNewHistory D L i r x)
        (fullCoordinateAssembleHiddenBob L i y hidden) =
      G.conditionalYGivenX x y *
        fullHistoryHiddenBobWeight G
          (fullCoordinateOldHistory D L i r y) hidden := by
  classical
  unfold fullHistoryHiddenBobWeight
  rw [finsetSubtype_prod_insert L i hiL]
  simp only [fullCoordinateNewHistory,
    fullCoordinateAssembleHiddenBob, dite_true]
  congr 1
  apply Finset.prod_congr rfl
  intro j _
  have hj : (j : Fin n) ≠ i := by
    intro he
    exact hiL (he ▸ j.property)
  simp [fullCoordinateOldHistory,     hj]

theorem fullCoordinateBobFilter_conditional_mean
    (G : Game X Y A B) (n : ℕ) (S : Strategy (G.repeat n))
    (D L : Finset (Fin n)) (i : Fin n)
    (hiD : i ∉ D) (hiL : i ∉ L)
    (r : FullCoordinateRevealHistory X Y n D L i)
    (β : {j : Fin n // j ∈ D} → B)
    (x : X) :
    fullCoordinateBobMeanFilter G n S D L i r β x =
      conditionalBobAverage G
        (fullCoordinateBobQuestionFilter G n S D L i r β) x := by
  classical
  let e := fullCoordinateHiddenBobEquiv
    (Y := Y) L i hiL
  let f : Y × ({j : Fin n // j ∈ L} → Y) →
      Matrix S.Bob S.Bob ℂ := fun t =>
    (G.conditionalYGivenX x t.1 *
      fullHistoryHiddenBobWeight G
        (fullCoordinateOldHistory D L i r t.1) t.2) •
      conditionedBobEffect G n S D β
        (fullHistoryBobQuestion
          (fullCoordinateOldHistory D L i r t.1) t.2)
  unfold fullCoordinateBobMeanFilter
    fullCoordinateBobQuestionFilter
  calc
    fullHistoryBobFilter G n S D (insert i L)
      (fullCoordinateNewHistory D L i r x) β =
      ∑ hidden : ({j : Fin n // j ∈ insert i L} → Y),
        f (e hidden) := by
        unfold fullHistoryBobFilter
        apply Finset.sum_congr rfl
        intro hidden _
        have he := e.symm_apply_apply hidden
        change fullCoordinateAssembleHiddenBob
          L i (e hidden).1 (e hidden).2 = hidden at he
        conv_lhs => rw [← he]
        rw [fullCoordinateHiddenBobWeight_split
          G D L i hiL r x (e hidden).1 (e hidden).2]
        rw [fullCoordinateBobQuestion_eq
          D L i hiD hiL r x (e hidden).1 (e hidden).2]
    _ = ∑ t : Y × ({j : Fin n // j ∈ L} → Y), f t :=
      e.sum_comp f
    _ = conditionalBobAverage G
        (fun y => fullHistoryBobFilter G n S D L
          (fullCoordinateOldHistory D L i r y) β) x := by
      simp [f, conditionalBobAverage, fullHistoryBobFilter,
        Fintype.sum_prod_type, Finset.smul_sum, smul_smul]

end CoordinateFilters

section ConditionalJensen

variable {X Y A B : Type*}
variable [Fintype X] [Fintype Y] [Fintype A] [Fintype B]

theorem fullCoordinateAliceEntropyIncrement_eq
    (G : Game X Y A B) (n : ℕ) (S : Strategy (G.repeat n))
    (D L : Finset (Fin n)) (i : Fin n)
    (hiD : i ∉ D) (hiL : i ∉ L)
    (r : FullCoordinateRevealHistory X Y n D L i)
    (α : {j : Fin n // j ∈ D} → A)
    (β : {j : Fin n // j ∈ D} → B) :
    (∑ x : X, G.marginalX x *
      bornTracePairing S.state.matrix
        (cfc (fun z : ℝ => z * Real.log z)
          (fullCoordinateAliceQuestionFilter G n S D L i r α x))
        (fullCoordinateBobMeanFilter G n S D L i r β x)) -
    (∑ y : Y, G.marginalY y *
      bornTracePairing S.state.matrix
        (cfc (fun z : ℝ => z * Real.log z)
          (fullCoordinateAliceMeanFilter G n S D L i r α y))
        (fullCoordinateBobQuestionFilter G n S D L i r β y)) =
      fullCoordinateAliceEntropyIncrement G n S D L i r α β := by
  have h := alice_reveal_increment G
    (bornTracePairing S.state.matrix)
    (fullCoordinateAliceQuestionFilter G n S D L i r α)
    (fullCoordinateAliceMeanFilter G n S D L i r α)
    (fullCoordinateBobQuestionFilter G n S D L i r β)
    (fun F => cfc (fun z : ℝ => z * Real.log z) F)
  simp_rw [← fullCoordinateBobFilter_conditional_mean
    G n S D L i hiD hiL r β] at h
  exact h

end ConditionalJensen

end

noncomputable section

open Matrix
open scoped BigOperators Kronecker ComplexOrder MatrixOrder

set_option backward.isDefEq.respectTransparency false
set_option maxHeartbeats 1500000

variable {X Y A B : Type*}
variable [Fintype X] [Fintype Y] [Fintype A] [Fintype B]

theorem fullCoordinateOldHistory_winIndicator_eq
    (G : Game X Y A B) {n : ℕ}
    (D L : Finset (Fin n)) (i : Fin n)
    (r : FullCoordinateRevealHistory X Y n D L i)
    (y : Y)
    (α : {j : Fin n // j ∈ D} → A)
    (β : {j : Fin n // j ∈ D} → B) :
    fullHistoryWinIndicator G
      (fullCoordinateOldHistory D L i r y) α β =
      fullCoordinateBaseWinIndicator G D L i r α β := by
  classical
  simp [fullHistoryWinIndicator, fullCoordinateBaseWinIndicator,
    fullCoordinateOldHistory]

theorem fullCoordinateNewHistory_winIndicator_eq
    (G : Game X Y A B) {n : ℕ}
    (D L : Finset (Fin n)) (i : Fin n)
    (r : FullCoordinateRevealHistory X Y n D L i)
    (x : X)
    (α : {j : Fin n // j ∈ D} → A)
    (β : {j : Fin n // j ∈ D} → B) :
    fullHistoryWinIndicator G
      (fullCoordinateNewHistory D L i r x) α β =
      fullCoordinateBaseWinIndicator G D L i r α β := by
  classical
  simp [fullHistoryWinIndicator, fullCoordinateBaseWinIndicator,
    fullCoordinateNewHistory]

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

theorem fullCoordinateOldHistory_sum
    {T : Type*} [AddCommMonoid T]
    {n : ℕ} (D L : Finset (Fin n)) (i : Fin n)
    (hiD : i ∉ D) (hiL : i ∉ L)
    (f : FullSubsetHistory X Y n D L → T) :
    (∑ h : FullSubsetHistory X Y n D L, f h) =
      ∑ r : FullCoordinateRevealHistory X Y n D L i,
      ∑ y : Y, f (fullCoordinateOldHistory D L i r y) := by
  classical
  simpa [fullCoordinateOldHistoryEquiv, Fintype.sum_prod_type]
    using ((fullCoordinateOldHistoryEquiv
      (X := X) (Y := Y) D L i hiD hiL).symm.sum_comp f).symm

theorem fullCoordinateNewHistory_sum
    {T : Type*} [AddCommMonoid T]
    {n : ℕ} (D L : Finset (Fin n)) (i : Fin n)
    (hiL : i ∉ L)
    (f : FullSubsetHistory X Y n D (insert i L) → T) :
    (∑ h : FullSubsetHistory X Y n D (insert i L), f h) =
      ∑ r : FullCoordinateRevealHistory X Y n D L i,
      ∑ x : X, f (fullCoordinateNewHistory D L i r x) := by
  classical
  simpa [fullCoordinateNewHistoryEquiv, Fintype.sum_prod_type]
    using ((fullCoordinateNewHistoryEquiv
      (X := X) (Y := Y) D L i hiL).symm.sum_comp f).symm

theorem fullCoordinateWeightedOldSum
    (G : Game X Y A B) {n : ℕ}
    (D L : Finset (Fin n)) (i : Fin n)
    (hiD : i ∉ D) (hiL : i ∉ L)
    (value : (h : FullSubsetHistory X Y n D L) →
      ({j : Fin n // j ∈ D} → A) →
      ({j : Fin n // j ∈ D} → B) → ℝ) :
    (∑ h : FullSubsetHistory X Y n D L,
      ∑ α : {j : Fin n // j ∈ D} → A,
      ∑ β : {j : Fin n // j ∈ D} → B,
        fullHistoryWeight G h * fullHistoryWinIndicator G h α β *
          value h α β) =
      ∑ r : FullCoordinateRevealHistory X Y n D L i,
      ∑ α : {j : Fin n // j ∈ D} → A,
      ∑ β : {j : Fin n // j ∈ D} → B,
        fullCoordinateBaseWeight G D L i r *
          fullCoordinateBaseWinIndicator G D L i r α β *
          (∑ y : Y, G.marginalY y *
            value (fullCoordinateOldHistory D L i r y) α β) := by
  classical
  calc
    (∑ h : FullSubsetHistory X Y n D L,
      ∑ α : {j : Fin n // j ∈ D} → A,
      ∑ β : {j : Fin n // j ∈ D} → B,
        fullHistoryWeight G h * fullHistoryWinIndicator G h α β *
          value h α β) =
      ∑ r : FullCoordinateRevealHistory X Y n D L i,
      ∑ y : Y,
      ∑ α : {j : Fin n // j ∈ D} → A,
      ∑ β : {j : Fin n // j ∈ D} → B,
        fullHistoryWeight G (fullCoordinateOldHistory D L i r y) *
          fullHistoryWinIndicator G
            (fullCoordinateOldHistory D L i r y) α β *
          value (fullCoordinateOldHistory D L i r y) α β :=
      fullCoordinateOldHistory_sum D L i hiD hiL
        (fun h => ∑ α : {j : Fin n // j ∈ D} → A,
          ∑ β : {j : Fin n // j ∈ D} → B,
            fullHistoryWeight G h * fullHistoryWinIndicator G h α β *
              value h α β)
    _ = _ := by
      apply Finset.sum_congr rfl
      intro r _
      rw [fullCoordinate_three_sum_rotate]
      apply Finset.sum_congr rfl
      intro α _
      apply Finset.sum_congr rfl
      intro β _
      rw [Finset.mul_sum]
      apply Finset.sum_congr rfl
      intro y _
      rw [fullCoordinateOldHistory_weight G D L i hiD hiL r y,
        fullCoordinateOldHistory_winIndicator_eq G D L i r y α β]
      ring

theorem fullCoordinateWeightedNewSum
    (G : Game X Y A B) {n : ℕ}
    (D L : Finset (Fin n)) (i : Fin n)
    (hiL : i ∉ L)
    (value : (h : FullSubsetHistory X Y n D (insert i L)) →
      ({j : Fin n // j ∈ D} → A) →
      ({j : Fin n // j ∈ D} → B) → ℝ) :
    (∑ h : FullSubsetHistory X Y n D (insert i L),
      ∑ α : {j : Fin n // j ∈ D} → A,
      ∑ β : {j : Fin n // j ∈ D} → B,
        fullHistoryWeight G h * fullHistoryWinIndicator G h α β *
          value h α β) =
      ∑ r : FullCoordinateRevealHistory X Y n D L i,
      ∑ α : {j : Fin n // j ∈ D} → A,
      ∑ β : {j : Fin n // j ∈ D} → B,
        fullCoordinateBaseWeight G D L i r *
          fullCoordinateBaseWinIndicator G D L i r α β *
          (∑ x : X, G.marginalX x *
            value (fullCoordinateNewHistory D L i r x) α β) := by
  classical
  calc
    (∑ h : FullSubsetHistory X Y n D (insert i L),
      ∑ α : {j : Fin n // j ∈ D} → A,
      ∑ β : {j : Fin n // j ∈ D} → B,
        fullHistoryWeight G h * fullHistoryWinIndicator G h α β *
          value h α β) =
      ∑ r : FullCoordinateRevealHistory X Y n D L i,
      ∑ x : X,
      ∑ α : {j : Fin n // j ∈ D} → A,
      ∑ β : {j : Fin n // j ∈ D} → B,
        fullHistoryWeight G (fullCoordinateNewHistory D L i r x) *
          fullHistoryWinIndicator G
            (fullCoordinateNewHistory D L i r x) α β *
          value (fullCoordinateNewHistory D L i r x) α β :=
      fullCoordinateNewHistory_sum D L i hiL
        (fun h => ∑ α : {j : Fin n // j ∈ D} → A,
          ∑ β : {j : Fin n // j ∈ D} → B,
            fullHistoryWeight G h * fullHistoryWinIndicator G h α β *
              value h α β)
    _ = _ := by
      apply Finset.sum_congr rfl
      intro r _
      rw [fullCoordinate_three_sum_rotate]
      apply Finset.sum_congr rfl
      intro α _
      apply Finset.sum_congr rfl
      intro β _
      rw [Finset.mul_sum]
      apply Finset.sum_congr rfl
      intro x _
      rw [fullCoordinateNewHistory_weight G D L i hiL r x,
        fullCoordinateNewHistory_winIndicator_eq G D L i r x α β]
      ring

theorem fullHistoryAliceEntropyPotential_increment
    (G : Game X Y A B) (n : ℕ) (S : Strategy (G.repeat n))
    (D L : Finset (Fin n)) (i : Fin n)
    (hiD : i ∉ D) (hiL : i ∉ L) :
    fullHistoryAliceEntropyPotential G n S D (insert i L) -
        fullHistoryAliceEntropyPotential G n S D L =
      fullCoordinateAliceTotalEntropyIncrement G n S D L i := by
  classical
  unfold fullHistoryAliceEntropyPotential
    fullCoordinateAliceTotalEntropyIncrement
  rw [fullCoordinateWeightedNewSum G D L i hiL
    (fun h α β => bornTracePairing S.state.matrix
      (cfc (fun z : ℝ => z * Real.log z)
        (fullHistoryAliceFilter G n S D (insert i L) h α))
      (fullHistoryBobFilter G n S D (insert i L) h β))]
  rw [fullCoordinateWeightedOldSum G D L i hiD hiL
    (fun h α β => bornTracePairing S.state.matrix
      (cfc (fun z : ℝ => z * Real.log z)
        (fullHistoryAliceFilter G n S D L h α))
      (fullHistoryBobFilter G n S D L h β))]
  rw [← Finset.sum_sub_distrib]
  apply Finset.sum_congr rfl
  intro r _
  rw [← Finset.sum_sub_distrib]
  apply Finset.sum_congr rfl
  intro α _
  rw [← Finset.sum_sub_distrib]
  apply Finset.sum_congr rfl
  intro β _
  rw [← mul_sub]
  congr 1
  exact fullCoordinateAliceEntropyIncrement_eq
    G n S D L i hiD hiL r α β

end

noncomputable section

open scoped BigOperators

@[simp] theorem sourceRemainingPermutationRank_coordinate
    {n : ℕ} (D : Finset (Fin n))
    (π : SourceRemainingPermutation D)
    (k : Fin (Finset.univ \ D).card) :
    sourceRemainingPermutationRank D π
      (sourceRemainingPermutationCoordinateSubtype D π k) = k := by
  simp [sourceRemainingPermutationCoordinateSubtype]

theorem sourceRemainingPermutationCoordinate_not_mem
    {n : ℕ} (D : Finset (Fin n))
    (π : SourceRemainingPermutation D)
    (k : Fin (Finset.univ \ D).card) :
    sourceRemainingPermutationCoordinate D π k ∉ D := by
  have h := (sourceRemainingPermutationCoordinateSubtype D π k).property
  exact (Finset.mem_sdiff.mp h).2

theorem sourceRemainingPermutationPrefix_subset
    {n : ℕ} (D : Finset (Fin n))
    (π : SourceRemainingPermutation D)
    (k : Fin ((Finset.univ \ D).card + 1)) :
    sourceRemainingPermutationPrefix D π k ⊆ Finset.univ \ D := by
  classical
  intro i hi
  obtain ⟨j, _, hj⟩ := Finset.mem_image.mp hi
  simpa [hj] using j.property

theorem sourceRemainingPermutationCoordinate_not_mem_prefix
    {n : ℕ} (D : Finset (Fin n))
    (π : SourceRemainingPermutation D)
    (k : Fin (Finset.univ \ D).card) :
    sourceRemainingPermutationCoordinate D π k ∉
      sourceRemainingPermutationPrefix D π k.castSucc := by
  classical
  intro hmem
  obtain ⟨j, hj, hval⟩ := Finset.mem_image.mp hmem
  have heq : j = sourceRemainingPermutationCoordinateSubtype D π k := by
    apply Subtype.ext
    exact hval
  subst j
  have hlt := (Finset.mem_filter.mp hj).2
  simp at hlt

theorem sourceRemainingPermutationPrefixSubtype_succ
    {n : ℕ} (D : Finset (Fin n))
    (π : SourceRemainingPermutation D)
    (k : Fin (Finset.univ \ D).card) :
    sourceRemainingPermutationPrefixSubtype D π k.succ =
      insert (sourceRemainingPermutationCoordinateSubtype D π k)
        (sourceRemainingPermutationPrefixSubtype D π k.castSucc) := by
  classical
  ext i
  simp only [sourceRemainingPermutationPrefixSubtype,
    Finset.mem_filter, Finset.mem_univ, true_and, Finset.mem_insert]
  change
    (sourceRemainingPermutationRank D π i).val < k.val + 1 ↔
      i = sourceRemainingPermutationCoordinateSubtype D π k ∨
        (sourceRemainingPermutationRank D π i).val < k.val
  constructor
  · intro hi
    by_cases hlt : (sourceRemainingPermutationRank D π i).val < k.val
    · exact Or.inr hlt
    · left
      apply (sourceRemainingPermutationRank D π).injective
      have heq :
          sourceRemainingPermutationRank D π i = k := by
        apply Fin.ext
        omega
      simpa using heq
  · intro hi
    rcases hi with hi | hi
    · subst i
      simp
    · omega

theorem sourceRemainingPermutationPrefix_succ
    {n : ℕ} (D : Finset (Fin n))
    (π : SourceRemainingPermutation D)
    (k : Fin (Finset.univ \ D).card) :
    sourceRemainingPermutationPrefix D π k.succ =
      insert (sourceRemainingPermutationCoordinate D π k)
        (sourceRemainingPermutationPrefix D π k.castSucc) := by
  classical
  unfold sourceRemainingPermutationPrefix
  rw [sourceRemainingPermutationPrefixSubtype_succ,
    Finset.image_insert]
  rfl

@[simp] theorem sourceRemainingPermutationPrefix_zero
    {n : ℕ} (D : Finset (Fin n))
    (π : SourceRemainingPermutation D) :
    sourceRemainingPermutationPrefix D π 0 = ∅ := by
  classical
  simp [sourceRemainingPermutationPrefix,
    sourceRemainingPermutationPrefixSubtype]

@[simp] theorem sourceRemainingPermutationPrefix_last
    {n : ℕ} (D : Finset (Fin n))
    (π : SourceRemainingPermutation D) :
    sourceRemainingPermutationPrefix D π
        (Fin.last (Finset.univ \ D).card) =
      Finset.univ \ D := by
  classical
  ext i
  constructor
  · intro hi
    exact sourceRemainingPermutationPrefix_subset D π _ hi
  · intro hi
    apply Finset.mem_image.mpr
    refine ⟨(⟨i, hi⟩ : SourceRemainingCoordinate D), ?_, rfl⟩
    apply Finset.mem_filter.mpr
    exact ⟨Finset.mem_univ _,
      (sourceRemainingPermutationRank D π
        (⟨i, hi⟩ : SourceRemainingCoordinate D)).isLt⟩

theorem fin_sum_successive_sub
    {m : ℕ} (f : Fin (m + 1) → ℝ) :
    (∑ k : Fin m, (f k.succ - f k.castSucc)) =
      f (Fin.last m) - f 0 := by
  rw [Finset.sum_sub_distrib]
  have hfirst := Fin.sum_univ_succ f
  have hlast := Fin.sum_univ_castSucc f
  linarith

section ActualEntropyBudgets

variable {X Y A B : Type*}
variable [Fintype X] [Fintype Y] [Fintype A] [Fintype B]

theorem sourcePermutationAliceEntropyPotential_step
    (G : Game X Y A B) (n : ℕ) (S : Strategy (G.repeat n))
    (D : Finset (Fin n)) (π : SourceRemainingPermutation D)
    (k : Fin (Finset.univ \ D).card) :
    fullHistoryAliceEntropyPotential G n S D
        (sourceRemainingPermutationPrefix D π k.succ) -
      fullHistoryAliceEntropyPotential G n S D
        (sourceRemainingPermutationPrefix D π k.castSucc) =
      sourcePermutationAliceEntropyIncrement G n S D π k := by
  rw [sourceRemainingPermutationPrefix_succ]
  exact fullHistoryAliceEntropyPotential_increment G n S D
    (sourceRemainingPermutationPrefix D π k.castSucc)
    (sourceRemainingPermutationCoordinate D π k)
    (sourceRemainingPermutationCoordinate_not_mem D π k)
    (sourceRemainingPermutationCoordinate_not_mem_prefix D π k)

theorem sourcePermutationAliceEntropyIncrement_sum
    (G : Game X Y A B) (n : ℕ) (S : Strategy (G.repeat n))
    (D : Finset (Fin n)) (π : SourceRemainingPermutation D) :
    (∑ k : Fin (Finset.univ \ D).card,
      sourcePermutationAliceEntropyIncrement G n S D π k) =
      fullHistoryAliceEntropyPotential G n S D (Finset.univ \ D) -
        fullHistoryAliceEntropyPotential G n S D ∅ := by
  calc
    (∑ k : Fin (Finset.univ \ D).card,
      sourcePermutationAliceEntropyIncrement G n S D π k) =
      ∑ k : Fin (Finset.univ \ D).card,
        (fullHistoryAliceEntropyPotential G n S D
            (sourceRemainingPermutationPrefix D π k.succ) -
          fullHistoryAliceEntropyPotential G n S D
            (sourceRemainingPermutationPrefix D π k.castSucc)) := by
      apply Finset.sum_congr rfl
      intro k _
      exact (sourcePermutationAliceEntropyPotential_step G n S D π k).symm
    _ = fullHistoryAliceEntropyPotential G n S D
            (sourceRemainingPermutationPrefix D π
              (Fin.last (Finset.univ \ D).card)) -
          fullHistoryAliceEntropyPotential G n S D
            (sourceRemainingPermutationPrefix D π 0) :=
      fin_sum_successive_sub
        (fun k => fullHistoryAliceEntropyPotential G n S D
          (sourceRemainingPermutationPrefix D π k))
    _ = _ := by simp

theorem sourcePermutationAliceEntropyIncrement_sum_le
    (G : Game X Y A B) (n : ℕ) (S : Strategy (G.repeat n))
    (D : Finset (Fin n))
    (hp : 0 < (strategyEventLaw (G.repeat n) S).eventMass
      (FiniteEventLaw.winEvent (repeatedCoordinateWin G n) D))
    (π : SourceRemainingPermutation D) :
    (∑ k : Fin (Finset.univ \ D).card,
      sourcePermutationAliceEntropyIncrement G n S D π k) ≤
      (strategyEventLaw (G.repeat n) S).eventMass
          (FiniteEventLaw.winEvent (repeatedCoordinateWin G n) D) *
        Real.log
          (fullHistoryAnswerCount (A := A) (B := B) D /
            (strategyEventLaw (G.repeat n) S).eventMass
              (FiniteEventLaw.winEvent (repeatedCoordinateWin G n) D)) := by
  classical
  rw [sourcePermutationAliceEntropyIncrement_sum]
  have hlast := fullHistoryAliceEntropyPotential_nonpos
    G n S D (Finset.univ \ D)
  have hfirst := fullHistoryAliceEntropyPotential_lower_bound
    G n S D ∅ (Finset.empty_subset _) hp
  linarith

theorem sourceRemainingPermutation_card_pos
    {n : ℕ} (D : Finset (Fin n)) :
    0 < (Fintype.card (SourceRemainingPermutation D) : ℝ) := by
  classical
  exact_mod_cast (Fintype.card_pos_iff.mpr
    ⟨Equiv.refl (SourceRemainingCoordinate D)⟩ :
      0 < Fintype.card (SourceRemainingPermutation D))

theorem sourceUniformPermutationAverage_le
    {n : ℕ} (D : Finset (Fin n))
    (hm : 0 < (Finset.univ \ D).card)
    (f : SourceRemainingPermutation D →
      Fin (Finset.univ \ D).card → ℝ)
    {C : ℝ}
    (hC : ∀ π : SourceRemainingPermutation D,
      (∑ k : Fin (Finset.univ \ D).card, f π k) ≤ C) :
    sourceUniformPermutationAverage D f ≤
      C / ((Finset.univ \ D).card : ℝ) := by
  classical
  have hperm := sourceRemainingPermutation_card_pos D
  have hmreal : 0 < ((Finset.univ \ D).card : ℝ) := by
    exact_mod_cast hm
  have hden : 0 <
      (Fintype.card (SourceRemainingPermutation D) : ℝ) *
        ((Finset.univ \ D).card : ℝ) :=
    mul_pos hperm hmreal
  have hsum :
      (∑ π : SourceRemainingPermutation D,
        ∑ k : Fin (Finset.univ \ D).card, f π k) ≤
        (Fintype.card (SourceRemainingPermutation D) : ℝ) * C := by
    calc
      (∑ π : SourceRemainingPermutation D,
        ∑ k : Fin (Finset.univ \ D).card, f π k) ≤
          ∑ _π : SourceRemainingPermutation D, C := by
        apply Finset.sum_le_sum
        intro π _
        exact hC π
      _ = (Fintype.card (SourceRemainingPermutation D) : ℝ) * C := by
        simp
  unfold sourceUniformPermutationAverage
  calc
    (∑ π : SourceRemainingPermutation D,
        ∑ k : Fin (Finset.univ \ D).card, f π k) /
      ((Fintype.card (SourceRemainingPermutation D) : ℝ) *
        ((Finset.univ \ D).card : ℝ)) ≤
      ((Fintype.card (SourceRemainingPermutation D) : ℝ) * C) /
        ((Fintype.card (SourceRemainingPermutation D) : ℝ) *
          ((Finset.univ \ D).card : ℝ)) :=
        (div_le_div_iff_of_pos_right hden).mpr hsum
    _ = C / ((Finset.univ \ D).card : ℝ) :=
      mul_div_mul_left C ((Finset.univ \ D).card : ℝ) hperm.ne'

theorem sourceUniformPermutationAliceEntropyBudget
    (G : Game X Y A B) (n : ℕ) (S : Strategy (G.repeat n))
    (D : Finset (Fin n))
    (hm : 0 < (Finset.univ \ D).card)
    (hp : 0 < (strategyEventLaw (G.repeat n) S).eventMass
      (FiniteEventLaw.winEvent (repeatedCoordinateWin G n) D)) :
    sourceUniformPermutationAverage D
        (sourcePermutationAliceEntropyIncrement G n S D) ≤
      (strategyEventLaw (G.repeat n) S).eventMass
          (FiniteEventLaw.winEvent (repeatedCoordinateWin G n) D) *
        Real.log
          (fullHistoryAnswerCount (A := A) (B := B) D /
            (strategyEventLaw (G.repeat n) S).eventMass
              (FiniteEventLaw.winEvent (repeatedCoordinateWin G n) D)) /
          ((Finset.univ \ D).card : ℝ) := by
  apply sourceUniformPermutationAverage_le D hm
  intro π
  exact sourcePermutationAliceEntropyIncrement_sum_le G n S D hp π

end ActualEntropyBudgets

end

end QuantumParallelRepetition


open QuantumParallelRepetition
open scoped ComplexOrder Matrix BigOperators InnerProductSpace
open Complex Matrix Finset
open scoped BigOperators ComplexOrder Kronecker MatrixOrder
  Matrix.Norms.L2Operator InnerProductSpace
set_option backward.isDefEq.respectTransparency false
set_option maxHeartbeats 1200000
set_option maxRecDepth 2048
variable {X Y A B : Type*}
variable [Fintype X] [Fintype Y] [Fintype A] [Fintype B]

theorem solution
    (G : Game X Y A B) (n : ℕ) (S : Strategy (G.repeat n))
    (D : Finset (Fin n))
    (hm : 0 < (Finset.univ \ D).card)
    (hp : 0 < repeatedPostselectionMass G n S D) :
    sourceUniformPermutationAverage D
        (sourcePermutationAliceEntropyIncrement G n S D) ≤
      repeatedPostselectionMass G n S D *
        martingaleRate G n S D := by
  have hbudget := sourceUniformPermutationAliceEntropyBudget
    G n S D hm hp
  change sourceUniformPermutationAverage D
    (sourcePermutationAliceEntropyIncrement G n S D) ≤
    repeatedPostselectionMass G n S D *
      Real.log
        (fullHistoryAnswerCount (A := A) (B := B) D /
          repeatedPostselectionMass G n S D) /
        ((Finset.univ \ D).card : ℝ) at hbudget
  rw [martingale_log_cost_eq G n S D hp] at hbudget
  simpa [martingaleRate, mul_div_assoc] using hbudget
