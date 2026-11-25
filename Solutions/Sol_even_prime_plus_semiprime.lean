import Mathlib
import Theorems.Thm_even_prime_plus_semiprime

/-! # Arbitrarily large even integers are a prime plus a semiprime

Target `even_prime_plus_semiprime`. Fix `q = 9 = 3 * 3`, a semiprime; for any prime `p > 2`
the sum `p + 9` is even and exceeds any prescribed bound. Unboundedness of the primes gives
the witness. This is the infinitude shadow of Chen's theorem. -/

theorem solution (n : ℕ) :
    ∃ m : ℕ, Even m ∧ n ≤ m ∧ ∃ p q : ℕ, p.Prime ∧ Nat.IsSemiprime q ∧ m = p + q := by
  obtain ⟨p, hp, hlt⟩ : ∃ p, p.Prime ∧ max n 2 < p := by
    simpa using not_bddAbove_iff.1 Nat.not_bddAbove_setOfPred_prime (max n 2)
  have h3 : (3 : ℕ).Prime := by norm_num
  have h9 : Nat.IsSemiprime 9 := by simpa using Nat.Prime.sq_isAlmostPrime_two h3
  have hp2 : p ≠ 2 := by omega
  obtain ⟨k, hk⟩ := hp.odd_of_ne_two hp2
  have hm : n < p + 9 :=
    calc n ≤ max n 2 := le_max_left n 2
      _ < p := hlt
      _ ≤ p + 9 := Nat.le_add_right p 9
  exact ⟨p + 9, ⟨k + 5, by simp [hk]; ring⟩, le_of_lt hm, p, 9, hp, h9, rfl⟩
