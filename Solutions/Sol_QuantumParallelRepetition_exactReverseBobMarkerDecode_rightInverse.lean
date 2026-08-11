import Definitions.Def_quantum_parallel_repetition_game
import Definitions.Def_qpr_core_21
import Theorems.Thm_QuantumParallelRepetition_exactRight_coordinate_not_mem
import Theorems.Thm_QuantumParallelRepetition_exactReverseRightSide_coordinate_mem
import Theorems.Thm_QuantumParallelRepetition_exactReverseRightSide_card
import Theorems.Thm_QuantumParallelRepetition_exactReverseRightSide_complement
import Theorems.Thm_QuantumParallelRepetition_exactReverseBobCanonicalPartition_side
import Theorems.Thm_QuantumParallelRepetition_exactReverseBobCanonicalPartition_otherSide
import Theorems.Thm_QuantumParallelRepetition_exactReverseBobCanonicalPartition_card
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
import Mathlib.Data.Finset.Insert
import Mathlib.Data.Finset.SDiff
import Mathlib.Data.Fintype.Defs
import Mathlib.Data.Fintype.EquivFin
import Mathlib.Data.FunLike.Basic
import Mathlib.Data.FunLike.Embedding
import Mathlib.Data.FunLike.Equiv
import Mathlib.Data.Matrix.Basic
import Mathlib.Data.SetLike.Basic
import Mathlib.Data.Subtype
import Mathlib.LinearAlgebra.Matrix.Kronecker
import Mathlib.Logic.Equiv.Basic
import Mathlib.Logic.Equiv.Defs
import Mathlib.Logic.Equiv.Fin.Basic
import Mathlib.Logic.Equiv.Option
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

end

noncomputable section

open scoped BigOperators

set_option backward.isDefEq.respectTransparency false
set_option maxHeartbeats 3600000
set_option maxRecDepth 2048

open QuantumParallelRepetition.Pinsker
open QuantumParallelRepetition.ClassicalInformation

attribute [local instance] Classical.propDecidable

theorem exactInsertedRank_deleteMarked
    {M : Type*} [DecidableEq M]
    (i : M) (side : Finset M) (not_mem : i ∉ side)
    (rank : {j : M // j ∈ insert i side} ≃
      Fin (side.card + 1))
    (cut : Fin (side.card + 1))
    (marked :
      rank ⟨i, Finset.mem_insert_self i side⟩ = cut) :
    exactInsertedRank i side not_mem
        (exactDeleteMarkedRank
          i side not_mem rank cut marked) cut = rank := by
  apply Equiv.ext
  intro j
  by_cases is_marker : j.val = i
  · have hj : j = ⟨i, Finset.mem_insert_self i side⟩ :=
      Subtype.ext is_marker
    rw [hj, exactInsertedRank_marker, marked]
  · have old_member : j.val ∈ side :=
      (Finset.mem_insert.mp j.property).resolve_left is_marker
    let old : {j : M // j ∈ side} := ⟨j.val, old_member⟩
    have hj :
        (⟨old.val, Finset.mem_insert_of_mem old.property⟩ :
          {j : M // j ∈ insert i side}) = j := by
      apply Subtype.ext
      rfl
    rw [← hj, exactInsertedRank_old]
    have distinct :
        rank ⟨old.val, Finset.mem_insert_of_mem old.property⟩ ≠ cut := by
      intro same
      apply is_marker
      have hrank :
          rank ⟨old.val, Finset.mem_insert_of_mem old.property⟩ =
            rank ⟨i, Finset.mem_insert_self i side⟩ := by
        rw [marked]
        exact same
      exact congrArg Subtype.val (rank.injective hrank)
    let deleted : {k : Fin (side.card + 1) // k ≠ cut} :=
      ⟨rank ⟨old.val, Finset.mem_insert_of_mem old.property⟩,
        distinct⟩
    have hdelete :
        exactDeleteMarkedRank
            i side not_mem rank cut marked old =
          (finSuccAboveEquiv cut).symm deleted := by
      rfl
    rw [hdelete]
    have h := (finSuccAboveEquiv cut).apply_symm_apply deleted
    exact congrArg Subtype.val h

end

noncomputable section

open scoped BigOperators

set_option backward.isDefEq.respectTransparency false
set_option maxHeartbeats 4200000
set_option maxRecDepth 2048

open QuantumParallelRepetition.Pinsker
open QuantumParallelRepetition.ClassicalInformation

attribute [local instance] Classical.propDecidable

theorem exactPermutationOfSideRank_rank
    {M : Type*} [Fintype M] [DecidableEq M]
    (side : Finset M)
    (rank : {j : M // j ∈ side} ≃ Fin side.card) :
    (exactPermutationOfSideRank side rank).symm.trans
      (Finset.equivFin side) = rank := by
  apply Equiv.ext
  intro j
  simp [exactPermutationOfSideRank, Equiv.trans_apply]

end

noncomputable section

open scoped BigOperators

set_option backward.isDefEq.respectTransparency false
set_option maxHeartbeats 5000000
set_option maxRecDepth 2048

open QuantumParallelRepetition.Pinsker
open QuantumParallelRepetition.ClassicalInformation

attribute [local instance] Classical.propDecidable

@[simp] theorem exactReverseBobMarkerDecode_coordinate
    {M : Type*} [Fintype M] [DecidableEq M]
    (side : Finset M)
    (context : ExactReverseSideContext M side)
    (marker : Fin side.card) :
    (exactReverseBobMarkerDecode
      side context marker).coordinate =
      (context.sideRank.symm marker).val := by
  rfl

@[simp] theorem exactReverseBobMarkerDecode_side
    {M : Type*} [Fintype M] [DecidableEq M]
    (side : Finset M)
    (context : ExactReverseSideContext M side)
    (marker : Fin side.card) :
    exactReverseRightSide
        (exactReverseBobMarkerDecode
          side context marker) = side := by
  change
    insert (context.sideRank.symm marker).val
      (exactRight (context.sideRank.symm marker).val
        (exactReverseBobCanonicalPartition
          side (context.sideRank.symm marker).val
          context.ignoredBit)) = side
  exact exactReverseBobCanonicalPartition_side
    side (context.sideRank.symm marker).val
    (context.sideRank.symm marker).property context.ignoredBit

@[simp] theorem exactReverseBobMarkerDecode_ignoredBit
    {M : Type*} [Fintype M] [DecidableEq M]
    (side : Finset M)
    (context : ExactReverseSideContext M side)
    (marker : Fin side.card) :
    (exactReverseBobMarkerDecode
      side context marker).partition
      (exactReverseBobMarkerDecode
        side context marker).coordinate = context.ignoredBit := by
  simp [exactReverseBobMarkerDecode,
    exactReverseBobCanonicalPartition]

theorem exactSigmaFinCutTransport
    {M : Type*} [DecidableEq M]
    (source target : Finset M) (same : source = target)
    (cut : Fin (target.card + 1)) :
    (⟨source,
        (finCongr
          (congrArg (fun side : Finset M => side.card + 1) same).symm)
          cut⟩ : Σ side : Finset M, Fin (side.card + 1)) =
      ⟨target, cut⟩ := by
  subst target
  simp

theorem exactSigmaSideRankTransport
    {M : Type*} [DecidableEq M]
    (source target : Finset M) (same : source = target)
    (rank : {j : M // j ∈ target} ≃ Fin target.card) :
    (⟨source,
        (Equiv.subtypeEquivRight (fun j => by rw [same])).trans
          (rank.trans (finCongr (congrArg Finset.card same).symm))⟩ :
        Σ side : Finset M, ({j : M // j ∈ side} ≃ Fin side.card)) =
      ⟨target, rank⟩ := by
  subst target
  apply Sigma.ext
  · rfl
  · apply heq_of_eq
    apply Equiv.ext
    intro j
    simp [Equiv.trans_apply]
    apply Subtype.ext
    rfl

end

noncomputable section

open scoped BigOperators

set_option backward.isDefEq.respectTransparency false
set_option maxHeartbeats 5000000
set_option maxRecDepth 2048

open QuantumParallelRepetition.Pinsker
open QuantumParallelRepetition.ClassicalInformation

attribute [local instance] Classical.propDecidable

theorem exactReverseBobMarkerDecode_otherRank
    {M : Type*} [Fintype M] [DecidableEq M]
    (side : Finset M)
    (context : ExactReverseSideContext M side)
    (marker : Fin side.card) :
    (⟨exactLeft
        (exactReverseBobMarkerDecode
          side context marker).coordinate
        (exactReverseBobMarkerDecode
          side context marker).partition,
      exactLeftRank
        (exactReverseBobMarkerDecode
          side context marker)⟩ :
        Σ other : Finset M,
          ({j : M // j ∈ other} ≃ Fin other.card)) =
      ⟨context.otherSide, context.otherRank⟩ := by
  classical
  let coordinate := (context.sideRank.symm marker).val
  let partition :=
    exactReverseBobCanonicalPartition
      side coordinate context.ignoredBit
  have other : exactLeft coordinate partition =
      context.otherSide := by
    exact (exactReverseBobCanonicalPartition_otherSide
      side coordinate (context.sideRank.symm marker).property
      context.ignoredBit).trans
        context.otherSide_eq_complement.symm
  have transported := exactSigmaSideRankTransport
    (exactLeft coordinate partition)
    context.otherSide other context.otherRank
  simpa only [exactReverseBobMarkerDecode,
    exactLeftRank,
    exactPermutationOfSideRank_rank] using transported

theorem exactReverseBobMarkerDecode_otherCut
    {M : Type*} [Fintype M] [DecidableEq M]
    (side : Finset M)
    (context : ExactReverseSideContext M side)
    (marker : Fin side.card) :
    (⟨exactLeft
        (exactReverseBobMarkerDecode
          side context marker).coordinate
        (exactReverseBobMarkerDecode
          side context marker).partition,
      (exactReverseBobMarkerDecode
        side context marker).leftCut⟩ :
        Σ other : Finset M, Fin (other.card + 1)) =
      ⟨context.otherSide, context.otherCut⟩ := by
  classical
  let coordinate := (context.sideRank.symm marker).val
  let partition :=
    exactReverseBobCanonicalPartition
      side coordinate context.ignoredBit
  have other : exactLeft coordinate partition =
      context.otherSide := by
    exact (exactReverseBobCanonicalPartition_otherSide
      side coordinate (context.sideRank.symm marker).property
      context.ignoredBit).trans
        context.otherSide_eq_complement.symm
  have transported := exactSigmaFinCutTransport
    (exactLeft coordinate partition)
    context.otherSide other context.otherCut
  simpa only [exactReverseBobMarkerDecode] using transported

theorem exactReverseBobMarkerDecode_sideRank
    {M : Type*} [Fintype M] [DecidableEq M]
    (side : Finset M)
    (context : ExactReverseSideContext M side)
    (marker : Fin side.card) :
    (⟨exactReverseRightSide
        (exactReverseBobMarkerDecode
          side context marker),
      (exactReverseBobContext
        (exactReverseBobMarkerDecode
          side context marker)).sideRank⟩ :
        Σ actualSide : Finset M,
          ({j : M // j ∈ actualSide} ≃ Fin actualSide.card)) =
      ⟨side, context.sideRank⟩ := by
  classical
  let coordinate := (context.sideRank.symm marker).val
  let partition :=
    exactReverseBobCanonicalPartition
      side coordinate context.ignoredBit
  have actual : insert coordinate
      (exactRight coordinate partition) = side :=
    exactReverseBobCanonicalPartition_side
      side coordinate (context.sideRank.symm marker).property
      context.ignoredBit
  let transportedRank :
      {j : M //
        j ∈ insert coordinate (exactRight coordinate partition)} ≃
        Fin (insert coordinate (exactRight coordinate partition)).card :=
    (Equiv.subtypeEquivRight (fun j => by rw [actual])).trans
      (context.sideRank.trans
        (finCongr (congrArg Finset.card actual).symm))
  have transported :
      (⟨insert coordinate (exactRight coordinate partition),
        transportedRank⟩ :
          Σ actualSide : Finset M,
            ({j : M // j ∈ actualSide} ≃ Fin actualSide.card)) =
        ⟨side, context.sideRank⟩ :=
    exactSigmaSideRankTransport
      (insert coordinate (exactRight coordinate partition))
      side actual context.sideRank
  calc
    (⟨exactReverseRightSide
        (exactReverseBobMarkerDecode side context marker),
      (exactReverseBobContext
        (exactReverseBobMarkerDecode
          side context marker)).sideRank⟩ :
        Σ actualSide : Finset M,
          ({j : M // j ∈ actualSide} ≃ Fin actualSide.card)) =
        ⟨insert coordinate (exactRight coordinate partition),
          transportedRank⟩ := by
            apply Sigma.ext
            · change
                insert (context.sideRank.symm marker).val
                    (exactRight (context.sideRank.symm marker).val
                      (exactReverseBobCanonicalPartition
                        side (context.sideRank.symm marker).val
                        context.ignoredBit)) =
                  insert coordinate (exactRight coordinate partition)
              rfl
            · apply heq_of_eq
              apply Equiv.ext
              intro j
              apply Fin.ext
              simp [coordinate, partition, transportedRank,
                exactReverseBobMarkerDecode,
                exactReverseBobContext,
                exactReverseRightSide,
                exactReverseRightRank,
                exactRightRank,
                exactPermutationOfSideRank_rank,
                exactInsertedRank_deleteMarked,
                Equiv.trans_assoc, Equiv.trans_apply,
                finCongr_apply, Fin.val_cast]
    _ = ⟨side, context.sideRank⟩ := transported

end

end QuantumParallelRepetition


open QuantumParallelRepetition
open scoped ComplexOrder Matrix BigOperators InnerProductSpace
open Complex Matrix Finset
open scoped BigOperators
set_option backward.isDefEq.respectTransparency false
set_option maxHeartbeats 5000000
set_option maxRecDepth 2048
open QuantumParallelRepetition.Pinsker
open QuantumParallelRepetition.ClassicalInformation
attribute [local instance] Classical.propDecidable

theorem solution
    {M : Type*} [Fintype M] [DecidableEq M]
    (side : Finset M)
    (context : ExactReverseSideContext M side)
    (marker : Fin side.card) :
    exactReverseBobMarkerCode
        (exactReverseBobMarkerDecode
          side context marker) =
      ⟨side, context, marker⟩ := by
  classical
  generalize decoded :
    exactReverseBobMarkerDecode side context marker = seed
  have sameSide : exactReverseRightSide seed = side := by
    rw [← decoded]
    exact exactReverseBobMarkerDecode_side
      side context marker
  subst side
  apply Sigma.ext
  · rfl
  · apply heq_of_eq
    change
      (exactReverseBobContext seed,
        (exactReverseBobContext seed).sideRank
          ⟨seed.coordinate,
            exactReverseRightSide_coordinate_mem seed⟩) =
        (context, marker)
    have sameContext : exactReverseBobContext seed = context := by
      cases context with
      | mk otherSide sideRank otherRank otherCut ignored complement =>
        simp only [exactReverseBobContext,
          ExactReverseSideContext.mk.injEq]
        let reverseContext : ExactReverseSideContext M
            (exactReverseRightSide seed) :=
          { otherSide := otherSide
            sideRank := sideRank
            otherRank := otherRank
            otherCut := otherCut
            ignoredBit := ignored
            otherSide_eq_complement := complement }
        have exactSideRank :=
          exactReverseBobMarkerDecode_sideRank
            (exactReverseRightSide seed)
            reverseContext marker
        have exactOtherRank :=
          exactReverseBobMarkerDecode_otherRank
            (exactReverseRightSide seed)
            reverseContext marker
        have exactOtherCut :=
          exactReverseBobMarkerDecode_otherCut
            (exactReverseRightSide seed)
            reverseContext marker
        change
          exactReverseBobMarkerDecode
              (exactReverseRightSide seed)
              reverseContext marker = seed at decoded
        rw [decoded] at exactSideRank exactOtherRank exactOtherCut
        refine ⟨(exactReverseRightSide_complement seed).trans
            complement.symm, ?_, ?_, ?_, ?_⟩
        · exact eq_of_heq (Sigma.mk.inj exactSideRank).2
        · exact (Sigma.mk.inj exactOtherRank).2
        · exact (Sigma.mk.inj exactOtherCut).2
        · have exactIgnored := congrArg
            (fun original : ExactForwardSeed M =>
              original.partition original.coordinate) decoded
          simpa only
            [exactReverseBobMarkerDecode_ignoredBit]
              using exactIgnored.symm
    apply Prod.ext
    · exact sameContext
    · rw [sameContext]
      apply context.sideRank.symm.injective
      change
        context.sideRank.symm
            (context.sideRank ⟨seed.coordinate, _⟩) =
          context.sideRank.symm marker
      rw [Equiv.symm_apply_apply]
      apply Subtype.ext
      have coordinate := congrArg
        (fun original : ExactForwardSeed M => original.coordinate)
        decoded
      simpa only [exactReverseBobMarkerDecode_coordinate]
        using coordinate.symm
