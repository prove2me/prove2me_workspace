/-
Copyright (c) 2026 LeanLevy Contributors. All rights reserved.
Released under MIT license as described in the file LICENSE.
Authors: LeanLevy Contributors
-/
import Mathlib.MeasureTheory.Constructions.Projective
import Mathlib.MeasureTheory.Constructions.ProjectiveFamilyContent
import Mathlib.MeasureTheory.Constructions.ClosedCompactCylinders
import Mathlib.MeasureTheory.OuterMeasure.OfAddContent
import Mathlib.MeasureTheory.Measure.Regular
import Mathlib.MeasureTheory.Measure.RegularityCompacts
import Mathlib.Topology.MetricSpace.Polish
import Mathlib.Probability.ProductMeasure
import Definitions.Def_LeanLevy_Processes_ProjectiveFamily

/-!
# Kolmogorov Extension Theorem

Given a projective family of probability measures on finite-dimensional product
spaces, the Kolmogorov extension theorem produces a unique probability measure on
the full product (path) space `∀ i, α i` whose finite-dimensional marginals match
the given family.

## Main results

* `ProbabilityTheory.ProjectiveFamily.sigma_subadditive` --
  σ-subadditivity of the projective family content on Polish spaces.

## References

* Kolmogorov, A.N. *Grundbegriffe der Wahrscheinlichkeitsrechnung*, 1933.
-/

open MeasureTheory Set Finset Filter

open scoped ENNReal Topology

namespace ProbabilityTheory

namespace ProjectiveFamily

variable {ι : Type*} {α : ι → Type*}
  [∀ i, MeasurableSpace (α i)]
  [∀ i, TopologicalSpace (α i)]
  [∀ i, PolishSpace (α i)]
  [∀ i, BorelSpace (α i)]

/-! ### Auxiliary lemmas -/

omit [∀ i, TopologicalSpace (α i)] [∀ i, PolishSpace (α i)] [∀ i, BorelSpace (α i)] in
/-- Each `α i` is nonempty when there is a projective family. -/
theorem nonempty_of_projective (pf : ProjectiveFamily ι α) (i : ι) : Nonempty (α i) := by
  haveI := pf.prob {i}
  haveI : Nonempty (∀ j : ({i} : Finset ι), α j) :=
    nonempty_of_isProbabilityMeasure (pf.measure {i})
  exact ⟨(Classical.arbitrary (∀ j : ({i} : Finset ι), α j)) ⟨i, Finset.mem_singleton_self i⟩⟩

/-! ### Tendsto zero for decreasing cylinders -/

set_option maxHeartbeats 800000 in
/-- The projective family content of a decreasing sequence of measurable cylinders
with empty intersection tends to zero. -/
private theorem content_tendsto_zero (pf : ProjectiveFamily ι α)
    {B : ℕ → Set (∀ i, α i)} (hB : ∀ n, B n ∈ measurableCylinders α)
    (hB_anti : Antitone B) (hB_inter : ⋂ n, B n = ∅) :
    Tendsto (fun n ↦ projectiveFamilyContent pf.consistent (B n)) atTop (𝓝 0) := by
  -- Part A: Setup — decompose cylinders and merge index sets
  have hne : ∀ i, Nonempty (α i) := pf.nonempty_of_projective
  choose I S mS B_eq using fun n ↦ (mem_measurableCylinders _).1 (hB n)
  classical
  let J : ℕ → Finset ι := fun n ↦ (Finset.range (n + 1)).sup I
  have hJ_mono : Monotone J :=
    fun _ _ hmn ↦ Finset.sup_mono (Finset.range_mono (by omega))
  have hIJ : ∀ n, I n ⊆ J n := fun n ↦
    Finset.le_sup (f := I) (Finset.mem_range.2 (by omega))
  let T : ∀ n, Set (∀ j : J n, α j) := fun n ↦ Finset.restrict₂ (hIJ n) ⁻¹' S n
  have mT : ∀ n, MeasurableSet (T n) :=
    fun n ↦ (mS n).preimage (Finset.measurable_restrict₂ _)
  have B_eq' : ∀ n, B n = cylinder (J n) (T n) := fun n ↦ by
    rw [B_eq n]; ext f; simp [cylinder, T, Finset.restrict_def, Finset.restrict₂_def]
  have content_eq : ∀ n,
      projectiveFamilyContent pf.consistent (B n) = pf.measure (J n) (T n) := fun n ↦ by
    rw [B_eq']; exact projectiveFamilyContent_cylinder pf.consistent (mT n)
  -- By contradiction: suppose content doesn't tend to 0
  by_contra h_not_tendsto
  have h_mono : Antitone (fun n ↦ projectiveFamilyContent pf.consistent (B n)) :=
    fun _ _ hmn ↦ projectiveFamilyContent_mono pf.consistent (hB _) (hB _) (hB_anti hmn)
  rw [ENNReal.tendsto_atTop_zero] at h_not_tendsto
  push Not at h_not_tendsto
  obtain ⟨ε, hε_pos, h_freq⟩ := h_not_tendsto
  have h_lower : ∀ n, ε ≤ pf.measure (J n) (T n) := by
    intro n; rw [← content_eq]
    obtain ⟨m, hmn, hm⟩ := h_freq n
    exact hm.le.trans (h_mono hmn)
  -- Helper to extend finite-dimensional functions to the full product
  let ext_fun : ∀ {n}, (∀ j : J n, α j) → ∀ i, α i := fun x i ↦
    if h : i ∈ J _ then x ⟨i, h⟩ else (hne i).some
  -- T_m ⊆ restrict₂⁻¹(T_n) for n ≤ m (from B antitone)
  have hT_anti : ∀ {n m} (hnm : n ≤ m),
      T m ⊆ Finset.restrict₂ (hJ_mono hnm) ⁻¹' T n := by
    intro n m hnm x hx
    have hf : ext_fun x ∈ B m := by
      rw [B_eq']; simp only [mem_cylinder, ext_fun]; convert hx using 1
      ext ⟨j, hj⟩; simp [dif_pos hj]
    have hf_n := hB_anti hnm hf; rw [B_eq'] at hf_n
    simp only [mem_cylinder] at hf_n; simp only [Set.mem_preimage]
    convert hf_n using 1; ext ⟨j, hj⟩
    simp [ext_fun, dif_pos (hJ_mono hnm hj)]
  -- Part B: Inner regularity + compact thinning
  -- Inner regularity: compact K_n ⊆ T_n with small deficit
  choose K hK_sub hK_compact hK_diff using fun n ↦
    MeasurableSet.exists_isCompact_sdiff_lt (μ := pf.measure (J n)) (mT n)
      (measure_ne_top (pf.measure (J n)) _)
      (ENNReal.div_pos hε_pos.ne' (ENNReal.pow_ne_top (by norm_num)) |>.ne' :
        ε / 2 ^ (n + 2) ≠ 0)
  have hK_closed : ∀ n, IsClosed (K n) := fun n ↦ (hK_compact n).isClosed
  -- L_n = K_n ∩ ⋂_{k<n} restrict₂⁻¹(K_k) (compact thinning)
  let L : ∀ n, Set (∀ j : J n, α j) := fun n ↦
    K n ∩ ⋂ k : Fin n, Finset.restrict₂ (hJ_mono k.2.le) ⁻¹' K k
  have hL_closed : ∀ n, IsClosed (L n) := fun n ↦
    (hK_closed n).inter (isClosed_iInter fun k ↦
      (hK_closed k).preimage (Finset.continuous_restrict₂ _))
  have hL_compact : ∀ n, IsCompact (L n) :=
    fun n ↦ (hK_compact n).of_isClosed_subset (hL_closed n) inter_subset_left
  have hL_sub_T : ∀ n, L n ⊆ T n := fun n ↦ inter_subset_left.trans (hK_sub n)
  -- L_n is non-empty (key measure bound argument)
  have hL_nonempty : ∀ n, (L n).Nonempty := by
    intro n
    by_contra h_empty; rw [Set.not_nonempty_iff_eq_empty] at h_empty
    suffices pf.measure (J n) (T n) < ε from absurd (h_lower n) (not_le.2 this)
    -- T_n ⊆ (T_n \ K_n) ∪ ⋃ k : Fin n, restrict₂⁻¹(T_k \ K_k)
    have hT_cover : T n ⊆ (T n \ K n) ∪
        ⋃ k : Fin n, Finset.restrict₂ (hJ_mono k.2.le) ⁻¹' (T k \ K k) := by
      intro x hx
      by_cases hxK : x ∈ K n
      · right
        have : x ∉ ⋂ k : Fin n, Finset.restrict₂ (hJ_mono k.2.le) ⁻¹' K k := by
          intro hmem; exact h_empty.subset ⟨hxK, hmem⟩
        rw [Set.mem_iInter] at this; push Not at this
        obtain ⟨k, hk⟩ := this
        exact Set.mem_iUnion.2 ⟨k, Set.mem_preimage.2 ⟨hT_anti k.2.le hx, hk⟩⟩
      · exact Or.inl ⟨hx, hxK⟩
    -- Use consistency to pull back measure to lower levels
    have hK_diff_pull : ∀ k : Fin n,
        pf.measure (J n) (Finset.restrict₂ (hJ_mono k.2.le) ⁻¹' (T ↑k \ K ↑k)) =
        pf.measure (J ↑k) (T ↑k \ K ↑k) := by
      intro k
      rw [← Measure.map_apply (Finset.measurable_restrict₂ _)
        ((mT ↑k).diff (hK_compact ↑k).measurableSet),
        ← pf.consistent (J n) (J ↑k) (hJ_mono k.2.le)]
    -- Measure ≤ sum of deficits
    have hstep1 : pf.measure (J n) (T n) ≤
        pf.measure (J n) (T n \ K n) +
        ∑ k : Fin n, pf.measure (J ↑k) (T ↑k \ K ↑k) := by
      calc pf.measure (J n) (T n)
          ≤ pf.measure (J n) ((T n \ K n) ∪
              ⋃ k : Fin n, Finset.restrict₂ (hJ_mono k.2.le) ⁻¹' (T ↑k \ K ↑k)) :=
            measure_mono hT_cover
        _ ≤ pf.measure (J n) (T n \ K n) +
              pf.measure (J n)
                (⋃ k : Fin n, Finset.restrict₂ (hJ_mono k.2.le) ⁻¹' (T ↑k \ K ↑k)) :=
            measure_union_le _ _
        _ ≤ pf.measure (J n) (T n \ K n) +
              ∑ k : Fin n, pf.measure (J n)
                (Finset.restrict₂ (hJ_mono k.2.le) ⁻¹' (T ↑k \ K ↑k)) := by
            gcongr; exact measure_iUnion_fintype_le _ _
        _ = _ := by congr 1; congr 1 with k; exact hK_diff_pull k
    -- Bound total by ε via geometric series
    have hε_ne_top : ε ≠ ⊤ := ne_top_of_le_ne_top (measure_ne_top _ _) (h_lower 0)
    have hdeficit_le : ∀ k, pf.measure (J k) (T k \ K k) ≤ ε / 2 ^ (k + 2) :=
      fun k ↦ (hK_diff k).le
    have htsum_lt : ∑' k : ℕ, ε / 2 ^ (k + 2) < ε := by
      have h1 : (fun k ↦ ε / 2 ^ (k + 2)) =
          fun k ↦ (ε * (2 : ℝ≥0∞)⁻¹ ^ 2) * (2 : ℝ≥0∞)⁻¹ ^ k := by
        ext k
        rw [ENNReal.div_eq_inv_mul, ENNReal.inv_pow, show k + 2 = 2 + k from by omega, pow_add]
        ring
      rw [h1, ENNReal.tsum_mul_left, ENNReal.tsum_geometric, ENNReal.one_sub_inv_two, inv_inv]
      rw [show (ε * (2 : ℝ≥0∞)⁻¹ ^ 2) * 2 = ε * ((2 : ℝ≥0∞)⁻¹ ^ 2 * 2) from by ring]
      rw [show (2 : ℝ≥0∞)⁻¹ ^ 2 * 2 = (2 : ℝ≥0∞)⁻¹ from by
        rw [pow_succ, pow_one, mul_assoc,
          ENNReal.inv_mul_cancel (by norm_num) (by norm_num), mul_one]]
      calc ε * (2 : ℝ≥0∞)⁻¹ = ε / 2 := by rw [ENNReal.div_eq_inv_mul, mul_comm]
        _ < ε := ENNReal.half_lt_self hε_pos.ne' hε_ne_top
    have hstep2 : pf.measure (J n) (T n) ≤
        ε / 2 ^ (n + 2) + ∑ k : Fin n, ε / 2 ^ ((k : ℕ) + 2) :=
      hstep1.trans (add_le_add (hdeficit_le n) (Finset.sum_le_sum fun k _ ↦ hdeficit_le ↑k))
    have hstep3 : ε / 2 ^ (n + 2) + ∑ k : Fin n, ε / 2 ^ ((k : ℕ) + 2) ≤
        ∑' k : ℕ, ε / 2 ^ (k + 2) := by
      calc ε / 2 ^ (n + 2) + ∑ k : Fin n, ε / 2 ^ ((k : ℕ) + 2)
          = ∑ k : Fin (n + 1), ε / 2 ^ ((k : ℕ) + 2) := by
            rw [Fin.sum_univ_castSucc]; simp [Fin.val_last, Fin.val_castSucc, add_comm]
        _ = ∑' k : Fin (n + 1), ε / 2 ^ ((k : ℕ) + 2) := (tsum_fintype _).symm
        _ ≤ ∑' k : ℕ, ε / 2 ^ (k + 2) :=
            ENNReal.tsum_comp_le_tsum_of_injective Fin.val_injective _
    exact (hstep2.trans hstep3).trans_lt htsum_lt
  -- Part C: restrict₂ maps L_{m} into L_n for n ≤ m
  have hL_restrict : ∀ {n m} (hnm : n ≤ m) (x : ∀ j : J m, α j),
      x ∈ L m → Finset.restrict₂ (hJ_mono hnm) x ∈ L n := by
    intro n m hnm x hx
    simp only [L, mem_inter_iff, mem_iInter] at hx ⊢
    refine ⟨?_, fun k ↦ ?_⟩
    · by_cases hnm' : n = m
      · subst hnm'; exact hx.1
      · have : n < m := lt_of_le_of_ne hnm hnm'
        have := hx.2 (⟨n, this⟩ : Fin m)
        exact this
    · have hkm : (k : ℕ) < m := lt_of_lt_of_le k.2 hnm
      have := hx.2 (⟨k, hkm⟩ : Fin m)
      exact this
  -- Project everything down to J_0 and use Cantor intersection to get a single point
  let M : ℕ → Set (∀ j : J 0, α j) := fun n ↦
    Finset.restrict₂ (hJ_mono (Nat.zero_le n)) '' L n
  have hM_compact : ∀ n, IsCompact (M n) :=
    fun n ↦ (hL_compact n).image (Finset.continuous_restrict₂ _)
  have hM_nonempty : ∀ n, (M n).Nonempty := fun n ↦ (hL_nonempty n).image _
  have hM_anti : ∀ n, M (n + 1) ⊆ M n := by
    intro n y ⟨x, hx, hyx⟩
    refine ⟨Finset.restrict₂ (hJ_mono (Nat.le_succ n)) x,
      hL_restrict (Nat.le_succ n) x hx, ?_⟩
    rw [← hyx]; ext ⟨j, hj⟩; simp [Finset.restrict₂]
  -- Construct a point in the full product that belongs to every B_n.
  -- We use the fact that L_n ⊆ T_n and cylinder(J_n)(T_n) = B_n.
  -- Strategy: find f : ∀ i, α i such that restrict(J_n)(f) ∈ L_n for all n.
  -- 1) Show ⋂ M_n is non-empty (Cantor on J_0-level)
  -- 2) For any y₀ ∈ ⋂ M_n, recursively lift to compatible elements in L_n
  -- Actually, we use a direct Tychonoff argument in the product ∀ n, ∀ j : J n, α j.
  -- Define the set of "compatible L-sequences":
  --   R_n = {x : ∀ k, ∀ j : J k, α j | x_k ∈ L_k for k ≤ n, and compatible for k < n}
  -- R_n is closed and non-empty in the compact product of L_k.
  -- The intersection ⋂ R_n is non-empty by Cantor.
  -- From any element of ⋂ R_n, construct f : ∀ i, α i.
  --
  -- Simpler approach: use the Tychonoff product of L_n directly.
  -- Define C_n = {x ∈ ∏ L_k | restrict₂(x_{k+1}) = x_k for k < n}
  -- C_n is closed in the compact product, non-empty, and decreasing.
  -- By Cantor, ⋂ C_n ≠ ∅. Extract (y_k) and build f.
  -- The Tychonoff product
  let Prod := ∀ n : ℕ, ∀ j : J n, α j
  -- The subset where y_n ∈ L_n for all n
  let inL : Set Prod := Set.pi Set.univ (fun n ↦ L n)
  -- inL is compact by Tychonoff (product of compact sets)
  have hProd_compact : IsCompact inL := by
    exact isCompact_univ_pi (fun n ↦ hL_compact n)
  -- The compatibility constraint for step k: restrict₂(y_{k+1}) = y_k
  -- R_n = {x ∈ inL | ∀ k < n, restrict₂(x_{k+1}) = x_k}
  let R : ℕ → Set Prod := fun n ↦
    inL ∩ ⋂ k : Fin n, {x : Prod |
      Finset.restrict₂ (hJ_mono (Nat.le_succ k)) (x (↑k + 1)) = x ↑k}
  -- R_n is closed
  have hR_closed : ∀ n, IsClosed (R n) := by
    intro n
    refine IsClosed.inter ?_ (isClosed_iInter fun k ↦ ?_)
    · exact isClosed_set_pi (fun n _ ↦ hL_closed n)
    · -- The equalizer {x | f(x) = g(x)} for continuous f, g into a T2 space
      exact isClosed_eq
        ((Finset.continuous_restrict₂ _).comp (continuous_apply ((k : ℕ) + 1)))
        (continuous_apply (k : ℕ))
  -- R_{n+1} ⊆ R_n
  have hR_anti : ∀ n, R (n + 1) ⊆ R n := by
    intro n x hx
    refine ⟨hx.1, Set.mem_iInter.2 fun k ↦ ?_⟩
    have := Set.mem_iInter.1 hx.2 (k.castSucc)
    simp [Fin.val_castSucc] at this
    exact this
  -- R_n is non-empty
  have hR_nonempty : ∀ n, (R n).Nonempty := by
    intro n
    -- Build a compatible sequence up to level n, then extend arbitrarily
    -- We'll pick y_n ∈ L_n, then define y_k = restrict₂(y_n) for k ≤ n,
    -- and y_k arbitrary in L_k for k > n.
    obtain ⟨yn, hyn⟩ := hL_nonempty n
    -- Define the sequence
    let y : Prod := fun k ↦
      if h : k ≤ n then Finset.restrict₂ (hJ_mono h) yn
      else (hL_nonempty k).some
    refine ⟨y, ?_, Set.mem_iInter.2 fun k ↦ ?_⟩
    · -- y ∈ inL: y_k ∈ L_k for all k
      intro k _
      simp only [y]
      split_ifs with h
      · exact hL_restrict h yn hyn
      · exact (hL_nonempty k).some_mem
    · -- compatibility: restrict₂(y_{k+1}) = y_k for k < n
      simp only [Set.mem_setOf_eq, y]
      have hk : (k : ℕ) < n := k.2
      rw [dif_pos (by omega : (↑k + 1) ≤ n), dif_pos k.2.le]
      ext ⟨j, hj⟩; simp [Finset.restrict₂]
  -- ⋂ R_n is non-empty by Cantor
  have hR_inter : (⋂ n, R n).Nonempty :=
    IsCompact.nonempty_iInter_of_sequence_nonempty_isCompact_isClosed R
      hR_anti hR_nonempty
      (hProd_compact.of_isClosed_subset (hR_closed 0) (Set.inter_subset_left))
      hR_closed
  -- Extract a compatible sequence
  obtain ⟨y, hy⟩ := hR_inter
  have hy_mem : ∀ n, y n ∈ L n := by
    intro n; exact (Set.mem_iInter.1 hy 0).1 n (Set.mem_univ _)
  have hy_compat : ∀ n, Finset.restrict₂ (hJ_mono (Nat.le_succ n)) (y (n + 1)) = y n := by
    intro n
    have h_n1 := Set.mem_iInter.1 hy (n + 1)
    have h_fn := Set.mem_iInter.1 h_n1.2 (⟨n, lt_add_one n⟩ : Fin (n + 1))
    simpa using h_fn
  -- Build f : ∀ i, α i from the compatible sequence
  -- For each i, find the first n with i ∈ J n, and set f i = y n ⟨i, _⟩
  let f : ∀ i, α i := fun i ↦
    if h : ∃ n, i ∈ J n then y (Nat.find h) ⟨i, Nat.find_spec h⟩
    else (hne i).some
  -- Show f ∈ B n for all n (hence f ∈ ⋂ B_n)
  have hf_mem : ∀ n, f ∈ B n := by
    intro n
    rw [B_eq']
    simp only [mem_cylinder]
    -- Need: Finset.restrict (J n) f ∈ T n, i.e., f restricted to J n is in T n
    -- Since y n ∈ L n ⊆ T n, it suffices to show restrict(J n)(f) = y n
    suffices h : (J n).restrict f = y n by rw [h]; exact hL_sub_T n (hy_mem n)
    ext ⟨j, hj⟩
    simp only [Finset.restrict_def, f]
    have hij : ∃ k, j ∈ J k := ⟨n, hj⟩
    rw [dif_pos hij]
    -- Need: y (Nat.find hij) ⟨j, Nat.find_spec hij⟩ = y n ⟨j, hj⟩
    -- Nat.find hij ≤ n, and y is compatible
    set m := Nat.find hij with hm_def
    have hm_le : m ≤ n := Nat.find_min' _ hj
    -- By compatibility, restrict₂(y n) at J m level equals y m
    -- So y m ⟨j, _⟩ = (restrict₂ (y n)) ⟨j, _⟩ = y n ⟨j, hJ_mono hm_le _⟩
    -- We need to show y m ⟨j, Nat.find_spec _⟩ = y n ⟨j, hj⟩
    -- Use the compatibility: for m ≤ n, restrict₂(y n) = y (n-1), ..., y m
    -- More precisely, use induction on n - m
    have hy_compat_gen : ∀ (a b : ℕ) (hab : a ≤ b),
        Finset.restrict₂ (hJ_mono hab) (y b) = y a := by
      intro a b hab
      induction b with
      | zero =>
        have : a = 0 := Nat.eq_zero_of_le_zero hab
        subst this; ext ⟨j', hj'⟩; simp [Finset.restrict₂]
      | succ b ih =>
        rcases Nat.eq_or_lt_of_le hab with rfl | hab'
        · ext ⟨j', hj'⟩; simp [Finset.restrict₂]
        · -- a ≤ b, and we have hy_compat b : restrict₂(y (b+1)) = y b
          have hab'' : a ≤ b := Nat.lt_succ_iff.mp hab'
          ext ⟨j', hj'⟩
          have h1 := congr_fun (hy_compat b) ⟨j', hJ_mono hab'' hj'⟩
          have h2 := congr_fun (ih hab'') ⟨j', hj'⟩
          simp [Finset.restrict₂] at h1 h2 ⊢
          rw [← h2, ← h1]
    have := congr_fun (hy_compat_gen m n hm_le) ⟨j, Nat.find_spec hij⟩
    simp [Finset.restrict₂] at this
    exact this.symm
  -- Contradiction: f ∈ ⋂ B_n = ∅
  have : f ∈ ⋂ n, B n := Set.mem_iInter.2 hf_mem
  rw [hB_inter] at this
  exact this.elim

/-- The projective family content is σ-subadditive on Polish spaces. -/
theorem sigma_subadditive (pf : ProjectiveFamily ι α) :
    (projectiveFamilyContent pf.consistent).IsSigmaSubadditive := by
  refine isSigmaSubadditive_of_addContent_iUnion_eq_tsum
    isSetRing_measurableCylinders (fun f hf hf_Union hf' ↦ ?_)
  exact addContent_iUnion_eq_sum_of_tendsto_zero isSetRing_measurableCylinders
    (projectiveFamilyContent pf.consistent)
    (fun _ _ ↦ projectiveFamilyContent_ne_top pf.consistent)
    (fun {s} hs hs_anti hs_inter ↦ pf.content_tendsto_zero hs hs_anti hs_inter)
    hf hf_Union hf'

/-- The **Kolmogorov extension** of a projective family. -/
noncomputable def kolmogorovExtension (pf : ProjectiveFamily ι α) : Measure (∀ i, α i) :=
  (projectiveFamilyContent pf.consistent).measure
    isSetSemiring_measurableCylinders
    generateFrom_measurableCylinders.ge
    pf.sigma_subadditive

/-- The Kolmogorov extension is a projective limit. -/
theorem isProjectiveLimit_kolmogorovExtension (pf : ProjectiveFamily ι α) :
    IsProjectiveLimit pf.kolmogorovExtension pf.measure := by
  intro I
  ext s hs
  rw [Measure.map_apply (Finset.measurable_restrict I) hs, ← cylinder]
  have key : pf.kolmogorovExtension (cylinder I s) =
      projectiveFamilyContent pf.consistent (cylinder I s) := by
    unfold kolmogorovExtension
    exact AddContent.measure_eq _ _ generateFrom_measurableCylinders.symm _
      (cylinder_mem_measurableCylinders _ _ hs)
  rw [key, projectiveFamilyContent_cylinder pf.consistent hs]

instance instIsProbabilityMeasureKolmogorovExtension (pf : ProjectiveFamily ι α) :
    IsProbabilityMeasure pf.kolmogorovExtension :=
  pf.isProjectiveLimit_kolmogorovExtension.isProbabilityMeasure





end ProjectiveFamily

end ProbabilityTheory
