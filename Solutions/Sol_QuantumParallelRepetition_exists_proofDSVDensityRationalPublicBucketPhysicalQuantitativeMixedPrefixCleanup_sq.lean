import Definitions.Def_quantum_parallel_repetition_game
import Definitions.Def_qpr_core_29
import Theorems.Thm_QuantumParallelRepetition_exists_proofDSVDensityRationalPublicBucketPhysicalMixedPrefixCleanup_sq
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

open scoped BigOperators ComplexOrder MatrixOrder

theorem dSVDensityRationalPublicLogRank_real_log_bound
    {r s : ℝ} (positive_r : 0 < r) (positive_s : 0 < s) :
    min r s * |Real.log r - Real.log s| ≤ |r - s| := by
  have in_order :
      ∀ {x y : ℝ}, 0 < x → 0 < y → x ≤ y →
        min x y * |Real.log x - Real.log y| ≤ |x - y| := by
    intro x y positive_x positive_y ordered
    have logarithmic :=
      Real.log_le_sub_one_of_pos (div_pos positive_y positive_x)
    have monotone := Real.log_le_log positive_x ordered
    have bound : x * (Real.log y - Real.log x) ≤ y - x := by
      calc
        x * (Real.log y - Real.log x) =
            x * Real.log (y / x) := by
          rw [Real.log_div positive_y.ne' positive_x.ne']
        _ ≤ x * (y / x - 1) :=
          mul_le_mul_of_nonneg_left logarithmic positive_x.le
        _ = y - x := by
          field_simp
    calc
      min x y * |Real.log x - Real.log y| =
          x * (Real.log y - Real.log x) := by
        rw [min_eq_left ordered,
          abs_of_nonpos (sub_nonpos.mpr monotone)]
        ring
      _ ≤ y - x := bound
      _ = |x - y| := by
        rw [abs_of_nonpos (sub_nonpos.mpr ordered)]
        ring
  rcases le_total r s with ordered | ordered
  · exact in_order positive_r positive_s ordered
  · simpa [min_comm, abs_sub_comm] using
      in_order positive_s positive_r ordered

theorem dSVDensityRationalPublicLogRank_zeroSafe_nat_bound
    (r s : ℕ) :
    min (r : ℝ) (s : ℝ) *
        |Real.log ((max 1 r : ℕ) : ℝ) -
          Real.log ((max 1 s : ℕ) : ℝ)| ≤
      |(r : ℝ) - (s : ℝ)| := by
  by_cases zero_r : r = 0
  · simp [zero_r]
  by_cases zero_s : s = 0
  · simp [zero_s]
  have positive_r : 0 < r := Nat.pos_of_ne_zero zero_r
  have positive_s : 0 < s := Nat.pos_of_ne_zero zero_s
  have one_r : 1 ≤ r := positive_r
  have one_s : 1 ≤ s := positive_s
  simpa [max_eq_right one_r, max_eq_right one_s] using
    (dSVDensityRationalPublicLogRank_real_log_bound
      (by exact_mod_cast positive_r : (0 : ℝ) < r)
      (by exact_mod_cast positive_s : (0 : ℝ) < s))

theorem dSVDensityRationalPublicLogRank_zeroSafe_fin_bound
    {N : ℕ} (r s : Fin (N + 1)) :
    min (r.val : ℝ) (s.val : ℝ) *
        |Real.log ((max 1 r.val : ℕ) : ℝ) -
          Real.log ((max 1 s.val : ℕ) : ℝ)| ≤
      |(r.val : ℝ) - (s.val : ℝ)| :=
  dSVDensityRationalPublicLogRank_zeroSafe_nat_bound
    r.val s.val

theorem dSVDensityRationalPublicLogRankPhaseWeight_sum
    {B : ℕ} (positive : 0 < B) :
    (∑ phase : Fin B,
      dSVDensityRationalPublicLogRankPhaseWeight B phase) = 1 := by
  have real_positive : (0 : ℝ) < (B : ℝ) := by
    exact_mod_cast positive
  simp [dSVDensityRationalPublicLogRankPhaseWeight,
    real_positive.ne']

theorem dSVDensityRationalPublicLogRankBucket_fineLabel_sub_lt
    {N B : ℕ} (Q : ℕ) (phase : Fin B)
    (r s : Fin (N + 1))
    (nonzero_r : r.val ≠ 0) (nonzero_s : s.val ≠ 0)
    (same :
      dSVDensityRationalPublicLogRankBucket Q phase r =
        dSVDensityRationalPublicLogRankBucket Q phase s) :
    |(dSVDensityRationalPublicLogRankFineLabel Q r : ℝ) -
      (dSVDensityRationalPublicLogRankFineLabel Q s : ℝ)| <
      (B : ℝ) := by
  have positive : 0 < B := by
    have bound := phase.isLt
    omega
  have quotient :
      (dSVDensityRationalPublicLogRankFineLabel Q r +
        phase.val) / B =
      (dSVDensityRationalPublicLogRankFineLabel Q s +
        phase.val) / B := by
    simpa [dSVDensityRationalPublicLogRankBucket,
      nonzero_r, nonzero_s] using same
  have remainder_r := Nat.mod_lt
    (dSVDensityRationalPublicLogRankFineLabel Q r + phase.val)
    positive
  have remainder_s := Nat.mod_lt
    (dSVDensityRationalPublicLogRankFineLabel Q s + phase.val)
    positive
  have reconstruction_r := Nat.mod_add_div
    (dSVDensityRationalPublicLogRankFineLabel Q r + phase.val) B
  have reconstruction_s := Nat.mod_add_div
    (dSVDensityRationalPublicLogRankFineLabel Q s + phase.val) B
  rw [quotient] at reconstruction_r
  rcases le_total
    (dSVDensityRationalPublicLogRankFineLabel Q r)
    (dSVDensityRationalPublicLogRankFineLabel Q s)
    with ordered | ordered
  · have difference :
        dSVDensityRationalPublicLogRankFineLabel Q s -
          dSVDensityRationalPublicLogRankFineLabel Q r < B := by
      omega
    have real_difference :
        (dSVDensityRationalPublicLogRankFineLabel Q s : ℝ) -
          (dSVDensityRationalPublicLogRankFineLabel Q r : ℝ) <
            (B : ℝ) := by
      exact_mod_cast difference
    rw [abs_of_nonpos
      (sub_nonpos.mpr (by exact_mod_cast ordered))]
    linarith
  · have difference :
        dSVDensityRationalPublicLogRankFineLabel Q r -
          dSVDensityRationalPublicLogRankFineLabel Q s < B := by
      omega
    have real_difference :
        (dSVDensityRationalPublicLogRankFineLabel Q r : ℝ) -
          (dSVDensityRationalPublicLogRankFineLabel Q s : ℝ) <
            (B : ℝ) := by
      exact_mod_cast difference
    rw [abs_of_nonneg
      (sub_nonneg.mpr (by exact_mod_cast ordered))]
    exact real_difference

theorem dSVDensityRationalPublicLogRank_logCoordinate_nonneg
    {N : ℕ} (Q : ℕ) (r : Fin (N + 1)) :
    0 ≤ (Q : ℝ) * Real.log ((max 1 r.val : ℕ) : ℝ) := by
  apply mul_nonneg (Nat.cast_nonneg Q)
  apply Real.log_nonneg
  exact_mod_cast (le_max_left 1 r.val)

theorem dSVDensityRationalPublicLogRankFineLabel_bounds
    {N : ℕ} (Q : ℕ) (r : Fin (N + 1)) :
    (dSVDensityRationalPublicLogRankFineLabel Q r : ℝ) ≤
        (Q : ℝ) * Real.log ((max 1 r.val : ℕ) : ℝ) ∧
      (Q : ℝ) * Real.log ((max 1 r.val : ℕ) : ℝ) <
        (dSVDensityRationalPublicLogRankFineLabel Q r : ℝ) + 1 := by
  constructor
  · exact Nat.floor_le
      (dSVDensityRationalPublicLogRank_logCoordinate_nonneg Q r)
  · exact Nat.lt_floor_add_one _

theorem dSVDensityRationalPublicLogRankBucket_log_sub_lt
    {N B : ℕ} {Q : ℕ} (positive_Q : 0 < Q)
    (phase : Fin B) (r s : Fin (N + 1))
    (nonzero_r : r.val ≠ 0) (nonzero_s : s.val ≠ 0)
    (same :
      dSVDensityRationalPublicLogRankBucket Q phase r =
        dSVDensityRationalPublicLogRankBucket Q phase s) :
    |Real.log ((max 1 r.val : ℕ) : ℝ) -
      Real.log ((max 1 s.val : ℕ) : ℝ)| <
      ((B : ℝ) + 1) / (Q : ℝ) := by
  have real_Q : (0 : ℝ) < (Q : ℝ) := by
    exact_mod_cast positive_Q
  have rank_bounds :=
    dSVDensityRationalPublicLogRankFineLabel_bounds Q r
  have other_bounds :=
    dSVDensityRationalPublicLogRankFineLabel_bounds Q s
  have bucket_bounds :=
    dSVDensityRationalPublicLogRankBucket_fineLabel_sub_lt
      Q phase r s nonzero_r nonzero_s same
  apply (lt_div_iff₀ real_Q).2
  rcases le_total
      (Real.log ((max 1 r.val : ℕ) : ℝ))
      (Real.log ((max 1 s.val : ℕ) : ℝ)) with ordered | ordered
  · rw [abs_of_nonpos (sub_nonpos.mpr ordered)]
    have integer_order := (abs_lt.mp bucket_bounds).1
    nlinarith [rank_bounds.1, other_bounds.2]
  · rw [abs_of_nonneg (sub_nonneg.mpr ordered)]
    have integer_order := (abs_lt.mp bucket_bounds).2
    nlinarith [rank_bounds.2, other_bounds.1]

theorem dSVDensityRationalPublicLogRankBucketFiber_mem
    {N B : ℕ} (Q : ℕ) (phase : Fin B) (label : Option ℕ)
    (r : Fin (N + 1)) :
    r ∈ dSVDensityRationalPublicLogRankBucketFiber
        Q phase label ↔
      r.val ≠ 0 ∧
        dSVDensityRationalPublicLogRankBucket Q phase r = label := by
  simp [dSVDensityRationalPublicLogRankBucketFiber]

theorem dSVDensityRationalPublicLogRankBucketRepresentative_mem
    {N B : ℕ} (Q : ℕ) (phase : Fin B) (label : Option ℕ)
    (present :
      (dSVDensityRationalPublicLogRankBucketFiber
        (N := N) Q phase label).Nonempty) :
    dSVDensityRationalPublicLogRankBucketRepresentative
        (N := N) Q phase label ∈
      dSVDensityRationalPublicLogRankBucketFiber
        (N := N) Q phase label := by
  simpa [dSVDensityRationalPublicLogRankBucketRepresentative,
    present] using
    (Finset.min'_mem
      (dSVDensityRationalPublicLogRankBucketFiber
        (N := N) Q phase label) present)

theorem dSVDensityRationalPublicLogRankBucketRepresentative_same
    {N B : ℕ} (Q : ℕ) (phase : Fin B)
    (r : Fin (N + 1)) (nonzero : r.val ≠ 0) :
    (dSVDensityRationalPublicLogRankBucketRepresentative
        (N := N) Q phase
          (dSVDensityRationalPublicLogRankBucket
            Q phase r)).val ≠ 0 ∧
      dSVDensityRationalPublicLogRankBucket Q phase
        (dSVDensityRationalPublicLogRankBucketRepresentative
          (N := N) Q phase
            (dSVDensityRationalPublicLogRankBucket
              Q phase r)) =
        dSVDensityRationalPublicLogRankBucket Q phase r := by
  have member :
      r ∈ dSVDensityRationalPublicLogRankBucketFiber
        Q phase
          (dSVDensityRationalPublicLogRankBucket
            Q phase r) :=
    (dSVDensityRationalPublicLogRankBucketFiber_mem
      Q phase _ r).mpr ⟨nonzero, rfl⟩
  have present :
      (dSVDensityRationalPublicLogRankBucketFiber
        Q phase
          (dSVDensityRationalPublicLogRankBucket
            Q phase r)).Nonempty := ⟨r, member⟩
  exact
    (dSVDensityRationalPublicLogRankBucketFiber_mem
      Q phase _ _).mp
      (dSVDensityRationalPublicLogRankBucketRepresentative_mem
        (N := N) Q phase _ present)

theorem dSVDensityRationalPublicLogRankBucketRepresentative_le
    {N B : ℕ} (Q : ℕ) (phase : Fin B)
    (r : Fin (N + 1)) (nonzero : r.val ≠ 0) :
    dSVDensityRationalPublicLogRankBucketRepresentative
        (N := N) Q phase
          (dSVDensityRationalPublicLogRankBucket
            Q phase r) ≤ r := by
  have member :
      r ∈ dSVDensityRationalPublicLogRankBucketFiber
        Q phase
          (dSVDensityRationalPublicLogRankBucket
            Q phase r) :=
    (dSVDensityRationalPublicLogRankBucketFiber_mem
      Q phase _ r).mpr ⟨nonzero, rfl⟩
  have present :
      (dSVDensityRationalPublicLogRankBucketFiber
        Q phase
          (dSVDensityRationalPublicLogRankBucket
            Q phase r)).Nonempty := ⟨r, member⟩
  simp only
    [dSVDensityRationalPublicLogRankBucketRepresentative,
      dif_pos present]
  exact Finset.min'_le _ r member

theorem dSVDensityRationalPublicLogRankBucketRepresentative_log_sub_lt
    {N B : ℕ} {Q : ℕ} (positive_Q : 0 < Q)
    (phase : Fin B) (r : Fin (N + 1)) (nonzero : r.val ≠ 0) :
    |Real.log ((max 1 r.val : ℕ) : ℝ) -
      Real.log
        ((max 1
          (dSVDensityRationalPublicLogRankBucketRepresentative
            (N := N) Q phase
              (dSVDensityRationalPublicLogRankBucket
                Q phase r)).val : ℕ) : ℝ)| <
      ((B : ℝ) + 1) / (Q : ℝ) := by
  have same :=
    dSVDensityRationalPublicLogRankBucketRepresentative_same
      Q phase r nonzero
  exact dSVDensityRationalPublicLogRankBucket_log_sub_lt
    positive_Q phase r _ nonzero same.1 same.2.symm

end

noncomputable section

open scoped BigOperators

theorem dSVDensityRationalPublicShiftedResidue_sum
    {B : ℕ} (positive : 0 < B) (a : ℕ) :
    (∑ phase : Fin B, (a + phase.val) % B) =
      ∑ phase : Fin B, phase.val := by
  letI : NeZero B := ⟨Nat.ne_of_gt positive⟩
  let offset : Fin B := ⟨a % B, Nat.mod_lt a positive⟩
  calc
    (∑ phase : Fin B, (a + phase.val) % B) =
        ∑ phase : Fin B, (offset + phase).val := by
      apply Finset.sum_congr rfl
      intro phase _
      simp [offset, Fin.val_add, Nat.add_mod]
    _ = ∑ phase : Fin B, phase.val := by
      apply Fintype.sum_equiv (Equiv.addLeft offset)
      intro phase
      rfl

theorem dSVDensityRationalPublicShiftedQuotient_sum
    {B : ℕ} (positive : 0 < B) (a : ℕ) :
    (∑ phase : Fin B, (a + phase.val) / B) = a := by
  have decomposition :
      (∑ phase : Fin B, (a + phase.val) % B) +
          B * (∑ phase : Fin B, (a + phase.val) / B) =
        B * a + ∑ phase : Fin B, phase.val := by
    calc
      (∑ phase : Fin B, (a + phase.val) % B) +
            B * (∑ phase : Fin B, (a + phase.val) / B) =
          ∑ phase : Fin B,
            ((a + phase.val) % B + B * ((a + phase.val) / B)) := by
        rw [Finset.sum_add_distrib, Finset.mul_sum]
      _ = ∑ phase : Fin B, (a + phase.val) := by
        apply Finset.sum_congr rfl
        intro phase _
        exact Nat.mod_add_div (a + phase.val) B
      _ = B * a + ∑ phase : Fin B, phase.val := by
        simp [Finset.sum_add_distrib]
  rw [dSVDensityRationalPublicShiftedResidue_sum
    positive a] at decomposition
  have cancelled :
      B * (∑ phase : Fin B, (a + phase.val) / B) = B * a := by
    apply Nat.add_left_cancel
    calc
      (∑ phase : Fin B, phase.val) +
          B * (∑ phase : Fin B, (a + phase.val) / B) =
        B * a + ∑ phase : Fin B, phase.val := decomposition
      _ = (∑ phase : Fin B, phase.val) + B * a := by
        omega
  exact Nat.mul_left_cancel positive cancelled

theorem dSVDensityRationalPublicShiftedQuotient_real_sum
    {B : ℕ} (positive : 0 < B) (a : ℕ) :
    (∑ phase : Fin B, (((a + phase.val) / B : ℕ) : ℝ)) =
      (a : ℝ) := by
  exact_mod_cast
    dSVDensityRationalPublicShiftedQuotient_sum positive a

theorem dSVDensityRationalPublicShiftedBucketMismatch_sum_le
    {B : ℕ} (positive : 0 < B) (a b : ℕ) :
    (∑ phase : Fin B,
      if (a + phase.val) / B = (b + phase.val) / B
      then (0 : ℝ) else 1) ≤
      |(a : ℝ) - (b : ℝ)| := by
  have ordered_bound :
      ∀ x y : ℕ, x ≤ y →
        (∑ phase : Fin B,
          if (x + phase.val) / B = (y + phase.val) / B
          then (0 : ℝ) else 1) ≤ (y : ℝ) - (x : ℝ) := by
    intro x y ordered
    calc
      (∑ phase : Fin B,
        if (x + phase.val) / B = (y + phase.val) / B
        then (0 : ℝ) else 1) ≤
          ∑ phase : Fin B,
            ((((y + phase.val) / B : ℕ) : ℝ) -
              (((x + phase.val) / B : ℕ) : ℝ)) := by
        apply Finset.sum_le_sum
        intro phase _
        have monotone :
            (x + phase.val) / B ≤ (y + phase.val) / B :=
          Nat.div_le_div_right (Nat.add_le_add_right ordered _)
        by_cases same :
            (x + phase.val) / B = (y + phase.val) / B
        · simp [same]
        · simp only [same, if_false]
          have strictly :
              (x + phase.val) / B < (y + phase.val) / B :=
            lt_of_le_of_ne monotone same
          have cast_bound :
              (((x + phase.val) / B : ℕ) : ℝ) + 1 ≤
                (((y + phase.val) / B : ℕ) : ℝ) := by
            exact_mod_cast Nat.succ_le_of_lt strictly
          linarith
      _ = (y : ℝ) - (x : ℝ) := by
        rw [Finset.sum_sub_distrib,
          dSVDensityRationalPublicShiftedQuotient_real_sum
            positive y,
          dSVDensityRationalPublicShiftedQuotient_real_sum
            positive x]
  rcases le_total a b with ordered | ordered
  · simpa [abs_of_nonpos (sub_nonpos.mpr
        (by exact_mod_cast ordered : (a : ℝ) ≤ b))] using
      ordered_bound a b ordered
  · have bound := ordered_bound b a ordered
    have same_sum :
        (∑ phase : Fin B,
          if (a + phase.val) / B = (b + phase.val) / B
          then (0 : ℝ) else 1) =
        ∑ phase : Fin B,
          if (b + phase.val) / B = (a + phase.val) / B
          then (0 : ℝ) else 1 := by
      apply Finset.sum_congr rfl
      intro phase _
      by_cases same :
          (a + phase.val) / B = (b + phase.val) / B
      · simp only [if_pos same, if_pos same.symm]
      · have reversed :
            (b + phase.val) / B ≠ (a + phase.val) / B :=
          Ne.symm same
        simp only [if_neg same, if_neg reversed]
    rw [same_sum]
    simpa [abs_of_nonneg (sub_nonneg.mpr
        (by exact_mod_cast ordered : (b : ℝ) ≤ a))] using bound

theorem dSVDensityRationalPublicShiftedBucketMismatch_average_le
    {B : ℕ} (positive : 0 < B) (a b : ℕ) :
    (∑ phase : Fin B,
      (1 / (B : ℝ)) *
        (if (a + phase.val) / B = (b + phase.val) / B
         then (0 : ℝ) else 1)) ≤
      |(a : ℝ) - (b : ℝ)| / (B : ℝ) := by
  rw [← Finset.mul_sum]
  have bound :=
    dSVDensityRationalPublicShiftedBucketMismatch_sum_le
      positive a b
  calc
    (1 / (B : ℝ)) *
        (∑ phase : Fin B,
          if (a + phase.val) / B = (b + phase.val) / B
          then (0 : ℝ) else 1) ≤
      (1 / (B : ℝ)) * |(a : ℝ) - (b : ℝ)| := by
        gcongr
    _ = |(a : ℝ) - (b : ℝ)| / (B : ℝ) := by
      ring

end

noncomputable section

open scoped BigOperators ComplexOrder MatrixOrder

theorem dSVDensityRationalPublicLogRankPhaseWeightedCrossing_nonneg
    {N : ℕ} (Q B : ℕ) (r s : Fin (N + 1)) :
    0 ≤ dSVDensityRationalPublicLogRankPhaseWeightedCrossing
      Q B r s := by
  unfold dSVDensityRationalPublicLogRankPhaseWeightedCrossing
  apply Finset.sum_nonneg
  intro phase _
  unfold dSVDensityRationalPublicLogRankPhaseWeight
  split <;> positivity

theorem
    dSVDensityRationalPublicLogRankPhaseWeightedCrossing_le_fineLabel
    {N B : ℕ} (positive : 0 < B) (Q : ℕ)
    (r s : Fin (N + 1))
    (nonzero_r : r.val ≠ 0) (nonzero_s : s.val ≠ 0) :
    dSVDensityRationalPublicLogRankPhaseWeightedCrossing
        Q B r s ≤
      |(dSVDensityRationalPublicLogRankFineLabel Q r : ℝ) -
        (dSVDensityRationalPublicLogRankFineLabel Q s : ℝ)| /
          (B : ℝ) := by
  simpa [dSVDensityRationalPublicLogRankPhaseWeightedCrossing,
    dSVDensityRationalPublicLogRankPhaseWeight,
    dSVDensityRationalPublicLogRankBucket,
    nonzero_r, nonzero_s] using
      (dSVDensityRationalPublicShiftedBucketMismatch_average_le
        positive
        (dSVDensityRationalPublicLogRankFineLabel Q r)
        (dSVDensityRationalPublicLogRankFineLabel Q s))

theorem dSVDensityRationalPublicLogRankFineLabel_abs_sub_le
    {N : ℕ} (Q : ℕ) (r s : Fin (N + 1)) :
    |(dSVDensityRationalPublicLogRankFineLabel Q r : ℝ) -
      (dSVDensityRationalPublicLogRankFineLabel Q s : ℝ)| ≤
      (Q : ℝ) *
        |Real.log ((max 1 r.val : ℕ) : ℝ) -
          Real.log ((max 1 s.val : ℕ) : ℝ)| + 1 := by
  have first :=
    dSVDensityRationalPublicLogRankFineLabel_bounds Q r
  have second :=
    dSVDensityRationalPublicLogRankFineLabel_bounds Q s
  have scaled :
      |(Q : ℝ) * Real.log ((max 1 r.val : ℕ) : ℝ) -
        (Q : ℝ) * Real.log ((max 1 s.val : ℕ) : ℝ)| =
      (Q : ℝ) *
        |Real.log ((max 1 r.val : ℕ) : ℝ) -
          Real.log ((max 1 s.val : ℕ) : ℝ)| := by
    rw [← mul_sub, abs_mul, abs_of_nonneg (Nat.cast_nonneg Q)]
  rw [← scaled]
  apply abs_le.mpr
  constructor
  · have lower := neg_le_abs
      ((Q : ℝ) * Real.log ((max 1 r.val : ℕ) : ℝ) -
        (Q : ℝ) * Real.log ((max 1 s.val : ℕ) : ℝ))
    linarith [first.2, second.1]
  · have upper := le_abs_self
      ((Q : ℝ) * Real.log ((max 1 r.val : ℕ) : ℝ) -
        (Q : ℝ) * Real.log ((max 1 s.val : ℕ) : ℝ))
    linarith [first.1, second.2]

theorem
    dSVDensityRationalPublicLogRankPhaseWeightedCrossing_min_le
    {N B : ℕ} (positive : 0 < B) (Q : ℕ)
    (r s : Fin (N + 1)) :
    min (r.val : ℝ) (s.val : ℝ) *
        dSVDensityRationalPublicLogRankPhaseWeightedCrossing
          Q B r s ≤
      (Q : ℝ) / (B : ℝ) * |(r.val : ℝ) - (s.val : ℝ)| +
        min (r.val : ℝ) (s.val : ℝ) / (B : ℝ) := by
  by_cases zero_r : r.val = 0
  · simp [zero_r]
    positivity
  by_cases zero_s : s.val = 0
  · simp [zero_s]
    positivity
  have positive_real : (0 : ℝ) < (B : ℝ) := by
    exact_mod_cast positive
  have common_nonnegative :
      0 ≤ min (r.val : ℝ) (s.val : ℝ) :=
    le_min (Nat.cast_nonneg _) (Nat.cast_nonneg _)
  have finite_crossing :=
    dSVDensityRationalPublicLogRankPhaseWeightedCrossing_le_fineLabel
      positive Q r s zero_r zero_s
  have floor_error :=
    dSVDensityRationalPublicLogRankFineLabel_abs_sub_le Q r s
  have logarithmic :=
    dSVDensityRationalPublicLogRank_zeroSafe_fin_bound r s
  calc
    min (r.val : ℝ) (s.val : ℝ) *
        dSVDensityRationalPublicLogRankPhaseWeightedCrossing
          Q B r s ≤
      min (r.val : ℝ) (s.val : ℝ) *
        (|(dSVDensityRationalPublicLogRankFineLabel Q r : ℝ) -
          (dSVDensityRationalPublicLogRankFineLabel Q s : ℝ)| /
            (B : ℝ)) :=
      mul_le_mul_of_nonneg_left finite_crossing common_nonnegative
    _ ≤ min (r.val : ℝ) (s.val : ℝ) *
        (((Q : ℝ) *
          |Real.log ((max 1 r.val : ℕ) : ℝ) -
            Real.log ((max 1 s.val : ℕ) : ℝ)| + 1) / (B : ℝ)) := by
      apply mul_le_mul_of_nonneg_left _ common_nonnegative
      exact div_le_div_of_nonneg_right floor_error positive_real.le
    _ = (Q : ℝ) / (B : ℝ) *
          (min (r.val : ℝ) (s.val : ℝ) *
            |Real.log ((max 1 r.val : ℕ) : ℝ) -
              Real.log ((max 1 s.val : ℕ) : ℝ)|) +
          min (r.val : ℝ) (s.val : ℝ) / (B : ℝ) := by
      ring
    _ ≤ (Q : ℝ) / (B : ℝ) *
          |(r.val : ℝ) - (s.val : ℝ)| +
          min (r.val : ℝ) (s.val : ℝ) / (B : ℝ) := by
      have scaled := mul_le_mul_of_nonneg_left logarithmic
        (div_nonneg (Nat.cast_nonneg Q) positive_real.le)
      linarith

end

noncomputable section

open scoped BigOperators Kronecker ComplexOrder MatrixOrder

theorem
    dSVDensityRationalPublicLogRankBucketRepresentative_val_pos
    {N B : ℕ} (Q : ℕ) (phase : Fin B)
    (r : Fin (N + 1)) (nonzero : r.val ≠ 0) :
    0 < (dSVDensityRationalPublicLogRankBucketRepresentative
      (N := N) Q phase
        (dSVDensityRationalPublicLogRankBucket
          Q phase r)).val := by
  exact Nat.pos_of_ne_zero
    (dSVDensityRationalPublicLogRankBucketRepresentative_same
      Q phase r nonzero).1

theorem
    dSVDensityRationalPublicLogRankBucketRepresentative_actual_log_sub_lt
    {N B : ℕ} {Q : ℕ} (positive_Q : 0 < Q)
    (phase : Fin B) (r : Fin (N + 1)) (nonzero : r.val ≠ 0) :
    |Real.log (r.val : ℝ) -
      Real.log
        ((dSVDensityRationalPublicLogRankBucketRepresentative
          (N := N) Q phase
            (dSVDensityRationalPublicLogRankBucket
              Q phase r)).val : ℝ)| <
      ((B : ℝ) + 1) / (Q : ℝ) := by
  have one_r : 1 ≤ r.val := Nat.one_le_iff_ne_zero.mpr nonzero
  have one_representative :
      1 ≤ (dSVDensityRationalPublicLogRankBucketRepresentative
        (N := N) Q phase
          (dSVDensityRationalPublicLogRankBucket
            Q phase r)).val :=
    dSVDensityRationalPublicLogRankBucketRepresentative_val_pos
      Q phase r nonzero
  simpa [max_eq_right one_r, max_eq_right one_representative] using
    (dSVDensityRationalPublicLogRankBucketRepresentative_log_sub_lt
      positive_Q phase r nonzero)

theorem
    dSVDensityRationalPublicLogRankBucketRepresentative_rank_ratio_lt
    {N B : ℕ} {Q : ℕ} (positive_Q : 0 < Q)
    (phase : Fin B) (r : Fin (N + 1)) (nonzero : r.val ≠ 0) :
    (r.val : ℝ) /
        ((dSVDensityRationalPublicLogRankBucketRepresentative
          (N := N) Q phase
            (dSVDensityRationalPublicLogRankBucket
              Q phase r)).val : ℝ) <
      Real.exp (((B : ℝ) + 1) / (Q : ℝ)) := by
  let representative : Fin (N + 1) :=
    dSVDensityRationalPublicLogRankBucketRepresentative
      (N := N) Q phase
        (dSVDensityRationalPublicLogRankBucket Q phase r)
  have positive_r : (0 : ℝ) < (r.val : ℝ) := by
    exact_mod_cast (Nat.pos_of_ne_zero nonzero)
  have positive_representative_nat : 0 < representative.val := by
    dsimp [representative]
    exact
      dSVDensityRationalPublicLogRankBucketRepresentative_val_pos
        Q phase r nonzero
  have positive_representative :
      (0 : ℝ) < (representative.val : ℝ) := by
    exact_mod_cast positive_representative_nat
  have diameter :=
    dSVDensityRationalPublicLogRankBucketRepresentative_actual_log_sub_lt
      positive_Q phase r nonzero
  change
    |Real.log (r.val : ℝ) - Real.log (representative.val : ℝ)| <
      ((B : ℝ) + 1) / (Q : ℝ) at diameter
  have logarithmic :
      Real.log (r.val : ℝ) - Real.log (representative.val : ℝ) <
        ((B : ℝ) + 1) / (Q : ℝ) :=
    lt_of_le_of_lt (le_abs_self _) diameter
  have exponential := (Real.exp_lt_exp).mpr logarithmic
  rw [← Real.log_div positive_r.ne' positive_representative.ne',
    Real.exp_log (div_pos positive_r positive_representative)] at exponential
  exact exponential

theorem
    dSVDensityRationalPublicLogRankBucketRepresentative_relative_sub_lt
    {N B : ℕ} {Q : ℕ} (positive_Q : 0 < Q)
    (phase : Fin B) (r : Fin (N + 1)) (nonzero : r.val ≠ 0) :
    ((r.val : ℝ) -
      ((dSVDensityRationalPublicLogRankBucketRepresentative
        (N := N) Q phase
          (dSVDensityRationalPublicLogRankBucket
            Q phase r)).val : ℝ)) /
      ((dSVDensityRationalPublicLogRankBucketRepresentative
        (N := N) Q phase
          (dSVDensityRationalPublicLogRankBucket
            Q phase r)).val : ℝ) <
      Real.exp (((B : ℝ) + 1) / (Q : ℝ)) - 1 := by
  let representative : Fin (N + 1) :=
    dSVDensityRationalPublicLogRankBucketRepresentative
      (N := N) Q phase
        (dSVDensityRationalPublicLogRankBucket Q phase r)
  have positive_representative_nat : 0 < representative.val := by
    dsimp [representative]
    exact
      dSVDensityRationalPublicLogRankBucketRepresentative_val_pos
        Q phase r nonzero
  have positive_representative :
      (0 : ℝ) < (representative.val : ℝ) := by
    exact_mod_cast positive_representative_nat
  have ratio :=
    dSVDensityRationalPublicLogRankBucketRepresentative_rank_ratio_lt
      positive_Q phase r nonzero
  change
    (r.val : ℝ) / (representative.val : ℝ) <
      Real.exp (((B : ℝ) + 1) / (Q : ℝ)) at ratio
  change
    ((r.val : ℝ) - (representative.val : ℝ)) /
        (representative.val : ℝ) <
      Real.exp (((B : ℝ) + 1) / (Q : ℝ)) - 1
  rw [sub_div, div_self positive_representative.ne']
  linarith

theorem
    dSVDensityRationalPublicLogRankBucketRepresentative_relative_abs_lt
    {N B : ℕ} {Q : ℕ} (positive_Q : 0 < Q)
    (phase : Fin B) (r : Fin (N + 1)) (nonzero : r.val ≠ 0) :
    |(r.val : ℝ) -
      ((dSVDensityRationalPublicLogRankBucketRepresentative
        (N := N) Q phase
          (dSVDensityRationalPublicLogRankBucket
            Q phase r)).val : ℝ)| /
      ((max 1
        (min r.val
          (dSVDensityRationalPublicLogRankBucketRepresentative
            (N := N) Q phase
              (dSVDensityRationalPublicLogRankBucket
                Q phase r)).val) : ℕ) : ℝ) <
      Real.exp (((B : ℝ) + 1) / (Q : ℝ)) - 1 := by
  let representative : Fin (N + 1) :=
    dSVDensityRationalPublicLogRankBucketRepresentative
      (N := N) Q phase
        (dSVDensityRationalPublicLogRankBucket Q phase r)
  have ordered : representative.val ≤ r.val := by
    exact
      dSVDensityRationalPublicLogRankBucketRepresentative_le
        Q phase r nonzero
  have one_representative : 1 ≤ representative.val := by
    dsimp [representative]
    exact
      dSVDensityRationalPublicLogRankBucketRepresentative_val_pos
        Q phase r nonzero
  have real_ordered : (representative.val : ℝ) ≤ (r.val : ℝ) := by
    exact_mod_cast ordered
  have relative :=
    dSVDensityRationalPublicLogRankBucketRepresentative_relative_sub_lt
      positive_Q phase r nonzero
  change
    ((r.val : ℝ) - (representative.val : ℝ)) /
        (representative.val : ℝ) <
      Real.exp (((B : ℝ) + 1) / (Q : ℝ)) - 1 at relative
  change
    |(r.val : ℝ) - (representative.val : ℝ)| /
        ((max 1 (min r.val representative.val) : ℕ) : ℝ) <
      Real.exp (((B : ℝ) + 1) / (Q : ℝ)) - 1
  simpa [min_eq_right ordered, max_eq_right one_representative,
    abs_of_nonneg (sub_nonneg.mpr real_ordered)] using relative

end

noncomputable section

open WithLp
open scoped BigOperators Kronecker ComplexOrder MatrixOrder

theorem dSVDensityRationalPublicLogRankPhaseWeightedCrossing_le_one
    {N B : ℕ} (positive : 0 < B) (Q : ℕ)
    (r s : Fin (N + 1)) :
    dSVDensityRationalPublicLogRankPhaseWeightedCrossing
        Q B r s ≤ 1 := by
  unfold dSVDensityRationalPublicLogRankPhaseWeightedCrossing
  calc
    _ ≤ ∑ phase : Fin B,
        dSVDensityRationalPublicLogRankPhaseWeight B phase := by
      apply Finset.sum_le_sum
      intro phase _
      split_ifs <;>
        simp [dSVDensityRationalPublicLogRankPhaseWeight]
    _ = 1 :=
      dSVDensityRationalPublicLogRankPhaseWeight_sum positive

theorem
    dSVDensityRationalPublicLogRankPhaseWeightedCrossing_alice_le
    {N B : ℕ} (positive : 0 < B) (Q : ℕ)
    (r s : Fin (N + 1)) :
    (r.val : ℝ) *
        dSVDensityRationalPublicLogRankPhaseWeightedCrossing
          Q B r s ≤
      ((Q : ℝ) / (B : ℝ) + 1) *
          |(r.val : ℝ) - (s.val : ℝ)| +
        min (r.val : ℝ) (s.val : ℝ) / (B : ℝ) := by
  let x :=
    dSVDensityRationalPublicLogRankPhaseWeightedCrossing
      Q B r s
  let m : ℝ := min (r.val : ℝ) (s.val : ℝ)
  let t : ℝ := |(r.val : ℝ) - (s.val : ℝ)|
  have nonnegative : 0 ≤ x :=
    dSVDensityRationalPublicLogRankPhaseWeightedCrossing_nonneg
      Q B r s
  have probability : x ≤ 1 :=
    dSVDensityRationalPublicLogRankPhaseWeightedCrossing_le_one
      positive Q r s
  have min_le : m ≤ (r.val : ℝ) := min_le_left _ _
  have difference : (r.val : ℝ) - m ≤ t := by
    dsimp [m, t]
    rcases le_total (r.val : ℝ) (s.val : ℝ) with ordered | ordered
    · rw [min_eq_left ordered]
      simp
    · rw [min_eq_right ordered, abs_of_nonneg
        (sub_nonneg.mpr ordered)]
  have extra : ((r.val : ℝ) - m) * x ≤ t := by
    calc
      _ ≤ ((r.val : ℝ) - m) * 1 :=
        mul_le_mul_of_nonneg_left probability
          (sub_nonneg.mpr min_le)
      _ ≤ t := by simpa using difference
  have main :=
    dSVDensityRationalPublicLogRankPhaseWeightedCrossing_min_le
      positive Q r s
  change m * x ≤ (Q : ℝ) / (B : ℝ) * t + m / (B : ℝ)
    at main
  change (r.val : ℝ) * x ≤
    ((Q : ℝ) / (B : ℝ) + 1) * t + m / (B : ℝ)
  nlinarith

end

end QuantumParallelRepetition


open QuantumParallelRepetition
open scoped ComplexOrder Matrix BigOperators InnerProductSpace
open Complex Matrix Finset
open WithLp
open scoped BigOperators Kronecker ComplexOrder MatrixOrder

theorem
    solution
    {N B : ℕ} (grid : 0 < N) (phases : 0 < B)
    {Q : ℕ} (fine : 0 < Q)
    (ε : ℝ) (precision : 0 < ε) :
    ∃ n : ℕ, 0 < n ∧
      ∃ A C : Fin B → Option ℕ →
          Matrix.unitaryGroup (Fin (N * n)) ℂ,
        ∀ (r s : Fin (N + 1)),
          (∑ phase : Fin B,
            dSVDensityRationalPublicLogRankPhaseWeight B phase *
              ‖localUnitaryAction
                  (A phase
                    (dSVDensityRationalPublicLogRankBucket
                      Q phase r))
                  (C phase
                    (dSVDensityRationalPublicLogRankBucket
                      Q phase s))
                  (dSVDensityRationalMixedCanonicalPrefixPureHarmonicTensor
                    n (dSVCanonicalFailurePrefix
                      (dSVDensityRationalPublicBucketPhysicalCommonRank
                        r s))) -
                Real.sqrt (r.val : ℝ) •
                  embezzlementState (N * n)‖ ^ 2) ≤
            2 * |(r.val : ℝ) - (s.val : ℝ)| +
            4 * (r.val : ℝ) * ε ^ 2 +
            16 * (r.val : ℝ) *
              (Real.exp (((B : ℝ) + 1) / (Q : ℝ)) - 1) +
            8 * (((Q : ℝ) / (B : ℝ) + 1) *
              |(r.val : ℝ) - (s.val : ℝ)| +
              min (r.val : ℝ) (s.val : ℝ) / (B : ℝ)) := by
  let bucket : Fin B → Fin (N + 1) → Option ℕ :=
    dSVDensityRationalPublicLogRankBucket Q
  let representative : Fin B → Option ℕ → Fin (N + 1) :=
    dSVDensityRationalPublicLogRankBucketRepresentative Q
  obtain ⟨n, positive, A, C, accurate⟩ :=
    exists_proofDSVDensityRationalPublicBucketPhysicalMixedPrefixCleanup_sq
      grid bucket representative ε precision
  refine ⟨n, positive, A, C, ?_⟩
  intro r s
  let gap : ℝ := |(r.val : ℝ) - (s.val : ℝ)|
  let radius : ℝ :=
    Real.exp (((B : ℝ) + 1) / (Q : ℝ)) - 1
  let base : ℝ :=
    2 * gap + 4 * (r.val : ℝ) * ε ^ 2 +
      16 * (r.val : ℝ) * radius
  have representative_bound (phase : Fin B) :
      (r.val : ℝ) *
          (|(r.val : ℝ) -
            ((representative phase (bucket phase r)).val : ℝ)| /
            ((max 1
              (min r.val
                (representative phase (bucket phase r)).val) : ℕ) : ℝ)) ≤
        (r.val : ℝ) * radius := by
    by_cases zero : r.val = 0
    · simp [zero]
    · have actual :=
        dSVDensityRationalPublicLogRankBucketRepresentative_relative_abs_lt
          fine phase r zero
      change
        |(r.val : ℝ) -
          ((representative phase (bucket phase r)).val : ℝ)| /
          ((max 1
            (min r.val
              (representative phase (bucket phase r)).val) : ℕ) : ℝ) <
          radius at actual
      exact mul_le_mul_of_nonneg_left actual.le (Nat.cast_nonneg r.val)
  have point (phase : Fin B) :
      ‖localUnitaryAction
          (A phase (bucket phase r))
          (C phase (bucket phase s))
          (dSVDensityRationalMixedCanonicalPrefixPureHarmonicTensor
            n (dSVCanonicalFailurePrefix
              (dSVDensityRationalPublicBucketPhysicalCommonRank
                r s))) -
        Real.sqrt (r.val : ℝ) •
          embezzlementState (N * n)‖ ^ 2 ≤
        base + 8 * (r.val : ℝ) *
          (if bucket phase r = bucket phase s
            then (0 : ℝ) else 1) := by
    have actual := accurate phase r s
    have variation := representative_bound phase
    calc
      _ ≤ 2 * gap +
          2 * (r.val : ℝ) *
            (2 * ε ^ 2 +
              8 *
                |(r.val : ℝ) -
                  ((representative phase (bucket phase r)).val : ℝ)| /
                  ((max 1
                    (min r.val
                      (representative phase (bucket phase r)).val) : ℕ) : ℝ) +
              4 * (if bucket phase r = bucket phase s
                then (0 : ℝ) else 1)) := by
                simpa [gap] using actual
      _ = 2 * gap + 4 * (r.val : ℝ) * ε ^ 2 +
          16 * ((r.val : ℝ) *
            (|(r.val : ℝ) -
              ((representative phase (bucket phase r)).val : ℝ)| /
              ((max 1
                (min r.val
                  (representative phase (bucket phase r)).val) : ℕ) : ℝ))) +
          8 * (r.val : ℝ) *
            (if bucket phase r = bucket phase s
              then (0 : ℝ) else 1) := by ring
      _ ≤ base + 8 * (r.val : ℝ) *
            (if bucket phase r = bucket phase s
              then (0 : ℝ) else 1) := by
            dsimp [base]
            nlinarith
  have averaged :
      (∑ phase : Fin B,
        dSVDensityRationalPublicLogRankPhaseWeight B phase *
          ‖localUnitaryAction
              (A phase (bucket phase r))
              (C phase (bucket phase s))
              (dSVDensityRationalMixedCanonicalPrefixPureHarmonicTensor
                n (dSVCanonicalFailurePrefix
                  (dSVDensityRationalPublicBucketPhysicalCommonRank
                    r s))) -
            Real.sqrt (r.val : ℝ) •
              embezzlementState (N * n)‖ ^ 2) ≤
        base + 8 * (r.val : ℝ) *
          dSVDensityRationalPublicLogRankPhaseWeightedCrossing
            Q B r s := by
    calc
      _ ≤ ∑ phase : Fin B,
          dSVDensityRationalPublicLogRankPhaseWeight B phase *
            (base + 8 * (r.val : ℝ) *
              (if bucket phase r = bucket phase s
                then (0 : ℝ) else 1)) := by
            apply Finset.sum_le_sum
            intro phase _
            exact mul_le_mul_of_nonneg_left (point phase)
              (by
                unfold dSVDensityRationalPublicLogRankPhaseWeight
                positivity)
      _ = base + 8 * (r.val : ℝ) *
          dSVDensityRationalPublicLogRankPhaseWeightedCrossing
            Q B r s := by
            unfold
              dSVDensityRationalPublicLogRankPhaseWeightedCrossing
            have total :=
              dSVDensityRationalPublicLogRankPhaseWeight_sum
                phases
            calc
              _ = base *
                    (∑ phase : Fin B,
                      dSVDensityRationalPublicLogRankPhaseWeight
                        B phase) +
                  8 * (r.val : ℝ) *
                    (∑ phase : Fin B,
                      dSVDensityRationalPublicLogRankPhaseWeight
                        B phase *
                        (if bucket phase r = bucket phase s
                          then (0 : ℝ) else 1)) := by
                    simp_rw [Finset.mul_sum]
                    rw [← Finset.sum_add_distrib]
                    apply Finset.sum_congr rfl
                    intro phase _
                    ring
              _ = _ := by rw [total]; simp [bucket]
  have crossing :=
    dSVDensityRationalPublicLogRankPhaseWeightedCrossing_alice_le
      phases Q r s
  change _ ≤ 2 * gap + 4 * (r.val : ℝ) * ε ^ 2 +
    16 * (r.val : ℝ) * radius +
    8 * (((Q : ℝ) / (B : ℝ) + 1) * gap +
      min (r.val : ℝ) (s.val : ℝ) / (B : ℝ))
  change
    (r.val : ℝ) *
        dSVDensityRationalPublicLogRankPhaseWeightedCrossing
          Q B r s ≤
      ((Q : ℝ) / (B : ℝ) + 1) * gap +
        min (r.val : ℝ) (s.val : ℝ) / (B : ℝ)
    at crossing
  dsimp [bucket] at averaged
  dsimp [base] at averaged
  nlinarith
