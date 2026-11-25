import Mathlib
import Definitions.Def_IsEdenicSemiprime
import Theorems.Thm_edenic_semiprime_not_perfect_power
import Theorems.Thm_edenic_semiprime_squarefree

theorem solution (n : ℕ) (h : IsEdenicSemiprime n) :
    ¬∃ a k : ℕ, 2 ≤ k ∧ a ^ k = n := by
  obtain ⟨p, hp, hp2, rfl⟩ := h
  rintro ⟨a, k, hk2, hak⟩
  have hp2le : 2 ≤ p := Nat.Prime.two_le hp
  have ha2 : 2 ≤ a := by
    rcases (by omega : a < 2 ∨ 2 ≤ a) with ha | ha
    · have h01 : a = 0 ∨ a = 1 := by omega
      rcases h01 with rfl | rfl
      · rw [zero_pow (by omega)] at hak
        nlinarith
      · rw [one_pow] at hak
        nlinarith
    · exact ha
  obtain ⟨q, hq, hqa⟩ := Nat.exists_prime_and_dvd (n := a) (by omega)
  have hqk : q ^ k ∣ a ^ k := pow_dvd_pow_of_dvd hqa k
  have hq2 : q ^ 2 ∣ q ^ k := pow_dvd_pow q hk2
  have hq2n : q ^ 2 ∣ p * (p + 2) := by
    rw [← hak]
    exact dvd_trans hq2 hqk
  have hsq : Squarefree (p * (p + 2)) :=
    edenic_semiprime_squarefree _ ⟨p, hp, hp2, rfl⟩
  have hqu : IsUnit q := hsq q (by rw [pow_two] at hq2n; exact hq2n)
  exact absurd (Nat.isUnit_iff.mp hqu) hq.ne_one
