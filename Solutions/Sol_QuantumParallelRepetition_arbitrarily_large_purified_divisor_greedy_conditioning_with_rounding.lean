import Definitions.Def_quantum_parallel_repetition_game
import Definitions.Def_qpr_core_27
import Theorems.Thm_QuantumParallelRepetition_trace_mul_posSemidef_nonneg
import Theorems.Thm_QuantumParallelRepetition_entangledValue_le_one
import Theorems.Thm_QuantumParallelRepetition_fullSubsetHistory_mass_eq_postselection
import Theorems.Thm_QuantumParallelRepetition_strategyPurificationVector_norm
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

theorem marginalX_normalized (G : Game X Y A B) :
    (∑ x : X, G.marginalX x) = 1 := by
  simpa [marginalX] using G.weight_normalized

theorem marginalY_normalized (G : Game X Y A B) :
    (∑ y : Y, G.marginalY y) = 1 := by
  unfold marginalY
  rw [Finset.sum_comm]
  exact G.weight_normalized

@[simp] theorem repeat_predicate_eq_true (G : Game X Y A B) (n : ℕ)
    (xs : Fin n → X) (ys : Fin n → Y)
    (as : Fin n → A) (bs : Fin n → B) :
    (G.repeat n).predicate xs ys as bs = true ↔
      ∀ i : Fin n, G.predicate (xs i) (ys i) (as i) (bs i) = true := by
  simp [«repeat»]

end Game

end

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

theorem pureVectorStrategy_outcomeProbability
    {X Y A B : Type*} {dA dB : Type}
    [Fintype X] [Fintype Y] [Fintype A] [Fintype B]
    [Fintype dA] [Fintype dB] [DecidableEq dA] [DecidableEq dB]
    (G : Game X Y A B)
    (z : EuclideanSpace ℂ (dA × dB)) (hz : ‖z‖ = 1)
    (PA : X → POVM A dA) (PB : Y → POVM B dB)
    (x : X) (y : Y) (a : A) (b : B) :
    (pureVectorStrategy G z hz PA PB).outcomeProbability x y a b =
      quadraticExpectation
        (Matrix.toEuclideanCLM (n := dA × dB) (𝕜 := ℂ)
          ((PA x).operator a ⊗ₖ (PB y).operator b)) z := by
  change
    (Matrix.trace
      ((pureDensityMatrix z hz).matrix *
        ((PA x).operator a ⊗ₖ (PB y).operator b))).re = _
  exact pureDensityMatrix_trace_mul z hz
    ((PA x).operator a ⊗ₖ (PB y).operator b)

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

noncomputable section

open scoped BigOperators Kronecker

namespace Game

variable {X Y A B : Type*}
variable [Fintype X] [Fintype Y] [Fintype A] [Fintype B]

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

section RepeatedQuantumFilters

open scoped ComplexOrder MatrixOrder

variable {X Y A B : Type*}
variable [Fintype X] [Fintype Y] [Fintype A] [Fintype B]

theorem conditionedBobEffect_positive
    (G : Game X Y A B) (n : ℕ)
    (S : Strategy (G.repeat n))
    (D : Finset (Fin n))
    (β : {i : Fin n // i ∈ D} → B)
    (ys : Fin n → Y) :
    (conditionedBobEffect G n S D β ys).PosSemidef := by
  classical
  unfold conditionedBobEffect
  apply Matrix.posSemidef_sum Finset.univ
  intro answers _
  split_ifs
  · exact (S.bobMeasurement ys).positive answers
  · exact Matrix.PosSemidef.zero

theorem conditionedAliceEffect_complement_positive
    (G : Game X Y A B) (n : ℕ)
    (S : Strategy (G.repeat n))
    (D : Finset (Fin n))
    (α : {i : Fin n // i ∈ D} → A)
    (xs : Fin n → X) :
    (1 - conditionedAliceEffect G n S D α xs).PosSemidef := by
  classical
  have hsplit :
      1 - conditionedAliceEffect G n S D α xs =
        ∑ answers : Fin n → A,
          if ∀ (i : Fin n) (hi : i ∈ D),
            answers i = α ⟨i, hi⟩
          then 0
          else (S.aliceMeasurement xs).operator answers := by
    unfold conditionedAliceEffect
    rw [← (S.aliceMeasurement xs).complete,
      ← Finset.sum_sub_distrib]
    apply Finset.sum_congr rfl
    intro answers _
    split_ifs <;> simp
  rw [hsplit]
  apply Matrix.posSemidef_sum Finset.univ
  intro answers _
  split_ifs
  · exact Matrix.PosSemidef.zero
  · exact (S.aliceMeasurement xs).positive answers

theorem conditionedBobEffect_complement_positive
    (G : Game X Y A B) (n : ℕ)
    (S : Strategy (G.repeat n))
    (D : Finset (Fin n))
    (β : {i : Fin n // i ∈ D} → B)
    (ys : Fin n → Y) :
    (1 - conditionedBobEffect G n S D β ys).PosSemidef := by
  classical
  have hsplit :
      1 - conditionedBobEffect G n S D β ys =
        ∑ answers : Fin n → B,
          if ∀ (i : Fin n) (hi : i ∈ D),
            answers i = β ⟨i, hi⟩
          then 0
          else (S.bobMeasurement ys).operator answers := by
    unfold conditionedBobEffect
    rw [← (S.bobMeasurement ys).complete,
      ← Finset.sum_sub_distrib]
    apply Finset.sum_congr rfl
    intro answers _
    split_ifs <;> simp
  rw [hsplit]
  apply Matrix.posSemidef_sum Finset.univ
  intro answers _
  split_ifs
  · exact Matrix.PosSemidef.zero
  · exact (S.bobMeasurement ys).positive answers

end RepeatedQuantumFilters

end

noncomputable section

open scoped BigOperators ComplexOrder MatrixOrder

theorem spectralSupportFunctional_mul
    {d : Type*} [Fintype d] [DecidableEq d]
    (F : Matrix d d ℂ) (hF : F.PosSemidef)
    (f g : ℝ → ℝ) :
    spectralSupportFunctional F hF f *
        spectralSupportFunctional F hF g =
      spectralSupportFunctional F hF (fun x => f x * g x) := by
  classical
  let e := Unitary.conjStarAlgAut ℂ (Matrix d d ℂ)
    hF.isHermitian.eigenvectorUnitary
  change e _ * e _ = e _
  rw [← map_mul, Matrix.diagonal_mul_diagonal]
  congr 1
  funext i
  push_cast
  rfl

theorem spectralSupportFunctional_id
    {d : Type*} [Fintype d] [DecidableEq d]
    (F : Matrix d d ℂ) (hF : F.PosSemidef) :
    spectralSupportFunctional F hF (fun x => x) = F := by
  simpa [spectralSupportFunctional, Function.comp_def] using
    hF.isHermitian.spectral_theorem.symm

theorem spectralSupportFunctional_congr
    {d : Type*} [Fintype d] [DecidableEq d]
    (F : Matrix d d ℂ) (hF : F.PosSemidef)
    {f g : ℝ → ℝ}
    (h : ∀ i : d,
      f (hF.isHermitian.eigenvalues i) =
        g (hF.isHermitian.eigenvalues i)) :
    spectralSupportFunctional F hF f =
      spectralSupportFunctional F hF g := by
  unfold spectralSupportFunctional
  congr 2
  funext i
  exact_mod_cast h i

theorem spectralSupportFunctional_isHermitian
    {d : Type*} [Fintype d] [DecidableEq d]
    (F : Matrix d d ℂ) (hF : F.PosSemidef)
    (f : ℝ → ℝ) :
    (spectralSupportFunctional F hF f).IsHermitian := by
  classical
  let e := Unitary.conjStarAlgAut ℂ (Matrix d d ℂ)
    hF.isHermitian.eigenvectorUnitary
  let D : Matrix d d ℂ :=
    Matrix.diagonal fun i => (f (hF.isHermitian.eigenvalues i) : ℂ)
  have hD : D.IsHermitian := by
    apply Matrix.isHermitian_diagonal_iff.mpr
    intro i
    change star (f (hF.isHermitian.eigenvalues i) : ℂ) = _
    simp
  have hDstar : star D = D := by
    simpa only [Matrix.star_eq_conjTranspose] using hD.eq
  change Matrix.conjTranspose (e D) = e D
  simpa only [Matrix.star_eq_conjTranspose] using
    (show star (e D) = e D by rw [← map_star, hDstar])

theorem spectralSupportSqrt_sq
    {d : Type*} [Fintype d] [DecidableEq d]
    (F : Matrix d d ℂ) (hF : F.PosSemidef) :
    spectralSupportSqrt F hF * spectralSupportSqrt F hF = F := by
  change spectralSupportFunctional F hF Real.sqrt *
    spectralSupportFunctional F hF Real.sqrt = F
  calc
    spectralSupportFunctional F hF Real.sqrt *
        spectralSupportFunctional F hF Real.sqrt =
      spectralSupportFunctional F hF
        (fun x => Real.sqrt x * Real.sqrt x) :=
      spectralSupportFunctional_mul F hF _ _
    _ = spectralSupportFunctional F hF (fun x => x) :=
      spectralSupportFunctional_congr F hF (by
        intro i
        exact Real.mul_self_sqrt (hF.eigenvalues_nonneg i))
    _ = F := spectralSupportFunctional_id F hF

end

noncomputable section

open Matrix
open scoped BigOperators Kronecker ComplexOrder MatrixOrder

set_option backward.isDefEq.respectTransparency false
set_option maxHeartbeats 600000

section ActualHistoryWeights

variable {X Y A B : Type*}
variable [Fintype X] [Fintype Y] [Fintype A] [Fintype B]

theorem fullHistoryWeight_nonneg
    (G : Game X Y A B) {n : ℕ}
    {D L : Finset (Fin n)}
    (h : FullSubsetHistory X Y n D L) :
    0 ≤ fullHistoryWeight G h := by
  unfold fullHistoryWeight
  apply mul_nonneg
  · apply mul_nonneg
    · exact Finset.prod_nonneg fun i _ =>
        G.weight_nonneg (h.aliceConditioned i) (h.bobConditioned i)
    · exact Finset.prod_nonneg fun i _ =>
        G.marginalX_nonneg (h.aliceRevealed i)
  · exact Finset.prod_nonneg fun i _ =>
      G.marginalY_nonneg (h.bobRemaining i)

theorem fullHistoryHiddenAliceWeight_nonneg
    (G : Game X Y A B) {n : ℕ}
    {D L : Finset (Fin n)}
    (h : FullSubsetHistory X Y n D L)
    (hidden : {i : Fin n // i ∈ fullHistoryRemaining n D L} → X) :
    0 ≤ fullHistoryHiddenAliceWeight G h hidden := by
  unfold fullHistoryHiddenAliceWeight
  exact Finset.prod_nonneg fun i _ =>
    G.conditionalXGivenY_nonneg (h.bobRemaining i) (hidden i)

theorem fullHistoryHiddenBobWeight_nonneg
    (G : Game X Y A B) {n : ℕ}
    {D L : Finset (Fin n)}
    (h : FullSubsetHistory X Y n D L)
    (hidden : {i : Fin n // i ∈ L} → Y) :
    0 ≤ fullHistoryHiddenBobWeight G h hidden := by
  unfold fullHistoryHiddenBobWeight
  exact Finset.prod_nonneg fun i _ =>
    G.conditionalYGivenX_nonneg (h.aliceRevealed i) (hidden i)

theorem fullHistoryBobFilter_posSemidef
    (G : Game X Y A B) (n : ℕ)
    (S : Strategy (G.repeat n))
    (D L : Finset (Fin n))
    (h : FullSubsetHistory X Y n D L)
    (β : {i : Fin n // i ∈ D} → B) :
    (fullHistoryBobFilter G n S D L h β).PosSemidef := by
  unfold fullHistoryBobFilter
  apply Matrix.posSemidef_sum Finset.univ
  intro hidden _
  exact (conditionedBobEffect_positive G n S D β
    (fullHistoryBobQuestion h hidden)).smul
      (fullHistoryHiddenBobWeight_nonneg G h hidden)

theorem fullHistoryWinIndicator_nonneg
    (G : Game X Y A B) {n : ℕ}
    {D L : Finset (Fin n)}
    (h : FullSubsetHistory X Y n D L)
    (α : {i : Fin n // i ∈ D} → A)
    (β : {i : Fin n // i ∈ D} → B) :
    0 ≤ fullHistoryWinIndicator G h α β := by
  classical
  unfold fullHistoryWinIndicator
  split <;> norm_num

end ActualHistoryWeights

end

noncomputable section

open Matrix
open scoped BigOperators Kronecker ComplexOrder MatrixOrder

set_option backward.isDefEq.respectTransparency false
set_option maxHeartbeats 600000

section HistoryContractions

variable {X Y A B : Type*}
variable [Fintype X] [Fintype Y] [Fintype A] [Fintype B]

theorem Game.conditionalYGivenX_sum_le_one
    (G : Game X Y A B) (x : X) :
    (∑ y : Y, G.conditionalYGivenX x y) ≤ 1 := by
  by_cases hx : G.marginalX x = 0
  · simp [Game.conditionalYGivenX, hx]
  · have hpos : 0 < G.marginalX x :=
      lt_of_le_of_ne (G.marginalX_nonneg x) (Ne.symm hx)
    rw [G.conditionalYGivenX_sum x hpos]

theorem Game.conditionalXGivenY_sum_le_one
    (G : Game X Y A B) (y : Y) :
    (∑ x : X, G.conditionalXGivenY y x) ≤ 1 := by
  by_cases hy : G.marginalY y = 0
  · simp [Game.conditionalXGivenY, hy]
  · have hpos : 0 < G.marginalY y :=
      lt_of_le_of_ne (G.marginalY_nonneg y) (Ne.symm hy)
    rw [G.conditionalXGivenY_sum y hpos]

theorem fullHistoryHiddenAliceWeight_sum_le_one
    (G : Game X Y A B) {n : ℕ}
    {D L : Finset (Fin n)}
    (h : FullSubsetHistory X Y n D L) :
    (∑ hidden : {i : Fin n // i ∈ fullHistoryRemaining n D L} → X,
      fullHistoryHiddenAliceWeight G h hidden) ≤ 1 := by
  unfold fullHistoryHiddenAliceWeight
  rw [← Fintype.prod_sum]
  apply Finset.prod_le_one
  · intro i _
    exact Finset.sum_nonneg fun x _ =>
      G.conditionalXGivenY_nonneg (h.bobRemaining i) x
  · intro i _
    exact G.conditionalXGivenY_sum_le_one (h.bobRemaining i)

theorem fullHistoryHiddenBobWeight_sum_le_one
    (G : Game X Y A B) {n : ℕ}
    {D L : Finset (Fin n)}
    (h : FullSubsetHistory X Y n D L) :
    (∑ hidden : {i : Fin n // i ∈ L} → Y,
      fullHistoryHiddenBobWeight G h hidden) ≤ 1 := by
  unfold fullHistoryHiddenBobWeight
  rw [← Fintype.prod_sum]
  apply Finset.prod_le_one
  · intro i _
    exact Finset.sum_nonneg fun y _ =>
      G.conditionalYGivenX_nonneg (h.aliceRevealed i) y
  · intro i _
    exact G.conditionalYGivenX_sum_le_one (h.aliceRevealed i)

theorem fullHistoryAliceFilter_complement_posSemidef
    (G : Game X Y A B) (n : ℕ)
    (S : Strategy (G.repeat n))
    (D L : Finset (Fin n))
    (h : FullSubsetHistory X Y n D L)
    (α : {i : Fin n // i ∈ D} → A) :
    (1 - fullHistoryAliceFilter G n S D L h α).PosSemidef := by
  classical
  let w : ({i : Fin n // i ∈ fullHistoryRemaining n D L} → X) → ℝ :=
    fullHistoryHiddenAliceWeight G h
  let E : ({i : Fin n // i ∈ fullHistoryRemaining n D L} → X) →
      Matrix S.Alice S.Alice ℂ := fun x =>
    conditionedAliceEffect G n S D α (fullHistoryAliceQuestion h x)
  have hsum : (∑ x, w x) ≤ 1 :=
    fullHistoryHiddenAliceWeight_sum_le_one G h
  have hsplit :
      1 - (∑ x, w x • E x) =
        (1 - (∑ x, w x)) • (1 : Matrix S.Alice S.Alice ℂ) +
          ∑ x, w x • (1 - E x) := by
    simp_rw [smul_sub]
    rw [Finset.sum_sub_distrib, ← Finset.sum_smul]
    module
  change (1 - ∑ x, w x • E x).PosSemidef
  rw [hsplit]
  apply Matrix.PosSemidef.add
  · exact Matrix.PosSemidef.one.smul (sub_nonneg.mpr hsum)
  · apply Matrix.posSemidef_sum Finset.univ
    intro x _
    exact (conditionedAliceEffect_complement_positive G n S D α
      (fullHistoryAliceQuestion h x)).smul
        (fullHistoryHiddenAliceWeight_nonneg G h x)

theorem fullHistoryBobFilter_complement_posSemidef
    (G : Game X Y A B) (n : ℕ)
    (S : Strategy (G.repeat n))
    (D L : Finset (Fin n))
    (h : FullSubsetHistory X Y n D L)
    (β : {i : Fin n // i ∈ D} → B) :
    (1 - fullHistoryBobFilter G n S D L h β).PosSemidef := by
  classical
  let w : ({i : Fin n // i ∈ L} → Y) → ℝ :=
    fullHistoryHiddenBobWeight G h
  let E : ({i : Fin n // i ∈ L} → Y) → Matrix S.Bob S.Bob ℂ :=
    fun y => conditionedBobEffect G n S D β (fullHistoryBobQuestion h y)
  have hsum : (∑ y, w y) ≤ 1 :=
    fullHistoryHiddenBobWeight_sum_le_one G h
  have hsplit :
      1 - (∑ y, w y • E y) =
        (1 - (∑ y, w y)) • (1 : Matrix S.Bob S.Bob ℂ) +
          ∑ y, w y • (1 - E y) := by
    simp_rw [smul_sub]
    rw [Finset.sum_sub_distrib, ← Finset.sum_smul]
    module
  change (1 - ∑ y, w y • E y).PosSemidef
  rw [hsplit]
  apply Matrix.PosSemidef.add
  · exact Matrix.PosSemidef.one.smul (sub_nonneg.mpr hsum)
  · apply Matrix.posSemidef_sum Finset.univ
    intro y _
    exact (conditionedBobEffect_complement_positive G n S D β
      (fullHistoryBobQuestion h y)).smul
        (fullHistoryHiddenBobWeight_nonneg G h y)

end HistoryContractions

theorem bornTracePairing_one_one
    {dA dB : Type*}
    [Fintype dA] [Fintype dB]
    [DecidableEq dA] [DecidableEq dB]
    (ρ : DensityMatrix (dA × dB)) :
    bornTracePairing ρ.matrix
      (1 : Matrix dA dA ℂ) (1 : Matrix dB dB ℂ) = 1 := by
  simp [bornTracePairing, ρ.trace_one]

theorem bornTracePairing_one_le_one
    {dA dB : Type*}
    [Fintype dA] [Fintype dB]
    [DecidableEq dA] [DecidableEq dB]
    (ρ : DensityMatrix (dA × dB))
    (G : Matrix dB dB ℂ)
    (hGcomplement : (1 - G).PosSemidef) :
    bornTracePairing ρ.matrix (1 : Matrix dA dA ℂ) G ≤ 1 := by
  have hpositive : 0 ≤ bornTracePairing ρ.matrix
      (1 : Matrix dA dA ℂ) (1 - G) :=
    trace_mul_posSemidef_nonneg ρ.positive
      (Matrix.PosSemidef.one.kronecker hGcomplement)
  have hdiff : bornTracePairing ρ.matrix
      (1 : Matrix dA dA ℂ) (1 - G) =
      bornTracePairing ρ.matrix
        (1 : Matrix dA dA ℂ) (1 : Matrix dB dB ℂ) -
      bornTracePairing ρ.matrix (1 : Matrix dA dA ℂ) G :=
    (bornTracePairing ρ.matrix (1 : Matrix dA dA ℂ)).map_sub 1 G
  rw [hdiff, bornTracePairing_one_one] at hpositive
  linarith

end

open scoped ComplexOrder Matrix BigOperators InnerProductSpace
open Complex Matrix Finset

noncomputable section

open WithLp
open scoped BigOperators ComplexOrder Kronecker MatrixOrder
  Matrix.Norms.L2Operator InnerProductSpace

theorem reindexedMatrixQuadratic
    {d e : Type*} [Fintype d] [Fintype e]
    [DecidableEq d] [DecidableEq e]
    (φ : e ≃ d) (M : Matrix d d ℂ) (v : d → ℂ) :
    quadraticExpectation
      (Matrix.toEuclideanCLM (n := e) (𝕜 := ℂ)
        (M.submatrix φ φ))
      (toLp 2 (v ∘ φ)) =
      (star v ⬝ᵥ M.mulVec v).re := by
  unfold quadraticExpectation
  rw [EuclideanSpace.inner_eq_star_dotProduct]
  change
    (((M.submatrix φ φ).mulVec (v ∘ φ)) ⬝ᵥ
      star (v ∘ φ)).re = (star v ⬝ᵥ M.mulVec v).re
  have h_mul :
      (M.submatrix φ φ).mulVec (v ∘ φ) =
        M.mulVec v ∘ φ := by
    simpa [Function.comp_def] using
      Matrix.submatrix_mulVec_equiv M (v ∘ φ) φ φ
  have h_star : star (v ∘ φ) = star v ∘ φ := by
    rfl
  rw [h_mul, h_star, comp_equiv_dotProduct_comp_equiv]
  rw [dotProduct_comm]

theorem purificationJointEffect_submatrix
    {dA dB : Type} [Fintype dA] [Fintype dB]
    [DecidableEq dA] [DecidableEq dB]
    (A : Matrix dA dA ℂ) (B : Matrix dB dB ℂ) :
    (A ⊗ₖ (1 : Matrix (dA × dB) (dA × dB) ℂ)) ⊗ₖ B =
      ((1 : Matrix (dA × dB) (dA × dB) ℂ) ⊗ₖ
        (A ⊗ₖ B)).submatrix
          (strategyPurificationShuffle dA dB)
          (strategyPurificationShuffle dA dB) := by
  classical
  ext ⟨⟨a, k⟩, b⟩ ⟨⟨a', k'⟩, b'⟩
  simp [Matrix.kroneckerMap_apply, Matrix.submatrix_apply,
    strategyPurificationShuffle, Matrix.one_apply]

theorem strategyPurificationVector_quadratic
    {X Y A B : Type*}
    [Fintype X] [Fintype Y] [Fintype A] [Fintype B]
    {G : Game X Y A B} (S : Strategy G)
    (EA : Matrix S.Alice S.Alice ℂ)
    (EB : Matrix S.Bob S.Bob ℂ) :
    quadraticExpectation
      (Matrix.toEuclideanCLM
        (n := (S.Alice × (S.Alice × S.Bob)) × S.Bob) (𝕜 := ℂ)
        ((EA ⊗ₖ (1 : Matrix (S.Alice × S.Bob)
          (S.Alice × S.Bob) ℂ)) ⊗ₖ EB))
      (strategyPurificationVector S) =
      (Matrix.trace
        (S.state.matrix * (EA ⊗ₖ EB))).re := by
  let K := spectralSupportSqrt S.state.matrix S.state.positive
  let E := EA ⊗ₖ EB
  let φ := strategyPurificationShuffle S.Alice S.Bob
  have h_hermitian : (Matrix.conjTranspose K) = K :=
    (spectralSupportFunctional_isHermitian
      S.state.matrix S.state.positive Real.sqrt).eq
  have h_lift := purificationJointEffect_submatrix EA EB
  change
    quadraticExpectation
      (Matrix.toEuclideanCLM
        (n := (S.Alice × (S.Alice × S.Bob)) × S.Bob) (𝕜 := ℂ)
        ((EA ⊗ₖ (1 : Matrix (S.Alice × S.Bob)
          (S.Alice × S.Bob) ℂ)) ⊗ₖ EB))
      (toLp 2 (Matrix.vec K ∘ φ)) =
      (Matrix.trace (S.state.matrix * E)).re
  rw [h_lift]
  rw [reindexedMatrixQuadratic φ
    ((1 : Matrix (S.Alice × S.Bob) (S.Alice × S.Bob) ℂ) ⊗ₖ E)
    (Matrix.vec K)]
  have h_vec :
      Matrix.mulVec
        ((1 : Matrix (S.Alice × S.Bob) (S.Alice × S.Bob) ℂ) ⊗ₖ E)
        (Matrix.vec K) =
        Matrix.vec (E * K) := by
    exact (Matrix.vec_mul_eq_mulVec E K).symm
  rw [h_vec, Matrix.star_vec_dotProduct_vec]
  rw [h_hermitian]
  congr 1
  calc
    Matrix.trace (K * (E * K)) =
      Matrix.trace (K * E * K) := by rw [Matrix.mul_assoc]
    _ = Matrix.trace (K * K * E) := by
      rw [Matrix.trace_mul_cycle]
    _ = Matrix.trace (S.state.matrix * E) := by
      change
        Matrix.trace
          (spectralSupportSqrt S.state.matrix S.state.positive *
            spectralSupportSqrt S.state.matrix S.state.positive * E) = _
      rw [spectralSupportSqrt_sq]

theorem purifiedStrategy_outcomeProbability
    {X Y A B : Type*}
    [Fintype X] [Fintype Y] [Fintype A] [Fintype B]
    {G : Game X Y A B} (S : Strategy G)
    (x : X) (y : Y) (a : A) (b : B) :
    (purifiedStrategy S).outcomeProbability x y a b =
      S.outcomeProbability x y a b := by
  unfold purifiedStrategy
  rw [pureVectorStrategy_outcomeProbability]
  exact strategyPurificationVector_quadratic S
    ((S.aliceMeasurement x).operator a)
    ((S.bobMeasurement y).operator b)

theorem purifiedStrategy_winProbability
    {X Y A B : Type*}
    [Fintype X] [Fintype Y] [Fintype A] [Fintype B]
    {G : Game X Y A B} (S : Strategy G) :
    (purifiedStrategy S).winProbability = S.winProbability := by
  unfold Strategy.winProbability
  simp_rw [purifiedStrategy_outcomeProbability]

end

noncomputable section

open Matrix
open scoped BigOperators Kronecker ComplexOrder MatrixOrder

set_option backward.isDefEq.respectTransparency false
set_option maxHeartbeats 800000

section HistoryNormalization

variable {X Y A B : Type*}
variable [Fintype X] [Fintype Y] [Fintype A] [Fintype B]

theorem fullHistoryWeight_sum
    (G : Game X Y A B) {n : ℕ}
    (D L : Finset (Fin n)) :
    (∑ h : FullSubsetHistory X Y n D L,
      fullHistoryWeight G h) = 1 := by
  classical
  let Dsub := {i : Fin n // i ∈ D}
  let Lsub := {i : Fin n // i ∈ L}
  let Rsub := {i : Fin n // i ∈ fullHistoryRemaining n D L}
  have hD :
      (∑ q : Dsub → X × Y,
        ∏ i : Dsub, G.questionWeight (q i).1 (q i).2) = 1 := by
    calc
      (∑ q : Dsub → X × Y,
        ∏ i : Dsub, G.questionWeight (q i).1 (q i).2) =
        ∏ _i : Dsub, ∑ z : X × Y,
          G.questionWeight z.1 z.2 := by
          exact (Fintype.prod_sum
            (fun _i : Dsub => fun z : X × Y =>
              G.questionWeight z.1 z.2)).symm
      _ = ∏ _i : Dsub, (1 : ℝ) := by
        apply Finset.prod_congr rfl
        intro i _
        rw [Fintype.sum_prod_type]
        exact G.weight_normalized
      _ = 1 := by simp
  have hL :
      (∑ x : Lsub → X,
        ∏ i : Lsub, G.marginalX (x i)) = 1 := by
    calc
      (∑ x : Lsub → X,
        ∏ i : Lsub, G.marginalX (x i)) =
        ∏ _i : Lsub, ∑ z : X, G.marginalX z := by
          exact (Fintype.prod_sum
            (fun _i : Lsub => fun z : X => G.marginalX z)).symm
      _ = 1 := by simp [G.marginalX_normalized]
  have hR :
      (∑ y : Rsub → Y,
        ∏ i : Rsub, G.marginalY (y i)) = 1 := by
    calc
      (∑ y : Rsub → Y,
        ∏ i : Rsub, G.marginalY (y i)) =
        ∏ _i : Rsub, ∑ z : Y, G.marginalY z := by
          exact (Fintype.prod_sum
            (fun _i : Rsub => fun z : Y => G.marginalY z)).symm
      _ = 1 := by simp [G.marginalY_normalized]
  let f : (Dsub → X × Y) × (Lsub → X) × (Rsub → Y) → ℝ :=
    fun t =>
      (∏ i : Dsub, G.questionWeight (t.1 i).1 (t.1 i).2) *
      (∏ i : Lsub, G.marginalX (t.2.1 i)) *
      (∏ i : Rsub, G.marginalY (t.2.2 i))
  calc
    (∑ h : FullSubsetHistory X Y n D L,
      fullHistoryWeight G h) =
      ∑ q : Dsub → X × Y,
      ∑ x : Lsub → X,
      ∑ y : Rsub → Y,
        (∏ i : Dsub, G.questionWeight (q i).1 (q i).2) *
        (∏ i : Lsub, G.marginalX (x i)) *
        (∏ i : Rsub, G.marginalY (y i)) := by
        simpa only [fullHistoryWeight, fullSubsetHistoryFieldEquiv,
          Equiv.coe_fn_mk, Fintype.sum_prod_type,
          f, Dsub, Lsub, Rsub] using
          (fullSubsetHistoryFieldEquiv (X := X) (Y := Y) D L).sum_comp f
    _ =
      (∑ q : Dsub → X × Y,
        ∏ i : Dsub, G.questionWeight (q i).1 (q i).2) *
      (∑ x : Lsub → X,
        ∏ i : Lsub, G.marginalX (x i)) *
      (∑ y : Rsub → Y,
        ∏ i : Rsub, G.marginalY (y i)) := by
      simp_rw [← Finset.mul_sum, ← Finset.sum_mul]
      congr 1
      simp_rw [← Finset.mul_sum]
      rw [← Finset.sum_mul]
    _ = 1 := by rw [hD, hL, hR]; norm_num

theorem fullHistoryWinIndicator_le_one
    (G : Game X Y A B) {n : ℕ}
    {D L : Finset (Fin n)}
    (h : FullSubsetHistory X Y n D L)
    (α : {i : Fin n // i ∈ D} → A)
    (β : {i : Fin n // i ∈ D} → B) :
    fullHistoryWinIndicator G h α β ≤ 1 := by
  classical
  unfold fullHistoryWinIndicator
  split <;> norm_num

end HistoryNormalization

end

noncomputable section

open Matrix
open scoped BigOperators Kronecker ComplexOrder MatrixOrder

set_option backward.isDefEq.respectTransparency false
set_option maxHeartbeats 800000

variable {X Y A B : Type*}
variable [Fintype X] [Fintype Y] [Fintype A] [Fintype B]

theorem fullHistoryAnswerCount_eq
    {A B : Type*} [Fintype A] [Fintype B]
    {n : ℕ} (D : Finset (Fin n)) :
    fullHistoryAnswerCount (A := A) (B := B) D =
      (Fintype.card A : ℝ) ^ D.card *
        (Fintype.card B : ℝ) ^ D.card := by
  classical
  simp [fullHistoryAnswerCount]

theorem fullHistoryAtomCountingWeight_nonneg
    (G : Game X Y A B) {n : ℕ}
    (D L : Finset (Fin n))
    (t : FullHistoryEntropyAtom X Y A B n D L) :
    0 ≤ fullHistoryAtomCountingWeight G D L t := by
  exact mul_nonneg (fullHistoryWeight_nonneg G t.1)
    (fullHistoryWinIndicator_nonneg G t.1 t.2.1 t.2.2)

theorem bornTracePairing_contractions_le_one
    {dA dB : Type*}
    [Fintype dA] [Fintype dB]
    [DecidableEq dA] [DecidableEq dB]
    (ρ : DensityMatrix (dA × dB))
    (F : Matrix dA dA ℂ)
    (hFcomplement : (1 - F).PosSemidef)
    (G : Matrix dB dB ℂ) (hG : G.PosSemidef)
    (hGcomplement : (1 - G).PosSemidef) :
    bornTracePairing ρ.matrix F G ≤ 1 := by
  have hpositive : 0 ≤
      bornTracePairing ρ.matrix (1 - F) G :=
    trace_mul_posSemidef_nonneg ρ.positive
      (hFcomplement.kronecker hG)
  have hdiff : bornTracePairing ρ.matrix (1 - F) G =
      bornTracePairing ρ.matrix (1 : Matrix dA dA ℂ) G -
        bornTracePairing ρ.matrix F G := by
    simp
  rw [hdiff] at hpositive
  have hone := bornTracePairing_one_le_one ρ G hGcomplement
  linarith

theorem fullHistoryAtomBornMass_le_one
    (G : Game X Y A B) (n : ℕ)
    (S : Strategy (G.repeat n))
    (D L : Finset (Fin n))
    (t : FullHistoryEntropyAtom X Y A B n D L) :
    fullHistoryAtomBornMass G n S D L t ≤ 1 := by
  exact bornTracePairing_contractions_le_one S.state
    (fullHistoryAliceFilter G n S D L t.1 t.2.1)
    (fullHistoryAliceFilter_complement_posSemidef G n S D L t.1 t.2.1)
    (fullHistoryBobFilter G n S D L t.1 t.2.2)
    (fullHistoryBobFilter_posSemidef G n S D L t.1 t.2.2)
    (fullHistoryBobFilter_complement_posSemidef G n S D L t.1 t.2.2)

theorem fullHistoryAtomCountingWeight_sum_le
    (G : Game X Y A B) {n : ℕ}
    (D L : Finset (Fin n)) :
    (∑ t : FullHistoryEntropyAtom X Y A B n D L,
      fullHistoryAtomCountingWeight G D L t) ≤
      fullHistoryAnswerCount (A := A) (B := B) D := by
  classical
  calc
    (∑ t : FullHistoryEntropyAtom X Y A B n D L,
      fullHistoryAtomCountingWeight G D L t) =
      ∑ h : FullSubsetHistory X Y n D L,
      ∑ α : {i : Fin n // i ∈ D} → A,
      ∑ β : {i : Fin n // i ∈ D} → B,
        fullHistoryWeight G h * fullHistoryWinIndicator G h α β := by
        simp [fullHistoryAtomCountingWeight, Fintype.sum_prod_type]
    _ ≤ ∑ h : FullSubsetHistory X Y n D L,
        ∑ _α : {i : Fin n // i ∈ D} → A,
        ∑ _β : {i : Fin n // i ∈ D} → B,
          fullHistoryWeight G h := by
      apply Finset.sum_le_sum
      intro h _
      apply Finset.sum_le_sum
      intro α _
      apply Finset.sum_le_sum
      intro β _
      exact mul_le_of_le_one_right
        (fullHistoryWeight_nonneg G h)
        (fullHistoryWinIndicator_le_one G h α β)
    _ = fullHistoryAnswerCount (A := A) (B := B) D *
        (∑ h : FullSubsetHistory X Y n D L,
          fullHistoryWeight G h) := by
      simp [fullHistoryAnswerCount, Finset.mul_sum,
        mul_assoc]
    _ = fullHistoryAnswerCount (A := A) (B := B) D := by
      rw [fullHistoryWeight_sum G D L]
      ring

theorem fullHistoryAtomBornMass_sum
    [DecidableEq A] [DecidableEq B]
    (G : Game X Y A B) (n : ℕ)
    (S : Strategy (G.repeat n))
    (D L : Finset (Fin n))
    (hL : L ⊆ Finset.univ \ D) :
    (∑ t : FullHistoryEntropyAtom X Y A B n D L,
      fullHistoryAtomCountingWeight G D L t *
        fullHistoryAtomBornMass G n S D L t) =
      (strategyEventLaw (G.repeat n) S).eventMass
        (FiniteEventLaw.winEvent (repeatedCoordinateWin G n) D) := by
  classical
  simpa [fullHistoryAtomCountingWeight, fullHistoryAtomBornMass,
    Fintype.sum_prod_type] using
    fullSubsetHistory_mass_eq_postselection G n S D L hL

end

noncomputable section

open scoped BigOperators

theorem not_hasExponentialBound_iff (v : ℕ → ℝ) :
    ¬ HasExponentialBound v ↔ HasSubexponentialWitness v := by
  simp [HasExponentialBound, HasSubexponentialWitness]

theorem arbitrarily_large_witness_of_not_hasExponentialBound
    {v : ℕ → ℝ}
    (hv : ∀ n : ℕ, v n ≤ 1)
    (h_no_bound : ¬ HasExponentialBound v)
    {c : ℝ} (hc : 0 < c) (N : ℕ) :
    ∃ n : ℕ, N < n ∧ Real.exp (-c * (n : ℝ)) < v n := by
  have h_witness := (not_hasExponentialBound_iff v).mp h_no_bound
  obtain ⟨n, hn⟩ :=
    h_witness c hc (Real.exp (c * (N : ℝ))) (Real.exp_pos _)
  have hN : N < n := by
    by_contra h_not
    have hnN : n ≤ N := Nat.le_of_not_gt h_not
    have hnN_real : (n : ℝ) ≤ (N : ℝ) := by exact_mod_cast hnN
    have h_nonneg : 0 ≤ c * ((N : ℝ) - (n : ℝ)) :=
      mul_nonneg hc.le (sub_nonneg.mpr hnN_real)
    have h_lower :
        1 ≤ Real.exp (c * (N : ℝ)) * Real.exp (-c * (n : ℝ)) := by
      calc
        1 ≤ Real.exp (c * ((N : ℝ) - (n : ℝ))) :=
          Real.one_le_exp h_nonneg
        _ = Real.exp (c * (N : ℝ)) * Real.exp (-c * (n : ℝ)) := by
          rw [← Real.exp_add]
          congr 1
          ring
    linarith [hv n]
  refine ⟨n, hN, ?_⟩
  have h_prefactor : 1 ≤ Real.exp (c * (N : ℝ)) :=
    Real.one_le_exp (mul_nonneg hc.le (Nat.cast_nonneg _))
  calc
    Real.exp (-c * (n : ℝ)) =
        1 * Real.exp (-c * (n : ℝ)) := by rw [one_mul]
    _ ≤ Real.exp (c * (N : ℝ)) * Real.exp (-c * (n : ℝ)) :=
      mul_le_mul_of_nonneg_right h_prefactor (Real.exp_pos _).le
    _ < v n := hn

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

theorem exists_purifiedRepeatedStrategy_of_lt_entangledValue
    (G : Game X Y A B) {n : ℕ} {r : ℝ}
    (hr : 0 < r)
    (hvalue : r < repeatedEntangledValue G n) :
    ∃ S : Strategy (G.repeat n),
      r < (purifiedStrategy S).winProbability := by
  obtain ⟨S, hS⟩ :=
    exists_repeatedStrategy_of_lt_entangledValue G hr hvalue
  refine ⟨S, ?_⟩
  rwa [purifiedStrategy_winProbability]

theorem arbitrarily_large_purifiedRepeatedStrategy_of_subexponentialWitness
    (G : Game X Y A B)
    (hwitness : HasSubexponentialWitness (repeatedEntangledValue G))
    {c : ℝ} (hc : 0 < c) (N : ℕ) :
    ∃ n : ℕ, N < n ∧
      ∃ S : Strategy (G.repeat n),
        Real.exp (-c * (n : ℝ)) <
          (purifiedStrategy S).winProbability := by
  have hno : ¬ HasExponentialBound (repeatedEntangledValue G) :=
    (not_hasExponentialBound_iff (repeatedEntangledValue G)).mpr hwitness
  have hbounded (n : ℕ) : repeatedEntangledValue G n ≤ 1 :=
    entangledValue_le_one (G.repeat n)
  obtain ⟨n, hn, hvalue⟩ :=
    arbitrarily_large_witness_of_not_hasExponentialBound
      hbounded hno hc N
  exact ⟨n, hn,
    exists_purifiedRepeatedStrategy_of_lt_entangledValue G
      (Real.exp_pos _) hvalue⟩

theorem postselection_log_cost_le
    {θ p : ℝ} (hθ : 0 < θ) (hθp : θ ≤ p) :
    Real.log (1 / p) ≤ Real.log (1 / θ) := by
  have hp : 0 < p := lt_of_lt_of_le hθ hθp
  have hinv : 1 / p ≤ 1 / θ := by
    exact one_div_le_one_div_of_le hθ hθp
  exact Real.log_le_log (by positivity : 0 < 1 / p) hinv

theorem greedy_terminal_of_log_cost
    {θ η : ℝ} {T : ℕ}
    (hθ : 0 < θ)
    (hη_one : η ≤ 1)
    (hcost : Real.log (1 / θ) < η * (T : ℝ)) :
    (1 - η) ^ T < θ := by
  have hbase : 1 - η ≤ Real.exp (-η) := by
    have h := Real.add_one_le_exp (-η)
    linarith
  have hpow :
      (1 - η) ^ T ≤ Real.exp (-η) ^ T :=
    pow_le_pow_left₀ (sub_nonneg.mpr hη_one) hbase T
  have hlog : -η * (T : ℝ) < Real.log θ := by
    rw [one_div, Real.log_inv] at hcost
    linarith
  calc
    (1 - η) ^ T ≤ Real.exp (-η) ^ T := hpow
    _ = Real.exp (-η * (T : ℝ)) := by
      rw [← Real.exp_nat_mul]
      congr 1
      ring
    _ < θ := (Real.exp_lt_exp.mpr hlog).trans_eq
      (Real.exp_log hθ)

theorem divisorStopping_nat_bound
    {n q : ℕ} (hq : 0 < q) (hqn : q ≤ n) :
    n < 2 * (n / q) * q := by
  have hT : 0 < n / q := by
    apply (Nat.le_div_iff_mul_le hq).2
    simpa using hqn
  have hnext : n < (n / q + 1) * q := by
    exact (Nat.div_lt_iff_lt_mul hq).mp (Nat.lt_succ_self (n / q))
  have hfactor : n / q + 1 ≤ 2 * (n / q) := by
    omega
  exact hnext.trans_le (Nat.mul_le_mul_right q hfactor)

theorem sourceRate_mul_lt_divisorStopping
    {n q : ℕ} (hq : 0 < q) (hqn : q ≤ n)
    {η : ℝ} (hη : 0 < η) :
    (η / (4 * (q : ℝ))) * (n : ℝ) <
      η * ((n / q : ℕ) : ℝ) := by
  have hcast :
      (n : ℝ) < 2 * ((n / q : ℕ) : ℝ) * (q : ℝ) := by
    exact_mod_cast divisorStopping_nat_bound hq hqn
  have hqreal : 0 < (q : ℝ) := by exact_mod_cast hq
  have hT : 0 < ((n / q : ℕ) : ℝ) := by
    exact_mod_cast ((Nat.le_div_iff_mul_le hq).2 (by simpa using hqn) :
      1 ≤ n / q)
  have hrate : 0 < η / (4 * (q : ℝ)) := by positivity
  calc
    (η / (4 * (q : ℝ))) * (n : ℝ) <
        (η / (4 * (q : ℝ))) *
          (2 * ((n / q : ℕ) : ℝ) * (q : ℝ)) :=
      mul_lt_mul_of_pos_left hcast hrate
    _ = η * ((n / q : ℕ) : ℝ) / 2 := by
      field_simp
      ; ring
    _ < η * ((n / q : ℕ) : ℝ) := by
      have hpositive : 0 < η * ((n / q : ℕ) : ℝ) :=
        mul_pos hη hT
      linarith

theorem repeatedStrategy_exists_divisor_greedy_conditioning
    (G : Game X Y A B) (n : ℕ)
    (S : Strategy (G.repeat n))
    {η : ℝ} {q : ℕ}
    (hη : 0 < η) (hη_one : η ≤ 1)
    (hq : 0 < q) (hqn : q ≤ n)
    (hwitness :
      Real.exp (-(η / (4 * (q : ℝ))) * (n : ℝ)) <
        S.winProbability) :
    ∃ D : Finset (Fin n),
      D.card < n / q ∧
      S.winProbability ≤
        (strategyEventLaw (G.repeat n) S).eventMass
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
  have hθ : 0 < S.winProbability :=
    lt_trans (Real.exp_pos _) hwitness
  have hlog :
      Real.log (1 / S.winProbability) <
        (η / (4 * (q : ℝ))) * (n : ℝ) := by
    have hlog' :
        -(η / (4 * (q : ℝ))) * (n : ℝ) <
          Real.log S.winProbability :=
      (Real.lt_log_iff_exp_lt hθ).mpr hwitness
    rw [one_div, Real.log_inv]
    linarith
  have hterminal :
      (1 - η) ^ (n / q) < S.winProbability := by
    apply greedy_terminal_of_log_cost hθ hη_one
    exact hlog.trans (sourceRate_mul_lt_divisorStopping hq hqn hη)
  apply repeatedStrategy_exists_greedy_conditioning
    G n S hθ hη hη_one (Nat.div_le_self n q) (le_refl _) hterminal

theorem divisor_greedy_card_mul_lt
    {n q : ℕ} (hq : 0 < q)
    {D : Finset (Fin n)} (hD : D.card < n / q) :
    D.card * q < n := by
  have hmul : D.card * q < (n / q) * q :=
    Nat.mul_lt_mul_of_pos_right hD hq
  exact hmul.trans_le (Nat.div_mul_le_self n q)

end

noncomputable section

open scoped BigOperators InnerProductSpace

variable {X Y A B : Type*}
variable [Fintype X] [Fintype Y] [Fintype A] [Fintype B]

theorem one_le_sourceAnswerAlphabetBound
    (A B : Type*) [Fintype A] [Fintype B] :
    1 ≤ sourceAnswerAlphabetBound A B := by
  exact le_max_left _ _

theorem sourceAnswerAlphabetBound_log_nonneg
    (A B : Type*) [Fintype A] [Fintype B] :
    0 ≤ Real.log (sourceAnswerAlphabetBound A B) := by
  exact Real.log_nonneg (one_le_sourceAnswerAlphabetBound A B)

theorem fullHistoryAnswerCount_le_sourceAnswerAlphabetBound_pow
    {n : ℕ} (D : Finset (Fin n)) :
    fullHistoryAnswerCount (A := A) (B := B) D ≤
      sourceAnswerAlphabetBound A B ^ D.card := by
  rw [fullHistoryAnswerCount_eq, ← mul_pow]
  exact pow_le_pow_left₀
    (mul_nonneg (Nat.cast_nonneg _) (Nat.cast_nonneg _))
    (le_max_right 1 _) _

theorem fullHistoryAnswerCount_pos_of_postselection
    (G : Game X Y A B) (n : ℕ)
    (S : Strategy (G.repeat n))
    (D L : Finset (Fin n))
    (hL : L ⊆ Finset.univ \ D)
    (hp : 0 < (strategyEventLaw (G.repeat n) S).eventMass
      (FiniteEventLaw.winEvent (repeatedCoordinateWin G n) D)) :
    0 < fullHistoryAnswerCount (A := A) (B := B) D := by
  classical
  have hmass := fullHistoryAtomBornMass_sum G n S D L hL
  have hfirst :
      (∑ t : FullHistoryEntropyAtom X Y A B n D L,
        fullHistoryAtomCountingWeight G D L t *
          fullHistoryAtomBornMass G n S D L t) ≤
        ∑ t : FullHistoryEntropyAtom X Y A B n D L,
          fullHistoryAtomCountingWeight G D L t := by
    apply Finset.sum_le_sum
    intro t _
    exact mul_le_of_le_one_right
      (fullHistoryAtomCountingWeight_nonneg G D L t)
      (fullHistoryAtomBornMass_le_one G n S D L t)
  have hsecond := fullHistoryAtomCountingWeight_sum_le G D L
  linarith

theorem divisor_greedy_remaining_bounds
    {n q : ℕ} (hq : 2 ≤ q)
    {D : Finset (Fin n)} (hD : D.card < n / q) :
    0 < (Finset.univ \ D).card ∧
      n ≤ 2 * (Finset.univ \ D).card ∧
      D.card * q ≤ 2 * (Finset.univ \ D).card := by
  classical
  have hqpos : 0 < q := by omega
  have hdq : D.card * q < n :=
    divisor_greedy_card_mul_lt hqpos hD
  have htwo : D.card * 2 < n :=
    lt_of_le_of_lt (Nat.mul_le_mul_left D.card hq) hdq
  have hcard : (Finset.univ \ D).card + D.card = n := by
    simpa using
      (Finset.card_sdiff_add_card_eq_card
        (Finset.subset_univ D))
  omega

theorem divisor_greedy_log_cost_per_remaining_le
    (G : Game X Y A B) (n : ℕ)
    (S : Strategy (G.repeat n))
    {η : ℝ} (hη : 0 < η)
    {q : ℕ} (hq : 2 ≤ q)
    (D : Finset (Fin n))
    (hD : D.card < n / q)
    (hwitness :
      Real.exp (-(η / (4 * (q : ℝ))) * (n : ℝ)) <
        S.winProbability)
    (hmass :
      S.winProbability ≤
        (strategyEventLaw (G.repeat n) S).eventMass
          (FiniteEventLaw.winEvent (repeatedCoordinateWin G n) D)) :
    Real.log
        (fullHistoryAnswerCount (A := A) (B := B) D /
          (strategyEventLaw (G.repeat n) S).eventMass
            (FiniteEventLaw.winEvent (repeatedCoordinateWin G n) D)) /
        ((Finset.univ \ D).card : ℝ) ≤
      (2 * Real.log (sourceAnswerAlphabetBound A B) + η / 2) /
        (q : ℝ) := by
  classical
  let p : ℝ :=
    (strategyEventLaw (G.repeat n) S).eventMass
      (FiniteEventLaw.winEvent (repeatedCoordinateWin G n) D)
  let m : ℕ := (Finset.univ \ D).card
  let k : ℝ := sourceAnswerAlphabetBound A B
  have hqpos : 0 < q := by omega
  have hqreal : 0 < (q : ℝ) := by exact_mod_cast hqpos
  have hθ : 0 < S.winProbability :=
    lt_trans (Real.exp_pos _) hwitness
  have hp : 0 < p := lt_of_lt_of_le hθ hmass
  have hN : 0 < fullHistoryAnswerCount (A := A) (B := B) D :=
    fullHistoryAnswerCount_pos_of_postselection G n S D ∅
      (Finset.empty_subset _) hp
  have hklog : 0 ≤ Real.log k :=
    sourceAnswerAlphabetBound_log_nonneg A B
  have hcount :
      Real.log (fullHistoryAnswerCount (A := A) (B := B) D) ≤
        (D.card : ℝ) * Real.log k := by
    calc
      Real.log (fullHistoryAnswerCount (A := A) (B := B) D) ≤
          Real.log (k ^ D.card) :=
        Real.log_le_log hN
          (fullHistoryAnswerCount_le_sourceAnswerAlphabetBound_pow D)
      _ = (D.card : ℝ) * Real.log k := Real.log_pow _ _
  have hlogθ :
      Real.log (1 / S.winProbability) <
        (η / (4 * (q : ℝ))) * (n : ℝ) := by
    have hlog := (Real.lt_log_iff_exp_lt hθ).mpr hwitness
    rw [one_div, Real.log_inv]
    linarith
  have hlogp :
      Real.log (1 / p) ≤
        (η / (4 * (q : ℝ))) * (n : ℝ) := by
    exact (postselection_log_cost_le hθ hmass).trans hlogθ.le
  have htotal :
      Real.log
          (fullHistoryAnswerCount (A := A) (B := B) D / p) ≤
        (D.card : ℝ) * Real.log k +
          (η / (4 * (q : ℝ))) * (n : ℝ) := by
    rw [Real.log_div hN.ne' hp.ne']
    rw [one_div, Real.log_inv] at hlogp
    linarith
  obtain ⟨hmnat, hnmnat, hdqmnat⟩ :=
    divisor_greedy_remaining_bounds hq hD
  have hm : 0 < (m : ℝ) := by
    exact_mod_cast hmnat
  have hnm : (n : ℝ) ≤ 2 * (m : ℝ) := by
    exact_mod_cast hnmnat
  have hdqm :
      (D.card : ℝ) * (q : ℝ) ≤ 2 * (m : ℝ) := by
    exact_mod_cast hdqmnat
  have hdratio :
      (D.card : ℝ) / (m : ℝ) ≤ 2 / (q : ℝ) := by
    exact (div_le_div_iff₀ hm hqreal).mpr hdqm
  have hnratio : (n : ℝ) / (m : ℝ) ≤ 2 := by
    exact (div_le_iff₀ hm).mpr hnm
  have hrate : 0 ≤ η / (4 * (q : ℝ)) := by positivity
  change
    Real.log (fullHistoryAnswerCount (A := A) (B := B) D / p) /
        (m : ℝ) ≤
      (2 * Real.log k + η / 2) / (q : ℝ)
  calc
    Real.log (fullHistoryAnswerCount (A := A) (B := B) D / p) /
        (m : ℝ) ≤
      ((D.card : ℝ) * Real.log k +
        (η / (4 * (q : ℝ))) * (n : ℝ)) / (m : ℝ) := by
        exact (div_le_div_iff_of_pos_right hm).mpr htotal
    _ = ((D.card : ℝ) / (m : ℝ)) * Real.log k +
        (η / (4 * (q : ℝ))) * ((n : ℝ) / (m : ℝ)) := by
          ring
    _ ≤ (2 / (q : ℝ)) * Real.log k +
        (η / (4 * (q : ℝ))) * 2 := by
          exact add_le_add
            (mul_le_mul_of_nonneg_right hdratio hklog)
            (mul_le_mul_of_nonneg_left hnratio hrate)
    _ = (2 * Real.log k + η / 2) / (q : ℝ) := by
      field_simp
      ring

theorem exists_source_rounding_divisor
    (A B : Type*) [Fintype A] [Fintype B]
    {K η δ : ℝ}
    (hK : 0 ≤ K) (hη : 0 < η) (hδ : 0 < δ) :
    ∃ q : ℕ, 2 ≤ q ∧
      8 * K *
          ((2 * Real.log (sourceAnswerAlphabetBound A B) + η / 2) /
            (q : ℝ)) ≤
        δ ^ 2 := by
  let C : ℝ :=
    8 * K * (2 * Real.log (sourceAnswerAlphabetBound A B) + η / 2)
  have hC : 0 ≤ C := by
    dsimp [C]
    have hlog := sourceAnswerAlphabetBound_log_nonneg A B
    positivity
  have hsquare : 0 < δ ^ 2 := sq_pos_of_pos hδ
  obtain ⟨q, hq⟩ := exists_nat_gt
    (max (2 : ℝ) (C / δ ^ 2))
  have htwo : (2 : ℝ) < (q : ℝ) :=
    lt_of_le_of_lt (le_max_left _ _) hq
  have hqnat : 2 ≤ q := by
    have hstrict : 2 < q := by exact_mod_cast htwo
    omega
  have hqreal : 0 < (q : ℝ) := by positivity
  have hthreshold : C / δ ^ 2 < (q : ℝ) :=
    lt_of_le_of_lt (le_max_right _ _) hq
  have hsmall : C / (q : ℝ) < δ ^ 2 := by
    apply (div_lt_iff₀ hqreal).mpr
    have hcross := (div_lt_iff₀ hsquare).mp hthreshold
    nlinarith [hC]
  refine ⟨q, hqnat, ?_⟩
  calc
    8 * K *
        ((2 * Real.log (sourceAnswerAlphabetBound A B) + η / 2) /
          (q : ℝ)) = C / (q : ℝ) := by
      dsimp [C]
      ring
    _ ≤ δ ^ 2 := hsmall.le

end

end QuantumParallelRepetition


open QuantumParallelRepetition
open scoped ComplexOrder Matrix BigOperators InnerProductSpace
open Complex Matrix Finset
open scoped BigOperators InnerProductSpace
variable {X Y A B : Type*}
variable [Fintype X] [Fintype Y] [Fintype A] [Fintype B]

theorem solution
    (G : Game X Y A B)
    (hwitness : HasSubexponentialWitness (repeatedEntangledValue G))
    {η K δ : ℝ}
    (hη : 0 < η) (hη_one : η ≤ 1)
    (hK : 0 ≤ K) (hδ : 0 < δ) :
    ∃ q : ℕ, 2 ≤ q ∧
      ∀ N₀ : ℕ, ∃ n : ℕ, N₀ < n ∧
        ∃ S : Strategy (G.repeat n),
          ∃ D : Finset (Fin n),
            Real.exp (-(η / (4 * (q : ℝ))) * (n : ℝ)) <
              (purifiedStrategy S).winProbability ∧
            D.card < n / q ∧
            (purifiedStrategy S).winProbability ≤
              (strategyEventLaw (G.repeat n) (purifiedStrategy S)).eventMass
                (FiniteEventLaw.winEvent
                  (repeatedCoordinateWin G n) D) ∧
            (∑ i ∈ Finset.univ \ D,
              FiniteEventLaw.failureMass
                (strategyEventLaw (G.repeat n) (purifiedStrategy S))
                (repeatedCoordinateWin G n) D i) <
              ((Finset.univ \ D).card : ℝ) *
                (η *
                  (strategyEventLaw (G.repeat n)
                    (purifiedStrategy S)).eventMass
                      (FiniteEventLaw.winEvent
                        (repeatedCoordinateWin G n) D)) ∧
            8 * K *
                Real.log
                  (fullHistoryAnswerCount (A := A) (B := B) D /
                    (strategyEventLaw (G.repeat n)
                      (purifiedStrategy S)).eventMass
                        (FiniteEventLaw.winEvent
                          (repeatedCoordinateWin G n) D)) /
                  ((Finset.univ \ D).card : ℝ) ≤
              δ ^ 2 := by
  classical
  obtain ⟨q, hq, hqcost⟩ :=
    exists_source_rounding_divisor A B hK hη hδ
  refine ⟨q, hq, ?_⟩
  intro N₀
  have hqpos : 0 < q := by omega
  have hqreal : 0 < (q : ℝ) := by exact_mod_cast hqpos
  have hrate : 0 < η / (4 * (q : ℝ)) := by positivity
  obtain ⟨n, hn, S, hS⟩ :=
    arbitrarily_large_purifiedRepeatedStrategy_of_subexponentialWitness
      G hwitness hrate (max N₀ q)
  have hqn : q ≤ n :=
    (Nat.le_max_right N₀ q).trans (Nat.le_of_lt hn)
  obtain ⟨D, hD, hp, hfail⟩ :=
    repeatedStrategy_exists_divisor_greedy_conditioning G n
      (purifiedStrategy S) hη hη_one hqpos hqn hS
  refine ⟨n, (Nat.le_max_left N₀ q).trans_lt hn,
    S, D, hS, hD, hp, hfail, ?_⟩
  have hlog := divisor_greedy_log_cost_per_remaining_le
    G n (purifiedStrategy S) hη hq D hD hS hp
  calc
    8 * K *
        Real.log
          (fullHistoryAnswerCount (A := A) (B := B) D /
            (strategyEventLaw (G.repeat n)
              (purifiedStrategy S)).eventMass
                (FiniteEventLaw.winEvent
                  (repeatedCoordinateWin G n) D)) /
            ((Finset.univ \ D).card : ℝ) =
        (8 * K) *
          (Real.log
            (fullHistoryAnswerCount (A := A) (B := B) D /
              (strategyEventLaw (G.repeat n)
                (purifiedStrategy S)).eventMass
                  (FiniteEventLaw.winEvent
                    (repeatedCoordinateWin G n) D)) /
            ((Finset.univ \ D).card : ℝ)) := by
      ring
    _ ≤ 8 * K *
        ((2 * Real.log (sourceAnswerAlphabetBound A B) + η / 2) /
          (q : ℝ)) := by
      exact mul_le_mul_of_nonneg_left hlog (by positivity)
    _ ≤ δ ^ 2 := hqcost
