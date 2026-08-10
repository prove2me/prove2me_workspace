import Definitions.Def_quantum_parallel_repetition_game
import Definitions.Def_qpr_core_30
import Theorems.Thm_QuantumParallelRepetition_fullCoordinateAliceEntropyIncrement_nonneg
import Theorems.Thm_QuantumParallelRepetition_exactSeedWeight_nonneg
import Theorems.Thm_QuantumParallelRepetition_exactAlicePurificationFamily_posSemidef
import Theorems.Thm_QuantumParallelRepetition_exactBobPurificationFamily_posSemidef
import Theorems.Thm_QuantumParallelRepetition_exactSeedWeight_sum
import Theorems.Thm_QuantumParallelRepetition_aliceMartingaleEntropyBudget
import Theorems.Thm_QuantumParallelRepetition_exactGlobalHistoryLocalIndex_card_pos
import Theorems.Thm_QuantumParallelRepetition_exactSourceStateDistanceBound_of_fair_operator_entropy
import Theorems.Thm_QuantumParallelRepetition_exactFairAcceptedAliceEntropy_le_sourceRate
import Theorems.Thm_QuantumParallelRepetition_exactFairAcceptedBobEntropy_le_sourceRate
import Theorems.Thm_QuantumParallelRepetition_unconditionalExactSourceScalarClipping
import Theorems.Thm_QuantumParallelRepetition_unconditionalSourcePhysicalSameGridWeightedStoppingLedger
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

open scoped ComplexOrder Matrix BigOperators InnerProductSpace
open Complex Matrix Finset

noncomputable section

open Matrix
open scoped BigOperators Kronecker ComplexOrder MatrixOrder

set_option backward.isDefEq.respectTransparency false
set_option maxHeartbeats 1000000

section CoordinateWeights

variable {X Y A B : Type*}
variable [Fintype X] [Fintype Y] [Fintype A] [Fintype B]

theorem fullCoordinateBaseWeight_nonneg
    (G : Game X Y A B) {n : ℕ}
    (D L : Finset (Fin n)) (i : Fin n)
    (h : FullCoordinateRevealHistory X Y n D L i) :
    0 ≤ fullCoordinateBaseWeight G D L i h := by
  unfold fullCoordinateBaseWeight
  exact mul_nonneg
    (mul_nonneg
      (Finset.prod_nonneg fun j _ =>
        G.weight_nonneg (h.aliceConditioned j) (h.bobConditioned j))
      (Finset.prod_nonneg fun j _ =>
        G.marginalX_nonneg (h.aliceRevealed j)))
    (Finset.prod_nonneg fun j _ => G.marginalY_nonneg (h.bobRemaining j))

end CoordinateWeights

end

noncomputable section

open Matrix
open scoped BigOperators Kronecker ComplexOrder MatrixOrder

set_option backward.isDefEq.respectTransparency false
set_option maxHeartbeats 1500000

variable {X Y A B : Type*}
variable [Fintype X] [Fintype Y] [Fintype A] [Fintype B]

theorem fullCoordinateBaseWinIndicator_nonneg
    (G : Game X Y A B) {n : ℕ}
    (D L : Finset (Fin n)) (i : Fin n)
    (r : FullCoordinateRevealHistory X Y n D L i)
    (α : {j : Fin n // j ∈ D} → A)
    (β : {j : Fin n // j ∈ D} → B) :
    0 ≤ fullCoordinateBaseWinIndicator G D L i r α β := by
  classical
  unfold fullCoordinateBaseWinIndicator
  split <;> norm_num

theorem fullCoordinateAliceTotalEntropyIncrement_nonneg
    (G : Game X Y A B) (n : ℕ) (S : Strategy (G.repeat n))
    (D L : Finset (Fin n)) (i : Fin n)
    (hiD : i ∉ D) (hiL : i ∉ L) :
    0 ≤ fullCoordinateAliceTotalEntropyIncrement G n S D L i := by
  unfold fullCoordinateAliceTotalEntropyIncrement
  exact Finset.sum_nonneg fun r _ =>
    Finset.sum_nonneg fun α _ =>
      Finset.sum_nonneg fun β _ =>
        mul_nonneg
          (mul_nonneg (fullCoordinateBaseWeight_nonneg G D L i r)
            (fullCoordinateBaseWinIndicator_nonneg G D L i r α β))
          (fullCoordinateAliceEntropyIncrement_nonneg
            G n S D L i hiD hiL r α β)

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

section ActualEntropyBudgets

variable {X Y A B : Type*}
variable [Fintype X] [Fintype Y] [Fintype A] [Fintype B]

theorem sourcePermutationAliceEntropyIncrement_nonneg
    (G : Game X Y A B) (n : ℕ) (S : Strategy (G.repeat n))
    (D : Finset (Fin n)) (π : SourceRemainingPermutation D)
    (k : Fin (Finset.univ \ D).card) :
    0 ≤ sourcePermutationAliceEntropyIncrement G n S D π k := by
  apply fullCoordinateAliceTotalEntropyIncrement_nonneg
  · exact sourceRemainingPermutationCoordinate_not_mem D π k
  · exact sourceRemainingPermutationCoordinate_not_mem_prefix D π k

theorem sourceUniformPermutationAverage_nonneg
    {n : ℕ} (D : Finset (Fin n))
    (f : SourceRemainingPermutation D →
      Fin (Finset.univ \ D).card → ℝ)
    (hf : ∀ π k, 0 ≤ f π k) :
    0 ≤ sourceUniformPermutationAverage D f := by
  classical
  apply div_nonneg
  · exact Finset.sum_nonneg fun π _ =>
      Finset.sum_nonneg fun k _ => hf π k
  · exact mul_nonneg
      (Nat.cast_nonneg (Fintype.card (SourceRemainingPermutation D)))
      (Nat.cast_nonneg (Finset.univ \ D).card)

end ActualEntropyBudgets

end

noncomputable section

open scoped BigOperators

theorem squared_state_triangle
    {E : Type*} [NormedAddCommGroup E]
    (gamma psi phi : E) :
    ‖gamma - phi‖ ^ 2 ≤
      2 * (‖gamma - psi‖ ^ 2 + ‖psi - phi‖ ^ 2) := by
  have hsplit : gamma - phi = (gamma - psi) + (psi - phi) := by
    abel
  have htriangle :
      ‖gamma - phi‖ ≤ ‖gamma - psi‖ + ‖psi - phi‖ := by
    rw [hsplit]
    exact norm_add_le _ _
  have hnonneg : 0 ≤ ‖gamma - phi‖ := norm_nonneg _
  have ha : 0 ≤ ‖gamma - psi‖ := norm_nonneg _
  have hb : 0 ≤ ‖psi - phi‖ := norm_nonneg _
  nlinarith [sq_nonneg (‖gamma - psi‖ - ‖psi - phi‖)]

theorem source_equation_twenty_one
    {ι E : Type*} [Fintype ι] [NormedAddCommGroup E]
    (weight : ι → ℝ)
    (nonnegative : ∀ i, 0 ≤ weight i)
    (gamma psi phi : ι → E)
    (η : ℝ)
    (hgamma : (∑ i, weight i * ‖gamma i - psi i‖ ^ 2) ≤ 8 * η)
    (hphi : (∑ i, weight i * ‖psi i - phi i‖ ^ 2) ≤ 8 * η) :
    (∑ i, weight i * ‖gamma i - phi i‖ ^ 2) ≤ 32 * η := by
  classical
  calc
    (∑ i, weight i * ‖gamma i - phi i‖ ^ 2) ≤
        ∑ i, weight i *
          (2 * (‖gamma i - psi i‖ ^ 2 + ‖psi i - phi i‖ ^ 2)) := by
          apply Finset.sum_le_sum
          intro i _
          exact mul_le_mul_of_nonneg_left
            (squared_state_triangle (gamma i) (psi i) (phi i))
            (nonnegative i)
    _ = 2 *
          ((∑ i, weight i * ‖gamma i - psi i‖ ^ 2) +
           (∑ i, weight i * ‖psi i - phi i‖ ^ 2)) := by
          calc
            (∑ i, weight i *
              (2 * (‖gamma i - psi i‖ ^ 2 + ‖psi i - phi i‖ ^ 2))) =
                ∑ i, (2 * (weight i * ‖gamma i - psi i‖ ^ 2) +
                  2 * (weight i * ‖psi i - phi i‖ ^ 2)) := by
                    apply Finset.sum_congr rfl
                    intro i _
                    ring
            _ = _ := by
              rw [Finset.sum_add_distrib, ← Finset.mul_sum, ← Finset.mul_sum]
              ring
    _ ≤ 32 * η := by linarith

end

noncomputable section

open WithLp
open scoped BigOperators ComplexOrder Kronecker MatrixOrder
  Matrix.Norms.L2Operator InnerProductSpace

set_option backward.isDefEq.respectTransparency false
set_option maxHeartbeats 1600000
set_option maxRecDepth 2048

variable {X Y A B : Type*}
variable [Fintype X] [Fintype Y] [Fintype A] [Fintype B]

theorem martingaleRate_nonneg
    (G : Game X Y A B) (n : ℕ) (S : Strategy (G.repeat n))
    (D : Finset (Fin n))
    (hm : 0 < (Finset.univ \ D).card)
    (hp : 0 < repeatedPostselectionMass G n S D) :
    0 ≤ martingaleRate G n S D := by
  have hnonnegative := sourceUniformPermutationAverage_nonneg D
    (sourcePermutationAliceEntropyIncrement G n S D)
    (fun π k => sourcePermutationAliceEntropyIncrement_nonneg
      G n S D π k)
  have hbudget := aliceMartingaleEntropyBudget
    G n S D hm hp
  nlinarith

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

end

noncomputable section

open scoped BigOperators

set_option backward.isDefEq.respectTransparency false
set_option maxHeartbeats 1600000
set_option maxRecDepth 2048

attribute [local instance] Classical.propDecidable

variable {X Y A B : Type*}
variable [Fintype X] [Fintype Y] [Fintype A] [Fintype B]

theorem exactSourceEquationTwentyOne_of_fifteen
    (G : Game X Y A B) (n : ℕ) (S : Strategy (G.repeat n))
    (D : Finset (Fin n))
    (positive : 0 < repeatedPostselectionMass G n S D)
    (η : ℝ)
    (distance : ExactSourceStateDistanceBound G n S D η) :
    (∑ t : ExactLocallySampleableTuple X Y A B D,
      exactLocallySampleableLaw G n S D t *
        ‖exactSourceTupleGamma G n S D t -
          exactSourceTuplePhi G n S D t‖ ^ 2) ≤ 32 * η := by
  exact source_equation_twenty_one
    (exactLocallySampleableLaw G n S D)
    (exactLocallySampleableLaw_nonneg G n S D positive)
    (exactSourceTupleGamma G n S D)
    (exactSourceTuplePsi G n S D)
    (exactSourceTuplePhi G n S D)
    η distance.1 distance.2

end

noncomputable section

open scoped BigOperators ComplexOrder Kronecker MatrixOrder
  Matrix.Norms.L2Operator InnerProductSpace

set_option backward.isDefEq.respectTransparency false
set_option maxHeartbeats 8000000
set_option maxRecDepth 2048

open QuantumParallelRepetition.ClassicalInformation

attribute [local instance] Classical.propDecidable

variable {X Y A B : Type*}
variable [Fintype X] [Fintype Y] [Fintype A] [Fintype B]

theorem exactFairOperatorEntropyBound_of_positive
    (G : Game X Y A B) (n : ℕ) (S : Strategy (G.repeat n))
    (D : Finset (Fin n))
    (remaining : 0 < (Finset.univ \ D).card)
    (positive : 0 < repeatedPostselectionMass G n S D) :
    ExactFairOperatorEntropyBound G n S D
      (martingaleRate G n S D) :=
  ⟨exactFairAcceptedAliceEntropy_le_sourceRate
      G n S D remaining positive,
    exactFairAcceptedBobEntropy_le_sourceRate
      G n S D remaining positive⟩

theorem exactSourceStateDistanceBound_of_positive
    (G : Game X Y A B) (n : ℕ) (S : Strategy (G.repeat n))
    (D : Finset (Fin n))
    (remaining : 0 < (Finset.univ \ D).card)
    (positive : 0 < repeatedPostselectionMass G n S D) :
    ExactSourceStateDistanceBound G n S D
      (martingaleRate G n S D) :=
  exactSourceStateDistanceBound_of_fair_operator_entropy
    G n S D (martingaleRate G n S D) positive
    (exactFairOperatorEntropyBound_of_positive
      G n S D remaining positive)

end

noncomputable section

open scoped BigOperators ComplexOrder Kronecker MatrixOrder
  Matrix.Norms.L2Operator InnerProductSpace

open QuantumParallelRepetition.ClassicalSampling

attribute [local instance] Classical.propDecidable

theorem unconditionalSourcePhysicalRounding_fairTargetEnergy
    {X Y A B : Type}
    [Fintype X] [Fintype Y] [Fintype A] [Fintype B]
    (G : Game X Y A B)
    (n : ℕ) (S : Strategy (G.repeat n))
    (D : Finset (Fin n))
    (remaining : 0 < (Finset.univ \ D).card)
    (positive : 0 < repeatedPostselectionMass G n S D) :
    (∑ h : ExactLocallySampleableTuple X Y A B D,
      exactLocallySampleableLaw G n S D h *
        ‖(exactGlobalHistoryFinGamma
            G n S D h.2.2.2 h.2.1).val -
          (exactGlobalHistoryFinPhi
            G n S D h.2.2.2 h.2.2.1).val‖ ^ 2) ≤
      32 * martingaleRate G n S D := by
  have distance := exactSourceStateDistanceBound_of_positive
    G n S D remaining positive
  simpa [exactSourceTupleGamma, exactSourceTuplePhi] using
    (exactSourceEquationTwentyOne_of_fifteen
      G n S D positive (martingaleRate G n S D) distance)

end

end QuantumParallelRepetition


open QuantumParallelRepetition
open scoped ComplexOrder Matrix BigOperators InnerProductSpace
open Complex Matrix Finset
open scoped BigOperators ComplexOrder Kronecker MatrixOrder
  Matrix.Norms.L2Operator InnerProductSpace
open QuantumParallelRepetition.ClassicalSampling
attribute [local instance] Classical.propDecidable

theorem solution
    {X Y A B : Type}
    [Fintype X] [Fintype Y] [Fintype A] [Fintype B]
    (G : Game X Y A B)
    (n : ℕ) (S : Strategy (G.repeat n))
    (D : Finset (Fin n))
    (remaining : 0 < (Finset.univ \ D).card)
    (positive : 0 < repeatedPostselectionMass G n S D)
    (alpha : ℝ)
    (alpha_positive : 0 < alpha)
    (alpha_bounded : alpha ≤ 1)
    (small : 64 * Real.sqrt (martingaleRate G n S D) +
      alpha ^ (1 / 3 : ℝ) ≤ 1) :
    ∃ (w : ℝ) (N L B' Q m : ℕ),
      1 ≤ w ∧ 0 < N ∧ 0 < L ∧ 0 < B' ∧ 0 < Q ∧ 0 < m ∧
      2 * (w + 1) *
          ((Fintype.card
            (ExactGlobalHistoryLocalIndex G n S D) : ℝ) / N) ≤
        alpha ^ (1 / 3 : ℝ) ∧
      (Fintype.card
          (ExactGlobalHistoryLocalIndex G n S D) : ℝ) /
          (N : ℝ) < 1 / (w + 1) ∧
      (1 / w +
        (Fintype.card
          (ExactGlobalHistoryLocalIndex G n S D) : ℝ) *
          w / (N : ℝ) ≤ 3 * alpha ^ (1 / 3 : ℝ) / 2) ∧
      ∃ UA UB : Fin B' → Option ℕ →
          Matrix.unitaryGroup (Fin (N * m)) ℂ,
        let width : Fin 1 → ℝ := fun _ => w
        let schedule : Fin L → Fin 1 := fun _ => 0
        let eta : ℝ := martingaleRate G n S D
        let delta : ℝ := alpha ^ (1 / 3 : ℝ)
        let t : ℝ := Real.sqrt (64 * Real.sqrt eta + delta)
        let rho : ℝ := alpha ^ (1 / 12 : ℝ)
        (∀ ξ : BipartiteUnitVector
            (Fintype.card (ExactGlobalHistoryLocalIndex G n S D)),
          ‖ξ.val - dSVDensityRationalCanonicalAcceptedTarget
              w N ξ‖ ^ 2 ≤ 3 * delta / 2) ∧
        ((∑ h : ExactLocallySampleableTuple X Y A B D,
          exactLocallySampleableLaw G n S D h *
            dSVDensityRationalHeterogeneousPhysicalStoppedAsynchronousMass
              N width schedule
              (exactGlobalHistoryFinGamma
                G n S D h.2.2.2 h.2.1)
              (exactGlobalHistoryFinPhi
                G n S D h.2.2.2 h.2.2.1)) ≤
            64 * Real.sqrt eta + delta) ∧
        ((∑ h : ExactLocallySampleableTuple X Y A B D,
          exactLocallySampleableLaw G n S D h *
            dSVDensityRationalHeterogeneousPhysicalTerminalMass
              N width schedule
              (exactGlobalHistoryFinGamma
                G n S D h.2.2.2 h.2.1)
              (exactGlobalHistoryFinPhi
                G n S D h.2.2.2 h.2.2.1)) ≤ delta ^ 2) ∧
        ((∑ h : ExactLocallySampleableTuple X Y A B D,
          exactLocallySampleableLaw G n S D h *
            dSVDensityRationalHeterogeneousStoppedCommonPrefixHazard
              Q m width schedule
              (exactGlobalHistoryFinGamma
                G n S D h.2.2.2 h.2.1)
              (exactGlobalHistoryFinPhi
                G n S D h.2.2.2 h.2.2.1)
              UA UB) ≤
            (34 / t) * (64 * Real.sqrt eta + delta) +
              4 * rho ^ 2 +
                unconditionalPrefactorBucketCoefficient * t) := by
  classical
  let d : ℕ := Fintype.card
    (ExactGlobalHistoryLocalIndex G n S D)
  have dimension : 0 < d :=
    exactGlobalHistoryLocalIndex_card_pos G n S D
  let eta : ℝ := martingaleRate G n S D
  let delta : ℝ := alpha ^ (1 / 3 : ℝ)
  let t : ℝ := Real.sqrt (64 * Real.sqrt eta + delta)
  let rho : ℝ := alpha ^ (1 / 12 : ℝ)
  have eta_nonnegative : 0 ≤ eta :=
    martingaleRate_nonneg G n S D remaining positive
  have delta_positive : 0 < delta :=
    Real.rpow_pos_of_pos alpha_positive _
  have delta_bounded : delta ≤ 1 :=
    Real.rpow_le_one alpha_positive.le alpha_bounded (by norm_num)
  have t_positive : 0 < t := by
    dsimp [t]
    apply Real.sqrt_pos.2
    nlinarith [Real.sqrt_nonneg eta]
  have t_bounded : t ≤ 1 := by
    dsimp [t]
    have bound : 64 * Real.sqrt eta + delta ≤ 1 := by
      simpa [eta, delta] using small
    nlinarith [Real.sqrt_nonneg
      (64 * Real.sqrt eta + delta),
      Real.sq_sqrt (show 0 ≤ 64 * Real.sqrt eta + delta by positivity)]
  have rho_positive : 0 < rho :=
    Real.rpow_pos_of_pos alpha_positive _
  obtain ⟨w, N, width_large, grid, budget, scalar, canonical, _⟩ :=
    unconditionalExactSourceScalarClipping
      d dimension alpha alpha_positive alpha_bounded
  have precision_budget :
      2 * (w + 1) * ((d : ℝ) / N) ≤ delta := by
    simpa [delta] using budget
  have grid_fine :
      (d : ℝ) / (N : ℝ) < 1 / (w + 1) := by
    apply (lt_div_iff₀
      (show 0 < w + 1 by linarith only [width_large])).2
    nlinarith only [precision_budget, delta_bounded]
  let law : ExactLocallySampleableTuple X Y A B D → ℝ :=
    exactLocallySampleableLaw G n S D
  let gamma : ExactLocallySampleableTuple X Y A B D →
      BipartiteUnitVector d := fun h =>
    exactGlobalHistoryFinGamma G n S D h.2.2.2 h.2.1
  let phi : ExactLocallySampleableTuple X Y A B D →
      BipartiteUnitVector d := fun h =>
    exactGlobalHistoryFinPhi G n S D h.2.2.2 h.2.2.1
  have energy :
      (∑ h : ExactLocallySampleableTuple X Y A B D,
        law h * ‖(gamma h).val - (phi h).val‖ ^ 2) ≤ 32 * eta := by
    simpa [law, gamma, phi, eta] using
      unconditionalSourcePhysicalRounding_fairTargetEnergy
        G n S D remaining positive
  obtain ⟨L, B', Q, m, horizon, phases, resolution, harmonic,
      UA, UB, _pointwise, _tail, asynchronous, terminal, hazard⟩ :=
    unconditionalSourcePhysicalSameGridWeightedStoppingLedger
      dimension grid w delta width_large delta_positive delta_bounded
      (by simpa [delta] using budget)
      t t_positive t_bounded rho rho_positive
      law (exactLocallySampleableLaw_nonneg G n S D positive)
      (exactLocallySampleableLaw_sum G n S D remaining positive)
      gamma phi eta energy
  refine ⟨w, N, L, B', Q, m, width_large, grid, horizon,
    phases, resolution, harmonic, ?_, ?_, ?_, UA, UB, ?_⟩
  · exact budget
  · exact grid_fine
  · exact scalar
  dsimp only
  refine ⟨?_, ?_, ?_, ?_⟩
  · exact canonical
  · exact asynchronous
  · exact terminal
  · change
      (∑ h : ExactLocallySampleableTuple X Y A B D,
        law h *
          dSVDensityRationalHeterogeneousStoppedCommonPrefixHazard
            Q m (fun _ : Fin 1 => w) (fun _ : Fin L => 0)
            (gamma h) (phi h) UA UB) ≤
        (34 / t) * (64 * Real.sqrt eta + delta) +
          4 * rho ^ 2 +
            unconditionalPrefactorBucketCoefficient * t
    simpa only [unconditionalPrefactorBucketCoefficient]
      using hazard
