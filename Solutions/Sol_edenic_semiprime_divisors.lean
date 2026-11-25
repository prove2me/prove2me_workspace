import Mathlib
import Definitions.Def_IsEdenicSemiprime
import Theorems.Thm_edenic_semiprime_divisors
import Theorems.Thm_twin_primes_coprime

theorem solution (n : ℕ) (h : IsEdenicSemiprime n) :
    ∃ p, p.Prime ∧ (p + 2).Prime ∧ n = p * (p + 2) ∧ n.divisors = {1, p, p + 2, n} := by
  obtain ⟨p, hp, hp2, rfl⟩ := h
  refine ⟨p, hp, hp2, rfl, ?_⟩
  rw [Nat.divisors_mul, Nat.Prime.divisors hp, Nat.Prime.divisors hp2]
  ext x
  constructor <;> intro hx
  · rw [Finset.mem_mul] at hx
    obtain ⟨y, hy, z, hz, rfl⟩ := hx
    simp only [Finset.mem_insert, Finset.mem_singleton] at hy hz
    rcases hy with rfl | rfl <;> rcases hz with rfl | rfl <;> simp
  · simp only [Finset.mem_insert, Finset.mem_singleton] at hx
    rcases hx with h1 | h2 | h3 | h4
    · exact Finset.mem_mul.mpr ⟨1, by simp, 1, by simp, by simp [h1]⟩
    · exact Finset.mem_mul.mpr ⟨p, by simp, 1, by simp, by simp [h2]⟩
    · exact Finset.mem_mul.mpr ⟨1, by simp, p + 2, by simp, by simp [h3]⟩
    · exact Finset.mem_mul.mpr ⟨p, by simp, p + 2, by simp, by simp [h4]⟩
