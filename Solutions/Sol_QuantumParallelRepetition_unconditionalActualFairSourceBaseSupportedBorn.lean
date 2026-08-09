import Definitions.Def_quantum_parallel_repetition_game
import Definitions.Def_qpr_core_26
import Theorems.Thm_QuantumParallelRepetition_exactAlicePurificationFamily_posSemidef
import Theorems.Thm_QuantumParallelRepetition_exactBobPurificationFamily_posSemidef
import Theorems.Thm_QuantumParallelRepetition_exactSourceGlobalCatalystWinningEffect_law_supported_verifier
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

open scoped BigOperators ComplexOrder Kronecker MatrixOrder
  Matrix.Norms.L2Operator InnerProductSpace

set_option backward.isDefEq.respectTransparency false
set_option maxHeartbeats 2400000
set_option maxRecDepth 2048

attribute [local instance] Classical.propDecidable

variable {X Y A B : Type}
variable [Fintype X] [Fintype Y] [Fintype A] [Fintype B]

theorem matrixQuadraticExpectation_expand
    {d : Type*} [Fintype d] [DecidableEq d]
    (M : Matrix d d ℂ) (z : EuclideanSpace ℂ d) :
    quadraticExpectation
      (Matrix.toEuclideanCLM (n := d) (𝕜 := ℂ) M) z =
      (∑ i : d, (∑ j : d, M i j * z j) * star (z i)).re := by
  simp [quadraticExpectation, EuclideanSpace.inner_eq_star_dotProduct,
    Matrix.mulVec, dotProduct]

end

noncomputable section

open WithLp
open scoped BigOperators Kronecker ComplexOrder MatrixOrder
  Matrix.Norms.L2Operator InnerProductSpace

@[simp] theorem unconditionalConjugatePureVector_apply
    {ι : Type*} [Fintype ι]
    (z : EuclideanSpace ℂ ι) (i : ι) :
    unconditionalConjugatePureVector z i = star (z i) := by
  rfl

theorem unconditionalConjugatePureVector_transpose_quadratic
    {ι : Type*} [Fintype ι] [DecidableEq ι]
    (M : Matrix ι ι ℂ) (z : EuclideanSpace ℂ ι) :
    quadraticExpectation
        (Matrix.toEuclideanCLM (n := ι) (𝕜 := ℂ) M.transpose)
        (unconditionalConjugatePureVector z) =
      quadraticExpectation
        (Matrix.toEuclideanCLM (n := ι) (𝕜 := ℂ) M) z := by
  classical
  rw [matrixQuadraticExpectation_expand,
    matrixQuadraticExpectation_expand]
  congr 1
  simp only [Matrix.transpose_apply,
    unconditionalConjugatePureVector_apply, star_star]
  simp_rw [Finset.sum_mul]
  rw [Finset.sum_comm]
  apply Finset.sum_congr rfl
  intro i _
  apply Finset.sum_congr rfl
  intro j _
  ring

theorem unconditionalConjugatePOVM_jointMeasurementOperator
    {A B ι κ : Type*} [Fintype A] [Fintype B]
    [Fintype ι] [Fintype κ] [DecidableEq ι] [DecidableEq κ]
    (P : POVM A ι) (Q : POVM B κ) (a : A) (b : B) :
    (unconditionalConjugatePOVM P).operator a ⊗ₖ
        (unconditionalConjugatePOVM Q).operator b =
      (P.operator a ⊗ₖ Q.operator b).transpose := by
  exact Matrix.kroneckerMap_transpose (fun x y : ℂ => x * y)
    (P.operator a) (Q.operator b)

end

noncomputable section

open WithLp
open scoped BigOperators Kronecker ComplexOrder MatrixOrder
  Matrix.Norms.L2Operator InnerProductSpace

variable {X Y A B : Type}
variable [Fintype X] [Fintype Y] [Fintype A] [Fintype B]

theorem
    unconditionalConjugateSourceGlobalCatalystWinningEffect_eq_transpose
    [DecidableEq A] [DecidableEq B]
    (G : Game X Y A B) (n : ℕ) (S : Strategy (G.repeat n))
    (D : Finset (Fin n)) (e : ℕ)
    (a₀ : A) (b₀ : B) (x : X) (y : Y) :
    unconditionalConjugateSourceGlobalCatalystWinningEffect
        G n S D e a₀ b₀ x y =
      (exactSourceGlobalCatalystWinningEffect
        G n S D e a₀ b₀ x y).transpose := by
  classical
  unfold unconditionalConjugateSourceGlobalCatalystWinningEffect
    exactSourceGlobalCatalystWinningEffect
  rw [Matrix.transpose_sum]
  apply Finset.sum_congr rfl
  intro a _
  rw [Matrix.transpose_sum]
  apply Finset.sum_congr rfl
  intro b _
  split_ifs
  · exact unconditionalConjugatePOVM_jointMeasurementOperator
      (exactSourceGlobalCatalystAlicePOVM G n S D e a₀ x)
      (exactSourceGlobalCatalystBobPOVM G n S D e b₀ y)
      a b
  · exact Matrix.transpose_zero.symm

theorem unconditionalConjugateSourceGlobalCatalystWinningEffect_quadratic
    [DecidableEq A] [DecidableEq B]
    (G : Game X Y A B) (n : ℕ) (S : Strategy (G.repeat n))
    (D : Finset (Fin n)) (e : ℕ)
    (a₀ : A) (b₀ : B) (x : X) (y : Y)
    (z : EuclideanSpace ℂ
      (Fin (Fintype.card
        (ExactGlobalHistoryLocalIndex G n S D) * e) ×
       Fin (Fintype.card
        (ExactGlobalHistoryLocalIndex G n S D) * e))) :
    quadraticExpectation
      (Matrix.toEuclideanCLM
        (n :=
          Fin (Fintype.card
            (ExactGlobalHistoryLocalIndex G n S D) * e) ×
          Fin (Fintype.card
            (ExactGlobalHistoryLocalIndex G n S D) * e))
        (𝕜 := ℂ)
        (unconditionalConjugateSourceGlobalCatalystWinningEffect
          G n S D e a₀ b₀ x y))
      (unconditionalConjugatePureVector z) =
    quadraticExpectation
      (Matrix.toEuclideanCLM
        (n :=
          Fin (Fintype.card
            (ExactGlobalHistoryLocalIndex G n S D) * e) ×
          Fin (Fintype.card
            (ExactGlobalHistoryLocalIndex G n S D) * e))
        (𝕜 := ℂ)
        (exactSourceGlobalCatalystWinningEffect
          G n S D e a₀ b₀ x y)) z := by
  calc
    _ = quadraticExpectation
        (Matrix.toEuclideanCLM
          (n :=
            Fin (Fintype.card
              (ExactGlobalHistoryLocalIndex G n S D) * e) ×
            Fin (Fintype.card
              (ExactGlobalHistoryLocalIndex G n S D) * e))
          (𝕜 := ℂ)
          (exactSourceGlobalCatalystWinningEffect
            G n S D e a₀ b₀ x y).transpose)
        (unconditionalConjugatePureVector z) := by
          exact congrArg
            (fun M =>
              quadraticExpectation
                (Matrix.toEuclideanCLM
                  (n :=
                    Fin (Fintype.card
                      (ExactGlobalHistoryLocalIndex G n S D) * e) ×
                    Fin (Fintype.card
                      (ExactGlobalHistoryLocalIndex G n S D) * e))
                  (𝕜 := ℂ) M)
                (unconditionalConjugatePureVector z))
            (unconditionalConjugateSourceGlobalCatalystWinningEffect_eq_transpose
              G n S D e a₀ b₀ x y)
    _ = _ := unconditionalConjugatePureVector_transpose_quadratic
      (exactSourceGlobalCatalystWinningEffect
        G n S D e a₀ b₀ x y) z

theorem
    unconditionalConjugateSourceGlobalCatalystWinningEffect_law_supported
    [DecidableEq A] [DecidableEq B]
    (G : Game X Y A B) (n : ℕ) (S : Strategy (G.repeat n))
    (D : Finset (Fin n))
    (positive : 0 < repeatedPostselectionMass G n S D)
    (e : ℕ) (residual_positive : 0 < e)
    (a₀ : A) (b₀ : B)
    (u : ExactLocallySampleableTuple X Y A B D)
    (supported : exactLocallySampleableLaw G n S D u ≠ 0) :
    quadraticExpectation
      (Matrix.toEuclideanCLM
        (n :=
          Fin (Fintype.card
            (ExactGlobalHistoryLocalIndex G n S D) * e) ×
          Fin (Fintype.card
            (ExactGlobalHistoryLocalIndex G n S D) * e))
        (𝕜 := ℂ)
        (unconditionalConjugateSourceGlobalCatalystWinningEffect
          G n S D e a₀ b₀ u.2.1 u.2.2.1))
      (unconditionalConjugatePureVector
        (tensorEmbezzlementTarget (n := e)
          (exactGlobalHistoryFinPsi G n S D u.2.2.2
            u.2.1 u.2.2.1))) =
    exactSourceConditionalWinningProbability G n S D u := by
  rw [unconditionalConjugateSourceGlobalCatalystWinningEffect_quadratic]
  exact
    (exactSourceGlobalCatalystWinningEffect_law_supported_verifier
      G n S D positive e residual_positive a₀ b₀ u supported).symm

end

noncomputable section

open WithLp
open scoped BigOperators Kronecker ComplexOrder MatrixOrder
  Matrix.Norms.L2Operator InnerProductSpace

theorem directDSVActualReindexedWinningEffect_quadratic
    {ι κ : Type*} [Fintype ι] [Fintype κ]
    [DecidableEq ι] [DecidableEq κ]
    (e : ι ≃ κ) (winning : Matrix κ κ ℂ)
    (z : EuclideanSpace ℂ ι) :
    quadraticExpectation
        (Matrix.toEuclideanCLM (n := ι) (𝕜 := ℂ)
          (Matrix.reindex e.symm e.symm winning)) z =
      quadraticExpectation
        (Matrix.toEuclideanCLM (n := κ) (𝕜 := ℂ) winning)
        (LinearIsometryEquiv.piLpCongrLeft 2 ℂ ℂ e z) := by
  classical
  rw [matrixQuadraticExpectation_expand,
    matrixQuadraticExpectation_expand]
  change
    (∑ i : ι, (∑ j : ι, winning (e i) (e j) * z j) *
      star (z i)).re =
    (∑ i : κ,
      (∑ j : κ, winning i j * z (e.symm j)) *
        star (z (e.symm i))).re
  congr 1
  calc
    (∑ i : ι, (∑ j : ι, winning (e i) (e j) * z j) *
      star (z i)) =
        ∑ i : ι,
          (∑ j : κ, winning (e i) j * z (e.symm j)) *
            star (z i) := by
          apply Finset.sum_congr rfl
          intro i _
          congr 1
          simpa only [Equiv.symm_apply_apply] using
            (Equiv.sum_comp e
              (fun j : κ => winning (e i) j * z (e.symm j)))
    _ = ∑ i : κ,
          (∑ j : κ, winning i j * z (e.symm j)) *
            star (z (e.symm i)) := by
          simpa only [Equiv.symm_apply_apply] using
            (Equiv.sum_comp e
              (fun i : κ =>
                (∑ j : κ, winning i j * z (e.symm j)) *
                  star (z (e.symm i))))

end

noncomputable section

open WithLp
open scoped BigOperators Kronecker ComplexOrder MatrixOrder
  Matrix.Norms.L2Operator InnerProductSpace

theorem unconditionalActualFairSourceEmbezzlementOne_apply :
    embezzlementState 1 (0, 0) = 1 := by
  simp [embezzlementState, rawEmbezzlementState,
    EuclideanSpace.norm_eq, Fintype.sum_prod_type]

theorem unconditionalActualFairSourceTensorEmbezzlementOne_reindex
    {d : ℕ} (ξ : BipartiteUnitVector d) :
    LinearIsometryEquiv.piLpCongrLeft 2 ℂ ℂ
        (Equiv.prodCongr
          (finCongr (Nat.mul_one d))
          (finCongr (Nat.mul_one d)))
        (tensorEmbezzlementTarget (n := 1) ξ) = ξ.val := by
  classical
  ext ⟨i, j⟩
  have first :
      (((finCongr (Nat.mul_one d)).symm i).divNat : Fin d) = i := by
    apply Fin.ext
    change i.val / 1 = i.val
    simp
  have second :
      (((finCongr (Nat.mul_one d)).symm j).divNat : Fin d) = j := by
    apply Fin.ext
    change j.val / 1 = j.val
    simp
  have first_work :
      (((finCongr (Nat.mul_one d)).symm i).modNat : Fin 1) = 0 :=
    Subsingleton.elim _ _
  have second_work :
      (((finCongr (Nat.mul_one d)).symm j).modNat : Fin 1) = 0 :=
    Subsingleton.elim _ _
  change
    ξ.val
        ((((finCongr (Nat.mul_one d)).symm i).divNat : Fin d),
         (((finCongr (Nat.mul_one d)).symm j).divNat : Fin d)) *
      embezzlementState 1
        ((((finCongr (Nat.mul_one d)).symm i).modNat : Fin 1),
         (((finCongr (Nat.mul_one d)).symm j).modNat : Fin 1)) =
      ξ.val (i, j)
  rw [first, second, first_work, second_work,
    unconditionalActualFairSourceEmbezzlementOne_apply, mul_one]

theorem
    unconditionalActualFairSourceConjugateTensorEmbezzlementOne_inverse_reindex
    {d : ℕ} (ξ : BipartiteUnitVector d) :
    LinearIsometryEquiv.piLpCongrLeft 2 ℂ ℂ
        (Equiv.prodCongr
          (finCongr (Nat.mul_one d)).symm
          (finCongr (Nat.mul_one d)).symm)
        (unconditionalConjugatePureVector ξ.val) =
      unconditionalConjugatePureVector
        (tensorEmbezzlementTarget (n := 1) ξ) := by
  classical
  ext ⟨i, j⟩
  change
    star (ξ.val
      ((finCongr (Nat.mul_one d)) i,
       (finCongr (Nat.mul_one d)) j)) =
      star (tensorEmbezzlementTarget (n := 1) ξ (i, j))
  congr 1
  have recovered := congrArg
    (fun z : EuclideanSpace ℂ (Fin d × Fin d) =>
      z ((finCongr (Nat.mul_one d)) i,
         (finCongr (Nat.mul_one d)) j))
    (unconditionalActualFairSourceTensorEmbezzlementOne_reindex ξ)
  simpa [LinearIsometryEquiv.piLpCongrLeft_apply] using recovered.symm

theorem unconditionalActualFairSourceWinningEffect_reindex
    {X Y A B : Type}
    [Fintype X] [Fintype Y] [Fintype A] [Fintype B]
    [decA : DecidableEq A] [decB : DecidableEq B]
    (G : Game X Y A B) (n : ℕ) (S : Strategy (G.repeat n))
    (D : Finset (Fin n)) (a₀ : A) (b₀ : B)
    (x : X) (y : Y) :
    directDSVActualLocalPOVMWinningEffect G
        (integratorActualC485SourceAlicePOVM G n S D a₀ x)
        (integratorActualC485SourceBobPOVM G n S D b₀ y)
        x y =
      Matrix.reindex
        (Equiv.prodCongr
          (finCongr
            (Nat.mul_one
              (Fintype.card
                (ExactGlobalHistoryLocalIndex G n S D))))
          (finCongr
            (Nat.mul_one
              (Fintype.card
                (ExactGlobalHistoryLocalIndex G n S D)))))
        (Equiv.prodCongr
          (finCongr
            (Nat.mul_one
              (Fintype.card
                (ExactGlobalHistoryLocalIndex G n S D))))
          (finCongr
            (Nat.mul_one
              (Fintype.card
                (ExactGlobalHistoryLocalIndex G n S D)))))
        (unconditionalConjugateSourceGlobalCatalystWinningEffect
          G n S D 1 a₀ b₀ x y) := by
  classical
  have alice_instance : decA = Classical.decEq A :=
    Subsingleton.elim _ _
  have bob_instance : decB = Classical.decEq B :=
    Subsingleton.elim _ _
  cases alice_instance
  cases bob_instance
  ext ⟨i, k⟩ ⟨j, l⟩
  simp only [directDSVActualLocalPOVMWinningEffect,
    integratorActualC485SourceAlicePOVM,
    integratorActualC485SourceBobPOVM,
    unconditionalConjugateSourceGlobalCatalystWinningEffect,
    reindexedPOVM, Matrix.reindex_apply,
    Matrix.sum_apply, Matrix.ite_apply, Matrix.zero_apply,
    Matrix.submatrix_apply, Matrix.kroneckerMap_apply,
    Equiv.prodCongr_symm, Equiv.prodCongr_apply, Prod.map]

theorem unconditionalActualFairSourceEOneReindexedGlobalWinningBorn
    {d : ℕ}
    (winning :
      Matrix (Fin (d * 1) × Fin (d * 1))
        (Fin (d * 1) × Fin (d * 1)) ℂ)
    (ξ : BipartiteUnitVector d) :
    quadraticExpectation
      (Matrix.toEuclideanCLM (n := Fin d × Fin d) (𝕜 := ℂ)
        (Matrix.reindex
          (Equiv.prodCongr
            (finCongr (Nat.mul_one d))
            (finCongr (Nat.mul_one d)))
          (Equiv.prodCongr
            (finCongr (Nat.mul_one d))
            (finCongr (Nat.mul_one d))) winning))
      (unconditionalConjugatePureVector ξ.val) =
    quadraticExpectation
      (Matrix.toEuclideanCLM
        (n := Fin (d * 1) × Fin (d * 1)) (𝕜 := ℂ) winning)
      (unconditionalConjugatePureVector
        (tensorEmbezzlementTarget (n := 1) ξ)) := by
  classical
  let e : (Fin (d * 1) × Fin (d * 1)) ≃ (Fin d × Fin d) :=
    Equiv.prodCongr (finCongr (Nat.mul_one d))
      (finCongr (Nat.mul_one d))
  calc
    _ = quadraticExpectation
        (Matrix.toEuclideanCLM
          (n := Fin (d * 1) × Fin (d * 1)) (𝕜 := ℂ) winning)
        (LinearIsometryEquiv.piLpCongrLeft 2 ℂ ℂ e.symm
          (unconditionalConjugatePureVector ξ.val)) := by
          exact directDSVActualReindexedWinningEffect_quadratic
            e.symm winning
            (unconditionalConjugatePureVector ξ.val)
    _ = _ := by
          congr 1
          exact
            unconditionalActualFairSourceConjugateTensorEmbezzlementOne_inverse_reindex
              ξ

end

end QuantumParallelRepetition


open QuantumParallelRepetition
open scoped ComplexOrder Matrix BigOperators InnerProductSpace
open Complex Matrix Finset
open WithLp
open scoped BigOperators Kronecker ComplexOrder MatrixOrder
  Matrix.Norms.L2Operator InnerProductSpace

theorem solution
    {X Y A B : Type}
    [Fintype X] [Fintype Y] [Fintype A] [Fintype B]
    (G : Game X Y A B) (n : ℕ) (S : Strategy (G.repeat n))
    (D : Finset (Fin n))
    (positive : 0 < repeatedPostselectionMass G n S D)
    (a₀ : A) (b₀ : B)
    (h : ExactLocallySampleableTuple X Y A B D)
    (supported : exactLocallySampleableLaw G n S D h ≠ 0) :
    quadraticExpectation
      (unconditionalActualFairSourceBaseWinningCLM
        G n S D a₀ b₀ h.2.1 h.2.2.1)
      (unconditionalConjugatePureVector
        (exactSourceTuplePsi G n S D h)) =
      exactSourceConditionalWinningProbability G n S D h := by
  classical
  unfold unconditionalActualFairSourceBaseWinningCLM
  calc
    _ = quadraticExpectation
          (Matrix.toEuclideanCLM
            (n :=
              Fin (Fintype.card
                (ExactGlobalHistoryLocalIndex G n S D)) ×
              Fin (Fintype.card
                (ExactGlobalHistoryLocalIndex G n S D)))
            (𝕜 := ℂ)
            (Matrix.reindex
              (Equiv.prodCongr
                (finCongr (Nat.mul_one
                  (Fintype.card
                    (ExactGlobalHistoryLocalIndex G n S D))))
                (finCongr (Nat.mul_one
                  (Fintype.card
                    (ExactGlobalHistoryLocalIndex G n S D)))))
              (Equiv.prodCongr
                (finCongr (Nat.mul_one
                  (Fintype.card
                    (ExactGlobalHistoryLocalIndex G n S D))))
                (finCongr (Nat.mul_one
                  (Fintype.card
                    (ExactGlobalHistoryLocalIndex G n S D)))))
              (unconditionalConjugateSourceGlobalCatalystWinningEffect
                G n S D 1 a₀ b₀ h.2.1 h.2.2.1)))
          (unconditionalConjugatePureVector
            (exactSourceTuplePsi G n S D h)) := by
              congr 2
              exact unconditionalActualFairSourceWinningEffect_reindex
                G n S D a₀ b₀ h.2.1 h.2.2.1
    _ = quadraticExpectation
          (Matrix.toEuclideanCLM
            (n :=
              Fin (Fintype.card
                (ExactGlobalHistoryLocalIndex G n S D) * 1) ×
              Fin (Fintype.card
                (ExactGlobalHistoryLocalIndex G n S D) * 1))
            (𝕜 := ℂ)
            (unconditionalConjugateSourceGlobalCatalystWinningEffect
              G n S D 1 a₀ b₀ h.2.1 h.2.2.1))
          (unconditionalConjugatePureVector
            (tensorEmbezzlementTarget (n := 1)
              (exactGlobalHistoryFinPsi
                G n S D h.2.2.2 h.2.1 h.2.2.1))) := by
              exact unconditionalActualFairSourceEOneReindexedGlobalWinningBorn
                (unconditionalConjugateSourceGlobalCatalystWinningEffect
                  G n S D 1 a₀ b₀ h.2.1 h.2.2.1)
                (exactGlobalHistoryFinPsi
                  G n S D h.2.2.2 h.2.1 h.2.2.1)
    _ = _ :=
      unconditionalConjugateSourceGlobalCatalystWinningEffect_law_supported
        G n S D positive 1 (by norm_num) a₀ b₀ h supported
