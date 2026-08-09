import Definitions.Def_quantum_parallel_repetition_game
import Definitions.Def_qpr_core_12
import Theorems.Thm_QuantumParallelRepetition_positiveMatrixSpectralAtom_sum
import Theorems.Thm_QuantumParallelRepetition_dSVSoftBobLeftReducedDensity_posSemidef
import Theorems.Thm_QuantumParallelRepetition_dSVDensityRationalPhysicalProjector_pos
import Theorems.Thm_QuantumParallelRepetition_dSVDensityRationalPhysicalProjector_complement_pos
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

open WithLp
open scoped BigOperators ComplexOrder Kronecker MatrixOrder
  Matrix.Norms.L2Operator InnerProductSpace

theorem pureDensityMatrix_trace_mul
    {d : Type*} [Fintype d] [DecidableEq d]
    (z : EuclideanSpace ℂ d) (hz : ‖z‖ = 1)
    (E : Matrix d d ℂ) :
    (Matrix.trace ((pureDensityMatrix z hz).matrix * E)).re =
      quadraticExpectation
        (Matrix.toEuclideanCLM (n := d) (𝕜 := ℂ) E) z := by
  unfold pureDensityMatrix quadraticExpectation
  congr 1
  calc
    Matrix.trace
        (Matrix.vecMulVec (ofLp z) (star (ofLp z)) * E) =
      Matrix.trace
        (E * Matrix.vecMulVec (ofLp z) (star (ofLp z))) :=
          Matrix.trace_mul_comm _ _
    _ = E.mulVec (ofLp z) ⬝ᵥ star (ofLp z) := by
      rw [Matrix.mul_vecMulVec, Matrix.trace_vecMulVec]
    _ = ⟪z, Matrix.toEuclideanCLM
          (n := d) (𝕜 := ℂ) E z⟫_ℂ := by
      rw [EuclideanSpace.inner_eq_star_dotProduct]
      rfl

end

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

theorem spectralAtom_mul
    {d : Type*} [Fintype d] [DecidableEq d]
    (F : Matrix d d ℂ) (hF : F.PosSemidef)
    (i j : d) :
    positiveMatrixSpectralAtom F hF i *
      positiveMatrixSpectralAtom F hF j =
        if i = j then positiveMatrixSpectralAtom F hF i else 0 := by
  classical
  let e := Unitary.conjStarAlgAut ℝ (Matrix d d ℂ)
    hF.isHermitian.eigenvectorUnitary
  change
    e (Matrix.diagonal (Pi.single i (1 : ℂ))) *
      e (Matrix.diagonal (Pi.single j (1 : ℂ))) =
        if i = j then
          e (Matrix.diagonal (Pi.single i (1 : ℂ)))
        else
          0
  by_cases hij : i = j
  · subst j
    simp only [ite_true]
    rw [← map_mul, Matrix.diagonal_mul_diagonal]
    congr 1
    ext k l
    simp only [Matrix.diagonal_apply, Pi.single_apply]
    split_ifs <;> simp_all
  · simp only [hij, ite_false]
    rw [← map_mul, Matrix.diagonal_mul_diagonal, ← map_zero e]
    congr 1
    ext k l
    by_cases hik : k = i
    · subst k
      simp [Matrix.diagonal_apply, Pi.single_apply, hij]
    · simp [Matrix.diagonal_apply, Pi.single_apply, hik]

theorem spectralAtomSum_mul_self
    {d : Type*} [Fintype d] [DecidableEq d]
    (F : Matrix d d ℂ) (hF : F.PosSemidef)
    (s : Finset d) :
    (∑ i ∈ s, positiveMatrixSpectralAtom F hF i) *
      (∑ i ∈ s, positiveMatrixSpectralAtom F hF i) =
        ∑ i ∈ s, positiveMatrixSpectralAtom F hF i := by
  classical
  calc
    (∑ i ∈ s, positiveMatrixSpectralAtom F hF i) *
        (∑ i ∈ s, positiveMatrixSpectralAtom F hF i) =
      ∑ i ∈ s, ∑ j ∈ s,
        positiveMatrixSpectralAtom F hF i *
          positiveMatrixSpectralAtom F hF j := by
            simp only [Matrix.sum_mul, Matrix.mul_sum]
            rw [Finset.sum_comm]
    _ = ∑ i ∈ s, positiveMatrixSpectralAtom F hF i := by
      apply Finset.sum_congr rfl
      intro i hi
      simp [spectralAtom_mul, hi]

theorem rectangularMatrix_norm_sq
    {d e : Type*}
    [Fintype d] [Fintype e] [DecidableEq d]
    (K : Matrix e d ℂ) (z : EuclideanSpace ℂ d) :
    ‖toLp 2 (K.mulVec (ofLp z))‖ ^ 2 =
      quadraticExpectation
        (Matrix.toEuclideanCLM (n := d) (𝕜 := ℂ)
          (K.conjTranspose * K)) z := by
  calc
    ‖toLp 2 (K.mulVec (ofLp z))‖ ^ 2 =
        (inner ℂ (toLp 2 (K.mulVec (ofLp z)))
          (toLp 2 (K.mulVec (ofLp z)))).re :=
            norm_sq_eq_re_inner (𝕜 := ℂ)
              (toLp 2 (K.mulVec (ofLp z)))
    _ = (star (K.mulVec (ofLp z)) ⬝ᵥ
          K.mulVec (ofLp z)).re := by
      rw [EuclideanSpace.inner_eq_star_dotProduct]
      change
        (K.mulVec (ofLp z) ⬝ᵥ
          star (K.mulVec (ofLp z))).re = _
      rw [dotProduct_comm]
    _ = (star (ofLp z) ⬝ᵥ
        (K.conjTranspose * K).mulVec (ofLp z)).re := by
          rw [Matrix.star_mulVec, ← Matrix.dotProduct_mulVec,
            Matrix.mulVec_mulVec]
    _ = quadraticExpectation
        (Matrix.toEuclideanCLM (n := d) (𝕜 := ℂ)
          (K.conjTranspose * K)) z := by
      unfold quadraticExpectation
      rw [EuclideanSpace.inner_eq_star_dotProduct]
      change
        (star (ofLp z) ⬝ᵥ
          (K.conjTranspose * K).mulVec (ofLp z)).re =
        ((K.conjTranspose * K).mulVec (ofLp z) ⬝ᵥ
          star (ofLp z)).re
      rw [dotProduct_comm]

theorem coherentBinaryJointOutcome_norm_sq
    {d e : Type*}
    [Fintype d] [Fintype e] [DecidableEq d] [DecidableEq e]
    (P : POVM Bool d) (Q : POVM Bool e)
    (hP : ∀ c : Bool, P.operator c * P.operator c = P.operator c)
    (hQ : ∀ c : Bool, Q.operator c * Q.operator c = Q.operator c)
    (z : EuclideanSpace ℂ (d × e)) (hz : ‖z‖ = 1)
    (a b : Bool) :
    ‖coherentBinaryJointOutcome P Q z a b‖ ^ 2 =
      (Matrix.trace
        ((pureDensityMatrix z hz).matrix *
          (P.operator a ⊗ₖ Q.operator b))).re := by
  let K : Matrix (d × e) (d × e) ℂ :=
    P.operator a ⊗ₖ Q.operator b
  have hgram : K.conjTranspose * K = K := by
    dsimp [K]
    rw [Matrix.conjTranspose_kronecker,
      (P.positive a).isHermitian.eq,
      (Q.positive b).isHermitian.eq,
      ← Matrix.mul_kronecker_mul,
      hP a, hQ b]
  calc
    ‖coherentBinaryJointOutcome P Q z a b‖ ^ 2 =
      quadraticExpectation
        (Matrix.toEuclideanCLM (n := d × e) (𝕜 := ℂ)
          (K.conjTranspose * K)) z :=
        rectangularMatrix_norm_sq K z
    _ = quadraticExpectation
        (Matrix.toEuclideanCLM (n := d × e) (𝕜 := ℂ) K) z := by
      rw [hgram]
    _ = (Matrix.trace ((pureDensityMatrix z hz).matrix * K)).re :=
      (pureDensityMatrix_trace_mul z hz K).symm

theorem spectralAtomOverlap_sum_left
    {d : Type*} [Fintype d] [DecidableEq d]
    (F G : Matrix d d ℂ)
    (hF : F.PosSemidef) (hG : G.PosSemidef)
    (j : d) :
    (∑ i : d, spectralAtomOverlap F G hF hG i j) = 1 := by
  classical
  calc
    (∑ i : d, spectralAtomOverlap F G hF hG i j) =
        (Matrix.trace
          ((∑ i : d, positiveMatrixSpectralAtom F hF i) *
            positiveMatrixSpectralAtom G hG j)).re := by
              simp only [spectralAtomOverlap,
                Matrix.sum_mul, Matrix.trace_sum, Complex.re_sum]
    _ = (Matrix.trace (positiveMatrixSpectralAtom G hG j)).re := by
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

theorem sharedThresholdResourceRaw_norm_sq
    {κ d : Type*} [Fintype κ] [Fintype d]
    [DecidableEq κ] [DecidableEq d]
    (τ : κ → ℝ) :
    ‖sharedThresholdResourceRaw (d := d) τ‖ ^ 2 =
      (Fintype.card d : ℝ) * ∑ k : κ, τ k ^ 2 := by
  classical
  have hterm (k l : κ) (i j : d) :
      ‖if k = l ∧ i = j then (τ k : ℂ) else 0‖ ^ 2 =
        if k = l then if i = j then τ k ^ 2 else 0 else 0 := by
    split_ifs <;>
      simp_all [Complex.norm_real, Real.norm_eq_abs, sq_abs]
  rw [EuclideanSpace.norm_sq_eq, Fintype.sum_prod_type]
  simp_rw [Fintype.sum_sigma]
  change
    (∑ k : κ, ∑ i : d, ∑ l : κ, ∑ j : d,
      ‖if k = l ∧ i = j then (τ k : ℂ) else 0‖ ^ 2) =
        (Fintype.card d : ℝ) * ∑ k : κ, τ k ^ 2
  simp_rw [hterm]
  simp [Finset.mul_sum]

theorem sharedThresholdResourceRaw_ne_zero
    {κ d : Type*} [Fintype κ] [Fintype d]
    [DecidableEq κ] [DecidableEq d]
    (τ : κ → ℝ) (k : κ) (i : d) (hk : τ k ≠ 0) :
    sharedThresholdResourceRaw (d := d) τ ≠ 0 := by
  intro hzero
  have hentry := congrArg
    (fun z : EuclideanSpace ℂ
        ((Σ _ : κ, d) × (Σ _ : κ, d)) =>
      z (⟨k, i⟩, ⟨k, i⟩)) hzero
  have hcast : (τ k : ℂ) = 0 := by
    simpa [sharedThresholdResourceRaw] using hentry
  exact hk (by exact_mod_cast hcast)

theorem sharedThresholdResource_norm
    {κ d : Type*} [Fintype κ] [Fintype d]
    [DecidableEq κ] [DecidableEq d]
    (τ : κ → ℝ) (k : κ) (i : d) (hk : τ k ≠ 0) :
    ‖sharedThresholdResource (d := d) τ‖ = 1 := by
  have hnorm : ‖sharedThresholdResourceRaw (d := d) τ‖ ≠ 0 :=
    norm_ne_zero_iff.mpr
      (sharedThresholdResourceRaw_ne_zero τ k i hk)
  rw [sharedThresholdResource, norm_smul, Real.norm_eq_abs,
    abs_of_nonneg (inv_nonneg.mpr (norm_nonneg _)),
    inv_mul_cancel₀ hnorm]

theorem transposePOVM_projective
    {ι d : Type*} [Fintype ι] [Fintype d] [DecidableEq d]
    (P : POVM ι d)
    (hP : ∀ b : ι, P.operator b * P.operator b = P.operator b)
    (b : ι) :
    (transposePOVM P).operator b *
      (transposePOVM P).operator b =
        (transposePOVM P).operator b := by
  change
    (P.operator b).transpose * (P.operator b).transpose =
      (P.operator b).transpose
  rw [← Matrix.transpose_mul, hP b]

theorem sharedThresholdResourceRaw_eq_vec
    {κ d : Type*} [Fintype κ] [Fintype d]
    [DecidableEq κ] [DecidableEq d]
    (τ : κ → ℝ) :
    sharedThresholdResourceRaw (d := d) τ =
      toLp 2 (Matrix.vec
        (Matrix.diagonal (fun q : Σ _ : κ, d => (τ q.1 : ℂ)))) := by
  ext ⟨⟨k, i⟩, ⟨l, j⟩⟩
  by_cases h : k = l
  · subst l
    by_cases hij : i = j
    · subst j
      simp [sharedThresholdResourceRaw, Matrix.vec]
    · simp [sharedThresholdResourceRaw,
        Matrix.vec, hij, Ne.symm hij]
  · simp [sharedThresholdResourceRaw,
      Matrix.vec, h, Ne.symm h]

theorem sharedThresholdResourceRaw_local_action
    {κ d : Type*} [Fintype κ] [Fintype d]
    [DecidableEq κ] [DecidableEq d]
    (τ : κ → ℝ)
    (A B : Matrix (Σ _ : κ, d) (Σ _ : κ, d) ℂ) :
    toLp 2
      ((A ⊗ₖ B.transpose).mulVec
        (ofLp (sharedThresholdResourceRaw (d := d) τ))) =
      toLp 2
        (Matrix.vec
          (B.transpose *
            Matrix.diagonal
              (fun q : Σ _ : κ, d => (τ q.1 : ℂ)) * A.transpose)) := by
  rw [sharedThresholdResourceRaw_eq_vec]
  apply WithLp.ofLp_injective
  change
    (A ⊗ₖ B.transpose).mulVec
      (Matrix.vec
        (Matrix.diagonal
          (fun q : Σ _ : κ, d => (τ q.1 : ℂ)))) =
      Matrix.vec
        (B.transpose *
          Matrix.diagonal
            (fun q : Σ _ : κ, d => (τ q.1 : ℂ)) * A.transpose)
  exact Matrix.kronecker_mulVec_vec
    B.transpose
    (Matrix.diagonal
      (fun q : Σ _ : κ, d => (τ q.1 : ℂ)))
    A

theorem matrixVectorization_norm_sq
    {d e : Type*} [Fintype d] [Fintype e]
    (K : Matrix d e ℂ) :
    ‖toLp 2 (Matrix.vec K)‖ ^ 2 =
      (Matrix.trace (K.conjTranspose * K)).re := by
  calc
    ‖toLp 2 (Matrix.vec K)‖ ^ 2 =
        (inner ℂ (toLp 2 (Matrix.vec K))
          (toLp 2 (Matrix.vec K))).re :=
            norm_sq_eq_re_inner (𝕜 := ℂ)
              (toLp 2 (Matrix.vec K))
    _ = (star (Matrix.vec K) ⬝ᵥ Matrix.vec K).re := by
      rw [EuclideanSpace.inner_eq_star_dotProduct]
      change
        (Matrix.vec K ⬝ᵥ star (Matrix.vec K)).re =
          (star (Matrix.vec K) ⬝ᵥ Matrix.vec K).re
      rw [dotProduct_comm]
    _ = (Matrix.trace (K.conjTranspose * K)).re := by
      rw [Matrix.star_vec_dotProduct_vec]

theorem sharedThresholdDiagonal_eq_block
    {κ d : Type*} [Fintype κ] [Fintype d]
    [DecidableEq κ] [DecidableEq d]
    (τ : κ → ℝ) :
    Matrix.diagonal
        (fun q : Σ _ : κ, d => (τ q.1 : ℂ)) =
      Matrix.blockDiagonal' fun k : κ =>
        (τ k : ℂ) • (1 : Matrix d d ℂ) := by
  classical
  ext ⟨k, i⟩ ⟨l, j⟩
  by_cases h : k = l
  · subst l
    by_cases hij : i = j
    · subst j
      simp [Matrix.blockDiagonal'_apply]
    · simp [Matrix.blockDiagonal'_apply, hij]
  · simp [Matrix.blockDiagonal'_apply, h]

theorem sharedThresholdResourceRaw_block_action
    {κ d : Type*} [Fintype κ] [Fintype d]
    [DecidableEq κ] [DecidableEq d]
    (τ : κ → ℝ) (A B : κ → Matrix d d ℂ) :
    toLp 2
      ((Matrix.blockDiagonal' A ⊗ₖ
          (Matrix.blockDiagonal' B).transpose).mulVec
        (ofLp (sharedThresholdResourceRaw (d := d) τ))) =
      toLp 2
        (Matrix.vec
          ((Matrix.blockDiagonal' fun k : κ =>
              (τ k : ℂ) • (A k * B k)).transpose)) := by
  rw [sharedThresholdResourceRaw_local_action]
  congr 2
  rw [sharedThresholdDiagonal_eq_block]
  simp only [Matrix.blockDiagonal'_transpose]
  rw [← Matrix.blockDiagonal'_mul,
    ← Matrix.blockDiagonal'_mul]
  congr 1
  funext k
  simp [Matrix.transpose_mul]

theorem projectorProduct_hilbertSchmidt_trace
    {d : Type*} [Fintype d] [DecidableEq d]
    (A B : Matrix d d ℂ)
    (hA : A.PosSemidef) (hB : B.PosSemidef)
    (hAA : A * A = A) (hBB : B * B = B) :
    Matrix.trace ((A * B).conjTranspose * (A * B)) =
      Matrix.trace (A * B) := by
  rw [Matrix.conjTranspose_mul,
    hA.isHermitian.eq, hB.isHermitian.eq]
  calc
    Matrix.trace ((B * A) * (A * B)) =
        Matrix.trace (B * (A * A) * B) := by
          congr 1
          simp [Matrix.mul_assoc]
    _ = Matrix.trace (B * A * B) := by rw [hAA]
    _ = Matrix.trace (B * B * A) := by
          rw [Matrix.trace_mul_cycle]
    _ = Matrix.trace (B * A) := by rw [hBB]
    _ = Matrix.trace (A * B) := Matrix.trace_mul_comm B A

theorem weightedProjectorProduct_hilbertSchmidt_trace
    {d : Type*} [Fintype d] [DecidableEq d]
    (t : ℝ) (A B : Matrix d d ℂ)
    (hA : A.PosSemidef) (hB : B.PosSemidef)
    (hAA : A * A = A) (hBB : B * B = B) :
    (Matrix.trace
      (((t : ℂ) • (A * B)).conjTranspose *
        ((t : ℂ) • (A * B)))).re =
      t ^ 2 * (Matrix.trace (A * B)).re := by
  have hgram := projectorProduct_hilbertSchmidt_trace
    A B hA hB hAA hBB
  rw [Matrix.conjTranspose_smul,
    Matrix.smul_mul, Matrix.mul_smul,
    Matrix.trace_smul, Matrix.trace_smul, hgram]
  simp [Complex.mul_re, pow_two, mul_assoc]

theorem sharedThresholdResourceRaw_block_action_norm_sq
    {κ d : Type*} [Fintype κ] [Fintype d]
    [DecidableEq κ] [DecidableEq d]
    (τ : κ → ℝ)
    (A B : κ → Matrix d d ℂ)
    (hA : ∀ k, (A k).PosSemidef)
    (hB : ∀ k, (B k).PosSemidef)
    (hAA : ∀ k, A k * A k = A k)
    (hBB : ∀ k, B k * B k = B k) :
    ‖toLp 2
      ((Matrix.blockDiagonal' A ⊗ₖ
          (Matrix.blockDiagonal' B).transpose).mulVec
        (ofLp (sharedThresholdResourceRaw (d := d) τ)))‖ ^ 2 =
      ∑ k : κ, τ k ^ 2 *
        (Matrix.trace (A k * B k)).re := by
  rw [sharedThresholdResourceRaw_block_action,
    matrixVectorization_norm_sq]
  let K : Matrix (Σ _ : κ, d) (Σ _ : κ, d) ℂ :=
    Matrix.blockDiagonal' fun k : κ =>
      (τ k : ℂ) • (A k * B k)
  change
    (Matrix.trace (K.transpose.conjTranspose * K.transpose)).re =
      ∑ k : κ, τ k ^ 2 *
        (Matrix.trace (A k * B k)).re
  rw [Matrix.transpose_conjTranspose,
    ← Matrix.conjTranspose_transpose,
    Matrix.trace_transpose_mul]
  change
    (Matrix.trace
      ((Matrix.blockDiagonal' fun k : κ =>
        (τ k : ℂ) • (A k * B k)).conjTranspose *
        (Matrix.blockDiagonal' fun k : κ =>
          (τ k : ℂ) • (A k * B k)))).re = _
  rw [Matrix.blockDiagonal'_conjTranspose,
    ← Matrix.blockDiagonal'_mul,
    Matrix.trace_blockDiagonal', Complex.re_sum]
  apply Finset.sum_congr rfl
  intro k _
  exact weightedProjectorProduct_hilbertSchmidt_trace
    (τ k) (A k) (B k) (hA k) (hB k) (hAA k) (hBB k)

theorem sharedThresholdResource_block_action_norm_sq
    {κ d : Type*} [Fintype κ] [Fintype d]
    [DecidableEq κ] [DecidableEq d]
    (τ : κ → ℝ)
    (A B : κ → Matrix d d ℂ)
    (hA : ∀ k, (A k).PosSemidef)
    (hB : ∀ k, (B k).PosSemidef)
    (hAA : ∀ k, A k * A k = A k)
    (hBB : ∀ k, B k * B k = B k) :
    ‖toLp 2
      ((Matrix.blockDiagonal' A ⊗ₖ
          (Matrix.blockDiagonal' B).transpose).mulVec
        (ofLp (sharedThresholdResource (d := d) τ)))‖ ^ 2 =
      (∑ k : κ, τ k ^ 2 *
        (Matrix.trace (A k * B k)).re) /
        ((Fintype.card d : ℝ) * ∑ k : κ, τ k ^ 2) := by
  let M : Matrix
      ((Σ _ : κ, d) × (Σ _ : κ, d))
      ((Σ _ : κ, d) × (Σ _ : κ, d)) ℂ :=
    Matrix.blockDiagonal' A ⊗ₖ
      (Matrix.blockDiagonal' B).transpose
  change
    ‖Matrix.toEuclideanLin M
      (sharedThresholdResource (d := d) τ)‖ ^ 2 = _
  rw [sharedThresholdResource,
    (Matrix.toEuclideanLin M).map_smul_of_tower,
    norm_smul, Real.norm_eq_abs,
    abs_of_nonneg (inv_nonneg.mpr (norm_nonneg _)),
    mul_pow, inv_pow]
  change
    (‖sharedThresholdResourceRaw (d := d) τ‖ ^ 2)⁻¹ *
      ‖toLp 2
        ((Matrix.blockDiagonal' A ⊗ₖ
            (Matrix.blockDiagonal' B).transpose).mulVec
          (ofLp (sharedThresholdResourceRaw (d := d) τ)))‖ ^ 2 = _
  rw [sharedThresholdResourceRaw_norm_sq,
    sharedThresholdResourceRaw_block_action_norm_sq
      τ A B hA hB hAA hBB]
  simp [div_eq_mul_inv, mul_comm]

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

theorem spectralPartitionPOVM_projective
    {κ d : Type*}
    [Fintype κ] [Fintype d] [DecidableEq κ] [DecidableEq d]
    (F : Matrix d d ℂ) (hF : F.PosSemidef)
    (bin : d → κ) (k : κ) :
    (spectralPartitionPOVM F hF bin).operator k *
      (spectralPartitionPOVM F hF bin).operator k =
        (spectralPartitionPOVM F hF bin).operator k := by
  exact spectralAtomSum_mul_self F hF
    (Finset.univ.filter (fun i : d => bin i = k))

end

noncomputable section

open WithLp
open scoped BigOperators Kronecker ComplexOrder MatrixOrder

set_option backward.isDefEq.respectTransparency false
set_option maxHeartbeats 3000000
set_option maxRecDepth 2048

theorem spectralPartitionPOVM_trace_eq_atom_count
    {κ d : Type*}
    [Fintype κ] [Fintype d] [DecidableEq κ] [DecidableEq d]
    (F : Matrix d d ℂ) (hF : F.PosSemidef)
    (bin : d → κ) (k : κ) :
    (Matrix.trace
      ((spectralPartitionPOVM F hF bin).operator k)).re =
      ∑ i : d, if bin i = k then (1 : ℝ) else 0 := by
  classical
  simp [spectralPartitionPOVM,
    Matrix.trace_sum, spectralAtom_trace]

theorem spectralPartitionPOVM_trace_mul_eq_atom_overlap
    {κ d : Type*}
    [Fintype κ] [Fintype d] [DecidableEq κ] [DecidableEq d]
    (F G : Matrix d d ℂ)
    (hF : F.PosSemidef) (hG : G.PosSemidef)
    (binF binG : d → κ) (k : κ) :
    (Matrix.trace
      ((spectralPartitionPOVM F hF binF).operator k *
        (spectralPartitionPOVM G hG binG).operator k)).re =
      ∑ i ∈ (Finset.univ.filter fun i : d => binF i = k),
        ∑ j ∈ (Finset.univ.filter fun j : d => binG j = k),
          spectralAtomOverlap F G hF hG i j := by
  classical
  simp [spectralPartitionPOVM,
    spectralAtomOverlap,
    Matrix.sum_mul, Matrix.mul_sum,
    Matrix.trace_sum]
  rw [Finset.sum_comm]

theorem spectralPartitionPOVM_weighted_trace_deficit_eq_mismatch
    {κ d : Type*}
    [Fintype κ] [Fintype d] [DecidableEq κ] [DecidableEq d]
    (F G : Matrix d d ℂ)
    (hF : F.PosSemidef) (hG : G.PosSemidef)
    (binF binG : d → κ)
    (τ : κ → ℝ) :
    (∑ k : κ, τ k ^ 2 *
        (Matrix.trace
          ((spectralPartitionPOVM G hG binG).operator k)).re) -
      (∑ k : κ, τ k ^ 2 *
        (Matrix.trace
          ((spectralPartitionPOVM F hF binF).operator k *
            (spectralPartitionPOVM G hG binG).operator k)).re) =
      ∑ i : d, ∑ j : d,
        if binF i = binG j then 0
        else τ (binG j) ^ 2 *
          spectralAtomOverlap F G hF hG i j := by
  classical
  let w : d → d → ℝ :=
    spectralAtomOverlap F G hF hG
  have hQ :
      (∑ k : κ, τ k ^ 2 *
        (Matrix.trace
          ((spectralPartitionPOVM G hG binG).operator k)).re) =
        ∑ j : d, τ (binG j) ^ 2 := by
    simp_rw [spectralPartitionPOVM_trace_eq_atom_count]
    calc
      (∑ k : κ, τ k ^ 2 *
        (∑ j : d, if binG j = k then (1 : ℝ) else 0)) =
          ∑ k : κ, ∑ j : d,
            if binG j = k then τ k ^ 2 else 0 := by
              apply Finset.sum_congr rfl
              intro k _
              rw [Finset.mul_sum]
              apply Finset.sum_congr rfl
              intro j _
              split_ifs <;> simp
      _ = ∑ j : d, ∑ k : κ,
          if binG j = k then τ k ^ 2 else 0 :=
            Finset.sum_comm
      _ = ∑ j : d, τ (binG j) ^ 2 := by
            simp
  have hPQ :
      (∑ k : κ, τ k ^ 2 *
        (Matrix.trace
          ((spectralPartitionPOVM F hF binF).operator k *
            (spectralPartitionPOVM G hG binG).operator k)).re) =
        ∑ i : d, ∑ j : d,
          if binF i = binG j then
            τ (binG j) ^ 2 * w i j
          else 0 := by
    have hsingle (k : κ) :
        τ k ^ 2 *
          (Matrix.trace
            ((spectralPartitionPOVM F hF binF).operator k *
              (spectralPartitionPOVM G hG binG).operator k)).re =
          ∑ i : d, ∑ j : d,
            if binF i = k ∧ binG j = k then
              τ k ^ 2 * w i j
            else 0 := by
      rw [spectralPartitionPOVM_trace_mul_eq_atom_overlap]
      dsimp [w]
      simp only [Finset.sum_filter, Finset.mul_sum,
        mul_ite, mul_zero]
      apply Finset.sum_congr rfl
      intro i _
      by_cases hi : binF i = k
      · simp [hi]
      · simp [hi]
    simp_rw [hsingle]
    calc
      (∑ k : κ, ∑ i : d, ∑ j : d,
        if binF i = k ∧ binG j = k then
          τ k ^ 2 * w i j
        else 0) =
          ∑ i : d, ∑ j : d, ∑ k : κ,
            if binF i = k ∧ binG j = k then
              τ k ^ 2 * w i j
            else 0 := by
              rw [Finset.sum_comm]
              apply Finset.sum_congr rfl
              intro i _
              rw [Finset.sum_comm]
      _ = ∑ i : d, ∑ j : d,
          if binF i = binG j then
            τ (binG j) ^ 2 * w i j
          else 0 := by
            apply Finset.sum_congr rfl
            intro i _
            apply Finset.sum_congr rfl
            intro j _
            have reindex (k : κ) :
                (if binF i = k ∧ binG j = k then
                  τ k ^ 2 * w i j
                else 0) =
                  if binG j = k then
                    if binF i = binG j then
                      τ (binG j) ^ 2 * w i j
                    else 0
                  else 0 := by
              by_cases hk : binG j = k
              · subst k
                simp
              · simp [hk]
            simp_rw [reindex]
            simp
  rw [hQ, hPQ]
  have hcolumn : ∀ j : d, (∑ i : d, w i j) = 1 :=
    spectralAtomOverlap_sum_left F G hF hG
  have hfirst :
      (∑ j : d, τ (binG j) ^ 2) =
        ∑ i : d, ∑ j : d,
          τ (binG j) ^ 2 * w i j := by
    calc
      (∑ j : d, τ (binG j) ^ 2) =
          ∑ j : d,
            τ (binG j) ^ 2 * (∑ i : d, w i j) := by
              simp_rw [hcolumn]
              simp
      _ = ∑ i : d, ∑ j : d,
          τ (binG j) ^ 2 * w i j := by
            simp_rw [Finset.mul_sum]
            exact Finset.sum_comm
  rw [hfirst, ← Finset.sum_sub_distrib]
  apply Finset.sum_congr rfl
  intro i _
  rw [← Finset.sum_sub_distrib]
  apply Finset.sum_congr rfl
  intro j _
  split_ifs <;> simp [w]

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

open WithLp
open scoped BigOperators Kronecker ComplexOrder MatrixOrder

theorem dSVGlobalProjectorBinaryPOVM_projective
    {κ d : Type*} [Fintype κ] [Fintype d]
    [DecidableEq κ] [DecidableEq d]
    (P : κ → Matrix d d ℂ)
    (positive : ∀ k, (P k).PosSemidef)
    (complement : ∀ k, (1 - P k).PosSemidef)
    (projective : ∀ k, P k * P k = P k)
    (b : Bool) :
    (dSVGlobalProjectorBinaryPOVM
      P positive complement).operator b *
      (dSVGlobalProjectorBinaryPOVM
        P positive complement).operator b =
      (dSVGlobalProjectorBinaryPOVM
        P positive complement).operator b := by
  change
    Matrix.blockDiagonal' (fun k => if b then P k else 1 - P k) *
      Matrix.blockDiagonal' (fun k => if b then P k else 1 - P k) =
      Matrix.blockDiagonal' (fun k => if b then P k else 1 - P k)
  rw [← Matrix.blockDiagonal'_mul]
  apply congrArg (fun A : κ → Matrix d d ℂ => Matrix.blockDiagonal' A)
  funext k
  cases b
  · simp [Matrix.mul_sub, Matrix.sub_mul, projective k]
  · exact projective k

theorem dSVActualGlobalMixedBornSuccess_eq
    {κ d : Type*} [Fintype κ] [Fintype d]
    [DecidableEq κ] [DecidableEq d]
    (τ : κ → ℝ) (k₀ : κ) (i₀ : d) (nonzero : τ k₀ ≠ 0)
    (P R : κ → Matrix d d ℂ)
    (hP : ∀ k, (P k).PosSemidef)
    (hPc : ∀ k, (1 - P k).PosSemidef)
    (hR : ∀ k, (R k).PosSemidef)
    (hRc : ∀ k, (1 - R k).PosSemidef)
    (hPP : ∀ k, P k * P k = P k)
    (hRR : ∀ k, R k * R k = R k) :
    binaryJointSuccessProbability
      (pureDensityMatrix
        (sharedThresholdResource (d := d) τ)
        (sharedThresholdResource_norm τ k₀ i₀ nonzero))
      (dSVGlobalProjectorBinaryPOVM P hP hPc)
      (transposePOVM
        (dSVGlobalProjectorBinaryPOVM R hR hRc)) =
      (∑ k : κ, τ k ^ 2 * (Matrix.trace (P k * R k)).re) /
        ((Fintype.card d : ℝ) * ∑ k : κ, τ k ^ 2) := by
  let A := dSVGlobalProjectorBinaryPOVM P hP hPc
  let B := transposePOVM
    (dSVGlobalProjectorBinaryPOVM R hR hRc)
  let z := sharedThresholdResource (d := d) τ
  have hz : ‖z‖ = 1 :=
    sharedThresholdResource_norm τ k₀ i₀ nonzero
  have hA : ∀ b : Bool, A.operator b * A.operator b = A.operator b :=
    dSVGlobalProjectorBinaryPOVM_projective
      P hP hPc hPP
  have hB : ∀ b : Bool, B.operator b * B.operator b = B.operator b :=
    transposePOVM_projective
      (dSVGlobalProjectorBinaryPOVM R hR hRc)
      (dSVGlobalProjectorBinaryPOVM_projective
        R hR hRc hRR)
  change binaryJointSuccessProbability
    (pureDensityMatrix z hz) A B = _
  unfold binaryJointSuccessProbability
    binaryBornProbability
  rw [← coherentBinaryJointOutcome_norm_sq
    A B hA hB z hz true true]
  change
    ‖toLp 2
      ((Matrix.blockDiagonal' P ⊗ₖ
        (Matrix.blockDiagonal' R).transpose).mulVec
          (ofLp (sharedThresholdResource (d := d) τ)))‖ ^ 2 = _
  exact sharedThresholdResource_block_action_norm_sq
    τ P R hP hR hPP hRR

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
open scoped BigOperators Kronecker ComplexOrder MatrixOrder

theorem dSVUniformDensityThresholdShared_mixedBorn_eq
    {N d : ℕ} (grid : 0 < N) (dimension : 0 < d)
    (P R : Fin N → Matrix (Fin d) (Fin d) ℂ)
    (hP : ∀ k, (P k).PosSemidef)
    (hPc : ∀ k, (1 - P k).PosSemidef)
    (hR : ∀ k, (R k).PosSemidef)
    (hRc : ∀ k, (1 - R k).PosSemidef)
    (hPP : ∀ k, P k * P k = P k)
    (hRR : ∀ k, R k * R k = R k) :
    binaryJointSuccessProbability
      (dSVUniformDensityThresholdSharedDensity
        grid dimension)
      (dSVGlobalProjectorBinaryPOVM P hP hPc)
      (transposePOVM
        (dSVGlobalProjectorBinaryPOVM R hR hRc)) =
      (∑ k : Fin N, (Matrix.trace (P k * R k)).re) /
        ((d : ℝ) * (N : ℝ)) := by
  simpa [dSVUniformDensityThresholdSharedDensity,
    dSVUniformDensityThresholdSharedState] using
    dSVActualGlobalMixedBornSuccess_eq
      (fun _ : Fin N => (1 : ℝ))
      ⟨0, grid⟩ ⟨0, dimension⟩ (by norm_num)
      P R hP hPc hR hRc hPP hRR

theorem dSVUniformDensityThresholdShared_diagonalBorn_eq
    {N d : ℕ} (grid : 0 < N) (dimension : 0 < d)
    (P : Fin N → Matrix (Fin d) (Fin d) ℂ)
    (hP : ∀ k, (P k).PosSemidef)
    (hPc : ∀ k, (1 - P k).PosSemidef)
    (hPP : ∀ k, P k * P k = P k) :
    binaryJointSuccessProbability
      (dSVUniformDensityThresholdSharedDensity
        grid dimension)
      (dSVGlobalProjectorBinaryPOVM P hP hPc)
      (transposePOVM
        (dSVGlobalProjectorBinaryPOVM P hP hPc)) =
      (∑ k : Fin N, (Matrix.trace (P k)).re) /
        ((d : ℝ) * (N : ℝ)) := by
  rw [dSVUniformDensityThresholdShared_mixedBorn_eq
    grid dimension P P hP hPc hP hPc hPP hPP]
  simp_rw [hPP]

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
open scoped BigOperators Kronecker ComplexOrder MatrixOrder

set_option backward.isDefEq.respectTransparency false
set_option maxHeartbeats 12000000
set_option maxRecDepth 4096

theorem dSVUniformDensityBinarySpectral_false_eq_complement
    {d : Type*} [Fintype d] [DecidableEq d]
    (F : Matrix d d ℂ) (hF : F.PosSemidef)
    (bin : d → Bool) :
    (spectralPartitionPOVM F hF bin).operator false =
      1 - (spectralPartitionPOVM F hF bin).operator true := by
  have complete := (spectralPartitionPOVM F hF bin).complete
  rw [Fintype.sum_bool] at complete
  rw [add_comm] at complete
  exact eq_sub_of_add_eq complete

end

noncomputable section

open WithLp
open scoped BigOperators ComplexOrder MatrixOrder

attribute [local instance] Classical.propDecidable

theorem dSVDensityRationalProjectiveThresholdPOVM_projective
    {ι : Type*} [Fintype ι] [DecidableEq ι]
    (w : ℝ) (N : ℕ) (k : Fin N)
    (F : Matrix ι ι ℂ) (positive : F.PosSemidef) (outcome : Bool) :
    (dSVDensityRationalProjectiveThresholdPOVM
      w N k F positive).operator outcome *
      (dSVDensityRationalProjectiveThresholdPOVM
        w N k F positive).operator outcome =
      (dSVDensityRationalProjectiveThresholdPOVM
        w N k F positive).operator outcome := by
  exact spectralPartitionPOVM_projective F positive
    (fun i : ι => dSVDensityRationalProjectiveThresholdBin
      w N k (positive.isHermitian.eigenvalues i)) outcome

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
open scoped BigOperators Kronecker ComplexOrder MatrixOrder

attribute [local instance] Classical.propDecidable

theorem dSVDensityRationalPhysicalProjector_projective
    {d N : ℕ} (w : ℝ)
    (ξ : BipartiteUnitVector d) (k : Fin N) :
    dSVDensityRationalPhysicalProjector w ξ k *
        dSVDensityRationalPhysicalProjector w ξ k =
      dSVDensityRationalPhysicalProjector w ξ k := by
  exact dSVDensityRationalProjectiveThresholdPOVM_projective
    w N k (dSVSoftBobLeftReducedDensity ξ)
    (dSVSoftBobLeftReducedDensity_posSemidef ξ) true

theorem dSVDensityRationalPhysicalProjectorSquare_eq_atomMismatch
    {d N : ℕ} (w : ℝ)
    (ξ ζ : BipartiteUnitVector d) (k : Fin N) :
    (Matrix.trace
      ((dSVDensityRationalPhysicalProjector w ξ k -
        dSVDensityRationalPhysicalProjector w ζ k) *
       (dSVDensityRationalPhysicalProjector w ξ k -
        dSVDensityRationalPhysicalProjector w ζ k))).re =
      ∑ i : Fin d, ∑ j : Fin d,
        if dSVDensityRationalProjectiveThresholdBin w N k
              ((dSVSoftBobLeftReducedDensity_posSemidef
                ξ).isHermitian.eigenvalues i) =
            dSVDensityRationalProjectiveThresholdBin w N k
              ((dSVSoftBobLeftReducedDensity_posSemidef
                ζ).isHermitian.eigenvalues j)
        then 0
        else spectralAtomOverlap
          (dSVSoftBobLeftReducedDensity ξ)
          (dSVSoftBobLeftReducedDensity ζ)
          (dSVSoftBobLeftReducedDensity_posSemidef ξ)
          (dSVSoftBobLeftReducedDensity_posSemidef ζ) i j := by
  classical
  let F := dSVSoftBobLeftReducedDensity ξ
  let G := dSVSoftBobLeftReducedDensity ζ
  let hF := dSVSoftBobLeftReducedDensity_posSemidef ξ
  let hG := dSVSoftBobLeftReducedDensity_posSemidef ζ
  let f : Fin d → Bool := fun i =>
    dSVDensityRationalProjectiveThresholdBin w N k
      (hF.isHermitian.eigenvalues i)
  let g : Fin d → Bool := fun j =>
    dSVDensityRationalProjectiveThresholdBin w N k
      (hG.isHermitian.eigenvalues j)
  let P := (spectralPartitionPOVM F hF f).operator true
  let R := (spectralPartitionPOVM G hG g).operator true
  have deficit :=
    spectralPartitionPOVM_weighted_trace_deficit_eq_mismatch
      F G hF hG f g (fun _ : Bool => (1 : ℝ))
  simp only [one_pow, one_mul] at deficit
  have ffalse := dSVUniformDensityBinarySpectral_false_eq_complement
    F hF f
  have gfalse := dSVUniformDensityBinarySpectral_false_eq_complement
    G hG g
  have hp : P * P = P :=
    spectralPartitionPOVM_projective F hF f true
  have hr : R * R = R :=
    spectralPartitionPOVM_projective G hG g true
  change (Matrix.trace ((P - R) * (P - R))).re = _
  change
    (∑ b : Bool, (Matrix.trace
      ((spectralPartitionPOVM G hG g).operator b)).re) -
      (∑ b : Bool, (Matrix.trace
        ((spectralPartitionPOVM F hF f).operator b *
          (spectralPartitionPOVM G hG g).operator b)).re) =
      ∑ i : Fin d, ∑ j : Fin d,
        if f i = g j then 0
        else spectralAtomOverlap F G hF hG i j at deficit
  rw [← deficit]
  simp only [Fintype.sum_bool]
  rw [ffalse, gfalse]
  change (Matrix.trace ((P - R) * (P - R))).re =
    (Matrix.trace R).re + (Matrix.trace (1 - R)).re -
      ((Matrix.trace (P * R)).re +
        (Matrix.trace ((1 - P) * (1 - R))).re)
  simp only [Matrix.sub_mul, Matrix.mul_sub, Matrix.one_mul,
    Matrix.mul_one, Matrix.trace_sub, Complex.sub_re, hp, hr]
  rw [Matrix.trace_mul_comm R P]
  ring

theorem dSVDensityRationalPhysicalProjectorSquare_grid_eq
    {d N : ℕ} (w : ℝ)
    (ξ ζ : BipartiteUnitVector d) :
    (∑ k : Fin N,
      (Matrix.trace
        ((dSVDensityRationalPhysicalProjector w ξ k -
          dSVDensityRationalPhysicalProjector w ζ k) *
         (dSVDensityRationalPhysicalProjector w ξ k -
          dSVDensityRationalPhysicalProjector w ζ k))).re) /
        (N : ℝ) =
      dSVDensityRationalLeftProjectiveThresholdAtomMismatch
        w N ξ ζ := by
  classical
  simp_rw [dSVDensityRationalPhysicalProjectorSquare_eq_atomMismatch]
  let F := dSVSoftBobLeftReducedDensity ξ
  let G := dSVSoftBobLeftReducedDensity ζ
  let hF := dSVSoftBobLeftReducedDensity_posSemidef ξ
  let hG := dSVSoftBobLeftReducedDensity_posSemidef ζ
  let overlap := spectralAtomOverlap F G hF hG
  have commute :
      (∑ k : Fin N, ∑ i : Fin d, ∑ j : Fin d,
        if dSVDensityRationalProjectiveThresholdBin w N k
              (hF.isHermitian.eigenvalues i) =
            dSVDensityRationalProjectiveThresholdBin w N k
              (hG.isHermitian.eigenvalues j)
        then 0 else overlap i j) =
      ∑ i : Fin d, ∑ j : Fin d, ∑ k : Fin N,
        if dSVDensityRationalProjectiveThresholdBin w N k
              (hF.isHermitian.eigenvalues i) =
            dSVDensityRationalProjectiveThresholdBin w N k
              (hG.isHermitian.eigenvalues j)
        then 0 else overlap i j := by
    rw [Finset.sum_comm]
    apply Finset.sum_congr rfl
    intro i _
    rw [Finset.sum_comm]
  change
    (∑ k : Fin N, ∑ i : Fin d, ∑ j : Fin d,
      if dSVDensityRationalProjectiveThresholdBin w N k
            (hF.isHermitian.eigenvalues i) =
          dSVDensityRationalProjectiveThresholdBin w N k
            (hG.isHermitian.eigenvalues j)
      then 0 else overlap i j) / (N : ℝ) = _
  rw [commute]
  unfold dSVDensityRationalLeftProjectiveThresholdAtomMismatch
  change
    (∑ i : Fin d, ∑ j : Fin d, ∑ k : Fin N,
      if dSVDensityRationalProjectiveThresholdBin w N k
            (hF.isHermitian.eigenvalues i) =
          dSVDensityRationalProjectiveThresholdBin w N k
            (hG.isHermitian.eigenvalues j)
      then 0 else overlap i j) / (N : ℝ) =
      ∑ i : Fin d, ∑ j : Fin d,
        overlap i j * dSVUniformDensityThresholdMismatch N
          (dSVRationalSoftPass w
            (hF.isHermitian.eigenvalues i))
          (dSVRationalSoftPass w
            (hG.isHermitian.eigenvalues j))
  simp_rw [Finset.sum_div]
  apply Finset.sum_congr rfl
  intro i _
  apply Finset.sum_congr rfl
  intro j _
  unfold dSVUniformDensityThresholdMismatch
    dSVUniformDensityThresholdWeight
  rw [Finset.mul_sum]
  apply Finset.sum_congr rfl
  intro k _
  unfold dSVDensityRationalProjectiveThresholdBin
  by_cases left : dSVUniformDensityThresholdGrid N k ≤
      dSVRationalSoftPass w (hF.isHermitian.eigenvalues i)
  · by_cases right : dSVUniformDensityThresholdGrid N k ≤
        dSVRationalSoftPass w (hG.isHermitian.eigenvalues j)
    · simp [left, right]
    · simp [left, right, div_eq_mul_inv]
  · by_cases right : dSVUniformDensityThresholdGrid N k ≤
        dSVRationalSoftPass w (hG.isHermitian.eigenvalues j)
    · simp [left, right, div_eq_mul_inv]
    · simp [left, right]

theorem dSVDensityRationalPhysicalProjector_weighted_rank_eq
    {d N : ℕ} (w : ℝ) (ξ : BipartiteUnitVector d) :
    (∑ k : Fin N, dSVUniformDensityThresholdWeight N k *
      (Matrix.trace
        (dSVDensityRationalPhysicalProjector w ξ k)).re) =
      dSVDensityRationalLeftProjectiveDiagonalMass w N ξ := by
  classical
  let F := dSVSoftBobLeftReducedDensity ξ
  let hF := dSVSoftBobLeftReducedDensity_posSemidef ξ
  change
    (∑ k : Fin N, dSVUniformDensityThresholdWeight N k *
      (Matrix.trace
        ((spectralPartitionPOVM F hF
          (fun i : Fin d =>
            dSVDensityRationalProjectiveThresholdBin w N k
              (hF.isHermitian.eigenvalues i))).operator true)).re) =
      ∑ i : Fin d, dSVUniformDensityGridPrefix N
        (dSVRationalSoftPass w
          (hF.isHermitian.eigenvalues i))
  simp_rw [spectralPartitionPOVM_trace_eq_atom_count]
  unfold dSVUniformDensityGridPrefix
  simp_rw [Finset.mul_sum]
  rw [Finset.sum_comm]
  apply Finset.sum_congr rfl
  intro i _
  apply Finset.sum_congr rfl
  intro k _
  unfold dSVDensityRationalProjectiveThresholdBin
  by_cases accepted : dSVUniformDensityThresholdGrid N k ≤
      dSVRationalSoftPass w
        (hF.isHermitian.eigenvalues i)
  · simp [accepted]
  · simp [accepted]

theorem dSVDensityRationalPhysicalDiagonalBornSuccess_eq
    {d N : ℕ} (grid : 0 < N) (dimension : 0 < d)
    (w : ℝ) (ξ : BipartiteUnitVector d) :
    dSVDensityRationalPhysicalDiagonalBornSuccess
        grid dimension w ξ =
      dSVDensityRationalLeftProjectiveDiagonalMass w N ξ /
        (d : ℝ) := by
  have d_nonzero : (d : ℝ) ≠ 0 := by
    exact_mod_cast (Nat.ne_of_gt dimension)
  have n_nonzero : (N : ℝ) ≠ 0 := by
    exact_mod_cast (Nat.ne_of_gt grid)
  unfold dSVDensityRationalPhysicalDiagonalBornSuccess
    dSVDensityRationalPhysicalGlobalPOVM
  rw [dSVUniformDensityThresholdShared_diagonalBorn_eq
    grid dimension
    (dSVDensityRationalPhysicalProjector w ξ)
    (dSVDensityRationalPhysicalProjector_pos w ξ)
    (dSVDensityRationalPhysicalProjector_complement_pos w ξ)
    (dSVDensityRationalPhysicalProjector_projective w ξ)]
  rw [← dSVDensityRationalPhysicalProjector_weighted_rank_eq w ξ]
  unfold dSVUniformDensityThresholdWeight
  rw [← Finset.mul_sum]
  field_simp

theorem dSVDensityRationalPhysicalProjectorCrossHazard_eq
    {d N : ℕ} (grid : 0 < N) (dimension : 0 < d)
    (w : ℝ) (ξ ζ : BipartiteUnitVector d) :
    dSVDensityRationalPhysicalProjectorCrossHazard N w ξ ζ =
      dSVDensityRationalLeftProjectiveThresholdAtomMismatch
        w N ξ ζ / (d : ℝ) := by
  have d_nonzero : (d : ℝ) ≠ 0 := by
    exact_mod_cast (Nat.ne_of_gt dimension)
  have n_nonzero : (N : ℝ) ≠ 0 := by
    exact_mod_cast (Nat.ne_of_gt grid)
  unfold dSVDensityRationalPhysicalProjectorCrossHazard
  calc
    (∑ k : Fin N,
      (Matrix.trace
        ((dSVDensityRationalPhysicalProjector w ξ k -
          dSVDensityRationalPhysicalProjector w ζ k) *
         (dSVDensityRationalPhysicalProjector w ξ k -
          dSVDensityRationalPhysicalProjector w ζ k))).re) /
        ((d : ℝ) * (N : ℝ)) =
      ((∑ k : Fin N,
        (Matrix.trace
          ((dSVDensityRationalPhysicalProjector w ξ k -
            dSVDensityRationalPhysicalProjector w ζ k) *
           (dSVDensityRationalPhysicalProjector w ξ k -
            dSVDensityRationalPhysicalProjector w ζ k))).re) /
          (N : ℝ)) / (d : ℝ) := by
      field_simp
    _ = dSVDensityRationalLeftProjectiveThresholdAtomMismatch
          w N ξ ζ / (d : ℝ) := by
      rw [dSVDensityRationalPhysicalProjectorSquare_grid_eq w ξ ζ]

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

end

end QuantumParallelRepetition


open QuantumParallelRepetition
open scoped ComplexOrder Matrix BigOperators InnerProductSpace
open Complex Matrix Finset
open WithLp
open scoped BigOperators ComplexOrder MatrixOrder

theorem solution
    {d N : ℕ} (dimension : 0 < d) {w : ℝ}
    (width : 0 < w) (grid : 0 < N)
    (fine : (d : ℝ) / N ≤ 1 / (2 * (w + 1)))
    (ξ ζ : BipartiteUnitVector d) :
    dSVDensityRationalPhysicalProjectorCrossHazard N w ξ ζ /
      dSVDensityRationalPhysicalDiagonalBornSuccess
        grid dimension w ξ =
      dSVDensityRationalLeftProjectiveThresholdAtomMismatch
        w N ξ ζ /
        dSVDensityRationalLeftProjectiveDiagonalMass w N ξ := by
  rw [dSVDensityRationalPhysicalProjectorCrossHazard_eq
    grid dimension w ξ ζ,
    dSVDensityRationalPhysicalDiagonalBornSuccess_eq
      grid dimension w ξ]
  have dimension_ne : (d : ℝ) ≠ 0 := by
    exact_mod_cast (Nat.ne_of_gt dimension)
  have mass_ne :
      dSVDensityRationalLeftProjectiveDiagonalMass w N ξ ≠ 0 :=
    ne_of_gt (dSVDensityRationalLargeWidthDiagonalMass_pos
      width grid fine ξ)
  field_simp
