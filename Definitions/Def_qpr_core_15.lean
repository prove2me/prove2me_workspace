import Definitions.Def_quantum_parallel_repetition_game
import Definitions.Def_qpr_core_14
import Theorems.Thm_QuantumParallelRepetition_fullHistoryRemaining_insert_subset
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

variable {X Y A B : Type*}
variable [Fintype X] [Fintype Y] [Fintype A] [Fintype B]

def fullCoordinateBobQuestionFilter
    (G : Game X Y A B) (n : ℕ) (S : Strategy (G.repeat n))
    (D L : Finset (Fin n)) (i : Fin n)
    (r : FullCoordinateRevealHistory X Y n D L i)
    (β : {j : Fin n // j ∈ D} → B) (y : Y) :
    Matrix S.Bob S.Bob ℂ :=
  fullHistoryBobFilter G n S D L
    (fullCoordinateOldHistory D L i r y) β

def fullCoordinateBobMeanFilter
    (G : Game X Y A B) (n : ℕ) (S : Strategy (G.repeat n))
    (D L : Finset (Fin n)) (i : Fin n)
    (r : FullCoordinateRevealHistory X Y n D L i)
    (β : {j : Fin n // j ∈ D} → B) (x : X) :
    Matrix S.Bob S.Bob ℂ :=
  fullHistoryBobFilter G n S D (insert i L)
    (fullCoordinateNewHistory D L i r x) β

end

noncomputable section

open Matrix
open scoped BigOperators Kronecker ComplexOrder MatrixOrder

set_option backward.isDefEq.respectTransparency false
set_option maxHeartbeats 1200000

def fullCoordinateAssembleHiddenAlice
    {X : Type*} {n : ℕ}
    (D L : Finset (Fin n)) (i : Fin n)
    (x : X)
    (hidden : {j : Fin n //
      j ∈ fullHistoryRemaining n D (insert i L)} → X) :
    {j : Fin n // j ∈ fullHistoryRemaining n D L} → X := by
  classical
  intro j
  by_cases hj : (j : Fin n) = i
  · exact x
  · exact hidden ⟨j, by
      have hjD : (j : Fin n) ∉ D :=
        (Finset.mem_sdiff.mp
          (Finset.mem_sdiff.mp j.property).1).2
      have hjL : (j : Fin n) ∉ L :=
        (Finset.mem_sdiff.mp j.property).2
      simp [fullHistoryRemaining, hjD, hjL, hj]⟩

def fullCoordinateHiddenAliceEquiv
    {X : Type*} [Fintype X] {n : ℕ}
    (D L : Finset (Fin n)) (i : Fin n)
    (hiD : i ∉ D) (hiL : i ∉ L) :
    ({j : Fin n // j ∈ fullHistoryRemaining n D L} → X) ≃
      X × ({j : Fin n //
        j ∈ fullHistoryRemaining n D (insert i L)} → X) where
  toFun hidden :=
    (hidden ⟨i, by simp [fullHistoryRemaining, hiD, hiL]⟩,
      fun j => hidden
        ⟨j, fullHistoryRemaining_insert_subset D L i j.property⟩)
  invFun t := fullCoordinateAssembleHiddenAlice D L i t.1 t.2
  left_inv hidden := by
    funext j
    by_cases hj : (j : Fin n) = i
    · have hjsub :
          j = (⟨i, by simp [fullHistoryRemaining, hiD, hiL]⟩ :
            {j : Fin n // j ∈ fullHistoryRemaining n D L}) :=
        Subtype.ext hj
      subst j
      simp [fullCoordinateAssembleHiddenAlice]
    · simp [fullCoordinateAssembleHiddenAlice, hj]
  right_inv t := by
    rcases t with ⟨x, hidden⟩
    apply Prod.ext
    · simp [fullCoordinateAssembleHiddenAlice]
    · funext j
      have hj : (j : Fin n) ≠ i := by
        intro he
        have hnot : (j : Fin n) ∉ insert i L :=
          (Finset.mem_sdiff.mp j.property).2
        apply hnot
        simp [he]
      simp [fullCoordinateAssembleHiddenAlice, hj]

def fullCoordinateAssembleHiddenBob
    {Y : Type*} {n : ℕ}
    (L : Finset (Fin n)) (i : Fin n)
    (y : Y) (hidden : {j : Fin n // j ∈ L} → Y) :
    {j : Fin n // j ∈ insert i L} → Y := by
  classical
  intro j
  by_cases hj : (j : Fin n) = i
  · exact y
  · exact hidden
      ⟨j, (Finset.mem_insert.mp j.property).resolve_left hj⟩

def fullCoordinateHiddenBobEquiv
    {Y : Type*} [Fintype Y] {n : ℕ}
    (L : Finset (Fin n)) (i : Fin n) (hiL : i ∉ L) :
    ({j : Fin n // j ∈ insert i L} → Y) ≃
      Y × ({j : Fin n // j ∈ L} → Y) where
  toFun hidden :=
    (hidden ⟨i, Finset.mem_insert_self i L⟩,
      fun j => hidden ⟨j, Finset.mem_insert_of_mem j.property⟩)
  invFun t := fullCoordinateAssembleHiddenBob L i t.1 t.2
  left_inv hidden := by
    funext j
    by_cases hj : (j : Fin n) = i
    · have hjsub :
          j = (⟨i, Finset.mem_insert_self i L⟩ :
            {j : Fin n // j ∈ insert i L}) :=
        Subtype.ext hj
      subst j
      simp [fullCoordinateAssembleHiddenBob]
    · simp [fullCoordinateAssembleHiddenBob, hj]
  right_inv t := by
    rcases t with ⟨y, hidden⟩
    apply Prod.ext
    · simp [fullCoordinateAssembleHiddenBob]
    · funext j
      have hj : (j : Fin n) ≠ i := by
        intro he
        exact hiL (he ▸ j.property)
      simp [fullCoordinateAssembleHiddenBob, hj]

section ConditionalJensen

variable {X Y A B : Type*}
variable [Fintype X] [Fintype Y] [Fintype A] [Fintype B]

def fullCoordinateAliceEntropyIncrement
    (G : Game X Y A B) (n : ℕ) (S : Strategy (G.repeat n))
    (D L : Finset (Fin n)) (i : Fin n)
    (r : FullCoordinateRevealHistory X Y n D L i)
    (α : {j : Fin n // j ∈ D} → A)
    (β : {j : Fin n // j ∈ D} → B) : ℝ :=
  ∑ y : Y, G.marginalY y *
    bornTracePairing S.state.matrix
      (conditionalAliceAverage G
        (fun x => cfc (fun z : ℝ => z * Real.log z)
          (fullCoordinateAliceQuestionFilter G n S D L i r α x)) y -
        cfc (fun z : ℝ => z * Real.log z)
          (fullCoordinateAliceMeanFilter G n S D L i r α y))
      (fullCoordinateBobQuestionFilter G n S D L i r β y)

end ConditionalJensen

end

noncomputable section

open Matrix
open scoped BigOperators Kronecker ComplexOrder MatrixOrder

set_option backward.isDefEq.respectTransparency false
set_option maxHeartbeats 1500000

variable {X Y A B : Type*}
variable [Fintype X] [Fintype Y] [Fintype A] [Fintype B]

def fullCoordinateBaseWinIndicator
    (G : Game X Y A B) {n : ℕ}
    (D L : Finset (Fin n)) (i : Fin n)
    (r : FullCoordinateRevealHistory X Y n D L i)
    (α : {j : Fin n // j ∈ D} → A)
    (β : {j : Fin n // j ∈ D} → B) : ℝ := by
  classical
  exact if ∀ j : {j : Fin n // j ∈ D},
    G.predicate (r.aliceConditioned j) (r.bobConditioned j)
      (α j) (β j) = true then 1 else 0

def fullCoordinateAliceTotalEntropyIncrement
    (G : Game X Y A B) (n : ℕ) (S : Strategy (G.repeat n))
    (D L : Finset (Fin n)) (i : Fin n) : ℝ :=
  ∑ r : FullCoordinateRevealHistory X Y n D L i,
  ∑ α : {j : Fin n // j ∈ D} → A,
  ∑ β : {j : Fin n // j ∈ D} → B,
    fullCoordinateBaseWeight G D L i r *
      fullCoordinateBaseWinIndicator G D L i r α β *
      fullCoordinateAliceEntropyIncrement G n S D L i r α β

end

noncomputable section

open scoped BigOperators

abbrev SourceRemainingCoordinate {n : ℕ} (D : Finset (Fin n)) :=
  ↥(Finset.univ \ D)

abbrev SourceRemainingPermutation {n : ℕ} (D : Finset (Fin n)) :=
  Equiv.Perm (SourceRemainingCoordinate D)

def sourceRemainingPermutationRank
    {n : ℕ} (D : Finset (Fin n))
    (π : SourceRemainingPermutation D) :
    SourceRemainingCoordinate D ≃ Fin (Finset.univ \ D).card :=
  π.symm.trans (Finset.equivFin (Finset.univ \ D))

def sourceRemainingPermutationCoordinateSubtype
    {n : ℕ} (D : Finset (Fin n))
    (π : SourceRemainingPermutation D)
    (k : Fin (Finset.univ \ D).card) :
    SourceRemainingCoordinate D :=
  (sourceRemainingPermutationRank D π).symm k

def sourceRemainingPermutationCoordinate
    {n : ℕ} (D : Finset (Fin n))
    (π : SourceRemainingPermutation D)
    (k : Fin (Finset.univ \ D).card) : Fin n :=
  (sourceRemainingPermutationCoordinateSubtype D π k).val

def sourceRemainingPermutationPrefixSubtype
    {n : ℕ} (D : Finset (Fin n))
    (π : SourceRemainingPermutation D)
    (k : Fin ((Finset.univ \ D).card + 1)) :
    Finset (SourceRemainingCoordinate D) := by
  classical
  exact Finset.univ.filter fun i =>
    (sourceRemainingPermutationRank D π i).val < k.val

def sourceRemainingPermutationPrefix
    {n : ℕ} (D : Finset (Fin n))
    (π : SourceRemainingPermutation D)
    (k : Fin ((Finset.univ \ D).card + 1)) : Finset (Fin n) := by
  classical
  exact (sourceRemainingPermutationPrefixSubtype D π k).image
    (fun i : SourceRemainingCoordinate D => i.val)

section ActualEntropyBudgets

variable {X Y A B : Type*}
variable [Fintype X] [Fintype Y] [Fintype A] [Fintype B]

def sourcePermutationAliceEntropyIncrement
    (G : Game X Y A B) (n : ℕ) (S : Strategy (G.repeat n))
    (D : Finset (Fin n)) (π : SourceRemainingPermutation D)
    (k : Fin (Finset.univ \ D).card) : ℝ :=
  fullCoordinateAliceTotalEntropyIncrement G n S D
    (sourceRemainingPermutationPrefix D π k.castSucc)
    (sourceRemainingPermutationCoordinate D π k)

def sourceUniformPermutationAverage
    {n : ℕ} (D : Finset (Fin n))
    (f : SourceRemainingPermutation D →
      Fin (Finset.univ \ D).card → ℝ) : ℝ :=
  (∑ π : SourceRemainingPermutation D,
    ∑ k : Fin (Finset.univ \ D).card, f π k) /
    ((Fintype.card (SourceRemainingPermutation D) : ℝ) *
      ((Finset.univ \ D).card : ℝ))

end ActualEntropyBudgets

end

noncomputable section

open scoped BigOperators

attribute [local instance] Classical.propDecidable

def exactLeft
    {M : Type*} [Fintype M] [DecidableEq M]
    (coordinate : M) (partition : M → Bool) : Finset M :=
  Finset.univ.filter fun j => j ≠ coordinate ∧ partition j = false

def exactRight
    {M : Type*} [Fintype M] [DecidableEq M]
    (coordinate : M) (partition : M → Bool) : Finset M :=
  Finset.univ.filter fun j => j ≠ coordinate ∧ partition j = true

structure ExactForwardSeed
    (M : Type*) [Fintype M] [DecidableEq M] where
  coordinate : M
  partition : M → Bool
  leftOrder : Equiv.Perm
    {j : M // j ∈ exactLeft coordinate partition}
  rightOrder : Equiv.Perm
    {j : M // j ∈ exactRight coordinate partition}
  leftCut : Fin ((exactLeft coordinate partition).card + 1)
  rightCut : Fin ((exactRight coordinate partition).card + 1)
  deriving Fintype

abbrev ExactRemainingSeed
    {n : ℕ} (D : Finset (Fin n)) :=
  ExactForwardSeed (SourceRemainingCoordinate D)

def exactLeftRank
    {M : Type*} [Fintype M] [DecidableEq M]
    (seed : ExactForwardSeed M) :
    {j : M // j ∈ exactLeft seed.coordinate seed.partition} ≃
      Fin (exactLeft seed.coordinate seed.partition).card :=
  seed.leftOrder.symm.trans
    (Finset.equivFin (exactLeft seed.coordinate seed.partition))

def exactRightRank
    {M : Type*} [Fintype M] [DecidableEq M]
    (seed : ExactForwardSeed M) :
    {j : M // j ∈ exactRight seed.coordinate seed.partition} ≃
      Fin (exactRight seed.coordinate seed.partition).card :=
  seed.rightOrder.symm.trans
    (Finset.equivFin (exactRight seed.coordinate seed.partition))

def exactLeftPrefix
    {M : Type*} [Fintype M] [DecidableEq M]
    (seed : ExactForwardSeed M) : Finset M :=
  (Finset.univ.filter
    (fun j : {j : M //
      j ∈ exactLeft seed.coordinate seed.partition} =>
      (exactLeftRank seed j).val < seed.leftCut.val)).image
        Subtype.val

def exactRightPrefix
    {M : Type*} [Fintype M] [DecidableEq M]
    (seed : ExactForwardSeed M) : Finset M :=
  (Finset.univ.filter
    (fun j : {j : M //
      j ∈ exactRight seed.coordinate seed.partition} =>
      (exactRightRank seed j).val < seed.rightCut.val)).image
        Subtype.val

def exactSeedWeight
    {M : Type*} [Fintype M] [DecidableEq M]
    (seed : ExactForwardSeed M) : ℝ :=
  (1 / (Fintype.card M : ℝ)) *
    (1 / (Fintype.card (M → Bool) : ℝ)) *
    (1 / (Fintype.card
      (Equiv.Perm
        {j : M // j ∈
          exactLeft seed.coordinate seed.partition}) : ℝ)) *
    (1 / (Fintype.card
      (Equiv.Perm
        {j : M // j ∈
          exactRight seed.coordinate seed.partition}) : ℝ)) *
    (1 / ((exactLeft
      seed.coordinate seed.partition).card + 1 : ℝ)) *
    (1 / ((exactRight
      seed.coordinate seed.partition).card + 1 : ℝ))

abbrev ExactSeedTuple
    (M : Type*) [Fintype M] [DecidableEq M] :=
  Σ i : M, Σ partition : M → Bool,
    (Equiv.Perm {j : M // j ∈ exactLeft i partition}) ×
    (Equiv.Perm {j : M // j ∈ exactRight i partition}) ×
    Fin ((exactLeft i partition).card + 1) ×
    Fin ((exactRight i partition).card + 1)

def exactSeedEquiv
    (M : Type*) [Fintype M] [DecidableEq M] :
    ExactForwardSeed M ≃ ExactSeedTuple M where
  toFun seed := ⟨seed.coordinate, seed.partition,
    seed.leftOrder, seed.rightOrder, seed.leftCut, seed.rightCut⟩
  invFun t :=
    ⟨t.1, t.2.1, t.2.2.1, t.2.2.2.1,
      t.2.2.2.2.1, t.2.2.2.2.2⟩
  left_inv seed := by
    cases seed
    rfl
  right_inv t := by
    rcases t with ⟨i, partition, leftOrder, rightOrder,
      leftCut, rightCut⟩
    rfl

end

noncomputable section

open WithLp
open scoped BigOperators ComplexOrder Kronecker MatrixOrder
  Matrix.Norms.L2Operator InnerProductSpace

variable {X Y A B : Type*}
variable [Fintype X] [Fintype Y] [Fintype A] [Fintype B]

def conditionedAliceCoordinateEffect
    (G : Game X Y A B) (n : ℕ) (S : Strategy (G.repeat n))
    (D : Finset (Fin n))
    (α : {j : Fin n // j ∈ D} → A)
    (xs : Fin n → X) (i : Fin n) (a : A) :
    Matrix S.Alice S.Alice ℂ := by
  classical
  exact ∑ answers : Fin n → A,
    if (∀ (j : Fin n) (hj : j ∈ D), answers j = α ⟨j, hj⟩) ∧
      answers i = a
    then (S.aliceMeasurement xs).operator answers
    else 0

def conditionedBobCoordinateEffect
    (G : Game X Y A B) (n : ℕ) (S : Strategy (G.repeat n))
    (D : Finset (Fin n))
    (β : {j : Fin n // j ∈ D} → B)
    (ys : Fin n → Y) (i : Fin n) (b : B) :
    Matrix S.Bob S.Bob ℂ := by
  classical
  exact ∑ answers : Fin n → B,
    if (∀ (j : Fin n) (hj : j ∈ D), answers j = β ⟨j, hj⟩) ∧
      answers i = b
    then (S.bobMeasurement ys).operator answers
    else 0

def fullHistoryAliceCoordinateEffect
    (G : Game X Y A B) (n : ℕ) (S : Strategy (G.repeat n))
    (D L : Finset (Fin n))
    (h : FullSubsetHistory X Y n D L)
    (α : {j : Fin n // j ∈ D} → A)
    (i : Fin n) (a : A) :
    Matrix S.Alice S.Alice ℂ :=
  ∑ hidden : {j : Fin n // j ∈ fullHistoryRemaining n D L} → X,
    fullHistoryHiddenAliceWeight G h hidden •
      conditionedAliceCoordinateEffect G n S D α
        (fullHistoryAliceQuestion h hidden) i a

def fullHistoryBobCoordinateEffect
    (G : Game X Y A B) (n : ℕ) (S : Strategy (G.repeat n))
    (D L : Finset (Fin n))
    (h : FullSubsetHistory X Y n D L)
    (β : {j : Fin n // j ∈ D} → B)
    (i : Fin n) (b : B) :
    Matrix S.Bob S.Bob ℂ :=
  ∑ hidden : {j : Fin n // j ∈ L} → Y,
    fullHistoryHiddenBobWeight G h hidden •
      conditionedBobCoordinateEffect G n S D β
        (fullHistoryBobQuestion h hidden) i b

def fullCoordinateAliceRefinementEffect
    (G : Game X Y A B) (n : ℕ) (S : Strategy (G.repeat n))
    (D L : Finset (Fin n)) (i : Fin n)
    (r : FullCoordinateRevealHistory X Y n D L i)
    (α : {j : Fin n // j ∈ D} → A)
    (x : X) (a : A) : Matrix S.Alice S.Alice ℂ :=
  fullHistoryAliceCoordinateEffect G n S D (insert i L)
    (fullCoordinateNewHistory D L i r x) α i a

def fullCoordinateBobRefinementEffect
    (G : Game X Y A B) (n : ℕ) (S : Strategy (G.repeat n))
    (D L : Finset (Fin n)) (i : Fin n)
    (r : FullCoordinateRevealHistory X Y n D L i)
    (β : {j : Fin n // j ∈ D} → B)
    (y : Y) (b : B) : Matrix S.Bob S.Bob ℂ :=
  fullHistoryBobCoordinateEffect G n S D L
    (fullCoordinateOldHistory D L i r y) β i b

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

structure ExactRevealHistory
    (X Y : Type*) [Fintype X] [Fintype Y]
    {n : ℕ} (D : Finset (Fin n))
    (seed : ExactRemainingSeed D) where
  aliceConditioned : {j : Fin n // j ∈ D} → X
  bobConditioned : {j : Fin n // j ∈ D} → Y
  aliceLeft :
    {j : SourceRemainingCoordinate D //
      j ∈ exactLeft seed.coordinate seed.partition} → X
  bobRight :
    {j : SourceRemainingCoordinate D //
      j ∈ exactRight seed.coordinate seed.partition} → Y
  bobLeftPrefix :
    {j : SourceRemainingCoordinate D //
      j ∈ exactLeftPrefix seed} → Y
  aliceRightPrefix :
    {j : SourceRemainingCoordinate D //
      j ∈ exactRightPrefix seed} → X

abbrev ExactRevealHistoryTuple
    (X Y : Type*) [Fintype X] [Fintype Y]
    {n : ℕ} (D : Finset (Fin n))
    (seed : ExactRemainingSeed D) :=
  ({j : Fin n // j ∈ D} → X) ×
  ({j : Fin n // j ∈ D} → Y) ×
  ({j : SourceRemainingCoordinate D //
      j ∈ exactLeft seed.coordinate seed.partition} → X) ×
  ({j : SourceRemainingCoordinate D //
      j ∈ exactRight seed.coordinate seed.partition} → Y) ×
  ({j : SourceRemainingCoordinate D //
      j ∈ exactLeftPrefix seed} → Y) ×
  ({j : SourceRemainingCoordinate D //
      j ∈ exactRightPrefix seed} → X)

def exactRevealHistoryEquiv
    {n : ℕ} (D : Finset (Fin n))
    (seed : ExactRemainingSeed D) :
    ExactRevealHistory X Y D seed ≃
      ExactRevealHistoryTuple X Y D seed where
  toFun h := ⟨h.aliceConditioned, h.bobConditioned,
    h.aliceLeft, h.bobRight, h.bobLeftPrefix, h.aliceRightPrefix⟩
  invFun t := ⟨t.1, t.2.1, t.2.2.1, t.2.2.2.1,
    t.2.2.2.2.1, t.2.2.2.2.2⟩
  left_inv h := by cases h; rfl
  right_inv t := by
    rcases t with ⟨ac, bc, al, br, bl, ar⟩
    rfl

noncomputable instance exactRevealHistoryFintype
    {n : ℕ} (D : Finset (Fin n))
    (seed : ExactRemainingSeed D) :
    Fintype (ExactRevealHistory X Y D seed) := by
  classical
  exact Fintype.ofEquiv (ExactRevealHistoryTuple X Y D seed)
    (exactRevealHistoryEquiv
      (X := X) (Y := Y) D seed).symm

abbrev ExactFullQuestion
    (X Y : Type*) (n : ℕ) :=
  (Fin n → X) × (Fin n → Y)

def exactRevealCode
    {n : ℕ} (D : Finset (Fin n))
    (seed : ExactRemainingSeed D)
    (q : ExactFullQuestion X Y n) :
    ExactRevealHistory X Y D seed where
  aliceConditioned j := q.1 j.val
  bobConditioned j := q.2 j.val
  aliceLeft j := q.1 j.val.val
  bobRight j := q.2 j.val.val
  bobLeftPrefix j := q.2 j.val.val
  aliceRightPrefix j := q.1 j.val.val

def exactPriorQuestionWeight
    (G : Game X Y A B) (n : ℕ)
    (q : ExactFullQuestion X Y n) : ℝ :=
  (G.repeat n).questionWeight q.1 q.2

def exactRevealMass
    (G : Game X Y A B) (n : ℕ)
    (D : Finset (Fin n))
    (seed : ExactRemainingSeed D)
    (history : ExactRevealHistory X Y D seed) : ℝ :=
  ∑ q : ExactFullQuestion X Y n,
    if exactRevealCode D seed q = history
    then exactPriorQuestionWeight G n q
    else 0

def exactAliceQuestionMass
    (G : Game X Y A B) (n : ℕ)
    (D : Finset (Fin n))
    (seed : ExactRemainingSeed D)
    (history : ExactRevealHistory X Y D seed)
    (x : X) : ℝ :=
  ∑ q : ExactFullQuestion X Y n,
    if exactRevealCode D seed q = history ∧
      q.1 seed.coordinate.val = x
    then exactPriorQuestionWeight G n q
    else 0

def exactBobQuestionMass
    (G : Game X Y A B) (n : ℕ)
    (D : Finset (Fin n))
    (seed : ExactRemainingSeed D)
    (history : ExactRevealHistory X Y D seed)
    (y : Y) : ℝ :=
  ∑ q : ExactFullQuestion X Y n,
    if exactRevealCode D seed q = history ∧
      q.2 seed.coordinate.val = y
    then exactPriorQuestionWeight G n q
    else 0

def exactJointQuestionMass
    (G : Game X Y A B) (n : ℕ)
    (D : Finset (Fin n))
    (seed : ExactRemainingSeed D)
    (history : ExactRevealHistory X Y D seed)
    (x : X) (y : Y) : ℝ :=
  ∑ q : ExactFullQuestion X Y n,
    if exactRevealCode D seed q = history ∧
      q.1 seed.coordinate.val = x ∧
      q.2 seed.coordinate.val = y
    then exactPriorQuestionWeight G n q
    else 0

def exactAliceQuestionFilter
    (G : Game X Y A B) (n : ℕ) (S : Strategy (G.repeat n))
    (D : Finset (Fin n))
    (seed : ExactRemainingSeed D)
    (history : ExactRevealHistory X Y D seed)
    (answer : {j : Fin n // j ∈ D} → A)
    (x : X) : Matrix S.Alice S.Alice ℂ :=
  ∑ q : ExactFullQuestion X Y n,
    if exactRevealCode D seed q = history ∧
      q.1 seed.coordinate.val = x
    then
      (exactPriorQuestionWeight G n q /
        exactAliceQuestionMass G n D seed history x) •
        conditionedAliceEffect G n S D answer q.1
    else 0

def exactBobQuestionFilter
    (G : Game X Y A B) (n : ℕ) (S : Strategy (G.repeat n))
    (D : Finset (Fin n))
    (seed : ExactRemainingSeed D)
    (history : ExactRevealHistory X Y D seed)
    (answer : {j : Fin n // j ∈ D} → B)
    (y : Y) : Matrix S.Bob S.Bob ℂ :=
  ∑ q : ExactFullQuestion X Y n,
    if exactRevealCode D seed q = history ∧
      q.2 seed.coordinate.val = y
    then
      (exactPriorQuestionWeight G n q /
        exactBobQuestionMass G n D seed history y) •
        conditionedBobEffect G n S D answer q.2
    else 0

def exactAliceMeanFilter
    (G : Game X Y A B) (n : ℕ) (S : Strategy (G.repeat n))
    (D : Finset (Fin n))
    (seed : ExactRemainingSeed D)
    (history : ExactRevealHistory X Y D seed)
    (answer : {j : Fin n // j ∈ D} → A)
    (y : Y) : Matrix S.Alice S.Alice ℂ :=
  ∑ x : X, G.conditionalXGivenY y x •
    exactAliceQuestionFilter G n S D seed history answer x

def exactBobMeanFilter
    (G : Game X Y A B) (n : ℕ) (S : Strategy (G.repeat n))
    (D : Finset (Fin n))
    (seed : ExactRemainingSeed D)
    (history : ExactRevealHistory X Y D seed)
    (answer : {j : Fin n // j ∈ D} → B)
    (x : X) : Matrix S.Bob S.Bob ℂ :=
  ∑ y : Y, G.conditionalYGivenX x y •
    exactBobQuestionFilter G n S D seed history answer y

def exactAliceCoordinateFilter
    (G : Game X Y A B) (n : ℕ) (S : Strategy (G.repeat n))
    (D : Finset (Fin n))
    (seed : ExactRemainingSeed D)
    (history : ExactRevealHistory X Y D seed)
    (answer : {j : Fin n // j ∈ D} → A)
    (x : X) (a : A) : Matrix S.Alice S.Alice ℂ :=
  ∑ q : ExactFullQuestion X Y n,
    if exactRevealCode D seed q = history ∧
      q.1 seed.coordinate.val = x
    then
      (exactPriorQuestionWeight G n q /
        exactAliceQuestionMass G n D seed history x) •
        conditionedAliceCoordinateEffect G n S D answer q.1
          seed.coordinate.val a
    else 0

def exactBobCoordinateFilter
    (G : Game X Y A B) (n : ℕ) (S : Strategy (G.repeat n))
    (D : Finset (Fin n))
    (seed : ExactRemainingSeed D)
    (history : ExactRevealHistory X Y D seed)
    (answer : {j : Fin n // j ∈ D} → B)
    (y : Y) (b : B) : Matrix S.Bob S.Bob ℂ :=
  ∑ q : ExactFullQuestion X Y n,
    if exactRevealCode D seed q = history ∧
      q.2 seed.coordinate.val = y
    then
      (exactPriorQuestionWeight G n q /
        exactBobQuestionMass G n D seed history y) •
        conditionedBobCoordinateEffect G n S D answer q.2
          seed.coordinate.val b
    else 0

def exactAlicePurificationFamily
    (G : Game X Y A B) (n : ℕ) (S : Strategy (G.repeat n))
    (D : Finset (Fin n))
    (seed : ExactRemainingSeed D)
    (history : ExactRevealHistory X Y D seed)
    (answer : {j : Fin n // j ∈ D} → A) :
    Sum X Y → Matrix S.Alice S.Alice ℂ :=
  Sum.elim
    (exactAliceQuestionFilter G n S D seed history answer)
    (exactAliceMeanFilter G n S D seed history answer)

def exactBobPurificationFamily
    (G : Game X Y A B) (n : ℕ) (S : Strategy (G.repeat n))
    (D : Finset (Fin n))
    (seed : ExactRemainingSeed D)
    (history : ExactRevealHistory X Y D seed)
    (answer : {j : Fin n // j ∈ D} → B) :
    Sum Y X → Matrix S.Bob S.Bob ℂ :=
  Sum.elim
    (exactBobQuestionFilter G n S D seed history answer)
    (exactBobMeanFilter G n S D seed history answer)

end

end QuantumParallelRepetition
