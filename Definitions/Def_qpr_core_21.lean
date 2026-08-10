import Definitions.Def_quantum_parallel_repetition_game
import Definitions.Def_qpr_core_20
import Theorems.Thm_QuantumParallelRepetition_exactReverseLeftSide_coordinate_mem
import Theorems.Thm_QuantumParallelRepetition_exactReverseRightSide_coordinate_mem
import Theorems.Thm_QuantumParallelRepetition_exactReverseAliceConditionalSeedWeight_nonneg
import Theorems.Thm_QuantumParallelRepetition_exactReverseBobConditionalSeedWeight_nonneg
import Theorems.Thm_QuantumParallelRepetition_exactReverseAliceConditionalSeedWeight_sum
import Theorems.Thm_QuantumParallelRepetition_exactReverseBobConditionalSeedWeight_sum
import Mathlib.Algebra.BigOperators.Group.Finset.Basic
import Mathlib.Algebra.BigOperators.Group.Finset.Defs
import Mathlib.Algebra.BigOperators.Ring.Finset
import Mathlib.Algebra.Group.Defs
import Mathlib.Algebra.GroupWithZero.Defs
import Mathlib.Algebra.Order.GroupWithZero.Unbundled.Basic
import Mathlib.Algebra.Order.Ring.Defs
import Mathlib.Algebra.Ring.Defs
import Mathlib.Algebra.Star.Basic
import Mathlib.Analysis.InnerProductSpace.Basic
import Mathlib.Analysis.Matrix.Normed
import Mathlib.Analysis.Matrix.Order
import Mathlib.Analysis.Normed.Lp.WithLp
import Mathlib.Analysis.Normed.Ring.Basic
import Mathlib.Analysis.RCLike.Basic
import Mathlib.Data.Finset.Card
import Mathlib.Data.Finset.Defs
import Mathlib.Data.Finset.Empty
import Mathlib.Data.Finset.Filter
import Mathlib.Data.Fintype.Basic
import Mathlib.Data.Fintype.BigOperators
import Mathlib.Data.Fintype.Card
import Mathlib.Data.Fintype.Defs
import Mathlib.Data.Fintype.Perm
import Mathlib.Data.Fintype.Pi
import Mathlib.Data.Fintype.Prod
import Mathlib.Data.Fintype.Sets
import Mathlib.Data.FunLike.Basic
import Mathlib.Data.FunLike.Equiv
import Mathlib.Data.Matrix.Basic
import Mathlib.Data.Nat.Cast.Defs
import Mathlib.Data.Nat.Init
import Mathlib.Data.Real.Basic
import Mathlib.Data.SetLike.Basic
import Mathlib.LinearAlgebra.Matrix.Kronecker
import Mathlib.Logic.Equiv.Defs
import Mathlib.MeasureTheory.Measure.MeasureSpace
import Mathlib.Order.Defs.PartialOrder
import Mathlib.Topology.Defs.Filter

namespace QuantumParallelRepetition

open scoped ComplexOrder Matrix BigOperators InnerProductSpace
open Complex Matrix Finset

noncomputable section

open scoped BigOperators

set_option backward.isDefEq.respectTransparency false
set_option maxHeartbeats 1800000
set_option maxRecDepth 2048

open QuantumParallelRepetition.ClassicalInformation

attribute [local instance] Classical.propDecidable

def exactReverseAliceConditionalSeedLaw
    {M : Type*} [Fintype M] [DecidableEq M]
    (nonempty : 0 < Fintype.card M)
    (side : Finset M) :
    FiniteEventLaw (ExactForwardSeed M) :=
  if hside : side.Nonempty then
    { weight := exactReverseAliceConditionalSeedWeight side
      weight_nonneg :=
        exactReverseAliceConditionalSeedWeight_nonneg side
      weight_sum :=
        exactReverseAliceConditionalSeedWeight_sum side hside }
  else exactForwardSeedLaw nonempty

def exactReverseBobConditionalSeedLaw
    {M : Type*} [Fintype M] [DecidableEq M]
    (nonempty : 0 < Fintype.card M)
    (side : Finset M) :
    FiniteEventLaw (ExactForwardSeed M) :=
  if hside : side.Nonempty then
    { weight := exactReverseBobConditionalSeedWeight side
      weight_nonneg :=
        exactReverseBobConditionalSeedWeight_nonneg side
      weight_sum :=
        exactReverseBobConditionalSeedWeight_sum side hside }
  else exactForwardSeedLaw nonempty

end

noncomputable section

open scoped BigOperators

set_option backward.isDefEq.respectTransparency false
set_option maxHeartbeats 2200000
set_option maxRecDepth 2048

open QuantumParallelRepetition.Pinsker
open QuantumParallelRepetition.ClassicalInformation

attribute [local instance] Classical.propDecidable

variable {X Y A B : Type*}
variable [Fintype X] [Fintype Y] [Fintype A] [Fintype B]

def reweightedSeedPriorEventLaw
    {K : Type*} [Fintype K]
    (seedLaw : FiniteEventLaw K)
    (G : Game X Y A B) (n : ℕ) (S : Strategy (G.repeat n)) :
    FiniteEventLaw (K × ExactOutcome X Y A B n) where
  weight q := seedLaw.weight q.1 *
    (strategyEventLaw (G.repeat n) S).weight q.2
  weight_nonneg q := mul_nonneg
    (seedLaw.weight_nonneg q.1)
    ((strategyEventLaw (G.repeat n) S).weight_nonneg q.2)
  weight_sum := by
    rw [Fintype.sum_prod_type]
    simp_rw [← Finset.mul_sum,
      (strategyEventLaw (G.repeat n) S).weight_sum, mul_one]
    exact seedLaw.weight_sum

def reweightedSeedWinEvent
    {K : Type*} [Fintype K]
    (G : Game X Y A B) (n : ℕ) (D : Finset (Fin n)) :
    Finset (K × ExactOutcome X Y A B n) :=
  Finset.univ.filter
    (fun q : K × ExactOutcome X Y A B n =>
      q.2 ∈ FiniteEventLaw.winEvent
        (repeatedCoordinateWin G n) D)

def reweightedSeedPosterior
    {K : Type*} [Fintype K]
    (seedLaw : FiniteEventLaw K)
    (G : Game X Y A B) (n : ℕ) (S : Strategy (G.repeat n))
    (D : Finset (Fin n)) :
    K × ExactOutcome X Y A B n → ℝ :=
  conditionedEventDistribution
    (reweightedSeedPriorEventLaw seedLaw G n S)
    (reweightedSeedWinEvent (K := K) G n D)

def reweightedSeedFlaggedProjectionLaw
    {K U Z : Type*} [Fintype K] [Fintype U] [Fintype Z]
    (seedLaw : FiniteEventLaw K)
    (G : Game X Y A B) (n : ℕ) (S : Strategy (G.repeat n))
    (D : Finset (Fin n))
    (projection : K × ExactOutcome X Y A B n → U)
    (flag : K × ExactOutcome X Y A B n → Z) :
    U × Z → ℝ :=
  groupedMass (fun q => (projection q, flag q))
    (reweightedSeedPosterior seedLaw G n S D)

def reweightedSeedPrefixJoint
    {K Ω V : Type*} [Fintype K] [Fintype Ω] [Fintype V]
    {h : ℕ} (seedLaw : FiniteEventLaw K)
    (G : Game X Y A B) (n : ℕ) (S : Strategy (G.repeat n))
    (D : Finset (Fin n))
    (projection : K × ExactOutcome X Y A B n →
      Ω × (Fin h → V)) :
    ((Ω × ConditionedAnswerFlag A B D) ×
      (Fin h → V)) → ℝ :=
  fun t => reweightedSeedFlaggedProjectionLaw
    seedLaw G n S D projection
    (fun q => repeatedConditionedAnswerFlag G n S D q.2)
    ((exactSourcePrefixFlagEquiv
      (Ω := Ω) (V := V)
      (Z := ConditionedAnswerFlag A B D)).symm t)

def reweightedSeedPrefixPrior
    {K Ω V : Type*} [Fintype K] [Fintype Ω] [Fintype V]
    {h : ℕ} (seedLaw : FiniteEventLaw K)
    (G : Game X Y A B) (n : ℕ) (S : Strategy (G.repeat n))
    (D : Finset (Fin n))
    (projection : K × ExactOutcome X Y A B n →
      Ω × (Fin h → V)) :
    ((Ω × ConditionedAnswerFlag A B D) ×
      (Fin h → V)) → ℝ :=
  fun t => uniformFlagReference
    (Z := ConditionedAnswerFlag A B D)
    (groupedMass projection
      (reweightedSeedPriorEventLaw seedLaw G n S).weight)
    ((exactSourcePrefixFlagEquiv
      (Ω := Ω) (V := V)
      (Z := ConditionedAnswerFlag A B D)).symm t)

def reweightedSeedPrefixEntropyIncrement
    {K Ω V : Type*} [Fintype K] [Fintype Ω] [Fintype V]
    {h : ℕ} (seedLaw : FiniteEventLaw K)
    (G : Game X Y A B) (n : ℕ) (S : Strategy (G.repeat n))
    (D : Finset (Fin n))
    (projection : K × ExactOutcome X Y A B n →
      Ω × (Fin h → V))
    (default : V) (k : Fin h) : ℝ :=
  finitePrefixRelativeEntropy
      (reweightedSeedPrefixJoint
        seedLaw G n S D projection)
      (reweightedSeedPrefixPrior
        seedLaw G n S D projection)
      default k.succ -
    finitePrefixRelativeEntropy
      (reweightedSeedPrefixJoint
        seedLaw G n S D projection)
      (reweightedSeedPrefixPrior
        seedLaw G n S D projection)
      default k.castSucc

end

noncomputable section

open scoped BigOperators

set_option backward.isDefEq.respectTransparency false
set_option maxHeartbeats 2200000
set_option maxRecDepth 2048

open QuantumParallelRepetition.Pinsker
open QuantumParallelRepetition.ClassicalInformation

attribute [local instance] Classical.propDecidable

def exactReverseSideContextWeight
    {M : Type*} [Fintype M] [DecidableEq M]
    {side : Finset M}
    (context : ExactReverseSideContext M side) : ℝ :=
  (1 / (2 : ℝ)) *
    (1 / (Fintype.card
      (Equiv.Perm {j : M // j ∈ side}) : ℝ)) *
    (1 / (Fintype.card
      (Equiv.Perm {j : M // j ∈ context.otherSide}) : ℝ)) *
    (1 / (context.otherSide.card + 1 : ℝ))

variable {X Y A B : Type*}
variable [Fintype X] [Fintype Y] [Fintype A] [Fintype B]

end

noncomputable section

open scoped BigOperators

set_option backward.isDefEq.respectTransparency false
set_option maxHeartbeats 2600000
set_option maxRecDepth 2048

open QuantumParallelRepetition.Pinsker
open QuantumParallelRepetition.ClassicalInformation

attribute [local instance] Classical.propDecidable

def exactReverseAliceMarkerCode
    {M : Type*} [Fintype M] [DecidableEq M]
    (seed : ExactForwardSeed M) :
    Σ side : Finset M,
      ExactReverseSideContext M side × Fin side.card :=
  ⟨exactReverseLeftSide seed,
    exactReverseAliceContext seed,
    (exactReverseAliceContext seed).sideRank
      ⟨seed.coordinate,
        exactReverseLeftSide_coordinate_mem seed⟩⟩

def exactReverseBobMarkerCode
    {M : Type*} [Fintype M] [DecidableEq M]
    (seed : ExactForwardSeed M) :
    Σ side : Finset M,
      ExactReverseSideContext M side × Fin side.card :=
  ⟨exactReverseRightSide seed,
    exactReverseBobContext seed,
    (exactReverseBobContext seed).sideRank
      ⟨seed.coordinate,
        exactReverseRightSide_coordinate_mem seed⟩⟩

end

end QuantumParallelRepetition
