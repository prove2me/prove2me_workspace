import Mathlib

/-! # Chowla's least prime bound from a one-logarithm Chebyshev lower bound

Step 2 (bridge) of the reduction of `GRH.grh_implies_least_prime_modEq`. -/

open Finset

theorem solution
    (C : ℝ) (hC : 0 ≤ C)
    (hθ : ∀ (q a : ℕ), q ≠ 0 → a.Coprime q → ∀ x : ℝ, 2 ≤ x →
        x / (q.totient : ℝ) - C * Real.sqrt x * Real.log x ≤
          ∑ n ∈ (Finset.Ioc 0 ⌊x⌋₊).filter (fun n => n ≡ a [MOD q] ∧ n.Prime),
            Real.log (n : ℝ)) :
    ∃ K : ℝ, 0 ≤ K ∧
      ∀ (q : ℕ), 2 ≤ q → ∀ (a : ℕ), a.Coprime q →
        ∃ p : ℕ, p.Prime ∧ p ≡ a [MOD q] ∧
          (p : ℝ) ≤ K * (q : ℝ) ^ 2 * (Real.log q) ^ 2 := by
  -- The balancing constant K = s^2 with s = 64 (C+1) (C+2)^2.
  have hexpand :
      (64 * (C + 1) * (C + 2) ^ 2 : ℝ) = 64 * C ^ 3 + 320 * C ^ 2 + 512 * C + 256 := by ring
  have hC3 : (0:ℝ) ≤ C ^ 3 := by positivity
  have hC2 : (0:ℝ) ≤ C ^ 2 := sq_nonneg C
  have hs_gt : 12 * C ^ 2 + 36 * C < 64 * (C + 1) * (C + 2) ^ 2 := by
    linarith [hexpand, hC3, hC2, hC]
  have hs_256 : (256:ℝ) ≤ 64 * (C + 1) * (C + 2) ^ 2 := by
    linarith [hexpand, hC3, hC2, hC]
  refine ⟨(64 * (C + 1) * (C + 2) ^ 2) ^ 2, by positivity, fun q hq a ha => ?_⟩
  set s := 64 * (C + 1) * (C + 2) ^ 2 with hsdef
  set x0 := s ^ 2 * (q : ℝ) ^ 2 * (Real.log q) ^ 2 with hx0def
  -- Basic facts about q and log q.
  have hq0 : (0:ℕ) < q := by omega
  have hq0r : (0:ℝ) < q := by exact_mod_cast hq0
  have hq0le : (0:ℝ) ≤ q := le_of_lt hq0r
  have hq2r : (2:ℝ) ≤ q := by exact_mod_cast hq
  have hlog2q : Real.log 2 ≤ Real.log q := Real.log_le_log (by norm_num) hq2r
  have hhalf : (1:ℝ) / 2 < Real.log q :=
    lt_of_lt_of_le (lt_trans (by norm_num : (1:ℝ) / 2 < 0.6931471803) Real.log_two_gt_d9)
      hlog2q
  have hL : (0:ℝ) ≤ Real.log q := by linarith [hhalf]
  have hLpos : (0:ℝ) < Real.log q := by linarith [hhalf]
  -- Basic facts about s.
  have hs256 : (256:ℝ) ≤ s := by linarith [hsdef]
  have hs_pos : (0:ℝ) < s := lt_of_lt_of_le (by norm_num) hs256
  have hs_4C : 4 * C ≤ s := by linarith [hs_gt, hsdef, sq_nonneg C]
  have hlogs : Real.log s ≤ 3 * C + 8 := by
    rw [hsdef]
    have hp1 : (0:ℝ) < C + 1 := by positivity
    have hp2 : (0:ℝ) < (C + 2) ^ 2 := by positivity
    have h1 : Real.log (64 * (C + 1) * (C + 2) ^ 2) =
        Real.log 64 + Real.log (C + 1) + Real.log ((C + 2) ^ 2) := by
      rw [Real.log_mul (ne_of_gt (by positivity : (0:ℝ) < 64 * (C + 1))) (ne_of_gt hp2),
        Real.log_mul (by norm_num) (ne_of_gt hp1)]
    rw [h1]
    have h64 : Real.log (64:ℝ) < 6 := by
      rw [show (64:ℝ) = 2 ^ 6 by norm_num, Real.log_pow]
      norm_num
      linarith [Real.log_two_lt_d9]
    have hc1 : Real.log (C + 1) ≤ C := by
      linarith [Real.log_le_sub_one_of_pos (by positivity : (0:ℝ) < C + 1)]
    have hc2 : Real.log (C + 2) ≤ C + 1 := by
      linarith [Real.log_le_sub_one_of_pos (by positivity : (0:ℝ) < C + 2)]
    have h2 : Real.log ((C + 2) ^ 2) = 2 * Real.log (C + 2) := by
      rw [Real.log_pow]; norm_num
    linarith
  -- x0 ≥ 2 and x0 > 0.
  have hx0pos : (0:ℝ) < x0 := by
    rw [hx0def]
    exact mul_pos (mul_pos (sq_pos_of_ne_zero (ne_of_gt hs_pos)) (pow_pos hq0r 2))
      (pow_pos hLpos 2)
  have hx0ge : (2:ℝ) ≤ x0 := by
    rw [hx0def]
    have hK : (65536:ℝ) ≤ s ^ 2 := by
      have h : (256:ℝ) * 256 ≤ s * s := mul_le_mul hs256 hs256 (by norm_num) (le_of_lt hs_pos)
      norm_num at h
      simpa [sq] using h
    have hq4 : (4:ℝ) ≤ (q : ℝ) ^ 2 := by nlinarith [sq_nonneg ((q : ℝ) - 2)]
    have hL2 : ((1:ℝ) / 2) ^ 2 ≤ Real.log q ^ 2 := by
      have h : (1:ℝ) / 2 * ((1:ℝ) / 2) ≤ Real.log q * Real.log q :=
        mul_le_mul (le_of_lt hhalf) (le_of_lt hhalf) (by norm_num) hL
      simpa [sq] using h
    have hstep1 : (4:ℝ) * ((1:ℝ) / 2) ^ 2 ≤ (q : ℝ) ^ 2 * Real.log q ^ 2 := by
      nlinarith [hq4, hL2]
    have hstep2 : (65536:ℝ) * (4 * ((1:ℝ) / 2) ^ 2) ≤
        (65536:ℝ) * ((q : ℝ) ^ 2 * Real.log q ^ 2) :=
      mul_le_mul_of_nonneg_left hstep1 (by norm_num)
    have hstep3 : (65536:ℝ) * ((q : ℝ) ^ 2 * Real.log q ^ 2) ≤
        s ^ 2 * ((q : ℝ) ^ 2 * Real.log q ^ 2) :=
      mul_le_mul hK le_rfl (by positivity) (sq_nonneg _)
    have hprod : (65536:ℝ) * 4 * ((1:ℝ) / 2) ^ 2 ≤ s ^ 2 * (q : ℝ) ^ 2 * Real.log q ^ 2 := by
      linarith [hstep2, hstep3]
    norm_num at hprod
    linarith
  -- Apply the Chebyshev input at x0.
  have hφ : (0:ℕ) < q.totient := Nat.totient_pos.mpr hq0
  have hθx : x0 / (q.totient : ℝ) - C * Real.sqrt x0 * Real.log x0 ≤
      ∑ n ∈ (Finset.Ioc 0 ⌊x0⌋₊).filter (fun n => n ≡ a [MOD q] ∧ n.Prime),
        Real.log (n : ℝ) :=
    hθ q a (ne_of_gt hq0) ha x0 hx0ge
  -- Main term: x0 / φ(q) ≥ s^2 * q * (log q)^2.
  have hdiv : x0 / (q : ℝ) = s ^ 2 * (q : ℝ) * Real.log q ^ 2 := by
    rw [hx0def, div_eq_iff hq0r.ne']
    ring
  have hdivle : x0 / (q : ℝ) ≤ x0 / (q.totient : ℝ) :=
    div_le_div_of_nonneg_left (le_of_lt hx0pos) (by exact_mod_cast hφ) (by exact_mod_cast Nat.totient_le q)
  have hmain : s ^ 2 * (q : ℝ) * Real.log q ^ 2 ≤ x0 / (q.totient : ℝ) := by
    linarith [hdiv, hdivle]
  -- Error term: C * sqrt x0 * log x0 ≤ C * (s q log q) * (2 log s + 4 log q).
  have hsq1 : (0:ℝ) ≤ s * (q : ℝ) * Real.log q :=
    mul_nonneg (mul_nonneg (le_of_lt hs_pos) hq0le) hL
  have hx0sq : x0 = (s * (q : ℝ) * Real.log q) ^ 2 := by
    rw [hx0def]; ring
  have hsqrt : Real.sqrt x0 = s * (q : ℝ) * Real.log q := by
    rw [hx0sq, Real.sqrt_sq hsq1]
  have hLq : Real.log q ≤ (q : ℝ) := by
    linarith [Real.log_le_sub_one_of_pos hq0r]
  have hL2 : Real.log q ^ 2 ≤ (q : ℝ) ^ 2 := by
    have h : Real.log q * Real.log q ≤ (q : ℝ) * (q : ℝ) :=
      mul_le_mul hLq hLq hL hq0le
    simpa [sq] using h
  have hx0le : x0 ≤ s ^ 2 * (q : ℝ) ^ 4 := by
    rw [hx0def]
    have h1 : (q : ℝ) ^ 2 * Real.log q ^ 2 ≤ (q : ℝ) ^ 2 * (q : ℝ) ^ 2 :=
      mul_le_mul (le_refl _) hL2 (sq_nonneg _) (sq_nonneg _)
    have h4 : s ^ 2 * ((q : ℝ) ^ 2 * Real.log q ^ 2) ≤
        s ^ 2 * ((q : ℝ) ^ 2 * (q : ℝ) ^ 2) :=
      mul_le_mul (le_refl _) h1 (by positivity) (by positivity)
    have h2 : (q : ℝ) ^ 2 * (q : ℝ) ^ 2 = (q : ℝ) ^ 4 := by ring
    linarith [h4, h2]
  have hlogs2 : Real.log (s ^ 2) = 2 * Real.log s := by
    rw [Real.log_pow]; norm_num
  have hlogx : Real.log x0 ≤ Real.log (s ^ 2) + 4 * Real.log q := by
    have hk4pos : (0:ℝ) < s ^ 2 * (q : ℝ) ^ 4 := by positivity
    calc Real.log x0 ≤ Real.log (s ^ 2 * (q : ℝ) ^ 4) := Real.log_le_log hx0pos hx0le
      _ = Real.log (s ^ 2) + Real.log ((q : ℝ) ^ 4) :=
        Real.log_mul (ne_of_gt (by positivity : (0:ℝ) < s ^ 2))
          (ne_of_gt (by positivity : (0:ℝ) < (q : ℝ) ^ 4))
      _ = Real.log (s ^ 2) + 4 * Real.log q := by rw [Real.log_pow]; norm_num
  have hsqbound : C * Real.sqrt x0 * Real.log x0 ≤
      C * (s * (q : ℝ) * Real.log q) * (2 * (3 * C + 8) + 4 * Real.log q) := by
    rw [hsqrt]
    have h1 : Real.log x0 ≤ 2 * (3 * C + 8) + 4 * Real.log q := by
      linarith [hlogx, hlogs2, hlogs]
    exact mul_le_mul_of_nonneg_left h1
      (mul_nonneg hC (mul_nonneg (mul_nonneg (le_of_lt hs_pos) hq0le) hL))
  -- The balance: the error at x0 is smaller than the main term.
  have hfac : s ^ 2 * (q : ℝ) * Real.log q ^ 2 -
        C * (s * (q : ℝ) * Real.log q) * (2 * (3 * C + 8) + 4 * Real.log q)
      = (q : ℝ) * Real.log q * s * ((s - 4 * C) * Real.log q - (6 * C ^ 2 + 16 * C)) := by ring
  have hbal : C * (s * (q : ℝ) * Real.log q) * (2 * (3 * C + 8) + 4 * Real.log q) <
      s ^ 2 * (q : ℝ) * Real.log q ^ 2 := by
    have hs4 : (0:ℝ) ≤ s - 4 * C := by linarith [hs_4C]
    have hprod : (s - 4 * C) * ((1:ℝ) / 2) ≤ (s - 4 * C) * Real.log q :=
      mul_le_mul_of_nonneg_left (le_of_lt hhalf) hs4
    have hinner0 : (0:ℝ) < (s - 4 * C) * ((1:ℝ) / 2) - (6 * C ^ 2 + 16 * C) := by
      have hgoal : (s - 4 * C) * ((1:ℝ) / 2) - (6 * C ^ 2 + 16 * C)
          = (s - (12 * C ^ 2 + 36 * C)) * ((1:ℝ) / 2) := by ring
      rw [hgoal]
      have hpos0 : (0:ℝ) < s - (12 * C ^ 2 + 36 * C) := by linarith [hs_gt, hsdef]
      exact mul_pos hpos0 (by norm_num)
    have hinner : (0:ℝ) < (s - 4 * C) * Real.log q - (6 * C ^ 2 + 16 * C) := by
      linarith [hprod, hinner0]
    have hqLs : (0:ℝ) < (q : ℝ) * Real.log q * s :=
      mul_pos (mul_pos hq0r hLpos) hs_pos
    have hdiff : (0:ℝ) < s ^ 2 * (q : ℝ) * Real.log q ^ 2 -
        C * (s * (q : ℝ) * Real.log q) * (2 * (3 * C + 8) + 4 * Real.log q) := by
      rw [hfac]
      exact mul_pos hqLs hinner
    linarith
  have hpos : (0:ℝ) < x0 / (q.totient : ℝ) - C * Real.sqrt x0 * Real.log x0 := by
    linarith [hmain, hsqbound, hbal]
  have hsum : (0:ℝ) < ∑ n ∈ (Finset.Ioc 0 ⌊x0⌋₊).filter (fun n => n ≡ a [MOD q] ∧ n.Prime),
      Real.log (n : ℝ) := by linarith [hpos, hθx]
  -- Extract a prime from the positive sum.
  obtain ⟨n, hn, hnlt⟩ : ∃ n ∈ (Finset.Ioc 0 ⌊x0⌋₊).filter
      (fun n => n ≡ a [MOD q] ∧ n.Prime), 0 < Real.log (n : ℝ) := by
    by_contra h
    rw [not_exists] at h
    have hle : ∀ m ∈ (Finset.Ioc 0 ⌊x0⌋₊).filter (fun n => n ≡ a [MOD q] ∧ n.Prime),
        0 ≤ Real.log (m : ℝ) := by
      intro m hm
      have hm0 : (0:ℕ) < m := (Finset.mem_Ioc.1 (Finset.mem_filter.1 hm).1).1
      exact Real.log_nonneg (by exact_mod_cast Nat.succ_le_of_lt hm0)
    have hz : ∑ m ∈ (Finset.Ioc 0 ⌊x0⌋₊).filter (fun n => n ≡ a [MOD q] ∧ n.Prime),
        Real.log (m : ℝ) = 0 :=
      Finset.sum_eq_zero fun m hm =>
        le_antisymm (le_of_not_gt (fun hlt => h m ⟨hm, hlt⟩)) (hle m hm)
    linarith [hsum, hz]
  have hfilter := Finset.mem_filter.1 hn
  refine ⟨n, hfilter.2.2, hfilter.2.1, ?_⟩
  have hnle : (n:ℝ) ≤ (⌊x0⌋₊ : ℝ) :=
    by exact_mod_cast (Finset.mem_Ioc.1 hfilter.1).2
  have hfl : (⌊x0⌋₊ : ℝ) ≤ x0 := Nat.floor_le (by linarith [hx0ge])
  linarith
