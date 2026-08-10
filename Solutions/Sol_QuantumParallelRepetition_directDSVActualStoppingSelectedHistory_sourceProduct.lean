import Definitions.Def_quantum_parallel_repetition_game
import Definitions.Def_qpr_core_24
import Theorems.Thm_QuantumParallelRepetition_dSVDensityRationalHeterogeneousActualPhysicalFlagBornState_allFlags
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
open scoped BigOperators Kronecker ComplexOrder MatrixOrder

theorem dSVUniformDensityIndependentSharedState_apply
    (L N d : ℕ)
    (alice bob :
      DSVUniformDensityIndependentHistoryLocalIndex L N d) :
    dSVUniformDensityIndependentSharedState L N d
        (alice, bob) =
      ∏ j : Fin L,
        dSVUniformDensityThresholdSharedState N d
          (alice j, bob j) := by
  simp [dSVUniformDensityIndependentSharedState,
    dSVUniformDensityIndependentHistoryPairReindex,
    LinearIsometryEquiv.piLpCongrLeft_apply,
    finiteTensorVector,
    bilateralWorkPairEquiv]

end

noncomputable section

open WithLp
open scoped BigOperators Kronecker ComplexOrder MatrixOrder

theorem dSVDensityRationalCompleteProjectiveThresholdEffect_false
    {d : ℕ} (w : ℝ) (N : ℕ)
    (ξ : BipartiteUnitVector d) (k : Fin N) :
    (dSVDensityRationalLeftProjectiveThresholdPOVM
      w N k ξ).operator false =
      1 - dSVDensityRationalCompleteProjectiveThresholdProjector
        w N ξ k := by
  have complete :=
    (dSVDensityRationalLeftProjectiveThresholdPOVM
      w N k ξ).complete
  rw [Fintype.sum_bool, add_comm] at complete
  exact eq_sub_of_add_eq complete

theorem dSVDensityRationalCompleteProjectiveBinaryPOVM_effect
    {d : ℕ} (w : ℝ) (N : ℕ)
    (ξ : BipartiteUnitVector d) (a : Bool) :
    (dSVDensityRationalCompleteProjectiveBinaryPOVM
      w N ξ).operator a =
      Matrix.blockDiagonal' (fun k : Fin N =>
        (dSVDensityRationalLeftProjectiveThresholdPOVM
          w N k ξ).operator a) := by
  cases a
  · change
      Matrix.blockDiagonal' (fun k : Fin N =>
        1 - dSVDensityRationalCompleteProjectiveThresholdProjector
          w N ξ k) = _
    congr 1
    funext k
    exact
      (dSVDensityRationalCompleteProjectiveThresholdEffect_false
        w N ξ k).symm
  · rfl

theorem dSVDensityRationalCompleteProjectiveOutcome_eq_block_action
    {d : ℕ} (w : ℝ) (N : ℕ)
    (ξ ζ : BipartiteUnitVector d) (a b : Bool) :
    dSVDensityRationalCompleteProjectiveOutcome
        w N ξ ζ a b =
      toLp 2
        ((Matrix.blockDiagonal'
            (fun k : Fin N =>
              (dSVDensityRationalLeftProjectiveThresholdPOVM
                w N k ξ).operator a) ⊗ₖ
          (Matrix.blockDiagonal'
            (fun k : Fin N =>
              (dSVDensityRationalLeftProjectiveThresholdPOVM
                w N k ζ).operator b)).transpose).mulVec
          (ofLp
            (dSVUniformDensityThresholdSharedState N d))) := by
  unfold dSVDensityRationalCompleteProjectiveOutcome
    coherentBinaryJointOutcome
  change
    toLp 2
      (((dSVDensityRationalCompleteProjectiveBinaryPOVM
            w N ξ).operator a ⊗ₖ
         ((dSVDensityRationalCompleteProjectiveBinaryPOVM
            w N ζ).operator b).transpose).mulVec
        (ofLp (dSVUniformDensityThresholdSharedState N d))) = _
  rw [dSVDensityRationalCompleteProjectiveBinaryPOVM_effect,
    dSVDensityRationalCompleteProjectiveBinaryPOVM_effect]

end

noncomputable section

open WithLp
open scoped BigOperators Kronecker ComplexOrder MatrixOrder

theorem dSVDensityRationalCompleteStoppedOptionalOutcome_some_some
    {d : ℕ} (w : ℝ) (N : ℕ)
    (ξ ζ : BipartiteUnitVector d) (alice bob : Bool) :
    dSVDensityRationalCompleteStoppedOptionalOutcome
        w N ξ ζ (some alice) (some bob) =
      dSVDensityRationalCompleteProjectiveOutcome
        w N ξ ζ alice bob := by
  rw [dSVDensityRationalCompleteProjectiveOutcome_eq_block_action]
  simp [dSVDensityRationalCompleteStoppedOptionalOutcome,
    dSVDensityRationalCompleteStoppedOptionalLocalEffect,
    dSVDensityRationalCompleteProjectiveBinaryPOVM_effect]

theorem dSVDensityRationalCompleteStoppedOptionalOutcome_none_none
    {d : ℕ} (w : ℝ) (N : ℕ)
    (ξ ζ : BipartiteUnitVector d) :
    dSVDensityRationalCompleteStoppedOptionalOutcome
        w N ξ ζ none none =
      dSVUniformDensityThresholdSharedState N d := by
  simp [dSVDensityRationalCompleteStoppedOptionalOutcome,
    dSVDensityRationalCompleteStoppedOptionalLocalEffect]

theorem dSVDensityRationalCompleteStoppedOptionalLocalSchedule_hit
    {L : ℕ} (j : Fin L) :
    dSVDensityRationalCompleteStoppedOptionalLocalSchedule
      L j.succ j.castSucc = some true := by
  simp [dSVDensityRationalCompleteStoppedOptionalLocalSchedule,
    j.isLt]

end

noncomputable section

open WithLp
open scoped BigOperators Kronecker ComplexOrder MatrixOrder

theorem dSVDensityRationalCompleteStoppedOptionalLocalSchedule_before
    {L : ℕ} (j : Fin L) (i : Fin (L + 1))
    (earlier : i.val < j.val) :
    dSVDensityRationalCompleteStoppedOptionalLocalSchedule
      L j.succ i = some false := by
  have attempted : i.val < L := lt_trans earlier j.isLt
  simp [dSVDensityRationalCompleteStoppedOptionalLocalSchedule,
    attempted, Fin.succ_ne_zero, earlier]

theorem dSVDensityRationalCompleteStoppedOptionalLocalSchedule_after
    {L : ℕ} (j : Fin L) (i : Fin (L + 1))
    (later : j.val < i.val) :
    dSVDensityRationalCompleteStoppedOptionalLocalSchedule
      L j.succ i = none := by
  have not_before : ¬ i.val < j.val := by omega
  have not_equal : i.val ≠ j.val := by omega
  simp [dSVDensityRationalCompleteStoppedOptionalLocalSchedule,
    Fin.succ_ne_zero, not_before, not_equal]

end

noncomputable section

open WithLp
open scoped BigOperators Kronecker ComplexOrder MatrixOrder

attribute [local instance] Classical.propDecidable

theorem
    dSVDensityRationalHeterogeneousActualCommonStopScheduledOutcome_before
    {S N d L : ℕ} (width : Fin S → ℝ)
    (schedule : Fin L → Fin S)
    (ξ ζ : BipartiteUnitVector d)
    (j : Fin L) (i : Fin (L + 1))
    (before : i.val < j.val) :
    dSVDensityRationalHeterogeneousActualCommonStopScheduledOutcome
        width schedule ξ ζ j i =
      dSVDensityRationalCompleteProjectiveOutcome
        (width (schedule
          ⟨i.val, lt_trans before j.isLt⟩))
        N ξ ζ false false := by
  unfold dSVDensityRationalHeterogeneousActualCommonStopScheduledOutcome
  rw [dSVDensityRationalCompleteStoppedOptionalLocalSchedule_before
    j i before]
  rw [dSVDensityRationalCompleteStoppedOptionalOutcome_some_some]
  simp [dSVDensityRationalHeterogeneousActualPhysicalFlagBornCopyWidth,
    lt_trans before j.isLt]

theorem
    dSVDensityRationalHeterogeneousActualCommonStopScheduledOutcome_hit
    {S N d L : ℕ} (width : Fin S → ℝ)
    (schedule : Fin L → Fin S)
    (ξ ζ : BipartiteUnitVector d) (j : Fin L) :
    dSVDensityRationalHeterogeneousActualCommonStopScheduledOutcome
        width schedule ξ ζ j j.castSucc =
      dSVDensityRationalCompleteProjectiveOutcome
        (width (schedule j)) N ξ ζ true true := by
  unfold dSVDensityRationalHeterogeneousActualCommonStopScheduledOutcome
  rw [dSVDensityRationalCompleteStoppedOptionalLocalSchedule_hit]
  rw [dSVDensityRationalCompleteStoppedOptionalOutcome_some_some]
  simp [dSVDensityRationalHeterogeneousActualPhysicalFlagBornCopyWidth]

theorem
    dSVDensityRationalHeterogeneousActualCommonStopScheduledOutcome_after
    {S N d L : ℕ} (width : Fin S → ℝ)
    (schedule : Fin L → Fin S)
    (ξ ζ : BipartiteUnitVector d)
    (j : Fin L) (i : Fin (L + 1))
    (after : j.val < i.val) :
    dSVDensityRationalHeterogeneousActualCommonStopScheduledOutcome
        width schedule ξ ζ j i =
      dSVUniformDensityThresholdSharedState N d := by
  unfold dSVDensityRationalHeterogeneousActualCommonStopScheduledOutcome
  rw [dSVDensityRationalCompleteStoppedOptionalLocalSchedule_after
    j i after]
  exact dSVDensityRationalCompleteStoppedOptionalOutcome_none_none
    (dSVDensityRationalHeterogeneousActualPhysicalFlagBornCopyWidth
      width schedule i) N ξ ζ

theorem
    dSVDensityRationalHeterogeneousActualCommonStopPhysicalState_eq_outcomeProduct
    {S N d L : ℕ} (width : Fin S → ℝ)
    (schedule : Fin L → Fin S)
    (ξ ζ : BipartiteUnitVector d) (j : Fin L)
    (alice bob :
      DSVUniformDensityIndependentHistoryLocalIndex
        (L + 1) N d) :
    dSVDensityRationalHeterogeneousActualPhysicalState
        N width schedule ξ ζ
        (⟨j.succ, alice⟩, ⟨j.succ, bob⟩) =
      ∏ i : Fin (L + 1),
        dSVDensityRationalHeterogeneousActualCommonStopScheduledOutcome
          width schedule ξ ζ j i (alice i, bob i) := by
  exact
    dSVDensityRationalHeterogeneousActualPhysicalFlagBornState_allFlags
      width schedule ξ ζ j.succ j.succ alice bob

end

noncomputable section

open WithLp
open scoped BigOperators ComplexOrder Kronecker MatrixOrder

theorem
    dSVDensityRationalHeterogeneousStoppedCommonPrefixFailureCopy_eq_actual
    {S N d L : ℕ} (width : Fin S → ℝ)
    (schedule : Fin L → Fin S)
    (ξ ζ : BipartiteUnitVector d)
    (j : Fin L) (i : Fin j.val) :
    dSVDensityRationalHeterogeneousStoppedCommonPrefixFailureCopy
        (N := N) width schedule ξ ζ j i =
      dSVDensityRationalHeterogeneousActualCommonStopScheduledOutcome
        width schedule ξ ζ j
        ⟨i.val, by omega⟩ := by
  symm
  exact
    dSVDensityRationalHeterogeneousActualCommonStopScheduledOutcome_before
      width schedule ξ ζ j ⟨i.val, by omega⟩ i.isLt

theorem
    dSVDensityRationalHeterogeneousStoppedCommonPrefixFailureVector_apply
    {S N d L : ℕ} (width : Fin S → ℝ)
    (schedule : Fin L → Fin S)
    (ξ ζ : BipartiteUnitVector d)
    (j : Fin L)
    (q : Fin j.val →
      (DSVUniformDensityThresholdLocalIndex N d ×
       DSVUniformDensityThresholdLocalIndex N d)) :
    dSVDensityRationalHeterogeneousStoppedCommonPrefixFailureVector
        width schedule ξ ζ j q =
      ∏ i : Fin j.val,
        dSVDensityRationalHeterogeneousActualCommonStopScheduledOutcome
          width schedule ξ ζ j
          ⟨i.val, by omega⟩ (q i) := by
  change
    (∏ i : Fin j.val,
      dSVDensityRationalHeterogeneousStoppedCommonPrefixFailureCopy
        width schedule ξ ζ j i (q i)) = _
  apply Finset.prod_congr rfl
  intro i _
  rw [dSVDensityRationalHeterogeneousStoppedCommonPrefixFailureCopy_eq_actual]

end

noncomputable section

open WithLp
open scoped BigOperators Kronecker ComplexOrder MatrixOrder

@[simp] theorem directDSVSelectedCopyLocalHistoryEquiv_hit
    {L : ℕ} {β : Type*} (j : Fin L)
    (selected : β) (before : Fin j.val → β)
    (after : Fin (L - j.val) → β) :
    directDSVSelectedCopyLocalHistoryEquiv j
        (selected, (before, after)) j.castSucc = selected := by
  simp [directDSVSelectedCopyLocalHistoryEquiv]

@[simp] theorem directDSVSelectedCopyLocalHistoryEquiv_before
    {L : ℕ} {β : Type*} (j : Fin L)
    (selected : β) (before : Fin j.val → β)
    (after : Fin (L - j.val) → β) (i : Fin j.val) :
    directDSVSelectedCopyLocalHistoryEquiv j
        (selected, (before, after))
        ⟨i.val, by omega⟩ = before i := by
  let k : Fin L := ⟨i.val, by omega⟩
  have earlier : k < j := by
    change i.val < j.val
    exact i.isLt
  have selected_index :
      j.castSucc.succAbove k =
        (⟨i.val, by omega⟩ : Fin (L + 1)) := by
    rw [Fin.succAbove_castSucc_of_lt j k earlier]
    rfl
  unfold directDSVSelectedCopyLocalHistoryEquiv
  simp only [Equiv.trans_apply, Equiv.prodCongr_apply,
    Fin.insertNthEquiv_apply]
  rw [← selected_index, Fin.insertNth_apply_succAbove]
  change
    (if h : k.val < j.val
      then before ⟨k.val, h⟩
      else after ⟨k.val - j.val, by omega⟩) = before i
  simp only [k, i.isLt, ↓reduceDIte]

@[simp] theorem directDSVSelectedCopyLocalHistoryEquiv_after
    {L : ℕ} {β : Type*} (j : Fin L)
    (selected : β) (before : Fin j.val → β)
    (after : Fin (L - j.val) → β) (i : Fin (L - j.val)) :
    directDSVSelectedCopyLocalHistoryEquiv j
        (selected, (before, after))
        ⟨j.val + 1 + i.val, by omega⟩ = after i := by
  let k : Fin L := ⟨j.val + i.val, by omega⟩
  have later : j ≤ k := by
    change j.val ≤ j.val + i.val
    omega
  have selected_index :
      j.castSucc.succAbove k =
        (⟨j.val + 1 + i.val, by omega⟩ : Fin (L + 1)) := by
    rw [Fin.succAbove_castSucc_of_le j k later]
    apply Fin.ext
    change j.val + i.val + 1 = j.val + 1 + i.val
    omega
  unfold directDSVSelectedCopyLocalHistoryEquiv
  simp only [Equiv.trans_apply, Equiv.prodCongr_apply,
    Fin.insertNthEquiv_apply]
  rw [← selected_index, Fin.insertNth_apply_succAbove]
  change
    (if h : k.val < j.val
      then before ⟨k.val, h⟩
      else after ⟨k.val - j.val, by omega⟩) = after i
  have not_before : ¬ j.val + i.val < j.val := by omega
  simp [k, not_before]

theorem directDSVRemainingCopyProductSplit
    {M : Type*} [CommMonoid M]
    {L : ℕ} (j : Fin L) (f : Fin L → M) :
    (∏ i : Fin L, f i) =
      (∏ i : Fin j.val, f ⟨i.val, by omega⟩) *
      (∏ i : Fin (L - j.val),
        f ⟨j.val + i.val, by omega⟩) := by
  classical
  have length : j.val + (L - j.val) = L := by omega
  calc
    (∏ i : Fin L, f i) =
        ∏ i : Fin (j.val + (L - j.val)), f (i.cast length) :=
      (Fin.prod_congr' f length).symm
    _ =
        (∏ i : Fin j.val, f ⟨i.val, by omega⟩) *
        (∏ i : Fin (L - j.val),
          f ⟨j.val + i.val, by omega⟩) := by
      rw [Fin.prod_univ_add]
      congr 1

end

end QuantumParallelRepetition


open QuantumParallelRepetition
open scoped ComplexOrder Matrix BigOperators InnerProductSpace
open Complex Matrix Finset
open WithLp
open scoped BigOperators Kronecker ComplexOrder MatrixOrder

theorem solution
    {S N d L : ℕ}
    (width : Fin S → ℝ) (schedule : Fin L → Fin S)
    (ξ ζ : BipartiteUnitVector d)
    (j : Fin L)
    (selectedA selectedB : DSVUniformDensityThresholdLocalIndex N d)
    (beforeA beforeB : Fin j.val →
      DSVUniformDensityThresholdLocalIndex N d)
    (afterA afterB : Fin (L - j.val) →
      DSVUniformDensityThresholdLocalIndex N d) :
    dSVDensityRationalHeterogeneousActualPhysicalState
        N width schedule ξ ζ
        (⟨j.succ,
          directDSVSelectedCopyLocalHistoryEquiv j
            (selectedA, (beforeA, afterA))⟩,
         ⟨j.succ,
          directDSVSelectedCopyLocalHistoryEquiv j
            (selectedB, (beforeB, afterB))⟩) =
      dSVDensityRationalCompleteProjectiveOutcome
          (width (schedule j)) N ξ ζ true true
          (selectedA, selectedB) *
        dSVDensityRationalHeterogeneousStoppedCommonPrefixFailureVector
          (N := N) width schedule ξ ζ j
          (fun i => (beforeA i, beforeB i)) *
        dSVUniformDensityIndependentSharedState
          (L - j.val) N d (afterA, afterB) := by
  classical
  let a := directDSVSelectedCopyLocalHistoryEquiv j
    (selectedA, (beforeA, afterA))
  let b := directDSVSelectedCopyLocalHistoryEquiv j
    (selectedB, (beforeB, afterB))
  rw [dSVDensityRationalHeterogeneousActualCommonStopPhysicalState_eq_outcomeProduct]
  rw [Fin.prod_univ_succAbove _ j.castSucc]
  rw [directDSVRemainingCopyProductSplit j]
  rw [dSVDensityRationalHeterogeneousStoppedCommonPrefixFailureVector_apply]
  rw [dSVUniformDensityIndependentSharedState_apply]
  have hitA : a j.castSucc = selectedA :=
    directDSVSelectedCopyLocalHistoryEquiv_hit j
      selectedA beforeA afterA
  have hitB : b j.castSucc = selectedB :=
    directDSVSelectedCopyLocalHistoryEquiv_hit j
      selectedB beforeB afterB
  have selected :
      dSVDensityRationalHeterogeneousActualCommonStopScheduledOutcome
          width schedule ξ ζ j j.castSucc
          (a j.castSucc, b j.castSucc) =
        dSVDensityRationalCompleteProjectiveOutcome
          (width (schedule j)) N ξ ζ true true
          (selectedA, selectedB) := by
    rw [dSVDensityRationalHeterogeneousActualCommonStopScheduledOutcome_hit,
      hitA, hitB]
  rw [selected]
  simp only [mul_assoc]
  apply congrArg (fun t : ℂ =>
    dSVDensityRationalCompleteProjectiveOutcome
      (width (schedule j)) N ξ ζ true true
      (selectedA, selectedB) * t)
  apply congrArg₂ (fun x y : ℂ => x * y)
  · apply Finset.prod_congr rfl
    intro i _
    let k : Fin L := ⟨i.val, by omega⟩
    have earlier : k < j := by
      change i.val < j.val
      exact i.isLt
    have index : j.castSucc.succAbove k =
        (⟨i.val, by omega⟩ : Fin (L + 1)) := by
      rw [Fin.succAbove_castSucc_of_lt j k earlier]
      rfl
    change
      dSVDensityRationalHeterogeneousActualCommonStopScheduledOutcome
          width schedule ξ ζ j
          (j.castSucc.succAbove k)
          (a (j.castSucc.succAbove k),
           b (j.castSucc.succAbove k)) = _
    rw [index]
    change
      dSVDensityRationalHeterogeneousActualCommonStopScheduledOutcome
          width schedule ξ ζ j
          (⟨i.val, by omega⟩ : Fin (L + 1))
          (a ⟨i.val, by omega⟩,
           b ⟨i.val, by omega⟩) = _
    change
      dSVDensityRationalHeterogeneousActualCommonStopScheduledOutcome
          width schedule ξ ζ j
          (⟨i.val, by omega⟩ : Fin (L + 1))
          (directDSVSelectedCopyLocalHistoryEquiv j
             (selectedA, (beforeA, afterA)) ⟨i.val, by omega⟩,
           directDSVSelectedCopyLocalHistoryEquiv j
             (selectedB, (beforeB, afterB)) ⟨i.val, by omega⟩) = _
    rw [directDSVSelectedCopyLocalHistoryEquiv_before,
      directDSVSelectedCopyLocalHistoryEquiv_before]
  · apply Finset.prod_congr rfl
    intro i _
    let k : Fin L := ⟨j.val + i.val, by omega⟩
    have later : j ≤ k := by
      change j.val ≤ j.val + i.val
      omega
    have index : j.castSucc.succAbove k =
        (⟨j.val + 1 + i.val, by omega⟩ : Fin (L + 1)) := by
      rw [Fin.succAbove_castSucc_of_le j k later]
      apply Fin.ext
      change j.val + i.val + 1 = j.val + 1 + i.val
      omega
    change
      dSVDensityRationalHeterogeneousActualCommonStopScheduledOutcome
          width schedule ξ ζ j
          (j.castSucc.succAbove k)
          (a (j.castSucc.succAbove k),
           b (j.castSucc.succAbove k)) = _
    rw [index]
    change
      dSVDensityRationalHeterogeneousActualCommonStopScheduledOutcome
          width schedule ξ ζ j
          (⟨j.val + 1 + i.val, by omega⟩ : Fin (L + 1))
          (directDSVSelectedCopyLocalHistoryEquiv j
             (selectedA, (beforeA, afterA))
               ⟨j.val + 1 + i.val, by omega⟩,
           directDSVSelectedCopyLocalHistoryEquiv j
             (selectedB, (beforeB, afterB))
               ⟨j.val + 1 + i.val, by omega⟩) = _
    rw [directDSVSelectedCopyLocalHistoryEquiv_after,
      directDSVSelectedCopyLocalHistoryEquiv_after]
    have is_after :
        j.val <
          (⟨j.val + 1 + i.val, by omega⟩ : Fin (L + 1)).val := by
      change j.val < j.val + 1 + i.val
      omega
    rw [dSVDensityRationalHeterogeneousActualCommonStopScheduledOutcome_after
      width schedule ξ ζ j
      (⟨j.val + 1 + i.val, by omega⟩ : Fin (L + 1)) is_after]
