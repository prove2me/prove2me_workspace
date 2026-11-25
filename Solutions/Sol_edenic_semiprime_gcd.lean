import Mathlib
import Definitions.Def_IsEdenicSemiprime
import Theorems.Thm_edenic_semiprime_gcd
import Theorems.Thm_prime_in_two_twin_pairs

theorem solution (m n : ℕ) (hm : IsEdenicSemiprime m)
    (hn : IsEdenicSemiprime n) (hmn : m ≠ n) :
    m.Coprime n ∨ {m, n} = ({15, 35} : Finset ℕ) := by
  obtain ⟨p, hp, hp2, rfl⟩ := hm
  obtain ⟨q, hq, hq2, rfl⟩ := hn
  by_cases hshared : p = q ∨ p = q + 2 ∨ p + 2 = q
  · rcases hshared with h | h | h
    · rw [h] at hmn
      exact absurd rfl hmn
    · have h1 : (p - 2).Prime := by
        rw [show p - 2 = q from by omega]
        exact hq
      have hp5 : p = 5 := prime_in_two_twin_pairs p hp h1 hp2
      have hq3 : q = 3 := by omega
      rw [hp5, hq3]
      decide
    · have h1 : (q - 2).Prime := by
        rw [show q - 2 = p from by omega]
        exact hp
      have hq5 : q = 5 := prime_in_two_twin_pairs q hq h1 hq2
      have hp3 : p = 3 := by omega
      rw [hq5, hp3]
      decide
  · refine Or.inl ?_
    rw [Nat.coprime_iff_gcd_eq_one]
    by_contra hg
    obtain ⟨r, hr, hd⟩ := Nat.exists_prime_and_dvd hg
    have hdm : r ∣ p * (p + 2) := dvd_trans hd (Nat.gcd_dvd_left (p * (p + 2)) (q * (q + 2)))
    have hdn : r ∣ q * (q + 2) := dvd_trans hd (Nat.gcd_dvd_right (p * (p + 2)) (q * (q + 2)))
    have hrp : r = p ∨ r = p + 2 := by
      rcases (Nat.Prime.dvd_mul hr).mp hdm with h | h
      · rcases (Nat.dvd_prime hp).mp h with h' | h'
        · exact absurd h' hr.ne_one
        · exact Or.inl h'
      · rcases (Nat.dvd_prime hp2).mp h with h' | h'
        · exact absurd h' hr.ne_one
        · exact Or.inr h'
    have hrq : r = q ∨ r = q + 2 := by
      rcases (Nat.Prime.dvd_mul hr).mp hdn with h | h
      · rcases (Nat.dvd_prime hq).mp h with h' | h'
        · exact absurd h' hr.ne_one
        · exact Or.inl h'
      · rcases (Nat.dvd_prime hq2).mp h with h' | h'
        · exact absurd h' hr.ne_one
        · exact Or.inr h'
    rcases hrp with h1 | h1 <;> rcases hrq with h2 | h2
    · exact absurd (Or.inl (h1.symm.trans h2)) hshared
    · exact absurd (Or.inr (Or.inl (h1.symm.trans h2))) hshared
    · exact absurd (Or.inr (Or.inr (h1.symm.trans h2))) hshared
    · exact absurd (Or.inl (by omega)) hshared
