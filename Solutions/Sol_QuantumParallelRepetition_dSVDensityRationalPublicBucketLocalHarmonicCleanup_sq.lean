import Definitions.Def_quantum_parallel_repetition_game
import Definitions.Def_qpr_core_02
import Theorems.Thm_QuantumParallelRepetition_embezzlementState_norm
import Theorems.Thm_QuantumParallelRepetition_exists_proofUniversalHarmonicCatalyst
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
open scoped BigOperators Kronecker ComplexOrder MatrixOrder

theorem tensorEmbezzlementTarget_norm
    {d n : ℕ} (hn : 0 < n)
    (ξ : BipartiteUnitVector d) :
    ‖tensorEmbezzlementTarget (n := n) ξ‖ = 1 := by
  classical
  let e : ((Fin d × Fin d) × (Fin n × Fin n)) ≃
      (Fin (d * n) × Fin (d * n)) :=
    (Equiv.prodProdProdComm (Fin d) (Fin d) (Fin n) (Fin n)).trans
      (Equiv.prodCongr finProdFinEquiv finProdFinEquiv)
  have hpoint (p : (Fin d × Fin d) × (Fin n × Fin n)) :
      tensorEmbezzlementTarget (n := n) ξ (e p) =
        ξ.val p.1 * embezzlementState n p.2 := by
    rcases p with ⟨⟨a, b⟩, ⟨c, f⟩⟩
    change
      ξ.val
        ((finProdFinEquiv.symm (finProdFinEquiv (a, c))).1,
          (finProdFinEquiv.symm (finProdFinEquiv (b, f))).1) *
        embezzlementState n
          ((finProdFinEquiv.symm (finProdFinEquiv (a, c))).2,
            (finProdFinEquiv.symm (finProdFinEquiv (b, f))).2) =
        ξ.val (a, b) * embezzlementState n (c, f)
    simp only [Equiv.symm_apply_apply]
  have hsum :
      (∑ q : Fin (d * n) × Fin (d * n),
        ‖tensorEmbezzlementTarget (n := n) ξ q‖ ^ 2) =
      ∑ p : (Fin d × Fin d) × (Fin n × Fin n),
        ‖ξ.val p.1 * embezzlementState n p.2‖ ^ 2 := by
    calc
      (∑ q : Fin (d * n) × Fin (d * n),
        ‖tensorEmbezzlementTarget (n := n) ξ q‖ ^ 2) =
        ∑ p : (Fin d × Fin d) × (Fin n × Fin n),
          ‖tensorEmbezzlementTarget (n := n) ξ (e p)‖ ^ 2 :=
            (Equiv.sum_comp e
              (fun q : Fin (d * n) × Fin (d * n) =>
                ‖tensorEmbezzlementTarget (n := n) ξ q‖ ^ 2)).symm
      _ = ∑ p : (Fin d × Fin d) × (Fin n × Fin n),
          ‖ξ.val p.1 * embezzlementState n p.2‖ ^ 2 := by
            apply Finset.sum_congr rfl
            intro p _
            rw [hpoint p]
  have hfactor :
      (∑ p : (Fin d × Fin d) × (Fin n × Fin n),
        ‖ξ.val p.1 * embezzlementState n p.2‖ ^ 2) =
      (∑ a : Fin d × Fin d, ‖ξ.val a‖ ^ 2) *
        (∑ b : Fin n × Fin n,
          ‖embezzlementState n b‖ ^ 2) := by
    rw [Fintype.sum_prod_type]
    simp_rw [norm_mul, mul_pow]
    exact (Fintype.sum_mul_sum
      (fun a : Fin d × Fin d => ‖ξ.val a‖ ^ 2)
      (fun b : Fin n × Fin n =>
        ‖embezzlementState n b‖ ^ 2)).symm
  have hsquare :
      ‖tensorEmbezzlementTarget (n := n) ξ‖ ^ 2 = 1 := by
    rw [EuclideanSpace.norm_sq_eq, hsum, hfactor,
      ← EuclideanSpace.norm_sq_eq, ← EuclideanSpace.norm_sq_eq,
      ξ.property, embezzlementState_norm n hn]
    norm_num
  nlinarith [norm_nonneg (tensorEmbezzlementTarget (n := n) ξ)]

theorem localUnitaryAction_matrix_mem_unitary {n : ℕ}
    (U V : Matrix.unitaryGroup (Fin n) ℂ) :
    ((U : Matrix (Fin n) (Fin n) ℂ) ⊗ₖ
      (V : Matrix (Fin n) (Fin n) ℂ)) ∈
        Matrix.unitaryGroup (Fin n × Fin n) ℂ := by
  exact Matrix.kronecker_mem_unitary U.property V.property

theorem localUnitaryAction_norm {n : ℕ}
    (U V : Matrix.unitaryGroup (Fin n) ℂ)
    (ψ : EuclideanSpace ℂ (Fin n × Fin n)) :
    ‖localUnitaryAction U V ψ‖ = ‖ψ‖ := by
  let M : Matrix (Fin n × Fin n) (Fin n × Fin n) ℂ :=
    (U : Matrix (Fin n) (Fin n) ℂ) ⊗ₖ
      (V : Matrix (Fin n) (Fin n) ℂ)
  have hM : M ∈ Matrix.unitaryGroup (Fin n × Fin n) ℂ :=
    localUnitaryAction_matrix_mem_unitary U V
  have hclm : Matrix.toEuclideanCLM
      (n := Fin n × Fin n) (𝕜 := ℂ) M ∈
      unitary
        (EuclideanSpace ℂ (Fin n × Fin n) →L[ℂ]
          EuclideanSpace ℂ (Fin n × Fin n)) :=
    Unitary.map_mem
      (Matrix.toEuclideanCLM (n := Fin n × Fin n) (𝕜 := ℂ)) hM
  exact ContinuousLinearMap.norm_map_of_mem_unitary hclm ψ

end

open scoped ComplexOrder Matrix BigOperators InnerProductSpace
open Complex Matrix Finset

noncomputable section

open WithLp
open scoped BigOperators Kronecker ComplexOrder MatrixOrder

theorem localUnitaryAction_comp
    {m : ℕ}
    (U₁ V₁ U₂ V₂ : Matrix.unitaryGroup (Fin m) ℂ)
    (ψ : EuclideanSpace ℂ (Fin m × Fin m)) :
    localUnitaryAction U₁ V₁
      (localUnitaryAction U₂ V₂ ψ) =
        localUnitaryAction (U₁ * U₂) (V₁ * V₂) ψ := by
  apply WithLp.ofLp_injective
  change
    ((U₁.val ⊗ₖ V₁.val).mulVec
      ((U₂.val ⊗ₖ V₂.val).mulVec (ofLp ψ))) =
      ((U₁ * U₂).val ⊗ₖ (V₁ * V₂).val).mulVec (ofLp ψ)
  rw [Matrix.mulVec_mulVec,
    ← Matrix.mul_kronecker_mul]
  rfl

theorem localUnitaryAction_sub
    {m : ℕ}
    (U V : Matrix.unitaryGroup (Fin m) ℂ)
    (z w : EuclideanSpace ℂ (Fin m × Fin m)) :
    localUnitaryAction U V (z - w) =
      localUnitaryAction U V z -
        localUnitaryAction U V w := by
  apply WithLp.ofLp_injective
  change
    ((U.val ⊗ₖ V.val).mulVec
      ((ofLp z) - (ofLp w))) =
        ((U.val ⊗ₖ V.val).mulVec (ofLp z)) -
          ((U.val ⊗ₖ V.val).mulVec (ofLp w))
  exact Matrix.mulVec_sub _ _ _

end

noncomputable section

open WithLp
open scoped BigOperators Kronecker ComplexOrder MatrixOrder

theorem localUnitaryPureResidual_targetLocalInverse_reset
    {n : ℕ}
    (U V : Matrix.unitaryGroup (Fin n) ℂ)
    (x : EuclideanSpace ℂ (Fin n × Fin n)) :
    localUnitaryAction U⁻¹ V⁻¹
        (localUnitaryAction U V x) = x := by
  rw [localUnitaryAction_comp,
    inv_mul_cancel, inv_mul_cancel]
  simp [localUnitaryAction]

end

noncomputable section

open WithLp
open scoped BigOperators Kronecker ComplexOrder MatrixOrder

set_option backward.isDefEq.respectTransparency false
set_option maxHeartbeats 1600000
set_option maxRecDepth 2048

theorem harmonicCoherentSharedResource_inverseAbsorption_distance
    {d n : ℕ}
    (U V : Matrix.unitaryGroup (Fin (d * n)) ℂ)
    (resource : BipartiteUnitVector d) :
    ‖localUnitaryAction U⁻¹ V⁻¹
        (tensorEmbezzlementTarget (n := n) resource) -
      embezzlementState (d * n)‖ =
      ‖localUnitaryAction U V
          (embezzlementState (d * n)) -
        tensorEmbezzlementTarget (n := n) resource‖ := by
  have reset :
      localUnitaryAction U V
        (localUnitaryAction U⁻¹ V⁻¹
          (tensorEmbezzlementTarget (n := n) resource)) =
        tensorEmbezzlementTarget (n := n) resource := by
    simpa using
      (localUnitaryPureResidual_targetLocalInverse_reset
        U⁻¹ V⁻¹
        (tensorEmbezzlementTarget (n := n) resource))
  calc
    _ = ‖localUnitaryAction U V
        (localUnitaryAction U⁻¹ V⁻¹
          (tensorEmbezzlementTarget (n := n) resource) -
          embezzlementState (d * n))‖ :=
      (localUnitaryAction_norm U V _).symm
    _ = ‖tensorEmbezzlementTarget (n := n) resource -
          localUnitaryAction U V
            (embezzlementState (d * n))‖ := by
      rw [localUnitaryAction_sub, reset]
    _ = _ := norm_sub_rev _ _

end

noncomputable section

open WithLp
open scoped BigOperators Kronecker ComplexOrder MatrixOrder

set_option backward.isDefEq.respectTransparency false
set_option maxHeartbeats 1600000
set_option maxRecDepth 2048

theorem tensorEmbezzlementTarget_sub_norm
    {d n : ℕ} (positive : 0 < n)
    (ξ ζ : BipartiteUnitVector d) :
    ‖tensorEmbezzlementTarget (n := n) ξ -
      tensorEmbezzlementTarget (n := n) ζ‖ =
      ‖ξ.val - ζ.val‖ := by
  classical
  let e : ((Fin d × Fin d) × (Fin n × Fin n)) ≃
      (Fin (d * n) × Fin (d * n)) :=
    (Equiv.prodProdProdComm (Fin d) (Fin d) (Fin n) (Fin n)).trans
      (Equiv.prodCongr finProdFinEquiv finProdFinEquiv)
  have point (q : (Fin d × Fin d) × (Fin n × Fin n)) :
      (tensorEmbezzlementTarget (n := n) ξ -
        tensorEmbezzlementTarget (n := n) ζ) (e q) =
        (ξ.val q.1 - ζ.val q.1) *
          embezzlementState n q.2 := by
    rcases q with ⟨⟨a, b⟩, ⟨i, j⟩⟩
    change
      ξ.val
          ((finProdFinEquiv.symm (finProdFinEquiv (a, i))).1,
            (finProdFinEquiv.symm (finProdFinEquiv (b, j))).1) *
          embezzlementState n
            ((finProdFinEquiv.symm (finProdFinEquiv (a, i))).2,
              (finProdFinEquiv.symm (finProdFinEquiv (b, j))).2) -
        ζ.val
          ((finProdFinEquiv.symm (finProdFinEquiv (a, i))).1,
            (finProdFinEquiv.symm (finProdFinEquiv (b, j))).1) *
          embezzlementState n
            ((finProdFinEquiv.symm (finProdFinEquiv (a, i))).2,
              (finProdFinEquiv.symm (finProdFinEquiv (b, j))).2) = _
    simp only [Equiv.symm_apply_apply]
    ring
  have reindex :
      (∑ q : Fin (d * n) × Fin (d * n),
        ‖(tensorEmbezzlementTarget (n := n) ξ -
          tensorEmbezzlementTarget (n := n) ζ) q‖ ^ 2) =
        ∑ q : (Fin d × Fin d) × (Fin n × Fin n),
          ‖(ξ.val q.1 - ζ.val q.1) *
            embezzlementState n q.2‖ ^ 2 := by
    calc
      (∑ q : Fin (d * n) × Fin (d * n),
        ‖(tensorEmbezzlementTarget (n := n) ξ -
          tensorEmbezzlementTarget (n := n) ζ) q‖ ^ 2) =
          ∑ q : (Fin d × Fin d) × (Fin n × Fin n),
            ‖(tensorEmbezzlementTarget (n := n) ξ -
              tensorEmbezzlementTarget (n := n) ζ)
                (e q)‖ ^ 2 :=
            (Equiv.sum_comp e
              (fun q : Fin (d * n) × Fin (d * n) =>
                ‖(tensorEmbezzlementTarget (n := n) ξ -
                  tensorEmbezzlementTarget (n := n) ζ)
                    q‖ ^ 2)).symm
      _ = _ := by
        apply Finset.sum_congr rfl
        intro q _
        rw [point q]
  have factor :
      (∑ q : (Fin d × Fin d) × (Fin n × Fin n),
        ‖(ξ.val q.1 - ζ.val q.1) *
          embezzlementState n q.2‖ ^ 2) =
        (∑ q : Fin d × Fin d, ‖(ξ.val - ζ.val) q‖ ^ 2) *
          (∑ q : Fin n × Fin n,
            ‖embezzlementState n q‖ ^ 2) := by
    rw [Fintype.sum_prod_type]
    simp_rw [norm_mul, mul_pow]
    exact (Fintype.sum_mul_sum
      (fun q : Fin d × Fin d => ‖(ξ.val - ζ.val) q‖ ^ 2)
      (fun q : Fin n × Fin n =>
        ‖embezzlementState n q‖ ^ 2)).symm
  have squares :
      ‖tensorEmbezzlementTarget (n := n) ξ -
        tensorEmbezzlementTarget (n := n) ζ‖ ^ 2 =
        ‖ξ.val - ζ.val‖ ^ 2 := by
    rw [EuclideanSpace.norm_sq_eq, reindex, factor,
      ← EuclideanSpace.norm_sq_eq, ← EuclideanSpace.norm_sq_eq,
      embezzlementState_norm n positive]
    ring
  nlinarith [norm_nonneg
    (tensorEmbezzlementTarget (n := n) ξ -
      tensorEmbezzlementTarget (n := n) ζ),
    norm_nonneg (ξ.val - ζ.val)]

end

noncomputable section

open scoped BigOperators Kronecker ComplexOrder MatrixOrder

theorem dSVBobTargetLocalHarmonicCleanup_stable
    {d n : ℕ} (hn : 0 < n)
    (U V : Matrix.unitaryGroup (Fin (d * n)) ℂ)
    (ξ ζ : BipartiteUnitVector d)
    (ε : ℝ)
    (clean :
      ‖localUnitaryAction U V
          (tensorEmbezzlementTarget (n := n) ζ) -
        embezzlementState (d * n)‖ ≤ ε) :
    ‖localUnitaryAction U V
        (tensorEmbezzlementTarget (n := n) ξ) -
      embezzlementState (d * n)‖ ≤
        ‖ξ.val - ζ.val‖ + ε := by
  let source := localUnitaryAction U V
    (tensorEmbezzlementTarget (n := n) ξ)
  let reference := localUnitaryAction U V
    (tensorEmbezzlementTarget (n := n) ζ)
  let residual := embezzlementState (d * n)
  have preserved : ‖source - reference‖ = ‖ξ.val - ζ.val‖ := by
    dsimp [source, reference]
    rw [← localUnitaryAction_sub,
      localUnitaryAction_norm,
      tensorEmbezzlementTarget_sub_norm hn]
  have triangle : ‖source - residual‖ ≤
      ‖source - reference‖ + ‖reference - residual‖ := by
    simpa [dist_eq_norm] using dist_triangle source reference residual
  change ‖source - residual‖ ≤ ‖ξ.val - ζ.val‖ + ε
  calc
    ‖source - residual‖ ≤
        ‖source - reference‖ + ‖reference - residual‖ := triangle
    _ ≤ ‖ξ.val - ζ.val‖ + ε := by
      rw [preserved]
      simpa [add_comm] using add_le_add_left
        (show ‖reference - residual‖ ≤ ε by
          simpa [reference, residual] using clean)
        ‖ξ.val - ζ.val‖

theorem dSVBobTargetLocalUniformHarmonicWorkCleanup
    {T : Type*}
    (d : ℕ) (dimension : 0 < d)
    (work : T → BipartiteUnitVector d)
    (ε : ℝ) (precision : 0 < ε) :
    ∃ n : ℕ, 0 < n ∧
      ∃ (A B : T → Matrix.unitaryGroup (Fin (d * n)) ℂ),
        (∀ ζ : T,
          ‖localUnitaryAction (A ζ) (B ζ)
              (tensorEmbezzlementTarget (n := n) (work ζ)) -
            embezzlementState (d * n)‖ ≤ ε) ∧
        (∀ ξ ζ : T,
          ‖localUnitaryAction (A ζ) (B ζ)
              (tensorEmbezzlementTarget (n := n) (work ξ)) -
            embezzlementState (d * n)‖ ≤
              ‖(work ξ).val - (work ζ).val‖ + ε) := by
  classical
  obtain ⟨n, positive, universal⟩ :=
    exists_proofUniversalHarmonicCatalyst
      d dimension ε precision
  have each (ζ : T) :
      ∃ U V : Matrix.unitaryGroup (Fin (d * n)) ℂ,
        ‖localUnitaryAction U V
            (embezzlementState (d * n)) -
          tensorEmbezzlementTarget (n := n)
            (work ζ)‖ ≤ ε :=
    universal (work ζ)
  choose U V prepared using each
  refine ⟨n, positive,
    (fun ζ => (U ζ)⁻¹),
    (fun ζ => (V ζ)⁻¹), ?_, ?_⟩
  · intro ζ
    rw [harmonicCoherentSharedResource_inverseAbsorption_distance]
    exact prepared ζ
  · intro ξ ζ
    apply dSVBobTargetLocalHarmonicCleanup_stable
      positive ((U ζ)⁻¹) ((V ζ)⁻¹)
      (work ξ) (work ζ) ε
    rw [harmonicCoherentSharedResource_inverseAbsorption_distance]
    exact prepared ζ

end

end QuantumParallelRepetition


open QuantumParallelRepetition
open scoped ComplexOrder Matrix BigOperators InnerProductSpace
open Complex Matrix Finset
open scoped BigOperators Kronecker ComplexOrder MatrixOrder

theorem solution
    {Ω I : Type*} [DecidableEq I] {N D : ℕ} (dimension : 0 < N)
    (work : Fin D → BipartiteUnitVector N)
    (bucket : Ω → Fin D → I)
    (representative : Ω → I → Fin D)
    (ε : ℝ) (precision : 0 < ε) :
    ∃ n : ℕ, 0 < n ∧
      ∃ A B : Ω → I → Matrix.unitaryGroup (Fin (N * n)) ℂ,
        ∀ (phase : Ω) (r s : Fin D),
          ‖localUnitaryAction
              (A phase (bucket phase r))
              (B phase (bucket phase s))
              (tensorEmbezzlementTarget (n := n) (work r)) -
            embezzlementState (N * n)‖ ^ 2 ≤
              2 * ε ^ 2 +
              2 * ‖(work r).val -
                (work (representative phase (bucket phase r))).val‖ ^ 2 +
              4 * (if bucket phase r = bucket phase s
                then (0 : ℝ) else 1) := by
  classical
  obtain ⟨n, positive, A, B, diagonal, _stable⟩ :=
    dSVBobTargetLocalUniformHarmonicWorkCleanup
      N dimension
      (fun q : Ω × I => work (representative q.1 q.2))
      ε precision
  refine ⟨n, positive,
    fun phase label => A (phase, label),
    fun phase label => B (phase, label), ?_⟩
  intro phase r s
  by_cases same : bucket phase r = bucket phase s
  · have clean := diagonal (phase, bucket phase r)
    have stable := dSVBobTargetLocalHarmonicCleanup_stable
      positive
      (A (phase, bucket phase r))
      (B (phase, bucket phase r))
      (work r)
      (work (representative phase (bucket phase r)))
      ε clean
    have actual :
        ‖localUnitaryAction
            (A (phase, bucket phase r))
            (B (phase, bucket phase s))
            (tensorEmbezzlementTarget (n := n) (work r)) -
          embezzlementState (N * n)‖ ≤
            ‖(work r).val -
              (work (representative phase (bucket phase r))).val‖ + ε := by
      simpa only [same] using stable
    simp only [if_pos same, mul_zero, add_zero]
    nlinarith [
      norm_nonneg
        (localUnitaryAction
            (A (phase, bucket phase r))
            (B (phase, bucket phase s))
            (tensorEmbezzlementTarget (n := n) (work r)) -
          embezzlementState (N * n)),
      norm_nonneg ((work r).val -
        (work (representative phase (bucket phase r))).val),
      sq_nonneg
        (‖(work r).val -
          (work (representative phase (bucket phase r))).val‖ - ε)]
  · have bound :
        ‖localUnitaryAction
            (A (phase, bucket phase r))
            (B (phase, bucket phase s))
            (tensorEmbezzlementTarget (n := n) (work r)) -
          embezzlementState (N * n)‖ ≤ 2 := by
      calc
        _ ≤ ‖localUnitaryAction
              (A (phase, bucket phase r))
              (B (phase, bucket phase s))
              (tensorEmbezzlementTarget (n := n) (work r))‖ +
            ‖embezzlementState (N * n)‖ := norm_sub_le _ _
        _ = 2 := by
          rw [localUnitaryAction_norm,
            tensorEmbezzlementTarget_norm positive,
            embezzlementState_norm (N * n)
              (Nat.mul_pos dimension positive)]
          norm_num
    simp only [if_neg same, mul_one]
    nlinarith [
      norm_nonneg
        (localUnitaryAction
            (A (phase, bucket phase r))
            (B (phase, bucket phase s))
            (tensorEmbezzlementTarget (n := n) (work r)) -
          embezzlementState (N * n)),
      sq_nonneg ε,
      sq_nonneg
        ‖(work r).val -
          (work (representative phase (bucket phase r))).val‖]
