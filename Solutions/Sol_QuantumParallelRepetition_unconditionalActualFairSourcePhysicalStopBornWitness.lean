import Definitions.Def_quantum_parallel_repetition_game
import Definitions.Def_qpr_core_26
import Theorems.Thm_QuantumParallelRepetition_exactAlicePurificationFamily_posSemidef
import Theorems.Thm_QuantumParallelRepetition_exactBobPurificationFamily_posSemidef
import Theorems.Thm_QuantumParallelRepetition_unconditionalActualFixedSourceDecodedMatchedBranch
import Theorems.Thm_QuantumParallelRepetition_unconditionalActualC485CompleteDecodedPhysicalBorn
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
  Matrix.Norms.L2Operator InnerProductSpace

@[simp] theorem directDSVActualReindexedRetainedPOVM_effect
    {C s t ι : Type*}
    [Fintype C] [Fintype s] [Fintype t] [Fintype ι]
    [DecidableEq s] [DecidableEq t] [DecidableEq ι]
    (e : ι ≃ s × t)
    (P : POVM C s) (a : C) (i j : ι) :
    (directDSVActualReindexedRetainedPOVM e P).operator a i j =
      P.operator a (e i).1 (e j).1 *
        if (e i).2 = (e j).2 then 1 else 0 := by
  change
    (P.operator a ⊗ₖ (1 : Matrix t t ℂ)) (e i) (e j) = _
  simp [Matrix.kroneckerMap_apply, Matrix.one_apply]

end

noncomputable section

open WithLp
open scoped BigOperators Kronecker ComplexOrder MatrixOrder

attribute [local instance] Classical.propDecidable

theorem unconditionalActualOneScaleFlagControlledFiniteStageDecoder_eq
    {S B N d L m : ℕ} {R : Type}
    [Fintype R] [DecidableEq R]
    (phaseSplit :
      DSVDensityRationalPublicMultiscalePhaseIndex S B ≃
        Fin B × R)
    (Q : ℕ) (width : Fin S → ℝ)
    (schedule : Fin L → Fin S)
    (ξ : BipartiteUnitVector d)
    (spectral : Matrix.unitaryGroup
      (DSVUniformDensityThresholdLocalIndex N d) ℂ)
    (A : Fin B → Option ℕ → Matrix.unitaryGroup (Fin (N * m)) ℂ) :
    unconditionalSourceFlagControlledFiniteStageDecoder
        phaseSplit Q width schedule ξ spectral A =
      unconditionalActualCleanedSelectedFiniteStageDecoder
        phaseSplit Q width schedule ξ spectral A := by
  rfl

theorem unconditionalActualOneScaleFixedSourcePhysicalQuestionAction
    {F X Y : Type} {P N d L m : ℕ}
    (Q : ℕ) (width : Fin 1 → ℝ) (schedule : Fin L → Fin 1)
    (ξ : F → X → BipartiteUnitVector d)
    (ζ : F → Y → BipartiteUnitVector d)
    (A C : Fin P → Option ℕ → Matrix.unitaryGroup (Fin (N * m)) ℂ)
    (flag : F) (x : X) (y : Y) :
    actualStoppingQuestionLocalAction
        (physical8OneScaleActualAliceStoppingUnitary
          (P := P) (N := N) (d := d) (L := L) (m := m)
          (unconditionalActualOneScaleFixedSourcePhaseSplit P)
          Q width schedule ξ A flag x)
        (physical8OneScaleActualBobStoppingUnitary
          (P := P) (N := N) (d := d) (L := L) (m := m)
          (unconditionalActualOneScaleFixedSourcePhaseSplit P)
          Q width schedule ζ C flag y)
        (unconditionalSourcePhysicalCleanedStoppingFixedSource
          1 P N d L m) =
      unconditionalActualOneScaleFixedSourceDecodedState
        Q width schedule (ξ flag x) (ζ flag y) A C := by
  classical
  unfold physical8OneScaleActualAliceStoppingUnitary
    physical8OneScaleActualBobStoppingUnitary
    unconditionalActualOneScaleFixedSourceDecodedState
    actualStoppingQuestionLocalAction
    dSVUniformDensityPhysicalAsyncSigmaContinuation
  simp only []
  rw [Matrix.mulVec_mulVec, ← Matrix.mul_kronecker_mul]
  rfl

theorem unconditionalActualOneScaleFixedSourceDecodedMatchedBranch
    {P N d L m : ℕ}
    (Q : ℕ) (width : Fin 1 → ℝ) (schedule : Fin L → Fin 1)
    (ξ ζ : BipartiteUnitVector d)
    (A C : Fin P → Option ℕ → Matrix.unitaryGroup (Fin (N * m)) ℂ)
    (j : Fin L)
    (positive : 0 < width (schedule j)) (grid : 0 < N) :
    unconditionalSourcePhysicalCleanedFullBilateralStateIsometry
        (unconditionalActualOneScaleFixedSourcePhaseSplit P) j
        (actualStoppingBranchVector
          (unconditionalActualOneScaleFixedSourceDecodedState
            Q width schedule ξ ζ A C) j.succ j.succ) =
      unconditionalSelectedCopyCleanedMatchedBranch
        (N := N) (B := P) (m := m)
        Q width schedule ξ ζ A C j
        (unconditionalActualCanonicalRetainedPhaseTail
          (S := 1) (B := P) (N := N) (d := d) (L := L) j) := by
  have sameScale : schedule j = (0 : Fin 1) :=
    Subsingleton.elim _ _
  have samePhase :
      (unconditionalActualMultiscalePhaseIndexEquiv
        (B := P) (schedule j)).symm =
        unconditionalActualOneScaleFixedSourcePhaseSplit P := by
    simp only [unconditionalActualOneScaleFixedSourcePhaseSplit]
    rw [sameScale]
  have decoded :=
    unconditionalActualFixedSourceDecodedMatchedBranch
      (S := 1) (B := P) (N := N) (d := d) (L := L) (m := m)
      Q width schedule ξ ζ A C j positive grid
  rw [samePhase] at decoded
  simpa only [unconditionalActualOneScaleFixedSourceDecodedState,
    unconditionalActualOneScaleFlagControlledFiniteStageDecoder_eq]
    using decoded

theorem
    unconditionalActualOneScalePhysicalQuestionDecodedMatchedBranch
    {F X Y : Type} {P N d L m : ℕ}
    (Q : ℕ) (width : Fin 1 → ℝ) (schedule : Fin L → Fin 1)
    (ξ : F → X → BipartiteUnitVector d)
    (ζ : F → Y → BipartiteUnitVector d)
    (A C : Fin P → Option ℕ → Matrix.unitaryGroup (Fin (N * m)) ℂ)
    (grid : 0 < N)
    (flag : F) (x : X) (y : Y) (j : Fin L)
    (positive : 0 < width (schedule j)) :
    unconditionalSourcePhysicalCleanedFullBilateralStateIsometry
        (unconditionalActualOneScaleFixedSourcePhaseSplit P) j
        (actualStoppingBranchVector
          (actualStoppingQuestionLocalAction
            (physical8OneScaleActualAliceStoppingUnitary
              (P := P) (N := N) (d := d) (L := L) (m := m)
              (unconditionalActualOneScaleFixedSourcePhaseSplit P)
              Q width schedule ξ A flag x)
            (physical8OneScaleActualBobStoppingUnitary
              (P := P) (N := N) (d := d) (L := L) (m := m)
              (unconditionalActualOneScaleFixedSourcePhaseSplit P)
              Q width schedule ζ C flag y)
            (unconditionalSourcePhysicalCleanedStoppingFixedSource
              1 P N d L m)) j.succ j.succ) =
      unconditionalSelectedCopyCleanedMatchedBranch
        (N := N) (B := P) (m := m)
        Q width schedule (ξ flag x) (ζ flag y) A C j
        (unconditionalActualCanonicalRetainedPhaseTail
          (S := 1) (B := P) (N := N) (d := d) (L := L) j) := by
  rw [unconditionalActualOneScaleFixedSourcePhysicalQuestionAction]
  exact unconditionalActualOneScaleFixedSourceDecodedMatchedBranch
    Q width schedule (ξ flag x) (ζ flag y) A C j positive grid

end

noncomputable section

open WithLp
open scoped BigOperators Kronecker ComplexOrder MatrixOrder
  Matrix.Norms.L2Operator InnerProductSpace

variable {X Y A B : Type*}
variable [Fintype X] [Fintype Y] [Fintype A] [Fintype B]

theorem unconditionalExactFairGammaUnit_eq_global
    (G : Game X Y A B) (n : ℕ) (S : Strategy (G.repeat n))
    (D : Finset (Fin n))
    (u : ExactLocallySampleableTuple X Y A B D) :
    unconditionalExactFairGammaUnit G n S D u =
      exactGlobalHistoryFinGamma
        G n S D u.2.2.2 u.2.1 := by
  apply Subtype.ext
  rfl

end

noncomputable section

open scoped BigOperators

open QuantumParallelRepetition.ClassicalSampling

theorem unconditionalFairMatchedFlag_history_eq
    {X Y A B : Type}
    [Fintype X] [Fintype Y] [Fintype A] [Fintype B]
    {n : ℕ} (D : Finset (Fin n)) (denominator : ℕ)
    (numerator : ExactLocalSamplerIndex X Y D →
      ExactHistoryFlag X Y A B D → ℕ)
    (nonempty : ∀ index,
      (rationalMarked denominator (numerator index)).Nonempty)
    (flag : ExactSourceSharedFlag X Y A B D denominator)
    (x : X) (y : Y)
    (matched :
      exactSourcePermutationMatched
        D denominator numerator nonempty (flag, (x, y)) = true) :
    exactSourceAlicePermutationHistory
        D denominator numerator nonempty flag x =
      exactSourceBobPermutationHistory
        D denominator numerator nonempty flag y := by
  classical
  change
    decide
      (exactSourceAlicePermutationHistory
          D denominator numerator nonempty flag x =
        exactSourceBobPermutationHistory
          D denominator numerator nonempty flag y) = true at matched
  exact of_decide_eq_true matched

theorem unconditionalFairMatchedFlag_bobTarget_eq_aliceSample
    {X Y A B : Type}
    [Fintype X] [Fintype Y] [Fintype A] [Fintype B]
    (G : Game X Y A B) (n : ℕ) (S : Strategy (G.repeat n))
    (D : Finset (Fin n)) (denominator : ℕ)
    (numerator : ExactLocalSamplerIndex X Y D →
      ExactHistoryFlag X Y A B D → ℕ)
    (nonempty : ∀ index,
      (rationalMarked denominator (numerator index)).Nonempty)
    (flag : ExactSourceSharedFlag X Y A B D denominator)
    (x : X) (y : Y)
    (matched :
      exactSourcePermutationMatched
        D denominator numerator nonempty (flag, (x, y)) = true) :
    exactGlobalHistoryFinPhi G n S D
        (exactSourceBobPermutationHistory
          D denominator numerator nonempty flag y) y =
      exactGlobalHistoryFinPhi G n S D
        (exactSourceAliceSampleTuple
          D denominator numerator nonempty (flag, (x, y))).2.2.2 y := by
  have same := unconditionalFairMatchedFlag_history_eq
    D denominator numerator nonempty flag x y matched
  simp only [exactSourceAliceSampleTuple]
  rw [same]

theorem unconditionalFairMatchedFlag_aliceTarget_eq_aliceSample
    {X Y A B : Type}
    [Fintype X] [Fintype Y] [Fintype A] [Fintype B]
    (G : Game X Y A B) (n : ℕ) (S : Strategy (G.repeat n))
    (D : Finset (Fin n)) (denominator : ℕ)
    (numerator : ExactLocalSamplerIndex X Y D →
      ExactHistoryFlag X Y A B D → ℕ)
    (nonempty : ∀ index,
      (rationalMarked denominator (numerator index)).Nonempty)
    (flag : ExactSourceSharedFlag X Y A B D denominator)
    (x : X) (y : Y) :
    exactGlobalHistoryFinGamma G n S D
        (exactSourceAlicePermutationHistory
          D denominator numerator nonempty flag x) x =
      exactGlobalHistoryFinGamma G n S D
        (exactSourceAliceSampleTuple
          D denominator numerator nonempty (flag, (x, y))).2.2.2 x := by
  rfl

end

noncomputable section

open WithLp
open scoped BigOperators Kronecker ComplexOrder MatrixOrder
  Matrix.Norms.L2Operator InnerProductSpace

theorem unconditionalActualOneScaleDecodedMatchedCleanedVector
    {F X Y : Type} {P N d L m : ℕ}
    (Q : ℕ) (width : Fin 1 → ℝ) (schedule : Fin L → Fin 1)
    (ξ : F → X → BipartiteUnitVector d)
    (ζ : F → Y → BipartiteUnitVector d)
    (A C : Fin P → Option ℕ → Matrix.unitaryGroup (Fin (N * m)) ℂ)
    (grid : 0 < N)
    (flag : F) (x : X) (y : Y) (j : Fin L)
    (positive : 0 < width (schedule j)) :
    unconditionalMixedConjugateSelectedBranchLocalAction
        (unconditionalMixedConjugateSigmaAtomLift
          (m := N * m) P
          (conjugateUnitary
            (dSVDensityRationalCanonicalAliceBasis (ξ flag x))))
        (unconditionalMixedConjugateSigmaAtomLift
          (m := N * m) P
          (conjugateUnitary
            (dSVUniformDensityThresholdLeftBobBasis (ζ flag y))))
        (unconditionalSourcePhysicalCleanedFullBilateralStateIsometry
          (unconditionalActualOneScaleFixedSourcePhaseSplit P) j
          (actualStoppingBranchVector
            (actualStoppingQuestionLocalAction
              (physical8OneScaleActualAliceStoppingUnitary
                (P := P) (N := N) (d := d) (L := L) (m := m)
                (unconditionalActualOneScaleFixedSourcePhaseSplit P)
                Q width schedule ξ A flag x)
              (physical8OneScaleActualBobStoppingUnitary
                (P := P) (N := N) (d := d) (L := L) (m := m)
                (unconditionalActualOneScaleFixedSourcePhaseSplit P)
                Q width schedule ζ C flag y)
              (unconditionalSourcePhysicalCleanedStoppingFixedSource
                1 P N d L m)) j.succ j.succ)) =
      integratorActualC485CleanedVector
        (S := 1) (B := P) (N := N) (d := d) (L := L) (m := m)
        Q width schedule (ξ flag x) (ζ flag y) A C j := by
  classical
  have decoded :=
    unconditionalActualOneScalePhysicalQuestionDecodedMatchedBranch
      Q width schedule ξ ζ A C grid flag x y j positive
  change
    unconditionalMixedConjugateSelectedBranchLocalAction
        (unconditionalMixedConjugateSigmaAtomLift
          (m := N * m) P
          (conjugateUnitary
            (dSVDensityRationalCanonicalAliceBasis (ξ flag x))))
        (unconditionalMixedConjugateSigmaAtomLift
          (m := N * m) P
          (conjugateUnitary
            (dSVUniformDensityThresholdLeftBobBasis (ζ flag y))))
        _ =
      unconditionalMixedConjugateSelectedBranchLocalAction
        (unconditionalMixedConjugateSigmaAtomLift
          (m := N * m) P
          (conjugateUnitary
            (dSVDensityRationalCanonicalAliceBasis (ξ flag x))))
        (unconditionalMixedConjugateSigmaAtomLift
          (m := N * m) P
          (conjugateUnitary
            (dSVUniformDensityThresholdLeftBobBasis (ζ flag y))))
        _
  rw [decoded]

end

noncomputable section

open scoped BigOperators Kronecker ComplexOrder MatrixOrder

attribute [local instance] Classical.propDecidable

theorem unconditionalActualRetainedPOVM_ext
    {C ι : Type*} [Fintype C] [Fintype ι] [DecidableEq ι]
    (P Q : POVM C ι)
    (same : ∀ (a : C) (i j : ι), P.operator a i j = Q.operator a i j) :
    P = Q := by
  cases P with
  | mk pe pp pc =>
    cases Q with
    | mk qe qp qc =>
      have operator : pe = qe := by
        funext a
        apply Matrix.ext
        intro i j
        exact same a i j
      cases operator
      rfl

theorem unconditionalPhysicalOneScaleActualGlobalFiberPOVM_nested
    {C : Type*} [Fintype C]
    {P N d L m : ℕ} {R : Type}
    [Fintype R] [DecidableEq R]
    (phaseSplit :
      DSVDensityRationalPublicMultiscalePhaseIndex 1 P ≃
        Fin P × R)
    (j : Fin L)
    (source : POVM C (Fin d)) :
    directDSVActualReindexedRetainedPOVM
        (physical8OneScaleActualGlobalFiberEquiv
          (N := N) (d := d) (m := m) phaseSplit j) source =
      directDSVActualReindexedRetainedPOVM
        (unconditionalSourcePhysicalCleanedFullLocalIndexEquiv
          phaseSplit j)
        (directDSVActualReindexedRetainedPOVM
          (physical8SelectedGlobalTargetWorkEquiv P N d m)
          source) := by
  classical
  apply unconditionalActualRetainedPOVM_ext
  intro a i k
  let outer :
      UnconditionalSourcePhysicalStoppingPhaseFiber
        1 P N d L m ≃
        UnconditionalSelectedCopyLocalIndex P d N m ×
          UnconditionalSourceFlagControlledRetainedIndex
            (N := N) (d := d) j R :=
    unconditionalSourcePhysicalCleanedFullLocalIndexEquiv
      phaseSplit j
  let inner :
      UnconditionalSelectedCopyLocalIndex P d N m ≃
        Fin d × (Fin P × Fin (N * m)) :=
    physical8SelectedGlobalTargetWorkEquiv P N d m
  by_cases selected :
      (inner (outer i).1).2 = (inner (outer k).1).2
  · by_cases retained : (outer i).2 = (outer k).2
    · simp [directDSVActualReindexedRetainedPOVM_effect,
        physical8OneScaleActualGlobalFiberEquiv,
        Equiv.prodAssoc_apply, outer, inner, selected, retained]
    · simp [directDSVActualReindexedRetainedPOVM_effect,
        physical8OneScaleActualGlobalFiberEquiv,
        Equiv.prodAssoc_apply, outer, inner, selected, retained]
  · by_cases retained : (outer i).2 = (outer k).2
    · simp [directDSVActualReindexedRetainedPOVM_effect,
        physical8OneScaleActualGlobalFiberEquiv,
        Equiv.prodAssoc_apply, outer, inner, selected, retained]
    · simp [directDSVActualReindexedRetainedPOVM_effect,
        physical8OneScaleActualGlobalFiberEquiv,
        Equiv.prodAssoc_apply, outer, inner, selected, retained]

theorem unconditionalPhysicalOneScaleOriginalFlagPOVM_succ_nested
    {C Z : Type*} [Fintype C] [DecidableEq C]
    {P N d L m : ℕ} {R : Type}
    [Fintype R] [DecidableEq R]
    (phaseSplit :
      DSVDensityRationalPublicMultiscalePhaseIndex 1 P ≃
        Fin P × R)
    (default : C)
    (source : Z → POVM C (Fin d))
    (j : Fin L) (x : Z) :
    physical8OneScaleOriginalFlagPOVM
        (N := N) (d := d) (m := m) phaseSplit default source
        j.succ x =
      directDSVActualReindexedRetainedPOVM
        (unconditionalSourcePhysicalCleanedFullLocalIndexEquiv
          phaseSplit j)
        (directDSVActualReindexedRetainedPOVM
          (physical8SelectedGlobalTargetWorkEquiv P N d m)
          (source x)) := by
  change
    directDSVActualReindexedRetainedPOVM
        (physical8OneScaleActualGlobalFiberEquiv
          (N := N) (d := d) (m := m) phaseSplit j) (source x) = _
  exact unconditionalPhysicalOneScaleActualGlobalFiberPOVM_nested
    phaseSplit j (source x)

end

noncomputable section

open WithLp
open scoped BigOperators Kronecker ComplexOrder MatrixOrder
  Matrix.Norms.L2Operator InnerProductSpace

attribute [local instance] Classical.propDecidable

theorem unconditionalActualC485FullBilateralWorkRegroup
    {P N d L m : ℕ}
    (j : Fin L)
    (z : EuclideanSpace ℂ
      (UnconditionalSourcePhysicalStoppingPhaseFiber
          1 P N d L m ×
       UnconditionalSourcePhysicalStoppingPhaseFiber
          1 P N d L m)) :
    LinearIsometryEquiv.piLpCongrLeft 2 ℂ ℂ
        (Equiv.prodCongr
          (Equiv.refl
            (UnconditionalSelectedCopyLocalIndex P d N m ×
             UnconditionalSelectedCopyLocalIndex P d N m))
          (unconditionalActualC485RetainedHistoryPairEquiv
            (P := P) (N := N) (d := d) j))
        (LinearIsometryEquiv.piLpCongrLeft 2 ℂ ℂ
          (directDSVActualBilateralRetainedIndexEquiv
            (unconditionalSourcePhysicalCleanedFullLocalIndexEquiv
              (N := N) (d := d) (m := m)
              (unconditionalActualOneScaleFixedSourcePhaseSplit P) j)
            (unconditionalSourcePhysicalCleanedFullLocalIndexEquiv
              (N := N) (d := d) (m := m)
              (unconditionalActualOneScaleFixedSourcePhaseSplit P) j)) z) =
      unconditionalSourcePhysicalCleanedFullBilateralStateIsometry
        (unconditionalActualOneScaleFixedSourcePhaseSplit P) j z := by
  ext q
  rfl

end

noncomputable section

open WithLp
open scoped BigOperators Kronecker ComplexOrder MatrixOrder
  Matrix.Norms.L2Operator InnerProductSpace

open QuantumParallelRepetition.ClassicalSampling

theorem unconditionalActualFairSourceAliceFlagPOVM_succ_nested
    {X Y A B : Type}
    [Fintype X] [Fintype Y] [Fintype A] [Fintype B]
    [decA : DecidableEq A]
    (G : Game X Y A B) (n : ℕ) (S : Strategy (G.repeat n))
    (D : Finset (Fin n)) (denominator : ℕ)
    (numerator : ExactLocalSamplerIndex X Y D →
      ExactHistoryFlag X Y A B D → ℕ)
    (nonempty : ∀ index,
      (rationalMarked denominator (numerator index)).Nonempty)
    (a₀ : A) {P N L m : ℕ}
    (flag : ExactSourceSharedFlag X Y A B D denominator)
    (j : Fin L) (x : X) :
    unconditionalActualFairSourceAliceFlagPOVM
        G n S D denominator numerator nonempty a₀ P N L m
        flag j.succ x =
      directDSVActualReindexedRetainedPOVM
        (unconditionalSourcePhysicalCleanedFullLocalIndexEquiv
          (N := N)
          (d := Fintype.card
            (ExactGlobalHistoryLocalIndex G n S D))
          (m := m)
          (unconditionalActualOneScaleFixedSourcePhaseSplit P) j)
        (directDSVActualReindexedRetainedPOVM
          (physical8SelectedGlobalTargetWorkEquiv
            P N
            (Fintype.card
              (ExactGlobalHistoryLocalIndex G n S D)) m)
          (unitaryConjugatePOVM
            (conjugateUnitary
              (dSVDensityRationalCanonicalAliceBasis
                (unconditionalActualFairSourceAliceTarget
                  G n S D denominator numerator nonempty flag x)))
            (integratorActualC485SourceAlicePOVM
              G n S D a₀ x))) := by
  classical
  have same_instance : decA = Classical.decEq A :=
    Subsingleton.elim _ _
  cases same_instance
  change
    physical8OneScaleOriginalFlagPOVM
      (N := N)
      (d := Fintype.card
        (ExactGlobalHistoryLocalIndex G n S D))
      (m := m)
      (unconditionalActualOneScaleFixedSourcePhaseSplit P)
      a₀
      (fun q =>
        unitaryConjugatePOVM
          (conjugateUnitary
            (dSVDensityRationalCanonicalAliceBasis
              (unconditionalActualFairSourceAliceTarget
                G n S D denominator numerator nonempty flag q)))
          (integratorActualC485SourceAlicePOVM
            G n S D a₀ q)) j.succ x = _
  exact
    unconditionalPhysicalOneScaleOriginalFlagPOVM_succ_nested
      (N := N)
      (d := Fintype.card
        (ExactGlobalHistoryLocalIndex G n S D))
      (m := m)
      (unconditionalActualOneScaleFixedSourcePhaseSplit P)
      a₀
      (fun q =>
        unitaryConjugatePOVM
          (conjugateUnitary
            (dSVDensityRationalCanonicalAliceBasis
              (unconditionalActualFairSourceAliceTarget
                G n S D denominator numerator nonempty flag q)))
          (integratorActualC485SourceAlicePOVM
            G n S D a₀ q)) j x

theorem unconditionalActualFairSourceBobFlagPOVM_succ_nested
    {X Y A B : Type}
    [Fintype X] [Fintype Y] [Fintype A] [Fintype B]
    [decB : DecidableEq B]
    (G : Game X Y A B) (n : ℕ) (S : Strategy (G.repeat n))
    (D : Finset (Fin n)) (denominator : ℕ)
    (numerator : ExactLocalSamplerIndex X Y D →
      ExactHistoryFlag X Y A B D → ℕ)
    (nonempty : ∀ index,
      (rationalMarked denominator (numerator index)).Nonempty)
    (b₀ : B) {P N L m : ℕ}
    (flag : ExactSourceSharedFlag X Y A B D denominator)
    (j : Fin L) (y : Y) :
    unconditionalActualFairSourceBobFlagPOVM
        G n S D denominator numerator nonempty b₀ P N L m
        flag j.succ y =
      directDSVActualReindexedRetainedPOVM
        (unconditionalSourcePhysicalCleanedFullLocalIndexEquiv
          (N := N)
          (d := Fintype.card
            (ExactGlobalHistoryLocalIndex G n S D))
          (m := m)
          (unconditionalActualOneScaleFixedSourcePhaseSplit P) j)
        (directDSVActualReindexedRetainedPOVM
          (physical8SelectedGlobalTargetWorkEquiv
            P N
            (Fintype.card
              (ExactGlobalHistoryLocalIndex G n S D)) m)
          (unitaryConjugatePOVM
            (conjugateUnitary
              (dSVUniformDensityThresholdLeftBobBasis
                (unconditionalActualFairSourceBobTarget
                  G n S D denominator numerator nonempty flag y)))
            (integratorActualC485SourceBobPOVM
              G n S D b₀ y))) := by
  classical
  have same_instance : decB = Classical.decEq B :=
    Subsingleton.elim _ _
  cases same_instance
  change
    physical8OneScaleOriginalFlagPOVM
      (N := N)
      (d := Fintype.card
        (ExactGlobalHistoryLocalIndex G n S D))
      (m := m)
      (unconditionalActualOneScaleFixedSourcePhaseSplit P)
      b₀
      (fun q =>
        unitaryConjugatePOVM
          (conjugateUnitary
            (dSVUniformDensityThresholdLeftBobBasis
              (unconditionalActualFairSourceBobTarget
                G n S D denominator numerator nonempty flag q)))
          (integratorActualC485SourceBobPOVM
            G n S D b₀ q)) j.succ y = _
  exact
    unconditionalPhysicalOneScaleOriginalFlagPOVM_succ_nested
      (N := N)
      (d := Fintype.card
        (ExactGlobalHistoryLocalIndex G n S D))
      (m := m)
      (unconditionalActualOneScaleFixedSourcePhaseSplit P)
      b₀
      (fun q =>
        unitaryConjugatePOVM
          (conjugateUnitary
            (dSVUniformDensityThresholdLeftBobBasis
              (unconditionalActualFairSourceBobTarget
                G n S D denominator numerator nonempty flag q)))
          (integratorActualC485SourceBobPOVM
            G n S D b₀ q)) j y

end

noncomputable section

open WithLp
open scoped BigOperators Kronecker ComplexOrder MatrixOrder
  Matrix.Norms.L2Operator InnerProductSpace

theorem unconditionalActualPairedDecodedMatchedCleanedVector
    {F X Y : Type} {P N d L m : ℕ}
    (Q : ℕ) (width : Fin 1 → ℝ) (schedule : Fin L → Fin 1)
    (ξ : F → X → BipartiteUnitVector d)
    (ζ : F → Y → BipartiteUnitVector d)
    (A C : Fin P → Option ℕ → Matrix.unitaryGroup (Fin (N * m)) ℂ)
    (grid : 0 < N)
    (flag : F) (x : X) (y : Y) (j : Fin L)
    (positive : 0 < width (schedule j)) :
    let phase := unconditionalActualOneScaleFixedSourcePhaseSplit P
    let outer := unconditionalSourcePhysicalCleanedFullLocalIndexEquiv
      (N := N) (d := d) (m := m) phase j
    let pair := unconditionalActualC485RetainedHistoryPairEquiv
      (P := P) (N := N) (d := d) j
    let stopped := actualStoppingBranchVector
      (actualStoppingQuestionLocalAction
        (physical8OneScaleActualAliceStoppingUnitary
          (P := P) (N := N) (d := d) (L := L) (m := m)
          phase Q width schedule ξ A flag x)
        (physical8OneScaleActualBobStoppingUnitary
          (P := P) (N := N) (d := d) (L := L) (m := m)
          phase Q width schedule ζ C flag y)
        (unconditionalSourcePhysicalCleanedStoppingFixedSource
          1 P N d L m)) j.succ j.succ
    unconditionalMixedConjugateSelectedBranchLocalAction
      (unconditionalMixedConjugateSigmaAtomLift
        (m := N * m) P
        (conjugateUnitary
          (dSVDensityRationalCanonicalAliceBasis (ξ flag x))))
      (unconditionalMixedConjugateSigmaAtomLift
        (m := N * m) P
        (conjugateUnitary
          (dSVUniformDensityThresholdLeftBobBasis (ζ flag y))))
      (LinearIsometryEquiv.piLpCongrLeft 2 ℂ ℂ
        (Equiv.prodCongr
          (Equiv.refl
            (UnconditionalSelectedCopyLocalIndex P d N m ×
             UnconditionalSelectedCopyLocalIndex P d N m)) pair)
        (LinearIsometryEquiv.piLpCongrLeft 2 ℂ ℂ
          (directDSVActualBilateralRetainedIndexEquiv
            outer outer) stopped)) =
      integratorActualC485CleanedVector
        (S := 1) (B := P) (N := N) (d := d) (L := L) (m := m)
        Q width schedule (ξ flag x) (ζ flag y) A C j := by
  dsimp only
  rw [unconditionalActualC485FullBilateralWorkRegroup]
  exact unconditionalActualOneScaleDecodedMatchedCleanedVector
    Q width schedule ξ ζ A C grid flag x y j positive

end

noncomputable section

open WithLp
open scoped BigOperators Kronecker ComplexOrder MatrixOrder
  Matrix.Norms.L2Operator InnerProductSpace

open QuantumParallelRepetition.ClassicalSampling

theorem unconditionalActualC485CompleteDecodedScalarBorn
    {X Y A B : Type}
    [Fintype X] [Fintype Y] [Fintype A] [Fintype B]
    {P N d m : ℕ} {ι κ R T : Type}
    [Fintype ι] [Fintype κ] [Fintype R] [Fintype T]
    [DecidableEq ι] [DecidableEq κ] [DecidableEq R] [DecidableEq T]
    (G : Game X Y A B)
    (alice bob : Matrix.unitaryGroup (Fin d) ℂ)
    (PA : POVM A (Fin d)) (PB : POVM B (Fin d))
    (selectedA :
      POVM A (UnconditionalSelectedCopyLocalIndex P d N m))
    (selectedB :
      POVM B (UnconditionalSelectedCopyLocalIndex P d N m))
    (selectedA_eq :
      selectedA =
        directDSVActualReindexedRetainedPOVM
          (physical8SelectedGlobalTargetWorkEquiv P N d m) PA)
    (selectedB_eq :
      selectedB =
        directDSVActualReindexedRetainedPOVM
          (physical8SelectedGlobalTargetWorkEquiv P N d m) PB)
    (eA : ι ≃ UnconditionalSelectedCopyLocalIndex P d N m × R)
    (eB : κ ≃ UnconditionalSelectedCopyLocalIndex P d N m × R)
    (pair : R × R ≃ T)
    (rawA : POVM A ι) (rawB : POVM B κ)
    (rawA_eq :
      rawA =
        directDSVActualReindexedRetainedPOVM eA
          (directDSVActualReindexedRetainedPOVM
            (physical8SelectedGlobalTargetWorkEquiv P N d m)
            (unitaryConjugatePOVM alice PA)))
    (rawB_eq :
      rawB =
        directDSVActualReindexedRetainedPOVM eB
          (directDSVActualReindexedRetainedPOVM
            (physical8SelectedGlobalTargetWorkEquiv P N d m)
            (unitaryConjugatePOVM bob PB)))
    (x : X) (y : Y)
    (z : EuclideanSpace ℂ (ι × κ))
    (source cleaned : EuclideanSpace ℂ
      ((UnconditionalSelectedCopyLocalIndex P d N m ×
        UnconditionalSelectedCopyLocalIndex P d N m) × T))
    (source_eq : source = cleaned)
    (decoded :
      unconditionalMixedConjugateSelectedBranchLocalAction
        (unconditionalMixedConjugateSigmaAtomLift
          (m := N * m) P alice)
        (unconditionalMixedConjugateSigmaAtomLift
          (m := N * m) P bob)
        (LinearIsometryEquiv.piLpCongrLeft 2 ℂ ℂ
          (Equiv.prodCongr
            (Equiv.refl
              (UnconditionalSelectedCopyLocalIndex P d N m ×
               UnconditionalSelectedCopyLocalIndex P d N m))
            pair)
          (LinearIsometryEquiv.piLpCongrLeft 2 ℂ ℂ
            (directDSVActualBilateralRetainedIndexEquiv
              eA eB) z)) = cleaned) :
    unconditionalActualC485SelectedVerifierBorn
        G selectedA selectedB x y source =
      unconditionalActualC485RawPhysicalVerifierBorn
        G rawA rawB x y z := by
  exact unconditionalActualC485CompleteDecodedPhysicalBorn
    G alice bob PA PB selectedA selectedB selectedA_eq selectedB_eq
    eA eB pair rawA rawB rawA_eq rawB_eq
    x y z source cleaned source_eq decoded

theorem unconditionalActualFairSourceHistoryStopBorn_eq_selected
    {X Y A B : Type}
    [Fintype X] [Fintype Y] [Fintype A] [Fintype B]
    (G : Game X Y A B) (n : ℕ) (S : Strategy (G.repeat n))
    (D : Finset (Fin n)) (a₀ : A) (b₀ : B)
    {P N L m : ℕ} (Q : ℕ)
    (width : Fin 1 → ℝ) (schedule : Fin L → Fin 1)
    (UA UB : Fin P → Option ℕ →
      Matrix.unitaryGroup (Fin (N * m)) ℂ)
    (h : ExactLocallySampleableTuple X Y A B D)
    (j : Fin L) :
    unconditionalActualFairSourceHistoryStopBorn
        G n S D a₀ b₀ Q width schedule UA UB h j =
      unconditionalActualC485SelectedVerifierBorn G
        (integratorActualC485SelectedAlicePOVM
          G n S D a₀ P N m h.2.1)
        (integratorActualC485SelectedBobPOVM
          G n S D b₀ P N m h.2.2.1)
        h.2.1 h.2.2.1
        (integratorActualC485CleanedVector
          (S := 1) (B := P) (N := N)
          (d := Fintype.card
            (ExactGlobalHistoryLocalIndex G n S D))
          (L := L) (m := m)
          Q width schedule
          (unconditionalExactFairGammaUnit G n S D h)
          (exactGlobalHistoryFinPhi
            G n S D h.2.2.2 h.2.2.1)
          UA UB j) := by
  classical
  rfl

theorem unconditionalActualFairSourcePhysicalStopBorn_eq_raw
    {X Y A B : Type}
    [Fintype X] [Fintype Y] [Fintype A] [Fintype B]
    [DecidableEq A] [DecidableEq B]
    (G : Game X Y A B) (n : ℕ) (S : Strategy (G.repeat n))
    (D : Finset (Fin n)) (denominator : ℕ)
    (numerator : ExactLocalSamplerIndex X Y D →
      ExactHistoryFlag X Y A B D → ℕ)
    (nonempty : ∀ index,
      (rationalMarked denominator (numerator index)).Nonempty)
    (a₀ : A) (b₀ : B)
    {P N L m : ℕ} (Q : ℕ)
    (width : Fin 1 → ℝ) (schedule : Fin L → Fin 1)
    (UA UB : Fin P → Option ℕ →
      Matrix.unitaryGroup (Fin (N * m)) ℂ)
    (flag : ExactSourceSharedFlag X Y A B D denominator)
    (x : X) (y : Y) (j : Fin L) :
    let d := Fintype.card (ExactGlobalHistoryLocalIndex G n S D)
    let PA := unconditionalActualFairSourceAliceFlagPOVM
      G n S D denominator numerator nonempty a₀ P N L m flag
    let PB := unconditionalActualFairSourceBobFlagPOVM
      G n S D denominator numerator nonempty b₀ P N L m flag
    let stopped := actualStoppingBranchVector
      (actualStoppingQuestionLocalAction
        (unconditionalActualFairSourceAliceStoppingUnitary
          (P := P) (N := N) (L := L) (m := m)
          G n S D denominator numerator nonempty
          Q width schedule UA flag x)
        (unconditionalActualFairSourceBobStoppingUnitary
          (P := P) (N := N) (L := L) (m := m)
          G n S D denominator numerator nonempty
          Q width schedule UB flag y)
        (unconditionalSourcePhysicalCleanedStoppingFixedSource
          1 P N d L m)) j.succ j.succ
    unconditionalActualFairSourcePhysicalStopBorn
        G n S D denominator numerator nonempty a₀ b₀
        Q width schedule UA UB flag x y j =
      unconditionalActualC485RawPhysicalVerifierBorn
        G (PA j.succ x) (PB j.succ y) x y stopped := by
  classical
  dsimp only
  rfl

theorem unconditionalActualFairSourceMatchedHistoryGamma
    {X Y A B : Type}
    [Fintype X] [Fintype Y] [Fintype A] [Fintype B]
    (G : Game X Y A B) (n : ℕ) (S : Strategy (G.repeat n))
    (D : Finset (Fin n)) (denominator : ℕ)
    (numerator : ExactLocalSamplerIndex X Y D →
      ExactHistoryFlag X Y A B D → ℕ)
    (nonempty : ∀ index,
      (rationalMarked denominator (numerator index)).Nonempty)
    (flag : ExactSourceSharedFlag X Y A B D denominator)
    (x : X) (y : Y) :
    unconditionalExactFairGammaUnit G n S D
        (exactSourceAliceSampleTuple
          D denominator numerator nonempty (flag, (x, y))) =
      unconditionalActualFairSourceAliceTarget
        G n S D denominator numerator nonempty flag x := by
  rw [unconditionalExactFairGammaUnit_eq_global]
  exact
    (unconditionalFairMatchedFlag_aliceTarget_eq_aliceSample
      G n S D denominator numerator nonempty flag x y).symm

theorem unconditionalActualFairSourceMatchedHistoryPhi
    {X Y A B : Type}
    [Fintype X] [Fintype Y] [Fintype A] [Fintype B]
    (G : Game X Y A B) (n : ℕ) (S : Strategy (G.repeat n))
    (D : Finset (Fin n)) (denominator : ℕ)
    (numerator : ExactLocalSamplerIndex X Y D →
      ExactHistoryFlag X Y A B D → ℕ)
    (nonempty : ∀ index,
      (rationalMarked denominator (numerator index)).Nonempty)
    (flag : ExactSourceSharedFlag X Y A B D denominator)
    (x : X) (y : Y)
    (matching :
      exactSourcePermutationMatched
        D denominator numerator nonempty (flag, (x, y)) = true) :
    exactGlobalHistoryFinPhi G n S D
        (exactSourceAliceSampleTuple
          D denominator numerator nonempty (flag, (x, y))).2.2.2 y =
      unconditionalActualFairSourceBobTarget
        G n S D denominator numerator nonempty flag y := by
  exact
    (unconditionalFairMatchedFlag_bobTarget_eq_aliceSample
      G n S D denominator numerator nonempty flag x y matching).symm

theorem unconditionalActualFairSourceMatchedHistoryCleanedVector
    {X Y A B : Type}
    [Fintype X] [Fintype Y] [Fintype A] [Fintype B]
    (G : Game X Y A B) (n : ℕ) (S : Strategy (G.repeat n))
    (D : Finset (Fin n)) (denominator : ℕ)
    (numerator : ExactLocalSamplerIndex X Y D →
      ExactHistoryFlag X Y A B D → ℕ)
    (nonempty : ∀ index,
      (rationalMarked denominator (numerator index)).Nonempty)
    {P N L m : ℕ} (Q : ℕ)
    (width : Fin 1 → ℝ) (schedule : Fin L → Fin 1)
    (UA UB : Fin P → Option ℕ →
      Matrix.unitaryGroup (Fin (N * m)) ℂ)
    (flag : ExactSourceSharedFlag X Y A B D denominator)
    (x : X) (y : Y)
    (matching :
      exactSourcePermutationMatched
        D denominator numerator nonempty (flag, (x, y)) = true)
    (j : Fin L) :
    let h := exactSourceAliceSampleTuple
      D denominator numerator nonempty (flag, (x, y))
    integratorActualC485CleanedVector
        (S := 1) (B := P) (N := N)
        (d := Fintype.card (ExactGlobalHistoryLocalIndex G n S D))
        (L := L) (m := m)
        Q width schedule
        (unconditionalExactFairGammaUnit G n S D h)
        (exactGlobalHistoryFinPhi G n S D h.2.2.2 h.2.2.1)
        UA UB j =
      integratorActualC485CleanedVector
        (S := 1) (B := P) (N := N)
        (d := Fintype.card (ExactGlobalHistoryLocalIndex G n S D))
        (L := L) (m := m)
        Q width schedule
        (unconditionalActualFairSourceAliceTarget
          G n S D denominator numerator nonempty flag x)
        (unconditionalActualFairSourceBobTarget
          G n S D denominator numerator nonempty flag y)
        UA UB j := by
  dsimp only
  exact congrArg₂
    (fun (u v : BipartiteUnitVector
        (Fintype.card (ExactGlobalHistoryLocalIndex G n S D))) =>
      integratorActualC485CleanedVector
        (S := 1) (B := P) (N := N)
        (d := Fintype.card (ExactGlobalHistoryLocalIndex G n S D))
        (L := L) (m := m)
        Q width schedule u v UA UB j)
    (unconditionalActualFairSourceMatchedHistoryGamma
      G n S D denominator numerator nonempty flag x y)
    (unconditionalActualFairSourceMatchedHistoryPhi
      G n S D denominator numerator nonempty flag x y matching)

end

end QuantumParallelRepetition


open QuantumParallelRepetition
open scoped ComplexOrder Matrix BigOperators InnerProductSpace
open Complex Matrix Finset
open WithLp
open scoped BigOperators Kronecker ComplexOrder MatrixOrder
  Matrix.Norms.L2Operator InnerProductSpace
open QuantumParallelRepetition.ClassicalSampling

theorem solution
    {X Y A B : Type}
    [Fintype X] [Fintype Y] [Fintype A] [Fintype B]
    [DecidableEq A] [DecidableEq B]
    (G : Game X Y A B) (n : ℕ) (S : Strategy (G.repeat n))
    (D : Finset (Fin n)) (denominator : ℕ)
    (numerator : ExactLocalSamplerIndex X Y D →
      ExactHistoryFlag X Y A B D → ℕ)
    (nonempty : ∀ index,
      (rationalMarked denominator (numerator index)).Nonempty)
    (a₀ : A) (b₀ : B)
    {P N L m : ℕ} (Q : ℕ)
    (width : Fin 1 → ℝ) (schedule : Fin L → Fin 1)
    (UA UB : Fin P → Option ℕ →
      Matrix.unitaryGroup (Fin (N * m)) ℂ)
    (grid : 0 < N)
    (width_positive : ∀ s : Fin 1, 0 < width s)
    (flag : ExactSourceSharedFlag X Y A B D denominator)
    (x : X) (y : Y)
    (matching :
      exactSourcePermutationMatched
        D denominator numerator nonempty (flag, (x, y)) = true)
    (j : Fin L) :
    unconditionalActualFairSourceHistoryStopBorn
        G n S D a₀ b₀ Q width schedule UA UB
        (exactSourceAliceSampleTuple
          D denominator numerator nonempty (flag, (x, y))) j =
      unconditionalActualFairSourcePhysicalStopBorn
        G n S D denominator numerator nonempty a₀ b₀
        Q width schedule UA UB flag x y j := by
  classical
  let d : ℕ :=
    Fintype.card (ExactGlobalHistoryLocalIndex G n S D)
  let h := exactSourceAliceSampleTuple
    D denominator numerator nonempty (flag, (x, y))
  let targetA := unconditionalActualFairSourceAliceTarget
    G n S D denominator numerator nonempty
  let targetB := unconditionalActualFairSourceBobTarget
    G n S D denominator numerator nonempty
  let phase := unconditionalActualOneScaleFixedSourcePhaseSplit P
  let sourceA := integratorActualC485SourceAlicePOVM
    G n S D a₀ x
  let sourceB := integratorActualC485SourceBobPOVM
    G n S D b₀ y
  let atomA : Matrix.unitaryGroup (Fin d) ℂ :=
    conjugateUnitary
      (dSVDensityRationalCanonicalAliceBasis (targetA flag x))
  let atomB : Matrix.unitaryGroup (Fin d) ℂ :=
    conjugateUnitary
      (dSVUniformDensityThresholdLeftBobBasis (targetB flag y))
  let outer := unconditionalSourcePhysicalCleanedFullLocalIndexEquiv
    (N := N) (d := d) (m := m) phase j
  let pair := unconditionalActualC485RetainedHistoryPairEquiv
    (P := P) (N := N) (d := d) j
  let selectedA := integratorActualC485SelectedAlicePOVM
    G n S D a₀ P N m x
  let selectedB := integratorActualC485SelectedBobPOVM
    G n S D b₀ P N m y
  have selectedA_eq : selectedA =
      directDSVActualReindexedRetainedPOVM
        (physical8SelectedGlobalTargetWorkEquiv P N d m)
        sourceA := by
    rfl
  have selectedB_eq : selectedB =
      directDSVActualReindexedRetainedPOVM
        (physical8SelectedGlobalTargetWorkEquiv P N d m)
        sourceB := by
    rfl
  let rawA := unconditionalActualFairSourceAliceFlagPOVM
    G n S D denominator numerator nonempty a₀ P N L m flag j.succ x
  let rawB := unconditionalActualFairSourceBobFlagPOVM
    G n S D denominator numerator nonempty b₀ P N L m flag j.succ y
  have rawA_eq : rawA =
      directDSVActualReindexedRetainedPOVM outer
        (directDSVActualReindexedRetainedPOVM
          (physical8SelectedGlobalTargetWorkEquiv P N d m)
          (unitaryConjugatePOVM atomA sourceA)) := by
    simpa only [rawA, outer, phase, atomA, sourceA, targetA, d] using
      (unconditionalActualFairSourceAliceFlagPOVM_succ_nested
        G n S D denominator numerator nonempty a₀
        (P := P) (N := N) (L := L) (m := m) flag j x)
  have rawB_eq : rawB =
      directDSVActualReindexedRetainedPOVM outer
        (directDSVActualReindexedRetainedPOVM
          (physical8SelectedGlobalTargetWorkEquiv P N d m)
          (unitaryConjugatePOVM atomB sourceB)) := by
    simpa only [rawB, outer, phase, atomB, sourceB, targetB, d] using
      (unconditionalActualFairSourceBobFlagPOVM_succ_nested
        G n S D denominator numerator nonempty b₀
        (P := P) (N := N) (L := L) (m := m) flag j y)
  let source := integratorActualC485CleanedVector
    (S := 1) (B := P) (N := N) (d := d) (L := L) (m := m)
    Q width schedule
    (unconditionalExactFairGammaUnit G n S D h)
    (exactGlobalHistoryFinPhi G n S D h.2.2.2 h.2.2.1)
    UA UB j
  let cleaned := integratorActualC485CleanedVector
    (S := 1) (B := P) (N := N) (d := d) (L := L) (m := m)
    Q width schedule (targetA flag x) (targetB flag y) UA UB j
  have source_eq : source = cleaned := by
    exact unconditionalActualFairSourceMatchedHistoryCleanedVector
      G n S D denominator numerator nonempty
      Q width schedule UA UB flag x y matching j
  let stopped := actualStoppingBranchVector
    (actualStoppingQuestionLocalAction
      (unconditionalActualFairSourceAliceStoppingUnitary
        (P := P) (N := N) (L := L) (m := m)
        G n S D denominator numerator nonempty
        Q width schedule UA flag x)
      (unconditionalActualFairSourceBobStoppingUnitary
        (P := P) (N := N) (L := L) (m := m)
        G n S D denominator numerator nonempty
        Q width schedule UB flag y)
      (unconditionalSourcePhysicalCleanedStoppingFixedSource
        1 P N d L m)) j.succ j.succ
  have decoded :
      unconditionalMixedConjugateSelectedBranchLocalAction
        (unconditionalMixedConjugateSigmaAtomLift
          (m := N * m) P atomA)
        (unconditionalMixedConjugateSigmaAtomLift
          (m := N * m) P atomB)
        (LinearIsometryEquiv.piLpCongrLeft 2 ℂ ℂ
          (Equiv.prodCongr
            (Equiv.refl
              (UnconditionalSelectedCopyLocalIndex P d N m ×
               UnconditionalSelectedCopyLocalIndex P d N m))
            pair)
          (LinearIsometryEquiv.piLpCongrLeft 2 ℂ ℂ
            (directDSVActualBilateralRetainedIndexEquiv
              outer outer) stopped)) = cleaned := by
    simpa only [phase, stopped, cleaned, atomA, atomB, targetA,
      targetB, unconditionalActualFairSourceAliceStoppingUnitary,
      unconditionalActualFairSourceBobStoppingUnitary] using
      (unconditionalActualPairedDecodedMatchedCleanedVector
        Q width schedule
        (unconditionalActualFairSourceAliceTarget
          G n S D denominator numerator nonempty)
        (unconditionalActualFairSourceBobTarget
          G n S D denominator numerator nonempty)
        UA UB grid flag x y j (width_positive (schedule j)))
  have source_born :
      unconditionalActualFairSourceHistoryStopBorn
          G n S D a₀ b₀ Q width schedule UA UB h j =
        unconditionalActualC485SelectedVerifierBorn
          G selectedA selectedB x y source := by
    exact unconditionalActualFairSourceHistoryStopBorn_eq_selected
      G n S D a₀ b₀ Q width schedule UA UB h j
  have raw_born :
      unconditionalActualFairSourcePhysicalStopBorn
          G n S D denominator numerator nonempty a₀ b₀
          Q width schedule UA UB flag x y j =
        unconditionalActualC485RawPhysicalVerifierBorn
          G rawA rawB x y stopped := by
    exact unconditionalActualFairSourcePhysicalStopBorn_eq_raw
      G n S D denominator numerator nonempty a₀ b₀
      Q width schedule UA UB flag x y j
  calc
    unconditionalActualFairSourceHistoryStopBorn
        G n S D a₀ b₀ Q width schedule UA UB h j =
      unconditionalActualC485SelectedVerifierBorn
        G selectedA selectedB x y source := source_born
    _ = unconditionalActualC485RawPhysicalVerifierBorn
        G rawA rawB x y stopped :=
      unconditionalActualC485CompleteDecodedScalarBorn
        G atomA atomB sourceA sourceB selectedA selectedB
        selectedA_eq selectedB_eq outer outer pair rawA rawB
        rawA_eq rawB_eq x y stopped source cleaned source_eq decoded
    _ = unconditionalActualFairSourcePhysicalStopBorn
        G n S D denominator numerator nonempty a₀ b₀
        Q width schedule UA UB flag x y j := raw_born.symm
