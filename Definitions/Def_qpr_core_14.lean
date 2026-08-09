import Definitions.Def_quantum_parallel_repetition_game
import Definitions.Def_qpr_core_13
import Theorems.Thm_QuantumParallelRepetition_dSVSoftBobLeftReducedDensity_posSemidef
import Theorems.Thm_QuantumParallelRepetition_dSVDensityRationalCanonicalNormalizedTarget_norm
import Theorems.Thm_QuantumParallelRepetition_fullHistoryRemaining_insert_subset
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

def dSVDensityRationalCanonicalAcceptedUnitTarget
    {d N : ℕ} {w : ℝ} (width : 0 < w) (grid : 0 < N)
    (fine : (d : ℝ) / (N : ℝ) < 1 / (w + 1))
    (ξ : BipartiteUnitVector d) :
    BipartiteUnitVector d :=
  ⟨dSVDensityRationalCanonicalNormalizedTarget w N ξ,
    dSVDensityRationalCanonicalNormalizedTarget_norm
      width grid fine ξ⟩

end

noncomputable section

open WithLp
open scoped BigOperators Kronecker ComplexOrder MatrixOrder

def dSVDensityRationalPhysicalMixedBornSuccess
    {d N : ℕ} (grid : 0 < N) (dimension : 0 < d)
    (w : ℝ) (ξ ζ : BipartiteUnitVector d) : ℝ :=
  binaryJointSuccessProbability
    (dSVUniformDensityThresholdSharedDensity grid dimension)
    (dSVDensityRationalPhysicalGlobalPOVM w ξ)
    (transposePOVM
      (dSVDensityRationalPhysicalGlobalPOVM w ζ))

end

noncomputable section

open WithLp
open scoped BigOperators ComplexOrder Kronecker MatrixOrder

def dSVDensityRationalActualMixedSuccessMass
    {d : ℕ} (w : ℝ) (N : ℕ)
    (ξ ζ : BipartiteUnitVector d) : ℝ :=
  ‖dSVDensityRationalCompleteProjectiveOutcome
    w N ξ ζ true true‖ ^ 2

def dSVDensityRationalActualMixedContinueMass
    {d : ℕ} (w : ℝ) (N : ℕ)
    (ξ ζ : BipartiteUnitVector d) : ℝ :=
  ‖dSVDensityRationalCompleteProjectiveOutcome
    w N ξ ζ false false‖ ^ 2

def dSVDensityRationalActualMixedAsynchronousMass
    {d : ℕ} (w : ℝ) (N : ℕ)
    (ξ ζ : BipartiteUnitVector d) : ℝ :=
  ‖dSVDensityRationalCompleteProjectiveOutcome
      w N ξ ζ true false‖ ^ 2 +
    ‖dSVDensityRationalCompleteProjectiveOutcome
      w N ξ ζ false true‖ ^ 2

end

noncomputable section

open WithLp
open scoped BigOperators Kronecker ComplexOrder MatrixOrder

attribute [local instance] Classical.propDecidable

def dSVDensityRationalCompletePhysicalStoppingCopyAccepted
    {N d : ℕ} (w : ℝ) (ξ : BipartiteUnitVector d)
    (q : DSVUniformDensityThresholdLocalIndex N d) : Prop :=
  dSVDensityRationalProjectiveThresholdBin w N q.1
    ((dSVSoftBobLeftReducedDensity_posSemidef
      ξ).isHermitian.eigenvalues q.2) = true

end

noncomputable section

open WithLp
open scoped BigOperators Kronecker ComplexOrder MatrixOrder

def dSVDensityRationalPhysicalAcceptedOutcome
    {d : ℕ} (w : ℝ) (N : ℕ)
    (ξ ζ : BipartiteUnitVector d) :
    EuclideanSpace ℂ
      (DSVUniformDensityThresholdLocalIndex N d ×
        DSVUniformDensityThresholdLocalIndex N d) :=
  dSVDensityRationalCompleteProjectiveOutcome
    w N ξ ζ true true

def dSVDensityRationalPhysicalAcceptedRank
    {d : ℕ} (w : ℝ) (N : ℕ)
    (ξ : BipartiteUnitVector d) (i : Fin d) :
    Fin (N + 1) :=
  let selected : Finset (Fin N) :=
    Finset.univ.filter fun k : Fin N =>
      dSVDensityRationalProjectiveThresholdBin w N k
        ((dSVSoftBobLeftReducedDensity_posSemidef
          ξ).isHermitian.eigenvalues i) = true
  ⟨selected.card, by
    have bounded : selected.card ≤ N := by
      simpa using Finset.card_le_univ selected
    omega⟩

end

noncomputable section

open WithLp
open scoped BigOperators ComplexOrder MatrixOrder

attribute [local instance] Classical.propDecidable

def dSVDensityRationalPrefixRankMismatch
    {d : ℕ} (w : ℝ) (N : ℕ)
    (ξ ζ : BipartiteUnitVector d) : ℝ :=
  (∑ i : Fin d, ∑ j : Fin d,
    spectralAtomOverlap
      (dSVSoftBobLeftReducedDensity ξ)
      (dSVSoftBobLeftReducedDensity ζ)
      (dSVSoftBobLeftReducedDensity_posSemidef ξ)
      (dSVSoftBobLeftReducedDensity_posSemidef ζ) i j *
      |((dSVDensityRationalPhysicalAcceptedRank
            w N ξ i).val : ℝ) -
        ((dSVDensityRationalPhysicalAcceptedRank
            w N ζ j).val : ℝ)|) / (N : ℝ)

end

noncomputable section

open WithLp
open scoped BigOperators Kronecker ComplexOrder MatrixOrder

attribute [local instance] Classical.propDecidable

def dSVDensityRationalMixedSpectralAtomBlock
    {d : ℕ} (w : ℝ) (N : ℕ)
    (ξ ζ : BipartiteUnitVector d)
    (a b : Bool) (k : Fin N) : Matrix (Fin d) (Fin d) ℂ :=
  let F := dSVSoftBobLeftReducedDensity ξ
  let G := dSVSoftBobLeftReducedDensity ζ
  let hF := dSVSoftBobLeftReducedDensity_posSemidef ξ
  let hG := dSVSoftBobLeftReducedDensity_posSemidef ζ
  ∑ i : Fin d, ∑ j : Fin d,
    if dSVDensityRationalProjectiveThresholdBin w N k
        (hF.isHermitian.eigenvalues i) = a ∧
      dSVDensityRationalProjectiveThresholdBin w N k
        (hG.isHermitian.eigenvalues j) = b
    then positiveMatrixSpectralAtom F hF i *
      positiveMatrixSpectralAtom G hG j
    else 0

end

noncomputable section

open WithLp
open scoped BigOperators Kronecker ComplexOrder MatrixOrder

attribute [local instance] Classical.propDecidable

def dSVDensityRationalPhysicalMixedAcceptedIntersectionRank
    {d : ℕ} (w : ℝ) (N : ℕ)
    (ξ ζ : BipartiteUnitVector d)
    (i j : Fin d) : Fin (N + 1) :=
  ⟨min
      (dSVDensityRationalPhysicalAcceptedRank w N ξ i).val
      (dSVDensityRationalPhysicalAcceptedRank w N ζ j).val,
    by
      have left :=
        (dSVDensityRationalPhysicalAcceptedRank w N ξ i).isLt
      have right :=
        (dSVDensityRationalPhysicalAcceptedRank w N ζ j).isLt
      omega⟩

def dSVDensityRationalPhysicalMixedAcceptedPrefixWork
    {d : ℕ} (w : ℝ) (N : ℕ)
    (ξ ζ : BipartiteUnitVector d) (i j : Fin d) :
    EuclideanSpace ℂ (Fin N × Fin N) :=
  dSVCanonicalFailurePrefix
    (dSVDensityRationalPhysicalMixedAcceptedIntersectionRank
      w N ξ ζ i j)

end

noncomputable section

open WithLp
open scoped BigOperators Kronecker ComplexOrder MatrixOrder

def dSVDensityRationalCanonicalPrefixMask
    {d : ℕ} (w : ℝ) (N : ℕ)
    (ξ : BipartiteUnitVector d) :
    Matrix (DSVUniformDensityThresholdLocalIndex N d)
      (DSVUniformDensityThresholdLocalIndex N d) ℂ :=
  Matrix.blockDiagonal' fun k : Fin N =>
    Matrix.diagonal fun i : Fin d =>
      if dSVDensityRationalProjectiveThresholdBin w N k
          ((dSVSoftBobLeftReducedDensity_posSemidef
            ξ).isHermitian.eigenvalues i) = true
      then (1 : ℂ) else 0

def dSVDensityRationalCanonicalPrefixSpectralOutcome
    {d : ℕ} (w : ℝ) (N : ℕ)
    (ξ ζ : BipartiteUnitVector d) :
    EuclideanSpace ℂ
      (DSVUniformDensityThresholdLocalIndex N d ×
        DSVUniformDensityThresholdLocalIndex N d) :=
  toLp 2
    (((dSVUniformDensityAliceHistorySpectralCopy
        (N := N) ξ :
        Matrix (DSVUniformDensityThresholdLocalIndex N d)
          (DSVUniformDensityThresholdLocalIndex N d) ℂ) ⊗ₖ
      (((dSVUniformDensityBobHistoryCopyBasis
          (N := N) ζ)⁻¹ : Matrix.unitaryGroup
            (DSVUniformDensityThresholdLocalIndex N d) ℂ) :
        Matrix (DSVUniformDensityThresholdLocalIndex N d)
          (DSVUniformDensityThresholdLocalIndex N d) ℂ)).mulVec
      (ofLp (dSVDensityRationalPhysicalAcceptedOutcome
        w N ξ ζ)))

def dSVDensityRationalCompleteStoppedOptionalLocalEffect
    {d : ℕ} (w : ℝ) (N : ℕ)
    (ξ : BipartiteUnitVector d) :
    Option Bool → Matrix
      (DSVUniformDensityThresholdLocalIndex N d)
      (DSVUniformDensityThresholdLocalIndex N d) ℂ
  | none => 1
  | some outcome =>
      (dSVDensityRationalCompleteProjectiveBinaryPOVM
        w N ξ).operator outcome

def dSVDensityRationalCompleteStoppedOptionalOutcome
    {d : ℕ} (w : ℝ) (N : ℕ)
    (ξ ζ : BipartiteUnitVector d)
    (alice bob : Option Bool) :
    EuclideanSpace ℂ
      (DSVUniformDensityThresholdLocalIndex N d ×
       DSVUniformDensityThresholdLocalIndex N d) :=
  toLp 2
    (((dSVDensityRationalCompleteStoppedOptionalLocalEffect
          w N ξ alice) ⊗ₖ
        (dSVDensityRationalCompleteStoppedOptionalLocalEffect
          w N ζ bob).transpose).mulVec
      (ofLp (dSVUniformDensityThresholdSharedState N d)))

def dSVDensityRationalCompleteStoppedOptionalLocalSchedule
    (L : ℕ) (hit copy : Fin (L + 1)) : Option Bool :=
  if copy.val < L then
    if hit = 0 then some false
    else if copy.val + 1 < hit.val then some false
    else if copy.val + 1 = hit.val then some true
    else none
  else none

end

noncomputable section

open scoped Kronecker ComplexOrder MatrixOrder

def dSVDensityRationalFirstAcceptLocalSpectralMask
    {d : ℕ} (w : ℝ) (N : ℕ)
    (ξ : BipartiteUnitVector d) (outcome : Bool) :
    Matrix (DSVUniformDensityThresholdLocalIndex N d)
      (DSVUniformDensityThresholdLocalIndex N d) ℂ :=
  Matrix.blockDiagonal' fun k : Fin N =>
    Matrix.diagonal fun i : Fin d =>
      if dSVDensityRationalProjectiveThresholdBin w N k
          ((dSVSoftBobLeftReducedDensity_posSemidef
            ξ).isHermitian.eigenvalues i) = outcome
      then (1 : ℂ) else 0

end

noncomputable section

open WithLp
open scoped BigOperators Kronecker ComplexOrder MatrixOrder

attribute [local instance] Classical.propDecidable

def dSVDensityRationalFirstAcceptActualTensorBasis
    {β : Type*} [Fintype β] [DecidableEq β]
    {L : ℕ} (U : Matrix.unitaryGroup β ℂ) :
    Matrix.unitaryGroup (Σ _ : Fin (L + 1), Fin (L + 1) → β) ℂ :=
  controlledFiniteTensorLocalUnitary
    (fun (_stop : Fin (L + 1)) (_copy : Fin (L + 1)) => U)

end

noncomputable section

open WithLp
open scoped BigOperators Kronecker ComplexOrder MatrixOrder

def dSVDensityRationalPublicBucketCoherentPhaseHistory
    {H : Type*} [Fintype H] (B : ℕ)
    (history : EuclideanSpace ℂ (H × H)) :
    EuclideanSpace ℂ ((Fin B × H) × (Fin B × H)) :=
  toLp 2 fun q : (Fin B × H) × (Fin B × H) =>
    ePRState B (q.1.1, q.2.1) *
      history (q.1.2, q.2.2)

def dSVDensityRationalPublicBucketCoherentPhaseSigmaState
    {H : Type*} [Fintype H] {m : ℕ} (B : ℕ)
    (history : EuclideanSpace ℂ (H × H))
    (work : Fin B → H → H →
      EuclideanSpace ℂ (Fin m × Fin m)) :
    EuclideanSpace ℂ
      ((Σ _ : Fin B × H, Fin m) ×
       (Σ _ : Fin B × H, Fin m)) :=
  dSVUniformDensityCorrectedMatchedSigmaWeightedResidual
    (dSVDensityRationalPublicBucketCoherentPhaseHistory
      B history)
    (fun a b => work a.1 a.2 b.2)

def dSVDensityRationalPublicBucketCoherentPhaseLocalUnitary
    {H I : Type*} [Fintype H] [DecidableEq H]
    [DecidableEq I] {B D m : ℕ}
    (rank : H → Fin D)
    (bucket : Fin B → Fin D → I)
    (A : Fin B → I → Matrix.unitaryGroup (Fin m) ℂ) :
    Matrix.unitaryGroup (Σ _ : Fin B × H, Fin m) ℂ :=
  coherentSharedRandomControlledUnitary
    (fun q : Fin B × H => A q.1 (bucket q.1 (rank q.2)))

end

noncomputable section

open scoped BigOperators ComplexOrder MatrixOrder

def dSVDensityRationalPublicLogRankFineLabel
    {N : ℕ} (Q : ℕ) (r : Fin (N + 1)) : ℕ :=
  Nat.floor ((Q : ℝ) * Real.log ((max 1 r.val : ℕ) : ℝ))

def dSVDensityRationalPublicLogRankPhaseWeight
    (B : ℕ) (_ : Fin B) : ℝ :=
  1 / (B : ℝ)

def dSVDensityRationalPublicLogRankBucket
    {N B : ℕ} (Q : ℕ) (phase : Fin B)
    (r : Fin (N + 1)) : Option ℕ :=
  if r.val = 0 then none
  else some
    ((dSVDensityRationalPublicLogRankFineLabel Q r + phase.val) / B)

def dSVDensityRationalPublicLogRankBucketFiber
    {N B : ℕ} (Q : ℕ) (phase : Fin B) (label : Option ℕ) :
    Finset (Fin (N + 1)) :=
  Finset.univ.filter fun r : Fin (N + 1) =>
    r.val ≠ 0 ∧
      dSVDensityRationalPublicLogRankBucket Q phase r = label

def dSVDensityRationalPublicLogRankBucketRepresentative
    {N B : ℕ} (Q : ℕ) (phase : Fin B) (label : Option ℕ) :
    Fin (N + 1) :=
  if present :
    (dSVDensityRationalPublicLogRankBucketFiber
      Q phase label).Nonempty
  then (dSVDensityRationalPublicLogRankBucketFiber
      Q phase label).min' present
  else 0

end

noncomputable section

open WithLp
open scoped BigOperators Kronecker ComplexOrder MatrixOrder

abbrev DSVDensityRationalPublicMultiscalePhase
    (S B : ℕ) :=
  Fin S → Fin B

abbrev DSVDensityRationalPublicMultiscalePhaseIndex
    (S B : ℕ) :=
  Fin (Fintype.card
    (DSVDensityRationalPublicMultiscalePhase S B))

def dSVDensityRationalPrefixHarmonicSpectralOverlap
    {d : ℕ} (ξ ζ : BipartiteUnitVector d)
    (i j : Fin d) : ℝ :=
  spectralAtomOverlap
    (dSVSoftBobLeftReducedDensity ξ)
    (dSVSoftBobLeftReducedDensity ζ)
    (dSVSoftBobLeftReducedDensity_posSemidef ξ)
    (dSVSoftBobLeftReducedDensity_posSemidef ζ) i j

def dSVDensityRationalLocalSpectralPairBasisOverlap
    {d : ℕ} (ξ ζ : BipartiteUnitVector d)
    (i j : Fin d) : ℂ :=
  unitaryBasisOverlap
    (dSVSoftBobLeftReducedDensity_posSemidef
      ξ).isHermitian.eigenvectorUnitary
    (dSVSoftBobLeftReducedDensity_posSemidef
      ζ).isHermitian.eigenvectorUnitary i j

def dSVDensityRationalLocalSpectralPairHistory
    {d : ℕ} (N : ℕ)
    (ξ ζ : BipartiteUnitVector d) :
    EuclideanSpace ℂ (Fin d × Fin d) :=
  toLp 2 fun q : Fin d × Fin d =>
    ((‖sharedThresholdResourceRaw (d := Fin d)
      (fun _ : Fin N => (1 : ℝ))‖⁻¹ : ℝ) : ℂ) *
      dSVDensityRationalLocalSpectralPairBasisOverlap
        ξ ζ q.1 q.2

def dSVDensityRationalMixedCanonicalCrossMatrix
    {d : ℕ} (N : ℕ)
    (ξ ζ : BipartiteUnitVector d) :
    Matrix (DSVUniformDensityThresholdLocalIndex N d)
      (DSVUniformDensityThresholdLocalIndex N d) ℂ :=
  (Matrix.blockDiagonal' fun _ : Fin N =>
    (unitaryBasisOverlap
      (dSVSoftBobLeftReducedDensity_posSemidef
        ξ).isHermitian.eigenvectorUnitary
      (dSVSoftBobLeftReducedDensity_posSemidef
        ζ).isHermitian.eigenvectorUnitary :
      Matrix (Fin d) (Fin d) ℂ)).transpose

def dSVDensityRationalMixedCanonicalRawSource
    {d : ℕ} (w : ℝ) (N : ℕ)
    (ξ ζ : BipartiteUnitVector d) :
    EuclideanSpace ℂ
      (DSVUniformDensityThresholdLocalIndex N d ×
        DSVUniformDensityThresholdLocalIndex N d) :=
  toLp 2
    (Matrix.vec
      (dSVDensityRationalCanonicalPrefixMask w N ζ *
        dSVDensityRationalMixedCanonicalCrossMatrix N ξ ζ *
        dSVDensityRationalCanonicalPrefixMask w N ξ))

def dSVDensityRationalPublicLogBilateralPureTensor
    {ι κ : Type*} [Fintype ι] [Fintype κ]
    (v : EuclideanSpace ℂ (ι × ι))
    (u : EuclideanSpace ℂ (κ × κ)) :
    EuclideanSpace ℂ ((ι × κ) × (ι × κ)) :=
  toLp 2 fun q : (ι × κ) × (ι × κ) =>
    v (q.1.1, q.2.1) * u (q.1.2, q.2.2)

abbrev DSVDensityRationalPublicLogPhaseHistoryLocalIndex
    (B N d L : ℕ) :=
  Fin B × DSVUniformDensityThresholdWholeHistoryLocalIndex N d L

def dSVDensityRationalPublicLogPhasePureSource
    (B N d L : ℕ) :
    EuclideanSpace ℂ
      (DSVDensityRationalPublicLogPhaseHistoryLocalIndex B N d L ×
       DSVDensityRationalPublicLogPhaseHistoryLocalIndex B N d L) :=
  dSVDensityRationalPublicLogBilateralPureTensor
    (ePRState B)
    (dSVUniformDensityThresholdWholeHistorySharedState N d L)

def dSVDensityRationalPublicLogPhaseHarmonicPureSource
    (B N d L m : ℕ) :
    EuclideanSpace ℂ
      ((DSVDensityRationalPublicLogPhaseHistoryLocalIndex
        B N d L × Fin m) ×
       (DSVDensityRationalPublicLogPhaseHistoryLocalIndex
        B N d L × Fin m)) :=
  dSVDensityRationalPublicLogBilateralPureTensor
    (dSVDensityRationalPublicLogPhasePureSource B N d L)
    (embezzlementState m)

abbrev DSVDensityRationalPublicLogPhaseCatalystIndex
    (B N d L : ℕ) :=
  Fin B × DSVUniformDensityThresholdWholeHistoryCatalystIndex N d L

def dSVDensityRationalPublicLogPhaseTargetSplitEquiv
    (B N d L : ℕ) :
    DSVDensityRationalPublicLogPhaseHistoryLocalIndex B N d L ≃
      (Fin d ×
        DSVDensityRationalPublicLogPhaseCatalystIndex B N d L) where
  toFun q :=
    let actual :=
      dSVUniformDensityThresholdWholeHistoryTargetSplitEquiv
        N d L q.2
    (actual.1, (q.1, actual.2))
  invFun q :=
    (q.2.1,
      (dSVUniformDensityThresholdWholeHistoryTargetSplitEquiv
        N d L).symm (q.1, q.2.2))
  left_inv := by
    rintro ⟨phase, history⟩
    simp
  right_inv := by
    rintro ⟨target, phase, catalyst⟩
    simp

def dSVDensityRationalPublicLogPhaseResidual
    (B N d L m : ℕ) : ℕ :=
  Fintype.card
      (DSVDensityRationalPublicLogPhaseCatalystIndex
        B N d L) * m

def dSVDensityRationalPublicLogPhaseTargetFirstIndexEquiv
    (B N d L m : ℕ) :
    (DSVDensityRationalPublicLogPhaseHistoryLocalIndex
      B N d L × Fin m) ≃
      Fin (d *
        dSVDensityRationalPublicLogPhaseResidual B N d L m) :=
  (Equiv.prodCongr
    (dSVDensityRationalPublicLogPhaseTargetSplitEquiv B N d L)
    (Equiv.refl (Fin m))).trans
      (dSVRankControlledTargetCatalystIndexEquiv
        (ι := DSVDensityRationalPublicLogPhaseCatalystIndex
          B N d L) d m)

def dSVDensityRationalPublicLogPhaseTargetFirstPreparedSource
    (B N d L m : ℕ) :
    EuclideanSpace ℂ
      (Fin (d *
        dSVDensityRationalPublicLogPhaseResidual B N d L m) ×
       Fin (d *
        dSVDensityRationalPublicLogPhaseResidual B N d L m)) :=
  LinearIsometryEquiv.piLpCongrLeft 2 ℂ ℂ
    (Equiv.prodCongr
      (dSVDensityRationalPublicLogPhaseTargetFirstIndexEquiv
        B N d L m)
      (dSVDensityRationalPublicLogPhaseTargetFirstIndexEquiv
        B N d L m))
    (dSVDensityRationalPublicLogPhaseHarmonicPureSource
      B N d L m)

abbrev DSVDensityRationalPublicMultiscalePhaseHistoryLocalIndex
    (S B N d L : ℕ) :=
  DSVDensityRationalPublicMultiscalePhaseIndex S B ×
    DSVUniformDensityThresholdWholeHistoryLocalIndex N d L

def dSVDensityRationalPublicMultiscalePhaseResidual
    (S B N d L m : ℕ) : ℕ :=
  dSVDensityRationalPublicLogPhaseResidual
    (Fintype.card (DSVDensityRationalPublicMultiscalePhase S B))
    N d L m

def dSVDensityRationalPublicMultiscalePhaseTargetFirstIndexEquiv
    (S B N d L m : ℕ) :
    (DSVDensityRationalPublicMultiscalePhaseHistoryLocalIndex
      S B N d L × Fin m) ≃
      Fin (d *
        dSVDensityRationalPublicMultiscalePhaseResidual
          S B N d L m) :=
  dSVDensityRationalPublicLogPhaseTargetFirstIndexEquiv
    (Fintype.card (DSVDensityRationalPublicMultiscalePhase S B))
    N d L m

def dSVDensityRationalPublicMultiscalePhaseTargetFirstPreparedSource
    (S B N d L m : ℕ) :
    EuclideanSpace ℂ
      (Fin (d *
         dSVDensityRationalPublicMultiscalePhaseResidual
           S B N d L m) ×
       Fin (d *
         dSVDensityRationalPublicMultiscalePhaseResidual
           S B N d L m)) :=
  dSVDensityRationalPublicLogPhaseTargetFirstPreparedSource
    (Fintype.card (DSVDensityRationalPublicMultiscalePhase S B))
    N d L m

end

noncomputable section

open WithLp
open scoped BigOperators ComplexOrder Kronecker MatrixOrder

def dSVDensityRationalPublicLogPhaseActualTargetFirstLocalLift
    (B N d L m : ℕ)
    (U : Matrix.unitaryGroup
      (DSVDensityRationalPublicLogPhaseHistoryLocalIndex
        B N d L) ℂ) :
    Matrix.unitaryGroup
      (Fin (d *
        dSVDensityRationalPublicLogPhaseResidual
          B N d L m)) ℂ := by
  classical
  let whole : Matrix.unitaryGroup
      (DSVDensityRationalPublicLogPhaseHistoryLocalIndex
          B N d L × Fin m) ℂ :=
    ⟨U.val ⊗ₖ (1 : Matrix (Fin m) (Fin m) ℂ),
      Matrix.kronecker_mem_unitary U.property
        (Matrix.unitaryGroup (Fin m) ℂ).one_mem⟩
  exact dSVOriginalComputationalReindexedUnitary
    (dSVDensityRationalPublicLogPhaseTargetFirstIndexEquiv
      B N d L m) whole

def dSVDensityRationalPublicLogPhasePhysicalHistoryUnitary
    (B : ℕ) {N d L : ℕ}
    (U : Matrix.unitaryGroup
      (DSVUniformDensityThresholdWholeHistoryLocalIndex
        N d L) ℂ) :
    Matrix.unitaryGroup
      (DSVDensityRationalPublicLogPhaseHistoryLocalIndex
        B N d L) ℂ := by
  classical
  exact ⟨(1 : Matrix (Fin B) (Fin B) ℂ) ⊗ₖ U.val,
    Matrix.kronecker_mem_unitary
      (Matrix.unitaryGroup (Fin B) ℂ).one_mem U.property⟩

end

noncomputable section

open WithLp
open scoped BigOperators ComplexOrder Kronecker MatrixOrder

attribute [local instance] Classical.propDecidable

def dSVDensityRationalHeterogeneousActualAcceptSet
    {β : Type*} {L : ℕ}
    (accepted : Fin L → β → Prop)
    (history : Fin (L + 1) → β) : Finset (Fin L) := by
  classical
  exact Finset.univ.filter fun j : Fin L =>
    accepted j (history j.castSucc)

def dSVDensityRationalHeterogeneousActualFirstAccepted
    {β : Type*} {L : ℕ}
    (accepted : Fin L → β → Prop)
    (history : Fin (L + 1) → β) : Fin (L + 1) := by
  classical
  let hits := dSVDensityRationalHeterogeneousActualAcceptSet
    accepted history
  exact if nonempty : hits.Nonempty then
    (hits.min' nonempty).succ
  else 0

def dSVDensityRationalHeterogeneousActualFirstAcceptEquiv
    {β : Type*} {L : ℕ}
    (accepted : Fin L → β → Prop) :
    Equiv.Perm (Σ _ : Fin (L + 1), Fin (L + 1) → β) where
  toFun q :=
    ⟨(Equiv.swap (0 : Fin (L + 1))
      (dSVDensityRationalHeterogeneousActualFirstAccepted
        accepted q.2)) q.1, q.2⟩
  invFun q :=
    ⟨(Equiv.swap (0 : Fin (L + 1))
      (dSVDensityRationalHeterogeneousActualFirstAccepted
        accepted q.2)) q.1, q.2⟩
  left_inv := by
    rintro ⟨flag, history⟩
    simp
  right_inv := by
    rintro ⟨flag, history⟩
    simp

def dSVDensityRationalHeterogeneousActualFirstAcceptUnitary
    {β : Type*} [Fintype β] [DecidableEq β]
    {L : ℕ} (accepted : Fin L → β → Prop) :
    Matrix.unitaryGroup (Σ _ : Fin (L + 1), Fin (L + 1) → β) ℂ :=
  permutationUnitary
    (dSVDensityRationalHeterogeneousActualFirstAcceptEquiv
      accepted)

def dSVDensityRationalHeterogeneousActualCopyAccepted
    {S N d L : ℕ}
    (width : Fin S → ℝ) (schedule : Fin L → Fin S)
    (ξ : BipartiteUnitVector d)
    (j : Fin L)
    (atom : DSVUniformDensityThresholdLocalIndex N d) : Prop :=
  dSVDensityRationalCompletePhysicalStoppingCopyAccepted
    (width (schedule j)) ξ atom

def dSVDensityRationalHeterogeneousActualCopyCondition
    {β : Type*} {L : ℕ}
    (accepted : Fin L → β → Prop)
    (flag : Fin (L + 1)) (i : Fin (L + 1)) (atom : β) : Prop :=
  if active : i.val < L then
    if flag = 0 then
      ¬ accepted ⟨i.val, active⟩ atom
    else if i.val + 1 < flag.val then
      ¬ accepted ⟨i.val, active⟩ atom
    else if i.val + 1 = flag.val then
      accepted ⟨i.val, active⟩ atom
    else True
  else True

def dSVDensityRationalHeterogeneousActualPhysicalLocalUnitary
    {β : Type*} [Fintype β] [DecidableEq β]
    {L : ℕ} (accepted : Fin L → β → Prop)
    (U : Matrix.unitaryGroup β ℂ) :
    Matrix.unitaryGroup (Σ _ : Fin (L + 1), Fin (L + 1) → β) ℂ :=
  (dSVDensityRationalFirstAcceptActualTensorBasis
      (L := L) U)⁻¹ *
    dSVDensityRationalHeterogeneousActualFirstAcceptUnitary
      accepted *
    dSVDensityRationalFirstAcceptActualTensorBasis
      (L := L) U

def dSVDensityRationalHeterogeneousActualAliceUnitary
    (N : ℕ) {S d L : ℕ}
    (width : Fin S → ℝ) (schedule : Fin L → Fin S)
    (ξ : BipartiteUnitVector d) :
    Matrix.unitaryGroup
      (DSVUniformDensityThresholdWholeHistoryLocalIndex
        N d L) ℂ :=
  dSVDensityRationalHeterogeneousActualPhysicalLocalUnitary
    (dSVDensityRationalHeterogeneousActualCopyAccepted
      width schedule ξ)
    (dSVUniformDensityAliceHistorySpectralCopy (N := N) ξ)

def dSVDensityRationalHeterogeneousActualBobUnitary
    (N : ℕ) {S d L : ℕ}
    (width : Fin S → ℝ) (schedule : Fin L → Fin S)
    (ζ : BipartiteUnitVector d) :
    Matrix.unitaryGroup
      (DSVUniformDensityThresholdWholeHistoryLocalIndex
        N d L) ℂ :=
  dSVDensityRationalHeterogeneousActualPhysicalLocalUnitary
    (dSVDensityRationalHeterogeneousActualCopyAccepted
      width schedule ζ)
    ((dSVUniformDensityBobHistoryCopyBasis (N := N) ζ)⁻¹)

def dSVDensityRationalHeterogeneousActualPhysicalState
    (N : ℕ) {S d L : ℕ}
    (width : Fin S → ℝ) (schedule : Fin L → Fin S)
    (ξ ζ : BipartiteUnitVector d) :
    EuclideanSpace ℂ
      (DSVUniformDensityThresholdWholeHistoryLocalIndex N d L ×
       DSVUniformDensityThresholdWholeHistoryLocalIndex N d L) :=
  toLp 2
    ((((dSVDensityRationalHeterogeneousActualAliceUnitary
          N width schedule ξ :
          Matrix (DSVUniformDensityThresholdWholeHistoryLocalIndex
            N d L)
            (DSVUniformDensityThresholdWholeHistoryLocalIndex
              N d L) ℂ) ⊗ₖ
        (dSVDensityRationalHeterogeneousActualBobUnitary
          N width schedule ζ :
          Matrix (DSVUniformDensityThresholdWholeHistoryLocalIndex
            N d L)
            (DSVUniformDensityThresholdWholeHistoryLocalIndex
              N d L) ℂ)).mulVec
      (ofLp
        (dSVUniformDensityThresholdWholeHistorySharedState
          N d L))))

end

noncomputable section

open scoped BigOperators ComplexOrder Kronecker MatrixOrder

def dSVDensityRationalHeterogeneousPhysicalStageOutcome
    {d S L : ℕ} (N : ℕ)
    (width : Fin S → ℝ) (schedule : Fin L → Fin S)
    (ξ ζ : BipartiteUnitVector d)
    (k : ℕ) (alice bob : Bool) : ℝ :=
  if active : k < L then
    ‖dSVDensityRationalCompleteProjectiveOutcome
      (width (schedule ⟨k, active⟩)) N ξ ζ alice bob‖ ^ 2
  else if alice = false ∧ bob = false then 1 else 0

def dSVDensityRationalHeterogeneousPhysicalStageContinue
    {d S L : ℕ} (N : ℕ)
    (width : Fin S → ℝ) (schedule : Fin L → Fin S)
    (ξ ζ : BipartiteUnitVector d) (k : ℕ) : ℝ :=
  dSVDensityRationalHeterogeneousPhysicalStageOutcome
    N width schedule ξ ζ k false false

def dSVDensityRationalHeterogeneousPhysicalStageSuccess
    {d S L : ℕ} (N : ℕ)
    (width : Fin S → ℝ) (schedule : Fin L → Fin S)
    (ξ ζ : BipartiteUnitVector d) (k : ℕ) : ℝ :=
  dSVDensityRationalHeterogeneousPhysicalStageOutcome
    N width schedule ξ ζ k true true

def dSVDensityRationalHeterogeneousPhysicalStageAsynchronous
    {d S L : ℕ} (N : ℕ)
    (width : Fin S → ℝ) (schedule : Fin L → Fin S)
    (ξ ζ : BipartiteUnitVector d) (k : ℕ) : ℝ :=
  dSVDensityRationalHeterogeneousPhysicalStageOutcome
      N width schedule ξ ζ k true false +
    dSVDensityRationalHeterogeneousPhysicalStageOutcome
      N width schedule ξ ζ k false true

def dSVDensityRationalHeterogeneousPhysicalSurvival
    {d S L : ℕ} (N : ℕ)
    (width : Fin S → ℝ) (schedule : Fin L → Fin S)
    (ξ ζ : BipartiteUnitVector d) (k : ℕ) : ℝ :=
  dSVHeterogeneousRealPrefix
    (dSVDensityRationalHeterogeneousPhysicalStageContinue
      N width schedule ξ ζ) k

def dSVDensityRationalHeterogeneousPhysicalStoppedSuccessMass
    {d S L : ℕ} (N : ℕ)
    (width : Fin S → ℝ) (schedule : Fin L → Fin S)
    (ξ ζ : BipartiteUnitVector d) : ℝ :=
  ∑ k ∈ Finset.range L,
    dSVDensityRationalHeterogeneousPhysicalSurvival
        N width schedule ξ ζ k *
      dSVDensityRationalHeterogeneousPhysicalStageSuccess
        N width schedule ξ ζ k

def dSVDensityRationalHeterogeneousPhysicalStoppedAsynchronousMass
    {d S L : ℕ} (N : ℕ)
    (width : Fin S → ℝ) (schedule : Fin L → Fin S)
    (ξ ζ : BipartiteUnitVector d) : ℝ :=
  ∑ k ∈ Finset.range L,
    dSVDensityRationalHeterogeneousPhysicalSurvival
        N width schedule ξ ζ k *
      dSVDensityRationalHeterogeneousPhysicalStageAsynchronous
        N width schedule ξ ζ k

def dSVDensityRationalHeterogeneousPhysicalTerminalMass
    {d S L : ℕ} (N : ℕ)
    (width : Fin S → ℝ) (schedule : Fin L → Fin S)
    (ξ ζ : BipartiteUnitVector d) : ℝ :=
  dSVDensityRationalHeterogeneousPhysicalSurvival
    N width schedule ξ ζ L

def dSVDensityRationalHeterogeneousPhysicalStageHazardRatio
    {d S L : ℕ} (N : ℕ)
    (width : Fin S → ℝ) (schedule : Fin L → Fin S)
    (ξ ζ : BipartiteUnitVector d) (k : ℕ) : ℝ :=
  dSVDensityRationalHeterogeneousPhysicalStageAsynchronous
      N width schedule ξ ζ k /
    (dSVDensityRationalHeterogeneousPhysicalStageSuccess
        N width schedule ξ ζ k +
      dSVDensityRationalHeterogeneousPhysicalStageAsynchronous
        N width schedule ξ ζ k)

def dSVDensityRationalHeterogeneousPhysicalUniformEscapeRate
    (d : ℕ) (W : ℝ) : ℝ :=
  1 / (2 * (W + 1) * (d : ℝ))

end

noncomputable section

open scoped BigOperators

variable {α : Type*} [Fintype α] [DecidableEq α]

def fairPartitionWeight (α : Type*) [Fintype α] : ℝ :=
  ((2 : ℝ) ^ Fintype.card α)⁻¹

def reversePartitionWeight (s : Finset α) : ℝ :=
  fairPartitionWeight α *
    (2 * (s.card : ℝ) / (Fintype.card α : ℝ))

def forwardMarkedPartitionWeight (α : Type*) [Fintype α] : ℝ :=
  2 * fairPartitionWeight α / (Fintype.card α : ℝ)

def reverseMarkedPartitionWeight (s : Finset α) (i : α) : ℝ :=
  if i ∈ s then reversePartitionWeight s / (s.card : ℝ) else 0

end

noncomputable section

open Matrix
open scoped BigOperators Kronecker ComplexOrder MatrixOrder

set_option backward.isDefEq.respectTransparency false
set_option maxHeartbeats 800000

def rightSpectralBornWeight
    {dA dB : Type*}
    [Fintype dA] [Fintype dB]
    [DecidableEq dA] [DecidableEq dB]
    (ρ : DensityMatrix (dA × dB))
    (F : Matrix dA dA ℂ)
    (G : Matrix dB dB ℂ) (hG : G.PosSemidef)
    (i : dB) : ℝ :=
  bornTracePairing ρ.matrix F
    (positiveMatrixSpectralAtom G hG i)

section HistoryNormalization

variable {X Y A B : Type*}
variable [Fintype X] [Fintype Y] [Fintype A] [Fintype B]

def fullSubsetHistoryFieldEquiv
    {n : ℕ} (D L : Finset (Fin n)) :
    FullSubsetHistory X Y n D L ≃
      (({i : Fin n // i ∈ D} → X × Y) ×
       ({i : Fin n // i ∈ L} → X) ×
       ({i : Fin n // i ∈ fullHistoryRemaining n D L} → Y)) where
  toFun h :=
    (fun i => (h.aliceConditioned i, h.bobConditioned i),
      h.aliceRevealed, h.bobRemaining)
  invFun t :=
    ⟨fun i => (t.1 i).1,
      fun i => (t.1 i).2,
      t.2.1, t.2.2⟩
  left_inv h := by
    apply FullSubsetHistory.ext <;> rfl
  right_inv t := by
    rcases t with ⟨q, x, y⟩
    simp

end HistoryNormalization

end

noncomputable section

open Matrix
open scoped BigOperators Kronecker ComplexOrder MatrixOrder

set_option backward.isDefEq.respectTransparency false
set_option maxHeartbeats 800000

variable {X Y A B : Type*}
variable [Fintype X] [Fintype Y] [Fintype A] [Fintype B]

def fullHistoryAnswerCount
    {A B : Type*} [Fintype A] [Fintype B]
    {n : ℕ} (D : Finset (Fin n)) : ℝ :=
  (Fintype.card ({i : Fin n // i ∈ D} → A) : ℝ) *
    (Fintype.card ({i : Fin n // i ∈ D} → B) : ℝ)

abbrev FullHistoryEntropyAtom
    (X Y A B : Type*)
    [Fintype X] [Fintype Y] [Fintype A] [Fintype B]
    (n : ℕ) (D L : Finset (Fin n)) :=
  FullSubsetHistory X Y n D L ×
    ({i : Fin n // i ∈ D} → A) ×
    ({i : Fin n // i ∈ D} → B)

def fullHistoryAtomCountingWeight
    (G : Game X Y A B) {n : ℕ}
    (D L : Finset (Fin n))
    (t : FullHistoryEntropyAtom X Y A B n D L) : ℝ :=
  fullHistoryWeight G t.1 *
    fullHistoryWinIndicator G t.1 t.2.1 t.2.2

def fullHistoryAtomBornMass
    (G : Game X Y A B) (n : ℕ)
    (S : Strategy (G.repeat n))
    (D L : Finset (Fin n))
    (t : FullHistoryEntropyAtom X Y A B n D L) : ℝ :=
  bornTracePairing S.state.matrix
    (fullHistoryAliceFilter G n S D L t.1 t.2.1)
    (fullHistoryBobFilter G n S D L t.1 t.2.2)

end

noncomputable section

open scoped BigOperators

@[ext (iff := false)] structure FullCoordinateRevealHistory
    (X Y : Type*) [Fintype X] [Fintype Y]
    (n : ℕ) (D L : Finset (Fin n)) (i : Fin n) where
  aliceConditioned : {j : Fin n // j ∈ D} → X
  bobConditioned : {j : Fin n // j ∈ D} → Y
  aliceRevealed : {j : Fin n // j ∈ L} → X
  bobRemaining :
    {j : Fin n // j ∈ fullHistoryRemaining n D (insert i L)} → Y
  deriving Fintype

def fullCoordinateBaseOfOldHistory
    {X Y : Type*} [Fintype X] [Fintype Y]
    {n : ℕ} (D L : Finset (Fin n)) (i : Fin n)
    (h : FullSubsetHistory X Y n D L) :
    FullCoordinateRevealHistory X Y n D L i where
  aliceConditioned := h.aliceConditioned
  bobConditioned := h.bobConditioned
  aliceRevealed := h.aliceRevealed
  bobRemaining := fun j => h.bobRemaining
    ⟨j, fullHistoryRemaining_insert_subset D L i j.property⟩

def fullCoordinateOldHistory
    {X Y : Type*} [Fintype X] [Fintype Y]
    {n : ℕ} (D L : Finset (Fin n)) (i : Fin n)
    (h : FullCoordinateRevealHistory X Y n D L i)
    (y : Y) : FullSubsetHistory X Y n D L := by
  classical
  refine ⟨h.aliceConditioned, h.bobConditioned, h.aliceRevealed,
    fun j => if hj : (j : Fin n) = i then y else
      h.bobRemaining ⟨j, ?_⟩⟩
  have hjD : (j : Fin n) ∉ D :=
    (Finset.mem_sdiff.mp
      (Finset.mem_sdiff.mp j.property).1).2
  have hjL : (j : Fin n) ∉ L :=
    (Finset.mem_sdiff.mp j.property).2
  simp [fullHistoryRemaining, hjD, hjL, hj]

def fullCoordinateBaseOfNewHistory
    {X Y : Type*} [Fintype X] [Fintype Y]
    {n : ℕ} (D L : Finset (Fin n)) (i : Fin n)
    (h : FullSubsetHistory X Y n D (insert i L)) :
    FullCoordinateRevealHistory X Y n D L i where
  aliceConditioned := h.aliceConditioned
  bobConditioned := h.bobConditioned
  aliceRevealed := fun j => h.aliceRevealed
    ⟨j, Finset.mem_insert_of_mem j.property⟩
  bobRemaining := h.bobRemaining

def fullCoordinateNewHistory
    {X Y : Type*} [Fintype X] [Fintype Y]
    {n : ℕ} (D L : Finset (Fin n)) (i : Fin n)
    (h : FullCoordinateRevealHistory X Y n D L i)
    (x : X) : FullSubsetHistory X Y n D (insert i L) := by
  classical
  refine ⟨h.aliceConditioned, h.bobConditioned,
    fun j => if hj : (j : Fin n) = i then x else
      h.aliceRevealed ⟨j, ?_⟩,
    h.bobRemaining⟩
  exact (Finset.mem_insert.mp j.property).resolve_left hj

def fullCoordinateOldHistoryEquiv
    {X Y : Type*} [Fintype X] [Fintype Y]
    {n : ℕ} (D L : Finset (Fin n)) (i : Fin n)
    (hiD : i ∉ D) (hiL : i ∉ L) :
    FullSubsetHistory X Y n D L ≃
      FullCoordinateRevealHistory X Y n D L i × Y where
  toFun h :=
    (fullCoordinateBaseOfOldHistory D L i h,
      h.bobRemaining
        ⟨i, by simp [fullHistoryRemaining, hiD, hiL]⟩)
  invFun t := fullCoordinateOldHistory D L i t.1 t.2
  left_inv h := by
    apply FullSubsetHistory.ext
    · rfl
    · rfl
    · rfl
    · funext j
      by_cases hj : (j : Fin n) = i
      · subst i
        simp [fullCoordinateOldHistory,
          fullCoordinateBaseOfOldHistory]
      · simp [fullCoordinateOldHistory,
          fullCoordinateBaseOfOldHistory, hj]
  right_inv t := by
    rcases t with ⟨h, y⟩
    apply Prod.ext
    · apply FullCoordinateRevealHistory.ext
      · rfl
      · rfl
      · rfl
      · funext j
        have hj : (j : Fin n) ≠ i := by
          intro he
          have hnot : (j : Fin n) ∉ insert i L :=
            (Finset.mem_sdiff.mp j.property).2
          apply hnot
          simp [he]
        simp [fullCoordinateBaseOfOldHistory,
          fullCoordinateOldHistory, hj]
    · simp [fullCoordinateOldHistory]

def fullCoordinateNewHistoryEquiv
    {X Y : Type*} [Fintype X] [Fintype Y]
    {n : ℕ} (D L : Finset (Fin n)) (i : Fin n)
    (hiL : i ∉ L) :
    FullSubsetHistory X Y n D (insert i L) ≃
      FullCoordinateRevealHistory X Y n D L i × X where
  toFun h :=
    (fullCoordinateBaseOfNewHistory D L i h,
      h.aliceRevealed ⟨i, Finset.mem_insert_self i L⟩)
  invFun t := fullCoordinateNewHistory D L i t.1 t.2
  left_inv h := by
    apply FullSubsetHistory.ext
    · rfl
    · rfl
    · funext j
      by_cases hj : (j : Fin n) = i
      · have hjsub :
            j = (⟨i, Finset.mem_insert_self i L⟩ :
              {j : Fin n // j ∈ insert i L}) :=
          Subtype.ext hj
        subst j
        simp [fullCoordinateNewHistory,
          fullCoordinateBaseOfNewHistory]
      · simp [fullCoordinateNewHistory,
          fullCoordinateBaseOfNewHistory, hj]
    · rfl
  right_inv t := by
    rcases t with ⟨h, x⟩
    apply Prod.ext
    · apply FullCoordinateRevealHistory.ext
      · rfl
      · rfl
      · funext j
        have hj : (j : Fin n) ≠ i := by
          intro he
          exact hiL (he ▸ j.property)
        simp [fullCoordinateBaseOfNewHistory,
          fullCoordinateNewHistory, hj]
      · rfl
    · simp [fullCoordinateNewHistory]

end

noncomputable section

open Matrix
open scoped BigOperators Kronecker ComplexOrder MatrixOrder

set_option backward.isDefEq.respectTransparency false
set_option maxHeartbeats 1000000

def fullHistoryRemainingCoordinateEquiv
    {n : ℕ} (D L : Finset (Fin n)) (i : Fin n)
    (hiD : i ∉ D) (hiL : i ∉ L) :
    {j : Fin n // j ∈ fullHistoryRemaining n D L} ≃
      Option {j : Fin n //
        j ∈ fullHistoryRemaining n D (insert i L)} where
  toFun j :=
    if hj : (j : Fin n) = i then none
    else some ⟨j, by
      have hjD : (j : Fin n) ∉ D :=
        (Finset.mem_sdiff.mp
          (Finset.mem_sdiff.mp j.property).1).2
      have hjL : (j : Fin n) ∉ L :=
        (Finset.mem_sdiff.mp j.property).2
      simp [fullHistoryRemaining, hjD, hjL, hj]⟩
  invFun
    | none => ⟨i, by simp [fullHistoryRemaining, hiD, hiL]⟩
    | some j =>
      ⟨j, fullHistoryRemaining_insert_subset D L i j.property⟩
  left_inv j := by
    apply Subtype.ext
    by_cases hj : (j : Fin n) = i
    · simp [hj]
    · simp [hj]
  right_inv j := by
    cases j with
    | none => simp
    | some j =>
      have hj : (j : Fin n) ≠ i := by
        intro he
        have hnot : (j : Fin n) ∉ insert i L :=
          (Finset.mem_sdiff.mp j.property).2
        apply hnot
        simp [he]
      simp [hj]

section CoordinateWeights

variable {X Y A B : Type*}
variable [Fintype X] [Fintype Y] [Fintype A] [Fintype B]

def fullCoordinateBaseWeight
    (G : Game X Y A B) {n : ℕ}
    (D L : Finset (Fin n)) (i : Fin n)
    (h : FullCoordinateRevealHistory X Y n D L i) : ℝ :=
  (∏ j : {j : Fin n // j ∈ D},
    G.questionWeight (h.aliceConditioned j) (h.bobConditioned j)) *
  (∏ j : {j : Fin n // j ∈ L},
    G.marginalX (h.aliceRevealed j)) *
  (∏ j : {j : Fin n //
      j ∈ fullHistoryRemaining n D (insert i L)},
    G.marginalY (h.bobRemaining j))

end CoordinateWeights

end

noncomputable section

open WithLp
open scoped BigOperators ComplexOrder Kronecker MatrixOrder
  Matrix.Norms.L2Operator InnerProductSpace

variable {X Y A B : Type*}
variable [Fintype X] [Fintype Y] [Fintype A] [Fintype B]

def fullCoordinateAliceQuestionFilter
    (G : Game X Y A B) (n : ℕ) (S : Strategy (G.repeat n))
    (D L : Finset (Fin n)) (i : Fin n)
    (r : FullCoordinateRevealHistory X Y n D L i)
    (α : {j : Fin n // j ∈ D} → A) (x : X) :
    Matrix S.Alice S.Alice ℂ :=
  fullHistoryAliceFilter G n S D (insert i L)
    (fullCoordinateNewHistory D L i r x) α

def fullCoordinateAliceMeanFilter
    (G : Game X Y A B) (n : ℕ) (S : Strategy (G.repeat n))
    (D L : Finset (Fin n)) (i : Fin n)
    (r : FullCoordinateRevealHistory X Y n D L i)
    (α : {j : Fin n // j ∈ D} → A) (y : Y) :
    Matrix S.Alice S.Alice ℂ :=
  fullHistoryAliceFilter G n S D L
    (fullCoordinateOldHistory D L i r y) α

end

end QuantumParallelRepetition
