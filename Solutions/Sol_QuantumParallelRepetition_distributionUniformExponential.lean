import Definitions.Def_quantum_parallel_repetition_game
import Definitions.Def_qpr_core_47
import Theorems.Thm_QuantumParallelRepetition_Strategy_winProbability_nonneg
import Theorems.Thm_QuantumParallelRepetition_entangledValue_le_one
import Theorems.Thm_QuantumParallelRepetition_fullCoordinateAliceEntropyIncrement_nonneg
import Theorems.Thm_QuantumParallelRepetition_aliceMartingaleEntropyBudget
import Theorems.Thm_QuantumParallelRepetition_exactSourceAnswerTypes_nonempty_of_remaining
import Theorems.Thm_QuantumParallelRepetition_pdf_distributionUniformExponential_of_uniform_source_rounding
import Theorems.Thm_QuantumParallelRepetition_unconditionalActualFairSourceRoundingData_exists_stoppedVerifier
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

theorem unconditionalPrefactorBucketCoefficient_nonneg :
    0 ≤ unconditionalPrefactorBucketCoefficient := by
  have exponential := Real.add_one_le_exp (1 : ℝ)
  unfold unconditionalPrefactorBucketCoefficient
  nlinarith

theorem unconditionalPrefactor_fourthRoot_sq
    {a : ℝ} (nonnegative : 0 ≤ a) :
    (a ^ (1 / 4 : ℝ)) ^ 2 = Real.sqrt a := by
  calc
    (a ^ (1 / 4 : ℝ)) ^ 2 = a ^ ((1 / 4 : ℝ) * 2) :=
      (Real.rpow_mul_natCast nonnegative (1 / 4 : ℝ) 2).symm
    _ = a ^ (1 / 2 : ℝ) := by norm_num
    _ = Real.sqrt a := (Real.sqrt_eq_rpow a).symm

theorem unconditionalPrefactor_sixtyFour_fourthRoot_le :
    (64 : ℝ) ^ (1 / 4 : ℝ) ≤ 4 := by
  have monotone := Real.rpow_le_rpow
    (by norm_num : (0 : ℝ) ≤ 64)
    (by norm_num : (64 : ℝ) ≤ 256)
    (by norm_num : (0 : ℝ) ≤ (1 / 4 : ℝ))
  have fourth :
      (256 : ℝ) ^ (1 / 4 : ℝ) = 4 := by
    norm_num
  exact monotone.trans_eq fourth

theorem unconditionalPrefactor_fourthRoot_async_le
    {eta alpha : ℝ}
    (eta_nonnegative : 0 ≤ eta)
    (alpha_nonnegative : 0 ≤ alpha) :
    (64 * Real.sqrt eta + alpha ^ (1 / 3 : ℝ)) ^ (1 / 4 : ℝ) ≤
      4 * eta ^ (1 / 8 : ℝ) + alpha ^ (1 / 12 : ℝ) := by
  have asynchronous_nonnegative : 0 ≤ (64 : ℝ) * Real.sqrt eta := by
    positivity
  have precision_nonnegative : 0 ≤ alpha ^ (1 / 3 : ℝ) :=
    Real.rpow_nonneg alpha_nonnegative _
  have split := Real.rpow_add_le_add_rpow
    asynchronous_nonnegative precision_nonnegative
    (by norm_num : (0 : ℝ) ≤ 1 / 4)
    (by norm_num : (1 / 4 : ℝ) ≤ 1)
  have eta_identity :
      (Real.sqrt eta) ^ (1 / 4 : ℝ) = eta ^ (1 / 8 : ℝ) := by
    rw [Real.sqrt_eq_rpow]
    rw [← Real.rpow_mul eta_nonnegative]
    norm_num
  have alpha_identity :
      (alpha ^ (1 / 3 : ℝ)) ^ (1 / 4 : ℝ) =
        alpha ^ (1 / 12 : ℝ) := by
    rw [← Real.rpow_mul alpha_nonnegative]
    norm_num
  have numerical :=
    unconditionalPrefactor_sixtyFour_fourthRoot_le
  calc
    (64 * Real.sqrt eta + alpha ^ (1 / 3 : ℝ)) ^ (1 / 4 : ℝ)
        ≤ (64 * Real.sqrt eta) ^ (1 / 4 : ℝ) +
          (alpha ^ (1 / 3 : ℝ)) ^ (1 / 4 : ℝ) := split
    _ = (64 : ℝ) ^ (1 / 4 : ℝ) * eta ^ (1 / 8 : ℝ) +
          alpha ^ (1 / 12 : ℝ) := by
          rw [Real.mul_rpow (by norm_num : (0 : ℝ) ≤ 64)
            (Real.sqrt_nonneg eta), eta_identity, alpha_identity]
    _ ≤ 4 * eta ^ (1 / 8 : ℝ) + alpha ^ (1 / 12 : ℝ) := by
          gcongr

theorem unconditionalPrefactor_fourthRoot_async_le_twelfth
    {eta alpha : ℝ}
    (eta_nonnegative : 0 ≤ eta)
    (eta_bounded : eta ≤ 1)
    (alpha_nonnegative : 0 ≤ alpha) :
    (64 * Real.sqrt eta + alpha ^ (1 / 3 : ℝ)) ^ (1 / 4 : ℝ) ≤
      4 * eta ^ (1 / 12 : ℝ) + alpha ^ (1 / 12 : ℝ) := by
  have root_compare : eta ^ (1 / 8 : ℝ) ≤ eta ^ (1 / 12 : ℝ) :=
    Real.rpow_le_rpow_of_exponent_ge'
      eta_nonnegative eta_bounded
      (by norm_num : (0 : ℝ) ≤ 1 / 12)
      (by norm_num : (1 / 12 : ℝ) ≤ 1 / 8)
  calc
    (64 * Real.sqrt eta + alpha ^ (1 / 3 : ℝ)) ^ (1 / 4 : ℝ)
        ≤ 4 * eta ^ (1 / 8 : ℝ) + alpha ^ (1 / 12 : ℝ) :=
          unconditionalPrefactor_fourthRoot_async_le
            eta_nonnegative alpha_nonnegative
    _ ≤ 4 * eta ^ (1 / 12 : ℝ) + alpha ^ (1 / 12 : ℝ) := by
          gcongr

theorem unconditionalPrefactor_balancedHazard_sqrt_le
    {a rho : ℝ}
    (positive : 0 < a)
    (rho_nonnegative : 0 ≤ rho) :
    Real.sqrt
      ((34 / Real.sqrt a) * a + 4 * rho ^ 2 +
        unconditionalPrefactorBucketCoefficient * Real.sqrt a) ≤
      Real.sqrt (34 + unconditionalPrefactorBucketCoefficient) *
          a ^ (1 / 4 : ℝ) + 2 * rho := by
  have root_positive : 0 < Real.sqrt a := Real.sqrt_pos.2 positive
  have root_square : (Real.sqrt a) ^ 2 = a :=
    Real.sq_sqrt positive.le
  have coefficient_nonnegative :=
    unconditionalPrefactorBucketCoefficient_nonneg
  have coefficient_square :
      (Real.sqrt
        (34 + unconditionalPrefactorBucketCoefficient)) ^ 2 =
        34 + unconditionalPrefactorBucketCoefficient :=
    Real.sq_sqrt (by linarith)
  have fourth_square :=
    unconditionalPrefactor_fourthRoot_sq positive.le
  have product_square :
      (Real.sqrt (34 + unconditionalPrefactorBucketCoefficient) *
        a ^ (1 / 4 : ℝ)) ^ 2 =
        (34 + unconditionalPrefactorBucketCoefficient) *
          Real.sqrt a := by
    calc
      (Real.sqrt (34 + unconditionalPrefactorBucketCoefficient) *
        a ^ (1 / 4 : ℝ)) ^ 2 =
          (Real.sqrt (34 +
            unconditionalPrefactorBucketCoefficient)) ^ 2 *
            (a ^ (1 / 4 : ℝ)) ^ 2 := by ring
      _ = (34 + unconditionalPrefactorBucketCoefficient) *
          Real.sqrt a := by rw [coefficient_square, fourth_square]
  have quotient : (34 / Real.sqrt a) * a = 34 * Real.sqrt a := by
    field_simp [ne_of_gt root_positive]
    nlinarith [root_square]
  apply Real.sqrt_le_iff.mpr
  constructor
  · positivity
  · rw [quotient]
    have cross_nonnegative :
        0 ≤ (Real.sqrt
          (34 + unconditionalPrefactorBucketCoefficient) *
          a ^ (1 / 4 : ℝ)) * rho :=
      mul_nonneg
        (mul_nonneg (Real.sqrt_nonneg _)
          (Real.rpow_nonneg positive.le _))
        rho_nonnegative
    nlinarith [product_square]

theorem unconditionalPrefactor_smallHazard_twelfthRoot_le
    {eta alpha : ℝ}
    (eta_nonnegative : 0 ≤ eta)
    (alpha_positive : 0 < alpha)
    (small : 64 * Real.sqrt eta + alpha ^ (1 / 3 : ℝ) ≤ 1) :
    Real.sqrt
      ((34 / Real.sqrt
          (64 * Real.sqrt eta + alpha ^ (1 / 3 : ℝ))) *
          (64 * Real.sqrt eta + alpha ^ (1 / 3 : ℝ)) +
        4 * (alpha ^ (1 / 12 : ℝ)) ^ 2 +
        unconditionalPrefactorBucketCoefficient *
          Real.sqrt
            (64 * Real.sqrt eta + alpha ^ (1 / 3 : ℝ))) ≤
      (4 * Real.sqrt
          (34 + unconditionalPrefactorBucketCoefficient) + 2) *
        (eta ^ (1 / 12 : ℝ) + alpha ^ (1 / 12 : ℝ)) := by
  let a : ℝ := 64 * Real.sqrt eta + alpha ^ (1 / 3 : ℝ)
  let rho : ℝ := alpha ^ (1 / 12 : ℝ)
  have alpha_third_positive : 0 < alpha ^ (1 / 3 : ℝ) :=
    Real.rpow_pos_of_pos alpha_positive _
  have a_positive : 0 < a := by
    dsimp [a]
    have := Real.sqrt_nonneg eta
    linarith
  have eta_root_square : (Real.sqrt eta) ^ 2 = eta :=
    Real.sq_sqrt eta_nonnegative
  have eta_bounded : eta ≤ 1 := by
    have eta_root_bounded : Real.sqrt eta ≤ 1 := by
      nlinarith [Real.sqrt_nonneg eta, alpha_third_positive]
    nlinarith [Real.sqrt_nonneg eta]
  have rho_nonnegative : 0 ≤ rho := by
    dsimp [rho]
    exact Real.rpow_nonneg alpha_positive.le _
  have eta_twelfth_nonnegative : 0 ≤ eta ^ (1 / 12 : ℝ) :=
    Real.rpow_nonneg eta_nonnegative _
  have quarter :=
    unconditionalPrefactor_fourthRoot_async_le_twelfth
      eta_nonnegative eta_bounded alpha_positive.le
  have balanced :=
    unconditionalPrefactor_balancedHazard_sqrt_le
      a_positive rho_nonnegative
  have coefficient_root_nonnegative :
      0 ≤ Real.sqrt
        (34 + unconditionalPrefactorBucketCoefficient) :=
    Real.sqrt_nonneg _
  change
    Real.sqrt
      ((34 / Real.sqrt a) * a + 4 * rho ^ 2 +
        unconditionalPrefactorBucketCoefficient * Real.sqrt a) ≤
      (4 * Real.sqrt
          (34 + unconditionalPrefactorBucketCoefficient) + 2) *
        (eta ^ (1 / 12 : ℝ) + rho)
  change a ^ (1 / 4 : ℝ) ≤
    4 * eta ^ (1 / 12 : ℝ) + rho at quarter
  nlinarith [mul_nonneg coefficient_root_nonnegative
    (sub_nonneg.mpr quarter),
    mul_nonneg coefficient_root_nonnegative rho_nonnegative,
    mul_nonneg (show 0 ≤ (2 : ℝ) by norm_num)
      eta_twelfth_nonnegative]

theorem unconditionalPrefactor_largeVerifier_twelfthRoot_le
    {eta alpha : ℝ}
    (eta_nonnegative : 0 ≤ eta)
    (alpha_positive : 0 < alpha)
    (alpha_bounded : alpha ≤ 1)
    (large : 1 < 64 * Real.sqrt eta + alpha ^ (1 / 3 : ℝ)) :
    (2 : ℝ) ≤
      128 * (eta ^ (1 / 12 : ℝ) + alpha ^ (1 / 12 : ℝ)) := by
  have eta_root_nonnegative : 0 ≤ eta ^ (1 / 12 : ℝ) :=
    Real.rpow_nonneg eta_nonnegative _
  have alpha_root_nonnegative : 0 ≤ alpha ^ (1 / 12 : ℝ) :=
    Real.rpow_nonneg alpha_positive.le _
  by_cases eta_bounded : eta ≤ 1
  · have eta_root_compare :
        Real.sqrt eta ≤ eta ^ (1 / 12 : ℝ) := by
      rw [Real.sqrt_eq_rpow]
      exact Real.rpow_le_rpow_of_exponent_ge'
        eta_nonnegative eta_bounded
        (by norm_num : (0 : ℝ) ≤ 1 / 12)
        (by norm_num : (1 / 12 : ℝ) ≤ 1 / 2)
    have alpha_root_compare :
        alpha ^ (1 / 3 : ℝ) ≤ alpha ^ (1 / 12 : ℝ) :=
      Real.rpow_le_rpow_of_exponent_ge'
        alpha_positive.le alpha_bounded
        (by norm_num : (0 : ℝ) ≤ 1 / 12)
        (by norm_num : (1 / 12 : ℝ) ≤ 1 / 3)
    nlinarith
  · have eta_large : 1 ≤ eta := (lt_of_not_ge eta_bounded).le
    have eta_root_large : 1 ≤ eta ^ (1 / 12 : ℝ) :=
      Real.one_le_rpow eta_large (by norm_num : (0 : ℝ) ≤ 1 / 12)
    nlinarith

end

noncomputable section

private theorem unconditionalSmallSource_eta_le_one
    (eta alpha : ℝ)
    (eta_nonnegative : 0 ≤ eta)
    (alpha_positive : 0 < alpha)
    (small : 64 * Real.sqrt eta + alpha ^ (1 / 3 : ℝ) ≤ 1) :
    eta ≤ 1 := by
  have delta_nonnegative : 0 ≤ alpha ^ (1 / 3 : ℝ) :=
    Real.rpow_nonneg alpha_positive.le _
  have root_nonnegative := Real.sqrt_nonneg eta
  have root_square := Real.sq_sqrt eta_nonnegative
  nlinarith

private theorem unconditionalSmallSource_eta_scaled_root
    (eta : ℝ) (eta_nonnegative : 0 ≤ eta) :
    eta ^ (1 / 12 : ℝ) ≤ (32 * eta) ^ (1 / 12 : ℝ) := by
  apply Real.rpow_le_rpow eta_nonnegative
  · nlinarith
  · norm_num

private theorem unconditionalSmallSource_root_estimates
    (eta alpha : ℝ)
    (eta_nonnegative : 0 ≤ eta)
    (alpha_positive : 0 < alpha)
    (alpha_bounded : alpha ≤ 1)
    (small : 64 * Real.sqrt eta + alpha ^ (1 / 3 : ℝ) ≤ 1) :
    let δ := alpha ^ (1 / 3 : ℝ)
    let R := alpha ^ (1 / 12 : ℝ) + (32 * eta) ^ (1 / 12 : ℝ)
    0 ≤ R ∧ Real.sqrt eta ≤ R ∧ δ ≤ R ∧ δ ^ 2 ≤ R ∧
      Real.sqrt δ ≤ R := by
  dsimp only
  let δ : ℝ := alpha ^ (1 / 3 : ℝ)
  let R : ℝ :=
    alpha ^ (1 / 12 : ℝ) + (32 * eta) ^ (1 / 12 : ℝ)
  have delta_nonnegative : 0 ≤ δ :=
    Real.rpow_nonneg alpha_positive.le _
  have delta_bounded : δ ≤ 1 :=
    Real.rpow_le_one alpha_positive.le alpha_bounded (by norm_num)
  have alpha_root_nonnegative : 0 ≤ alpha ^ (1 / 12 : ℝ) :=
    Real.rpow_nonneg alpha_positive.le _
  have scaled_nonnegative : 0 ≤ (32 * eta) ^ (1 / 12 : ℝ) :=
    Real.rpow_nonneg (by positivity) _
  have root_nonnegative : 0 ≤ R :=
    add_nonneg alpha_root_nonnegative scaled_nonnegative
  have eta_bounded :=
    unconditionalSmallSource_eta_le_one
      eta alpha eta_nonnegative alpha_positive small
  have eta_scaled :=
    unconditionalSmallSource_eta_scaled_root eta eta_nonnegative
  have eta_root : Real.sqrt eta ≤ eta ^ (1 / 12 : ℝ) := by
    rw [Real.sqrt_eq_rpow]
    exact Real.rpow_le_rpow_of_exponent_ge'
      eta_nonnegative eta_bounded
      (by norm_num : (0 : ℝ) ≤ 1 / 12)
      (by norm_num : (1 / 12 : ℝ) ≤ 1 / 2)
  have eta_bound : Real.sqrt eta ≤ R := by
    dsimp [R]
    linarith
  have delta_root : δ ≤ alpha ^ (1 / 12 : ℝ) := by
    dsimp [δ]
    exact Real.rpow_le_rpow_of_exponent_ge'
      alpha_positive.le alpha_bounded
      (by norm_num : (0 : ℝ) ≤ 1 / 12)
      (by norm_num : (1 / 12 : ℝ) ≤ 1 / 3)
  have delta_bound : δ ≤ R := by
    dsimp [R]
    linarith
  have delta_sq_bound : δ ^ 2 ≤ R := by
    nlinarith [mul_nonneg delta_nonnegative
      (sub_nonneg.mpr delta_bounded)]
  have delta_sqrt_eq : Real.sqrt δ = alpha ^ (1 / 6 : ℝ) := by
    dsimp [δ]
    rw [Real.sqrt_eq_rpow, ← Real.rpow_mul alpha_positive.le]
    norm_num
  have delta_sqrt_bound : Real.sqrt δ ≤ R := by
    rw [delta_sqrt_eq]
    have root_compare :
        alpha ^ (1 / 6 : ℝ) ≤ alpha ^ (1 / 12 : ℝ) :=
      Real.rpow_le_rpow_of_exponent_ge'
        alpha_positive.le alpha_bounded
        (by norm_num : (0 : ℝ) ≤ 1 / 12)
        (by norm_num : (1 / 12 : ℝ) ≤ 1 / 6)
    dsimp [R]
    linarith
  exact ⟨root_nonnegative, eta_bound, delta_bound,
    delta_sq_bound, delta_sqrt_bound⟩

private theorem unconditionalSmallSource_clipping_sqrt_le
    (eta alpha clipping : ℝ)
    (eta_nonnegative : 0 ≤ eta)
    (alpha_positive : 0 < alpha)
    (alpha_bounded : alpha ≤ 1)
    (small : 64 * Real.sqrt eta + alpha ^ (1 / 3 : ℝ) ≤ 1)
    (actual_clipping :
      clipping ≤ 16 * eta + 8 * (3 * alpha ^ (1 / 3 : ℝ) / 2)) :
    Real.sqrt clipping ≤
      8 * (alpha ^ (1 / 12 : ℝ) +
        (32 * eta) ^ (1 / 12 : ℝ)) := by
  let δ : ℝ := alpha ^ (1 / 3 : ℝ)
  let R : ℝ :=
    alpha ^ (1 / 12 : ℝ) + (32 * eta) ^ (1 / 12 : ℝ)
  have bounds := unconditionalSmallSource_root_estimates
    eta alpha eta_nonnegative alpha_positive alpha_bounded small
  change 0 ≤ R ∧ Real.sqrt eta ≤ R ∧ δ ≤ R ∧ δ ^ 2 ≤ R ∧
    Real.sqrt δ ≤ R at bounds
  have delta_nonnegative : 0 ≤ δ :=
    Real.rpow_nonneg alpha_positive.le _
  have clip_bound : clipping ≤ 16 * eta + 12 * δ := by
    change clipping ≤ 16 * eta + 8 * (3 * δ / 2)
      at actual_clipping
    nlinarith
  have clip_base_nonnegative : 0 ≤ 16 * eta + 12 * δ := by
    positivity
  have clip_sqrt_base :
      Real.sqrt (16 * eta + 12 * δ) ≤
        4 * Real.sqrt eta + 4 * Real.sqrt δ := by
    have eta_square := Real.sq_sqrt eta_nonnegative
    have delta_square := Real.sq_sqrt delta_nonnegative
    have clip_square := Real.sq_sqrt clip_base_nonnegative
    have cross :=
      mul_nonneg (Real.sqrt_nonneg eta) (Real.sqrt_nonneg δ)
    have clip_root_nonnegative := Real.sqrt_nonneg (16 * eta + 12 * δ)
    have eta_root_nonnegative := Real.sqrt_nonneg eta
    have delta_root_nonnegative := Real.sqrt_nonneg δ
    nlinarith
  change Real.sqrt clipping ≤ 8 * R
  calc
    Real.sqrt clipping ≤ Real.sqrt (16 * eta + 12 * δ) :=
      Real.sqrt_le_sqrt clip_bound
    _ ≤ 4 * Real.sqrt eta + 4 * Real.sqrt δ := clip_sqrt_base
    _ ≤ 8 * R := by linarith [bounds.2.1, bounds.2.2.2.2]

private theorem unconditionalSmallSource_deviation_sqrt_le
    (eta alpha deviation : ℝ)
    (eta_nonnegative : 0 ≤ eta)
    (alpha_positive : 0 < alpha)
    (small : 64 * Real.sqrt eta + alpha ^ (1 / 3 : ℝ) ≤ 1)
    (actual_deviation :
      deviation ≤
        (34 / Real.sqrt
            (64 * Real.sqrt eta + alpha ^ (1 / 3 : ℝ))) *
              (64 * Real.sqrt eta + alpha ^ (1 / 3 : ℝ)) +
          4 * (alpha ^ (1 / 12 : ℝ)) ^ 2 +
          unconditionalPrefactorBucketCoefficient *
            Real.sqrt
              (64 * Real.sqrt eta + alpha ^ (1 / 3 : ℝ))) :
    Real.sqrt deviation ≤
      (4 * Real.sqrt
        (34 + unconditionalPrefactorBucketCoefficient) + 2) *
        (alpha ^ (1 / 12 : ℝ) +
          (32 * eta) ^ (1 / 12 : ℝ)) := by
  let k : ℝ :=
    4 * Real.sqrt (34 + unconditionalPrefactorBucketCoefficient) + 2
  let R : ℝ :=
    alpha ^ (1 / 12 : ℝ) + (32 * eta) ^ (1 / 12 : ℝ)
  have k_nonnegative : 0 ≤ k := by
    dsimp [k]
    positivity
  have scaled :=
    unconditionalSmallSource_eta_scaled_root eta eta_nonnegative
  have envelope := unconditionalPrefactor_smallHazard_twelfthRoot_le
    eta_nonnegative alpha_positive small
  change Real.sqrt deviation ≤ k * R
  calc
    Real.sqrt deviation ≤
        Real.sqrt
          ((34 / Real.sqrt
              (64 * Real.sqrt eta + alpha ^ (1 / 3 : ℝ))) *
                (64 * Real.sqrt eta + alpha ^ (1 / 3 : ℝ)) +
            4 * (alpha ^ (1 / 12 : ℝ)) ^ 2 +
            unconditionalPrefactorBucketCoefficient *
              Real.sqrt
                (64 * Real.sqrt eta + alpha ^ (1 / 3 : ℝ))) :=
      Real.sqrt_le_sqrt actual_deviation
    _ ≤ k * (eta ^ (1 / 12 : ℝ) +
        alpha ^ (1 / 12 : ℝ)) := by
      simpa [k] using envelope
    _ ≤ k * R := by
      apply mul_le_mul_of_nonneg_left _ k_nonnegative
      dsimp [R]
      linarith

theorem unconditionalSmallSourcePhysicalLoss
    (K eta alpha deviation clipping : ℝ)
    (constant :
      1024 + 8 *
          (4 * Real.sqrt
            (34 + unconditionalPrefactorBucketCoefficient) + 2) ≤ K)
    (eta_nonnegative : 0 ≤ eta)
    (alpha_positive : 0 < alpha)
    (alpha_bounded : alpha ≤ 1)
    (small :
      64 * Real.sqrt eta + alpha ^ (1 / 3 : ℝ) ≤ 1)
    (actual_deviation :
      deviation ≤
        (34 / Real.sqrt
            (64 * Real.sqrt eta + alpha ^ (1 / 3 : ℝ))) *
              (64 * Real.sqrt eta + alpha ^ (1 / 3 : ℝ)) +
          4 * (alpha ^ (1 / 12 : ℝ)) ^ 2 +
          unconditionalPrefactorBucketCoefficient *
            Real.sqrt
              (64 * Real.sqrt eta + alpha ^ (1 / 3 : ℝ)))
    (actual_clipping :
      clipping ≤
        16 * eta + 8 * (3 * alpha ^ (1 / 3 : ℝ) / 2)) :
    (64 * Real.sqrt eta + alpha ^ (1 / 3 : ℝ) +
        (alpha ^ (1 / 3 : ℝ)) ^ 2) +
      4 * Real.sqrt deviation + 4 * Real.sqrt clipping ≤
        K * (alpha ^ (1 / 12 : ℝ) +
          (32 * eta) ^ (1 / 12 : ℝ)) := by
  let δ : ℝ := alpha ^ (1 / 3 : ℝ)
  let R : ℝ :=
    alpha ^ (1 / 12 : ℝ) + (32 * eta) ^ (1 / 12 : ℝ)
  let k : ℝ :=
    4 * Real.sqrt (34 + unconditionalPrefactorBucketCoefficient) + 2
  have bounds := unconditionalSmallSource_root_estimates
    eta alpha eta_nonnegative alpha_positive alpha_bounded small
  change 0 ≤ R ∧ Real.sqrt eta ≤ R ∧ δ ≤ R ∧ δ ^ 2 ≤ R ∧
    Real.sqrt δ ≤ R at bounds
  have R_nonnegative := bounds.1
  have eta_sqrt_le_R := bounds.2.1
  have delta_le_R := bounds.2.2.1
  have delta_sq_le_R := bounds.2.2.2.1
  have clip_sqrt_le :=
    unconditionalSmallSource_clipping_sqrt_le
      eta alpha clipping eta_nonnegative alpha_positive alpha_bounded
      small actual_clipping
  change Real.sqrt clipping ≤ 8 * R at clip_sqrt_le
  have k_nonnegative : 0 ≤ k := by
    dsimp [k]
    positivity
  have deviation_sqrt_le :=
    unconditionalSmallSource_deviation_sqrt_le
      eta alpha deviation eta_nonnegative alpha_positive small
      actual_deviation
  change Real.sqrt deviation ≤ k * R at deviation_sqrt_le
  have source_loss :
      64 * Real.sqrt eta + δ + δ ^ 2 ≤ 66 * R := by
    nlinarith
  change
    (64 * Real.sqrt eta + δ + δ ^ 2) +
      4 * Real.sqrt deviation + 4 * Real.sqrt clipping ≤ K * R
  calc
    (64 * Real.sqrt eta + δ + δ ^ 2) +
        4 * Real.sqrt deviation + 4 * Real.sqrt clipping ≤
      66 * R + 4 * (k * R) + 4 * (8 * R) := by
        linarith
    _ ≤ (1024 + 8 * k) * R := by
      nlinarith [mul_nonneg k_nonnegative R_nonnegative]
    _ ≤ K * R := by
      apply mul_le_mul_of_nonneg_right _ R_nonnegative
      simpa [k] using constant

theorem unconditionalSmallSourcePhysicalRoundedLower
    (K eta alpha deviation clipping epsilon lam actual : ℝ)
    (constant :
      1024 + 8 *
          (4 * Real.sqrt
            (34 + unconditionalPrefactorBucketCoefficient) + 2) ≤ K)
    (eta_nonnegative : 0 ≤ eta)
    (alpha_positive : 0 < alpha)
    (alpha_bounded : alpha ≤ 1)
    (small :
      64 * Real.sqrt eta + alpha ^ (1 / 3 : ℝ) ≤ 1)
    (actual_deviation :
      deviation ≤
        (34 / Real.sqrt
            (64 * Real.sqrt eta + alpha ^ (1 / 3 : ℝ))) *
              (64 * Real.sqrt eta + alpha ^ (1 / 3 : ℝ)) +
          4 * (alpha ^ (1 / 12 : ℝ)) ^ 2 +
          unconditionalPrefactorBucketCoefficient *
            Real.sqrt
              (64 * Real.sqrt eta + alpha ^ (1 / 3 : ℝ)))
    (actual_clipping :
      clipping ≤
        16 * eta + 8 * (3 * alpha ^ (1 / 3 : ℝ) / 2))
    (lam_nonnegative : 0 ≤ lam)
    (actual_original_verifier :
      1 - epsilon / 2 - 5 * lam -
        ((64 * Real.sqrt eta + alpha ^ (1 / 3 : ℝ) +
            (alpha ^ (1 / 3 : ℝ)) ^ 2) +
          4 * Real.sqrt deviation + 4 * Real.sqrt clipping +
          2 * Real.sqrt (8 * eta)) ≤ actual) :
    roundedWinningLowerBound epsilon K alpha eta lam ≤ actual := by
  let R : ℝ :=
    alpha ^ (1 / 12 : ℝ) + (32 * eta) ^ (1 / 12 : ℝ)
  have loss := unconditionalSmallSourcePhysicalLoss
    K eta alpha deviation clipping constant eta_nonnegative
    alpha_positive alpha_bounded small actual_deviation actual_clipping
  have K_nonnegative : 0 ≤ K := by
    have root_nonnegative :=
      Real.sqrt_nonneg (34 + unconditionalPrefactorBucketCoefficient)
    linarith
  have R_nonnegative : 0 ≤ R := by
    dsimp [R]
    exact add_nonneg
      (Real.rpow_nonneg alpha_positive.le _)
      (Real.rpow_nonneg (by positivity) _)
  have ceiling_nonnegative : 0 ≤ universalErrorCeiling K := by
    unfold universalErrorCeiling
    have root_nonnegative :=
      Real.rpow_nonneg (by norm_num : (0 : ℝ) ≤ 2) (1 / 6 : ℝ)
    nlinarith [mul_nonneg K_nonnegative
      (show 0 ≤ 1 + (2 : ℝ) ^ (1 / 6 : ℝ) by positivity)]
  have transfer_nonnegative : 0 ≤ universalErrorCeiling K * lam :=
    mul_nonneg ceiling_nonnegative lam_nonnegative
  have quantum_nonnegative : 0 ≤ K * R :=
    mul_nonneg K_nonnegative R_nonnegative
  change
    (64 * Real.sqrt eta + alpha ^ (1 / 3 : ℝ) +
        (alpha ^ (1 / 3 : ℝ)) ^ 2) +
      4 * Real.sqrt deviation + 4 * Real.sqrt clipping ≤ K * R
      at loss
  unfold roundedWinningLowerBound totalSamplingLoss
  change
    1 - epsilon / 2 -
      (5 * lam +
        2 * (K * R + Real.sqrt (8 * eta) +
          universalErrorCeiling K * lam)) ≤ actual
  nlinarith

end

noncomputable section

open scoped BigOperators ComplexOrder Kronecker MatrixOrder
  Matrix.Norms.L2Operator InnerProductSpace

open QuantumParallelRepetition.ClassicalSampling

attribute [local instance] Classical.propDecidable

theorem unconditionalSourcePhysicalRoundingUniversalConstant_ge :
    128 ≤ unconditionalSourcePhysicalRoundingUniversalConstant := by
  unfold unconditionalSourcePhysicalRoundingUniversalConstant
  nlinarith [Real.sqrt_nonneg
    (34 + unconditionalPrefactorBucketCoefficient)]

theorem unconditionalSourcePhysicalRounding_largeVerifierBound
    (K eta alpha lam epsilon : ℝ)
    (constant : 128 ≤ K)
    (eta_nonnegative : 0 ≤ eta)
    (alpha_positive : 0 < alpha)
    (alpha_bounded : alpha ≤ 1)
    (lam_nonnegative : 0 ≤ lam)
    (epsilon_nonnegative : 0 ≤ epsilon)
    (large : 1 < 64 * Real.sqrt eta + alpha ^ (1 / 3 : ℝ)) :
    roundedWinningLowerBound epsilon K alpha eta lam ≤ 0 := by
  have eta_root_nonnegative : 0 ≤ eta ^ (1 / 12 : ℝ) :=
    Real.rpow_nonneg eta_nonnegative _
  have alpha_root_nonnegative : 0 ≤ alpha ^ (1 / 12 : ℝ) :=
    Real.rpow_nonneg alpha_positive.le _
  have scaled_nonnegative : 0 ≤ (32 * eta) ^ (1 / 12 : ℝ) :=
    Real.rpow_nonneg (by positivity) _
  have root_scaled : eta ^ (1 / 12 : ℝ) ≤
      (32 * eta) ^ (1 / 12 : ℝ) := by
    apply Real.rpow_le_rpow eta_nonnegative
    · nlinarith
    · norm_num
  have root_sum_nonnegative :
      0 ≤ eta ^ (1 / 12 : ℝ) + alpha ^ (1 / 12 : ℝ) :=
    add_nonneg eta_root_nonnegative alpha_root_nonnegative
  have constant_nonnegative : 0 ≤ K := by linarith
  have universal_nonnegative : 0 ≤ universalErrorCeiling K := by
    unfold universalErrorCeiling
    positivity
  have hazard :=
    unconditionalPrefactor_largeVerifier_twelfthRoot_le
      eta_nonnegative alpha_positive alpha_bounded large
  have quantum :
      2 ≤ K *
        (alpha ^ (1 / 12 : ℝ) + (32 * eta) ^ (1 / 12 : ℝ)) := by
    calc
      (2 : ℝ) ≤
          128 * (eta ^ (1 / 12 : ℝ) + alpha ^ (1 / 12 : ℝ)) :=
        hazard
      _ ≤ K *
          (alpha ^ (1 / 12 : ℝ) + (32 * eta) ^ (1 / 12 : ℝ)) := by
        apply mul_le_mul constant
        · linarith
        · exact root_sum_nonnegative
        · exact constant_nonnegative
  have lam_error : 0 ≤ universalErrorCeiling K * lam :=
    mul_nonneg universal_nonnegative lam_nonnegative
  have sqrt_error : 0 ≤ Real.sqrt (8 * eta) :=
    Real.sqrt_nonneg _
  unfold roundedWinningLowerBound totalSamplingLoss
  nlinarith

theorem unconditionalSourcePhysicalRounding_exists_large
    {X Y A B : Type}
    [Fintype X] [Fintype Y] [Fintype A] [Fintype B]
    (G : Game X Y A B)
    (n : ℕ) (S : Strategy (G.repeat n))
    (D : Finset (Fin n))
    (remaining : 0 < (Finset.univ \ D).card)
    (positive : 0 < repeatedPostselectionMass G n S D)
    (K alpha gamma : ℝ)
    (constant : 128 ≤ K)
    (alpha_positive : 0 < alpha)
    (alpha_bounded : alpha ≤ 1)
    (gamma_positive : 0 < gamma)
    (large : 1 < 64 * Real.sqrt (martingaleRate G n S D) +
      alpha ^ (1 / 3 : ℝ)) :
    ∃ rounded : Strategy G,
      roundedWinningLowerBound (1 - entangledValue G)
          K alpha (martingaleRate G n S D)
          (exactSourcePinskerRate G n S D + gamma) ≤
        rounded.winProbability := by
  classical
  obtain ⟨alice, bob⟩ :=
    exactSourceAnswerTypes_nonempty_of_remaining
      G n S D remaining
  let rounded : Strategy G := pdfConstantStrategy G
    (Classical.choice alice) (Classical.choice bob)
  refine ⟨rounded, ?_⟩
  have eta_nonnegative :=
    martingaleRate_nonneg G n S D remaining positive
  have epsilon_nonnegative : 0 ≤ 1 - entangledValue G := by
    linarith [entangledValue_le_one G]
  have pinsker_nonnegative :
      0 ≤ exactSourcePinskerRate G n S D := by
    unfold exactSourcePinskerRate
    positivity
  have source_bound :=
    unconditionalSourcePhysicalRounding_largeVerifierBound
      K (martingaleRate G n S D) alpha
      (exactSourcePinskerRate G n S D + gamma)
      (1 - entangledValue G)
      constant eta_nonnegative alpha_positive alpha_bounded
      (by linarith) epsilon_nonnegative large
  exact source_bound.trans rounded.winProbability_nonneg

theorem unconditionalSourcePhysicalRounding_smallRoundedLower
    {X Y A B : Type}
    [Fintype X] [Fintype Y] [Fintype A] [Fintype B]
    (G : Game X Y A B)
    (n : ℕ) (S : Strategy (G.repeat n))
    (D : Finset (Fin n))
    (remaining : 0 < (Finset.univ \ D).card)
    (positive : 0 < repeatedPostselectionMass G n S D)
    (alpha gamma deviation clipping : ℝ)
    (alpha_positive : 0 < alpha)
    (alpha_bounded : alpha ≤ 1)
    (gamma_positive : 0 < gamma)
    (small : 64 * Real.sqrt (martingaleRate G n S D) +
      alpha ^ (1 / 3 : ℝ) ≤ 1)
    (actual_deviation :
      deviation ≤
        (34 / Real.sqrt
            (64 * Real.sqrt (martingaleRate G n S D) +
              alpha ^ (1 / 3 : ℝ))) *
              (64 * Real.sqrt (martingaleRate G n S D) +
                alpha ^ (1 / 3 : ℝ)) +
          4 * (alpha ^ (1 / 12 : ℝ)) ^ 2 +
          unconditionalPrefactorBucketCoefficient *
            Real.sqrt
              (64 * Real.sqrt (martingaleRate G n S D) +
                alpha ^ (1 / 3 : ℝ)))
    (actual_clipping :
      clipping ≤
        16 * martingaleRate G n S D +
          8 * (3 * alpha ^ (1 / 3 : ℝ) / 2))
    (rounded : Strategy G)
    (actual_original_verifier :
      1 - (1 - entangledValue G) / 2 -
          5 * (exactSourcePinskerRate G n S D + gamma) -
        ((64 * Real.sqrt (martingaleRate G n S D) +
            alpha ^ (1 / 3 : ℝ) +
            (alpha ^ (1 / 3 : ℝ)) ^ 2) +
          4 * Real.sqrt deviation + 4 * Real.sqrt clipping +
          2 * Real.sqrt (8 * martingaleRate G n S D)) ≤
        rounded.winProbability) :
    roundedWinningLowerBound (1 - entangledValue G)
        unconditionalSourcePhysicalRoundingUniversalConstant
        alpha (martingaleRate G n S D)
        (exactSourcePinskerRate G n S D + gamma) ≤
      rounded.winProbability := by
  apply unconditionalSmallSourcePhysicalRoundedLower
    unconditionalSourcePhysicalRoundingUniversalConstant
    (martingaleRate G n S D) alpha deviation clipping
    (1 - entangledValue G)
    (exactSourcePinskerRate G n S D + gamma)
    rounded.winProbability
  · unfold unconditionalSourcePhysicalRoundingUniversalConstant
    exact le_rfl
  · exact martingaleRate_nonneg G n S D remaining positive
  · exact alpha_positive
  · exact alpha_bounded
  · exact small
  · exact actual_deviation
  · exact actual_clipping
  · have pinsker_nonnegative :
        0 ≤ exactSourcePinskerRate G n S D := by
      unfold exactSourcePinskerRate
      positivity
    linarith
  · exact actual_original_verifier

theorem
    unconditionalSourcePhysicalRounding_smallRoundedLower_of_stoppedVerifier
    {X Y A B : Type}
    [Fintype X] [Fintype Y] [Fintype A] [Fintype B]
    (G : Game X Y A B)
    (n : ℕ) (S : Strategy (G.repeat n))
    (D : Finset (Fin n))
    (remaining : 0 < (Finset.univ \ D).card)
    (positive : 0 < repeatedPostselectionMass G n S D)
    (alpha gamma deviation clipping : ℝ)
    (alpha_positive : 0 < alpha)
    (alpha_bounded : alpha ≤ 1)
    (gamma_positive : 0 < gamma)
    (small : 64 * Real.sqrt (martingaleRate G n S D) +
      alpha ^ (1 / 3 : ℝ) ≤ 1)
    (actual_deviation :
      deviation ≤
        (34 / Real.sqrt
            (64 * Real.sqrt (martingaleRate G n S D) +
              alpha ^ (1 / 3 : ℝ))) *
              (64 * Real.sqrt (martingaleRate G n S D) +
                alpha ^ (1 / 3 : ℝ)) +
          4 * (alpha ^ (1 / 12 : ℝ)) ^ 2 +
          unconditionalPrefactorBucketCoefficient *
            Real.sqrt
              (64 * Real.sqrt (martingaleRate G n S D) +
                alpha ^ (1 / 3 : ℝ)))
    (actual_clipping :
      clipping ≤
        16 * martingaleRate G n S D +
          8 * (3 * alpha ^ (1 / 3 : ℝ) / 2))
    (rounded : Strategy G)
    (stopped_verifier :
      1 - (1 - entangledValue G) / 2 -
          5 * (exactSourcePinskerRate G n S D + gamma) -
        ((64 * Real.sqrt (martingaleRate G n S D) +
            alpha ^ (1 / 3 : ℝ) +
            (alpha ^ (1 / 3 : ℝ)) ^ 2) +
          4 * Real.sqrt deviation + 2 * Real.sqrt clipping) ≤
        rounded.winProbability) :
    roundedWinningLowerBound (1 - entangledValue G)
        unconditionalSourcePhysicalRoundingUniversalConstant
        alpha (martingaleRate G n S D)
        (exactSourcePinskerRate G n S D + gamma) ≤
      rounded.winProbability := by
  apply unconditionalSourcePhysicalRounding_smallRoundedLower
    G n S D remaining positive alpha gamma deviation clipping
    alpha_positive alpha_bounded gamma_positive small
    actual_deviation actual_clipping rounded
  nlinarith [Real.sqrt_nonneg clipping,
    Real.sqrt_nonneg (8 * martingaleRate G n S D)]

theorem unconditionalSourceOneGameRounding_uniform_of_small
    (small_rounding :
      ∀ {X Y A B : Type}
        [Fintype X] [Fintype Y] [Fintype A] [Fintype B]
        (G : Game X Y A B)
        (n : ℕ) (S : Strategy (G.repeat n))
        (D : Finset (Fin n)),
        0 < (Finset.univ \ D).card →
        0 < repeatedPostselectionMass G n S D →
        ∀ (alpha gamma : ℝ),
          0 < alpha → alpha ≤ 1 → 0 < gamma →
          64 * Real.sqrt (martingaleRate G n S D) +
              alpha ^ (1 / 3 : ℝ) ≤ 1 →
          uniformRemainingFailure
              (strategyEventLaw (G.repeat n) S)
              (repeatedCoordinateWin G n) D <
            (1 - entangledValue G) / 2 →
          ∃ rounded : Strategy G,
            roundedWinningLowerBound (1 - entangledValue G)
                unconditionalSourcePhysicalRoundingUniversalConstant
                alpha (martingaleRate G n S D)
                (exactSourcePinskerRate G n S D + gamma) ≤
              rounded.winProbability) :
    ∃ K : ℝ, 1 ≤ K ∧
      ∀ {X Y A B : Type}
        [Fintype X] [Fintype Y] [Fintype A] [Fintype B]
        (G : Game X Y A B)
        (n : ℕ) (S : Strategy (G.repeat n))
        (D : Finset (Fin n)),
        0 < (Finset.univ \ D).card →
        0 < repeatedPostselectionMass G n S D →
        ∀ (alpha gamma : ℝ),
          0 < alpha → alpha ≤ 1 → 0 < gamma →
          uniformRemainingFailure
              (strategyEventLaw (G.repeat n) S)
              (repeatedCoordinateWin G n) D <
            (1 - entangledValue G) / 2 →
          ∃ rounded : Strategy G,
            roundedWinningLowerBound (1 - entangledValue G)
                K alpha (martingaleRate G n S D)
                (exactSourcePinskerRate G n S D + gamma) ≤
              rounded.winProbability := by
  refine ⟨unconditionalSourcePhysicalRoundingUniversalConstant,
    ?_, ?_⟩
  · linarith [unconditionalSourcePhysicalRoundingUniversalConstant_ge]
  intro X Y A B _ _ _ _ G n S D remaining positive
    alpha gamma alpha_positive alpha_bounded gamma_positive failure
  by_cases small :
      64 * Real.sqrt (martingaleRate G n S D) +
        alpha ^ (1 / 3 : ℝ) ≤ 1
  · exact small_rounding G n S D remaining positive alpha gamma
      alpha_positive alpha_bounded gamma_positive small failure
  · exact unconditionalSourcePhysicalRounding_exists_large
      G n S D remaining positive
      unconditionalSourcePhysicalRoundingUniversalConstant
      alpha gamma
      unconditionalSourcePhysicalRoundingUniversalConstant_ge
      alpha_positive alpha_bounded gamma_positive (lt_of_not_ge small)

end

noncomputable section

open WithLp
open scoped BigOperators Kronecker ComplexOrder MatrixOrder
  Matrix.Norms.L2Operator InnerProductSpace

open QuantumParallelRepetition.ClassicalSampling

theorem unconditionalSourcePhysicalRounding_exists_small
    {X Y A B : Type}
    [Fintype X] [Fintype Y] [Fintype A] [Fintype B]
    (G : Game X Y A B)
    (n : ℕ) (S : Strategy (G.repeat n))
    (D : Finset (Fin n))
    (remaining : 0 < (Finset.univ \ D).card)
    (positive : 0 < repeatedPostselectionMass G n S D)
    (alpha gamma : ℝ)
    (alpha_positive : 0 < alpha)
    (alpha_bounded : alpha ≤ 1)
    (gamma_positive : 0 < gamma)
    (small : 64 * Real.sqrt (martingaleRate G n S D) +
      alpha ^ (1 / 3 : ℝ) ≤ 1)
    (failure :
      uniformRemainingFailure
        (strategyEventLaw (G.repeat n) S)
        (repeatedCoordinateWin G n) D <
        (1 - entangledValue G) / 2) :
    ∃ rounded : Strategy G,
      roundedWinningLowerBound
          (1 - entangledValue G)
          unconditionalSourcePhysicalRoundingUniversalConstant
          alpha (martingaleRate G n S D)
          (exactSourcePinskerRate G n S D + gamma) ≤
        rounded.winProbability := by
  obtain ⟨deviation, clipping, rounded,
      deviation_bound, clipping_bound, stopped⟩ :=
    unconditionalActualFairSourceRoundingData_exists_stoppedVerifier
      G n S D remaining positive alpha gamma
      alpha_positive alpha_bounded gamma_positive small failure
  refine ⟨rounded, ?_⟩
  exact
    unconditionalSourcePhysicalRounding_smallRoundedLower_of_stoppedVerifier
      G n S D remaining positive alpha gamma deviation clipping
      alpha_positive alpha_bounded gamma_positive small
      deviation_bound clipping_bound rounded stopped

theorem unconditionalSourceOneGameRounding_uniform :
    ∃ K : ℝ, 1 ≤ K ∧
      ∀ {X Y A B : Type}
        [Fintype X] [Fintype Y] [Fintype A] [Fintype B]
        (G : Game X Y A B)
        (n : ℕ) (S : Strategy (G.repeat n))
        (D : Finset (Fin n)),
        0 < (Finset.univ \ D).card →
        0 < repeatedPostselectionMass G n S D →
        ∀ (alpha gamma : ℝ),
          0 < alpha → alpha ≤ 1 → 0 < gamma →
          uniformRemainingFailure
              (strategyEventLaw (G.repeat n) S)
              (repeatedCoordinateWin G n) D <
            (1 - entangledValue G) / 2 →
          ∃ rounded : Strategy G,
            roundedWinningLowerBound (1 - entangledValue G)
                K alpha (martingaleRate G n S D)
                (exactSourcePinskerRate G n S D + gamma) ≤
              rounded.winProbability :=
  unconditionalSourceOneGameRounding_uniform_of_small
    unconditionalSourcePhysicalRounding_exists_small

end

noncomputable section

theorem pdf_distributionUniformExponential_unconditional :
    ∃ c : ℝ, 0 < c ∧
      ∀ {X Y A B : Type}
        [Fintype X] [Fintype Y] [Fintype A] [Fintype B]
        (G : Game X Y A B),
        Nonempty A → Nonempty B →
        0 < 1 - entangledValue G →
        ∀ n : ℕ, 0 < n →
          repeatedEntangledValue G n ≤
            Real.exp
              (-(c *
                ((1 - entangledValue G) ^ 13 /
                  ((1 - entangledValue G) +
                    Real.log
                      ((Fintype.card A : ℝ) *
                        (Fintype.card B : ℝ))))) * (n : ℝ)) :=
  pdf_distributionUniformExponential_of_uniform_source_rounding
    unconditionalSourceOneGameRounding_uniform

end

end QuantumParallelRepetition


open QuantumParallelRepetition
open scoped ComplexOrder Matrix BigOperators InnerProductSpace
open Complex Matrix Finset

theorem solution :
    ∃ c : ℝ, 0 < c ∧
      ∀ {X Y A B : Type}
        [Fintype X] [Fintype Y] [Fintype A] [Fintype B]
        (G : Game X Y A B),
        Nonempty A → Nonempty B →
        0 < 1 - entangledValue G →
        ∀ n : ℕ, 0 < n →
          repeatedEntangledValue G n ≤
            Real.exp
              (-(c *
                ((1 - entangledValue G) ^ 13 /
                  ((1 - entangledValue G) +
                    Real.log
                      ((Fintype.card A : ℝ) *
                        (Fintype.card B : ℝ))))) * (n : ℝ)) :=
  pdf_distributionUniformExponential_unconditional
