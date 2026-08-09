import Definitions.Def_quantum_parallel_repetition_game
import Definitions.Def_qpr_core_16
import Theorems.Thm_QuantumParallelRepetition_exactAliceQuestionFilter_posSemidef
import Theorems.Thm_QuantumParallelRepetition_exactBobQuestionFilter_posSemidef
import Theorems.Thm_QuantumParallelRepetition_exactAliceCoordinateFilter_posSemidef
import Theorems.Thm_QuantumParallelRepetition_exactBobCoordinateFilter_posSemidef
import Theorems.Thm_QuantumParallelRepetition_exactAliceCoordinateFilter_sum
import Theorems.Thm_QuantumParallelRepetition_exactBobCoordinateFilter_sum
import Theorems.Thm_QuantumParallelRepetition_exactAlicePurificationFamily_posSemidef
import Theorems.Thm_QuantumParallelRepetition_exactBobPurificationFamily_posSemidef
import Theorems.Thm_QuantumParallelRepetition_exactAliceQuestionPurificationMatrix_gram
import Theorems.Thm_QuantumParallelRepetition_exactBobQuestionPurificationMatrix_gram
import Theorems.Thm_QuantumParallelRepetition_fullHistoryRemaining_insert_conditioned
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

open scoped ComplexOrder Matrix BigOperators InnerProductSpace
open Complex Matrix Finset

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

def exactAliceRefinedPOVM
    [DecidableEq A]
    (G : Game X Y A B) (n : ℕ) (S : Strategy (G.repeat n))
    (D : Finset (Fin n))
    (r : ExactHistoryFlag X Y A B D)
    (a₀ : A) (x : X) :
    POVM A (ExactAliceLiftIndex
      G n S D r.seed r.history r.aliceAnswer) :=
  purifiedRefinedPOVM
    (exactAliceQuestionFilter
      G n S D r.seed r.history r.aliceAnswer x)
    (exactAliceQuestionFilter_posSemidef
      G n S D r.seed r.history r.aliceAnswer x)
    (exactAlicePurificationMatrix
      G n S D r.seed r.history r.aliceAnswer (.inl x))
    (exactAliceQuestionPurificationMatrix_gram G n S D r x)
    (exactAliceCoordinateFilter
      G n S D r.seed r.history r.aliceAnswer x)
    (exactAliceCoordinateFilter_posSemidef
      G n S D r.seed r.history r.aliceAnswer x)
    (exactAliceCoordinateFilter_sum
      G n S D r.seed r.history r.aliceAnswer x)
    a₀

def exactBobRefinedPOVM
    [DecidableEq B]
    (G : Game X Y A B) (n : ℕ) (S : Strategy (G.repeat n))
    (D : Finset (Fin n))
    (r : ExactHistoryFlag X Y A B D)
    (b₀ : B) (y : Y) :
    POVM B (ExactBobLiftIndex
      G n S D r.seed r.history r.bobAnswer) :=
  purifiedRefinedPOVM
    (exactBobQuestionFilter
      G n S D r.seed r.history r.bobAnswer y)
    (exactBobQuestionFilter_posSemidef
      G n S D r.seed r.history r.bobAnswer y)
    (exactBobPurificationMatrix
      G n S D r.seed r.history r.bobAnswer (.inl y))
    (exactBobQuestionPurificationMatrix_gram G n S D r y)
    (exactBobCoordinateFilter
      G n S D r.seed r.history r.bobAnswer y)
    (exactBobCoordinateFilter_posSemidef
      G n S D r.seed r.history r.bobAnswer y)
    (exactBobCoordinateFilter_sum
      G n S D r.seed r.history r.bobAnswer y)
    b₀

abbrev ExactPaddedLocalIndex
    (G : Game X Y A B) (n : ℕ) (S : Strategy (G.repeat n))
    (D : Finset (Fin n))
    (r : ExactHistoryFlag X Y A B D) :=
  PUnit.{1} ⊕
    (ExactAliceLocalIndex G n S D r ⊕
      ExactBobLocalIndex G n S D r)

def exactPaddedVector
    (G : Game X Y A B) (n : ℕ) (S : Strategy (G.repeat n))
    (D : Finset (Fin n))
    (r : ExactHistoryFlag X Y A B D)
    (z : EuclideanSpace ℂ
      (ExactAliceLocalIndex G n S D r ×
        ExactBobLocalIndex G n S D r)) :
    EuclideanSpace ℂ
      (ExactPaddedLocalIndex G n S D r ×
        ExactPaddedLocalIndex G n S D r) :=
  toLp 2 fun q =>
    match q.1, q.2 with
    | .inr (.inl a), .inr (.inr b) => z (a, b)
    | _, _ => 0

def exactPaddedDefault
    (G : Game X Y A B) (n : ℕ) (S : Strategy (G.repeat n))
    (D : Finset (Fin n))
    (r : ExactHistoryFlag X Y A B D) :
    EuclideanSpace ℂ
      (ExactPaddedLocalIndex G n S D r ×
        ExactPaddedLocalIndex G n S D r) := by
  classical
  exact PiLp.single 2 (.inl PUnit.unit, .inl PUnit.unit) (1 : ℂ)

def exactPsi
    (G : Game X Y A B) (n : ℕ) (S : Strategy (G.repeat n))
    (D : Finset (Fin n))
    (r : ExactHistoryFlag X Y A B D)
    (x : X) (y : Y) :
    EuclideanSpace ℂ
      (ExactPaddedLocalIndex G n S D r ×
        ExactPaddedLocalIndex G n S D r) :=
  normalizeOrDefault (exactPaddedDefault G n S D r)
    (exactPaddedVector G n S D r
      (exactUnnormalizedPsi G n S D r x y))

def exactPhi
    (G : Game X Y A B) (n : ℕ) (S : Strategy (G.repeat n))
    (D : Finset (Fin n))
    (r : ExactHistoryFlag X Y A B D)
    (y : Y) :
    EuclideanSpace ℂ
      (ExactPaddedLocalIndex G n S D r ×
        ExactPaddedLocalIndex G n S D r) :=
  normalizeOrDefault (exactPaddedDefault G n S D r)
    (exactPaddedVector G n S D r
      (exactUnnormalizedPhi G n S D r y))

def exactGamma
    (G : Game X Y A B) (n : ℕ) (S : Strategy (G.repeat n))
    (D : Finset (Fin n))
    (r : ExactHistoryFlag X Y A B D)
    (x : X) :
    EuclideanSpace ℂ
      (ExactPaddedLocalIndex G n S D r ×
        ExactPaddedLocalIndex G n S D r) :=
  normalizeOrDefault (exactPaddedDefault G n S D r)
    (exactPaddedVector G n S D r
      (exactUnnormalizedGamma G n S D r x))

end

noncomputable section

open scoped BigOperators

set_option backward.isDefEq.respectTransparency false
set_option maxHeartbeats 1200000
set_option maxRecDepth 2048

attribute [local instance] Classical.propDecidable

variable {X Y A B : Type*}
variable [Fintype X] [Fintype Y] [Fintype A] [Fintype B]

def exactAliceQuestionCompatible
    {n : ℕ} (D : Finset (Fin n))
    (seed : ExactRemainingSeed D)
    (history : ExactRevealHistory X Y D seed)
    (x : X) (xs : Fin n → X) : Prop :=
  (∀ j : {j : Fin n // j ∈ D},
      xs j.val = history.aliceConditioned j) ∧
  (∀ j : {j : SourceRemainingCoordinate D //
      j ∈ exactLeft seed.coordinate seed.partition},
      xs j.val.val = history.aliceLeft j) ∧
  (∀ j : {j : SourceRemainingCoordinate D //
      j ∈ exactRightPrefix seed},
      xs j.val.val = history.aliceRightPrefix j) ∧
  xs seed.coordinate.val = x

def exactBobQuestionCompatible
    {n : ℕ} (D : Finset (Fin n))
    (seed : ExactRemainingSeed D)
    (history : ExactRevealHistory X Y D seed)
    (y : Y) (ys : Fin n → Y) : Prop :=
  (∀ j : {j : Fin n // j ∈ D},
      ys j.val = history.bobConditioned j) ∧
  (∀ j : {j : SourceRemainingCoordinate D //
      j ∈ exactRight seed.coordinate seed.partition},
      ys j.val.val = history.bobRight j) ∧
  (∀ j : {j : SourceRemainingCoordinate D //
      j ∈ exactLeftPrefix seed},
      ys j.val.val = history.bobLeftPrefix j) ∧
  ys seed.coordinate.val = y

def exactFiberQuestionWeight
    (G : Game X Y A B) (n : ℕ)
    (D : Finset (Fin n))
    (seed : ExactRemainingSeed D)
    (history : ExactRevealHistory X Y D seed)
    (x : X) (y : Y)
    (xs : Fin n → X) (ys : Fin n → Y) : ℝ :=
  if exactAliceQuestionCompatible
      D seed history x xs ∧
      exactBobQuestionCompatible
        D seed history y ys
  then (G.repeat n).questionWeight xs ys
  else 0

def exactFiberAliceMarginal
    (G : Game X Y A B) (n : ℕ)
    (D : Finset (Fin n))
    (seed : ExactRemainingSeed D)
    (history : ExactRevealHistory X Y D seed)
    (x : X) (y : Y) (xs : Fin n → X) : ℝ :=
  ∑ ys : Fin n → Y,
    exactFiberQuestionWeight G n D seed history x y xs ys

def exactFiberBobMarginal
    (G : Game X Y A B) (n : ℕ)
    (D : Finset (Fin n))
    (seed : ExactRemainingSeed D)
    (history : ExactRevealHistory X Y D seed)
    (x : X) (y : Y) (ys : Fin n → Y) : ℝ :=
  ∑ xs : Fin n → X,
    exactFiberQuestionWeight G n D seed history x y xs ys

def exactFiberQuestionMass
    (G : Game X Y A B) (n : ℕ)
    (D : Finset (Fin n))
    (seed : ExactRemainingSeed D)
    (history : ExactRevealHistory X Y D seed)
    (x : X) (y : Y) : ℝ :=
  ∑ xs : Fin n → X, ∑ ys : Fin n → Y,
    exactFiberQuestionWeight G n D seed history x y xs ys

end

noncomputable section

open scoped BigOperators

def HasExponentialBound (v : ℕ → ℝ) : Prop :=
  ∃ c : ℝ, 0 < c ∧ ∃ C : ℝ, 0 < C ∧
    ∀ n : ℕ, v n ≤ C * Real.exp (-c * (n : ℝ))

def HasSubexponentialWitness (v : ℕ → ℝ) : Prop :=
  ∀ c : ℝ, 0 < c → ∀ C : ℝ, 0 < C →
    ∃ n : ℕ, C * Real.exp (-c * (n : ℝ)) < v n

end

noncomputable section

open scoped BigOperators

variable {X Y A B : Type*}
variable [Fintype X] [Fintype Y] [Fintype A] [Fintype B]

def StandardQuantumParallelRepetition (G : Game X Y A B) : Prop :=
  entangledValue G < 1 →
    HasExponentialBound (repeatedEntangledValue G)

end

noncomputable section

open scoped BigOperators ComplexOrder Kronecker MatrixOrder
  Matrix.Norms.L2Operator InnerProductSpace

section ActualSharedFlag

variable {X Y A B dA dB J : Type}
variable [Fintype X] [Fintype Y] [Fintype A] [Fintype B]
variable [Fintype dA] [Fintype dB] [DecidableEq dA] [DecidableEq dB]
variable [Fintype J] [DecidableEq J]

def pureVerifierEffect
    (G : Game X Y A B)
    (z : EuclideanSpace ℂ (dA × dB)) (hz : ‖z‖ = 1)
    (PA : X → POVM A dA) (PB : Y → POVM B dB)
    (x : X) (y : Y) : Matrix (dA × dB) (dA × dB) ℂ :=
  (pureVectorStrategy G z hz PA PB).winningEffect x y

def flaggedQuestionWeight
    (G : Game X Y A B) (flagWeight : J → ℝ)
    (ω : J × (X × Y)) : ℝ :=
  flagWeight ω.1 * G.questionWeight ω.2.1 ω.2.2

end ActualSharedFlag

end

noncomputable section

open Filter
open scoped Topology

def universalErrorCeiling (K₀ : ℝ) : ℝ :=
  K₀ * (1 + (2 : ℝ) ^ (1 / 6 : ℝ)) + 2

def totalSamplingLoss (K₀ α η lam : ℝ) : ℝ :=
  5 * lam +
    2 * (K₀ * (α ^ (1 / 12 : ℝ) +
        (32 * η) ^ (1 / 12 : ℝ)) +
      Real.sqrt (8 * η) + universalErrorCeiling K₀ * lam)

def roundedWinningLowerBound (ε K₀ α η lam : ℝ) : ℝ :=
  1 - ε / 2 - totalSamplingLoss K₀ α η lam

end

noncomputable section

open Matrix
open scoped BigOperators Kronecker ComplexOrder MatrixOrder

set_option backward.isDefEq.respectTransparency false
set_option maxHeartbeats 1500000

def fullHistoryRemainingInsertedEquiv
    {n : ℕ} (D L : Finset (Fin n)) (i : Fin n) :
    {j : Fin n // j ∈ fullHistoryRemaining n (insert i D) L} ≃
      {j : Fin n // j ∈ fullHistoryRemaining n D (insert i L)} :=
  Equiv.subtypeEquivRight fun j => by
    rw [fullHistoryRemaining_insert_conditioned D L i]

def fullCoordinateAnswerExtension
    {T : Type*} {n : ℕ}
    (D : Finset (Fin n)) (i : Fin n)
    (α : {j : Fin n // j ∈ D} → T) (a : T) :
    {j : Fin n // j ∈ insert i D} → T := by
  classical
  intro j
  by_cases hj : (j : Fin n) = i
  · exact a
  · exact α ⟨j, (Finset.mem_insert.mp j.property).resolve_left hj⟩

def fullCoordinateAnswerExtensionEquiv
    {T : Type*} [Fintype T] {n : ℕ}
    (D : Finset (Fin n)) (i : Fin n) (hiD : i ∉ D) :
    (({j : Fin n // j ∈ D} → T) × T) ≃
      ({j : Fin n // j ∈ insert i D} → T) where
  toFun t := fullCoordinateAnswerExtension D i t.1 t.2
  invFun α :=
    (fun j => α ⟨j, Finset.mem_insert_of_mem j.property⟩,
      α ⟨i, Finset.mem_insert_self i D⟩)
  left_inv t := by
    rcases t with ⟨α, a⟩
    apply Prod.ext
    · funext j
      have hj : (j : Fin n) ≠ i := by
        intro he
        exact hiD (he ▸ j.property)
      simp [fullCoordinateAnswerExtension, hj]
    · simp [fullCoordinateAnswerExtension]
  right_inv α := by
    funext j
    by_cases hj : (j : Fin n) = i
    · have hjsub :
          j = (⟨i, Finset.mem_insert_self i D⟩ :
            {j : Fin n // j ∈ insert i D}) := Subtype.ext hj
      subst j
      simp [fullCoordinateAnswerExtension]
    · simp [fullCoordinateAnswerExtension, hj]

def fullCoordinateInsertedHistory
    {X Y : Type*} [Fintype X] [Fintype Y]
    {n : ℕ} (D L : Finset (Fin n)) (i : Fin n)
    (r : FullCoordinateRevealHistory X Y n D L i)
    (x : X) (y : Y) :
    FullSubsetHistory X Y n (insert i D) L := by
  classical
  refine ⟨
    fullCoordinateAnswerExtension D i r.aliceConditioned x,
    fullCoordinateAnswerExtension D i r.bobConditioned y,
    r.aliceRevealed,
    fun j => r.bobRemaining ⟨j, ?_⟩⟩
  rw [← fullHistoryRemaining_insert_conditioned D L i]
  exact j.property

def fullCoordinateBaseOfInsertedHistory
    {X Y : Type*} [Fintype X] [Fintype Y]
    {n : ℕ} (D L : Finset (Fin n)) (i : Fin n)
    (h : FullSubsetHistory X Y n (insert i D) L) :
    FullCoordinateRevealHistory X Y n D L i := by
  refine ⟨
    fun j => h.aliceConditioned
      ⟨j, Finset.mem_insert_of_mem j.property⟩,
    fun j => h.bobConditioned
      ⟨j, Finset.mem_insert_of_mem j.property⟩,
    h.aliceRevealed,
    fun j => h.bobRemaining ⟨j, ?_⟩⟩
  rw [fullHistoryRemaining_insert_conditioned D L i]
  exact j.property

def fullCoordinateInsertedHistoryEquiv
    {X Y : Type*} [Fintype X] [Fintype Y]
    {n : ℕ} (D L : Finset (Fin n)) (i : Fin n)
    (hiD : i ∉ D) :
    (FullCoordinateRevealHistory X Y n D L i × X × Y) ≃
      FullSubsetHistory X Y n (insert i D) L where
  toFun t := fullCoordinateInsertedHistory D L i t.1 t.2.1 t.2.2
  invFun h :=
    (fullCoordinateBaseOfInsertedHistory D L i h,
      h.aliceConditioned ⟨i, Finset.mem_insert_self i D⟩,
      h.bobConditioned ⟨i, Finset.mem_insert_self i D⟩)
  left_inv t := by
    rcases t with ⟨r, x, y⟩
    apply Prod.ext
    · apply FullCoordinateRevealHistory.ext
      · funext j
        have hj : (j : Fin n) ≠ i := by
          intro he
          exact hiD (he ▸ j.property)
        simp [fullCoordinateBaseOfInsertedHistory,
          fullCoordinateInsertedHistory,
          fullCoordinateAnswerExtension, hj]
      · funext j
        have hj : (j : Fin n) ≠ i := by
          intro he
          exact hiD (he ▸ j.property)
        simp [fullCoordinateBaseOfInsertedHistory,
          fullCoordinateInsertedHistory,
          fullCoordinateAnswerExtension, hj]
      · rfl
      · rfl
    · apply Prod.ext <;>
        simp [fullCoordinateInsertedHistory,
          fullCoordinateAnswerExtension]
  right_inv h := by
    apply FullSubsetHistory.ext
    · funext j
      by_cases hj : (j : Fin n) = i
      · have hjsub :
            j = (⟨i, Finset.mem_insert_self i D⟩ :
              {j : Fin n // j ∈ insert i D}) := Subtype.ext hj
        subst j
        simp [fullCoordinateInsertedHistory,
          fullCoordinateBaseOfInsertedHistory,
          fullCoordinateAnswerExtension]
      · simp [fullCoordinateInsertedHistory,
          fullCoordinateBaseOfInsertedHistory,
          fullCoordinateAnswerExtension, hj]
    · funext j
      by_cases hj : (j : Fin n) = i
      · have hjsub :
            j = (⟨i, Finset.mem_insert_self i D⟩ :
              {j : Fin n // j ∈ insert i D}) := Subtype.ext hj
        subst j
        simp [fullCoordinateInsertedHistory,
          fullCoordinateBaseOfInsertedHistory,
          fullCoordinateAnswerExtension]
      · simp [fullCoordinateInsertedHistory,
          fullCoordinateBaseOfInsertedHistory,
          fullCoordinateAnswerExtension, hj]
    · rfl
    · rfl

end

noncomputable section

open scoped BigOperators ComplexConjugate ComplexOrder Kronecker MatrixOrder
  Matrix.Norms.L2Operator InnerProductSpace

def normalizedPureVector
    {d : Type*} [Fintype d]
    (z : EuclideanSpace ℂ d) : EuclideanSpace ℂ d :=
  ((‖z‖⁻¹ : ℝ) : ℂ) • z

end

noncomputable section

open scoped BigOperators ComplexOrder Kronecker MatrixOrder
  Matrix.Norms.L2Operator InnerProductSpace

variable {X Y A B : Type*}
variable [Fintype X] [Fintype Y] [Fintype A] [Fintype B]

structure SourceHistoryFlag
    (X Y A B : Type*)
    [Fintype X] [Fintype Y] [Fintype A] [Fintype B]
    {n : ℕ} (D : Finset (Fin n)) where
  permutation : SourceRemainingPermutation D
  position : Fin (Finset.univ \ D).card
  history : FullCoordinateRevealHistory X Y n D
    (sourceRemainingPermutationPrefix D permutation position.castSucc)
    (sourceRemainingPermutationCoordinate D permutation position)
  aliceAnswer : {i : Fin n // i ∈ D} → A
  bobAnswer : {i : Fin n // i ∈ D} → B

abbrev SourceHistoryFlagTuple
    (X Y A B : Type*)
    [Fintype X] [Fintype Y] [Fintype A] [Fintype B]
    {n : ℕ} (D : Finset (Fin n)) :=
  Σ π : SourceRemainingPermutation D,
    Σ k : Fin (Finset.univ \ D).card,
      FullCoordinateRevealHistory X Y n D
        (sourceRemainingPermutationPrefix D π k.castSucc)
        (sourceRemainingPermutationCoordinate D π k) ×
      ({i : Fin n // i ∈ D} → A) ×
      ({i : Fin n // i ∈ D} → B)

def sourceHistoryFlagEquiv
    {n : ℕ} (D : Finset (Fin n)) :
    SourceHistoryFlag X Y A B D ≃ SourceHistoryFlagTuple X Y A B D where
  toFun r := ⟨r.permutation, r.position,
    r.history, r.aliceAnswer, r.bobAnswer⟩
  invFun t := ⟨t.1, t.2.1,
    t.2.2.1, t.2.2.2.1, t.2.2.2.2⟩
  left_inv r := by cases r; rfl
  right_inv t := by
    rcases t with ⟨π, k, r, α, β⟩
    rfl

noncomputable instance sourceHistoryFlagFintype
    {n : ℕ} (D : Finset (Fin n)) :
    Fintype (SourceHistoryFlag X Y A B D) := by
  classical
  exact Fintype.ofEquiv (SourceHistoryFlagTuple X Y A B D)
    (sourceHistoryFlagEquiv (X := X) (Y := Y)
      (A := A) (B := B) D).symm

def sourceHistoryPermutationPositionWeight
    {n : ℕ} (D : Finset (Fin n)) : ℝ :=
  1 / ((Fintype.card (SourceRemainingPermutation D) : ℝ) *
    ((Finset.univ \ D).card : ℝ))

def sourceHistoryRaw
    (G : Game X Y A B) (n : ℕ)
    (D : Finset (Fin n))
    (r : SourceHistoryFlag X Y A B D) : ℝ :=
  sourceHistoryPermutationPositionWeight D *
    fullCoordinateBaseWeight G D
      (sourceRemainingPermutationPrefix D
        r.permutation r.position.castSucc)
      (sourceRemainingPermutationCoordinate D
        r.permutation r.position)
      r.history *
    fullCoordinateBaseWinIndicator G D
      (sourceRemainingPermutationPrefix D
        r.permutation r.position.castSucc)
      (sourceRemainingPermutationCoordinate D
        r.permutation r.position)
      r.history r.aliceAnswer r.bobAnswer

end

noncomputable section

open scoped BigOperators

section FiniteSamples

variable {ι Ω : Type*} [Fintype ι] [DecidableEq ι] [Fintype Ω]

def postselectionMass
    (law : FiniteEventLaw Ω) (wins : ι → Ω → Bool)
    (C : Finset ι) : ℝ :=
  law.eventMass (FiniteEventLaw.winEvent wins C)

def conditionalCoordinateFailure
    (law : FiniteEventLaw Ω) (wins : ι → Ω → Bool)
    (C : Finset ι) (i : ι) : ℝ :=
  FiniteEventLaw.failureMass law wins C i /
    postselectionMass law wins C

def uniformRemainingFailure
    (law : FiniteEventLaw Ω) (wins : ι → Ω → Bool)
    (C : Finset ι) : ℝ :=
  (∑ i ∈ Finset.univ \ C,
    conditionalCoordinateFailure law wins C i) /
    ((Finset.univ \ C).card : ℝ)

end FiniteSamples

section ActualRepeatedStrategy

variable {X Y A B : Type*}
variable [Fintype X] [Fintype Y] [Fintype A] [Fintype B]

def repeatedPostselectionMass
    (G : Game X Y A B) (n : ℕ)
    (S : Strategy (G.repeat n)) (C : Finset (Fin n)) : ℝ :=
  postselectionMass (strategyEventLaw (G.repeat n) S)
    (repeatedCoordinateWin G n) C

end ActualRepeatedStrategy

end

noncomputable section

open scoped BigOperators ComplexOrder Kronecker MatrixOrder
  Matrix.Norms.L2Operator InnerProductSpace

set_option backward.isDefEq.respectTransparency false
set_option maxHeartbeats 1200000
set_option maxRecDepth 2048

section ActualFilters

variable {X Y A B : Type*}
variable [Fintype X] [Fintype Y] [Fintype A] [Fintype B]

def postselectionLogCost
    (G : Game X Y A B) (n : ℕ) (S : Strategy (G.repeat n))
    (D : Finset (Fin n)) : ℝ :=
  Real.log (1 / repeatedPostselectionMass G n S D)

def answerLogCost
    {A B : Type*} [Fintype A] [Fintype B]
    {n : ℕ} (D : Finset (Fin n)) : ℝ :=
  (D.card : ℝ) *
    Real.log ((Fintype.card A : ℝ) * (Fintype.card B : ℝ))

def martingaleRate
    (G : Game X Y A B) (n : ℕ) (S : Strategy (G.repeat n))
    (D : Finset (Fin n)) : ℝ :=
  (postselectionLogCost G n S D +
      answerLogCost (A := A) (B := B) D) /
    ((Finset.univ \ D).card : ℝ)

end ActualFilters

end

noncomputable section

open Matrix
open scoped BigOperators Kronecker ComplexOrder MatrixOrder
  Matrix.Norms.L2Operator InnerProductSpace

set_option backward.isDefEq.respectTransparency false
set_option maxHeartbeats 1800000

variable {X Y A B : Type*}
variable [Fintype X] [Fintype Y] [Fintype A] [Fintype B]

def fullCoordinateInsertedHiddenAliceEquiv
    {X : Type*} {n : ℕ}
    (D L : Finset (Fin n)) (i : Fin n) :
    ({j : Fin n // j ∈ fullHistoryRemaining n (insert i D) L} → X) ≃
      ({j : Fin n // j ∈ fullHistoryRemaining n D (insert i L)} → X) where
  toFun hidden j :=
    hidden ((fullHistoryRemainingInsertedEquiv D L i).symm j)
  invFun hidden j := hidden (fullHistoryRemainingInsertedEquiv D L i j)
  left_inv hidden := by
    funext j
    simp
  right_inv hidden := by
    funext j
    simp

def fullCoordinateAcceptedPostselectedMass
    (G : Game X Y A B) (n : ℕ) (S : Strategy (G.repeat n))
    (D L : Finset (Fin n)) (i : Fin n) : ℝ :=
  ∑ r : FullCoordinateRevealHistory X Y n D L i,
  ∑ α : {j : Fin n // j ∈ D} → A,
  ∑ β : {j : Fin n // j ∈ D} → B,
    fullCoordinateBaseWeight G D L i r *
      fullCoordinateBaseWinIndicator G D L i r α β *
      (∑ x : X, ∑ y : Y, G.questionWeight x y *
        (∑ a : A, ∑ b : B,
          (if G.predicate x y a b = true then 1 else 0) *
            bornTracePairing S.state.matrix
              (fullCoordinateAliceRefinementEffect
                G n S D L i r α x a)
              (fullCoordinateBobRefinementEffect
                G n S D L i r β y b)))

end

noncomputable section

open Matrix
open scoped BigOperators Kronecker ComplexOrder MatrixOrder
  Matrix.Norms.L2Operator InnerProductSpace

set_option backward.isDefEq.respectTransparency false
set_option maxHeartbeats 1800000
set_option maxRecDepth 2048

attribute [local instance] Classical.propDecidable

variable {X Y A B : Type*}
variable [Fintype X] [Fintype Y] [Fintype A] [Fintype B]

def sourceHistoryAcceptedQuestionMass
    (G : Game X Y A B) (n : ℕ)
    (S : Strategy (G.repeat n)) (D : Finset (Fin n))
    (r : SourceHistoryFlag X Y A B D)
    (x : X) (y : Y) : ℝ :=
  ∑ a : A, ∑ b : B,
    (if G.predicate x y a b = true then 1 else 0) *
      bornTracePairing S.state.matrix
        (fullCoordinateAliceRefinementEffect G n S D
          (sourceRemainingPermutationPrefix D
            r.permutation r.position.castSucc)
          (sourceRemainingPermutationCoordinate D
            r.permutation r.position)
          r.history r.aliceAnswer x a)
        (fullCoordinateBobRefinementEffect G n S D
          (sourceRemainingPermutationPrefix D
            r.permutation r.position.castSucc)
          (sourceRemainingPermutationCoordinate D
            r.permutation r.position)
          r.history r.bobAnswer y b)

def sourceHistoryAcceptedMass
    (G : Game X Y A B) (n : ℕ)
    (S : Strategy (G.repeat n)) (D : Finset (Fin n)) : ℝ :=
  ∑ r : SourceHistoryFlag X Y A B D,
    sourceHistoryRaw G n D r *
      (∑ x : X, ∑ y : Y, G.questionWeight x y *
        sourceHistoryAcceptedQuestionMass G n S D r x y)

end

noncomputable section

open WithLp
open scoped BigOperators ComplexOrder Kronecker MatrixOrder
  Matrix.Norms.L2Operator InnerProductSpace

set_option backward.isDefEq.respectTransparency false
set_option maxHeartbeats 1600000
set_option maxRecDepth 2048

section TaggedTensorBlocks

variable {R : Type*} [Fintype R]
variable {ι : R → Type*} [∀ r, Fintype (ι r)]

def taggedTensorVector
    (r : R) (z : EuclideanSpace ℂ (ι r × ι r)) :
    EuclideanSpace ℂ
      ((PUnit.{1} ⊕ (Σ r : R, ι r)) ×
        (PUnit.{1} ⊕ (Σ r : R, ι r))) := by
  classical
  exact toLp 2 fun q =>
    match q.1, q.2 with
    | .inr ⟨rA, a⟩, .inr ⟨rB, b⟩ =>
        if hA : rA = r then
          if hB : rB = r then
            z (hA ▸ a, hB ▸ b)
          else 0
        else 0
    | _, _ => 0

end TaggedTensorBlocks

variable {X Y A B : Type*}
variable [Fintype X] [Fintype Y] [Fintype A] [Fintype B]

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

def weightedConditionalJoint
    {κ ι : Type*} [Fintype κ] [Fintype ι]
    (weight : κ → ℝ) (conditional : κ → ι → ℝ) :
    κ × ι → ℝ :=
  fun t => weight t.1 * conditional t.1 t.2

abbrev LocalQuestionContext
    (X Y : Type*) [Fintype X] [Fintype Y]
    {n : ℕ} (D : Finset (Fin n)) :=
  SourceRemainingCoordinate D × (X × Y)

def localQuestionWeight
    (G : Game X Y A B) (n : ℕ) (D : Finset (Fin n))
    (c : LocalQuestionContext X Y D) : ℝ :=
  G.questionWeight c.2.1 c.2.2 /
    (Fintype.card (SourceRemainingCoordinate D) : ℝ)

def conditionedEventDistribution
    {Ω : Type*} [Fintype Ω]
    (law : FiniteEventLaw Ω) (event : Finset Ω) : Ω → ℝ :=
  fun ω => if ω ∈ event then law.weight ω / law.eventMass event else 0

def repeatedConditionedOutcomeLaw
    (G : Game X Y A B) (n : ℕ) (S : Strategy (G.repeat n))
    (D : Finset (Fin n)) :
    StrategyOutcome
      (Fin n → X) (Fin n → Y)
      (Fin n → A) (Fin n → B) → ℝ :=
  conditionedEventDistribution
    (strategyEventLaw (G.repeat n) S)
    (FiniteEventLaw.winEvent (repeatedCoordinateWin G n) D)

end

noncomputable section

open scoped BigOperators

open QuantumParallelRepetition.Pinsker
open QuantumParallelRepetition.ClassicalInformation

attribute [local instance] Classical.propDecidable

def finiteUniformWeight (Z : Type*) [Fintype Z] : ℝ :=
  1 / (Fintype.card Z : ℝ)

def uniformFlagReference
    {Ω Z : Type*} [Fintype Ω] [Fintype Z]
    (prior : Ω → ℝ) : Ω × Z → ℝ :=
  fun t => prior t.1 * finiteUniformWeight Z

def finitePrefixMask
    {Ω Y : Type*} {h : ℕ} (base : Y)
    (k : Fin (h + 1)) :
    (Ω × (Fin h → Y)) → (Ω × (Fin h → Y)) :=
  fun t => (t.1, fun j => if j.val < k.val then t.2 j else base)

def finitePrefixRelativeEntropy
    {Ω Y : Type*} [Fintype Ω] [Fintype Y] {h : ℕ}
    (joint prior : Ω × (Fin h → Y) → ℝ)
    (base : Y) (k : Fin (h + 1)) : ℝ :=
  finiteRelativeEntropy
    (groupedMass (finitePrefixMask base k) joint)
    (groupedMass (finitePrefixMask base k) prior)

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

abbrev ConditionedAnswerFlag
    (A B : Type*) [Fintype A] [Fintype B]
    {n : ℕ} (D : Finset (Fin n)) :=
  ({i : Fin n // i ∈ D} → A) ×
    ({i : Fin n // i ∈ D} → B)

def repeatedConditionedAnswerFlag
    (G : Game X Y A B) (n : ℕ) (_S : Strategy (G.repeat n))
    (D : Finset (Fin n))
    (ω : StrategyOutcome
      (Fin n → X) (Fin n → Y)
      (Fin n → A) (Fin n → B)) :
    ConditionedAnswerFlag A B D :=
  (fun i => ω.2.2.1 i, fun i => ω.2.2.2 i)

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

abbrev ExactOutcome (X Y A B : Type*) (n : ℕ) :=
  StrategyOutcome (Fin n → X) (Fin n → Y)
    (Fin n → A) (Fin n → B)

abbrev ExactJointOutcome
    (X Y A B : Type*) {n : ℕ} (D : Finset (Fin n)) :=
  ExactRemainingSeed D × ExactOutcome X Y A B n

def exactPostselectedJointLaw
    (G : Game X Y A B) (n : ℕ) (S : Strategy (G.repeat n))
    (D : Finset (Fin n))
    (q : ExactJointOutcome X Y A B D) : ℝ :=
  exactSeedWeight q.1 *
    repeatedConditionedOutcomeLaw G n S D q.2

def exactSourcePushforward
    {K : Type*} [Fintype K]
    (G : Game X Y A B) (n : ℕ) (S : Strategy (G.repeat n))
    (D : Finset (Fin n))
    (projection : ExactJointOutcome X Y A B D → K) :
    K → ℝ :=
  groupedMass projection (exactPostselectedJointLaw G n S D)

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

abbrev ExactLocallySampleableTuple
    (X Y A B : Type*)
    [Fintype X] [Fintype Y] [Fintype A] [Fintype B]
    {n : ℕ} (D : Finset (Fin n)) :=
  SourceRemainingCoordinate D ×
    (X × (Y × ExactHistoryFlag X Y A B D))

def exactHistoryCode
    {n : ℕ} (D : Finset (Fin n))
    (q : ExactJointOutcome X Y A B D) :
    ExactHistoryFlag X Y A B D where
  seed := q.1
  history := exactRevealCode D q.1 (q.2.1, q.2.2.1)
  aliceAnswer := fun j => q.2.2.2.1 j.val
  bobAnswer := fun j => q.2.2.2.2 j.val

def exactLocallySampleableCode
    {n : ℕ} (D : Finset (Fin n))
    (q : ExactJointOutcome X Y A B D) :
    ExactLocallySampleableTuple X Y A B D :=
  (q.1.coordinate,
    q.2.1 q.1.coordinate.val,
    q.2.2.1 q.1.coordinate.val,
    exactHistoryCode D q)

def exactLocallySampleableLaw
    (G : Game X Y A B) (n : ℕ) (S : Strategy (G.repeat n))
    (D : Finset (Fin n)) :
    ExactLocallySampleableTuple X Y A B D → ℝ :=
  exactSourcePushforward G n S D
    (exactLocallySampleableCode D)

def exactAliceLocalMass
    {n : ℕ} (D : Finset (Fin n))
    (Q : ExactLocallySampleableTuple X Y A B D → ℝ)
    (i : SourceRemainingCoordinate D) (x : X) : ℝ :=
  ∑ r : ExactHistoryFlag X Y A B D,
    ∑ y : Y, Q (i, x, y, r)

def exactBobLocalMass
    {n : ℕ} (D : Finset (Fin n))
    (Q : ExactLocallySampleableTuple X Y A B D → ℝ)
    (i : SourceRemainingCoordinate D) (y : Y) : ℝ :=
  ∑ r : ExactHistoryFlag X Y A B D,
    ∑ x : X, Q (i, x, y, r)

def exactAliceLocalConditional
    {n : ℕ} (D : Finset (Fin n))
    (base : ExactHistoryFlag X Y A B D)
    (Q : ExactLocallySampleableTuple X Y A B D → ℝ)
    (i : SourceRemainingCoordinate D) (x : X)
    (r : ExactHistoryFlag X Y A B D) : ℝ :=
  if exactAliceLocalMass D Q i x = 0 then
    if r = base then 1 else 0
  else
    (∑ y : Y, Q (i, x, y, r)) /
      exactAliceLocalMass D Q i x

def exactBobLocalConditional
    {n : ℕ} (D : Finset (Fin n))
    (base : ExactHistoryFlag X Y A B D)
    (Q : ExactLocallySampleableTuple X Y A B D → ℝ)
    (i : SourceRemainingCoordinate D) (y : Y)
    (r : ExactHistoryFlag X Y A B D) : ℝ :=
  if exactBobLocalMass D Q i y = 0 then
    if r = base then 1 else 0
  else
    (∑ x : X, Q (i, x, y, r)) /
      exactBobLocalMass D Q i y

def exactLocallySampleableJA
    (G : Game X Y A B) (n : ℕ) (S : Strategy (G.repeat n))
    (D : Finset (Fin n))
    (base : ExactHistoryFlag X Y A B D)
    (t : ExactLocallySampleableTuple X Y A B D) : ℝ :=
  G.questionWeight t.2.1 t.2.2.1 *
    exactAliceLocalConditional D base
      (exactLocallySampleableLaw G n S D)
      t.1 t.2.1 t.2.2.2 /
    (Fintype.card (SourceRemainingCoordinate D) : ℝ)

def exactLocallySampleableJB
    (G : Game X Y A B) (n : ℕ) (S : Strategy (G.repeat n))
    (D : Finset (Fin n))
    (base : ExactHistoryFlag X Y A B D)
    (t : ExactLocallySampleableTuple X Y A B D) : ℝ :=
  G.questionWeight t.2.1 t.2.2.1 *
    exactBobLocalConditional D base
      (exactLocallySampleableLaw G n S D)
      t.1 t.2.2.1 t.2.2.2 /
    (Fintype.card (SourceRemainingCoordinate D) : ℝ)

abbrev ExactLocalSamplerIndex
    (X Y : Type*) [Fintype X] [Fintype Y]
    {n : ℕ} (D : Finset (Fin n)) :=
  (SourceRemainingCoordinate D × X) ⊕
    (SourceRemainingCoordinate D × Y)

def exactLocalConditionalFamily
    {n : ℕ} (D : Finset (Fin n))
    (base : ExactHistoryFlag X Y A B D)
    (Q : ExactLocallySampleableTuple X Y A B D → ℝ)
    (k : ExactLocalSamplerIndex X Y D)
    (r : ExactHistoryFlag X Y A B D) : ℝ :=
  match k with
  | .inl (i, x) => exactAliceLocalConditional D base Q i x r
  | .inr (i, y) => exactBobLocalConditional D base Q i y r

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

def exactConditionalQuestionWeight
    (G : Game X Y A B) (n : ℕ)
    (D : Finset (Fin n))
    (seed : ExactRemainingSeed D)
    (history : ExactRevealHistory X Y D seed)
    (x : X) (y : Y)
    (xs : Fin n → X) (ys : Fin n → Y) : ℝ :=
  exactFiberQuestionWeight
      G n D seed history x y xs ys /
    exactFiberQuestionMass G n D seed history x y

def exactJointAliceQuestionFilter
    (G : Game X Y A B) (n : ℕ) (S : Strategy (G.repeat n))
    (D : Finset (Fin n))
    (seed : ExactRemainingSeed D)
    (history : ExactRevealHistory X Y D seed)
    (answer : {j : Fin n // j ∈ D} → A)
    (x : X) (y : Y) : Matrix S.Alice S.Alice ℂ :=
  ∑ xs : Fin n → X,
    (exactFiberAliceMarginal
      G n D seed history x y xs /
      exactFiberQuestionMass G n D seed history x y) •
    conditionedAliceEffect G n S D answer xs

def exactJointBobQuestionFilter
    (G : Game X Y A B) (n : ℕ) (S : Strategy (G.repeat n))
    (D : Finset (Fin n))
    (seed : ExactRemainingSeed D)
    (history : ExactRevealHistory X Y D seed)
    (answer : {j : Fin n // j ∈ D} → B)
    (x : X) (y : Y) : Matrix S.Bob S.Bob ℂ :=
  ∑ ys : Fin n → Y,
    (exactFiberBobMarginal
      G n D seed history x y ys /
      exactFiberQuestionMass G n D seed history x y) •
    conditionedBobEffect G n S D answer ys

def exactJointAliceCoordinateFilter
    (G : Game X Y A B) (n : ℕ) (S : Strategy (G.repeat n))
    (D : Finset (Fin n))
    (seed : ExactRemainingSeed D)
    (history : ExactRevealHistory X Y D seed)
    (answer : {j : Fin n // j ∈ D} → A)
    (x : X) (y : Y) (a : A) : Matrix S.Alice S.Alice ℂ :=
  ∑ xs : Fin n → X,
    (exactFiberAliceMarginal
      G n D seed history x y xs /
      exactFiberQuestionMass G n D seed history x y) •
    conditionedAliceCoordinateEffect
      G n S D answer xs seed.coordinate.val a

def exactJointBobCoordinateFilter
    (G : Game X Y A B) (n : ℕ) (S : Strategy (G.repeat n))
    (D : Finset (Fin n))
    (seed : ExactRemainingSeed D)
    (history : ExactRevealHistory X Y D seed)
    (answer : {j : Fin n // j ∈ D} → B)
    (x : X) (y : Y) (b : B) : Matrix S.Bob S.Bob ℂ :=
  ∑ ys : Fin n → Y,
    (exactFiberBobMarginal
      G n D seed history x y ys /
      exactFiberQuestionMass G n D seed history x y) •
    conditionedBobCoordinateEffect
      G n S D answer ys seed.coordinate.val b

def exactJointConditionalWinningMass
    (G : Game X Y A B) (n : ℕ) (S : Strategy (G.repeat n))
    (D : Finset (Fin n))
    (seed : ExactRemainingSeed D)
    (history : ExactRevealHistory X Y D seed)
    (aliceAnswer : {j : Fin n // j ∈ D} → A)
    (bobAnswer : {j : Fin n // j ∈ D} → B)
    (x : X) (y : Y) : ℝ :=
  ∑ a : A, ∑ b : B,
    if G.predicate x y a b = true then
      bornTracePairing S.state.matrix
        (exactJointAliceCoordinateFilter
          G n S D seed history aliceAnswer x y a)
        (exactJointBobCoordinateFilter
          G n S D seed history bobAnswer x y b)
    else 0

end

noncomputable section

open scoped BigOperators

set_option backward.isDefEq.respectTransparency false
set_option maxHeartbeats 1600000
set_option maxRecDepth 2048

attribute [local instance] Classical.propDecidable

variable {X Y A B : Type*}
variable [Fintype X] [Fintype Y] [Fintype A] [Fintype B]

def exactFixedBobQuestionMass
    (G : Game X Y A B) (n : ℕ)
    (fixed : Finset (Fin n))
    (xs : Fin n → X) (known : Fin n → Y) : ℝ :=
  ∑ ys : Fin n → Y,
    if ∀ j : Fin n, j ∈ fixed → ys j = known j then
      (G.repeat n).questionWeight xs ys
    else 0

def exactFixedAliceQuestionMass
    (G : Game X Y A B) (n : ℕ)
    (fixed : Finset (Fin n))
    (known : Fin n → X) (ys : Fin n → Y) : ℝ :=
  ∑ xs : Fin n → X,
    if ∀ j : Fin n, j ∈ fixed → xs j = known j then
      (G.repeat n).questionWeight xs ys
    else 0

end

noncomputable section

open scoped BigOperators

attribute [local instance] Classical.propDecidable

def exactReverseLeftSide
    {M : Type*} [Fintype M] [DecidableEq M]
    (seed : ExactForwardSeed M) : Finset M :=
  insert seed.coordinate
    (exactLeft seed.coordinate seed.partition)

def exactReverseRightSide
    {M : Type*} [Fintype M] [DecidableEq M]
    (seed : ExactForwardSeed M) : Finset M :=
  insert seed.coordinate
    (exactRight seed.coordinate seed.partition)

end

noncomputable section

open scoped BigOperators

set_option backward.isDefEq.respectTransparency false
set_option maxHeartbeats 1800000
set_option maxRecDepth 2048

open QuantumParallelRepetition.ClassicalInformation

attribute [local instance] Classical.propDecidable

def exactReverseLeftSeedWeight
    {M : Type*} [Fintype M] [DecidableEq M]
    (seed : ExactForwardSeed M) : ℝ :=
  (1 / (2 : ℝ)) *
    reverseMarkedPartitionWeight
      (exactReverseLeftSide seed) seed.coordinate *
    (1 / (Fintype.card
      (Equiv.Perm
        {j : M // j ∈ exactReverseLeftSide seed}) : ℝ)) *
    (1 / (Fintype.card
      (Equiv.Perm
        {j : M // j ∈
          exactRight seed.coordinate seed.partition}) : ℝ)) *
    (1 /
      ((exactRight
        seed.coordinate seed.partition).card + 1 : ℝ))

def exactReverseRightSeedWeight
    {M : Type*} [Fintype M] [DecidableEq M]
    (seed : ExactForwardSeed M) : ℝ :=
  (1 / (2 : ℝ)) *
    reverseMarkedPartitionWeight
      (exactReverseRightSide seed) seed.coordinate *
    (1 / (Fintype.card
      (Equiv.Perm
        {j : M // j ∈ exactReverseRightSide seed}) : ℝ)) *
    (1 / (Fintype.card
      (Equiv.Perm
        {j : M // j ∈
          exactLeft seed.coordinate seed.partition}) : ℝ)) *
    (1 /
      ((exactLeft
        seed.coordinate seed.partition).card + 1 : ℝ))

variable {X Y A B : Type*}
variable [Fintype X] [Fintype Y] [Fintype A] [Fintype B]

def exactHistoryAccepted
    (G : Game X Y A B) (n : ℕ)
    (D : Finset (Fin n))
    (r : ExactHistoryFlag X Y A B D) : Prop :=
  ∀ j : {j : Fin n // j ∈ D},
    G.predicate
      (r.history.aliceConditioned j)
      (r.history.bobConditioned j)
      (r.aliceAnswer j)
      (r.bobAnswer j) = true

end

noncomputable section

open scoped BigOperators Kronecker ComplexOrder MatrixOrder

set_option backward.isDefEq.respectTransparency false
set_option maxHeartbeats 1600000
set_option maxRecDepth 2048

attribute [local instance] Classical.propDecidable

variable {X Y A B : Type*}
variable [Fintype X] [Fintype Y] [Fintype A] [Fintype B]

abbrev ExactGlobalHistoryLocalIndex
    (G : Game X Y A B) (n : ℕ) (S : Strategy (G.repeat n))
    (D : Finset (Fin n)) :=
  PUnit.{1} ⊕
    (Σ r : ExactHistoryFlag X Y A B D,
      ExactPaddedLocalIndex G n S D r)

def exactGlobalHistoryVector
    (G : Game X Y A B) (n : ℕ) (S : Strategy (G.repeat n))
    (D : Finset (Fin n))
    (r : ExactHistoryFlag X Y A B D)
    (z : EuclideanSpace ℂ
      (ExactPaddedLocalIndex G n S D r ×
        ExactPaddedLocalIndex G n S D r)) :
    EuclideanSpace ℂ
      (ExactGlobalHistoryLocalIndex G n S D ×
        ExactGlobalHistoryLocalIndex G n S D) :=
  taggedTensorVector r z

def exactGlobalHistoryFinReindex
    (G : Game X Y A B) (n : ℕ) (S : Strategy (G.repeat n))
    (D : Finset (Fin n)) :
    EuclideanSpace ℂ
      (ExactGlobalHistoryLocalIndex G n S D ×
        ExactGlobalHistoryLocalIndex G n S D) ≃ₗᵢ[ℂ]
      EuclideanSpace ℂ
        (Fin (Fintype.card
          (ExactGlobalHistoryLocalIndex G n S D)) ×
         Fin (Fintype.card
          (ExactGlobalHistoryLocalIndex G n S D))) := by
  classical
  exact LinearIsometryEquiv.piLpCongrLeft 2 ℂ ℂ
    (Equiv.prodCongr
      (Fintype.equivFin (ExactGlobalHistoryLocalIndex G n S D))
      (Fintype.equivFin (ExactGlobalHistoryLocalIndex G n S D)))

end

end QuantumParallelRepetition
