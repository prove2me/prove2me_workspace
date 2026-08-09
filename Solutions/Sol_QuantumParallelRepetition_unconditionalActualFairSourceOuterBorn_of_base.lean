import Definitions.Def_quantum_parallel_repetition_game
import Definitions.Def_qpr_core_26
import Theorems.Thm_QuantumParallelRepetition_embezzlementState_norm
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

open WithLp
open scoped BigOperators Kronecker

theorem ePRState_norm (m : ℕ) (hm : 0 < m) :
    ‖ePRState m‖ = 1 := by
  have hmreal : 0 < (m : ℝ) := by exact_mod_cast hm
  have hamp :
      ‖(↑((Real.sqrt (m : ℝ))⁻¹) : ℂ)‖ ^ 2 =
        (m : ℝ)⁻¹ := by
    rw [Complex.norm_real, Real.norm_eq_abs,
      abs_of_nonneg (inv_nonneg.mpr (Real.sqrt_nonneg _)),
      inv_pow, Real.sq_sqrt hmreal.le]
  have hsquare : ‖ePRState m‖ ^ 2 = 1 := by
    rw [EuclideanSpace.norm_sq_eq, Fintype.sum_prod_type]
    have hterm (i j : Fin m) :
        ‖if i = j then
          (↑((Real.sqrt (m : ℝ))⁻¹) : ℂ)
        else
          0‖ ^ 2 =
          if i = j then (m : ℝ)⁻¹ else 0 := by
      split_ifs with h
      · exact hamp
      · simp
    change
      (∑ i : Fin m, ∑ j : Fin m,
        ‖if i = j then
          (↑((Real.sqrt (m : ℝ))⁻¹) : ℂ)
        else
          0‖ ^ 2) = 1
    simp_rw [hterm]
    simp [hmreal.ne']
  nlinarith [norm_nonneg (ePRState m)]

end

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

theorem unconditionalMatchedVerifierTensor_norm_sq
    {s t : Type*} [Fintype s] [Fintype t]
    (target : EuclideanSpace ℂ s)
    (work : EuclideanSpace ℂ t) :
    ‖unconditionalMatchedVerifierTensor target work‖ ^ 2 =
      ‖target‖ ^ 2 * ‖work‖ ^ 2 := by
  classical
  rw [EuclideanSpace.norm_sq_eq, Fintype.sum_prod_type]
  change
    (∑ i : s, ∑ j : t, ‖target i * work j‖ ^ 2) =
      ‖target‖ ^ 2 * ‖work‖ ^ 2
  simp_rw [norm_mul, mul_pow]
  rw [← Fintype.sum_mul_sum, ← EuclideanSpace.norm_sq_eq,
    ← EuclideanSpace.norm_sq_eq]

theorem unconditionalMatchedVerifierTensor_norm
    {s t : Type*} [Fintype s] [Fintype t]
    (target : EuclideanSpace ℂ s)
    (work : EuclideanSpace ℂ t) :
    ‖unconditionalMatchedVerifierTensor target work‖ =
      ‖target‖ * ‖work‖ := by
  have squared :=
    unconditionalMatchedVerifierTensor_norm_sq target work
  nlinarith [
    norm_nonneg (unconditionalMatchedVerifierTensor target work),
    norm_nonneg target, norm_nonneg work,
    mul_nonneg (norm_nonneg target) (norm_nonneg work)]

theorem unconditionalMatchedVerifierEffect_tensor_quadratic
    {s t : Type*} [Fintype s] [Fintype t]
    [DecidableEq s] [DecidableEq t]
    (operator : Matrix s s ℂ)
    (target : EuclideanSpace ℂ s)
    (work : EuclideanSpace ℂ t) :
    quadraticExpectation
      (Matrix.toEuclideanCLM (n := s × t) (𝕜 := ℂ)
        (operator ⊗ₖ (1 : Matrix t t ℂ)))
      (unconditionalMatchedVerifierTensor target work) =
      ‖work‖ ^ 2 *
        quadraticExpectation
          (Matrix.toEuclideanCLM (n := s) (𝕜 := ℂ) operator)
          target := by
  classical
  rw [matrixQuadraticExpectation_expand,
    matrixQuadraticExpectation_expand]
  have residual_complex :
      (∑ k : t, work k * star (work k)) =
        (↑(‖work‖ ^ 2) : ℂ) := by
    calc
      (∑ k : t, work k * star (work k)) =
          (↑(∑ k : t, ‖work k‖ ^ 2) : ℂ) := by
            push_cast
            apply Finset.sum_congr rfl
            intro k _
            simpa [Complex.normSq_eq_norm_sq] using
              Complex.mul_conj (work k)
      _ = (↑(‖work‖ ^ 2) : ℂ) := by
            rw [← EuclideanSpace.norm_sq_eq]
  change
    (∑ i : s × t,
      (∑ j : s × t,
        (operator i.1 j.1 * (if i.2 = j.2 then 1 else 0)) *
          (target j.1 * work j.2)) *
        star (target i.1 * work i.2)).re =
      ‖work‖ ^ 2 *
        (∑ i : s, (∑ j : s, operator i j * target j) *
          star (target i)).re
  rw [Fintype.sum_prod_type]
  have complex_factor :
      (∑ i : s, ∑ k : t,
        (∑ j : s × t,
          (operator i j.1 * (if k = j.2 then 1 else 0)) *
            (target j.1 * work j.2)) *
          star (target i * work k)) =
        (∑ i : s,
          (∑ j : s, operator i j * target j) * star (target i)) *
          (↑(‖work‖ ^ 2) : ℂ) := by
    calc
      (∑ i : s, ∑ k : t,
        (∑ j : s × t,
          (operator i j.1 * (if k = j.2 then 1 else 0)) *
            (target j.1 * work j.2)) *
          star (target i * work k)) =
        ∑ i : s, ∑ k : t,
          ((∑ j : s, operator i j * target j) * work k) *
            star (target i * work k) := by
              apply Finset.sum_congr rfl
              intro i _
              apply Finset.sum_congr rfl
              intro k _
              congr 1
              rw [Fintype.sum_prod_type]
              simp [mul_ite, ite_mul, Finset.sum_mul, mul_assoc]
      _ = ∑ i : s,
        ((∑ j : s, operator i j * target j) * star (target i)) *
          (∑ k : t, work k * star (work k)) := by
            apply Finset.sum_congr rfl
            intro i _
            rw [Finset.mul_sum]
            apply Finset.sum_congr rfl
            intro k _
            simp only [star_mul]
            ring
      _ = (∑ i : s,
          (∑ j : s, operator i j * target j) * star (target i)) *
          (↑(‖work‖ ^ 2) : ℂ) := by
            rw [residual_complex, Finset.sum_mul]
  rw [complex_factor, Complex.mul_re, Complex.ofReal_re,
    Complex.ofReal_im]
  ring

variable {X Y A B : Type*}
variable [Fintype X] [Fintype Y] [Fintype A] [Fintype B]

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

theorem unconditionalConjugatePureVector_norm_sq
    {ι : Type*} [Fintype ι] (z : EuclideanSpace ℂ ι) :
    ‖unconditionalConjugatePureVector z‖ ^ 2 = ‖z‖ ^ 2 := by
  simp [EuclideanSpace.norm_sq_eq]

theorem unconditionalConjugatePureVector_norm
    {ι : Type*} [Fintype ι] (z : EuclideanSpace ℂ ι) :
    ‖unconditionalConjugatePureVector z‖ = ‖z‖ := by
  have squares := unconditionalConjugatePureVector_norm_sq z
  nlinarith [norm_nonneg (unconditionalConjugatePureVector z),
    norm_nonneg z]

end

noncomputable section

open WithLp
open scoped BigOperators Kronecker ComplexOrder MatrixOrder
  Matrix.Norms.L2Operator InnerProductSpace

theorem directDSVActualReindexedRetainedPOVMWinningEffect
    {X Y A B s t u v ι κ : Type*}
    [Fintype X] [Fintype Y] [Fintype A] [Fintype B]
    [Fintype s] [Fintype t] [Fintype u] [Fintype v]
    [Fintype ι] [Fintype κ]
    [DecidableEq s] [DecidableEq t] [DecidableEq u] [DecidableEq v]
    [DecidableEq ι] [DecidableEq κ]
    (G : Game X Y A B)
    (eA : ι ≃ s × t) (eB : κ ≃ u × v)
    (PA : POVM A s) (PB : POVM B u)
    (x : X) (y : Y) :
    directDSVActualLocalPOVMWinningEffect G
        (directDSVActualReindexedRetainedPOVM eA PA)
        (directDSVActualReindexedRetainedPOVM eB PB)
        x y =
      Matrix.reindex
        (directDSVActualBilateralRetainedIndexEquiv eA eB).symm
        (directDSVActualBilateralRetainedIndexEquiv eA eB).symm
        (directDSVActualLocalPOVMWinningEffect G PA PB x y ⊗ₖ
          (1 : Matrix (t × v) (t × v) ℂ)) := by
  classical
  ext ⟨i, k⟩ ⟨j, l⟩
  by_cases alice_work : (eA i).2 = (eA j).2 <;>
    by_cases bob_work : (eB k).2 = (eB l).2 <;>
      simp [directDSVActualLocalPOVMWinningEffect,
        directDSVActualReindexedRetainedPOVM,
        reindexedPOVM, purificationAlicePOVM,
        directDSVActualBilateralRetainedIndexEquiv,
        Matrix.reindex_apply, Matrix.sum_apply, Matrix.ite_apply,
        Matrix.submatrix_apply,
        Matrix.kroneckerMap_apply, Matrix.one_apply,
        Equiv.prodProdProdComm_apply, alice_work, bob_work]

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

theorem directDSVActualReindexedRetainedPOVMWinningEffect_tensor_quadratic
    {X Y A B s t u v ι κ : Type*}
    [Fintype X] [Fintype Y] [Fintype A] [Fintype B]
    [Fintype s] [Fintype t] [Fintype u] [Fintype v]
    [Fintype ι] [Fintype κ]
    [DecidableEq s] [DecidableEq t] [DecidableEq u] [DecidableEq v]
    [DecidableEq ι] [DecidableEq κ]
    (G : Game X Y A B)
    (eA : ι ≃ s × t) (eB : κ ≃ u × v)
    (PA : POVM A s) (PB : POVM B u)
    (x : X) (y : Y)
    (z : EuclideanSpace ℂ (ι × κ))
    (target : EuclideanSpace ℂ (s × u))
    (work : EuclideanSpace ℂ (t × v))
    (selected :
      LinearIsometryEquiv.piLpCongrLeft 2 ℂ ℂ
        (directDSVActualBilateralRetainedIndexEquiv eA eB) z =
          unconditionalMatchedVerifierTensor target work) :
    quadraticExpectation
      (Matrix.toEuclideanCLM (n := ι × κ) (𝕜 := ℂ)
        (directDSVActualLocalPOVMWinningEffect G
          (directDSVActualReindexedRetainedPOVM eA PA)
          (directDSVActualReindexedRetainedPOVM eB PB)
          x y)) z =
      ‖work‖ ^ 2 *
        quadraticExpectation
          (Matrix.toEuclideanCLM (n := s × u) (𝕜 := ℂ)
            (directDSVActualLocalPOVMWinningEffect G PA PB x y))
          target := by
  rw [directDSVActualReindexedRetainedPOVMWinningEffect,
    directDSVActualReindexedWinningEffect_quadratic,
    selected, unconditionalMatchedVerifierEffect_tensor_quadratic]

end

noncomputable section

open WithLp
open scoped BigOperators Kronecker ComplexOrder MatrixOrder
  Matrix.Norms.L2Operator InnerProductSpace

theorem unconditionalActualFairSourcePhaseHarmonicWork_norm
    {P k : ℕ} (phases : 0 < P) (harmonic : 0 < k) :
    ‖unconditionalActualFairSourcePhaseHarmonicWork P k‖ = 1 := by
  unfold unconditionalActualFairSourcePhaseHarmonicWork
  rw [LinearIsometryEquiv.norm_map,
    unconditionalMatchedVerifierTensor_norm,
    ePRState_norm P phases,
    embezzlementState_norm k harmonic]
  norm_num

theorem unconditionalActualFairSourcePhaseHarmonicStage_sourceProduct
    {P N d m : ℕ}
    (ψ : EuclideanSpace ℂ (Fin d × Fin d)) :
    LinearIsometryEquiv.piLpCongrLeft 2 ℂ ℂ
        (directDSVActualBilateralRetainedIndexEquiv
          (physical8SelectedGlobalTargetWorkEquiv P N d m)
          (physical8SelectedGlobalTargetWorkEquiv P N d m))
        (dSVDensityRationalPublicBucketCoherentPhaseSigmaState P
          (unconditionalConjugatePureVector ψ)
          (fun _ _ _ => embezzlementState (N * m))) =
      unconditionalMatchedVerifierTensor
        (unconditionalConjugatePureVector ψ)
        (unconditionalActualFairSourcePhaseHarmonicWork
          P (N * m)) := by
  classical
  ext ⟨⟨i, j⟩, ⟨⟨p, a⟩, ⟨q, b⟩⟩⟩
  simp [LinearIsometryEquiv.piLpCongrLeft_apply,
    directDSVActualBilateralRetainedIndexEquiv,
    physical8SelectedGlobalTargetWorkEquiv,
    dSVDensityRationalPublicBucketCoherentPhaseSigmaState,
    dSVUniformDensityCorrectedMatchedSigmaWeightedResidual,
    dSVDensityRationalPublicBucketCoherentPhaseHistory,
    unconditionalMatchedVerifierTensor,
    unconditionalActualFairSourcePhaseHarmonicWork,
    mul_assoc, mul_left_comm, mul_comm]

theorem unconditionalActualFairSourceSelectedBorn_of_base
    {X Y A B : Type}
    [Fintype X] [Fintype Y] [Fintype A] [Fintype B]
    (G : Game X Y A B) (n : ℕ) (S : Strategy (G.repeat n))
    (D : Finset (Fin n)) (a₀ : A) (b₀ : B)
    {P N m : ℕ} (phases : 0 < P) (grid : 0 < N)
    (harmonic : 0 < m)
    (x : X) (y : Y)
    (ψ : EuclideanSpace ℂ
      (Fin (Fintype.card (ExactGlobalHistoryLocalIndex G n S D)) ×
       Fin (Fintype.card (ExactGlobalHistoryLocalIndex G n S D))))
    (value : ℝ)
    (base_born :
      quadraticExpectation
        (unconditionalActualFairSourceBaseWinningCLM
          G n S D a₀ b₀ x y)
        (unconditionalConjugatePureVector ψ) = value) :
    quadraticExpectation
      (Matrix.toEuclideanCLM
        (n :=
          UnconditionalSelectedCopyLocalIndex
            P (Fintype.card
              (ExactGlobalHistoryLocalIndex G n S D)) N m ×
          UnconditionalSelectedCopyLocalIndex
            P (Fintype.card
              (ExactGlobalHistoryLocalIndex G n S D)) N m)
        (𝕜 := ℂ)
        (directDSVActualLocalPOVMWinningEffect G
          (integratorActualC485SelectedAlicePOVM
            G n S D a₀ P N m x)
          (integratorActualC485SelectedBobPOVM
            G n S D b₀ P N m y) x y))
      (dSVDensityRationalPublicBucketCoherentPhaseSigmaState P
        (unconditionalConjugatePureVector ψ)
        (fun _ _ _ => embezzlementState (N * m))) = value := by
  classical
  let d : ℕ :=
    Fintype.card (ExactGlobalHistoryLocalIndex G n S D)
  let e := physical8SelectedGlobalTargetWorkEquiv P N d m
  let stage := dSVDensityRationalPublicBucketCoherentPhaseSigmaState P
    (unconditionalConjugatePureVector ψ)
    (fun _ _ _ => embezzlementState (N * m))
  let work := unconditionalActualFairSourcePhaseHarmonicWork
    P (N * m)
  have work_unit : ‖work‖ = 1 :=
    unconditionalActualFairSourcePhaseHarmonicWork_norm
      phases (Nat.mul_pos grid harmonic)
  change
    quadraticExpectation
      (Matrix.toEuclideanCLM
        (n :=
          UnconditionalSelectedCopyLocalIndex P d N m ×
          UnconditionalSelectedCopyLocalIndex P d N m)
        (𝕜 := ℂ)
        (directDSVActualLocalPOVMWinningEffect G
          (directDSVActualReindexedRetainedPOVM e
            (integratorActualC485SourceAlicePOVM G n S D a₀ x))
          (directDSVActualReindexedRetainedPOVM e
            (integratorActualC485SourceBobPOVM G n S D b₀ y)) x y))
      stage = value
  rw [directDSVActualReindexedRetainedPOVMWinningEffect_tensor_quadratic
    G e e
    (integratorActualC485SourceAlicePOVM G n S D a₀ x)
    (integratorActualC485SourceBobPOVM G n S D b₀ y)
    x y stage (unconditionalConjugatePureVector ψ) work
    (unconditionalActualFairSourcePhaseHarmonicStage_sourceProduct ψ)]
  change
    ‖work‖ ^ 2 *
      quadraticExpectation
        (unconditionalActualFairSourceBaseWinningCLM
          G n S D a₀ b₀ x y)
        (unconditionalConjugatePureVector ψ) = value
  rw [work_unit, one_pow, one_mul, base_born]

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
    (D : Finset (Fin n)) (a₀ : A) (b₀ : B)
    {P N L m : ℕ} (phases : 0 < P) (grid : 0 < N)
    (harmonic : 0 < m)
    (width : Fin 1 → ℝ) (schedule : Fin L → Fin 1)
    (ξ ζ : BipartiteUnitVector
      (Fintype.card (ExactGlobalHistoryLocalIndex G n S D)))
    (ψ : EuclideanSpace ℂ
      (Fin (Fintype.card (ExactGlobalHistoryLocalIndex G n S D)) ×
       Fin (Fintype.card (ExactGlobalHistoryLocalIndex G n S D))))
    (ψ_unit : ‖ψ‖ = 1)
    (j : Fin L) (x : X) (y : Y) (value : ℝ)
    (base_born :
      quadraticExpectation
        (unconditionalActualFairSourceBaseWinningCLM
          G n S D a₀ b₀ x y)
        (unconditionalConjugatePureVector ψ) = value) :
    quadraticExpectation
      (integratorActualC485WinningEffect
        G n S D a₀ b₀ (P := P) (N := N) (m := m) j x y)
      (integratorActualC485SourceVector
        (B := P) (N := N) (m := m) width schedule ξ ζ ψ j) =
      ‖integratorActualC485SourceVector
        (B := P) (N := N) (m := m) width schedule ξ ζ ψ j‖ ^ 2 * value := by
  classical
  let d : ℕ :=
    Fintype.card (ExactGlobalHistoryLocalIndex G n S D)
  let stage := dSVDensityRationalPublicBucketCoherentPhaseSigmaState P
    (unconditionalConjugatePureVector ψ)
    (fun _ _ _ => embezzlementState (N * m))
  let retained := integratorActualC485NormalizedDiagonalWork
    (B := P) (N := N) width schedule ξ ζ j
  have selected_born :
      quadraticExpectation
        (Matrix.toEuclideanCLM
          (n :=
            UnconditionalSelectedCopyLocalIndex P d N m ×
            UnconditionalSelectedCopyLocalIndex P d N m)
          (𝕜 := ℂ)
          (directDSVActualLocalPOVMWinningEffect G
            (integratorActualC485SelectedAlicePOVM
              G n S D a₀ P N m x)
            (integratorActualC485SelectedBobPOVM
              G n S D b₀ P N m y) x y))
        stage = value :=
    unconditionalActualFairSourceSelectedBorn_of_base
      G n S D a₀ b₀ phases grid harmonic x y ψ value base_born
  have stage_unit : ‖stage‖ = 1 := by
    calc
      ‖stage‖ =
          ‖LinearIsometryEquiv.piLpCongrLeft 2 ℂ ℂ
            (directDSVActualBilateralRetainedIndexEquiv
              (physical8SelectedGlobalTargetWorkEquiv P N d m)
              (physical8SelectedGlobalTargetWorkEquiv P N d m))
            stage‖ := by rw [LinearIsometryEquiv.norm_map]
      _ = ‖unconditionalMatchedVerifierTensor
            (unconditionalConjugatePureVector ψ)
            (unconditionalActualFairSourcePhaseHarmonicWork
              P (N * m))‖ := by
              rw [unconditionalActualFairSourcePhaseHarmonicStage_sourceProduct]
      _ = 1 := by
            rw [unconditionalMatchedVerifierTensor_norm,
              unconditionalConjugatePureVector_norm, ψ_unit,
              unconditionalActualFairSourcePhaseHarmonicWork_norm
                phases (Nat.mul_pos grid harmonic)]
            norm_num
  change
    quadraticExpectation
      (Matrix.toEuclideanCLM
        (n :=
          (UnconditionalSelectedCopyLocalIndex P d N m ×
           UnconditionalSelectedCopyLocalIndex P d N m) ×
          IntegratorActualC485RetainedIndex 1 P N d L j)
        (𝕜 := ℂ)
        (directDSVActualLocalPOVMWinningEffect G
          (integratorActualC485SelectedAlicePOVM
            G n S D a₀ P N m x)
          (integratorActualC485SelectedBobPOVM
            G n S D b₀ P N m y) x y ⊗ₖ
          (1 : Matrix
            (IntegratorActualC485RetainedIndex 1 P N d L j)
            (IntegratorActualC485RetainedIndex 1 P N d L j) ℂ)))
      (unconditionalMatchedVerifierTensor stage retained) =
        ‖unconditionalMatchedVerifierTensor stage retained‖ ^ 2 * value
  rw [unconditionalMatchedVerifierEffect_tensor_quadratic,
    selected_born, unconditionalMatchedVerifierTensor_norm_sq,
    stage_unit]
  ring
