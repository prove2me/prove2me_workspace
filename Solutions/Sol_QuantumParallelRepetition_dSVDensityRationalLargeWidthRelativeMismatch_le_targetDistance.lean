import Definitions.Def_quantum_parallel_repetition_game
import Definitions.Def_qpr_core_11
import Theorems.Thm_QuantumParallelRepetition_trace_mul_posSemidef_nonneg
import Theorems.Thm_QuantumParallelRepetition_positiveMatrixSpectralAtom_posSemidef
import Theorems.Thm_QuantumParallelRepetition_positiveMatrixSpectralAtom_sum
import Theorems.Thm_QuantumParallelRepetition_targetReducedDensity_posSemidef
import Theorems.Thm_QuantumParallelRepetition_dSVSoftBobLeftReducedDensity_posSemidef
import Theorems.Thm_QuantumParallelRepetition_dSVUniformDensitySpectralAtomDiscrepancy_le
import Theorems.Thm_QuantumParallelRepetition_dSVUniformLeftDensityConjugateSwapVector_norm
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

open MeasureTheory Filter Set
open scoped BigOperators Topology ComplexOrder MatrixOrder Matrix.Norms.Elementwise

set_option backward.isDefEq.respectTransparency false

attribute [local instance] Matrix.normedAddCommGroup Matrix.normedSpace

@[simp] theorem spectralConjugationCLM_apply
    {d : Type*} [Fintype d] [DecidableEq d]
    (U : Matrix.unitaryGroup d ℂ) (A : Matrix d d ℂ) :
    spectralConjugationCLM U A =
      (U : Matrix d d ℂ) * A * star (U : Matrix d d ℂ) := by
  rfl

end

noncomputable section

open WithLp
open scoped BigOperators Kronecker ComplexOrder MatrixOrder

theorem spectralAtomOverlap_nonneg
    {d : Type*} [Fintype d] [DecidableEq d]
    (F G : Matrix d d ℂ)
    (hF : F.PosSemidef) (hG : G.PosSemidef)
    (i j : d) :
    0 ≤ spectralAtomOverlap F G hF hG i j := by
  exact trace_mul_posSemidef_nonneg
    (positiveMatrixSpectralAtom_posSemidef F hF i)
    (positiveMatrixSpectralAtom_posSemidef G hG j)

theorem spectralAtom_trace
    {d : Type*} [Fintype d] [DecidableEq d]
    (F : Matrix d d ℂ) (hF : F.PosSemidef)
    (i : d) :
    Matrix.trace (positiveMatrixSpectralAtom F hF i) = 1 := by
  classical
  unfold positiveMatrixSpectralAtom
  rw [spectralConjugationCLM_apply, Matrix.trace_mul_cycle,
    Matrix.UnitaryGroup.star_mul_self, one_mul,
    Matrix.trace_diagonal]
  simp [Pi.single_apply]

theorem spectralAtomOverlap_sum_right
    {d : Type*} [Fintype d] [DecidableEq d]
    (F G : Matrix d d ℂ)
    (hF : F.PosSemidef) (hG : G.PosSemidef)
    (i : d) :
    (∑ j : d, spectralAtomOverlap F G hF hG i j) = 1 := by
  classical
  calc
    (∑ j : d, spectralAtomOverlap F G hF hG i j) =
        (Matrix.trace
          (positiveMatrixSpectralAtom F hF i *
            (∑ j : d, positiveMatrixSpectralAtom G hG j))).re := by
              simp only [spectralAtomOverlap,
                Matrix.mul_sum, Matrix.trace_sum, Complex.re_sum]
    _ = (Matrix.trace (positiveMatrixSpectralAtom F hF i)).re := by
      rw [positiveMatrixSpectralAtom_sum]
      simp
    _ = 1 := by
      rw [spectralAtom_trace]
      rfl

theorem positiveDensity_eigenvalues_sum
    {d : Type*} [Fintype d] [DecidableEq d]
    (F : Matrix d d ℂ) (hF : F.PosSemidef)
    (htrace : Matrix.trace F = 1) :
    (∑ i : d, hF.isHermitian.eigenvalues i) = 1 := by
  have hspectral := congrArg Complex.re
    hF.isHermitian.trace_eq_sum_eigenvalues
  simpa [htrace, Complex.re_sum] using hspectral.symm

theorem matrixVectorization_inner
    {d e : Type*} [Fintype d] [Fintype e]
    (X Y : Matrix d e ℂ) :
    inner ℂ (toLp 2 (Matrix.vec X))
      (toLp 2 (Matrix.vec Y)) =
        Matrix.trace (X.conjTranspose * Y) := by
  rw [EuclideanSpace.inner_eq_star_dotProduct]
  change
    Matrix.vec Y ⬝ᵥ star (Matrix.vec X) =
      Matrix.trace (X.conjTranspose * Y)
  rw [dotProduct_comm, Matrix.star_vec_dotProduct_vec]

end

open scoped ComplexOrder Matrix BigOperators InnerProductSpace
open Complex Matrix Finset

noncomputable section

open WithLp
open scoped BigOperators Kronecker ComplexOrder MatrixOrder

set_option backward.isDefEq.respectTransparency false
set_option maxHeartbeats 5000000
set_option maxRecDepth 3072

theorem finiteUniformGrid_interval_card_le
    (N : ℕ) (offset step lo hi : ℝ)
    (positive : 0 < step)
    (ordered : lo ≤ hi) :
    (((Finset.univ.filter fun k : Fin N =>
      lo ≤ offset + (k.val : ℝ) * step ∧
        offset + (k.val : ℝ) * step ≤ hi).card : ℕ) : ℝ) ≤
      (hi - lo) / step + 1 := by
  classical
  let selected : Finset (Fin N) :=
    Finset.univ.filter fun k : Fin N =>
      lo ≤ offset + (k.val : ℝ) * step ∧
        offset + (k.val : ℝ) * step ≤ hi
  change (selected.card : ℝ) ≤ (hi - lo) / step + 1
  by_cases present : selected.Nonempty
  · let first : Fin N := selected.min' present
    let last : Fin N := selected.max' present
    have first_mem : first ∈ selected :=
      Finset.min'_mem selected present
    have last_mem : last ∈ selected :=
      Finset.max'_mem selected present
    have interval : selected ⊆ Finset.Icc first last := by
      intro k hk
      apply Finset.mem_Icc.mpr
      constructor
      · exact Finset.min'_le selected k hk
      · exact Finset.le_max' selected k hk
    have cardinal : selected.card ≤
        last.val + 1 - first.val := by
      have h := Finset.card_le_card interval
      simpa using h
    have ordered_indices : first.val ≤ last.val := by
      change (selected.min' present).val ≤ (selected.max' present).val
      exact Finset.min'_le_max' selected present
    have nat_bound : first.val ≤ last.val + 1 := by omega
    have real_cardinal :
        (selected.card : ℝ) ≤
          (last.val : ℝ) + 1 - (first.val : ℝ) := by
      exact_mod_cast cardinal
    have first_lower : lo ≤ offset + (first.val : ℝ) * step :=
      (Finset.mem_filter.mp first_mem).2.1
    have last_upper : offset + (last.val : ℝ) * step ≤ hi :=
      (Finset.mem_filter.mp last_mem).2.2
    have spread :
        ((last.val : ℝ) - (first.val : ℝ)) * step ≤ hi - lo := by
      nlinarith
    have scaled :
        (last.val : ℝ) - (first.val : ℝ) ≤
          (hi - lo) / step :=
      (le_div_iff₀ positive).2 spread
    linarith
  · have empty : selected = ∅ :=
      Finset.not_nonempty_iff_eq_empty.mp present
    rw [empty, Finset.card_empty, Nat.cast_zero]
    have difference : 0 ≤ hi - lo := sub_nonneg.mpr ordered
    exact add_nonneg (div_nonneg difference positive.le)
      (by norm_num)

theorem finiteUniformThresholdCrossing_le
    {lower upper : ℝ}
    (window : lower < upper)
    (a b : ℝ)
    (N : ℕ) (nonempty : 0 < N) :
    finiteUniformThresholdCrossing lower upper a b N ≤
      |a - b| / (upper - lower) + 1 / (N : ℝ) := by
  have realN : (0 : ℝ) < (N : ℝ) := by exact_mod_cast nonempty
  have width : 0 < upper - lower := sub_pos.mpr window
  have step : 0 < (upper - lower) / (N : ℝ) :=
    div_pos width realN
  have count := finiteUniformGrid_interval_card_le
    N lower ((upper - lower) / (N : ℝ))
    (min a b) (max a b) step min_le_max
  change
    ((Finset.univ.filter fun k : Fin N =>
      min a b ≤ finiteUniformThresholdGrid lower upper N k ∧
        finiteUniformThresholdGrid lower upper N k ≤ max a b).card : ℝ) /
      (N : ℝ) ≤ _
  have same_count :
      ((Finset.univ.filter fun k : Fin N =>
        min a b ≤ finiteUniformThresholdGrid lower upper N k ∧
          finiteUniformThresholdGrid lower upper N k ≤
            max a b).card : ℝ) ≤
        (max a b - min a b) /
          ((upper - lower) / (N : ℝ)) + 1 := by
    simpa [finiteUniformThresholdGrid] using count
  calc
    ((Finset.univ.filter fun k : Fin N =>
      min a b ≤ finiteUniformThresholdGrid lower upper N k ∧
        finiteUniformThresholdGrid lower upper N k ≤ max a b).card : ℝ) /
      (N : ℝ) ≤
        ((max a b - min a b) /
          ((upper - lower) / (N : ℝ)) + 1) / (N : ℝ) :=
      div_le_div_of_nonneg_right same_count realN.le
    _ = |a - b| / (upper - lower) + 1 / (N : ℝ) := by
      rw [max_sub_min_eq_abs]
      have habs : |b - a| = |a - b| := abs_sub_comm b a
      rw [habs]
      field_simp [realN.ne', width.ne']

end

noncomputable section

open WithLp
open scoped BigOperators Kronecker ComplexOrder MatrixOrder

theorem targetCoefficientMatrix_vec
    {d : ℕ} (ξ : BipartiteUnitVector d) :
    toLp 2 (Matrix.vec (targetCoefficientMatrix ξ)) = ξ.val := by
  ext ⟨a, b⟩
  rfl

theorem targetReducedDensity_trace
    {d : ℕ} (ξ : BipartiteUnitVector d) :
    Matrix.trace (targetReducedDensity ξ) = 1 := by
  have vectorized := matrixVectorization_inner
    (targetCoefficientMatrix ξ)
    (targetCoefficientMatrix ξ)
  rw [targetCoefficientMatrix_vec,
    inner_self_eq_one_of_norm_eq_one ξ.property] at vectorized
  exact vectorized.symm

end

noncomputable section

open scoped BigOperators

theorem dSVRationalSoftPass_mem_unit
    {t x : ℝ} (positive : 0 < t) (nonnegative : 0 ≤ x) :
    0 ≤ dSVRationalSoftPass t x ∧
      dSVRationalSoftPass t x ≤ 1 := by
  unfold dSVRationalSoftPass
  have denominator : 0 < x + t := by linarith
  constructor
  · exact div_nonneg nonnegative denominator.le
  · apply (div_le_iff₀ denominator).mpr
    linarith

theorem dSVRationalSoftPass_sub
    {t a b : ℝ} (positive : 0 < t)
    (ha : 0 ≤ a) (hb : 0 ≤ b) :
    dSVRationalSoftPass t a -
        dSVRationalSoftPass t b =
      t * (a - b) / ((a + t) * (b + t)) := by
  unfold dSVRationalSoftPass
  have da : a + t ≠ 0 := by linarith
  have db : b + t ≠ 0 := by linarith
  field_simp
  ring

theorem dSVRationalSoftPass_lipschitz
    {t a b : ℝ} (positive : 0 < t)
    (ha : 0 ≤ a) (hb : 0 ≤ b) :
    |dSVRationalSoftPass t a -
        dSVRationalSoftPass t b| ≤ |a - b| / t := by
  have denominator : 0 < (a + t) * (b + t) :=
    mul_pos (by linarith) (by linarith)
  rw [dSVRationalSoftPass_sub positive ha hb,
    abs_div, abs_mul, abs_of_pos positive, abs_of_pos denominator]
  apply (div_le_iff₀ denominator).mpr
  rw [div_mul_eq_mul_div]
  apply (le_div_iff₀ positive).mpr
  have wide : t ^ 2 ≤ (a + t) * (b + t) := by
    nlinarith [mul_nonneg ha hb]
  nlinarith [mul_le_mul_of_nonneg_left wide (abs_nonneg (a - b))]

end

noncomputable section

open WithLp
open scoped BigOperators Kronecker ComplexOrder MatrixOrder

theorem dSVSoftBobLeftReducedDensity_trace
    {d : ℕ} (ζ : BipartiteUnitVector d) :
    Matrix.trace (dSVSoftBobLeftReducedDensity ζ) = 1 := by
  unfold dSVSoftBobLeftReducedDensity
  calc
    Matrix.trace
        (targetCoefficientMatrix ζ *
          (targetCoefficientMatrix ζ).conjTranspose) =
        Matrix.trace
          ((targetCoefficientMatrix ζ).conjTranspose *
            targetCoefficientMatrix ζ) :=
      Matrix.trace_mul_comm _ _
    _ = 1 := targetReducedDensity_trace ζ

end

noncomputable section

open WithLp
open scoped BigOperators ComplexOrder MatrixOrder

set_option backward.isDefEq.respectTransparency false
set_option maxHeartbeats 7000000
set_option maxRecDepth 3072

theorem dSVUniformLeftDensityConjugateSwapVector_distance
    {d : ℕ} (z w : EuclideanSpace ℂ (Fin d × Fin d)) :
    ‖dSVUniformLeftDensityConjugateSwapVector z -
        dSVUniformLeftDensityConjugateSwapVector w‖ =
      ‖z - w‖ := by
  have difference :
      dSVUniformLeftDensityConjugateSwapVector z -
        dSVUniformLeftDensityConjugateSwapVector w =
      dSVUniformLeftDensityConjugateSwapVector (z - w) := by
    ext ij
    change star (z (ij.2, ij.1)) - star (w (ij.2, ij.1)) =
      star ((z - w) (ij.2, ij.1))
    simp
  rw [difference,
    dSVUniformLeftDensityConjugateSwapVector_norm]

theorem dSVUniformLeftDensityConjugateSwap_coefficient
    {d : ℕ} (ξ : BipartiteUnitVector d) :
    targetCoefficientMatrix
        (dSVUniformLeftDensityConjugateSwap ξ) =
      (targetCoefficientMatrix ξ).conjTranspose := by
  ext b a
  rfl

theorem dSVUniformLeftDensityConjugateSwap_density
    {d : ℕ} (ξ : BipartiteUnitVector d) :
    targetReducedDensity
        (dSVUniformLeftDensityConjugateSwap ξ) =
      dSVSoftBobLeftReducedDensity ξ := by
  unfold targetReducedDensity
    dSVSoftBobLeftReducedDensity
  rw [dSVUniformLeftDensityConjugateSwap_coefficient,
    Matrix.conjTranspose_conjTranspose]

theorem dSVUniformLeftDensityConjugateSwap_distance
    {d : ℕ} (ξ ζ : BipartiteUnitVector d) :
    ‖(dSVUniformLeftDensityConjugateSwap ξ).val -
        (dSVUniformLeftDensityConjugateSwap ζ).val‖ =
      ‖ξ.val - ζ.val‖ :=
  dSVUniformLeftDensityConjugateSwapVector_distance
    ξ.val ζ.val

theorem dSVUniformLeftDensitySpectralAtomDiscrepancy_eq_swap
    {d : ℕ} (ξ ζ : BipartiteUnitVector d) :
    dSVUniformLeftDensitySpectralAtomDiscrepancy ξ ζ =
      dSVUniformDensitySpectralAtomDiscrepancy
        (dSVUniformLeftDensityConjugateSwap ξ)
        (dSVUniformLeftDensityConjugateSwap ζ) := by
  unfold dSVUniformLeftDensitySpectralAtomDiscrepancy
    dSVUniformDensitySpectralAtomDiscrepancy
    dSVUniformLeftDensitySchmidtCoefficient
    targetCanonicalSchmidtCoefficient
  simp only [dSVUniformLeftDensityConjugateSwap_density]

theorem dSVUniformLeftDensitySpectralAtomDiscrepancy_le
    {d : ℕ} (ξ ζ : BipartiteUnitVector d) :
    dSVUniformLeftDensitySpectralAtomDiscrepancy ξ ζ ≤
      2 * Real.sqrt 2 * ‖ξ.val - ζ.val‖ := by
  rw [dSVUniformLeftDensitySpectralAtomDiscrepancy_eq_swap]
  have bound := dSVUniformDensitySpectralAtomDiscrepancy_le
    (dSVUniformLeftDensityConjugateSwap ξ)
    (dSVUniformLeftDensityConjugateSwap ζ)
  rwa [dSVUniformLeftDensityConjugateSwap_distance] at bound

end

noncomputable section

open WithLp
open scoped BigOperators Kronecker ComplexOrder MatrixOrder

attribute [local instance] Classical.propDecidable

theorem dSVUniformDensityThresholdGrid_apply
    {N : ℕ} (positive : 0 < N) (k : Fin N) :
    dSVUniformDensityThresholdGrid N k =
      ((k.val : ℝ) + 1) / (N : ℝ) := by
  have nonzero : (N : ℝ) ≠ 0 := by
    exact_mod_cast (Nat.ne_of_gt positive)
  unfold dSVUniformDensityThresholdGrid
    finiteUniformThresholdGrid
  field_simp
  ring

theorem dSVUniformDensityThresholdWeight_nonneg
    (N : ℕ) (k : Fin N) :
    0 ≤ dSVUniformDensityThresholdWeight N k := by
  unfold dSVUniformDensityThresholdWeight
  positivity

theorem dSVUniformDensityGridPrefix_eq_count
    (N : ℕ) (density : ℝ) :
    dSVUniformDensityGridPrefix N density =
      ((Finset.univ.filter fun k : Fin N =>
        dSVUniformDensityThresholdGrid N k ≤ density).card : ℝ) /
        (N : ℝ) := by
  classical
  unfold dSVUniformDensityGridPrefix
    dSVUniformDensityThresholdWeight
  simp_rw [mul_ite, mul_one, mul_zero]
  rw [← Finset.sum_filter]
  simp [div_eq_mul_inv, mul_comm]

theorem dSVUniformDensityThresholdMismatch_indicator_le_crossing
    {N : ℕ} (k : Fin N) (alice bob : ℝ) :
    (if ((dSVUniformDensityThresholdGrid N k ≤ alice) ↔
        (dSVUniformDensityThresholdGrid N k ≤ bob))
      then (0 : ℝ) else 1) ≤
      if min alice bob ≤ dSVUniformDensityThresholdGrid N k ∧
        dSVUniformDensityThresholdGrid N k ≤ max alice bob
      then 1 else 0 := by
  classical
  by_cases left : dSVUniformDensityThresholdGrid N k ≤ alice
  · by_cases right : dSVUniformDensityThresholdGrid N k ≤ bob
    · simp only [left, right, iff_self, ↓reduceIte]
      split <;> norm_num
    · have lower : bob < dSVUniformDensityThresholdGrid N k :=
        lt_of_not_ge right
      have interval :
          min alice bob ≤ dSVUniformDensityThresholdGrid N k ∧
            dSVUniformDensityThresholdGrid N k ≤ max alice bob :=
        ⟨(min_le_right alice bob).trans lower.le,
          left.trans (le_max_left alice bob)⟩
      simp [left, right, interval]
  · by_cases right : dSVUniformDensityThresholdGrid N k ≤ bob
    · have lower : alice < dSVUniformDensityThresholdGrid N k :=
        lt_of_not_ge left
      have interval :
          min alice bob ≤ dSVUniformDensityThresholdGrid N k ∧
            dSVUniformDensityThresholdGrid N k ≤ max alice bob :=
        ⟨(min_le_left alice bob).trans lower.le,
          right.trans (le_max_right alice bob)⟩
      simp [left, right, interval]
    · simp [left, right]

theorem dSVUniformDensityThresholdMismatch_le
    {N : ℕ} (positive : 0 < N) (alice bob : ℝ) :
    dSVUniformDensityThresholdMismatch N alice bob ≤
      |alice - bob| + 1 / (N : ℝ) := by
  classical
  have window :
      (1 / (N : ℝ)) < 1 + 1 / (N : ℝ) := by linarith
  calc
    dSVUniformDensityThresholdMismatch N alice bob ≤
      finiteUniformThresholdCrossing
        (1 / (N : ℝ)) (1 + 1 / (N : ℝ)) alice bob N := by
      unfold dSVUniformDensityThresholdMismatch
        finiteUniformThresholdCrossing
      calc
        (∑ k : Fin N,
          dSVUniformDensityThresholdWeight N k *
            if ((dSVUniformDensityThresholdGrid N k ≤ alice) ↔
              (dSVUniformDensityThresholdGrid N k ≤ bob))
            then 0 else 1) ≤
          ∑ k : Fin N,
            dSVUniformDensityThresholdWeight N k *
              if min alice bob ≤
                  dSVUniformDensityThresholdGrid N k ∧
                dSVUniformDensityThresholdGrid N k ≤ max alice bob
              then 1 else 0 := by
            apply Finset.sum_le_sum
            intro k _
            exact mul_le_mul_of_nonneg_left
              (dSVUniformDensityThresholdMismatch_indicator_le_crossing
                k alice bob)
              (dSVUniformDensityThresholdWeight_nonneg N k)
        _ = _ := by
          unfold dSVUniformDensityThresholdWeight
            dSVUniformDensityThresholdGrid
          simp_rw [mul_ite, mul_one, mul_zero]
          rw [← Finset.sum_filter]
          simp [div_eq_mul_inv, mul_comm]
    _ ≤ |alice - bob| /
        ((1 + 1 / (N : ℝ)) - (1 / (N : ℝ))) +
          1 / (N : ℝ) :=
      finiteUniformThresholdCrossing_le
        window alice bob N positive
    _ = |alice - bob| + 1 / (N : ℝ) := by
      ring

theorem dSVUniformDensityThresholdGrid_count_eq_floor
    {N : ℕ} (positive : 0 < N)
    (density : ℝ) (nonnegative : 0 ≤ density) (bounded : density ≤ 1) :
    (Finset.univ.filter fun k : Fin N =>
      dSVUniformDensityThresholdGrid N k ≤ density).card =
        Nat.floor (density * (N : ℝ)) := by
  classical
  have gridpositive : (0 : ℝ) < N := by exact_mod_cast positive
  have densitypositive : 0 ≤ density * (N : ℝ) :=
    mul_nonneg nonnegative gridpositive.le
  have floor_bound : Nat.floor (density * (N : ℝ)) ≤ N := by
    have product : density * (N : ℝ) ≤ (N : ℝ) := by
      nlinarith
    have floor := Nat.floor_mono product
    simpa using floor
  have same :
      (Finset.univ.filter fun k : Fin N =>
        dSVUniformDensityThresholdGrid N k ≤ density) =
      (Finset.univ.filter fun k : Fin N =>
        k.val < Nat.floor (density * (N : ℝ))) := by
    ext k
    simp only [Finset.mem_filter, Finset.mem_univ, true_and]
    rw [dSVUniformDensityThresholdGrid_apply positive,
      div_le_iff₀ gridpositive]
    constructor
    · intro threshold
      have cast : ((k.val + 1 : ℕ) : ℝ) ≤ density * (N : ℝ) := by
        simpa using threshold
      have below := (Nat.le_floor_iff densitypositive).2 cast
      omega
    · intro below
      have integer : k.val + 1 ≤ Nat.floor (density * (N : ℝ)) := by
        omega
      have cast := (Nat.le_floor_iff densitypositive).1 integer
      simpa using cast
  rw [same, Fin.card_filter_val_lt, min_eq_right floor_bound]

end

noncomputable section

open WithLp
open scoped BigOperators ComplexOrder MatrixOrder

attribute [local instance] Classical.propDecidable

theorem
    dSVDensityRationalLeftProjectiveThresholdAtomMismatch_le_discrepancy
    {d N : ℕ} {w : ℝ} (width : 0 < w) (grid : 0 < N)
    (ξ ζ : BipartiteUnitVector d) :
    dSVDensityRationalLeftProjectiveThresholdAtomMismatch
        w N ξ ζ ≤
      dSVUniformLeftDensitySpectralAtomDiscrepancy ξ ζ / w +
        (d : ℝ) / N := by
  let F := dSVSoftBobLeftReducedDensity ξ
  let G := dSVSoftBobLeftReducedDensity ζ
  let hF : F.PosSemidef :=
    dSVSoftBobLeftReducedDensity_posSemidef ξ
  let hG : G.PosSemidef :=
    dSVSoftBobLeftReducedDensity_posSemidef ζ
  have overlap_mass :
      (∑ i : Fin d, ∑ j : Fin d,
        spectralAtomOverlap F G hF hG i j) = (d : ℝ) := by
    simp_rw [spectralAtomOverlap_sum_right]
    simp
  have discrepancy :
      (∑ i : Fin d, ∑ j : Fin d,
        |hF.isHermitian.eigenvalues i -
          hG.isHermitian.eigenvalues j| *
            spectralAtomOverlap F G hF hG i j) =
        dSVUniformLeftDensitySpectralAtomDiscrepancy ξ ζ := by
    unfold dSVUniformLeftDensitySpectralAtomDiscrepancy
      dSVUniformLeftDensitySchmidtCoefficient
    apply Finset.sum_congr rfl
    intro i _
    apply Finset.sum_congr rfl
    intro j _
    simp [Real.sq_sqrt
      ((dSVSoftBobLeftReducedDensity_posSemidef ξ).eigenvalues_nonneg i),
      Real.sq_sqrt
        ((dSVSoftBobLeftReducedDensity_posSemidef ζ).eigenvalues_nonneg j),
      F, G]
  calc
    dSVDensityRationalLeftProjectiveThresholdAtomMismatch
        w N ξ ζ ≤
      ∑ i : Fin d, ∑ j : Fin d,
        spectralAtomOverlap F G hF hG i j *
          (|hF.isHermitian.eigenvalues i -
            hG.isHermitian.eigenvalues j| / w + 1 / (N : ℝ)) := by
      unfold dSVDensityRationalLeftProjectiveThresholdAtomMismatch
      change
        (∑ i : Fin d, ∑ j : Fin d,
          spectralAtomOverlap F G hF hG i j *
            dSVUniformDensityThresholdMismatch N
              (dSVRationalSoftPass w
                (hF.isHermitian.eigenvalues i))
              (dSVRationalSoftPass w
                (hG.isHermitian.eigenvalues j))) ≤ _
      apply Finset.sum_le_sum
      intro i _
      apply Finset.sum_le_sum
      intro j _
      apply mul_le_mul_of_nonneg_left _
        (spectralAtomOverlap_nonneg F G hF hG i j)
      exact (dSVUniformDensityThresholdMismatch_le grid _ _).trans
        (by simpa [add_comm] using
          (add_le_add_right
            (dSVRationalSoftPass_lipschitz width
              (hF.eigenvalues_nonneg i) (hG.eigenvalues_nonneg j))
            (1 / (N : ℝ))))
    _ = (∑ i : Fin d, ∑ j : Fin d,
          |hF.isHermitian.eigenvalues i -
            hG.isHermitian.eigenvalues j| *
              spectralAtomOverlap F G hF hG i j) / w +
        (1 / (N : ℝ)) *
          (∑ i : Fin d, ∑ j : Fin d,
            spectralAtomOverlap F G hF hG i j) := by
      calc
        (∑ i : Fin d, ∑ j : Fin d,
          spectralAtomOverlap F G hF hG i j *
            (|hF.isHermitian.eigenvalues i -
              hG.isHermitian.eigenvalues j| / w + 1 / (N : ℝ))) =
          ∑ i : Fin d, ∑ j : Fin d,
            ((|hF.isHermitian.eigenvalues i -
                hG.isHermitian.eigenvalues j| *
                spectralAtomOverlap F G hF hG i j) / w +
              (1 / (N : ℝ)) *
                spectralAtomOverlap F G hF hG i j) := by
          apply Finset.sum_congr rfl
          intro i _
          apply Finset.sum_congr rfl
          intro j _
          ring
        _ = _ := by
          simp_rw [Finset.sum_add_distrib, Finset.sum_div,
            Finset.mul_sum]
    _ = dSVUniformLeftDensitySpectralAtomDiscrepancy ξ ζ / w +
          (d : ℝ) / N := by
      rw [discrepancy, overlap_mass]
      ring

theorem dSVUniformDensityGridPrefix_density_sub_lt
    {N : ℕ} (positive : 0 < N)
    {a : ℝ} (nonnegative : 0 ≤ a) (bounded : a ≤ 1) :
    a - dSVUniformDensityGridPrefix N a < 1 / (N : ℝ) := by
  have cast : (0 : ℝ) < N := by exact_mod_cast positive
  rw [dSVUniformDensityGridPrefix_eq_count,
    dSVUniformDensityThresholdGrid_count_eq_floor
      positive a nonnegative bounded]
  apply (lt_div_iff₀ cast).mpr
  have floor := Nat.lt_floor_add_one (a * (N : ℝ))
  calc
    (a - (Nat.floor (a * (N : ℝ)) : ℝ) / (N : ℝ)) *
        (N : ℝ) =
      a * (N : ℝ) - (Nat.floor (a * (N : ℝ)) : ℝ) := by
        field_simp
    _ < 1 := by linarith

theorem dSVUniformDensityGridPrefix_density_sub_le
    {N : ℕ} (positive : 0 < N)
    {a : ℝ} (nonnegative : 0 ≤ a) (bounded : a ≤ 1) :
    a - 1 / (N : ℝ) ≤ dSVUniformDensityGridPrefix N a := by
  linarith [dSVUniformDensityGridPrefix_density_sub_lt
    positive nonnegative bounded]

theorem dSVSoftBobLeftReducedDensity_eigenvalue_le_one
    {d : ℕ} (ξ : BipartiteUnitVector d) (i : Fin d) :
    (dSVSoftBobLeftReducedDensity_posSemidef ξ).isHermitian.eigenvalues i
      ≤ 1 := by
  let F := dSVSoftBobLeftReducedDensity ξ
  let hF : F.PosSemidef :=
    dSVSoftBobLeftReducedDensity_posSemidef ξ
  change hF.isHermitian.eigenvalues i ≤ 1
  calc
    hF.isHermitian.eigenvalues i ≤
        ∑ j : Fin d, hF.isHermitian.eigenvalues j :=
      Finset.single_le_sum
        (fun j _ => hF.eigenvalues_nonneg j) (Finset.mem_univ i)
    _ = 1 := positiveDensity_eigenvalues_sum F hF
      (dSVSoftBobLeftReducedDensity_trace ξ)

theorem dSVRationalSoftPass_ge_density_div_width_add_one
    {w a : ℝ} (width : 0 < w)
    (nonnegative : 0 ≤ a) (bounded : a ≤ 1) :
    a / (w + 1) ≤ dSVRationalSoftPass w a := by
  unfold dSVRationalSoftPass
  have denominator : 0 < a + w := by linarith
  have wider : 0 < w + 1 := by linarith
  apply (div_le_div_iff₀ wider denominator).mpr
  nlinarith

theorem dSVDensityRationalLeftProjectiveDiagonalMass_lower
    {d N : ℕ} {w : ℝ} (width : 0 < w) (grid : 0 < N)
    (ξ : BipartiteUnitVector d) :
    1 / (w + 1) - (d : ℝ) / N ≤
      dSVDensityRationalLeftProjectiveDiagonalMass w N ξ := by
  let F := dSVSoftBobLeftReducedDensity ξ
  let hF : F.PosSemidef :=
    dSVSoftBobLeftReducedDensity_posSemidef ξ
  have density_sum :
      (∑ i : Fin d, hF.isHermitian.eigenvalues i) = 1 :=
    positiveDensity_eigenvalues_sum F hF
      (dSVSoftBobLeftReducedDensity_trace ξ)
  have rational_sum :
      1 / (w + 1) ≤
        ∑ i : Fin d,
          dSVRationalSoftPass w
            (hF.isHermitian.eigenvalues i) := by
    calc
      1 / (w + 1) =
          ∑ i : Fin d, hF.isHermitian.eigenvalues i / (w + 1) := by
        rw [← Finset.sum_div, density_sum]
      _ ≤ ∑ i : Fin d,
          dSVRationalSoftPass w
            (hF.isHermitian.eigenvalues i) := by
        apply Finset.sum_le_sum
        intro i _
        exact dSVRationalSoftPass_ge_density_div_width_add_one
          width (hF.eigenvalues_nonneg i)
          (dSVSoftBobLeftReducedDensity_eigenvalue_le_one ξ i)
  calc
    1 / (w + 1) - (d : ℝ) / N ≤
        (∑ i : Fin d,
          dSVRationalSoftPass w
            (hF.isHermitian.eigenvalues i)) - (d : ℝ) / N :=
      sub_le_sub_right rational_sum _
    _ = ∑ i : Fin d,
        (dSVRationalSoftPass w
          (hF.isHermitian.eigenvalues i) - 1 / (N : ℝ)) := by
      simp [Finset.sum_sub_distrib]
      ring
    _ ≤ dSVDensityRationalLeftProjectiveDiagonalMass w N ξ := by
      unfold dSVDensityRationalLeftProjectiveDiagonalMass
      change
        (∑ i : Fin d,
          (dSVRationalSoftPass w
            (hF.isHermitian.eigenvalues i) - 1 / (N : ℝ))) ≤
          ∑ i : Fin d,
            dSVUniformDensityGridPrefix N
              (dSVRationalSoftPass w
                (hF.isHermitian.eigenvalues i))
      apply Finset.sum_le_sum
      intro i _
      exact dSVUniformDensityGridPrefix_density_sub_le grid
        (dSVRationalSoftPass_mem_unit width
          (hF.eigenvalues_nonneg i)).1
        (dSVRationalSoftPass_mem_unit width
          (hF.eigenvalues_nonneg i)).2

end

noncomputable section

open WithLp
open scoped BigOperators ComplexOrder MatrixOrder

theorem dSVDensityRationalLargeWidthDiagonalMass_half
    {d N : ℕ} {w : ℝ} (width : 0 < w) (grid : 0 < N)
    (fine : (d : ℝ) / N ≤ 1 / (2 * (w + 1)))
    (ξ : BipartiteUnitVector d) :
    1 / (2 * (w + 1)) ≤
      dSVDensityRationalLeftProjectiveDiagonalMass w N ξ := by
  have denominator : 0 < w + 1 := by linarith
  have arithmetic :
      1 / (2 * (w + 1)) ≤ 1 / (w + 1) - (d : ℝ) / N := by
    have identity :
        1 / (w + 1) - 1 / (2 * (w + 1)) =
          1 / (2 * (w + 1)) := by
      field_simp; ring
    linarith
  exact arithmetic.trans
    (dSVDensityRationalLeftProjectiveDiagonalMass_lower
      width grid ξ)

theorem dSVDensityRationalLargeWidthDiagonalMass_pos
    {d N : ℕ} {w : ℝ} (width : 0 < w) (grid : 0 < N)
    (fine : (d : ℝ) / N ≤ 1 / (2 * (w + 1)))
    (ξ : BipartiteUnitVector d) :
    0 < dSVDensityRationalLeftProjectiveDiagonalMass w N ξ := by
  have lower := dSVDensityRationalLargeWidthDiagonalMass_half
    width grid fine ξ
  have positive : 0 < 1 / (2 * (w + 1)) := by positivity
  exact positive.trans_le lower

theorem
    dSVDensityRationalLargeWidthRelativeMismatch_le_discrepancy
    {d N : ℕ} {w : ℝ} (width : 0 < w) (grid : 0 < N)
    (fine : (d : ℝ) / N ≤ 1 / (2 * (w + 1)))
    (ξ ζ : BipartiteUnitVector d) :
    dSVDensityRationalLeftProjectiveThresholdAtomMismatch
        w N ξ ζ /
      dSVDensityRationalLeftProjectiveDiagonalMass w N ξ ≤
      2 * (w + 1) *
        (dSVUniformLeftDensitySpectralAtomDiscrepancy ξ ζ / w +
          (d : ℝ) / N) := by
  let M := dSVDensityRationalLeftProjectiveDiagonalMass w N ξ
  let D := dSVUniformLeftDensitySpectralAtomDiscrepancy ξ ζ / w +
    (d : ℝ) / N
  have mass_positive : 0 < M :=
    dSVDensityRationalLargeWidthDiagonalMass_pos
      width grid fine ξ
  have mass_floor : 1 / (2 * (w + 1)) ≤ M :=
    dSVDensityRationalLargeWidthDiagonalMass_half
      width grid fine ξ
  have difference_nonnegative :
      0 ≤ dSVUniformLeftDensitySpectralAtomDiscrepancy ξ ζ := by
    unfold dSVUniformLeftDensitySpectralAtomDiscrepancy
    apply Finset.sum_nonneg
    intro i _
    apply Finset.sum_nonneg
    intro j _
    exact mul_nonneg (abs_nonneg _)
      (spectralAtomOverlap_nonneg _ _ _ _ i j)
  have defect_nonnegative : 0 ≤ D := by
    dsimp [D]
    exact add_nonneg
      (div_nonneg difference_nonnegative width.le) (by positivity)
  have actual :=
    dSVDensityRationalLeftProjectiveThresholdAtomMismatch_le_discrepancy
      width grid ξ ζ
  change
    dSVDensityRationalLeftProjectiveThresholdAtomMismatch
        w N ξ ζ / M ≤ 2 * (w + 1) * D
  apply (div_le_iff₀ mass_positive).mpr
  have floor_scaled : 1 ≤ 2 * (w + 1) * M := by
    have denominator : 0 < 2 * (w + 1) := by positivity
    have crossed := (div_le_iff₀ denominator).mp mass_floor
    nlinarith
  change
    dSVDensityRationalLeftProjectiveThresholdAtomMismatch
      w N ξ ζ ≤ (2 * (w + 1) * D) * M
  calc
    dSVDensityRationalLeftProjectiveThresholdAtomMismatch
        w N ξ ζ ≤ D := actual
    _ ≤ D * (2 * (w + 1) * M) := by
      nlinarith [mul_nonneg defect_nonnegative
        (show 0 ≤ 2 * (w + 1) * M - 1 by linarith)]
    _ = (2 * (w + 1) * D) * M := by ring

end

end QuantumParallelRepetition


open QuantumParallelRepetition
open scoped ComplexOrder Matrix BigOperators InnerProductSpace
open Complex Matrix Finset
open WithLp
open scoped BigOperators ComplexOrder MatrixOrder

theorem
    solution
    {d N : ℕ} {w : ℝ} (large : 1 ≤ w) (grid : 0 < N)
    (fine : (d : ℝ) / N ≤ 1 / (2 * (w + 1)))
    (ξ ζ : BipartiteUnitVector d) :
    dSVDensityRationalLeftProjectiveThresholdAtomMismatch
        w N ξ ζ /
      dSVDensityRationalLeftProjectiveDiagonalMass w N ξ ≤
        8 * Real.sqrt 2 * ‖ξ.val - ζ.val‖ +
          2 * (w + 1) * ((d : ℝ) / N) := by
  have width : 0 < w := lt_of_lt_of_le (by norm_num) large
  have distance := dSVUniformLeftDensitySpectralAtomDiscrepancy_le
    ξ ζ
  have root : 0 ≤ Real.sqrt (2 : ℝ) := Real.sqrt_nonneg _
  have distance_nonnegative : 0 ≤ ‖ξ.val - ζ.val‖ := norm_nonneg _
  have denominator : 0 < w := width
  have ratio : (w + 1) / w ≤ 2 := by
    apply (div_le_iff₀ denominator).mpr
    nlinarith
  calc
    dSVDensityRationalLeftProjectiveThresholdAtomMismatch
        w N ξ ζ /
      dSVDensityRationalLeftProjectiveDiagonalMass w N ξ ≤
        2 * (w + 1) *
          (dSVUniformLeftDensitySpectralAtomDiscrepancy ξ ζ / w +
            (d : ℝ) / N) :=
      dSVDensityRationalLargeWidthRelativeMismatch_le_discrepancy
        width grid fine ξ ζ
    _ ≤ 2 * (w + 1) *
          ((2 * Real.sqrt 2 * ‖ξ.val - ζ.val‖) / w +
            (d : ℝ) / N) := by
      gcongr
    _ = 4 * Real.sqrt 2 * ‖ξ.val - ζ.val‖ * ((w + 1) / w) +
          2 * (w + 1) * ((d : ℝ) / N) := by
      field_simp; ring
    _ ≤ (4 * Real.sqrt 2 * ‖ξ.val - ζ.val‖) * 2 +
          2 * (w + 1) * ((d : ℝ) / N) := by
      have scale_nonnegative :
          0 ≤ 4 * Real.sqrt 2 * ‖ξ.val - ζ.val‖ := by positivity
      have scaled := mul_le_mul_of_nonneg_left ratio scale_nonnegative
      exact add_le_add scaled (le_refl _)
    _ = 8 * Real.sqrt 2 * ‖ξ.val - ζ.val‖ +
          2 * (w + 1) * ((d : ℝ) / N) := by
      ring
