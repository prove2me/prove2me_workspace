import Definitions.Def_quantum_parallel_repetition_game
import Definitions.Def_qpr_core_18
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
import Mathlib.Data.Finset.Image
import Mathlib.Data.Finset.Insert
import Mathlib.Data.Fintype.Defs
import Mathlib.Data.Fintype.Sets
import Mathlib.Data.FunLike.Basic
import Mathlib.Data.FunLike.Equiv
import Mathlib.Data.Matrix.Basic
import Mathlib.Data.SetLike.Basic
import Mathlib.Data.Subtype
import Mathlib.LinearAlgebra.Matrix.Kronecker
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

end QuantumParallelRepetition


open QuantumParallelRepetition
open scoped ComplexOrder Matrix BigOperators InnerProductSpace
open Complex Matrix Finset
open scoped BigOperators
set_option backward.isDefEq.respectTransparency false
set_option maxHeartbeats 1200000
set_option maxRecDepth 2048
attribute [local instance] Classical.propDecidable

theorem solution
    {M : Type*} [Fintype M] [DecidableEq M]
    (i : M) (side : Finset M) (not_mem : i ∉ side)
    (rank : {j : M // j ∈ side} ≃ Fin side.card)
    (cut : Fin (side.card + 1)) :
    exactInsertedPrefixBefore i side not_mem rank cut =
      (Finset.univ.filter
        (fun j : {j : M // j ∈ side} =>
          (rank j).val < cut.val)).image Subtype.val := by
  ext j
  constructor
  · intro hj
    obtain ⟨a, ha, haval⟩ := Finset.mem_image.mp hj
    have hlt :
        (exactInsertedRank i side not_mem rank cut a).val <
          cut.val := (Finset.mem_filter.mp ha).2
    have hne : a.val ≠ i := by
      intro heq
      have hsub : a = ⟨i, Finset.mem_insert_self i side⟩ :=
        Subtype.ext heq
      rw [hsub, exactInsertedRank_marker] at hlt
      exact (Nat.lt_irrefl cut.val) hlt
    have hside : a.val ∈ side :=
      (Finset.mem_insert.mp a.property).resolve_left hne
    let b : {j : M // j ∈ side} := ⟨a.val, hside⟩
    refine Finset.mem_image.mpr ⟨b, ?_, haval⟩
    apply Finset.mem_filter.mpr
    refine ⟨Finset.mem_univ b, ?_⟩
    have hbefore :
        cut.succAbove (rank b) < cut := by
      change (cut.succAbove (rank b)).val < cut.val
      rw [← exactInsertedRank_old
        i side not_mem rank cut b]
      exact hlt
    have hcast : (rank b).castSucc < cut :=
      (Fin.succAbove_lt_iff_castSucc_lt cut (rank b)).mp hbefore
    exact hcast
  · intro hj
    obtain ⟨b, hb, hbval⟩ := Finset.mem_image.mp hj
    have hlt : (rank b).val < cut.val :=
      (Finset.mem_filter.mp hb).2
    let a : {j : M // j ∈ insert i side} :=
      ⟨b.val, Finset.mem_insert_of_mem b.property⟩
    refine Finset.mem_image.mpr ⟨a, ?_, hbval⟩
    apply Finset.mem_filter.mpr
    refine ⟨Finset.mem_univ a, ?_⟩
    have hcast : (rank b).castSucc < cut := hlt
    have hbefore : cut.succAbove (rank b) < cut :=
      (Fin.succAbove_lt_iff_castSucc_lt cut (rank b)).mpr hcast
    rw [exactInsertedRank_old
      i side not_mem rank cut b]
    exact hbefore
