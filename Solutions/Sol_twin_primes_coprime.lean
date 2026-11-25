import Mathlib
import Theorems.Thm_twin_primes_coprime

theorem solution (p : ℕ) (hp : p.Prime) (hp2 : (p + 2).Prime) : p.Coprime (p + 2) := by
  rw [hp.coprime_iff_not_dvd]
  intro hdvd
  have hdvd2 : p ∣ 2 := (Nat.dvd_add_iff_right (dvd_refl p)).mpr hdvd
  rcases (Nat.dvd_prime Nat.prime_two).mp hdvd2 with h | h
  · rw [h] at hp
    exact absurd hp Nat.not_prime_one
  · rw [h] at hp2
    exact absurd hp2 (by decide)
