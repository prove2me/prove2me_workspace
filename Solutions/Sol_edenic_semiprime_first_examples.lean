import Mathlib
import Definitions.Def_IsEdenicSemiprime
import Theorems.Thm_edenic_semiprime_first_examples

theorem solution :
    IsEdenicSemiprime 15 ∧ IsEdenicSemiprime 35 ∧ IsEdenicSemiprime 143 ∧
      IsEdenicSemiprime 323 := by
  refine ⟨⟨3, by decide, by decide, rfl⟩, ⟨5, by decide, by decide, rfl⟩,
    ⟨11, by decide, by decide, rfl⟩, ⟨17, by decide, by decide, rfl⟩⟩
