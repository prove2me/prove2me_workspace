import Mathlib
import Definitions.Def_IsEdenicSemiprime
import Theorems.Thm_edenic_semiprime_deficient
import Theorems.Thm_twin_primes_coprime

theorem solution (n : ℕ) (h : IsEdenicSemiprime n) : Nat.Deficient n := by
  obtain ⟨p, hp, hp2, rfl⟩ := h
  show ∑ i ∈ (p * (p + 2)).properDivisors, i < p * (p + 2)
  have hsum : ∑ d ∈ (p * (p + 2)).divisors, d = (p + 1) * (p + 3) := by
    have hc : p.Coprime (p + 2) := twin_primes_coprime p hp hp2
    rw [Nat.Coprime.sum_divisors_mul hc, Nat.Prime.divisors hp, Nat.Prime.divisors hp2,
      Finset.sum_pair hp.ne_one.symm, Finset.sum_pair hp2.ne_one.symm]
    ring
  have hsp : ∑ d ∈ (p * (p + 2)).divisors, d =
      ∑ i ∈ (p * (p + 2)).properDivisors, i + p * (p + 2) :=
    Nat.sum_divisors_eq_sum_properDivisors_add_self
  rw [hsum] at hsp
  have hS : ∑ i ∈ (p * (p + 2)).properDivisors, i = (p + 1) * (p + 3) - p * (p + 2) :=
    Nat.eq_sub_of_add_eq hsp.symm
  rw [hS]
  nlinarith [Nat.Prime.two_le hp]
