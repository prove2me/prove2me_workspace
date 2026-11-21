import Mathlib
import Definitions.Def_GRH_Defs
import Definitions.Def_LandauFunction_logIntegral
import Definitions.Def_ArtinBV

namespace GRHBridge

open Finset Real
open scoped ArithmeticFunction.vonMangoldt

/-! ### Discrete (Abel) summation -/

theorem abel_sum_real (g f : ℕ → ℝ) (s N : ℕ) (hsN : s ≤ N) :
    ∑ k ∈ Ioc s N, g k * f k =
      (∑ j ∈ Ioc s N, g j) * f N - ∑ k ∈ Ico s N, (∑ j ∈ Ioc s k, g j) * (f (k + 1) - f k) := by
  induction N, hsN using Nat.le_induction with
  | base => simp
  | succ N hsN ih =>
    rw [Finset.sum_Ioc_succ_top (by omega), ih, Finset.sum_Ioc_succ_top (by omega),
      Finset.sum_Ico_succ_top hsN]
    ring

/-- Telescoping: `∑_{2 ≤ k < N} (g k - g (k+1)) = g 2 - g N`. -/
theorem telescope_Ico (g : ℕ → ℝ) :
    ∀ N : ℕ, 2 ≤ N → ∑ k ∈ Ico 2 N, (g k - g (k + 1)) = g 2 - g N := by
  intro N hN
  induction N, hN using Nat.le_induction with
  | base => simp
  | succ N hN ih =>
    rw [Finset.sum_Ico_succ_top (show 2 ≤ N from hN), ih]
    ring

/-! ### Chebyshev's `θ` in a residue class, and the error function `G_q` -/

/-- `θ(k; q, a) = ∑_{2 ≤ j ≤ k} 1_{j prime, j ≡ a} log j`. -/
noncomputable def thetaq (k q a : ℕ) : ℝ :=
  ∑ j ∈ Ioc 1 k, (if j.Prime ∧ j ≡ a [MOD q] then Real.log j else 0)

/-- `G_q(k) = θ(k; q, a) - (k - 1)/φ(q)`. -/
noncomputable def Gq (k q a : ℕ) : ℝ :=
  ∑ j ∈ Ioc 1 k, ((if j.Prime ∧ j ≡ a [MOD q] then Real.log j else 0) - 1 / (q.totient : ℝ))

theorem log_le_of_mem {X n : ℕ} (hn : n ∈ Ioc 0 X) : Real.log n ≤ Real.log X := by
  rw [Finset.mem_Ioc] at hn
  exact Real.log_le_log (by exact_mod_cast hn.1) (by exact_mod_cast hn.2)

/-! ### `π(Y; q, a)` as a sum -/

theorem pi_eq_sum (Y : ℝ) (q a : ℕ) :
    (GRH.primeCountingAP q a Y : ℝ) =
      ∑ j ∈ Ioc 1 ⌊Y⌋₊, (if j.Prime ∧ j ≡ a [MOD q] then (1 : ℝ) else 0) := by
  rw [GRH.primeCountingAP, Finset.sum_boole]
  set N := ⌊Y⌋₊ with hN
  have h : (Finset.range (N + 1)).filter (fun j => j.Prime ∧ j ≡ a [MOD q]) =
      (Finset.Ioc 1 N).filter (fun j => j.Prime ∧ j ≡ a [MOD q]) := by
    ext j
    simp only [Finset.mem_filter, Finset.mem_range, Finset.mem_Ioc]
    constructor
    · rintro ⟨hj, hp, hra⟩
      have h2 : 2 ≤ j := hp.two_le
      exact ⟨⟨by omega, by omega⟩, hp, hra⟩
    · rintro ⟨⟨_, hle⟩, hp, hra⟩
      exact ⟨by omega, hp, hra⟩
  rw [h]

theorem antitoneOn_inv_log : AntitoneOn (fun t : ℝ => 1 / Real.log t) (Set.Ici 2) := by
  intro a ha b hb hab
  simp only [Set.mem_Ici] at ha hb
  have h1 : 0 < Real.log a := Real.log_pos (by linarith)
  have h2 : Real.log a ≤ Real.log b := Real.log_le_log (by linarith) hab
  exact one_div_le_one_div_of_le h1 h2

/-- Comparing `Li` with `∑_{2 ≤ j ≤ k} 1/log j`. -/
theorem li_sum_compare (k : ℕ) (hk : 2 ≤ k) :
    |LandauFunction.logIntegral k - ∑ j ∈ Ioc 1 k, 1 / Real.log j| ≤ 1 / Real.log 2 := by
  set f : ℝ → ℝ := fun t => 1 / Real.log t with hf
  set a := k - 2 with ha
  have hk' : (k : ℝ) = 2 + a := by rw [ha]; push_cast [hk]; ring
  have hanti : AntitoneOn f (Set.Icc 2 (2 + a)) :=
    antitoneOn_inv_log.mono (fun t ht => ht.1)
  have hI1 := hanti.integral_le_sum
  have hI2 := hanti.sum_le_integral
  have hli : LandauFunction.logIntegral k = ∫ x in (2 : ℝ)..2 + a, f x := by
    rw [LandauFunction.logIntegral, hk']
  have hsum : ∑ j ∈ Ioc 1 k, 1 / Real.log j = ∑ i ∈ range (a + 1), f (2 + i) := by
    rw [show k = 1 + (a + 1) by omega, ← Finset.Ico_add_one_add_one_eq_Ioc,
      Finset.sum_Ico_eq_sum_range]
    rw [show 1 + (a + 1) + 1 - (1 + 1) = a + 1 by omega]
    refine Finset.sum_congr rfl fun i _ => ?_
    simp only [hf]; push_cast; ring_nf
  have hs1 : ∑ i ∈ range (a + 1), f (2 + i) = ∑ i ∈ range a, f (2 + i) + f (2 + a) :=
    Finset.sum_range_succ _ _
  have hs2 : ∑ i ∈ range (a + 1), f (2 + i) = ∑ i ∈ range a, f (2 + (i + 1 : ℕ)) + f 2 := by
    rw [Finset.sum_range_succ']; simp
  have hfa : 0 ≤ f (2 + a) := by
    simp only [hf]
    exact one_div_nonneg.mpr
      (Real.log_nonneg (by have : (0:ℝ) ≤ a := Nat.cast_nonneg a; linarith))
  have hf2 : f 2 = 1 / Real.log 2 := rfl
  rw [hli, hsum, abs_le]
  constructor
  · rw [hs2]; linarith
  · rw [hs1]; linarith

/-- `Li(⌊Y⌋) - Li(Y)` is tiny. -/
theorem li_sub_li_floor (Y : ℝ) (hY : 2 ≤ Y) :
    |LandauFunction.logIntegral Y - LandauFunction.logIntegral ⌊Y⌋₊| ≤ 1 / Real.log 2 := by
  set N := ⌊Y⌋₊ with hN
  have hN2 : (2 : ℝ) ≤ N := by
    have : 2 ≤ N := Nat.le_floor (by exact_mod_cast hY)
    exact_mod_cast this
  have hNY : (N : ℝ) ≤ Y := Nat.floor_le (by linarith)
  have hYN : Y - N < 1 := by have := Nat.lt_floor_add_one Y; linarith
  have hcont : ∀ a b : ℝ, 2 ≤ a → 2 ≤ b →
      IntervalIntegrable (fun t : ℝ => 1 / Real.log t) MeasureTheory.volume a b := by
    intro a b ha hb
    apply ContinuousOn.intervalIntegrable
    intro t ht
    have : 2 ≤ t := by
      rcases Set.mem_uIcc.mp ht with h | h <;> linarith [h.1]
    exact (continuousAt_const.div (Real.continuousAt_log (by linarith))
      (Real.log_pos (by linarith)).ne').continuousWithinAt
  have hsplit := intervalIntegral.integral_add_adjacent_intervals (hcont 2 N le_rfl hN2)
    (hcont N Y hN2 hY)
  rw [LandauFunction.logIntegral, LandauFunction.logIntegral, ← hsplit, add_sub_cancel_left]
  have hb : ∀ t ∈ Set.uIoc (N : ℝ) Y, ‖1 / Real.log t‖ ≤ 1 / Real.log 2 := by
    intro t ht
    rw [Set.uIoc_of_le hNY] at ht
    have h2t : 2 ≤ t := by linarith [ht.1]
    rw [Real.norm_of_nonneg (one_div_nonneg.mpr (Real.log_nonneg (by linarith)))]
    exact one_div_le_one_div_of_le (Real.log_pos (by norm_num))
      (Real.log_le_log (by norm_num) h2t)
  have := intervalIntegral.norm_integral_le_of_norm_le_const hb
  rw [Real.norm_eq_abs, abs_of_nonneg (by linarith : 0 ≤ Y - N)] at this
  have h2 : 0 < 1 / Real.log 2 := by have := Real.log_two_gt_d9; positivity
  nlinarith

/-! ### The main partial-summation estimate: `θ` in a class `⇒` `π - Li/φ` -/

theorem abs_pi_sub_li_le (Y : ℝ) (hY : 2 ≤ Y) (q a : ℕ) (hq : 1 ≤ q) :
    |(GRH.primeCountingAP q a Y : ℝ) - LandauFunction.logIntegral Y / (q.totient : ℝ)|
      ≤ |Gq ⌊Y⌋₊ q a| * (1 / Real.log ⌊Y⌋₊) +
        ∑ k ∈ Ico 2 ⌊Y⌋₊, |Gq k q a| * (1 / Real.log k - 1 / Real.log (k + 1 : ℕ)) + 3 := by
  set N := ⌊Y⌋₊ with hN
  have hN2 : 2 ≤ N := Nat.le_floor (by exact_mod_cast hY)
  have hφ : (0 : ℝ) < q.totient := by exact_mod_cast Nat.totient_pos.mpr (by omega)
  set f : ℕ → ℝ := fun k => 1 / Real.log k with hf
  set g : ℕ → ℝ := fun j => (if j.Prime ∧ j ≡ a [MOD q] then Real.log j else 0) - 1 / q.totient
    with hg
  have hpi : (GRH.primeCountingAP q a Y : ℝ) =
      ∑ k ∈ Ioc 1 N, g k * f k + (1 / (q.totient : ℝ)) * ∑ k ∈ Ioc 1 N, f k := by
    rw [pi_eq_sum, Finset.mul_sum, ← Finset.sum_add_distrib]
    refine Finset.sum_congr rfl fun j hj => ?_
    rw [Finset.mem_Ioc] at hj
    have hl : Real.log j ≠ 0 := (Real.log_pos (by exact_mod_cast hj.1)).ne'
    simp only [hg, hf]
    split_ifs <;> field_simp <;> ring
  have hG : ∀ k, Gq k q a = ∑ j ∈ Ioc 1 k, g j := fun k => rfl
  have habel := abel_sum_real g f 1 N (by omega)
  have hIco : ∑ k ∈ Ico 1 N, (∑ j ∈ Ioc 1 k, g j) * (f (k + 1) - f k) =
      ∑ k ∈ Ico 2 N, (∑ j ∈ Ioc 1 k, g j) * (f (k + 1) - f k) := by
    rw [Finset.sum_eq_sum_Ico_succ_bot (by omega : 1 < N)]
    simp
  rw [hIco] at habel
  have hfN : 0 ≤ f N := one_div_nonneg.mpr (Real.log_natCast_nonneg N)
  have hmono : ∀ k ∈ Ico 2 N, 0 ≤ f k - f (k + 1) := by
    intro k hk
    rw [Finset.mem_Ico] at hk
    simp only [hf]
    have h1 : 0 < Real.log k := Real.log_pos (by exact_mod_cast hk.1)
    have hk2 : (2 : ℝ) ≤ k := by exact_mod_cast hk.1
    have hk0 : (0 : ℝ) < k := by linarith
    have h2 : Real.log k ≤ Real.log ((k + 1 : ℕ) : ℝ) :=
      Real.log_le_log hk0 (by push_cast; linarith)
    have := one_div_le_one_div_of_le h1 h2
    linarith
  have hmain : |∑ k ∈ Ioc 1 N, g k * f k| ≤ |Gq N q a| * f N +
      ∑ k ∈ Ico 2 N, |Gq k q a| * (f k - f (k + 1)) := by
    rw [habel, ← hG]
    refine (abs_sub _ _).trans (add_le_add ?_ ?_)
    · rw [abs_mul, abs_of_nonneg hfN]
    · refine (Finset.abs_sum_le_sum_abs _ _).trans (le_of_eq (Finset.sum_congr rfl fun k hk => ?_))
      rw [abs_mul, ← hG, abs_sub_comm, abs_of_nonneg (hmono k hk)]
  have hli1 := li_sum_compare N hN2
  have hli2 := li_sub_li_floor Y hY
  rw [← hN] at hli2
  have hl2 : 1 / Real.log 2 < 1.45 := by
    have := Real.log_two_gt_d9
    rw [div_lt_iff₀ (by linarith)]; linarith
  have hφ1 : 1 / (q.totient : ℝ) ≤ 1 := by
    rw [div_le_one hφ]; exact_mod_cast Nat.totient_pos.mpr (by omega)
  have hrest : |(1 / (q.totient : ℝ)) * ∑ k ∈ Ioc 1 N, f k -
      LandauFunction.logIntegral Y / q.totient| ≤ 3 := by
    have e : (1 / (q.totient : ℝ)) * ∑ k ∈ Ioc 1 N, f k -
        LandauFunction.logIntegral Y / q.totient =
        (1 / (q.totient : ℝ)) * ((∑ k ∈ Ioc 1 N, f k - LandauFunction.logIntegral N) +
          (LandauFunction.logIntegral N - LandauFunction.logIntegral Y)) := by ring
    rw [e, abs_mul, abs_of_nonneg (by positivity)]
    have h1 : |∑ k ∈ Ioc 1 N, f k - LandauFunction.logIntegral N| ≤ 1 / Real.log 2 := by
      rw [abs_sub_comm]; exact hli1
    have h2 : |LandauFunction.logIntegral N - LandauFunction.logIntegral Y| ≤
        1 / Real.log 2 := by rw [abs_sub_comm]; exact hli2
    have h3 := abs_add_le (∑ k ∈ Ioc 1 N, f k - LandauFunction.logIntegral N)
      (LandauFunction.logIntegral N - LandauFunction.logIntegral Y)
    have h4 : 0 ≤ |∑ k ∈ Ioc 1 N, f k - LandauFunction.logIntegral N +
        (LandauFunction.logIntegral N - LandauFunction.logIntegral Y)| := abs_nonneg _
    calc 1 / (q.totient : ℝ) * |∑ k ∈ Ioc 1 N, f k - LandauFunction.logIntegral N +
          (LandauFunction.logIntegral N - LandauFunction.logIntegral Y)|
        ≤ 1 * |∑ k ∈ Ioc 1 N, f k - LandauFunction.logIntegral N +
            (LandauFunction.logIntegral N - LandauFunction.logIntegral Y)| :=
          mul_le_mul_of_nonneg_right hφ1 h4
      _ ≤ 3 := by linarith
  rw [hpi, add_sub_assoc]
  refine (abs_add_le _ _).trans ?_
  have e2 : ∀ k ∈ Ico 2 N, |Gq k q a| * (f k - f (k + 1)) =
      |Gq k q a| * (1 / Real.log k - 1 / Real.log (k + 1 : ℕ)) := fun k _ => rfl
  rw [← Finset.sum_congr rfl e2]
  linarith

/-! ### `ψ` in a class `⇒` `θ` in a class -/

/-- `|θ(k; q, a) - ψ(k; q, a)| ≤ 2 √k log k`. -/
theorem abs_thetaq_sub_psiAP_le (k q a : ℕ) (hk : 1 ≤ k) :
    |thetaq k q a - ArtinPrimitiveRoots.psiAP k q a| ≤ 2 * √(k : ℝ) * Real.log k := by
  set F : ℕ → ℝ := fun n => if n.Prime ∧ n ≡ a [MOD q] then Λ n else 0 with hF
  have e1 : thetaq k q a = ∑ n ∈ Ioc 0 k, F n := by
    rw [← Finset.sum_Ioc_consecutive F (Nat.zero_le 1) hk]
    have h0 : ∑ n ∈ Ioc 0 1, F n = 0 := by simp [hF, Nat.not_prime_one]
    rw [h0, zero_add, thetaq]
    refine Finset.sum_congr rfl fun j hj => ?_
    simp only [hF]
    split_ifs with h
    · rw [ArithmeticFunction.vonMangoldt_apply_prime h.1]
    · rfl
  have e2 : ArtinPrimitiveRoots.psiAP k q a =
      ∑ n ∈ Ioc 0 k, (if n ≡ a [MOD q] then Λ n else 0) := by
    rw [ArtinPrimitiveRoots.psiAP, Finset.sum_filter]
  have hdiff : ArtinPrimitiveRoots.psiAP k q a - thetaq k q a =
      ∑ n ∈ Ioc 0 k, ((if n ≡ a [MOD q] then Λ n else 0) - F n) := by
    rw [e1, e2, Finset.sum_sub_distrib]
  have hlo : 0 ≤ ArtinPrimitiveRoots.psiAP k q a - thetaq k q a := by
    rw [hdiff]
    refine Finset.sum_nonneg fun n _ => ?_
    simp only [hF]
    split_ifs <;> simp_all [ArithmeticFunction.vonMangoldt_nonneg]
  have hhi : ArtinPrimitiveRoots.psiAP k q a - thetaq k q a ≤
      ∑ n ∈ (Ioc 0 k).filter (fun n => ¬ n.Prime), Λ n := by
    rw [hdiff, Finset.sum_filter]
    refine Finset.sum_le_sum fun n _ => ?_
    simp only [hF]
    split_ifs <;> simp_all [ArithmeticFunction.vonMangoldt_nonneg]
  have hcheb := Chebyshev.psi_sub_theta_eq_sum_not_prime (k : ℝ)
  rw [Nat.floor_natCast] at hcheb
  have hle := Chebyshev.psi_sub_theta_le (x := (k : ℝ)) (by exact_mod_cast hk)
  rw [abs_sub_comm, abs_of_nonneg hlo]
  linarith

theorem Gq_eq (k q a : ℕ) (hk : 1 ≤ k) :
    Gq k q a = thetaq k q a - ((k : ℝ) - 1) / q.totient := by
  rw [Gq, thetaq, Finset.sum_sub_distrib, Finset.sum_const, Nat.card_Ioc, nsmul_eq_mul]
  push_cast [hk]; ring

/-- `|G_q(k)| ≤ |ψ(k;q,a) - k/φ(q)| + 2√k log k + 1`. -/
theorem abs_Gq_le (k q a : ℕ) (hk : 1 ≤ k) (hq : 1 ≤ q) :
    |Gq k q a| ≤ |ArtinPrimitiveRoots.psiAP k q a - k / q.totient| +
      (2 * √(k : ℝ) * Real.log k + 1) := by
  rw [Gq_eq k q a hk]
  have hφ : (1 : ℝ) ≤ q.totient := by exact_mod_cast Nat.totient_pos.mpr (by omega)
  have h1 := abs_thetaq_sub_psiAP_le k q a hk
  have e : thetaq k q a - ((k : ℝ) - 1) / q.totient =
      (thetaq k q a - ArtinPrimitiveRoots.psiAP k q a) +
        (ArtinPrimitiveRoots.psiAP k q a - k / q.totient) + 1 / q.totient := by ring
  rw [e]
  have h2 : |1 / (q.totient : ℝ)| ≤ 1 := by
    rw [abs_of_nonneg (by positivity), div_le_one (by linarith)]; exact hφ
  calc |thetaq k q a - ArtinPrimitiveRoots.psiAP k q a +
          (ArtinPrimitiveRoots.psiAP k q a - k / q.totient) + 1 / q.totient|
      ≤ |thetaq k q a - ArtinPrimitiveRoots.psiAP k q a| +
          |ArtinPrimitiveRoots.psiAP k q a - k / q.totient| + |1 / (q.totient : ℝ)| :=
        abs_add_three _ _ _
    _ ≤ _ := by linarith

end GRHBridge

/-! ### The transfer lemma -/

open Filter Asymptotics Finset Real

/-- If `ψ(x; q, a) - x/φ(q) = O(x^{1/2+ε})` then so is `π(x; q, a) - Li(x)/φ(q)`. -/
theorem solution
    (q a : ℕ) (hq : q ≠ 0) (C ε : ℝ) (hC : 0 ≤ C) (hε : 0 < ε)
    (hpsi : ∀ x : ℝ, 2 ≤ x →
      |ArtinPrimitiveRoots.psiAP ⌊x⌋₊ q a - x / (q.totient : ℝ)| ≤
        C * x ^ ((1 : ℝ) / 2 + ε)) :
    ∃ C' : ℝ, 0 ≤ C' ∧ ∀ x : ℝ, 2 ≤ x →
      |(GRH.primeCountingAP q a x : ℝ) - LandauFunction.logIntegral x / (q.totient : ℝ)| ≤
        C' * x ^ ((1 : ℝ) / 2 + ε) := by
  have hq1 : (1 : ℕ) ≤ q := by omega
  set B : ℝ := C + 4 / ε + 2 with hB
  have hB0 : 0 ≤ B := by rw [hB]; positivity
  have hφ1 : 1 / (q.totient : ℝ) ≤ 1 := by
    have hφ : (0:ℝ) < q.totient := by exact_mod_cast Nat.totient_pos.mpr (by omega)
    rw [div_le_one hφ]; exact_mod_cast Nat.totient_pos.mpr (by omega)
  -- logarithmic absorption: `2 √k log k + 1 ≤ (4/ε + 1) k^{1/2+ε}` for `k ≥ 1`.
  have hlog : ∀ k : ℕ, 1 ≤ k →
      2 * √(k : ℝ) * Real.log k + 1 ≤ (4 / ε + 1) * ((k : ℝ) ^ ((1 : ℝ) / 2 + ε)) := by
    intro k hk
    have hk1 : (1 : ℝ) ≤ k := by exact_mod_cast hk
    have hk0 : (0 : ℝ) ≤ k := Nat.cast_nonneg k
    have hε2 : 0 < ε / 2 := by positivity
    have hlk : Real.log k ≤ (k : ℝ) ^ (ε / 2) / (ε / 2) :=
      Real.log_le_rpow_div hk0 hε2
    have heq : (2 : ℝ) * √(k : ℝ) * Real.log k ≤ (4 / ε) * ((k : ℝ) ^ ((1 : ℝ) / 2 + ε)) := by
      rw [Real.sqrt_eq_rpow]
      have hkp : 0 < (k : ℝ) := lt_of_lt_of_le (by norm_num : (0:ℝ) < 1) hk1
      calc (2 : ℝ) * (k : ℝ) ^ ((1 : ℝ) / 2) * Real.log k
          ≤ (2 : ℝ) * (k : ℝ) ^ ((1 : ℝ) / 2) * ((k : ℝ) ^ (ε / 2) / (ε / 2)) :=
            mul_le_mul_of_nonneg_left hlk (by positivity)
        _ = (4 / ε) * ((k : ℝ) ^ ((1 : ℝ) / 2) * (k : ℝ) ^ (ε / 2)) := by
            field_simp [hε.ne']
            ring
        _ = (4 / ε) * ((k : ℝ) ^ ((1 : ℝ) / 2 + ε / 2)) := by rw [← Real.rpow_add hkp]
        _ ≤ (4 / ε) * ((k : ℝ) ^ ((1 : ℝ) / 2 + ε)) :=
            mul_le_mul_of_nonneg_left
              (Real.rpow_le_rpow_of_exponent_le hk1 (by linarith)) (by positivity)
    have h1le : 1 ≤ (k : ℝ) ^ ((1 : ℝ) / 2 + ε) := Real.one_le_rpow hk1 (by linarith)
    linarith
  -- `|G_q(k)|` is bounded by `B k^{1/2+ε}` for all `k ≥ 2`.
  have hGk : ∀ k : ℕ, 2 ≤ k →
      |GRHBridge.Gq k q a| ≤ B * ((k : ℝ) ^ ((1 : ℝ) / 2 + ε)) := by
    intro k hk
    have hk1 : (1 : ℕ) ≤ k := by omega
    have hps := hpsi (k : ℝ) (by exact_mod_cast hk)
    rw [Nat.floor_natCast] at hps
    have hle := GRHBridge.abs_Gq_le k q a hk1 hq1
    have hlk := hlog k (by omega)
    have hX : 0 ≤ (k : ℝ) ^ ((1 : ℝ) / 2 + ε) := by positivity
    calc |GRHBridge.Gq k q a|
        ≤ |ArtinPrimitiveRoots.psiAP k q a - (k : ℝ) / (q.totient : ℝ)|
            + (2 * √(k : ℝ) * Real.log k + 1) := hle
      _ ≤ C * ((k : ℝ) ^ ((1 : ℝ) / 2 + ε)) + (4 / ε + 1) * ((k : ℝ) ^ ((1 : ℝ) / 2 + ε)) :=
            add_le_add hps hlk
      _ = (C + (4 / ε + 1)) * ((k : ℝ) ^ ((1 : ℝ) / 2 + ε)) := by ring
      _ ≤ B * ((k : ℝ) ^ ((1 : ℝ) / 2 + ε)) := by
          rw [hB]; exact mul_le_mul_of_nonneg_right (by linarith) hX
  -- the boundary version, in terms of the real variable `x`.
  have hGN : ∀ x : ℝ, 2 ≤ x →
      |GRHBridge.Gq ⌊x⌋₊ q a| ≤ B * (x ^ ((1 : ℝ) / 2 + ε)) := by
    intro x hx
    have hN2 : 2 ≤ ⌊x⌋₊ := Nat.le_floor (by exact_mod_cast hx)
    have hle := GRHBridge.abs_Gq_le ⌊x⌋₊ q a (by omega) hq1
    have hps := hpsi x hx
    have hNle : (⌊x⌋₊ : ℝ) ≤ x := Nat.floor_le (by linarith)
    have hfloor : x - (⌊x⌋₊ : ℝ) < 1 := by
      have := Nat.lt_floor_add_one x; linarith
    have h1 : |ArtinPrimitiveRoots.psiAP ⌊x⌋₊ q a - (⌊x⌋₊ : ℝ) / (q.totient : ℝ)|
        ≤ C * x ^ ((1 : ℝ) / 2 + ε) + 1 := by
      have e : ArtinPrimitiveRoots.psiAP ⌊x⌋₊ q a - (⌊x⌋₊ : ℝ) / (q.totient : ℝ)
          = (ArtinPrimitiveRoots.psiAP ⌊x⌋₊ q a - x / (q.totient : ℝ))
            + (x - (⌊x⌋₊ : ℝ)) / (q.totient : ℝ) := by ring
      rw [e]
      refine (abs_add_le _ _).trans (add_le_add hps ?_)
      have hx : |x - (⌊x⌋₊ : ℝ)| ≤ 1 := by
        rw [abs_le]
        constructor <;> linarith
      have hdiv : |(x - (⌊x⌋₊ : ℝ)) / (q.totient : ℝ)| ≤ 1 := by
        rw [div_eq_mul_one_div, abs_mul,
          abs_of_nonneg (by positivity : 0 ≤ 1 / (q.totient : ℝ))]
        calc |x - (⌊x⌋₊ : ℝ)| * (1 / (q.totient : ℝ)) ≤ 1 * (1 / (q.totient : ℝ)) :=
            mul_le_mul_of_nonneg_right hx (by positivity)
          _ ≤ 1 := by rw [one_mul]; exact hφ1
      exact hdiv
    have hlk := hlog ⌊x⌋₊ (by omega)
    have hX : 0 ≤ x ^ ((1 : ℝ) / 2 + ε) := by positivity
    have hNN : ((⌊x⌋₊ : ℝ) ^ ((1 : ℝ) / 2 + ε)) ≤ x ^ ((1 : ℝ) / 2 + ε) :=
      Real.rpow_le_rpow (Nat.cast_nonneg _) hNle (by linarith)
    calc |GRHBridge.Gq ⌊x⌋₊ q a|
        ≤ |ArtinPrimitiveRoots.psiAP ⌊x⌋₊ q a - (⌊x⌋₊ : ℝ) / (q.totient : ℝ)|
            + (2 * √(⌊x⌋₊ : ℝ) * Real.log ⌊x⌋₊ + 1) := hle
      _ ≤ C * x ^ ((1 : ℝ) / 2 + ε) + 1 + (4 / ε + 1) * ((⌊x⌋₊ : ℝ) ^ ((1 : ℝ) / 2 + ε)) :=
            add_le_add h1 hlk
      _ ≤ C * x ^ ((1 : ℝ) / 2 + ε) + 1 + (4 / ε + 1) * (x ^ ((1 : ℝ) / 2 + ε)) := by
            refine add_le_add le_rfl (mul_le_mul_of_nonneg_left hNN (by positivity))
      _ = (C + (4 / ε + 1)) * (x ^ ((1 : ℝ) / 2 + ε)) + 1 := by ring
      _ ≤ B * (x ^ ((1 : ℝ) / 2 + ε)) := by
          rw [hB]
          have h1le : 1 ≤ x ^ ((1 : ℝ) / 2 + ε) := Real.one_le_rpow (by linarith) (by linarith)
          linarith
  -- assembling everything
  refine ⟨2 * B * (1 / Real.log 2) + 3, ?_, fun x hx => ?_⟩
  · positivity
  · have hN2 : 2 ≤ ⌊x⌋₊ := Nat.le_floor (by exact_mod_cast hx)
    have hmain := GRHBridge.abs_pi_sub_li_le x hx q a hq1
    have hX : 0 ≤ x ^ ((1 : ℝ) / 2 + ε) := by positivity
    have h1X : 1 ≤ x ^ ((1 : ℝ) / 2 + ε) := Real.one_le_rpow (by linarith) (by linarith)
    have hNle : (⌊x⌋₊ : ℝ) ≤ x := Nat.floor_le (by linarith)
    have hNN : ((⌊x⌋₊ : ℝ) ^ ((1 : ℝ) / 2 + ε)) ≤ x ^ ((1 : ℝ) / 2 + ε) :=
      Real.rpow_le_rpow (Nat.cast_nonneg _) hNle (by linarith)
    have hlogN : 0 < Real.log ⌊x⌋₊ := Real.log_pos (by exact_mod_cast hN2)
    have hlog2 : 0 < Real.log 2 := by have := Real.log_two_gt_d9; linarith
    have hmono : ∀ k ∈ Finset.Ico 2 ⌊x⌋₊,
        (0 : ℝ) ≤ 1 / Real.log k - 1 / Real.log (k + 1 : ℕ) := by
      intro k hk
      have hk2 : (2 : ℝ) ≤ k := by exact_mod_cast (Finset.mem_Ico.mp hk).1
      have h1 : 0 < Real.log k := Real.log_pos (by linarith)
      have h2 : Real.log k ≤ Real.log ((k + 1 : ℕ) : ℝ) :=
        Real.log_le_log (by linarith) (by push_cast; linarith)
      have := one_div_le_one_div_of_le h1 h2
      linarith
    have ht1 : |GRHBridge.Gq ⌊x⌋₊ q a| * (1 / Real.log ⌊x⌋₊) ≤
        B * (x ^ ((1 : ℝ) / 2 + ε)) * (1 / Real.log 2) := by
      have hdiv : 1 / Real.log ⌊x⌋₊ ≤ 1 / Real.log 2 :=
        one_div_le_one_div_of_le hlog2 (Real.log_le_log (by linarith) (by exact_mod_cast hN2))
      calc |GRHBridge.Gq ⌊x⌋₊ q a| * (1 / Real.log ⌊x⌋₊)
          ≤ |GRHBridge.Gq ⌊x⌋₊ q a| * (1 / Real.log 2) :=
            mul_le_mul_of_nonneg_left hdiv (abs_nonneg _)
        _ ≤ B * (x ^ ((1 : ℝ) / 2 + ε)) * (1 / Real.log 2) :=
            mul_le_mul_of_nonneg_right (hGN x hx) (by exact le_of_lt (one_div_pos.mpr hlog2))
    have ht2 : ∑ k ∈ Finset.Ico 2 ⌊x⌋₊,
        |GRHBridge.Gq k q a| * (1 / Real.log k - 1 / Real.log (k + 1 : ℕ)) ≤
        B * (x ^ ((1 : ℝ) / 2 + ε)) * (1 / Real.log 2) := by
      have hsum : ∑ k ∈ Finset.Ico 2 ⌊x⌋₊,
          (1 / Real.log k - 1 / Real.log (k + 1 : ℕ)) ≤ 1 / Real.log 2 := by
        rw [GRHBridge.telescope_Ico (fun k => 1 / Real.log k) ⌊x⌋₊ hN2]
        simp only [Nat.cast_two]
        have hpos : 0 ≤ 1 / Real.log ⌊x⌋₊ := le_of_lt (one_div_pos.mpr hlogN)
        linarith
      have helem : ∀ k ∈ Finset.Ico 2 ⌊x⌋₊,
          |GRHBridge.Gq k q a| * (1 / Real.log k - 1 / Real.log (k + 1 : ℕ)) ≤
          B * (x ^ ((1 : ℝ) / 2 + ε)) * (1 / Real.log k - 1 / Real.log (k + 1 : ℕ)) := by
        intro k hk
        have hkk : (k : ℝ) ≤ x :=
          le_trans (Nat.cast_le.mpr (le_of_lt (Finset.mem_Ico.mp hk).2)) hNle
        have hkx : ((k : ℝ) ^ ((1 : ℝ) / 2 + ε)) ≤ x ^ ((1 : ℝ) / 2 + ε) :=
          Real.rpow_le_rpow (Nat.cast_nonneg k) hkk (by linarith)
        have h1 : |GRHBridge.Gq k q a| ≤ B * ((k : ℝ) ^ ((1 : ℝ) / 2 + ε)) :=
          hGk k (Finset.mem_Ico.mp hk).1
        have h2 : B * ((k : ℝ) ^ ((1 : ℝ) / 2 + ε)) ≤ B * (x ^ ((1 : ℝ) / 2 + ε)) :=
          mul_le_mul_of_nonneg_left hkx hB0
        exact mul_le_mul_of_nonneg_right (le_trans h1 h2) (hmono k hk)
      refine le_trans (Finset.sum_le_sum helem) ?_
      rw [← Finset.mul_sum]
      exact mul_le_mul_of_nonneg_left hsum (by exact mul_nonneg hB0 hX)
    have hthree : (3 : ℝ) ≤ 3 * (x ^ ((1 : ℝ) / 2 + ε)) := by linarith
    have hbound := le_trans hmain (add_le_add (add_le_add ht1 ht2) le_rfl)
    have hfinal : |(GRH.primeCountingAP q a x : ℝ) -
        LandauFunction.logIntegral x / (q.totient : ℝ)| ≤
        2 * B * (1 / Real.log 2) * (x ^ ((1 : ℝ) / 2 + ε)) + 3 * (x ^ ((1 : ℝ) / 2 + ε)) := by
      have hbridge : B * (x ^ ((1 : ℝ) / 2 + ε)) * (1 / Real.log 2) +
          B * (x ^ ((1 : ℝ) / 2 + ε)) * (1 / Real.log 2) =
          2 * B * (1 / Real.log 2) * (x ^ ((1 : ℝ) / 2 + ε)) := by ring
      linarith
    rw [add_mul]
    exact hfinal
