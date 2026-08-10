import Definitions.Def_quantum_parallel_repetition_game
import Definitions.Def_qpr_core_21
import Theorems.Thm_QuantumParallelRepetition_exactLeft_coordinate_not_mem
import Theorems.Thm_QuantumParallelRepetition_exactRight_coordinate_not_mem
import Theorems.Thm_QuantumParallelRepetition_exactReverseAliceCanonicalPartition_side
import Theorems.Thm_QuantumParallelRepetition_exactReverseBobCanonicalPartition_side
import Theorems.Thm_QuantumParallelRepetition_exactReverseAliceCanonicalPartition_otherSide
import Theorems.Thm_QuantumParallelRepetition_exactReverseBobCanonicalPartition_otherSide
import Theorems.Thm_QuantumParallelRepetition_exactReverseAliceCanonicalPartition_card
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
import Mathlib.Data.FunLike.Equiv
import Mathlib.Data.Matrix.Basic
import Mathlib.Data.SetLike.Basic
import Mathlib.LinearAlgebra.Matrix.Kronecker
import Mathlib.Logic.Equiv.Basic
import Mathlib.Logic.Equiv.Defs
import Mathlib.Logic.Equiv.Fin.Basic
import Mathlib.MeasureTheory.Measure.MeasureSpace
import Mathlib.Topology.Defs.Filter

namespace QuantumParallelRepetition

open scoped ComplexOrder Matrix BigOperators InnerProductSpace
open Complex Matrix Finset

noncomputable section

open scoped BigOperators

set_option backward.isDefEq.respectTransparency false
set_option maxHeartbeats 3600000
set_option maxRecDepth 2048

open QuantumParallelRepetition.Pinsker
open QuantumParallelRepetition.ClassicalInformation

attribute [local instance] Classical.propDecidable

def exactInsertedOldSubtypeEquiv
    {M : Type*} [DecidableEq M]
    (i : M) (side : Finset M) (not_mem : i ∉ side) :
    {j : M // j ∈ side} ≃
      {j : {j : M // j ∈ insert i side} // j.val ≠ i} where
  toFun j :=
    ⟨⟨j.val, Finset.mem_insert_of_mem j.property⟩,
      fun same => not_mem (same ▸ j.property)⟩
  invFun j :=
    ⟨j.val.val, (Finset.mem_insert.mp j.val.property).resolve_left
      j.property⟩
  left_inv j := by
    apply Subtype.ext
    rfl
  right_inv j := by
    apply Subtype.ext
    apply Subtype.ext
    rfl

def exactDeleteMarkedRank
    {M : Type*} [DecidableEq M]
    (i : M) (side : Finset M) (not_mem : i ∉ side)
    (rank : {j : M // j ∈ insert i side} ≃
      Fin (side.card + 1))
    (cut : Fin (side.card + 1))
    (marked :
      rank ⟨i, Finset.mem_insert_self i side⟩ = cut) :
    {j : M // j ∈ side} ≃ Fin side.card :=
  (exactInsertedOldSubtypeEquiv i side not_mem).trans
    ((rank.subtypeEquiv (p := fun j => j.val ≠ i)
      (q := fun k => k ≠ cut)
      (by
        intro j
        constructor
        · intro distinct same
          apply distinct
          have hrank :
              rank j =
                rank ⟨i, Finset.mem_insert_self i side⟩ := by
            rw [marked]
            exact same
          exact congrArg Subtype.val (rank.injective hrank)
        · intro distinct same
          apply distinct
          have hj : j = ⟨i, Finset.mem_insert_self i side⟩ :=
            Subtype.ext same
          rw [hj, marked])).trans (finSuccAboveEquiv cut).symm)

end

noncomputable section

open scoped BigOperators

set_option backward.isDefEq.respectTransparency false
set_option maxHeartbeats 4200000
set_option maxRecDepth 2048

open QuantumParallelRepetition.Pinsker
open QuantumParallelRepetition.ClassicalInformation

attribute [local instance] Classical.propDecidable

def exactPermutationOfSideRank
    {M : Type*} [Fintype M] [DecidableEq M]
    (side : Finset M)
    (rank : {j : M // j ∈ side} ≃ Fin side.card) :
    Equiv.Perm {j : M // j ∈ side} :=
  (rank.trans (Finset.equivFin side).symm).symm

def exactReverseAliceMarkerDecode
    {M : Type*} [Fintype M] [DecidableEq M]
    (side : Finset M)
    (context : ExactReverseSideContext M side)
    (marker : Fin side.card) :
    ExactForwardSeed M := by
  classical
  let coordinate : M := (context.sideRank.symm marker).val
  have member : coordinate ∈ side :=
    (context.sideRank.symm marker).property
  let partition : M → Bool :=
    exactReverseAliceCanonicalPartition
      side coordinate context.ignoredBit
  have hside :
      insert coordinate (exactLeft coordinate partition) = side :=
    exactReverseAliceCanonicalPartition_side
      side coordinate member context.ignoredBit
  have hcard :
      (exactLeft coordinate partition).card + 1 = side.card :=
    exactReverseAliceCanonicalPartition_card
      side coordinate member context.ignoredBit
  let transportedSide :
      {j : M //
        j ∈ insert coordinate (exactLeft coordinate partition)} ≃
      {j : M // j ∈ side} :=
    Equiv.subtypeEquivRight (fun j => by rw [hside])
  let insertedRank :
      {j : M //
        j ∈ insert coordinate (exactLeft coordinate partition)} ≃
      Fin ((exactLeft coordinate partition).card + 1) :=
    transportedSide.trans
      (context.sideRank.trans (finCongr hcard.symm))
  let leftCut : Fin ((exactLeft coordinate partition).card + 1) :=
    (finCongr hcard.symm) marker
  have marked :
      insertedRank
          ⟨coordinate, Finset.mem_insert_self coordinate
            (exactLeft coordinate partition)⟩ = leftCut := by
    have transported :
        transportedSide
            ⟨coordinate, Finset.mem_insert_self coordinate
              (exactLeft coordinate partition)⟩ =
          context.sideRank.symm marker := by
      apply Subtype.ext
      rfl
    change
      (finCongr hcard.symm)
          (context.sideRank
            (transportedSide
              ⟨coordinate, Finset.mem_insert_self coordinate
                (exactLeft coordinate partition)⟩)) =
        (finCongr hcard.symm) marker
    rw [transported, Equiv.apply_symm_apply]
  let leftRank :
      {j : M // j ∈ exactLeft coordinate partition} ≃
        Fin (exactLeft coordinate partition).card :=
    exactDeleteMarkedRank coordinate
      (exactLeft coordinate partition)
      (exactLeft_coordinate_not_mem coordinate partition)
      insertedRank leftCut marked
  have hother :
      exactRight coordinate partition = context.otherSide := by
    calc
      exactRight coordinate partition =
          Finset.univ \ side :=
        exactReverseAliceCanonicalPartition_otherSide
          side coordinate member context.ignoredBit
      _ = context.otherSide := context.otherSide_eq_complement.symm
  let transportedOther :
      {j : M // j ∈ exactRight coordinate partition} ≃
        {j : M // j ∈ context.otherSide} :=
    Equiv.subtypeEquivRight (fun j => by rw [hother])
  let rightRank :
      {j : M // j ∈ exactRight coordinate partition} ≃
        Fin (exactRight coordinate partition).card :=
    transportedOther.trans
      (context.otherRank.trans
        (finCongr (congrArg Finset.card hother).symm))
  exact
    { coordinate := coordinate
      partition := partition
      leftOrder := exactPermutationOfSideRank
        (exactLeft coordinate partition) leftRank
      rightOrder := exactPermutationOfSideRank
        (exactRight coordinate partition) rightRank
      leftCut := leftCut
      rightCut :=
        (finCongr
          (congrArg (fun s : Finset M => s.card + 1) hother).symm)
          context.otherCut }

def exactReverseBobMarkerDecode
    {M : Type*} [Fintype M] [DecidableEq M]
    (side : Finset M)
    (context : ExactReverseSideContext M side)
    (marker : Fin side.card) :
    ExactForwardSeed M := by
  classical
  let coordinate : M := (context.sideRank.symm marker).val
  have member : coordinate ∈ side :=
    (context.sideRank.symm marker).property
  let partition : M → Bool :=
    exactReverseBobCanonicalPartition
      side coordinate context.ignoredBit
  have hside :
      insert coordinate (exactRight coordinate partition) = side :=
    exactReverseBobCanonicalPartition_side
      side coordinate member context.ignoredBit
  have hcard :
      (exactRight coordinate partition).card + 1 = side.card :=
    exactReverseBobCanonicalPartition_card
      side coordinate member context.ignoredBit
  let transportedSide :
      {j : M //
        j ∈ insert coordinate (exactRight coordinate partition)} ≃
      {j : M // j ∈ side} :=
    Equiv.subtypeEquivRight (fun j => by rw [hside])
  let insertedRank :
      {j : M //
        j ∈ insert coordinate (exactRight coordinate partition)} ≃
      Fin ((exactRight coordinate partition).card + 1) :=
    transportedSide.trans
      (context.sideRank.trans (finCongr hcard.symm))
  let rightCut : Fin ((exactRight coordinate partition).card + 1) :=
    (finCongr hcard.symm) marker
  have marked :
      insertedRank
          ⟨coordinate, Finset.mem_insert_self coordinate
            (exactRight coordinate partition)⟩ = rightCut := by
    have transported :
        transportedSide
            ⟨coordinate, Finset.mem_insert_self coordinate
              (exactRight coordinate partition)⟩ =
          context.sideRank.symm marker := by
      apply Subtype.ext
      rfl
    change
      (finCongr hcard.symm)
          (context.sideRank
            (transportedSide
              ⟨coordinate, Finset.mem_insert_self coordinate
                (exactRight coordinate partition)⟩)) =
        (finCongr hcard.symm) marker
    rw [transported, Equiv.apply_symm_apply]
  let rightRank :
      {j : M // j ∈ exactRight coordinate partition} ≃
        Fin (exactRight coordinate partition).card :=
    exactDeleteMarkedRank coordinate
      (exactRight coordinate partition)
      (exactRight_coordinate_not_mem coordinate partition)
      insertedRank rightCut marked
  have hother :
      exactLeft coordinate partition = context.otherSide := by
    calc
      exactLeft coordinate partition =
          Finset.univ \ side :=
        exactReverseBobCanonicalPartition_otherSide
          side coordinate member context.ignoredBit
      _ = context.otherSide := context.otherSide_eq_complement.symm
  let transportedOther :
      {j : M // j ∈ exactLeft coordinate partition} ≃
        {j : M // j ∈ context.otherSide} :=
    Equiv.subtypeEquivRight (fun j => by rw [hother])
  let leftRank :
      {j : M // j ∈ exactLeft coordinate partition} ≃
        Fin (exactLeft coordinate partition).card :=
    transportedOther.trans
      (context.otherRank.trans
        (finCongr (congrArg Finset.card hother).symm))
  exact
    { coordinate := coordinate
      partition := partition
      leftOrder := exactPermutationOfSideRank
        (exactLeft coordinate partition) leftRank
      rightOrder := exactPermutationOfSideRank
        (exactRight coordinate partition) rightRank
      leftCut :=
        (finCongr
          (congrArg (fun s : Finset M => s.card + 1) hother).symm)
          context.otherCut
      rightCut := rightCut }

end

end QuantumParallelRepetition
