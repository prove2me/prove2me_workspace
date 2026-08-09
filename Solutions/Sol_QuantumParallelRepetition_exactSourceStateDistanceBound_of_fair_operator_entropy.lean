import Definitions.Def_quantum_parallel_repetition_game
import Definitions.Def_qpr_core_22
import Theorems.Thm_QuantumParallelRepetition_spectralPurificationFilter_memLp_two
import Theorems.Thm_QuantumParallelRepetition_exactSeedWeight_nonneg
import Theorems.Thm_QuantumParallelRepetition_commonFinitePurification_weighted_left_variation_le
import Theorems.Thm_QuantumParallelRepetition_commonFinitePurification_weighted_right_variation_le
import Theorems.Thm_QuantumParallelRepetition_exactAlicePurificationFamily_posSemidef
import Theorems.Thm_QuantumParallelRepetition_exactBobPurificationFamily_posSemidef
import Theorems.Thm_QuantumParallelRepetition_exactFairPsiPhiDistance_mul_postselection_le
import Theorems.Thm_QuantumParallelRepetition_exactFairGammaPsiDistance_mul_postselection_le
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

end Game

end

noncomputable section

open MeasureTheory Filter Set
open scoped BigOperators Topology

theorem scalar_resolvent_purification_integrable_of_pos
    {z : ℝ} (hz : 0 < z) :
    IntegrableOn (fun s : ℝ => (z / (z + s)) ^ 2) (Ioi 0) := by
  have hpower :
      IntegrableOn (fun s : ℝ => (s + z) ^ (-2 : ℝ)) (Ioi 0) := by
    exact integrableOn_add_rpow_Ioi_of_lt
      (a := (-2 : ℝ)) (c := (0 : ℝ)) (m := z)
      (by norm_num) (by linarith)
  have hscaled :
      IntegrableOn (fun s : ℝ => z ^ 2 * (s + z) ^ (-2 : ℝ))
        (Ioi 0) :=
    hpower.const_mul (z ^ 2)
  refine hscaled.congr_fun (fun s hs => ?_) measurableSet_Ioi
  have hspos : 0 < s + z := by
    have : 0 < s := hs
    linarith
  change z ^ 2 * (s + z) ^ (-2 : ℝ) = (z / (z + s)) ^ 2
  rw [show (-2 : ℝ) = -(2 : ℝ) by norm_num,
    Real.rpow_neg hspos.le, Real.rpow_two]
  rw [div_pow]
  simp [div_eq_mul_inv, add_comm]

theorem scalar_resolvent_purification_integrable
    {z : ℝ} (hz : 0 ≤ z) :
    IntegrableOn (fun s : ℝ => (z / (z + s)) ^ 2) (Ioi 0) := by
  rcases hz.eq_or_lt with rfl | hzpos
  · simp
  · exact scalar_resolvent_purification_integrable_of_pos hzpos

theorem scalar_resolvent_purification_integral
    {z : ℝ} (hz : 0 ≤ z) :
    (∫ s in Ioi (0 : ℝ), (z / (z + s)) ^ 2) = z := by
  rcases hz.eq_or_lt with rfl | hzpos
  · simp
  · have hderiv :
        ∀ x ∈ Ici (0 : ℝ),
          HasDerivAt (fun t : ℝ => -(z ^ 2) / (z + t))
            ((z / (z + x)) ^ 2) x := by
      intro x hx
      have hden : z + x ≠ 0 := by
        have hx_nonneg : 0 ≤ x := hx
        exact ne_of_gt (by linarith)
      have hd := ((hasDerivAt_const x (-(z ^ 2))).div
        ((hasDerivAt_const x z).add (hasDerivAt_id x)) hden)
      have hfun :
          (fun t : ℝ => -(z ^ 2) / (z + t)) =
            (fun _t : ℝ => -(z ^ 2)) /
              ((fun _t : ℝ => z) + id) := by
        funext t
        rfl
      rw [hfun]
      simpa [div_pow] using hd
    have hlimit :
        Tendsto (fun t : ℝ => -(z ^ 2) / (z + t))
          atTop (𝓝 (0 : ℝ)) := by
      have hden : Tendsto (fun t : ℝ => t + z) atTop atTop :=
        tendsto_atTop_add_const_right atTop z tendsto_id
      have hzero : Tendsto (fun t : ℝ => -(z ^ 2) / (t + z))
          atTop (𝓝 (0 : ℝ)) :=
        tendsto_const_nhds.div_atTop hden
      simpa [add_comm] using hzero
    have hftc := integral_Ioi_of_hasDerivAt_of_tendsto'
      hderiv (scalar_resolvent_purification_integrable_of_pos hzpos) hlimit
    calc
      (∫ s in Ioi (0 : ℝ), (z / (z + s)) ^ 2) =
          (0 : ℝ) - (-(z ^ 2) / (z + 0)) := hftc
      _ = z := by
        field_simp
        ; ring

end

noncomputable section

open MeasureTheory Filter Set
open scoped BigOperators Topology ComplexOrder MatrixOrder Matrix.Norms.Elementwise

set_option backward.isDefEq.respectTransparency false

attribute [local instance] Matrix.normedAddCommGroup Matrix.normedSpace

theorem diagonalPurificationGram_integrable
    {d : Type*} [Fintype d] [DecidableEq d]
    (eigenvalue : d → ℝ)
    (h_nonneg : ∀ i, 0 ≤ eigenvalue i) :
    IntegrableOn (diagonalPurificationGram eigenvalue) (Ioi 0) := by
  apply MeasureTheory.Integrable.of_eval
  intro i
  apply MeasureTheory.Integrable.of_eval
  intro j
  classical
  by_cases h : i = j
  · subst j
    have hcomplex :
        Integrable
          (fun s : ℝ =>
            (((eigenvalue i / (eigenvalue i + s)) ^ 2 : ℝ) : ℂ))
          (volume.restrict (Ioi 0)) :=
      MeasureTheory.Integrable.ofReal (𝕜 := ℂ)
        (scalar_resolvent_purification_integrable (h_nonneg i))
    simpa only [diagonalPurificationGram, Matrix.diagonal_apply_eq] using
      hcomplex
  · simp [diagonalPurificationGram, h]

theorem integral_diagonalPurificationGram
    {d : Type*} [Fintype d] [DecidableEq d]
    (eigenvalue : d → ℝ)
    (h_nonneg : ∀ i, 0 ≤ eigenvalue i) :
    (∫ s in Ioi (0 : ℝ), diagonalPurificationGram eigenvalue s) =
      Matrix.diagonal (fun i => (eigenvalue i : ℂ)) := by
  classical
  have hmatrix := diagonalPurificationGram_integrable eigenvalue h_nonneg
  have hrows :
      ∀ i : d,
        Integrable
          (fun s : ℝ => diagonalPurificationGram eigenvalue s i)
          (volume.restrict (Ioi 0)) :=
    fun i => hmatrix.eval i
  have hentry (i : d) :
      ∀ j : d,
        Integrable
          (fun s : ℝ => diagonalPurificationGram eigenvalue s i j)
          (volume.restrict (Ioi 0)) :=
    fun j => (hrows i).eval j
  ext i j
  rw [MeasureTheory.eval_integral hrows i,
    MeasureTheory.eval_integral (hentry i) j]
  by_cases h : i = j
  · subst j
    simp only [diagonalPurificationGram, Matrix.diagonal_apply_eq]
    calc
      (∫ s in Ioi (0 : ℝ),
        (((eigenvalue i / (eigenvalue i + s)) ^ 2 : ℝ) : ℂ)) =
          ((∫ s in Ioi (0 : ℝ),
            (eigenvalue i / (eigenvalue i + s)) ^ 2 : ℝ) : ℂ) :=
        integral_ofReal
      _ = (eigenvalue i : ℂ) := by
        rw [scalar_resolvent_purification_integral (h_nonneg i)]
  · simp [diagonalPurificationGram, h]

@[simp] theorem spectralConjugationCLM_apply
    {d : Type*} [Fintype d] [DecidableEq d]
    (U : Matrix.unitaryGroup d ℂ) (A : Matrix d d ℂ) :
    spectralConjugationCLM U A =
      (U : Matrix d d ℂ) * A * star (U : Matrix d d ℂ) := by
  rfl

theorem spectralPurificationGram_integrable
    {d : Type*} [Fintype d] [DecidableEq d]
    (F : Matrix d d ℂ) (hF : F.PosSemidef) :
    IntegrableOn (spectralPurificationGram F hF) (Ioi 0) := by
  have hdiag := diagonalPurificationGram_integrable
    hF.isHermitian.eigenvalues (fun i => hF.eigenvalues_nonneg i)
  exact (spectralConjugationCLM hF.isHermitian.eigenvectorUnitary).integrable_comp
    hdiag

theorem integral_spectralPurificationGram
    {d : Type*} [Fintype d] [DecidableEq d]
    (F : Matrix d d ℂ) (hF : F.PosSemidef) :
    (∫ s in Ioi (0 : ℝ), spectralPurificationGram F hF s) = F := by
  let U := hF.isHermitian.eigenvectorUnitary
  let eigenvalue := hF.isHermitian.eigenvalues
  have hdiag := diagonalPurificationGram_integrable
    eigenvalue (fun i => hF.eigenvalues_nonneg i)
  calc
    (∫ s in Ioi (0 : ℝ), spectralPurificationGram F hF s) =
        spectralConjugationCLM U
          (∫ s in Ioi (0 : ℝ), diagonalPurificationGram eigenvalue s) := by
            exact ContinuousLinearMap.integral_comp_comm
              (spectralConjugationCLM U) hdiag
    _ = spectralConjugationCLM U
          (Matrix.diagonal (fun i => (eigenvalue i : ℂ))) := by
            rw [integral_diagonalPurificationGram eigenvalue
              (fun i => hF.eigenvalues_nonneg i)]
    _ = F := by
          simpa [U, eigenvalue, Function.comp_def,
            Unitary.conjStarAlgAut_apply] using
            hF.isHermitian.spectral_theorem.symm

end

noncomputable section

open MeasureTheory Filter Set
open scoped BigOperators Topology ComplexOrder MatrixOrder Kronecker Matrix.Norms.Elementwise

set_option backward.isDefEq.respectTransparency false

attribute [local instance] Matrix.normedAddCommGroup Matrix.normedSpace

theorem spectralPurificationFilter_gram
    {d : Type*} [Fintype d] [DecidableEq d]
    (F : Matrix d d ℂ) (hF : F.PosSemidef) (s : ℝ) :
    star (spectralPurificationFilter F hF s) *
        spectralPurificationFilter F hF s =
      spectralPurificationGram F hF s := by
  classical
  let U := hF.isHermitian.eigenvectorUnitary
  let eigenvalue := hF.isHermitian.eigenvalues
  let D : Matrix d d ℂ := Matrix.diagonal fun i =>
    ((eigenvalue i / (eigenvalue i + s) : ℝ) : ℂ)
  let e := Unitary.conjStarAlgAut ℂ (Matrix d d ℂ) U
  have hDhermitian : D.IsHermitian := by
    apply Matrix.isHermitian_diagonal_iff.mpr
    intro i
    change star ((eigenvalue i / (eigenvalue i + s) : ℝ) : ℂ) = _
    simp
  have hDstar : star D = D := by
    simpa only [Matrix.star_eq_conjTranspose] using hDhermitian.eq
  have hDsquare : D * D = diagonalPurificationGram eigenvalue s := by
    dsimp [D]
    rw [Matrix.diagonal_mul_diagonal]
    ext i j
    by_cases h : i = j
    · subst j
      simp [diagonalPurificationGram, pow_two]
    · simp [diagonalPurificationGram, h]
  change star (e D) * e D = e (diagonalPurificationGram eigenvalue s)
  calc
    star (e D) * e D = e (star D) * e D := by rw [map_star]
    _ = e (star D * D) := (map_mul e (star D) D).symm
    _ = e (diagonalPurificationGram eigenvalue s) := by
      rw [hDstar, hDsquare]

theorem integral_spectralPurificationFilter_gram
    {d : Type*} [Fintype d] [DecidableEq d]
    (F : Matrix d d ℂ) (hF : F.PosSemidef) :
    (∫ s in Ioi (0 : ℝ),
      star (spectralPurificationFilter F hF s) *
        spectralPurificationFilter F hF s) = F := by
  simp_rw [spectralPurificationFilter_gram]
  exact integral_spectralPurificationGram F hF

theorem spectralPurificationFilter_gram_integrable
    {d : Type*} [Fintype d] [DecidableEq d]
    (F : Matrix d d ℂ) (hF : F.PosSemidef) :
    IntegrableOn
      (fun s : ℝ => star (spectralPurificationFilter F hF s) *
        spectralPurificationFilter F hF s) (Ioi 0) := by
  simpa only [spectralPurificationFilter_gram] using
    spectralPurificationGram_integrable F hF

end

noncomputable section

open scoped BigOperators Kronecker

namespace Game

variable {X Y A B : Type*}
variable [Fintype X] [Fintype Y] [Fintype A] [Fintype B]

theorem questionWeight_le_marginalX
    (G : Game X Y A B) (x : X) (y : Y) :
    G.questionWeight x y ≤ G.marginalX x := by
  unfold marginalX
  exact Finset.single_le_sum
    (fun y _ => G.weight_nonneg x y)
    (Finset.mem_univ y)

theorem questionWeight_le_marginalY
    (G : Game X Y A B) (x : X) (y : Y) :
    G.questionWeight x y ≤ G.marginalY y := by
  unfold marginalY
  exact Finset.single_le_sum
    (fun x _ => G.weight_nonneg x y)
    (Finset.mem_univ x)

theorem conditionalYGivenX_nonneg
    (G : Game X Y A B) (x : X) (y : Y) :
    0 ≤ G.conditionalYGivenX x y := by
  exact div_nonneg (G.weight_nonneg x y)
    (G.marginalX_nonneg x)

theorem conditionalXGivenY_nonneg
    (G : Game X Y A B) (y : Y) (x : X) :
    0 ≤ G.conditionalXGivenY y x := by
  exact div_nonneg (G.weight_nonneg x y)
    (G.marginalY_nonneg y)

theorem marginalX_mul_conditionalYGivenX
    (G : Game X Y A B) (x : X) (y : Y) :
    G.marginalX x * G.conditionalYGivenX x y =
      G.questionWeight x y := by
  unfold conditionalYGivenX
  by_cases hx : G.marginalX x = 0
  · have hzero : G.questionWeight x y = 0 := by
      have hle := G.questionWeight_le_marginalX x y
      have hnonneg := G.weight_nonneg x y
      rw [hx] at hle
      linarith
    simp [hx, hzero]
  · field_simp

theorem marginalY_mul_conditionalXGivenY
    (G : Game X Y A B) (x : X) (y : Y) :
    G.marginalY y * G.conditionalXGivenY y x =
      G.questionWeight x y := by
  unfold conditionalXGivenY
  by_cases hy : G.marginalY y = 0
  · have hzero : G.questionWeight x y = 0 := by
      have hle := G.questionWeight_le_marginalY x y
      have hnonneg := G.weight_nonneg x y
      rw [hy] at hle
      linarith
    simp [hy, hzero]
  · field_simp

theorem conditionalYGivenX_sum
    (G : Game X Y A B) (x : X)
    (hx : 0 < G.marginalX x) :
    (∑ y : Y, G.conditionalYGivenX x y) = 1 := by
  unfold conditionalYGivenX
  rw [← Finset.sum_div]
  change G.marginalX x / G.marginalX x = 1
  exact div_self hx.ne'

theorem conditionalXGivenY_sum
    (G : Game X Y A B) (y : Y)
    (hy : 0 < G.marginalY y) :
    (∑ x : X, G.conditionalXGivenY y x) = 1 := by
  unfold conditionalXGivenY
  rw [← Finset.sum_div]
  change G.marginalY y / G.marginalY y = 1
  exact div_self hy.ne'

end Game

end

open scoped ComplexOrder Matrix BigOperators InnerProductSpace
open Complex Matrix Finset

noncomputable section

open MeasureTheory Filter Set
open scoped BigOperators Topology ComplexOrder MatrixOrder
  Matrix.Norms.Elementwise InnerProductSpace

set_option backward.isDefEq.respectTransparency false

attribute [local instance] Matrix.normedAddCommGroup Matrix.normedSpace

theorem spectralPurificationFilterEntryLp_coeFn
    {d : Type*} [Fintype d] [DecidableEq d]
    (F : Matrix d d ℂ) (hF : F.PosSemidef) (i j : d) :
    (spectralPurificationFilterEntryLp F hF i j : ℝ → ℂ)
      =ᵐ[volume.restrict (Ioi 0)]
        (fun s : ℝ => spectralPurificationFilter F hF s i j) :=
  (((spectralPurificationFilter_memLp_two F hF).eval i).eval j).coeFn_toLp

end

noncomputable section

open MeasureTheory Filter Set
open scoped BigOperators Topology ComplexOrder MatrixOrder
  Matrix.Norms.Elementwise InnerProductSpace

set_option backward.isDefEq.respectTransparency false

attribute [local instance] Matrix.normedAddCommGroup Matrix.normedSpace

theorem finitePurificationMatrix_gram_apply
    {ι d : Type*} [Fintype ι] [Fintype d] [DecidableEq d]
    (F : ι → Matrix d d ℂ) (M : Matrix d d ℂ)
    (positive : ∀ i, (F i).PosSemidef)
    (hM : M.PosSemidef) (a : ι) (i j : d) :
    ((finitePurificationMatrix F M positive hM a).conjTranspose *
      finitePurificationMatrix F M positive hM a) i j =
      ∑ r : d,
        inner ℂ
          (ensemblePurificationSubspaceEntry F M positive hM a r i)
          (ensemblePurificationSubspaceEntry F M positive hM a r j) := by
  classical
  simp only [Matrix.mul_apply, Matrix.conjTranspose_apply,
    finitePurificationMatrix, Fintype.sum_prod_type]
  apply Finset.sum_congr rfl
  intro r _
  let b := commonPurificationOrthonormalBasis F M positive hM
  let u := ensemblePurificationSubspaceEntry
    F M positive hM a r i
  let v := ensemblePurificationSubspaceEntry
    F M positive hM a r j
  have hisometry := b.repr.inner_map_map u v
  change (∑ k, star (b.repr u k) * b.repr v k) =
    inner ℂ u v
  rw [← hisometry, EuclideanSpace.inner_eq_star_dotProduct]
  simp [dotProduct, mul_comm]

theorem ensemblePurificationSubspaceEntry_inner_eq_integral
    {ι d : Type*} [Fintype ι] [Fintype d] [DecidableEq d]
    (F : ι → Matrix d d ℂ) (M : Matrix d d ℂ)
    (positive : ∀ i, (F i).PosSemidef)
    (hM : M.PosSemidef)
    (a : ι) (r i j : d) :
    inner ℂ
        (ensemblePurificationSubspaceEntry F M positive hM a r i)
        (ensemblePurificationSubspaceEntry F M positive hM a r j) =
      ∫ s in Ioi (0 : ℝ),
        star (spectralPurificationFilter (F a) (positive a) s r i) *
          spectralPurificationFilter (F a) (positive a) s r j := by
  rw [Submodule.coe_inner, MeasureTheory.L2.inner_def]
  apply integral_congr_ae
  have hi := spectralPurificationFilterEntryLp_coeFn
    (F a) (positive a) r i
  have hj := spectralPurificationFilterEntryLp_coeFn
    (F a) (positive a) r j
  filter_upwards [hi, hj] with s hs ht
  change
    inner ℂ
      (spectralPurificationFilterEntryLp
        (F a) (positive a) r i s)
      (spectralPurificationFilterEntryLp
        (F a) (positive a) r j s) = _
  rw [hs, ht]
  simp [RCLike.inner_apply, mul_comm]

theorem finitePurificationMatrix_gram_eq_integral
    {ι d : Type*} [Fintype ι] [Fintype d] [DecidableEq d]
    (F : ι → Matrix d d ℂ) (M : Matrix d d ℂ)
    (positive : ∀ i, (F i).PosSemidef)
    (hM : M.PosSemidef) (a : ι) :
    (finitePurificationMatrix F M positive hM a).conjTranspose *
        finitePurificationMatrix F M positive hM a =
      ∫ s in Ioi (0 : ℝ),
        star (spectralPurificationFilter (F a) (positive a) s) *
          spectralPurificationFilter (F a) (positive a) s := by
  classical
  have hfilter := spectralPurificationFilter_memLp_two
    (F a) (positive a)
  have hmatrix := spectralPurificationFilter_gram_integrable
    (F a) (positive a)
  have hrows :
      ∀ i : d,
        Integrable
          (fun s : ℝ =>
            (star (spectralPurificationFilter (F a) (positive a) s) *
              spectralPurificationFilter (F a) (positive a) s) i)
          (volume.restrict (Ioi 0)) :=
    fun i => hmatrix.eval i
  ext i j
  rw [finitePurificationMatrix_gram_apply]
  rw [MeasureTheory.eval_integral hrows i,
    MeasureTheory.eval_integral (fun k => (hrows i).eval k) j]
  simp_rw [ensemblePurificationSubspaceEntry_inner_eq_integral]
  have hproduct (r : d) :
      Integrable
        (fun s : ℝ =>
          star (spectralPurificationFilter (F a) (positive a) s r i) *
            spectralPurificationFilter (F a) (positive a) s r j)
        (volume.restrict (Ioi 0)) :=
    (((hfilter.eval r).eval i).star).integrable_mul
      ((hfilter.eval r).eval j)
  rw [← integral_finsetSum Finset.univ (fun r _ => hproduct r)]
  apply integral_congr_ae
  filter_upwards with s
  simp [Matrix.mul_apply, Matrix.star_apply]

theorem finitePurificationMatrix_gram
    {ι d : Type*} [Fintype ι] [Fintype d] [DecidableEq d]
    (F : ι → Matrix d d ℂ) (M : Matrix d d ℂ)
    (positive : ∀ i, (F i).PosSemidef)
    (hM : M.PosSemidef) (a : ι) :
    (finitePurificationMatrix F M positive hM a).conjTranspose *
      finitePurificationMatrix F M positive hM a = F a := by
  rw [finitePurificationMatrix_gram_eq_integral]
  exact integral_spectralPurificationFilter_gram (F a) (positive a)

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

theorem exactPriorQuestionWeight_nonneg
    (G : Game X Y A B) (n : ℕ)
    (q : ExactFullQuestion X Y n) :
    0 ≤ exactPriorQuestionWeight G n q :=
  (G.repeat n).weight_nonneg q.1 q.2

theorem exactRevealMass_nonneg
    (G : Game X Y A B) (n : ℕ)
    (D : Finset (Fin n))
    (seed : ExactRemainingSeed D)
    (history : ExactRevealHistory X Y D seed) :
    0 ≤ exactRevealMass G n D seed history := by
  unfold exactRevealMass
  apply Finset.sum_nonneg
  intro q _
  split
  · exact exactPriorQuestionWeight_nonneg G n q
  · exact le_rfl

theorem exactAlicePurificationMatrix_gram
    (G : Game X Y A B) (n : ℕ) (S : Strategy (G.repeat n))
    (D : Finset (Fin n))
    (seed : ExactRemainingSeed D)
    (history : ExactRevealHistory X Y D seed)
    (answer : {j : Fin n // j ∈ D} → A)
    (q : Sum X Y) :
    (exactAlicePurificationMatrix
      G n S D seed history answer q).conjTranspose *
      exactAlicePurificationMatrix
        G n S D seed history answer q =
      exactAlicePurificationFamily
        G n S D seed history answer q :=
  finitePurificationMatrix_gram
    (exactAlicePurificationFamily
      G n S D seed history answer)
    0
    (exactAlicePurificationFamily_posSemidef
      G n S D seed history answer)
    Matrix.PosSemidef.zero q

theorem exactBobPurificationMatrix_gram
    (G : Game X Y A B) (n : ℕ) (S : Strategy (G.repeat n))
    (D : Finset (Fin n))
    (seed : ExactRemainingSeed D)
    (history : ExactRevealHistory X Y D seed)
    (answer : {j : Fin n // j ∈ D} → B)
    (q : Sum Y X) :
    (exactBobPurificationMatrix
      G n S D seed history answer q).conjTranspose *
      exactBobPurificationMatrix
        G n S D seed history answer q =
      exactBobPurificationFamily
        G n S D seed history answer q :=
  finitePurificationMatrix_gram
    (exactBobPurificationFamily
      G n S D seed history answer)
    0
    (exactBobPurificationFamily_posSemidef
      G n S D seed history answer)
    Matrix.PosSemidef.zero q

end

noncomputable section

open scoped BigOperators ComplexOrder Kronecker MatrixOrder
  Matrix.Norms.L2Operator InnerProductSpace

set_option backward.isDefEq.respectTransparency false
set_option maxHeartbeats 1600000
set_option maxRecDepth 2048

attribute [local instance] Classical.propDecidable

variable {X Y A B : Type*}
variable [Fintype X] [Fintype Y] [Fintype A] [Fintype B]

theorem exactFairAlice_conditional_variation_le
    (G : Game X Y A B) (n : ℕ) (S : Strategy (G.repeat n))
    (D : Finset (Fin n))
    (r : ExactHistoryFlag X Y A B D) (y : Y)
    (hy : 0 < G.marginalY y) :
    (∑ x : X, G.conditionalXGivenY y x *
      ‖exactUnnormalizedPsi G n S D r x y -
        exactUnnormalizedPhi G n S D r y‖ ^ 2) ≤
      exactFairAliceQuestionEntropyIncrement G n S D r y := by
  let F := exactAlicePurificationFamily
    G n S D r.seed r.history r.aliceAnswer
  let hF := exactAlicePurificationFamily_posSemidef
    G n S D r.seed r.history r.aliceAnswer
  have hmean :
      (∑ x : X, G.conditionalXGivenY y x • F (.inl x)) =
        F (.inr y) := by
    exact rfl
  have h := commonFinitePurification_weighted_left_variation_le
    S (G.conditionalXGivenY y) F 0 hF Matrix.PosSemidef.zero
    (fun x : X => Sum.inl x) (Sum.inr y)
    (fun x => G.conditionalXGivenY_nonneg y x)
    (G.conditionalXGivenY_sum y hy) hmean
    (exactBobPurificationMatrix
      G n S D r.seed r.history r.bobAnswer (.inl y))
  rw [exactBobPurificationMatrix_gram] at h
  exact h

theorem exactFairBob_conditional_variation_le
    (G : Game X Y A B) (n : ℕ) (S : Strategy (G.repeat n))
    (D : Finset (Fin n))
    (r : ExactHistoryFlag X Y A B D) (x : X)
    (hx : 0 < G.marginalX x) :
    (∑ y : Y, G.conditionalYGivenX x y *
      ‖exactUnnormalizedPsi G n S D r x y -
        exactUnnormalizedGamma G n S D r x‖ ^ 2) ≤
      exactFairBobQuestionEntropyIncrement G n S D r x := by
  let F := exactBobPurificationFamily
    G n S D r.seed r.history r.bobAnswer
  let hF := exactBobPurificationFamily_posSemidef
    G n S D r.seed r.history r.bobAnswer
  have hmean :
      (∑ y : Y, G.conditionalYGivenX x y • F (.inl y)) =
        F (.inr x) := by
    exact rfl
  have h := commonFinitePurification_weighted_right_variation_le
    S (G.conditionalYGivenX x) F 0 hF Matrix.PosSemidef.zero
    (fun y : Y => Sum.inl y) (Sum.inr x)
    (fun y => G.conditionalYGivenX_nonneg x y)
    (G.conditionalYGivenX_sum x hx) hmean
    (exactAlicePurificationMatrix
      G n S D r.seed r.history r.aliceAnswer (.inl x))
  rw [exactAlicePurificationMatrix_gram] at h
  exact h

theorem exactFairAliceHistoryVariation_le_entropy
    (G : Game X Y A B) (n : ℕ) (S : Strategy (G.repeat n))
    (D : Finset (Fin n))
    (r : ExactHistoryFlag X Y A B D) :
    exactFairAliceHistoryVariation G n S D r ≤
      exactFairAliceHistoryEntropyIncrement G n S D r := by
  unfold exactFairAliceHistoryVariation
    exactFairAliceHistoryEntropyIncrement
  apply Finset.sum_le_sum
  intro y _
  by_cases hy : G.marginalY y = 0
  · have hzero (x : X) : G.questionWeight x y = 0 := by
      have hle := G.questionWeight_le_marginalY x y
      have hnonneg := G.weight_nonneg x y
      rw [hy] at hle
      linarith
    simp [hy, hzero]
  · have hypos : 0 < G.marginalY y :=
      lt_of_le_of_ne (G.marginalY_nonneg y) (Ne.symm hy)
    have hlocal := exactFairAlice_conditional_variation_le
      G n S D r y hypos
    calc
      (∑ x : X, G.questionWeight x y *
        ‖exactUnnormalizedPsi G n S D r x y -
          exactUnnormalizedPhi G n S D r y‖ ^ 2) =
        G.marginalY y *
          (∑ x : X, G.conditionalXGivenY y x *
            ‖exactUnnormalizedPsi G n S D r x y -
              exactUnnormalizedPhi G n S D r y‖ ^ 2) := by
                rw [Finset.mul_sum]
                apply Finset.sum_congr rfl
                intro x _
                rw [← G.marginalY_mul_conditionalXGivenY x y]
                ring
      _ ≤ _ := mul_le_mul_of_nonneg_left hlocal (G.marginalY_nonneg y)

theorem exactFairBobHistoryVariation_le_entropy
    (G : Game X Y A B) (n : ℕ) (S : Strategy (G.repeat n))
    (D : Finset (Fin n))
    (r : ExactHistoryFlag X Y A B D) :
    exactFairBobHistoryVariation G n S D r ≤
      exactFairBobHistoryEntropyIncrement G n S D r := by
  unfold exactFairBobHistoryVariation
    exactFairBobHistoryEntropyIncrement
  apply Finset.sum_le_sum
  intro x _
  by_cases hx : G.marginalX x = 0
  · have hzero (y : Y) : G.questionWeight x y = 0 := by
      have hle := G.questionWeight_le_marginalX x y
      have hnonneg := G.weight_nonneg x y
      rw [hx] at hle
      linarith
    simp [hx, hzero]
  · have hxpos : 0 < G.marginalX x :=
      lt_of_le_of_ne (G.marginalX_nonneg x) (Ne.symm hx)
    have hlocal := exactFairBob_conditional_variation_le
      G n S D r x hxpos
    calc
      (∑ y : Y, G.questionWeight x y *
        ‖exactUnnormalizedPsi G n S D r x y -
          exactUnnormalizedGamma G n S D r x‖ ^ 2) =
        G.marginalX x *
          (∑ y : Y, G.conditionalYGivenX x y *
            ‖exactUnnormalizedPsi G n S D r x y -
              exactUnnormalizedGamma G n S D r x‖ ^ 2) := by
                rw [Finset.mul_sum]
                apply Finset.sum_congr rfl
                intro y _
                rw [← G.marginalX_mul_conditionalYGivenX x y]
                ring
      _ ≤ _ := mul_le_mul_of_nonneg_left hlocal (G.marginalX_nonneg x)

theorem exactFairHistoryPriorWeight_nonneg
    (G : Game X Y A B) (n : ℕ)
    (D : Finset (Fin n))
    (r : ExactHistoryFlag X Y A B D) :
    0 ≤ exactFairHistoryPriorWeight G n D r := by
  exact mul_nonneg (exactSeedWeight_nonneg r.seed)
    (exactRevealMass_nonneg G n D r.seed r.history)

theorem exactAcceptedFairAliceVariation_le_entropy
    (G : Game X Y A B) (n : ℕ) (S : Strategy (G.repeat n))
    (D : Finset (Fin n)) :
    (∑ r : ExactHistoryFlag X Y A B D,
      if exactHistoryAccepted G n D r then
        exactFairHistoryPriorWeight G n D r *
          exactFairAliceHistoryVariation G n S D r
      else 0) ≤
    (∑ r : ExactHistoryFlag X Y A B D,
      if exactHistoryAccepted G n D r then
        exactFairHistoryPriorWeight G n D r *
          exactFairAliceHistoryEntropyIncrement G n S D r
      else 0) := by
  apply Finset.sum_le_sum
  intro r _
  split
  · exact mul_le_mul_of_nonneg_left
      (exactFairAliceHistoryVariation_le_entropy G n S D r)
      (exactFairHistoryPriorWeight_nonneg G n D r)
  · exact le_rfl

theorem exactAcceptedFairBobVariation_le_entropy
    (G : Game X Y A B) (n : ℕ) (S : Strategy (G.repeat n))
    (D : Finset (Fin n)) :
    (∑ r : ExactHistoryFlag X Y A B D,
      if exactHistoryAccepted G n D r then
        exactFairHistoryPriorWeight G n D r *
          exactFairBobHistoryVariation G n S D r
      else 0) ≤
    (∑ r : ExactHistoryFlag X Y A B D,
      if exactHistoryAccepted G n D r then
        exactFairHistoryPriorWeight G n D r *
          exactFairBobHistoryEntropyIncrement G n S D r
      else 0) := by
  apply Finset.sum_le_sum
  intro r _
  split
  · exact mul_le_mul_of_nonneg_left
      (exactFairBobHistoryVariation_le_entropy G n S D r)
      (exactFairHistoryPriorWeight_nonneg G n D r)
  · exact le_rfl

end

end QuantumParallelRepetition


open QuantumParallelRepetition
open scoped ComplexOrder Matrix BigOperators InnerProductSpace
open Complex Matrix Finset
open scoped BigOperators ComplexOrder Kronecker MatrixOrder
  Matrix.Norms.L2Operator InnerProductSpace
set_option backward.isDefEq.respectTransparency false
set_option maxHeartbeats 2400000
set_option maxRecDepth 2048
open QuantumParallelRepetition.ClassicalInformation
attribute [local instance] Classical.propDecidable
variable {X Y A B : Type*}
variable [Fintype X] [Fintype Y] [Fintype A] [Fintype B]

theorem solution
    (G : Game X Y A B) (n : ℕ) (S : Strategy (G.repeat n))
    (D : Finset (Fin n)) (η : ℝ)
    (positive : 0 < repeatedPostselectionMass G n S D)
    (entropy : ExactFairOperatorEntropyBound
      G n S D η) :
    ExactSourceStateDistanceBound G n S D η := by
  constructor
  · have hv := exactFairGammaPsiDistance_mul_postselection_le
      G n S D positive
    have hj := exactAcceptedFairBobVariation_le_entropy
      G n S D
    change exactFairAcceptedBobVariation G n S D ≤
      exactFairAcceptedBobEntropy G n S D at hj
    have hb := entropy.2
    have hscaled := mul_le_mul_of_nonneg_left hj (by norm_num : (0 : ℝ) ≤ 4)
    have hbudget := mul_le_mul_of_nonneg_left hb (by norm_num : (0 : ℝ) ≤ 4)
    change
      (∑ t : ExactLocallySampleableTuple X Y A B D,
        exactLocallySampleableLaw G n S D t *
          ‖exactSourceTupleGamma G n S D t -
            exactSourceTuplePsi G n S D t‖ ^ 2) ≤ 8 * η
    nlinarith
  · have hv := exactFairPsiPhiDistance_mul_postselection_le
      G n S D positive
    have hj := exactAcceptedFairAliceVariation_le_entropy
      G n S D
    change exactFairAcceptedAliceVariation G n S D ≤
      exactFairAcceptedAliceEntropy G n S D at hj
    have ha := entropy.1
    have hscaled := mul_le_mul_of_nonneg_left hj (by norm_num : (0 : ℝ) ≤ 4)
    have hbudget := mul_le_mul_of_nonneg_left ha (by norm_num : (0 : ℝ) ≤ 4)
    change
      (∑ t : ExactLocallySampleableTuple X Y A B D,
        exactLocallySampleableLaw G n S D t *
          ‖exactSourceTuplePsi G n S D t -
            exactSourceTuplePhi G n S D t‖ ^ 2) ≤ 8 * η
    nlinarith
