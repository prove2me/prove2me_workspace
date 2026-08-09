import Definitions.Def_quantum_parallel_repetition_game
import Definitions.Def_qpr_core_23
import Theorems.Thm_QuantumParallelRepetition_exactAlicePurificationFamily_posSemidef
import Theorems.Thm_QuantumParallelRepetition_exactBobPurificationFamily_posSemidef
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

open scoped BigOperators

set_option backward.isDefEq.respectTransparency false
set_option maxHeartbeats 8000000
set_option maxRecDepth 3072

open QuantumParallelRepetition.Pinsker
open QuantumParallelRepetition.ClassicalInformation

attribute [local instance] Classical.propDecidable

variable {X Y A B : Type*}
variable [Fintype X] [Fintype Y] [Fintype A] [Fintype B]

def exactAliceSourceSeedBornInformation
    (G : Game X Y A B) (n : ℕ) (S : Strategy (G.repeat n))
    (D : Finset (Fin n))
    (seed : ExactRemainingSeed D) : ℝ :=
  ∑ outcome : ExactOutcome X Y A B n,
    repeatedConditionedOutcomeLaw G n S D outcome *
      finiteRelativeEntropy
        (jointConditional
          (fun atom :
            ((SourceRemainingCoordinate D × X) ×
              ExactHistoryFlag X Y A B D) × Y =>
            exactAliceInformationPosterior G n S D
              (atom.1.1, (atom.1.2, atom.2)))
          ((seed.coordinate, outcome.1 seed.coordinate.val),
            exactHistoryCode D (seed, outcome)))
        (G.conditionalYGivenX
          (outcome.1 seed.coordinate.val))

end

noncomputable section

open scoped BigOperators

set_option backward.isDefEq.respectTransparency false
set_option maxHeartbeats 6000000
set_option maxRecDepth 2048

open QuantumParallelRepetition.Pinsker
open QuantumParallelRepetition.ClassicalInformation

attribute [local instance] Classical.propDecidable

variable {X Y A B : Type*}
variable [Fintype X] [Fintype Y] [Fintype A] [Fintype B]

def exactReverseBobMaskedOutcomeContext
    (G : Game X Y A B) (n : ℕ) (S : Strategy (G.repeat n))
    (D : Finset (Fin n))
    (side : Finset (SourceRemainingCoordinate D))
    (default : X) (marker : Fin side.card)
    (context : ExactReverseSideContext
      (SourceRemainingCoordinate D) side)
    (outcome : ExactOutcome X Y A B n) :
    ExactReverseBobNextContext X Y A B D side :=
  let projection :=
    exactReverseBobContextOutcomeProjection
      (X := X) (Y := Y) (A := A) (B := B)
      D side context outcome
  finitePrefixMask default marker.castSucc
    ((projection.1,
      repeatedConditionedAnswerFlag G n S D outcome),
      projection.2)

end

noncomputable section

open scoped BigOperators

set_option backward.isDefEq.respectTransparency false
set_option maxHeartbeats 8000000
set_option maxRecDepth 2048

open QuantumParallelRepetition.Pinsker
open QuantumParallelRepetition.ClassicalInformation

attribute [local instance] Classical.propDecidable

variable {X Y A B : Type*}
variable [Fintype X] [Fintype Y] [Fintype A] [Fintype B]

def exactReverseBobContextMarkedEntropyScore
    (G : Game X Y A B) (n : ℕ) (S : Strategy (G.repeat n))
    (D : Finset (Fin n))
    (remaining : 0 < (Finset.univ \ D).card)
    (default : X)
    (side : Finset (SourceRemainingCoordinate D))
    (context : ExactReverseSideContext
      (SourceRemainingCoordinate D) side)
    (marker : Fin side.card)
    (outcome : ExactOutcome X Y A B n) : ℝ :=
  let target :=
    exactReverseBobMaskedOutcomeContext
      G n S D side default marker context outcome
  finiteRelativeEntropy
    (jointConditional
      (groupedMass
        (exactPrefixNextCode default marker)
        (exactConditionedReverseBobNextJoint
          G n S D remaining side))
      target)
    (jointConditional
      (groupedMass
        (exactPrefixNextCode default marker)
        (exactConditionedReverseBobNextPrior
          G n S D remaining side))
      target)

def exactReverseBobActualMarkedEntropyScore
    (G : Game X Y A B) (n : ℕ) (S : Strategy (G.repeat n))
    (D : Finset (Fin n))
    (remaining : 0 < (Finset.univ \ D).card)
    (default : X)
    (side : Finset (SourceRemainingCoordinate D))
    (seed : ExactRemainingSeed D)
    (marker : Fin side.card)
    (outcome : ExactOutcome X Y A B n) : ℝ :=
  let target :=
    exactReverseBobMaskedOutcomeContext
      G n S D side default marker
      (exactReverseBobContextAt side seed)
      outcome
  finiteRelativeEntropy
    (jointConditional
      (groupedMass
        (exactPrefixNextCode default marker)
        (exactConditionedReverseBobNextJoint
          G n S D remaining side))
      target)
    (jointConditional
      (groupedMass
        (exactPrefixNextCode default marker)
        (exactConditionedReverseBobNextPrior
          G n S D remaining side))
      target)

end

noncomputable section

open scoped BigOperators

set_option backward.isDefEq.respectTransparency false
set_option maxHeartbeats 1600000
set_option maxRecDepth 2048

open QuantumParallelRepetition.Pinsker
open QuantumParallelRepetition.ClassicalSampling
open QuantumParallelRepetition.ClassicalInformation

attribute [local instance] Classical.propDecidable

variable {X Y A B : Type}
variable [Fintype X] [Fintype Y] [Fintype A] [Fintype B]

def ExactSourceSupportPreservingClassicalSampler
    (G : Game X Y A B) (n : ℕ) (S : Strategy (G.repeat n))
    (D : Finset (Fin n))
    (base : ExactHistoryFlag X Y A B D)
    (kappa gamma : ℝ) : Prop :=
  ∃ denominator : ℕ, 0 < denominator ∧
    ∃ numerator : ExactLocalSamplerIndex X Y D →
      ExactHistoryFlag X Y A B D → ℕ,
      (∀ index, (∑ history, numerator index history) = denominator) ∧
      (∀ index, finiteTotalVariation
        (exactLocalConditionalFamily D base
          (exactLocallySampleableLaw G n S D) index)
        (fun history =>
          (numerator index history : ℝ) / denominator) < gamma) ∧
      (∀ index history,
        0 < exactLocalConditionalFamily D base
            (exactLocallySampleableLaw G n S D)
            index history →
          0 < numerator index history) ∧
      ∃ nonempty : ∀ index,
        (rationalMarked denominator (numerator index)).Nonempty,
        finiteTotalVariation
            (exactLocallySampleableLaw G n S D)
            (exactLocallySampleableJARounded
              G n D denominator numerator) ≤ kappa + gamma ∧
        finiteTotalVariation
            (exactLocallySampleableLaw G n S D)
            (exactLocallySampleableJBRounded
              G n D denominator numerator) ≤ kappa + gamma ∧
        exactLocallySampleablePermutationMismatch
            G n D denominator numerator nonempty ≤
          4 * (kappa + gamma)

end

noncomputable section

open Filter
open scoped Topology

variable {X Y A B : Type*}
variable [Fintype X] [Fintype Y] [Fintype A] [Fintype B]

def ExactSourceOneGameRounding
    (G : Game X Y A B) : Prop :=
  ∃ K₀ : ℝ, 0 ≤ K₀ ∧
    ∀ (n : ℕ) (S : Strategy (G.repeat n))
      (D : Finset (Fin n)),
      0 < (Finset.univ \ D).card →
      0 < repeatedPostselectionMass G n S D →
      ∀ (α gamma : ℝ),
        0 < α → α ≤ 1 → 0 < gamma →
        uniformRemainingFailure
            (strategyEventLaw (G.repeat n) S)
            (repeatedCoordinateWin G n) D <
          (1 - entangledValue G) / 2 →
        ∃ rounded : Strategy G,
          roundedWinningLowerBound (1 - entangledValue G)
              K₀ α (martingaleRate G n S D)
              (exactSourcePinskerRate G n S D + gamma) ≤
            rounded.winProbability

end

noncomputable section

open Matrix
open scoped BigOperators ComplexOrder Kronecker MatrixOrder
  Matrix.Norms.L2Operator InnerProductSpace

set_option backward.isDefEq.respectTransparency false
set_option maxHeartbeats 2000000
set_option maxRecDepth 2048

attribute [local instance] Classical.propDecidable

variable {X Y A B : Type}
variable [Fintype X] [Fintype Y] [Fintype A] [Fintype B]

def unitaryConjugatePOVM
    {C d : Type} [Fintype C] [Fintype d] [DecidableEq d]
    (U : Matrix.unitaryGroup d ℂ) (P : POVM C d) : POVM C d where
  operator c :=
    (U : Matrix d d ℂ)ᴴ * P.operator c * (U : Matrix d d ℂ)
  positive c := by
    have positive :=
      (P.positive c).mul_mul_conjTranspose_same
        ((U : Matrix d d ℂ)ᴴ)
    simpa using positive
  complete := by
    classical
    have unitary :
        (U : Matrix d d ℂ)ᴴ * (U : Matrix d d ℂ) = 1 := by
      simpa [Matrix.star_eq_conjTranspose] using
        (Matrix.mem_unitaryGroup_iff').mp U.property
    calc
      (∑ c : C,
        (U : Matrix d d ℂ)ᴴ * P.operator c * (U : Matrix d d ℂ)) =
          (U : Matrix d d ℂ)ᴴ *
            (∑ c : C, P.operator c) *
            (U : Matrix d d ℂ) := by
              simp [Finset.mul_sum, Finset.sum_mul]
      _ = 1 := by rw [P.complete, Matrix.mul_one, unitary]

end

noncomputable section

open WithLp
open scoped BigOperators ComplexOrder Kronecker MatrixOrder
  Matrix.Norms.L2Operator InnerProductSpace

set_option backward.isDefEq.respectTransparency false
set_option maxHeartbeats 2400000
set_option maxRecDepth 2048

open QuantumParallelRepetition.ClassicalSampling

attribute [local instance] Classical.propDecidable

variable {X Y A B : Type}
variable [Fintype X] [Fintype Y] [Fintype A] [Fintype B]

def exactSourceGlobalCatalystWinningEffect
    [DecidableEq A] [DecidableEq B]
    (G : Game X Y A B) (n : ℕ) (S : Strategy (G.repeat n))
    (D : Finset (Fin n)) (e : ℕ)
    (a₀ : A) (b₀ : B) (x : X) (y : Y) :
    Matrix
      (Fin (Fintype.card
        (ExactGlobalHistoryLocalIndex G n S D) * e) ×
       Fin (Fintype.card
        (ExactGlobalHistoryLocalIndex G n S D) * e))
      (Fin (Fintype.card
        (ExactGlobalHistoryLocalIndex G n S D) * e) ×
       Fin (Fintype.card
        (ExactGlobalHistoryLocalIndex G n S D) * e)) ℂ :=
  ∑ a : A, ∑ b : B,
    if G.predicate x y a b = true then
      (exactSourceGlobalCatalystAlicePOVM
        G n S D e a₀ x).operator a ⊗ₖ
      (exactSourceGlobalCatalystBobPOVM
        G n S D e b₀ y).operator b
    else 0

def exactSourceGlobalCatalystBasisEquiv
    (G : Game X Y A B) (n : ℕ) (S : Strategy (G.repeat n))
    (D : Finset (Fin n)) (e : ℕ) :
    ((ExactGlobalHistoryLocalIndex G n S D ×
       ExactGlobalHistoryLocalIndex G n S D) ×
      (Fin e × Fin e)) ≃
      (Fin (Fintype.card
        (ExactGlobalHistoryLocalIndex G n S D) * e) ×
       Fin (Fintype.card
        (ExactGlobalHistoryLocalIndex G n S D) * e)) := by
  classical
  let localEquiv :
      (ExactGlobalHistoryLocalIndex G n S D × Fin e) ≃
        Fin (Fintype.card
          (ExactGlobalHistoryLocalIndex G n S D) * e) :=
    (Equiv.prodCongr
      (Fintype.equivFin
        (ExactGlobalHistoryLocalIndex G n S D))
      (Equiv.refl (Fin e))).trans finProdFinEquiv
  exact
    (Equiv.prodProdProdComm
      (ExactGlobalHistoryLocalIndex G n S D)
      (ExactGlobalHistoryLocalIndex G n S D)
      (Fin e) (Fin e)).trans (Equiv.prodCongr localEquiv localEquiv)

end

noncomputable section

open WithLp
open scoped BigOperators Kronecker ComplexOrder MatrixOrder
  Matrix.Norms.L2Operator InnerProductSpace

def unconditionalMatchedVerifierTensor
    {s t : Type*} [Fintype s] [Fintype t]
    (target : EuclideanSpace ℂ s)
    (work : EuclideanSpace ℂ t) :
    EuclideanSpace ℂ (s × t) :=
  toLp 2 (fun q : s × t => target q.1 * work q.2)

variable {X Y A B : Type*}
variable [Fintype X] [Fintype Y] [Fintype A] [Fintype B]

end

noncomputable section

open WithLp
open scoped BigOperators Kronecker ComplexOrder MatrixOrder
  Matrix.Norms.L2Operator InnerProductSpace

abbrev UnconditionalSelectedCopyLocalIndex
    (B d N m : ℕ) :=
  Σ _ : Fin B × Fin d, Fin (N * m)

def unconditionalSelectedCopyCleanedStage
    {d N B m : ℕ}
    (Q : ℕ) (w : ℝ)
    (ξ ζ : BipartiteUnitVector d)
    (A C : Fin B → Option ℕ →
      Matrix.unitaryGroup (Fin (N * m)) ℂ) :
    EuclideanSpace ℂ
      (UnconditionalSelectedCopyLocalIndex B d N m ×
       UnconditionalSelectedCopyLocalIndex B d N m) :=
  dSVDensityRationalPublicBucketPhysicalCoherentLocalReset
    Q w ξ ζ A C
    (dSVDensityRationalPublicBucketPhysicalCoherentMixedState
      (N := N) (B := B) w m ξ ζ)

def unconditionalSelectedCopyIdealStage
    {d N B m : ℕ}
    (w : ℝ) (ξ ζ : BipartiteUnitVector d) :
    EuclideanSpace ℂ
      (UnconditionalSelectedCopyLocalIndex B d N m ×
       UnconditionalSelectedCopyLocalIndex B d N m) :=
  dSVDensityRationalPublicBucketPhysicalCoherentTargetState
    (N := N) (B := B) w m ξ ζ

def unconditionalSelectedCopyRetainedWork
    {S N d L : ℕ} {τ : Type*} [Fintype τ]
    (width : Fin S → ℝ) (schedule : Fin L → Fin S)
    (ξ ζ : BipartiteUnitVector d)
    (j : Fin L) (rest : EuclideanSpace ℂ τ) :
    EuclideanSpace ℂ
      ((Fin j.val →
        (DSVUniformDensityThresholdLocalIndex N d ×
         DSVUniformDensityThresholdLocalIndex N d)) × τ) :=
  unconditionalMatchedVerifierTensor
    (dSVDensityRationalHeterogeneousStoppedCommonPrefixFailureVector
      (N := N) width schedule ξ ζ j)
    rest

def unconditionalSelectedCopyCleanedMatchedBranch
    {S N d L B m : ℕ} {τ : Type*} [Fintype τ]
    (Q : ℕ) (width : Fin S → ℝ)
    (schedule : Fin L → Fin S)
    (ξ ζ : BipartiteUnitVector d)
    (A C : Fin B → Option ℕ →
      Matrix.unitaryGroup (Fin (N * m)) ℂ)
    (j : Fin L) (rest : EuclideanSpace ℂ τ) :
    EuclideanSpace ℂ
      ((UnconditionalSelectedCopyLocalIndex B d N m ×
          UnconditionalSelectedCopyLocalIndex B d N m) ×
        ((Fin j.val →
          (DSVUniformDensityThresholdLocalIndex N d ×
            DSVUniformDensityThresholdLocalIndex N d)) × τ)) :=
  unconditionalMatchedVerifierTensor
    (unconditionalSelectedCopyCleanedStage
      (N := N) (B := B) (m := m)
      Q (width (schedule j)) ξ ζ A C)
    (unconditionalSelectedCopyRetainedWork
      (N := N) width schedule ξ ζ j rest)

def unconditionalSelectedCopyIdealMatchedBranch
    {S N d L B m : ℕ} {τ : Type*} [Fintype τ]
    (width : Fin S → ℝ)
    (schedule : Fin L → Fin S)
    (ξ ζ : BipartiteUnitVector d)
    (j : Fin L) (rest : EuclideanSpace ℂ τ) :
    EuclideanSpace ℂ
      ((UnconditionalSelectedCopyLocalIndex B d N m ×
          UnconditionalSelectedCopyLocalIndex B d N m) ×
        ((Fin j.val →
          (DSVUniformDensityThresholdLocalIndex N d ×
            DSVUniformDensityThresholdLocalIndex N d)) × τ)) :=
  unconditionalMatchedVerifierTensor
    (unconditionalSelectedCopyIdealStage
      (N := N) (B := B) (m := m) (width (schedule j)) ξ ζ)
    (unconditionalSelectedCopyRetainedWork
      (N := N) width schedule ξ ζ j rest)

end

noncomputable section

open WithLp
open scoped BigOperators Kronecker ComplexOrder MatrixOrder
  Matrix.Norms.L2Operator InnerProductSpace

def unconditionalConjugatePureVector
    {ι : Type*} [Fintype ι] (z : EuclideanSpace ℂ ι) :
    EuclideanSpace ℂ ι :=
  toLp 2 (fun i : ι => star (z i))

def unconditionalConjugatePOVM
    {A ι : Type*} [Fintype A] [Fintype ι] [DecidableEq ι]
    (P : POVM A ι) : POVM A ι where
  operator a := (P.operator a).transpose
  positive a := (P.positive a).transpose
  complete := by
    classical
    rw [← Matrix.transpose_sum]
    rw [P.complete, Matrix.transpose_one]

end

noncomputable section

open WithLp
open scoped BigOperators Kronecker ComplexOrder MatrixOrder
  Matrix.Norms.L2Operator InnerProductSpace

variable {X Y A B : Type}
variable [Fintype X] [Fintype Y] [Fintype A] [Fintype B]

def unconditionalConjugateSourceGlobalCatalystWinningEffect
    [DecidableEq A] [DecidableEq B]
    (G : Game X Y A B) (n : ℕ) (S : Strategy (G.repeat n))
    (D : Finset (Fin n)) (e : ℕ)
    (a₀ : A) (b₀ : B) (x : X) (y : Y) :
    Matrix
      (Fin (Fintype.card
        (ExactGlobalHistoryLocalIndex G n S D) * e) ×
       Fin (Fintype.card
        (ExactGlobalHistoryLocalIndex G n S D) * e))
      (Fin (Fintype.card
        (ExactGlobalHistoryLocalIndex G n S D) * e) ×
       Fin (Fintype.card
        (ExactGlobalHistoryLocalIndex G n S D) * e)) ℂ :=
  ∑ a : A, ∑ b : B,
    if G.predicate x y a b = true then
      (unconditionalConjugatePOVM
        (exactSourceGlobalCatalystAlicePOVM
          G n S D e a₀ x)).operator a ⊗ₖ
      (unconditionalConjugatePOVM
        (exactSourceGlobalCatalystBobPOVM
          G n S D e b₀ y)).operator b
    else 0

end

noncomputable section

open WithLp
open scoped BigOperators Kronecker ComplexOrder MatrixOrder

def unconditionalMixedConjugateSigmaAtomLift
    {d m : ℕ} (B : ℕ)
    (U : Matrix.unitaryGroup (Fin d) ℂ) :
    Matrix.unitaryGroup
      (Σ _ : Fin B × Fin d, Fin m) ℂ := by
  classical
  let e : ((Fin B × Fin d) × Fin m) ≃
      (Σ _ : Fin B × Fin d, Fin m) :=
    (Equiv.sigmaEquivProd (Fin B × Fin d) (Fin m)).symm
  let M : Matrix ((Fin B × Fin d) × Fin m)
      ((Fin B × Fin d) × Fin m) ℂ :=
    ((1 : Matrix (Fin B) (Fin B) ℂ) ⊗ₖ
      (U : Matrix (Fin d) (Fin d) ℂ)) ⊗ₖ
      (1 : Matrix (Fin m) (Fin m) ℂ)
  have unitary : M ∈ Matrix.unitaryGroup
      ((Fin B × Fin d) × Fin m) ℂ :=
    Matrix.kronecker_mem_unitary
      (Matrix.kronecker_mem_unitary
        (Matrix.unitaryGroup (Fin B) ℂ).one_mem U.property)
      (Matrix.unitaryGroup (Fin m) ℂ).one_mem
  refine ⟨Matrix.reindex e e M, ?_⟩
  rw [Matrix.mem_unitaryGroup_iff']
  have compatible :
      star (Matrix.reindex e e M) =
        Matrix.reindex e e (star M) := by
    ext i j
    simp [Matrix.star_eq_conjTranspose,
      Matrix.reindex_apply, Matrix.conjTranspose_apply]
  rw [compatible]
  change
    (Matrix.reindexAlgEquiv ℂ ℂ e) (star M) *
      (Matrix.reindexAlgEquiv ℂ ℂ e) M = 1
  rw [← map_mul (Matrix.reindexAlgEquiv ℂ ℂ e),
    (Matrix.mem_unitaryGroup_iff').mp unitary]
  exact map_one (Matrix.reindexAlgEquiv ℂ ℂ e)

def unconditionalMixedConjugateSigmaLocalAction
    {d m : ℕ} (B : ℕ)
    (U V : Matrix.unitaryGroup (Fin d) ℂ)
    (z : EuclideanSpace ℂ
      ((Σ _ : Fin B × Fin d, Fin m) ×
        (Σ _ : Fin B × Fin d, Fin m))) :
    EuclideanSpace ℂ
      ((Σ _ : Fin B × Fin d, Fin m) ×
        (Σ _ : Fin B × Fin d, Fin m)) :=
  toLp 2
    ((((unconditionalMixedConjugateSigmaAtomLift (m := m) B U :
          Matrix (Σ _ : Fin B × Fin d, Fin m)
            (Σ _ : Fin B × Fin d, Fin m) ℂ) ⊗ₖ
        (unconditionalMixedConjugateSigmaAtomLift (m := m) B V :
          Matrix (Σ _ : Fin B × Fin d, Fin m)
            (Σ _ : Fin B × Fin d, Fin m) ℂ)).mulVec
      (ofLp z)))

def unconditionalMixedConjugateAcceptedPhaseHarmonicTarget
    {d N B : ℕ} (w : ℝ) (n : ℕ)
    (ξ : BipartiteUnitVector d) :
    EuclideanSpace ℂ
      ((Σ _ : Fin B × Fin d, Fin (N * n)) ×
       (Σ _ : Fin B × Fin d, Fin (N * n))) :=
  dSVDensityRationalPublicBucketCoherentPhaseSigmaState B
    (unconditionalConjugatePureVector
      (dSVDensityRationalCanonicalAcceptedTarget w N ξ))
    (fun _ _ _ => embezzlementState (N * n))

end

noncomputable section

open WithLp
open scoped BigOperators Kronecker ComplexOrder MatrixOrder

def unconditionalMixedConjugateSelectedBranchUnitary
    {ι τ : Type*} [Fintype ι] [DecidableEq ι]
    [Fintype τ] [DecidableEq τ]
    (U V : Matrix.unitaryGroup ι ℂ) :
    Matrix.unitaryGroup ((ι × ι) × τ) ℂ := by
  classical
  refine
    ⟨(((U : Matrix ι ι ℂ) ⊗ₖ
        (V : Matrix ι ι ℂ)) ⊗ₖ
        (1 : Matrix τ τ ℂ)), ?_⟩
  exact Matrix.kronecker_mem_unitary
    (Matrix.kronecker_mem_unitary U.property V.property)
    (Matrix.unitaryGroup τ ℂ).one_mem

def unconditionalMixedConjugateSelectedBranchLocalAction
    {ι τ : Type*} [Fintype ι] [DecidableEq ι]
    [Fintype τ] [DecidableEq τ]
    (U V : Matrix.unitaryGroup ι ℂ)
    (z : EuclideanSpace ℂ ((ι × ι) × τ)) :
    EuclideanSpace ℂ ((ι × ι) × τ) :=
  toLp 2
    ((unconditionalMixedConjugateSelectedBranchUnitary
        (τ := τ) U V :
      Matrix ((ι × ι) × τ) ((ι × ι) × τ) ℂ).mulVec
      (ofLp z))

end

noncomputable section

open WithLp
open scoped BigOperators ComplexOrder Kronecker MatrixOrder
  Matrix.Norms.L2Operator InnerProductSpace

attribute [local instance] Classical.propDecidable

section DependentStoppingBlocks

variable {X Y A B R : Type}
variable [Fintype X] [Fintype Y] [Fintype A] [Fintype B]
variable [Fintype R] [DecidableEq R]
variable {ι κ : R → Type}
variable [∀ r, Fintype (ι r)] [∀ r, DecidableEq (ι r)]
variable [∀ r, Fintype (κ r)] [∀ r, DecidableEq (κ r)]

def actualStoppingBranchVector
    (z : EuclideanSpace ℂ ((Σ r, ι r) × (Σ s, κ s)))
    (r s : R) : EuclideanSpace ℂ (ι r × κ s) :=
  toLp 2 fun q => z (⟨r, q.1⟩, ⟨s, q.2⟩)

def actualStoppingBranchWinningEffect
    (G : Game X Y A B)
    (PA : (r : R) → X → POVM A (ι r))
    (PB : (s : R) → Y → POVM B (κ s))
    (r s : R) (x : X) (y : Y) :
    Matrix (ι r × κ s) (ι r × κ s) ℂ :=
  ∑ a : A, ∑ b : B,
    if G.predicate x y a b = true then
      (PA r x).operator a ⊗ₖ (PB s y).operator b
    else 0

def actualStoppingGlobalWinningEffect
    (G : Game X Y A B)
    (PA : (r : R) → X → POVM A (ι r))
    (PB : (s : R) → Y → POVM B (κ s))
    (x : X) (y : Y) :
    Matrix ((Σ r, ι r) × (Σ s, κ s))
      ((Σ r, ι r) × (Σ s, κ s)) ℂ :=
  ∑ a : A, ∑ b : B,
    if G.predicate x y a b = true then
      (dependentBlockPOVM
        (fun r => PA r x)).operator a ⊗ₖ
        (dependentBlockPOVM
          (fun s => PB s y)).operator b
    else 0

end DependentStoppingBlocks

end

noncomputable section

open WithLp
open scoped BigOperators ComplexOrder Kronecker MatrixOrder
  Matrix.Norms.L2Operator InnerProductSpace

attribute [local instance] Classical.propDecidable

section QuestionLocalStopping

variable {X Y A B R : Type}
variable [Fintype X] [Fintype Y] [Fintype A] [Fintype B]
variable [Fintype R] [DecidableEq R]
variable {ι : R → Type}
variable [∀ r, Fintype (ι r)] [∀ r, DecidableEq (ι r)]

def actualStoppingQuestionLocalAction
    (U V : Matrix.unitaryGroup (Σ r, ι r) ℂ)
    (z : EuclideanSpace ℂ ((Σ r, ι r) × (Σ r, ι r))) :
    EuclideanSpace ℂ ((Σ r, ι r) × (Σ r, ι r)) :=
  toLp 2
    (((U : Matrix (Σ r, ι r) (Σ r, ι r) ℂ) ⊗ₖ
      (V : Matrix (Σ r, ι r) (Σ r, ι r) ℂ)).mulVec
      (ofLp z))

end QuestionLocalStopping

end

noncomputable section

open WithLp
open scoped BigOperators ComplexOrder Kronecker MatrixOrder

abbrev DSVDensityRationalPublicLogPhaseHistoryFamily
    (B N d L : ℕ) :=
  BipartiteUnitVector d →
    Matrix.unitaryGroup
      (DSVDensityRationalPublicLogPhaseHistoryLocalIndex
        B N d L) ℂ

def dSVDensityRationalPublicLogPhaseStoppedState
    (B N d L m : ℕ)
    (S T : DSVDensityRationalPublicLogPhaseHistoryFamily
      B N d L)
    (ξ ζ : BipartiteUnitVector d) :
    EuclideanSpace ℂ
      (Fin (d *
        dSVDensityRationalPublicLogPhaseResidual
          B N d L m) ×
       Fin (d *
        dSVDensityRationalPublicLogPhaseResidual
          B N d L m)) :=
  localUnitaryAction
    (dSVDensityRationalPublicLogPhaseActualTargetFirstLocalLift
      B N d L m (S ξ))
    (dSVDensityRationalPublicLogPhaseActualTargetFirstLocalLift
      B N d L m (T ζ))
    (dSVDensityRationalPublicLogPhaseTargetFirstPreparedSource
      B N d L m)

def dSVDensityRationalPublicMultiscaleOriginalSigmaTargetFirstEquiv
    (S B N d L m : ℕ) :
    (Σ _ :
      DSVDensityRationalPublicMultiscalePhaseIndex S B ×
        DSVUniformDensityThresholdWholeHistoryLocalIndex
          N d L,
      Fin m) ≃
      Fin (d *
        dSVDensityRationalPublicMultiscalePhaseResidual
          S B N d L m) :=
  (dSVDensityRationalPublicBucketCoherentPhaseSigmaProductEquiv
    (H := DSVUniformDensityThresholdWholeHistoryLocalIndex
      N d L)
    (Fintype.card
      (DSVDensityRationalPublicMultiscalePhase S B)) m).trans
    (dSVDensityRationalPublicMultiscalePhaseTargetFirstIndexEquiv
      S B N d L m)

def dSVDensityRationalHeterogeneousOriginalAliceHistoryFamily
    (S B N d L : ℕ)
    (width : Fin S → ℝ) (schedule : Fin L → Fin S) :
    DSVDensityRationalPublicLogPhaseHistoryFamily
      (Fintype.card
        (DSVDensityRationalPublicMultiscalePhase S B))
      N d L :=
  fun ξ =>
    dSVDensityRationalPublicLogPhasePhysicalHistoryUnitary
      (Fintype.card
        (DSVDensityRationalPublicMultiscalePhase S B))
      (dSVDensityRationalHeterogeneousActualAliceUnitary
        N width schedule ξ)

def dSVDensityRationalHeterogeneousOriginalBobHistoryFamily
    (S B N d L : ℕ)
    (width : Fin S → ℝ) (schedule : Fin L → Fin S) :
    DSVDensityRationalPublicLogPhaseHistoryFamily
      (Fintype.card
        (DSVDensityRationalPublicMultiscalePhase S B))
      N d L :=
  fun ζ =>
    dSVDensityRationalPublicLogPhasePhysicalHistoryUnitary
      (Fintype.card
        (DSVDensityRationalPublicMultiscalePhase S B))
      (dSVDensityRationalHeterogeneousActualBobUnitary
        N width schedule ζ)

def dSVDensityRationalHeterogeneousOriginalStoppedState
    (S B N d L m : ℕ)
    (width : Fin S → ℝ) (schedule : Fin L → Fin S)
    (ξ ζ : BipartiteUnitVector d) :
    EuclideanSpace ℂ
      (Fin (d *
        dSVDensityRationalPublicMultiscalePhaseResidual
          S B N d L m) ×
       Fin (d *
        dSVDensityRationalPublicMultiscalePhaseResidual
          S B N d L m)) :=
  dSVDensityRationalPublicLogPhaseStoppedState
    (Fintype.card
      (DSVDensityRationalPublicMultiscalePhase S B))
    N d L m
    (dSVDensityRationalHeterogeneousOriginalAliceHistoryFamily
      S B N d L width schedule)
    (dSVDensityRationalHeterogeneousOriginalBobHistoryFamily
      S B N d L width schedule)
    ξ ζ

def dSVDensityRationalHeterogeneousOriginalSameStopStateEquiv
    (S B N d L m : ℕ) :
    EuclideanSpace ℂ
      ((Σ _ :
        DSVDensityRationalPublicMultiscalePhaseIndex S B ×
          DSVUniformDensityThresholdWholeHistoryLocalIndex
            N d L,
        Fin m) ×
       (Σ _ :
        DSVDensityRationalPublicMultiscalePhaseIndex S B ×
          DSVUniformDensityThresholdWholeHistoryLocalIndex
            N d L,
        Fin m)) ≃ₗᵢ[ℂ]
      EuclideanSpace ℂ
        (Fin (d *
          dSVDensityRationalPublicMultiscalePhaseResidual
            S B N d L m) ×
         Fin (d *
          dSVDensityRationalPublicMultiscalePhaseResidual
            S B N d L m)) :=
  LinearIsometryEquiv.piLpCongrLeft 2 ℂ ℂ
    (Equiv.prodCongr
      (dSVDensityRationalPublicMultiscaleOriginalSigmaTargetFirstEquiv
        S B N d L m)
      (dSVDensityRationalPublicMultiscaleOriginalSigmaTargetFirstEquiv
        S B N d L m))

def dSVDensityRationalHeterogeneousOriginalSameStopSigmaSource
    (S B N d L m : ℕ)
    (width : Fin S → ℝ) (schedule : Fin L → Fin S)
    (ξ ζ : BipartiteUnitVector d) :
    EuclideanSpace ℂ
      (Fin (d *
        dSVDensityRationalPublicMultiscalePhaseResidual
          S B N d L m) ×
       Fin (d *
        dSVDensityRationalPublicMultiscalePhaseResidual
          S B N d L m)) :=
  dSVDensityRationalHeterogeneousOriginalSameStopStateEquiv
      S B N d L m
    (dSVDensityRationalHeterogeneousPureStoppedSigmaState
      width schedule ξ ζ
      (fun _ _ _ => embezzlementState m))

end

noncomputable section

open WithLp
open scoped BigOperators Kronecker ComplexOrder MatrixOrder

def directDSVRemainingCopyEquiv
    {L : ℕ} {β : Type*} (j : Fin L) :
    ((Fin j.val → β) × (Fin (L - j.val) → β)) ≃ (Fin L → β) where
  toFun z i :=
    if before : i.val < j.val then z.1 ⟨i.val, before⟩
    else z.2 ⟨i.val - j.val, by omega⟩
  invFun z :=
    (fun i => z ⟨i.val, by omega⟩,
     fun i => z ⟨j.val + i.val, by omega⟩)
  left_inv z := by
    rcases z with ⟨before, after⟩
    apply Prod.ext
    · funext i
      simp
    · funext i
      simp
  right_inv z := by
    funext i
    dsimp
    split_ifs with before
    · rfl
    · apply congrArg z
      apply Fin.ext
      change j.val + (i.val - j.val) = i.val
      omega

def directDSVSelectedCopyLocalHistoryEquiv
    {L : ℕ} {β : Type*} (j : Fin L) :
    (β × ((Fin j.val → β) × (Fin (L - j.val) → β))) ≃
      (Fin (L + 1) → β) :=
  (Equiv.prodCongr (Equiv.refl β)
    (directDSVRemainingCopyEquiv (β := β) j)).trans
    (Fin.insertNthEquiv (fun _ : Fin (L + 1) => β) j.castSucc)

abbrev UnconditionalSourcePhysicalStoppingPhaseFiber
    (S B N d L m : ℕ) :=
  Σ _ : DSVDensityRationalPublicMultiscalePhaseIndex S B ×
    DSVUniformDensityIndependentHistoryLocalIndex
      (L + 1) N d, Fin m

def unconditionalSourcePhysicalStoppingPhaseHarmonicIndexEquiv
    (S B N d L m : ℕ) :
    ((DSVDensityRationalPublicMultiscalePhaseIndex S B ×
        DSVUniformDensityThresholdWholeHistoryLocalIndex N d L) ×
      Fin m) ≃
      (Σ _ : Fin (L + 1),
        UnconditionalSourcePhysicalStoppingPhaseFiber S B N d L m)
    where
  toFun q := ⟨q.1.2.1, ⟨(q.1.1, q.1.2.2), q.2⟩⟩
  invFun q := ((q.2.1.1, ⟨q.1, q.2.1.2⟩), q.2.2)
  left_inv := by
    intro q
    rcases q with ⟨⟨phase, ⟨flag, history⟩⟩, work⟩
    rfl
  right_inv := by
    intro q
    rcases q with ⟨flag, ⟨⟨phase, history⟩, work⟩⟩
    rfl

def unconditionalSourcePhysicalStoppingTargetFirstIndexEquiv
    (S B N d L m : ℕ) :
    Fin (d *
      dSVDensityRationalPublicMultiscalePhaseResidual
        S B N d L m) ≃
      (Σ _ : Fin (L + 1),
        UnconditionalSourcePhysicalStoppingPhaseFiber S B N d L m) :=
  (dSVDensityRationalPublicMultiscalePhaseTargetFirstIndexEquiv
      S B N d L m).symm.trans
    (unconditionalSourcePhysicalStoppingPhaseHarmonicIndexEquiv
      S B N d L m)

def unconditionalSourcePhysicalStoppingTargetFirstStateEquiv
    (S B N d L m : ℕ) :
    EuclideanSpace ℂ
      (Fin (d *
        dSVDensityRationalPublicMultiscalePhaseResidual
          S B N d L m) ×
       Fin (d *
        dSVDensityRationalPublicMultiscalePhaseResidual
          S B N d L m)) ≃ₗᵢ[ℂ]
    EuclideanSpace ℂ
      ((Σ _ : Fin (L + 1),
          UnconditionalSourcePhysicalStoppingPhaseFiber
            S B N d L m) ×
       (Σ _ : Fin (L + 1),
          UnconditionalSourcePhysicalStoppingPhaseFiber
            S B N d L m)) :=
  LinearIsometryEquiv.piLpCongrLeft 2 ℂ ℂ
    (Equiv.prodCongr
      (unconditionalSourcePhysicalStoppingTargetFirstIndexEquiv
        S B N d L m)
      (unconditionalSourcePhysicalStoppingTargetFirstIndexEquiv
        S B N d L m))

def unconditionalSourceFixedPureStoppedSigmaReindexedUnitary
    {ι κ : Type*} [Fintype ι] [DecidableEq ι]
    [Fintype κ] [DecidableEq κ]
    (e : ι ≃ κ) (U : Matrix.unitaryGroup ι ℂ) :
    Matrix.unitaryGroup κ ℂ := by
  classical
  let M : Matrix ι ι ℂ := U.val
  refine ⟨Matrix.reindex e e M, ?_⟩
  rw [Matrix.mem_unitaryGroup_iff']
  have compatible :
      star (Matrix.reindex e e M) = Matrix.reindex e e (star M) := by
    ext i j
    simp [Matrix.star_eq_conjTranspose, Matrix.reindex_apply,
      Matrix.conjTranspose_apply]
  rw [compatible]
  change
    (Matrix.reindexAlgEquiv ℂ ℂ e) (star M) *
      (Matrix.reindexAlgEquiv ℂ ℂ e) M = 1
  rw [← map_mul (Matrix.reindexAlgEquiv ℂ ℂ e),
    (Matrix.mem_unitaryGroup_iff').mp U.property]
  exact map_one (Matrix.reindexAlgEquiv ℂ ℂ e)

def unconditionalSelectedMultiscalePhaseIndexEquiv
    {S B : ℕ} (scale : Fin (S + 1)) :
    (Fin B × Fin (Fintype.card (Fin S → Fin B))) ≃
      DSVDensityRationalPublicMultiscalePhaseIndex (S + 1) B :=
  ((Equiv.prodCongr (Equiv.refl (Fin B))
      (Fintype.equivFin (Fin S → Fin B)).symm).trans
    (Fin.insertNthEquiv
      (fun _ : Fin (S + 1) => Fin B) scale)).trans
      (Fintype.equivFin (Fin (S + 1) → Fin B))

def unconditionalActualMultiscalePhaseIndexEquiv
    {S B : ℕ} (scale : Fin S) :
    (Fin B × Fin (Fintype.card (Fin (S - 1) → Fin B))) ≃
      DSVDensityRationalPublicMultiscalePhaseIndex S B := by
  cases S with
  | zero => exact Fin.elim0 scale
  | succ S =>
      exact unconditionalSelectedMultiscalePhaseIndexEquiv
        (S := S) scale

def unconditionalSourcePhysicalCleanedReindexedUnitary
    {ι κ : Type*}
    [Fintype ι] [DecidableEq ι]
    [Fintype κ] [DecidableEq κ]
    (e : ι ≃ κ)
    (U : Matrix.unitaryGroup ι ℂ) :
    Matrix.unitaryGroup κ ℂ := by
  classical
  let M : Matrix ι ι ℂ := U.val
  refine ⟨Matrix.reindex e e M, ?_⟩
  rw [Matrix.mem_unitaryGroup_iff']
  have compatible :
      star (Matrix.reindex e e M) =
        Matrix.reindex e e (star M) := by
    ext i j
    simp [Matrix.star_eq_conjTranspose,
      Matrix.reindex_apply, Matrix.conjTranspose_apply]
  rw [compatible]
  change
    (Matrix.reindexAlgEquiv ℂ ℂ e) (star M) *
      (Matrix.reindexAlgEquiv ℂ ℂ e) M = 1
  rw [← map_mul (Matrix.reindexAlgEquiv ℂ ℂ e),
    (Matrix.mem_unitaryGroup_iff').mp U.property]
  exact map_one (Matrix.reindexAlgEquiv ℂ ℂ e)

def unconditionalSourcePhysicalCleanedTargetFirstUnitary
    (S B N d L m : ℕ)
    (U : Matrix.unitaryGroup
      (Fin (d *
        dSVDensityRationalPublicMultiscalePhaseResidual
          S B N d L m)) ℂ) :
    Matrix.unitaryGroup
      (Σ _ : Fin (L + 1),
        UnconditionalSourcePhysicalStoppingPhaseFiber
          S B N d L m) ℂ :=
  unconditionalSourcePhysicalCleanedReindexedUnitary
    (unconditionalSourcePhysicalStoppingTargetFirstIndexEquiv
      S B N d L m) U

def unconditionalSourcePhysicalCleanedStoppingFixedSource
    (S B N d L m : ℕ) :
    EuclideanSpace ℂ
      ((Σ _ : Fin (L + 1),
          UnconditionalSourcePhysicalStoppingPhaseFiber
            S B N d L m) ×
       (Σ _ : Fin (L + 1),
          UnconditionalSourcePhysicalStoppingPhaseFiber
            S B N d L m)) :=
  unconditionalSourcePhysicalStoppingTargetFirstStateEquiv
    S B N d L m
    (dSVDensityRationalPublicMultiscalePhaseTargetFirstPreparedSource
      S B N d L m)

def unconditionalSourcePhysicalCleanedSelectedHistoryEquiv
    {L : ℕ} (j : Fin L) (β : Type*) :
    (Fin (L + 1) → β) ≃
      β × ((Fin j.val → β) × (Fin (L - j.val) → β)) where
  toFun f :=
    (f j.castSucc,
      (fun i => f ⟨i.val, by omega⟩,
       fun i => f ⟨j.val + 1 + i.val, by omega⟩))
  invFun q i :=
    if before : i.val < j.val then
      q.2.1 ⟨i.val, before⟩
    else if hit : i.val = j.val then q.1
    else q.2.2 ⟨i.val - (j.val + 1), by omega⟩
  left_inv := by
    intro f
    funext i
    dsimp
    split <;> rename_i before
    · apply congrArg f
      apply Fin.ext
      rfl
    · split <;> rename_i hit
      · apply congrArg f
        apply Fin.ext
        exact hit.symm
      · apply congrArg f
        apply Fin.ext
        simp only
        omega
  right_inv := by
    intro q
    rcases q with ⟨selected, before, later⟩
    apply Prod.ext
    · simp
    · apply Prod.ext
      · funext i
        simp
      · funext i
        have not_before : ¬ j.val + 1 + i.val < j.val := by omega
        have not_hit : ¬ j.val + 1 + i.val = j.val := by omega
        simp [not_before, not_hit]

end

end QuantumParallelRepetition
