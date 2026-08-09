import Definitions.Def_quantum_parallel_repetition_game
import Definitions.Def_qpr_core_00
import Theorems.Thm_QuantumParallelRepetition_Strategy_outcomeProbability_nonneg
import Theorems.Thm_QuantumParallelRepetition_Strategy_outcomeProbability_normalized
import Theorems.Thm_QuantumParallelRepetition_posSemidef_blockDiagonal_prime
import Theorems.Thm_QuantumParallelRepetition_mixtureEmbedding_isometry
import Theorems.Thm_QuantumParallelRepetition_mixtureBlockMatrix_posSemidef
import Theorems.Thm_QuantumParallelRepetition_mixtureBlockMatrix_trace
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

variable {X Y A B : Type*} {J : Type}
variable [Fintype X] [Fintype Y] [Fintype A] [Fintype B]
variable [Fintype J] [DecidableEq J]
variable {G : Game X Y A B}

def mixtureDensityMatrix (p : J → ℝ)
    (hp : ∀ j, 0 ≤ p j) (h_normalized : (∑ j : J, p j) = 1)
    (S : J → Strategy G) :
    DensityMatrix (mixtureAlice S × mixtureBob S) where
  matrix := mixtureEmbedding S * mixtureBlockMatrix p S *
    (mixtureEmbedding S)ᴴ
  positive :=
    (mixtureBlockMatrix_posSemidef p hp S).mul_mul_conjTranspose_same
      (mixtureEmbedding S)
  trace_one := by
    rw [Matrix.trace_mul_cycle, mixtureEmbedding_isometry,
      Matrix.one_mul, mixtureBlockMatrix_trace, h_normalized]
    norm_num

def mixtureAlicePOVM (S : J → Strategy G) (x : X) :
    POVM A (mixtureAlice S) where
  operator a := Matrix.blockDiagonal' fun j =>
    ((S j).aliceMeasurement x).operator a
  positive a := by
    apply posSemidef_blockDiagonal_prime
    intro j
    exact ((S j).aliceMeasurement x).positive a
  complete := by
    classical
    ext ⟨i, u⟩ ⟨j, v⟩
    by_cases h : i = j
    · subst j
      have h_complete := congrArg
        (fun M : Matrix (S i).Alice (S i).Alice ℂ => M u v)
        ((S i).aliceMeasurement x).complete
      simpa [Matrix.sum_apply, Matrix.blockDiagonal'_apply,
        Matrix.one_apply] using h_complete
    · simp [Matrix.sum_apply, Matrix.blockDiagonal'_apply,
        h]

def mixtureBobPOVM (S : J → Strategy G) (y : Y) :
    POVM B (mixtureBob S) where
  operator b := Matrix.blockDiagonal' fun j =>
    ((S j).bobMeasurement y).operator b
  positive b := by
    apply posSemidef_blockDiagonal_prime
    intro j
    exact ((S j).bobMeasurement y).positive b
  complete := by
    classical
    ext ⟨i, u⟩ ⟨j, v⟩
    by_cases h : i = j
    · subst j
      have h_complete := congrArg
        (fun M : Matrix (S i).Bob (S i).Bob ℂ => M u v)
        ((S i).bobMeasurement y).complete
      simpa [Matrix.sum_apply, Matrix.blockDiagonal'_apply,
        Matrix.one_apply] using h_complete
    · simp [Matrix.sum_apply, Matrix.blockDiagonal'_apply,
        h]

def convexMixtureStrategy (p : J → ℝ)
    (hp : ∀ j, 0 ≤ p j) (h_normalized : (∑ j : J, p j) = 1)
    (S : J → Strategy G) : Strategy G where
  Alice := mixtureAlice S
  Bob := mixtureBob S
  alice_fintype := inferInstance
  bob_fintype := inferInstance
  alice_decidableEq := inferInstance
  bob_decidableEq := inferInstance
  state := mixtureDensityMatrix p hp h_normalized S
  aliceMeasurement := mixtureAlicePOVM S
  bobMeasurement := mixtureBobPOVM S

end

noncomputable section

open WithLp
open scoped BigOperators ComplexOrder Kronecker MatrixOrder
  Matrix.Norms.L2Operator InnerProductSpace

def pureDensityMatrix
    {d : Type*} [Fintype d] [DecidableEq d]
    (z : EuclideanSpace ℂ d) (hz : ‖z‖ = 1) : DensityMatrix d where
  matrix := Matrix.vecMulVec (ofLp z) (star (ofLp z))
  positive := Matrix.posSemidef_vecMulVec_self_star (ofLp z)
  trace_one := by
    rw [Matrix.trace_vecMulVec,
      ← EuclideanSpace.inner_eq_star_dotProduct z z,
      inner_self_eq_norm_sq_to_K, hz]
    norm_num

def pureVectorStrategy
    {X Y A B : Type*} {dA dB : Type}
    [Fintype X] [Fintype Y] [Fintype A] [Fintype B]
    [Fintype dA] [Fintype dB] [DecidableEq dA] [DecidableEq dB]
    (G : Game X Y A B)
    (z : EuclideanSpace ℂ (dA × dB)) (hz : ‖z‖ = 1)
    (PA : X → POVM A dA) (PB : Y → POVM B dB) : Strategy G where
  Alice := dA
  Bob := dB
  alice_fintype := inferInstance
  bob_fintype := inferInstance
  alice_decidableEq := inferInstance
  bob_decidableEq := inferInstance
  state := pureDensityMatrix z hz
  aliceMeasurement := PA
  bobMeasurement := PB

def pureFlaggedStrategy
    {X Y A B : Type*} {dA dB J : Type}
    [Fintype X] [Fintype Y] [Fintype A] [Fintype B]
    [Fintype dA] [Fintype dB] [DecidableEq dA] [DecidableEq dB]
    [Fintype J] [DecidableEq J]
    (G : Game X Y A B)
    (p : J → ℝ) (hp : ∀ j, 0 ≤ p j)
    (h_normalized : (∑ j : J, p j) = 1)
    (z : J → EuclideanSpace ℂ (dA × dB))
    (hz : ∀ j, ‖z j‖ = 1)
    (PA : J → X → POVM A dA)
    (PB : J → Y → POVM B dB) : Strategy G :=
  convexMixtureStrategy p hp h_normalized
    (fun j => pureVectorStrategy G (z j) (hz j) (PA j) (PB j))

end

noncomputable section

open scoped BigOperators

structure FiniteEventLaw (Ω : Type*) [Fintype Ω] where
  weight : Ω → ℝ
  weight_nonneg : ∀ ω, 0 ≤ weight ω
  weight_sum : (∑ ω, weight ω) = 1

namespace FiniteEventLaw

variable {Ω ι : Type*} [Fintype Ω]

def eventMass (law : FiniteEventLaw Ω) (event : Finset Ω) : ℝ :=
  ∑ ω ∈ event, law.weight ω

def winEvent [Fintype ι]
    (wins : ι → Ω → Bool) (D : Finset ι) : Finset Ω :=
  Finset.univ.filter (fun ω => ∀ i ∈ D, wins i ω = true)

def failureMass [Fintype ι] [DecidableEq ι]
    (law : FiniteEventLaw Ω) (wins : ι → Ω → Bool)
    (D : Finset ι) (i : ι) : ℝ :=
  law.eventMass (winEvent wins D) -
    law.eventMass (winEvent wins (insert i D))

end FiniteEventLaw

section StrategyEventLaw

variable {X Y A B : Type*}
variable [Fintype X] [Fintype Y] [Fintype A] [Fintype B]

abbrev StrategyOutcome (X Y A B : Type*) :=
  X × Y × A × B

def strategyEventLaw (G : Game X Y A B) (S : Strategy G) :
    FiniteEventLaw (StrategyOutcome X Y A B) where
  weight ω :=
    G.questionWeight ω.1 ω.2.1 *
      S.outcomeProbability ω.1 ω.2.1 ω.2.2.1 ω.2.2.2
  weight_nonneg ω :=
    mul_nonneg (G.weight_nonneg ω.1 ω.2.1)
      (S.outcomeProbability_nonneg
        ω.1 ω.2.1 ω.2.2.1 ω.2.2.2)
  weight_sum := by
    classical
    change
      (∑ ω : X × Y × A × B,
        G.questionWeight ω.1 ω.2.1 *
          S.outcomeProbability
            ω.1 ω.2.1 ω.2.2.1 ω.2.2.2) = 1
    simp_rw [Fintype.sum_prod_type]
    calc
      (∑ x : X, ∑ y : Y, ∑ a : A, ∑ b : B,
        G.questionWeight x y *
          S.outcomeProbability x y a b) =
        ∑ x : X, ∑ y : Y,
          G.questionWeight x y *
            (∑ a : A, ∑ b : B,
              S.outcomeProbability x y a b) := by
                apply Finset.sum_congr rfl
                intro x _
                apply Finset.sum_congr rfl
                intro y _
                simp only [Finset.mul_sum]
      _ = ∑ x : X, ∑ y : Y,
          G.questionWeight x y * 1 := by
            apply Finset.sum_congr rfl
            intro x _
            apply Finset.sum_congr rfl
            intro y _
            rw [S.outcomeProbability_normalized x y]
      _ = 1 := by
            simpa using G.weight_normalized

def strategyWinEvent (G : Game X Y A B) :
    Finset (StrategyOutcome X Y A B) :=
  Finset.univ.filter
    (fun ω =>
      G.predicate ω.1 ω.2.1 ω.2.2.1 ω.2.2.2 = true)

def repeatedCoordinateWin (G : Game X Y A B) (n : ℕ)
    (i : Fin n)
    (ω : StrategyOutcome
      (Fin n → X) (Fin n → Y) (Fin n → A) (Fin n → B)) : Bool :=
  G.predicate (ω.1 i) (ω.2.1 i)
    (ω.2.2.1 i) (ω.2.2.2 i)

end StrategyEventLaw

end

noncomputable section

open MeasureTheory Filter Set
open scoped BigOperators Topology ComplexOrder MatrixOrder Matrix.Norms.Elementwise

set_option backward.isDefEq.respectTransparency false

attribute [local instance] Matrix.normedAddCommGroup Matrix.normedSpace

def diagonalPurificationGram
    {d : Type*} [Fintype d] [DecidableEq d]
    (eigenvalue : d → ℝ) (s : ℝ) : Matrix d d ℂ :=
  Matrix.diagonal fun i =>
    (((eigenvalue i / (eigenvalue i + s)) ^ 2 : ℝ) : ℂ)

def spectralConjugationCLM
    {d : Type*} [Fintype d] [DecidableEq d]
    (U : Matrix.unitaryGroup d ℂ) :
    Matrix d d ℂ →L[ℝ] Matrix d d ℂ :=
  LinearMap.toContinuousLinearMap
    (Unitary.conjStarAlgAut ℝ (Matrix d d ℂ) U).toAlgEquiv.toLinearEquiv.toLinearMap

def spectralPurificationGram
    {d : Type*} [Fintype d] [DecidableEq d]
    (F : Matrix d d ℂ) (hF : F.PosSemidef) (s : ℝ) :
    Matrix d d ℂ :=
  spectralConjugationCLM hF.isHermitian.eigenvectorUnitary
    (diagonalPurificationGram hF.isHermitian.eigenvalues s)

end

noncomputable section

open MeasureTheory Filter Set
open scoped BigOperators Topology ComplexOrder MatrixOrder Kronecker Matrix.Norms.Elementwise

set_option backward.isDefEq.respectTransparency false

attribute [local instance] Matrix.normedAddCommGroup Matrix.normedSpace

def spectralPurificationFilter
    {d : Type*} [Fintype d] [DecidableEq d]
    (F : Matrix d d ℂ) (hF : F.PosSemidef) (s : ℝ) : Matrix d d ℂ :=
  spectralConjugationCLM hF.isHermitian.eigenvectorUnitary
    (Matrix.diagonal fun i =>
      ((hF.isHermitian.eigenvalues i /
        (hF.isHermitian.eigenvalues i + s) : ℝ) : ℂ))

def bornTracePairing
    {dA dB : Type*} [Fintype dA] [Fintype dB]
    (ρ : Matrix (dA × dB) (dA × dB) ℂ) :
    Matrix dA dA ℂ →ₗ[ℝ] Matrix dB dB ℂ →ₗ[ℝ] ℝ where
  toFun F :=
    { toFun := fun G => (Matrix.trace (ρ * (F ⊗ₖ G))).re
      map_add' := by
        intro G H
        simp [Matrix.kronecker_add, Matrix.mul_add, Matrix.trace_add]
      map_smul' := by
        intro r G
        simp [Matrix.kronecker_smul, mul_smul_comm, Matrix.trace_smul] }
  map_add' := by
    intro F H
    ext G
    simp [Matrix.add_kronecker, Matrix.mul_add, Matrix.trace_add]
  map_smul' := by
    intro r F
    ext G
    simp [Matrix.smul_kronecker, mul_smul_comm, Matrix.trace_smul]

end

noncomputable section

open scoped BigOperators Kronecker

namespace Game

variable {X Y A B : Type*}
variable [Fintype X] [Fintype Y] [Fintype A] [Fintype B]

def conditionalYGivenX (G : Game X Y A B) (x : X) (y : Y) : ℝ :=
  G.questionWeight x y / G.marginalX x

def conditionalXGivenY (G : Game X Y A B) (y : Y) (x : X) : ℝ :=
  G.questionWeight x y / G.marginalY y

end Game

section MixedHistories

variable {X Y A B U V : Type*}
variable [Fintype X] [Fintype Y] [Fintype A] [Fintype B]
variable [AddCommGroup U] [Module ℝ U]
variable [AddCommGroup V] [Module ℝ V]

def conditionalBobAverage
    (G : Game X Y A B) (K : Y → V) (x : X) : V :=
  ∑ y : Y, G.conditionalYGivenX x y • K y

def conditionalAliceAverage
    (G : Game X Y A B) (H : X → U) (y : Y) : U :=
  ∑ x : X, G.conditionalXGivenY y x • H x

end MixedHistories

section RepeatedQuantumFilters

open scoped ComplexOrder MatrixOrder

variable {X Y A B : Type*}
variable [Fintype X] [Fintype Y] [Fintype A] [Fintype B]

def conditionedAliceEffect
    (G : Game X Y A B) (n : ℕ)
    (S : Strategy (G.repeat n))
    (D : Finset (Fin n))
    (α : {i : Fin n // i ∈ D} → A)
    (xs : Fin n → X) :
    Matrix S.Alice S.Alice ℂ := by
  classical
  exact
    ∑ answers : Fin n → A,
      if ∀ (i : Fin n) (hi : i ∈ D),
        answers i = α ⟨i, hi⟩
      then (S.aliceMeasurement xs).operator answers
      else 0

def conditionedBobEffect
    (G : Game X Y A B) (n : ℕ)
    (S : Strategy (G.repeat n))
    (D : Finset (Fin n))
    (β : {i : Fin n // i ∈ D} → B)
    (ys : Fin n → Y) :
    Matrix S.Bob S.Bob ℂ := by
  classical
  exact
    ∑ answers : Fin n → B,
      if ∀ (i : Fin n) (hi : i ∈ D),
        answers i = β ⟨i, hi⟩
      then (S.bobMeasurement ys).operator answers
      else 0

end RepeatedQuantumFilters

end

noncomputable section

open scoped BigOperators ComplexOrder MatrixOrder

def spectralSupportFunctional
    {d : Type*} [Fintype d] [DecidableEq d]
    (F : Matrix d d ℂ) (hF : F.PosSemidef)
    (f : ℝ → ℝ) : Matrix d d ℂ :=
  (Unitary.conjStarAlgAut ℂ (Matrix d d ℂ)
    hF.isHermitian.eigenvectorUnitary)
      (Matrix.diagonal fun i => (f (hF.isHermitian.eigenvalues i) : ℂ))

def spectralSupportInverse
    {d : Type*} [Fintype d] [DecidableEq d]
    (F : Matrix d d ℂ) (hF : F.PosSemidef) : Matrix d d ℂ :=
  spectralSupportFunctional F hF (fun x => x⁻¹)

def spectralSupportProjection
    {d : Type*} [Fintype d] [DecidableEq d]
    (F : Matrix d d ℂ) (hF : F.PosSemidef) : Matrix d d ℂ :=
  spectralSupportFunctional F hF (fun x => if x = 0 then 0 else 1)

def spectralSupportSqrt
    {d : Type*} [Fintype d] [DecidableEq d]
    (F : Matrix d d ℂ) (hF : F.PosSemidef) : Matrix d d ℂ :=
  spectralSupportFunctional F hF Real.sqrt

end

noncomputable section

open Matrix
open scoped BigOperators ComplexOrder MatrixOrder

set_option maxHeartbeats 400000

def purificationRangeProjection
    {d e : Type*} [Fintype d] [DecidableEq d]
    [Fintype e] [DecidableEq e]
    (F : Matrix d d ℂ) (hF : F.PosSemidef)
    (Γ : Matrix e d ℂ) : Matrix e e ℂ :=
  Γ * spectralSupportInverse F hF * Matrix.conjTranspose Γ

def purifiedRefinementCore
    {ι d e : Type*} [Fintype ι]
    [Fintype d] [DecidableEq d]
    [Fintype e] [DecidableEq e]
    (F : Matrix d d ℂ) (hF : F.PosSemidef)
    (Γ : Matrix e d ℂ)
    (operator : ι → Matrix d d ℂ) (a : ι) : Matrix e e ℂ :=
  Γ * spectralSupportInverse F hF * operator a *
    spectralSupportInverse F hF * Matrix.conjTranspose Γ

def purifiedRefinedEffect
    {ι d e : Type*} [Fintype ι] [DecidableEq ι]
    [Fintype d] [DecidableEq d]
    [Fintype e] [DecidableEq e]
    (F : Matrix d d ℂ) (hF : F.PosSemidef)
    (Γ : Matrix e d ℂ)
    (operator : ι → Matrix d d ℂ)
    (a₀ a : ι) : Matrix e e ℂ :=
  purifiedRefinementCore F hF Γ operator a +
    if a = a₀ then 1 - purificationRangeProjection F hF Γ else 0

end

open scoped ComplexOrder Matrix BigOperators InnerProductSpace
open Complex Matrix Finset

end QuantumParallelRepetition
