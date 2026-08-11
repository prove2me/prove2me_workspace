import Definitions.Def_quantum_parallel_repetition_game
import Definitions.Def_qpr_core_21
import Theorems.Thm_QuantumParallelRepetition_exactRight_coordinate_not_mem
import Theorems.Thm_QuantumParallelRepetition_exactReverseRightSide_coordinate_mem
import Theorems.Thm_QuantumParallelRepetition_exactReverseRightSide_card
import Mathlib.Algebra.BigOperators.Group.Finset.Defs
import Mathlib.Algebra.Star.Basic
import Mathlib.Analysis.InnerProductSpace.Basic
import Mathlib.Analysis.Matrix.Normed
import Mathlib.Analysis.Matrix.Order
import Mathlib.Analysis.Normed.Lp.WithLp
import Mathlib.Analysis.RCLike.Basic
import Mathlib.Data.Fin.SuccPred
import Mathlib.Data.Finset.Card
import Mathlib.Data.Finset.Defs
import Mathlib.Data.Finset.Filter
import Mathlib.Data.Finset.Insert
import Mathlib.Data.Fintype.Defs
import Mathlib.Data.Fintype.EquivFin
import Mathlib.Data.FunLike.Basic
import Mathlib.Data.FunLike.Equiv
import Mathlib.Data.Matrix.Basic
import Mathlib.Data.SetLike.Basic
import Mathlib.Data.Sigma.Basic
import Mathlib.Data.Subtype
import Mathlib.LinearAlgebra.Matrix.Kronecker
import Mathlib.Logic.Equiv.Defs
import Mathlib.Logic.Equiv.Fin.Basic
import Mathlib.Logic.Equiv.Option
import Mathlib.Logic.Function.Basic
import Mathlib.MeasureTheory.Measure.MeasureSpace
import Mathlib.Topology.Defs.Filter

namespace QuantumParallelRepetition

open scoped ComplexOrder Matrix BigOperators InnerProductSpace
open Complex Matrix Finset

noncomputable section

open scoped BigOperators

set_option backward.isDefEq.respectTransparency false
set_option maxHeartbeats 1200000
set_option maxRecDepth 2048

attribute [local instance] Classical.propDecidable

@[simp] theorem exactInsertedRank_marker
    {M : Type*} [DecidableEq M]
    (i : M) (side : Finset M) (not_mem : i ∉ side)
    (rank : {j : M // j ∈ side} ≃ Fin side.card)
    (cut : Fin (side.card + 1)) :
    exactInsertedRank i side not_mem rank cut
      ⟨i, Finset.mem_insert_self i side⟩ = cut := by
  simp [exactInsertedRank,
    Finset.subtypeInsertEquivOption]

theorem exactInsertedRank_old
    {M : Type*} [DecidableEq M]
    (i : M) (side : Finset M) (not_mem : i ∉ side)
    (rank : {j : M // j ∈ side} ≃ Fin side.card)
    (cut : Fin (side.card + 1))
    (j : {j : M // j ∈ side}) :
    exactInsertedRank i side not_mem rank cut
      ⟨j.val, Finset.mem_insert_of_mem j.property⟩ =
      cut.succAbove (rank j) := by
  have hne : j.val ≠ i := by
    intro h
    exact not_mem (h ▸ j.property)
  simp [exactInsertedRank,
    Finset.subtypeInsertEquivOption, hne]

@[simp] theorem exactReverseRightRank_coordinate
    {M : Type*} [Fintype M] [DecidableEq M]
    (seed : ExactForwardSeed M) :
    exactReverseRightRank seed
      ⟨seed.coordinate,
        exactReverseRightSide_coordinate_mem seed⟩ =
      seed.rightCut := by
  exact exactInsertedRank_marker
    seed.coordinate
    (exactRight seed.coordinate seed.partition)
    (exactRight_coordinate_not_mem
      seed.coordinate seed.partition)
    (exactRightRank seed) seed.rightCut

theorem exactReverseRightRank_old
    {M : Type*} [Fintype M] [DecidableEq M]
    (seed : ExactForwardSeed M)
    (j : {j : M //
      j ∈ exactRight seed.coordinate seed.partition}) :
    exactReverseRightRank seed
      ⟨j.val, Finset.mem_insert_of_mem j.property⟩ =
      seed.rightCut.succAbove (exactRightRank seed j) := by
  exact exactInsertedRank_old
    seed.coordinate
    (exactRight seed.coordinate seed.partition)
    (exactRight_coordinate_not_mem
      seed.coordinate seed.partition)
    (exactRightRank seed) seed.rightCut j

end

noncomputable section

open scoped BigOperators

set_option backward.isDefEq.respectTransparency false
set_option maxHeartbeats 1800000
set_option maxRecDepth 2048

attribute [local instance] Classical.propDecidable

variable {X Y A B : Type*}
variable [Fintype X] [Fintype Y] [Fintype A] [Fintype B]

@[simp] theorem exactReverseBobContext_marked_rank
    {M : Type*} [Fintype M] [DecidableEq M]
    (seed : ExactForwardSeed M) :
    ((exactReverseBobContext seed).sideRank
      ⟨seed.coordinate,
        exactReverseRightSide_coordinate_mem seed⟩).val =
      seed.rightCut.val := by
  simp [exactReverseBobContext,
    Equiv.trans_apply,
    exactReverseRightRank_coordinate]

end

noncomputable section

open scoped BigOperators

set_option backward.isDefEq.respectTransparency false
set_option maxHeartbeats 2600000
set_option maxRecDepth 2048

open QuantumParallelRepetition.Pinsker
open QuantumParallelRepetition.ClassicalInformation

attribute [local instance] Classical.propDecidable

@[simp] theorem exactReverseBobMarkerCode_coordinate
    {M : Type*} [Fintype M] [DecidableEq M]
    (seed : ExactForwardSeed M) :
    (((exactReverseBobMarkerCode seed).2.1.sideRank).symm
      (exactReverseBobMarkerCode seed).2.2).val =
      seed.coordinate := by
  simp [exactReverseBobMarkerCode]

theorem exactReverseBobMarkerCode_coordinate_injective
    {M : Type*} [Fintype M] [DecidableEq M]
    {a b : ExactForwardSeed M}
    (same : exactReverseBobMarkerCode a =
      exactReverseBobMarkerCode b) :
    a.coordinate = b.coordinate := by
  have h := congrArg
    (fun t : Σ side : Finset M,
      ExactReverseSideContext M side × Fin side.card =>
      (t.2.1.sideRank.symm t.2.2).val) same
  simpa only [exactReverseBobMarkerCode_coordinate] using h

theorem exactReverseBobMarkerCode_partition_injective
    {M : Type*} [Fintype M] [DecidableEq M]
    {a b : ExactForwardSeed M}
    (same : exactReverseBobMarkerCode a =
      exactReverseBobMarkerCode b) :
    a.partition = b.partition := by
  have hcoordinate :=
    exactReverseBobMarkerCode_coordinate_injective same
  have hside :
      exactReverseRightSide a =
        exactReverseRightSide b :=
    congrArg Sigma.fst same
  have hbit : a.partition a.coordinate = b.partition b.coordinate := by
    have h := congrArg
      (fun t : Σ side : Finset M,
        ExactReverseSideContext M side × Fin side.card =>
        t.2.1.ignoredBit) same
    exact h
  funext j
  by_cases hj : j = a.coordinate
  · subst j
    simpa [hcoordinate] using hbit
  · have hbj : j ≠ b.coordinate := by
      simpa [hcoordinate] using hj
    have hm :
        (a.partition j = true) ↔ (b.partition j = true) := by
      have := Finset.ext_iff.mp hside j
      simpa [exactReverseRightSide, exactRight,
        hj, hbj] using this
    cases ha : a.partition j <;>
      cases hb : b.partition j <;>
      simp_all

end

end QuantumParallelRepetition


open QuantumParallelRepetition
open scoped ComplexOrder Matrix BigOperators InnerProductSpace
open Complex Matrix Finset
open scoped BigOperators
set_option backward.isDefEq.respectTransparency false
set_option maxHeartbeats 2600000
set_option maxRecDepth 2048
open QuantumParallelRepetition.Pinsker
open QuantumParallelRepetition.ClassicalInformation
attribute [local instance] Classical.propDecidable

theorem solution
    {M : Type*} [Fintype M] [DecidableEq M] :
    Function.Injective (exactReverseBobMarkerCode (M := M)) := by
  intro a b same
  have hcoordinate :=
    exactReverseBobMarkerCode_coordinate_injective same
  have hpartition :=
    exactReverseBobMarkerCode_partition_injective same
  rcases a with ⟨i, p, l, r, lc, rc⟩
  rcases b with ⟨j, q, l', r', lc', rc'⟩
  dsimp at hcoordinate hpartition
  subst j
  subst q
  simp only [exactReverseBobMarkerCode, Sigma.mk.inj_iff] at same
  have hpair := eq_of_heq same.2
  have hctx := congrArg Prod.fst hpair
  have hmarked := congrArg Prod.snd hpair
  have hrightCut : rc = rc' := by
    apply Fin.ext
    have hv := congrArg Fin.val hmarked
    exact
      (exactReverseBobContext_marked_rank
        ({ coordinate := i, partition := p, leftOrder := l,
           rightOrder := r, leftCut := lc, rightCut := rc } :
          ExactForwardSeed M)).symm.trans
        (hv.trans
          (exactReverseBobContext_marked_rank
            ({ coordinate := i, partition := p, leftOrder := l',
               rightOrder := r', leftCut := lc', rightCut := rc' } :
              ExactForwardSeed M)))
  have hleftCut : lc = lc' := by
    apply Fin.ext
    have hv := congrArg
      (fun c : ExactReverseSideContext M
        (exactReverseRightSide
          ({ coordinate := i, partition := p, leftOrder := l,
             rightOrder := r, leftCut := lc, rightCut := rc } :
            ExactForwardSeed M)) => c.otherCut.val) hctx
    exact hv
  subst rc'
  subst lc'
  change
    exactReverseBobContext
        ({ coordinate := i, partition := p, leftOrder := l,
           rightOrder := r, leftCut := lc, rightCut := rc } :
          ExactForwardSeed M) =
      exactReverseBobContext
        ({ coordinate := i, partition := p, leftOrder := l',
           rightOrder := r', leftCut := lc, rightCut := rc } :
          ExactForwardSeed M) at hctx
  have hsideRank := congrArg
    (fun c : ExactReverseSideContext M
      (exactReverseRightSide
        ({ coordinate := i, partition := p, leftOrder := l,
           rightOrder := r, leftCut := lc, rightCut := rc } :
          ExactForwardSeed M)) => c.sideRank) hctx
  have hotherRankSigma := congrArg
    (fun c : ExactReverseSideContext M
      (exactReverseRightSide
        ({ coordinate := i, partition := p, leftOrder := l,
           rightOrder := r, leftCut := lc, rightCut := rc } :
          ExactForwardSeed M)) =>
      (⟨c.otherSide, c.otherRank⟩ :
        Σ other : Finset M,
          ({j : M // j ∈ other} ≃ Fin other.card))) hctx
  simp only [exactReverseBobContext,
    Sigma.mk.inj_iff] at hotherRankSigma
  have hotherRank := eq_of_heq hotherRankSigma.2
  have hleftSymm : l.symm = l'.symm := by
    have h := congrArg
      (fun e :
        ({j : M // j ∈ exactLeft i p} ≃
          Fin (exactLeft i p).card) =>
        e.trans (Finset.equivFin (exactLeft i p)).symm)
      hotherRank
    simpa [exactLeftRank, Equiv.trans_assoc] using h
  have hleft : l = l' := Equiv.symm_bijective.injective hleftSymm
  subst l'
  have hreverseRightRank :
      exactReverseRightRank
          ({ coordinate := i, partition := p, leftOrder := l,
             rightOrder := r, leftCut := lc, rightCut := rc } :
            ExactForwardSeed M) =
        exactReverseRightRank
          ({ coordinate := i, partition := p, leftOrder := l,
             rightOrder := r', leftCut := lc, rightCut := rc } :
            ExactForwardSeed M) := by
    apply Equiv.ext
    intro j
    apply Fin.ext
    have hsideVal
        (seed : ExactForwardSeed M)
        (k : {k : M // k ∈ exactReverseRightSide seed}) :
        ((exactReverseBobContext seed).sideRank k).val =
          (exactReverseRightRank seed k).val := by
      simp only [exactReverseBobContext, Equiv.trans_apply,
        finCongr_apply, Fin.val_cast]
    have h := congrArg
      (fun e => (e j).val) hsideRank
    exact
      (hsideVal
        ({ coordinate := i, partition := p, leftOrder := l,
           rightOrder := r, leftCut := lc, rightCut := rc } :
          ExactForwardSeed M) j).symm.trans
        (h.trans
          (hsideVal
            ({ coordinate := i, partition := p, leftOrder := l,
               rightOrder := r', leftCut := lc, rightCut := rc } :
              ExactForwardSeed M) j))
  have hrightRank :
      exactRightRank
          ({ coordinate := i, partition := p, leftOrder := l,
             rightOrder := r, leftCut := lc, rightCut := rc } :
            ExactForwardSeed M) =
        exactRightRank
          ({ coordinate := i, partition := p, leftOrder := l,
             rightOrder := r', leftCut := lc, rightCut := rc } :
            ExactForwardSeed M) := by
    apply Equiv.ext
    intro j
    let j' :
        {j : M //
          j ∈ exactRight i p} := ⟨j.val, j.property⟩
    have h := congrArg
      (fun e => e
        ⟨j.val, Finset.mem_insert_of_mem j.property⟩)
      hreverseRightRank
    apply Fin.succAbove_right_injective
    exact
      (exactReverseRightRank_old
        ({ coordinate := i, partition := p, leftOrder := l,
           rightOrder := r, leftCut := lc, rightCut := rc } :
          ExactForwardSeed M) j).symm.trans
        (h.trans
          (exactReverseRightRank_old
            ({ coordinate := i, partition := p, leftOrder := l,
               rightOrder := r', leftCut := lc, rightCut := rc } :
              ExactForwardSeed M) j'))
  have hrightSymm : r.symm = r'.symm := by
    have h := congrArg
      (fun e :
        ({j : M // j ∈ exactRight i p} ≃
          Fin (exactRight i p).card) =>
        e.trans (Finset.equivFin (exactRight i p)).symm)
      hrightRank
    simpa [exactRightRank, Equiv.trans_assoc] using h
  have hright : r = r' := Equiv.symm_bijective.injective hrightSymm
  subst r'
  rfl
