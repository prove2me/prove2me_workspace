import Mathlib
import Definitions.Def_IsEdenicSemiprime
import Theorems.Thm_edenic_semiprime_primeFactorsList
import Theorems.Thm_twin_primes_coprime

theorem solution (n : ℕ) (h : IsEdenicSemiprime n) :
    ∃ p, p.Prime ∧ (p + 2).Prime ∧ n = p * (p + 2) ∧ n.primeFactorsList = [p, p + 2] := by
  obtain ⟨p, hp, hp2, rfl⟩ := h
  refine ⟨p, hp, hp2, rfl, ?_⟩
  have hc : p.Coprime (p + 2) := twin_primes_coprime p hp hp2
  have hperm : List.Perm (p * (p + 2)).primeFactorsList
      (p.primeFactorsList ++ (p + 2).primeFactorsList) :=
    Nat.perm_primeFactorsList_mul_of_coprime hc
  rw [Nat.primeFactorsList_prime hp, Nat.primeFactorsList_prime hp2] at hperm
  simp only [List.cons_append, List.nil_append] at hperm
  exact List.Perm.eq_of_sortedLE (Nat.primeFactorsList_sorted _)
    (by simp [List.sortedLE_iff_pairwise]) hperm
