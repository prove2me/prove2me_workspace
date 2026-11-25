import Mathlib
import Definitions.Def_IsEdenicSemiprime
import Theorems.Thm_edenic_semiprime_squarefree
import Theorems.Thm_twin_primes_coprime

theorem solution (n : ℕ) (h : IsEdenicSemiprime n) :
    Squarefree n := by
  obtain ⟨p, hp, hp2, rfl⟩ := h
  exact (Nat.squarefree_mul (twin_primes_coprime p hp hp2)).mpr
    ⟨hp.squarefree, hp2.squarefree⟩
