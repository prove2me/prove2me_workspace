import Definitions.Def_quantum_parallel_repetition_game
import Definitions.Def_qpr_core_47
import Theorems.Thm_QuantumParallelRepetition_winProbabilities_bddAbove
import Theorems.Thm_QuantumParallelRepetition_entangledValue_nonneg
import Theorems.Thm_QuantumParallelRepetition_fullCoordinateAliceEntropyIncrement_nonneg
import Theorems.Thm_QuantumParallelRepetition_aliceMartingaleEntropyBudget
import Theorems.Thm_QuantumParallelRepetition_answerLogCost_nonneg_of_postselection
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

@[simp] theorem repeat_questionWeight (G : Game X Y A B) (n : ℕ)
    (xs : Fin n → X) (ys : Fin n → Y) :
    (G.repeat n).questionWeight xs ys =
      ∏ i : Fin n, G.questionWeight (xs i) (ys i) := rfl

@[simp] theorem repeat_predicate_eq_true (G : Game X Y A B) (n : ℕ)
    (xs : Fin n → X) (ys : Fin n → Y)
    (as : Fin n → A) (bs : Fin n → B) :
    (G.repeat n).predicate xs ys as bs = true ↔
      ∀ i : Fin n, G.predicate (xs i) (ys i) (as i) (bs i) = true := by
  simp [«repeat»]

end Game

end

noncomputable section

open scoped BigOperators

namespace FiniteEventLaw

variable {Ω ι : Type*} [Fintype Ω]

theorem eventMass_univ (law : FiniteEventLaw Ω) :
    law.eventMass Finset.univ = 1 := by
  simpa [eventMass] using law.weight_sum

theorem eventMass_mono
    (law : FiniteEventLaw Ω) {s t : Finset Ω} (h : s ⊆ t) :
    law.eventMass s ≤ law.eventMass t := by
  unfold eventMass
  exact Finset.sum_le_sum_of_subset_of_nonneg h
    (fun ω _ _ => law.weight_nonneg ω)

theorem winEvent_empty [Fintype ι] (wins : ι → Ω → Bool) :
    winEvent wins ∅ = Finset.univ := by
  classical
  simp [winEvent]

theorem winEvent_antitone [Fintype ι]
    (wins : ι → Ω → Bool) {D E : Finset ι} (h : D ⊆ E) :
    winEvent wins E ⊆ winEvent wins D := by
  classical
  intro ω hω
  have h_all : ∀ i ∈ E, wins i ω = true := by
    simpa [winEvent] using hω
  simp only [winEvent, Finset.mem_filter, Finset.mem_univ, true_and]
  exact fun i hi => h_all i (h hi)

theorem allWinMass_le_partial [Fintype ι]
    (law : FiniteEventLaw Ω) (wins : ι → Ω → Bool)
    (D : Finset ι) :
    law.eventMass (winEvent wins Finset.univ) ≤
      law.eventMass (winEvent wins D) := by
  apply law.eventMass_mono
  exact winEvent_antitone wins (Finset.subset_univ D)

theorem exists_greedy_stopping [Fintype ι] [DecidableEq ι]
    (mass : Finset ι → ℝ) {θ η : ℝ} {T : ℕ}
    (_hθ : 0 < θ)
    (_hη : 0 < η)
    (hη_one : η ≤ 1)
    (hT : T ≤ Fintype.card ι)
    (hempty : mass ∅ = 1)
    (hfloor : ∀ D : Finset ι, θ ≤ mass D)
    (h_terminal : (1 - η) ^ T < θ) :
    ∃ D : Finset ι,
      D.card < T ∧
      θ ≤ mass D ∧
      (∑ i ∈ Finset.univ \ D,
        (mass D - mass (insert i D)))
        < ((Finset.univ \ D).card : ℝ) * (η * mass D) := by
  classical
  let candidates : Finset (Finset ι) :=
    Finset.univ.powerset.filter
      (fun D => D.card ≤ T ∧ mass D ≤ (1 - η) ^ D.card)
  have h_candidates : candidates.Nonempty := by
    refine ⟨∅, ?_⟩
    simp [candidates, hempty]
  obtain ⟨D, hD, hmax⟩ :=
    Finset.exists_max_image candidates (fun E : Finset ι => E.card)
      h_candidates
  have hD_data : D.card ≤ T ∧ mass D ≤ (1 - η) ^ D.card :=
    (Finset.mem_filter.mp hD).2
  have hD_lt : D.card < T := by
    have hne : D.card ≠ T := by
      intro heq
      have hupper : mass D ≤ (1 - η) ^ T := by
        simpa [heq] using hD_data.2
      linarith [hfloor D]
    exact lt_of_le_of_ne hD_data.1 hne
  refine ⟨D, hD_lt, hfloor D, ?_⟩
  by_contra h_not_stopped
  have h_sum :
      ((Finset.univ \ D).card : ℝ) * (η * mass D)
        ≤ ∑ i ∈ Finset.univ \ D,
          (mass D - mass (insert i D)) :=
    le_of_not_gt h_not_stopped
  have h_card : D.card < (Finset.univ : Finset ι).card := by
    simpa using hD_lt.trans_le hT
  have h_remaining : (Finset.univ \ D).Nonempty :=
    Finset.sdiff_nonempty_of_card_lt_card h_card
  have h_sum_constant :
      (∑ _i ∈ Finset.univ \ D, η * mass D)
        ≤ ∑ i ∈ Finset.univ \ D,
          (mass D - mass (insert i D)) := by
    simpa using h_sum
  obtain ⟨i, hi, hfailure⟩ :=
    Finset.exists_le_of_sum_le h_remaining h_sum_constant
  have hi_not : i ∉ D := (Finset.mem_sdiff.mp hi).2
  have hnext_card : (insert i D).card ≤ T := by
    rw [Finset.card_insert_of_notMem hi_not]
    omega
  have hshrink :
      mass (insert i D) ≤ (1 - η) * mass D := by
    linarith
  have hnext_bound :
      mass (insert i D) ≤
        (1 - η) ^ (insert i D).card := by
    calc
      mass (insert i D) ≤ (1 - η) * mass D := hshrink
      _ ≤ (1 - η) * (1 - η) ^ D.card :=
        mul_le_mul_of_nonneg_left hD_data.2
          (sub_nonneg.mpr hη_one)
      _ = (1 - η) ^ (insert i D).card := by
        rw [Finset.card_insert_of_notMem hi_not, pow_succ]
        ring
  have hnext_mem : insert i D ∈ candidates := by
    simp only [candidates, Finset.mem_filter, Finset.mem_powerset]
    exact ⟨Finset.subset_univ _, hnext_card, hnext_bound⟩
  have h_impossible := hmax (insert i D) hnext_mem
  rw [Finset.card_insert_of_notMem hi_not] at h_impossible
  omega

theorem exists_conditioned_win_set [Fintype ι] [DecidableEq ι]
    (law : FiniteEventLaw Ω) (wins : ι → Ω → Bool)
    {θ η : ℝ} {T : ℕ}
    (hθ : 0 < θ)
    (hη : 0 < η)
    (hη_one : η ≤ 1)
    (hT : T ≤ Fintype.card ι)
    (hwin : θ ≤ law.eventMass (winEvent wins Finset.univ))
    (h_terminal : (1 - η) ^ T < θ) :
    ∃ D : Finset ι,
      D.card < T ∧
      θ ≤ law.eventMass (winEvent wins D) ∧
      (∑ i ∈ Finset.univ \ D, failureMass law wins D i)
        < ((Finset.univ \ D).card : ℝ) *
          (η * law.eventMass (winEvent wins D)) := by
  let mass : Finset ι → ℝ :=
    fun D => law.eventMass (winEvent wins D)
  have hempty : mass ∅ = 1 := by
    dsimp [mass]
    rw [winEvent_empty]
    exact law.eventMass_univ
  have hfloor : ∀ D : Finset ι, θ ≤ mass D := by
    intro D
    exact hwin.trans (law.allWinMass_le_partial wins D)
  obtain ⟨D, hD, hp, hstop⟩ :=
    exists_greedy_stopping mass hθ hη hη_one hT hempty hfloor
      h_terminal
  refine ⟨D, hD, hp, ?_⟩
  simpa [failureMass, mass] using hstop

end FiniteEventLaw

section StrategyEventLaw

variable {X Y A B : Type*}
variable [Fintype X] [Fintype Y] [Fintype A] [Fintype B]

theorem strategyEventLaw_winEvent
    (G : Game X Y A B) (S : Strategy G) :
    (strategyEventLaw G S).eventMass (strategyWinEvent G) =
      S.winProbability := by
  classical
  unfold FiniteEventLaw.eventMass strategyWinEvent
  simp only [Finset.sum_filter]
  change
    (∑ ω : X × Y × A × B,
      if G.predicate ω.1 ω.2.1 ω.2.2.1 ω.2.2.2 = true
      then G.questionWeight ω.1 ω.2.1 *
        S.outcomeProbability ω.1 ω.2.1 ω.2.2.1 ω.2.2.2
      else 0) =
      S.winProbability
  simp_rw [Fintype.sum_prod_type]
  unfold Strategy.winProbability
  apply Finset.sum_congr rfl
  intro x _
  apply Finset.sum_congr rfl
  intro y _
  rw [Finset.mul_sum]
  apply Finset.sum_congr rfl
  intro a _
  rw [Finset.mul_sum]
  apply Finset.sum_congr rfl
  intro b _
  split <;> simp

theorem repeated_allWinEvent_eq
    (G : Game X Y A B) (n : ℕ) :
    FiniteEventLaw.winEvent (repeatedCoordinateWin G n)
      (Finset.univ : Finset (Fin n)) =
      strategyWinEvent (G.repeat n) := by
  classical
  ext ω
  simp [FiniteEventLaw.winEvent, strategyWinEvent,
    repeatedCoordinateWin, Game.repeat_predicate_eq_true]

theorem repeated_allWinMass_eq
    (G : Game X Y A B) (n : ℕ)
    (S : Strategy (G.repeat n)) :
    (strategyEventLaw (G.repeat n) S).eventMass
      (FiniteEventLaw.winEvent (repeatedCoordinateWin G n)
        (Finset.univ : Finset (Fin n))) =
      S.winProbability := by
  rw [repeated_allWinEvent_eq]
  exact strategyEventLaw_winEvent (G.repeat n) S

theorem repeatedStrategy_exists_greedy_conditioning
    (G : Game X Y A B) (n : ℕ)
    (S : Strategy (G.repeat n))
    {θ η : ℝ} {T : ℕ}
    (hθ : 0 < θ)
    (hη : 0 < η)
    (hη_one : η ≤ 1)
    (hT : T ≤ n)
    (hwin : θ ≤ S.winProbability)
    (h_terminal : (1 - η) ^ T < θ) :
    ∃ D : Finset (Fin n),
      D.card < T ∧
      θ ≤ (strategyEventLaw (G.repeat n) S).eventMass
        (FiniteEventLaw.winEvent
          (repeatedCoordinateWin G n) D) ∧
      (∑ i ∈ Finset.univ \ D,
        FiniteEventLaw.failureMass
          (strategyEventLaw (G.repeat n) S)
          (repeatedCoordinateWin G n) D i)
        <
      ((Finset.univ \ D).card : ℝ) *
        (η * (strategyEventLaw (G.repeat n) S).eventMass
          (FiniteEventLaw.winEvent
            (repeatedCoordinateWin G n) D)) := by
  have h_card : T ≤ Fintype.card (Fin n) := by
    simpa using hT
  have h_full :
      θ ≤ (strategyEventLaw (G.repeat n) S).eventMass
        (FiniteEventLaw.winEvent
          (repeatedCoordinateWin G n)
          (Finset.univ : Finset (Fin n))) := by
    rw [repeated_allWinMass_eq]
    exact hwin
  exact FiniteEventLaw.exists_conditioned_win_set
    (strategyEventLaw (G.repeat n) S)
    (repeatedCoordinateWin G n)
    hθ hη hη_one h_card h_full h_terminal

end StrategyEventLaw

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

open Filter
open scoped Topology

theorem source_equation_twenty_nine_contradiction
    {X Y A B : Type*}
    [Fintype X] [Fintype Y] [Fintype A] [Fintype B]
    (G : Game X Y A B)
    (S : Strategy G)
    (K₀ α η lam : ℝ)
    (hbound :
      roundedWinningLowerBound (1 - entangledValue G)
        K₀ α η lam ≤ S.winProbability)
    (herror :
      totalSamplingLoss K₀ α η lam < (1 - entangledValue G) / 2) :
    False := by
  have hsup : S.winProbability ≤ entangledValue G := by
    unfold entangledValue
    exact le_csSup (winProbabilities_bddAbove G) ⟨S, rfl⟩
  unfold roundedWinningLowerBound at hbound
  linarith

end

noncomputable section

open scoped BigOperators

variable {X Y A B : Type*}
variable [Fintype X] [Fintype Y] [Fintype A] [Fintype B]

theorem exists_repeatedStrategy_of_lt_entangledValue
    (G : Game X Y A B) {n : ℕ} {r : ℝ}
    (hr : 0 < r)
    (hvalue : r < repeatedEntangledValue G n) :
    ∃ S : Strategy (G.repeat n), r < S.winProbability := by
  let values : Set ℝ :=
    Set.range (Strategy.winProbability (G := G.repeat n))
  have hnonempty : values.Nonempty := by
    by_contra hempty
    have heq : values = ∅ := Set.not_nonempty_iff_eq_empty.mp hempty
    have hzero : repeatedEntangledValue G n = 0 := by
      change sSup values = 0
      rw [heq, Real.sSup_empty]
    linarith
  have hs : r < sSup values := by
    exact hvalue
  obtain ⟨v, ⟨S, hS⟩, hv⟩ := exists_lt_of_lt_csSup hnonempty hs
  subst v
  exact ⟨S, hv⟩

end

noncomputable section

open scoped BigOperators

section FiniteSamples

variable {ι Ω : Type*} [Fintype ι] [DecidableEq ι] [Fintype Ω]

theorem allWinMass_le_postselectionMass
    (law : FiniteEventLaw Ω) (wins : ι → Ω → Bool)
    (C : Finset ι) :
    law.eventMass (FiniteEventLaw.winEvent wins Finset.univ) ≤
      postselectionMass law wins C :=
  law.allWinMass_le_partial wins C

theorem uniformRemainingFailure_lt_of_failure_sum
    (law : FiniteEventLaw Ω) (wins : ι → Ω → Bool)
    (C : Finset ι) {η : ℝ}
    (hp : 0 < postselectionMass law wins C)
    (hm : 0 < (Finset.univ \ C).card)
    (hfailure :
      (∑ i ∈ Finset.univ \ C,
        FiniteEventLaw.failureMass law wins C i) <
        ((Finset.univ \ C).card : ℝ) *
          (η * postselectionMass law wins C)) :
    uniformRemainingFailure law wins C < η := by
  have hmreal : 0 < ((Finset.univ \ C).card : ℝ) := by
    exact_mod_cast hm
  unfold uniformRemainingFailure conditionalCoordinateFailure
  rw [← Finset.sum_div]
  apply (div_lt_iff₀ hmreal).mpr
  apply (div_lt_iff₀ hp).mpr
  nlinarith

end FiniteSamples

section ActualRepeatedStrategy

variable {X Y A B : Type*}
variable [Fintype X] [Fintype Y] [Fintype A] [Fintype B]

theorem repeated_winProbability_le_postselectionMass
    (G : Game X Y A B) (n : ℕ)
    (S : Strategy (G.repeat n)) (C : Finset (Fin n)) :
    S.winProbability ≤ repeatedPostselectionMass G n S C := by
  rw [← repeated_allWinMass_eq G n S]
  exact allWinMass_le_postselectionMass
    (strategyEventLaw (G.repeat n) S) (repeatedCoordinateWin G n) C

theorem repeatedPostselectionMass_pos
    (G : Game X Y A B) (n : ℕ)
    (S : Strategy (G.repeat n)) (C : Finset (Fin n))
    (hwin : 0 < S.winProbability) :
    0 < repeatedPostselectionMass G n S C :=
  lt_of_lt_of_le hwin
    (repeated_winProbability_le_postselectionMass G n S C)

theorem remainingCoordinates_card
    {n : ℕ} (C : Finset (Fin n)) :
    (Finset.univ \ C).card = n - C.card := by
  simp [Finset.card_sdiff_of_subset (Finset.subset_univ C)]

theorem repeatedStrategy_exists_conditioning
    (G : Game X Y A B) (n : ℕ)
    (S : Strategy (G.repeat n))
    {η : ℝ} {q : ℕ}
    (hwin : 0 < S.winProbability)
    (hη : 0 < η) (hη_one : η ≤ 1)
    (hq : q ≤ n)
    (hterminal : (1 - η) ^ q < S.winProbability) :
    ∃ C : Finset (Fin n),
      C.card < q ∧
      S.winProbability ≤ repeatedPostselectionMass G n S C ∧
      0 < repeatedPostselectionMass G n S C ∧
      0 < (Finset.univ \ C).card ∧
      uniformRemainingFailure
        (strategyEventLaw (G.repeat n) S)
        (repeatedCoordinateWin G n) C < η := by
  obtain ⟨C, hC, hmass, hfailure⟩ :=
    repeatedStrategy_exists_greedy_conditioning G n S
      hwin hη hη_one hq (le_refl _) hterminal
  have hremaining : 0 < (Finset.univ \ C).card := by
    rw [remainingCoordinates_card]
    omega
  have hp : 0 < repeatedPostselectionMass G n S C :=
    repeatedPostselectionMass_pos G n S C hwin
  refine ⟨C, hC, ?_, hp, hremaining, ?_⟩
  · simpa [repeatedPostselectionMass, postselectionMass] using hmass
  · apply uniformRemainingFailure_lt_of_failure_sum
      (strategyEventLaw (G.repeat n) S)
      (repeatedCoordinateWin G n) C
      (by simpa [repeatedPostselectionMass] using hp)
      hremaining
    simpa [postselectionMass] using hfailure

end ActualRepeatedStrategy

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

variable {X Y A B : Type*}
variable [Fintype X] [Fintype Y] [Fintype A] [Fintype B]

theorem exactSourceClassicalInformationRate_le_three_martingaleRate
    (G : Game X Y A B) (n : ℕ) (S : Strategy (G.repeat n))
    (D : Finset (Fin n))
    (positive : 0 < repeatedPostselectionMass G n S D) :
    exactSourceClassicalInformationRate G n S D ≤
      3 * martingaleRate G n S D := by
  have answer_nonnegative :=
    answerLogCost_nonneg_of_postselection
      G n S D positive
  unfold exactSourceClassicalInformationRate
    martingaleRate
  have denominator_nonnegative :
      0 ≤ ((Finset.univ \ D).card : ℝ) := by positivity
  by_cases denominator_zero : ((Finset.univ \ D).card : ℝ) = 0
  · simp [denominator_zero]
  have denominator_positive :
      0 < ((Finset.univ \ D).card : ℝ) :=
    lt_of_le_of_ne denominator_nonnegative (Ne.symm denominator_zero)
  apply (div_le_iff₀ denominator_positive).2
  field_simp
  linarith

end

noncomputable section

variable {X Y A B : Type*}
variable [Fintype X] [Fintype Y] [Fintype A] [Fintype B]

theorem pdfGreedyCeilingHorizon_le
    (n : ℕ) (τ d : ℝ)
    (threshold : 0 < τ)
    (small : d ≤ τ / 2) :
    ⌈d * (n : ℝ) / τ⌉₊ ≤ n := by
  apply Nat.ceil_le.mpr
  apply (div_le_iff₀ threshold).mpr
  have actual := mul_le_mul_of_nonneg_right small
    (Nat.cast_nonneg n : (0 : ℝ) ≤ n)
  nlinarith

theorem pdfGreedyCeilingHorizon_pow_le_exp
    (n : ℕ) (τ d : ℝ)
    (threshold : 0 < τ)
    (at_most_one : τ ≤ 1) :
    (1 - τ) ^ ⌈d * (n : ℝ) / τ⌉₊ ≤
      Real.exp (-d * (n : ℝ)) := by
  let T : ℕ := ⌈d * (n : ℝ) / τ⌉₊
  have base_nonnegative : 0 ≤ 1 - τ := sub_nonneg.mpr at_most_one
  have base_le : 1 - τ ≤ Real.exp (-τ) := by
    have actual := Real.add_one_le_exp (-τ)
    linarith
  have ceiling : d * (n : ℝ) / τ ≤ (T : ℝ) := by
    exact Nat.le_ceil (d * (n : ℝ) / τ)
  have exponent : -τ * (T : ℝ) ≤ -d * (n : ℝ) := by
    have cleared := (div_le_iff₀ threshold).mp ceiling
    nlinarith
  change (1 - τ) ^ T ≤ Real.exp (-d * (n : ℝ))
  calc
    (1 - τ) ^ T ≤ Real.exp (-τ) ^ T := by
      exact pow_le_pow_left₀ base_nonnegative base_le T
    _ = Real.exp (-τ * (T : ℝ)) := by
      rw [← Real.exp_nat_mul]
      congr 1
      ring
    _ ≤ Real.exp (-d * (n : ℝ)) := Real.exp_le_exp.mpr exponent

theorem pdfGreedyCard_lt_of_ceil
    (k n : ℕ) (τ d : ℝ)
    (below : k < ⌈d * (n : ℝ) / τ⌉₊) :
    (k : ℝ) < d * (n : ℝ) / τ :=
  Nat.lt_ceil.mp below

theorem pdfQuantitativeGreedyConditioning
    (G : Game X Y A B) (n : ℕ)
    (S : Strategy (G.repeat n))
    (τ d θ : ℝ)
    (_n_positive : 0 < n)
    (threshold : 0 < τ)
    (threshold_lt_one : τ < 1)
    (_rate_positive : 0 < d)
    (rate_small : d ≤ τ / 2)
    (above_exponential : Real.exp (-d * (n : ℝ)) < θ)
    (realized : θ ≤ S.winProbability) :
    ∃ D : Finset (Fin n),
      (D.card : ℝ) < d * (n : ℝ) / τ ∧
      (n : ℝ) / 2 < ((Finset.univ \ D).card : ℝ) ∧
      θ ≤ repeatedPostselectionMass G n S D ∧
      S.winProbability ≤ repeatedPostselectionMass G n S D ∧
      0 < repeatedPostselectionMass G n S D ∧
      0 < (Finset.univ \ D).card ∧
      uniformRemainingFailure
          (strategyEventLaw (G.repeat n) S)
          (repeatedCoordinateWin G n) D < τ := by
  let T : ℕ := ⌈d * (n : ℝ) / τ⌉₊
  have winning : 0 < S.winProbability :=
    lt_of_lt_of_le ((Real.exp_pos _).trans above_exponential) realized
  have legal : T ≤ n :=
    pdfGreedyCeilingHorizon_le n τ d threshold rate_small
  have terminal : (1 - τ) ^ T < S.winProbability :=
    lt_of_le_of_lt
      (pdfGreedyCeilingHorizon_pow_le_exp
        n τ d threshold threshold_lt_one.le)
      (above_exponential.trans_le realized)
  obtain ⟨D, selected, floor, positive, remaining, failure⟩ :=
    repeatedStrategy_exists_conditioning G n S
      winning threshold threshold_lt_one.le legal terminal
  have strict_card : (D.card : ℝ) < d * (n : ℝ) / τ :=
    pdfGreedyCard_lt_of_ceil D.card n τ d selected
  have half_rate : d * (n : ℝ) / τ ≤ (n : ℝ) / 2 := by
    apply (div_le_iff₀ threshold).mpr
    have actual := mul_le_mul_of_nonneg_right rate_small
      (Nat.cast_nonneg n : (0 : ℝ) ≤ n)
    nlinarith
  have selected_le : D.card ≤ n := by
    have actual := Finset.card_le_card (Finset.subset_univ D)
    simpa using actual
  have remaining_real :
      ((Finset.univ \ D).card : ℝ) =
        (n : ℝ) - (D.card : ℝ) := by
    rw [remainingCoordinates_card, Nat.cast_sub selected_le]
  have more_than_half :
      (n : ℝ) / 2 < ((Finset.univ \ D).card : ℝ) := by
    rw [remaining_real]
    nlinarith
  exact ⟨D, strict_card, more_than_half,
    realized.trans floor, floor, positive, remaining, failure⟩

end

noncomputable section

theorem pdfUniversalRate_pos
    {B : ℝ} (positive : 0 < B) :
    0 < pdfUniversalRate B := by
  unfold pdfUniversalRate
  positivity

theorem pdfGapRate_pos
    {B ε ell : ℝ}
    (constant : 0 < B) (gap : 0 < ε) (alphabet : 0 ≤ ell) :
    0 < pdfGapRate B ε ell := by
  unfold pdfGapRate
  have universal := pdfUniversalRate_pos constant
  positivity

theorem pdfGapRate_eq_scaled_twelfth_power
    {B ε ell : ℝ}
    (constant : 0 < B) (gap : 0 < ε) (alphabet : 0 ≤ ell) :
    pdfGapRate B ε ell =
      ε / (8 * (ε + ell)) * (ε / (4 * B)) ^ 12 := by
  have nonzero : B ≠ 0 := ne_of_gt constant
  have denominator : ε + ell ≠ 0 := ne_of_gt (by linarith)
  unfold pdfGapRate pdfUniversalRate
  field_simp

theorem pdfGapBase_le_gap
    {B ε : ℝ}
    (constant : 1 ≤ B) (gap : 0 < ε) :
    0 < ε / (4 * B) ∧ ε / (4 * B) ≤ ε := by
  have denominator : 0 < 4 * B := by nlinarith
  constructor
  · exact div_pos gap denominator
  · apply (div_le_iff₀ denominator).2
    nlinarith

theorem pdfGapBase_twelfth_le_gap
    {B ε : ℝ}
    (constant : 1 ≤ B) (gap : 0 < ε) (unit : ε ≤ 1) :
    (ε / (4 * B)) ^ 12 ≤ ε := by
  obtain ⟨nonnegative, bounded⟩ :=
    pdfGapBase_le_gap constant gap
  calc
    (ε / (4 * B)) ^ 12 ≤ ε ^ 12 :=
      pow_le_pow_left₀ nonnegative.le bounded 12
    _ = ε * ε ^ 11 := by ring
    _ ≤ ε * 1 :=
      mul_le_mul_of_nonneg_left
        (pow_le_one₀ gap.le unit) gap.le
    _ = ε := by ring

theorem pdfGapBase_twelfth_le_one
    {B ε : ℝ}
    (constant : 1 ≤ B) (gap : 0 < ε) (unit : ε ≤ 1) :
    (ε / (4 * B)) ^ 12 ≤ 1 :=
  (pdfGapBase_twelfth_le_gap constant gap unit).trans unit

theorem pdfGapRate_le_gap_div_eight
    {B ε ell : ℝ}
    (constant : 1 ≤ B) (gap : 0 < ε)
    (unit : ε ≤ 1) (alphabet : 0 ≤ ell) :
    pdfGapRate B ε ell ≤ ε / 8 := by
  have Bpositive : 0 < B := lt_of_lt_of_le (by norm_num) constant
  have denominator : 0 < ε + ell := by linarith
  have fraction : ε / (ε + ell) ≤ 1 := by
    apply (div_le_iff₀ denominator).2
    linarith
  have root := pdfGapBase_twelfth_le_gap constant gap unit
  rw [pdfGapRate_eq_scaled_twelfth_power
    Bpositive gap alphabet]
  have nonnegative : 0 ≤ (ε / (4 * B)) ^ 12 := by positivity
  calc
    ε / (8 * (ε + ell)) * (ε / (4 * B)) ^ 12 =
        (ε / (ε + ell)) * (ε / (4 * B)) ^ 12 / 8 := by
          field_simp [ne_of_gt denominator, ne_of_gt Bpositive]
    _ ≤ 1 * ε / 8 := by
          gcongr
    _ = ε / 8 := by ring

theorem pdfConditioningTolerance_bounds
    {ε : ℝ} (gap : 0 < ε) (unit : ε ≤ 1) :
    0 < pdfConditioningTolerance ε ∧
      pdfConditioningTolerance ε ≤ 1 / 4 := by
  unfold pdfConditioningTolerance
  constructor <;> nlinarith

theorem pdfGapRate_le_half_conditioningTolerance
    {B ε ell : ℝ}
    (constant : 1 ≤ B) (gap : 0 < ε)
    (unit : ε ≤ 1) (alphabet : 0 ≤ ell) :
    pdfGapRate B ε ell ≤
      pdfConditioningTolerance ε / 2 := by
  have exact_rate := pdfGapRate_le_gap_div_eight
    constant gap unit alphabet
  calc
    pdfGapRate B ε ell ≤ ε / 8 := exact_rate
    _ = pdfConditioningTolerance ε / 2 := by
      unfold pdfConditioningTolerance
      ring

theorem pdfGapRate_entropy_factor
    {B ε ell : ℝ}
    (constant : 0 < B) (gap : 0 < ε) (alphabet : 0 ≤ ell) :
    2 * pdfGapRate B ε ell * (1 + 4 * ell / ε) =
      (ε / (4 * B)) ^ 12 *
        ((ε + 4 * ell) / (4 * (ε + ell))) := by
  have nonzero : B ≠ 0 := ne_of_gt constant
  have gap_nonzero : ε ≠ 0 := ne_of_gt gap
  have denominator : ε + ell ≠ 0 := ne_of_gt (by linarith)
  rw [pdfGapRate_eq_scaled_twelfth_power
    constant gap alphabet]
  field_simp
  ring

theorem pdfAlphabetEntropyFactor_le_one
    {ε ell : ℝ} (gap : 0 < ε) (alphabet : 0 ≤ ell) :
    (ε + 4 * ell) / (4 * (ε + ell)) ≤ 1 := by
  have denominator : 0 < 4 * (ε + ell) := by positivity
  apply (div_le_iff₀ denominator).2
  nlinarith

theorem pdfGapRate_entropy_le_twelfth_power
    {B ε ell : ℝ}
    (constant : 1 ≤ B) (gap : 0 < ε) (alphabet : 0 ≤ ell) :
    2 * pdfGapRate B ε ell * (1 + 4 * ell / ε) ≤
      (ε / (4 * B)) ^ 12 := by
  have Bpositive : 0 < B := lt_of_lt_of_le (by norm_num) constant
  rw [pdfGapRate_entropy_factor Bpositive gap alphabet]
  have nonnegative : 0 ≤ (ε / (4 * B)) ^ 12 := by positivity
  calc
    (ε / (4 * B)) ^ 12 *
        ((ε + 4 * ell) / (4 * (ε + ell))) ≤
        (ε / (4 * B)) ^ 12 * 1 :=
          mul_le_mul_of_nonneg_left
            (pdfAlphabetEntropyFactor_le_one gap alphabet)
            nonnegative
    _ = _ := by ring

theorem pdfCatalystAccuracy_bounds
    {K ε : ℝ}
    (constant : 1 ≤ K) (gap : 0 < ε) (unit : ε ≤ 1) :
    0 < pdfCatalystAccuracy K ε ∧
      pdfCatalystAccuracy K ε ≤ 1 := by
  have denominator : 0 < 16 * K := by nlinarith
  have ratio : 0 < ε / (16 * K) := div_pos gap denominator
  have bounded : ε / (16 * K) ≤ 1 := by
    apply (div_le_iff₀ denominator).2
    nlinarith
  unfold pdfCatalystAccuracy
  exact ⟨pow_pos ratio 12, pow_le_one₀ ratio.le bounded⟩

theorem pdfQuantitativeEntropyRate_lt
    {n m k : ℕ} {t d τ ell : ℝ}
    (length : 0 < n) (rate : 0 < d) (tolerance : 0 < τ)
    (alphabet : 0 ≤ ell)
    (remaining : (n : ℝ) / 2 < (m : ℝ))
    (postselection : t < d * (n : ℝ))
    (conditioned : (k : ℝ) < d * (n : ℝ) / τ) :
    (t + (k : ℝ) * ell) / (m : ℝ) <
      2 * d * (1 + ell / τ) := by
  have length_real : (0 : ℝ) < (n : ℝ) := by exact_mod_cast length
  have mpositive : (0 : ℝ) < (m : ℝ) := by nlinarith
  have ratio_nonnegative : 0 ≤ ell / τ :=
    div_nonneg alphabet tolerance.le
  have factor : 0 < d * (1 + ell / τ) := by
    exact mul_pos rate (by linarith)
  have alphabet_bound :
      (k : ℝ) * ell ≤ (d * (n : ℝ) / τ) * ell :=
    mul_le_mul_of_nonneg_right (le_of_lt conditioned) alphabet
  have numerator :
      t + (k : ℝ) * ell < d * (n : ℝ) * (1 + ell / τ) := by
    calc
      t + (k : ℝ) * ell <
          d * (n : ℝ) + (d * (n : ℝ) / τ) * ell :=
        add_lt_add_of_lt_of_le postselection alphabet_bound
      _ = d * (n : ℝ) * (1 + ell / τ) := by ring
  apply (div_lt_iff₀ mpositive).2
  have horizon : (n : ℝ) < 2 * (m : ℝ) := by nlinarith
  have scaled := mul_lt_mul_of_pos_left horizon factor
  nlinarith

theorem pdfQuantitativeEntropyRate_lt_twelfth_power
    {B ε ell : ℝ} {n m k : ℕ} {t : ℝ}
    (constant : 1 ≤ B) (gap : 0 < ε)
    (unit : ε ≤ 1) (alphabet : 0 ≤ ell)
    (length : 0 < n)
    (remaining : (n : ℝ) / 2 < (m : ℝ))
    (postselection :
      t < pdfGapRate B ε ell * (n : ℝ))
    (conditioned :
      (k : ℝ) <
        pdfGapRate B ε ell * (n : ℝ) /
          pdfConditioningTolerance ε) :
    (t + (k : ℝ) * ell) / (m : ℝ) <
      (ε / (4 * B)) ^ 12 := by
  have Bpositive : 0 < B := lt_of_lt_of_le (by norm_num) constant
  have dpositive := pdfGapRate_pos Bpositive gap alphabet
  have taupositive : 0 < pdfConditioningTolerance ε :=
    (pdfConditioningTolerance_bounds gap unit).1
  have entropy := pdfQuantitativeEntropyRate_lt
    length dpositive taupositive alphabet remaining
    postselection conditioned
  have rewrite :
      2 * pdfGapRate B ε ell *
          (1 + ell / pdfConditioningTolerance ε) =
        2 * pdfGapRate B ε ell * (1 + 4 * ell / ε) := by
    unfold pdfConditioningTolerance
    have nonzero : ε ≠ 0 := ne_of_gt gap
    field_simp
  rw [rewrite] at entropy
  exact lt_of_lt_of_le entropy
    (pdfGapRate_entropy_le_twelfth_power
      constant gap alphabet)

theorem pdfCatalystAccuracy_twelfth_root
    {K ε : ℝ} (constant : 1 ≤ K) (gap : 0 < ε) :
    (pdfCatalystAccuracy K ε) ^ (1 / 12 : ℝ) =
      ε / (16 * K) := by
  have denominator : 0 < 16 * K := by nlinarith
  have base : 0 ≤ ε / (16 * K) := (div_pos gap denominator).le
  unfold pdfCatalystAccuracy
  simpa [one_div] using
    (Real.pow_rpow_inv_natCast base (by norm_num : (12 : ℕ) ≠ 0))

theorem pdfGapBase_twelfth_root
    {B ε : ℝ} (constant : 1 ≤ B) (gap : 0 < ε) :
    ((ε / (4 * B)) ^ (12 : ℕ)) ^ (1 / 12 : ℝ) =
      ε / (4 * B) := by
  have base : 0 ≤ ε / (4 * B) :=
    (pdfGapBase_le_gap constant gap).1.le
  simpa [one_div] using
    (Real.pow_rpow_inv_natCast base (by norm_num : (12 : ℕ) ≠ 0))

theorem pdfEntropyRoot_lt_gapBase
    {B ε η : ℝ}
    (constant : 1 ≤ B) (gap : 0 < ε)
    (entropy : 0 ≤ η)
    (small : η < (ε / (4 * B)) ^ (12 : ℕ)) :
    η ^ (1 / 12 : ℝ) < ε / (4 * B) := by
  calc
    η ^ (1 / 12 : ℝ) <
        ((ε / (4 * B)) ^ (12 : ℕ)) ^ (1 / 12 : ℝ) :=
      Real.rpow_lt_rpow entropy small (by norm_num)
    _ = ε / (4 * B) :=
      pdfGapBase_twelfth_root constant gap

theorem pdfEntropyRoundingLoss_lt_gapQuarter
    {B ε η : ℝ}
    (constant : 1 ≤ B) (gap : 0 < ε)
    (entropy : 0 ≤ η)
    (small : η < (ε / (4 * B)) ^ (12 : ℕ)) :
    B * η ^ (1 / 12 : ℝ) < ε / 4 := by
  have coefficient : 0 < B := by linarith
  calc
    B * η ^ (1 / 12 : ℝ) < B * (ε / (4 * B)) :=
      mul_lt_mul_of_pos_left
        (pdfEntropyRoot_lt_gapBase constant gap entropy small)
        coefficient
    _ = ε / 4 := by
      field_simp

theorem pdfCatalystAccuracy_samplingLoss
    {K ε : ℝ} (constant : 1 ≤ K) (gap : 0 < ε) :
    2 * K * (pdfCatalystAccuracy K ε) ^ (1 / 12 : ℝ) =
      ε / 8 := by
  have coefficient : 0 < K := by linarith
  rw [pdfCatalystAccuracy_twelfth_root constant gap]
  field_simp
  norm_num

end

noncomputable section

open scoped BigOperators ComplexOrder Kronecker MatrixOrder
  Matrix.Norms.L2Operator InnerProductSpace

theorem pdfUniversalErrorCeiling_pos
    {K : ℝ} (constant : 1 ≤ K) :
    0 < universalErrorCeiling K := by
  have nonnegative : 0 ≤ K := by linarith
  unfold universalErrorCeiling
  positivity

theorem pdfRoundingCoefficient_two_le
    {K : ℝ} (constant : 1 ≤ K) :
    2 ≤ pdfRoundingCoefficient K := by
  have nonnegative : 0 ≤ K := by linarith
  have ceiling_nonnegative : 0 ≤ universalErrorCeiling K :=
    (pdfUniversalErrorCeiling_pos constant).le
  have first_nonnegative :
      0 ≤ (5 + 2 * universalErrorCeiling K) *
        Real.sqrt (3 / 2 : ℝ) := by positivity
  have quantum_nonnegative :
      0 ≤ 2 * K * (32 : ℝ) ^ (1 / 12 : ℝ) := by positivity
  have eight : 1 ≤ Real.sqrt (8 : ℝ) :=
    Real.one_le_sqrt.mpr (by norm_num)
  unfold pdfRoundingCoefficient
  nlinarith

theorem pdfRoundingCoefficient_one_le
    {K : ℝ} (constant : 1 ≤ K) :
    1 ≤ pdfRoundingCoefficient K := by
  have lower := pdfRoundingCoefficient_two_le constant
  linarith

end

noncomputable section

theorem pdfSqrt_le_twelfthRoot
    {eta : ℝ} (nonnegative : 0 ≤ eta) (bounded : eta ≤ 1) :
    Real.sqrt eta ≤ eta ^ (1 / 12 : ℝ) := by
  rw [Real.sqrt_eq_rpow]
  exact Real.rpow_le_rpow_of_exponent_ge'
    nonnegative bounded (by norm_num) (by norm_num)

theorem pdfPinskerRoot_le_twelfthRoot
    {eta kappa : ℝ}
    (nonnegative : 0 ≤ eta)
    (bounded : eta ≤ 1)
    (pinsker : kappa ≤ Real.sqrt ((3 / 2 : ℝ) * eta)) :
    kappa ≤ Real.sqrt (3 / 2 : ℝ) * eta ^ (1 / 12 : ℝ) := by
  calc
    kappa ≤ Real.sqrt ((3 / 2 : ℝ) * eta) := pinsker
    _ = Real.sqrt (3 / 2 : ℝ) * Real.sqrt eta := by
      rw [Real.sqrt_mul (by norm_num : (0 : ℝ) ≤ 3 / 2)]
    _ ≤ Real.sqrt (3 / 2 : ℝ) * eta ^ (1 / 12 : ℝ) :=
      mul_le_mul_of_nonneg_left
        (pdfSqrt_le_twelfthRoot nonnegative bounded)
        (Real.sqrt_nonneg _)

theorem pdfSqrtEight_le_twelfthRoot
    {eta : ℝ} (nonnegative : 0 ≤ eta) (bounded : eta ≤ 1) :
    Real.sqrt (8 * eta) ≤
      Real.sqrt (8 : ℝ) * eta ^ (1 / 12 : ℝ) := by
  calc
    Real.sqrt (8 * eta) =
        Real.sqrt (8 : ℝ) * Real.sqrt eta := by
          rw [Real.sqrt_mul (by norm_num : (0 : ℝ) ≤ 8)]
    _ ≤ Real.sqrt (8 : ℝ) * eta ^ (1 / 12 : ℝ) :=
      mul_le_mul_of_nonneg_left
        (pdfSqrt_le_twelfthRoot nonnegative bounded)
        (Real.sqrt_nonneg _)

theorem pdfQuantitativeRoundingLoss
    {K alpha eta kappa gamma : ℝ}
    (constant : 0 ≤ K)
    (nonnegative : 0 ≤ eta)
    (bounded : eta ≤ 1)
    (pinsker : kappa ≤ Real.sqrt ((3 / 2 : ℝ) * eta)) :
    totalSamplingLoss K alpha eta (kappa + gamma) ≤
      2 * K * alpha ^ (1 / 12 : ℝ) +
        pdfRoundingCoefficient K * eta ^ (1 / 12 : ℝ) +
        (5 + 2 * universalErrorCeiling K) * gamma := by
  have ceiling : 0 ≤ universalErrorCeiling K := by
    unfold universalErrorCeiling
    positivity
  have classical_coefficient :
      0 ≤ 5 + 2 * universalErrorCeiling K := by
    nlinarith
  have pinsker_bound :=
    pdfPinskerRoot_le_twelfthRoot nonnegative bounded pinsker
  have weighted_pinsker :
      (5 + 2 * universalErrorCeiling K) * kappa ≤
        (5 + 2 * universalErrorCeiling K) *
          (Real.sqrt (3 / 2 : ℝ) * eta ^ (1 / 12 : ℝ)) :=
    mul_le_mul_of_nonneg_left pinsker_bound classical_coefficient
  have sqrt_bound :=
    pdfSqrtEight_le_twelfthRoot nonnegative bounded
  have weighted_sqrt :
      2 * Real.sqrt (8 * eta) ≤
        2 * (Real.sqrt (8 : ℝ) * eta ^ (1 / 12 : ℝ)) :=
    mul_le_mul_of_nonneg_left sqrt_bound (by norm_num)
  have source_bounds := add_le_add weighted_pinsker weighted_sqrt
  calc
    totalSamplingLoss K alpha eta (kappa + gamma) =
        2 * K * alpha ^ (1 / 12 : ℝ) +
          ((5 + 2 * universalErrorCeiling K) * kappa +
            2 * Real.sqrt (8 * eta)) +
          2 * K *
            ((32 : ℝ) ^ (1 / 12 : ℝ) * eta ^ (1 / 12 : ℝ)) +
          (5 + 2 * universalErrorCeiling K) * gamma := by
      unfold totalSamplingLoss
      rw [Real.mul_rpow (by norm_num : (0 : ℝ) ≤ 32) nonnegative]
      ring
    _ ≤ 2 * K * alpha ^ (1 / 12 : ℝ) +
          ((5 + 2 * universalErrorCeiling K) *
              (Real.sqrt (3 / 2 : ℝ) * eta ^ (1 / 12 : ℝ)) +
            2 * (Real.sqrt (8 : ℝ) * eta ^ (1 / 12 : ℝ))) +
          2 * K *
            ((32 : ℝ) ^ (1 / 12 : ℝ) * eta ^ (1 / 12 : ℝ)) +
          (5 + 2 * universalErrorCeiling K) * gamma := by
      gcongr
    _ = 2 * K * alpha ^ (1 / 12 : ℝ) +
          pdfRoundingCoefficient K * eta ^ (1 / 12 : ℝ) +
          (5 + 2 * universalErrorCeiling K) * gamma := by
      unfold pdfRoundingCoefficient
      ring

variable {X Y A B : Type*}
variable [Fintype X] [Fintype Y] [Fintype A] [Fintype B]

end

noncomputable section

variable {X Y A B : Type*}
variable [Fintype X] [Fintype Y] [Fintype A] [Fintype B]

theorem pdfExistsRepeatedStrategyAboveExponential
    (G : Game X Y A B) (n : ℕ) (d : ℝ)
    (failure : Real.exp (-d * (n : ℝ)) < repeatedEntangledValue G n) :
    ∃ S : Strategy (G.repeat n),
      Real.exp (-d * (n : ℝ)) < S.winProbability :=
  exists_repeatedStrategy_of_lt_entangledValue
    G (Real.exp_pos _) failure

theorem pdfFixedExponentialBound_of_sourceEquationTwentyNine
    (G : Game X Y A B) (n : ℕ) (d : ℝ)
    (construct :
      ∀ S : Strategy (G.repeat n),
        Real.exp (-d * (n : ℝ)) < S.winProbability →
          ∃ (rounded : Strategy G) (K₀ α η lam : ℝ),
            roundedWinningLowerBound (1 - entangledValue G)
                K₀ α η lam ≤ rounded.winProbability ∧
              totalSamplingLoss K₀ α η lam <
                (1 - entangledValue G) / 2) :
    repeatedEntangledValue G n ≤ Real.exp (-d * (n : ℝ)) := by
  by_contra not_bound
  have failure :
      Real.exp (-d * (n : ℝ)) < repeatedEntangledValue G n :=
    lt_of_not_ge not_bound
  obtain ⟨S, winning⟩ :=
    pdfExistsRepeatedStrategyAboveExponential G n d failure
  obtain ⟨rounded, K₀, α, η, lam, bound, error⟩ :=
    construct S winning
  exact source_equation_twenty_nine_contradiction
    G rounded K₀ α η lam bound error

end

noncomputable section

open scoped BigOperators

variable {X Y A B : Type*}
variable [Fintype X] [Fintype Y] [Fintype A] [Fintype B]

theorem entangledValue_eq_zero_of_strategyWinProbability_eq_zero
    (G : Game X Y A B)
    (hzero : ∀ S : Strategy G, S.winProbability = 0) :
    entangledValue G = 0 := by
  apply le_antisymm _ (entangledValue_nonneg G)
  unfold entangledValue
  by_cases hnonempty :
      (Set.range (Strategy.winProbability (G := G))).Nonempty
  · apply csSup_le hnonempty
    rintro _ ⟨S, rfl⟩
    exact le_of_eq (hzero S)
  · rw [Set.not_nonempty_iff_eq_empty.mp hnonempty,
      Real.sSup_empty]

end

noncomputable section

open scoped BigOperators ComplexOrder Kronecker MatrixOrder

attribute [local instance] Classical.propDecidable

variable {X Y A B : Type*}
variable [Fintype X] [Fintype Y] [Fintype A] [Fintype B]

theorem pdfConstantStrategy_outcomeProbability
    (G : Game X Y A B) (a : A) (b : B)
    (x : X) (y : Y) (a' : A) (b' : B) :
    (pdfConstantStrategy G a b).outcomeProbability x y a' b' =
      if a' = a ∧ b' = b then 1 else 0 := by
  classical
  change
    (Matrix.trace
      ((1 : Matrix (PUnit × PUnit) (PUnit × PUnit) ℂ) *
        ((if a' = a then (1 : Matrix PUnit PUnit ℂ) else 0) ⊗ₖ
          (if b' = b then (1 : Matrix PUnit PUnit ℂ) else 0)))).re = _
  by_cases alice : a' = a <;> by_cases bob : b' = b <;>
    simp [alice, bob, Matrix.trace_one]

theorem pdfConstantStrategy_winProbability
    (G : Game X Y A B) (a : A) (b : B) :
    (pdfConstantStrategy G a b).winProbability =
      ∑ x : X, ∑ y : Y,
        if G.predicate x y a b = true then G.questionWeight x y else 0 := by
  classical
  have accepted_outcome (x : X) (y : Y) (a' : A) (b' : B) :
      (if G.predicate x y a' b' = true then
        (if a' = a ∧ b' = b then (1 : ℝ) else 0)
      else 0) =
        if a' = a then
          if b' = b then
            if G.predicate x y a b = true then 1 else 0
          else 0
        else 0 := by
    by_cases alice : a' = a <;> by_cases bob : b' = b <;>
      simp_all
  unfold Strategy.winProbability
  simp_rw [pdfConstantStrategy_outcomeProbability]
  simp_rw [accepted_outcome]
  simp [mul_ite]

theorem pdfQuestionWeight_le_constantStrategy
    (G : Game X Y A B)
    (x : X) (y : Y) (a : A) (b : B)
    (accepted : G.predicate x y a b = true) :
    G.questionWeight x y ≤
      (pdfConstantStrategy G a b).winProbability := by
  classical
  rw [pdfConstantStrategy_winProbability]
  calc
    G.questionWeight x y =
        if G.predicate x y a b = true then G.questionWeight x y else 0 := by
          simp [accepted]
    _ ≤ ∑ y' : Y,
        if G.predicate x y' a b = true then G.questionWeight x y' else 0 := by
          exact Finset.single_le_sum
            (f := fun y' : Y =>
              if G.predicate x y' a b = true then G.questionWeight x y' else 0)
            (fun y' _ => by beta_reduce; split_ifs <;> simp [G.weight_nonneg])
            (Finset.mem_univ y)
    _ ≤ ∑ x' : X, ∑ y' : Y,
        if G.predicate x' y' a b = true then G.questionWeight x' y' else 0 := by
          exact Finset.single_le_sum
            (f := fun x' : X => ∑ y' : Y,
              if G.predicate x' y' a b = true then G.questionWeight x' y' else 0)
            (fun x' _ => Finset.sum_nonneg
              (fun y' _ => by split_ifs <;> simp [G.weight_nonneg]))
            (Finset.mem_univ x)

theorem pdfPredicate_not_accepted_of_entangledValue_eq_zero
    (G : Game X Y A B)
    (zero : entangledValue G = 0)
    (x : X) (y : Y) (a : A) (b : B)
    (supported : 0 < G.questionWeight x y) :
    G.predicate x y a b ≠ true := by
  intro accepted
  have lower := pdfQuestionWeight_le_constantStrategy
    G x y a b accepted
  have upper :
      (pdfConstantStrategy G a b).winProbability ≤
        entangledValue G := by
    unfold entangledValue
    exact le_csSup (winProbabilities_bddAbove G)
      ⟨pdfConstantStrategy G a b, rfl⟩
  linarith

theorem pdfRepeatedEntangledValue_eq_zero_of_entangledValue_eq_zero
    (G : Game X Y A B)
    (zero : entangledValue G = 0)
    {n : ℕ} (positive : 0 < n) :
    repeatedEntangledValue G n = 0 := by
  classical
  let i : Fin n := ⟨0, positive⟩
  apply entangledValue_eq_zero_of_strategyWinProbability_eq_zero (G.repeat n)
  intro S
  unfold Strategy.winProbability
  apply Finset.sum_eq_zero
  intro xs _
  apply Finset.sum_eq_zero
  intro ys _
  by_cases zero_weight : (G.repeat n).questionWeight xs ys = 0
  · change (G.repeat n).questionWeight xs ys * _ = 0
    rw [zero_weight, zero_mul]
  · have local_nonzero : G.questionWeight (xs i) (ys i) ≠ 0 := by
      intro local_zero
      apply zero_weight
      rw [Game.repeat_questionWeight]
      exact Finset.prod_eq_zero (Finset.mem_univ i) local_zero
    have supported : 0 < G.questionWeight (xs i) (ys i) :=
      lt_of_le_of_ne (G.weight_nonneg (xs i) (ys i)) local_nonzero.symm
    have never (as : Fin n → A) (bs : Fin n → B) :
        (G.repeat n).predicate xs ys as bs ≠ true := by
      intro accepted
      exact pdfPredicate_not_accepted_of_entangledValue_eq_zero
        G zero (xs i) (ys i) (as i) (bs i) supported
        ((Game.repeat_predicate_eq_true G n xs ys as bs).mp accepted i)
    simp [never]

end

noncomputable section

theorem pdfAlphabetEntropy_nonneg
    {A B : Type} [Fintype A] [Fintype B]
    (alice : Nonempty A) (bob : Nonempty B) :
    0 ≤ Real.log
      ((Fintype.card A : ℝ) * (Fintype.card B : ℝ)) := by
  have alice_card : 0 < Fintype.card A :=
    Fintype.card_pos_iff.mpr alice
  have bob_card : 0 < Fintype.card B :=
    Fintype.card_pos_iff.mpr bob
  have alice_real : (1 : ℝ) ≤ (Fintype.card A : ℝ) := by
    exact_mod_cast alice_card
  have bob_real : (1 : ℝ) ≤ (Fintype.card B : ℝ) := by
    exact_mod_cast bob_card
  apply Real.log_nonneg
  nlinarith [mul_nonneg (sub_nonneg.mpr alice_real)
    (sub_nonneg.mpr bob_real)]

theorem pdfGap_le_one
    {X Y A B : Type}
    [Fintype X] [Fintype Y] [Fintype A] [Fintype B]
    (G : Game X Y A B) :
    1 - entangledValue G ≤ 1 := by
  have nonnegative := entangledValue_nonneg G
  linarith

theorem pdfPostselectionLogCost_lt_of_exponential
    {X Y A B : Type}
    [Fintype X] [Fintype Y] [Fintype A] [Fintype B]
    (G : Game X Y A B) (n : ℕ)
    (S : Strategy (G.repeat n)) (D : Finset (Fin n))
    (d : ℝ)
    (above : Real.exp (-d * (n : ℝ)) <
      repeatedPostselectionMass G n S D) :
    postselectionLogCost G n S D < d * (n : ℝ) := by
  have logarithm := Real.log_lt_log (Real.exp_pos (-d * (n : ℝ))) above
  rw [Real.log_exp] at logarithm
  unfold postselectionLogCost
  rw [one_div, Real.log_inv]
  linarith

theorem pdfPinskerRate_le_sqrt_martingaleRate
    {X Y A B : Type}
    [Fintype X] [Fintype Y] [Fintype A] [Fintype B]
    (G : Game X Y A B) (n : ℕ)
    (S : Strategy (G.repeat n)) (D : Finset (Fin n))
    (positive : 0 < repeatedPostselectionMass G n S D) :
    exactSourcePinskerRate G n S D ≤
      Real.sqrt ((3 / 2 : ℝ) * martingaleRate G n S D) := by
  unfold exactSourcePinskerRate
  apply Real.sqrt_le_sqrt
  have information :=
    exactSourceClassicalInformationRate_le_three_martingaleRate
      G n S D positive
  nlinarith

theorem pdfActualMartingaleRate_lt_twelfth_power
    {X Y A B : Type}
    [Fintype X] [Fintype Y] [Fintype A] [Fintype B]
    (G : Game X Y A B) (n : ℕ)
    (S : Strategy (G.repeat n)) (D : Finset (Fin n))
    (Bqs ε ell : ℝ)
    (constant : 1 ≤ Bqs)
    (gap : 0 < ε)
    (unit : ε ≤ 1)
    (alphabet : 0 ≤ ell)
    (alphabet_eq : ell =
      Real.log ((Fintype.card A : ℝ) * (Fintype.card B : ℝ)))
    (length : 0 < n)
    (remaining :
      (n : ℝ) / 2 < ((Finset.univ \ D).card : ℝ))
    (above :
      Real.exp
        (-pdfGapRate Bqs ε ell * (n : ℝ)) <
        repeatedPostselectionMass G n S D)
    (conditioned :
      (D.card : ℝ) <
        pdfGapRate Bqs ε ell * (n : ℝ) /
          pdfConditioningTolerance ε) :
    martingaleRate G n S D < (ε / (4 * Bqs)) ^ 12 := by
  have postselection :=
    pdfPostselectionLogCost_lt_of_exponential
      G n S D (pdfGapRate Bqs ε ell) above
  have actual := pdfQuantitativeEntropyRate_lt_twelfth_power
    constant gap unit alphabet length remaining postselection conditioned
  simpa [martingaleRate, answerLogCost, alphabet_eq]
    using actual

theorem pdfFullQuantitativeSamplingLoss
    {K ε eta kappa : ℝ}
    (constant : 1 ≤ K)
    (gap : 0 < ε)
    (unit : ε ≤ 1)
    (entropy : 0 ≤ eta)
    (small :
      eta <
        (ε / (4 * pdfRoundingCoefficient K)) ^ (12 : ℕ))
    (pinsker : kappa ≤ Real.sqrt ((3 / 2 : ℝ) * eta)) :
    totalSamplingLoss K (pdfCatalystAccuracy K ε) eta
      (kappa + ε / (16 * (5 + 2 * universalErrorCeiling K))) <
        ε / 2 := by
  have coefficient : 1 ≤ pdfRoundingCoefficient K :=
    pdfRoundingCoefficient_one_le constant
  have bounded : eta ≤ 1 :=
    small.le.trans
      (pdfGapBase_twelfth_le_one coefficient gap unit)
  have loss := pdfQuantitativeRoundingLoss
    (K := K) (alpha := pdfCatalystAccuracy K ε)
    (eta := eta) (kappa := kappa)
    (gamma := ε / (16 * (5 + 2 * universalErrorCeiling K)))
    (by linarith) entropy bounded pinsker
  have entropy_loss :
      pdfRoundingCoefficient K * eta ^ (1 / 12 : ℝ) <
        ε / 4 :=
    pdfEntropyRoundingLoss_lt_gapQuarter
      coefficient gap entropy small
  have catalyst_loss :
      2 * K *
        (pdfCatalystAccuracy K ε) ^ (1 / 12 : ℝ) =
        ε / 8 :=
    pdfCatalystAccuracy_samplingLoss constant gap
  have ceiling : 0 < universalErrorCeiling K :=
    pdfUniversalErrorCeiling_pos constant
  have gamma_loss :
      (5 + 2 * universalErrorCeiling K) *
          (ε / (16 * (5 + 2 * universalErrorCeiling K))) =
        ε / 16 := by
    field_simp
  linarith

end

end QuantumParallelRepetition


open QuantumParallelRepetition
open scoped ComplexOrder Matrix BigOperators InnerProductSpace
open Complex Matrix Finset

theorem solution
    (rounding :
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
                rounded.winProbability) :
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
                        (Fintype.card B : ℝ))))) * (n : ℝ)) := by
  obtain ⟨K, constant, round⟩ := rounding
  let Bqs : ℝ := pdfRoundingCoefficient K
  have coefficient : 1 ≤ Bqs :=
    pdfRoundingCoefficient_one_le constant
  refine ⟨pdfUniversalRate Bqs,
    pdfUniversalRate_pos (by linarith), ?_⟩
  intro X Y A B _ _ _ _ G alice bob game_gap n length
  by_cases zero : entangledValue G = 0
  · rw [pdfRepeatedEntangledValue_eq_zero_of_entangledValue_eq_zero
      G zero length]
    exact (Real.exp_pos _).le
  · let ε : ℝ := 1 - entangledValue G
    let ell : ℝ :=
      Real.log ((Fintype.card A : ℝ) * (Fintype.card B : ℝ))
    let d : ℝ := pdfGapRate Bqs ε ell
    let τ : ℝ := pdfConditioningTolerance ε
    have gap : 0 < ε := by
      simpa [ε] using game_gap
    have unit : ε ≤ 1 := by
      simpa [ε] using pdfGap_le_one G
    have alphabet : 0 ≤ ell := by
      exact pdfAlphabetEntropy_nonneg alice bob
    have tolerance := pdfConditioningTolerance_bounds gap unit
    have tolerance_positive : 0 < τ := tolerance.1
    have tolerance_lt_one : τ < 1 := by
      have at_most := tolerance.2
      dsimp [τ]
      linarith
    have rate_positive : 0 < d :=
      pdfGapRate_pos (by linarith) gap alphabet
    have rate_small : d ≤ τ / 2 :=
      pdfGapRate_le_half_conditioningTolerance
        coefficient gap unit alphabet
    have exponential :
        repeatedEntangledValue G n ≤ Real.exp (-d * (n : ℝ)) := by
      apply pdfFixedExponentialBound_of_sourceEquationTwentyNine
        G n d
      intro S winning
      obtain ⟨D, selected, remaining_real, postselection_floor,
          _strategy_floor, positive, remaining, failure⟩ :=
        pdfQuantitativeGreedyConditioning
          G n S τ d S.winProbability length
          tolerance_positive tolerance_lt_one rate_positive rate_small
          winning (le_refl _)
      have above :
          Real.exp (-d * (n : ℝ)) <
            repeatedPostselectionMass G n S D :=
        winning.trans_le postselection_floor
      have small :
          martingaleRate G n S D <
            (ε / (4 * Bqs)) ^ (12 : ℕ) := by
        apply pdfActualMartingaleRate_lt_twelfth_power
          G n S D Bqs ε ell coefficient gap unit alphabet
          (by rfl) length remaining_real
        · exact above
        · exact selected
      have entropy : 0 ≤ martingaleRate G n S D :=
        martingaleRate_nonneg G n S D remaining positive
      have pinsker :
          exactSourcePinskerRate G n S D ≤
            Real.sqrt
              ((3 / 2 : ℝ) * martingaleRate G n S D) :=
        pdfPinskerRate_le_sqrt_martingaleRate
          G n S D positive
      let alpha : ℝ := pdfCatalystAccuracy K ε
      let gamma : ℝ :=
        ε / (16 * (5 + 2 * universalErrorCeiling K))
      have alpha_bounds :=
        pdfCatalystAccuracy_bounds constant gap unit
      have alpha_positive : 0 < alpha := alpha_bounds.1
      have alpha_at_most_one : alpha ≤ 1 := alpha_bounds.2
      have ceiling : 0 < universalErrorCeiling K :=
        pdfUniversalErrorCeiling_pos constant
      have gamma_positive : 0 < gamma := by
        dsimp [gamma]
        positivity
      have source_failure :
          uniformRemainingFailure
              (strategyEventLaw (G.repeat n) S)
              (repeatedCoordinateWin G n) D <
            (1 - entangledValue G) / 2 := by
        change
          uniformRemainingFailure
              (strategyEventLaw (G.repeat n) S)
              (repeatedCoordinateWin G n) D < ε / 2
        have actual :
            uniformRemainingFailure
                (strategyEventLaw (G.repeat n) S)
                (repeatedCoordinateWin G n) D < ε / 4 := by
          simpa [τ, pdfConditioningTolerance] using failure
        linarith
      obtain ⟨rounded, rounded_bound⟩ :=
        round G n S D remaining positive alpha gamma
          alpha_positive alpha_at_most_one gamma_positive source_failure
      refine ⟨rounded, K, alpha,
        martingaleRate G n S D,
        exactSourcePinskerRate G n S D + gamma,
        rounded_bound, ?_⟩
      have actual_loss := pdfFullQuantitativeSamplingLoss
        constant gap unit entropy
        (show martingaleRate G n S D <
          (ε / (4 * pdfRoundingCoefficient K)) ^ (12 : ℕ) by
            simpa [Bqs] using small)
        pinsker
      change totalSamplingLoss K alpha
          (martingaleRate G n S D)
          (exactSourcePinskerRate G n S D + gamma) <
        (1 - entangledValue G) / 2
      simpa [alpha, gamma, ε] using actual_loss
    simpa [d, pdfGapRate, ε, ell, div_eq_mul_inv,
      mul_assoc] using exponential
