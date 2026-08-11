import Definitions.Def_quantum_parallel_repetition_game
import Definitions.Def_qpr_core_22
import Theorems.Thm_QuantumParallelRepetition_embezzlementState_norm
import Theorems.Thm_QuantumParallelRepetition_dSVDensityRationalPublicBucketLocalHarmonicCleanup_sq
import Mathlib.Algebra.Algebra.Basic
import Mathlib.Algebra.Algebra.Defs
import Mathlib.Algebra.Algebra.Equiv
import Mathlib.Algebra.Algebra.Hom
import Mathlib.Algebra.Algebra.NonUnitalHom
import Mathlib.Algebra.BigOperators.Group.Finset.Basic
import Mathlib.Algebra.BigOperators.Group.Finset.Defs
import Mathlib.Algebra.BigOperators.Group.Finset.Piecewise
import Mathlib.Algebra.BigOperators.Ring.Finset
import Mathlib.Algebra.CharP.Defs
import Mathlib.Algebra.CharZero.Defs
import Mathlib.Algebra.Field.Defs
import Mathlib.Algebra.Group.Action.Defs
import Mathlib.Algebra.Group.Action.Pi
import Mathlib.Algebra.Group.Basic
import Mathlib.Algebra.Group.Defs
import Mathlib.Algebra.Group.Hom.Defs
import Mathlib.Algebra.Group.Pi.Basic
import Mathlib.Algebra.Group.Submonoid.Defs
import Mathlib.Algebra.GroupWithZero.Action.Defs
import Mathlib.Algebra.GroupWithZero.Action.Pi
import Mathlib.Algebra.GroupWithZero.Basic
import Mathlib.Algebra.GroupWithZero.Defs
import Mathlib.Algebra.GroupWithZero.Hom
import Mathlib.Algebra.GroupWithZero.Nat
import Mathlib.Algebra.GroupWithZero.NeZero
import Mathlib.Algebra.GroupWithZero.Units.Basic
import Mathlib.Algebra.Module.Defs
import Mathlib.Algebra.Module.Equiv.Defs
import Mathlib.Algebra.Module.LinearMap.Defs
import Mathlib.Algebra.Module.Pi
import Mathlib.Algebra.NeZero
import Mathlib.Algebra.Notation.Defs
import Mathlib.Algebra.Notation.Pi.Defs
import Mathlib.Algebra.Order.Group.Unbundled.Abs
import Mathlib.Algebra.Order.Group.Unbundled.Basic
import Mathlib.Algebra.Order.GroupWithZero.Canonical
import Mathlib.Algebra.Order.GroupWithZero.Unbundled.Basic
import Mathlib.Algebra.Order.GroupWithZero.Unbundled.Defs
import Mathlib.Algebra.Order.IsBotOne
import Mathlib.Algebra.Order.Monoid.Defs
import Mathlib.Algebra.Order.Monoid.Unbundled.Basic
import Mathlib.Algebra.Order.Monoid.Unbundled.Defs
import Mathlib.Algebra.Order.Ring.Abs
import Mathlib.Algebra.Order.Ring.Defs
import Mathlib.Algebra.Order.Ring.Nat
import Mathlib.Algebra.Order.Ring.Unbundled.Basic
import Mathlib.Algebra.Order.Star.Basic
import Mathlib.Algebra.Ring.CompTypeclasses
import Mathlib.Algebra.Ring.Defs
import Mathlib.Algebra.Ring.Equiv
import Mathlib.Algebra.Ring.Hom.Defs
import Mathlib.Algebra.Ring.Int.Defs
import Mathlib.Algebra.Ring.IsFormallyReal
import Mathlib.Algebra.Ring.Nat
import Mathlib.Algebra.Star.Basic
import Mathlib.Algebra.Star.StarAlgHom
import Mathlib.Algebra.Star.StarRingHom
import Mathlib.Algebra.Star.Unitary
import Mathlib.Analysis.CStarAlgebra.Classes
import Mathlib.Analysis.CStarAlgebra.Matrix
import Mathlib.Analysis.CStarAlgebra.Module.Constructions
import Mathlib.Analysis.CStarAlgebra.Module.Defs
import Mathlib.Analysis.Complex.Basic
import Mathlib.Analysis.Complex.Norm
import Mathlib.Analysis.Complex.Order
import Mathlib.Analysis.InnerProductSpace.Adjoint
import Mathlib.Analysis.InnerProductSpace.Basic
import Mathlib.Analysis.InnerProductSpace.Defs
import Mathlib.Analysis.InnerProductSpace.PiL2
import Mathlib.Analysis.Matrix.Normed
import Mathlib.Analysis.Matrix.Order
import Mathlib.Analysis.Normed.Field.Basic
import Mathlib.Analysis.Normed.Group.Basic
import Mathlib.Analysis.Normed.Group.Defs
import Mathlib.Analysis.Normed.Group.Real
import Mathlib.Analysis.Normed.Group.Uniform
import Mathlib.Analysis.Normed.Lp.PiLp
import Mathlib.Analysis.Normed.Lp.WithLp
import Mathlib.Analysis.Normed.Module.Basic
import Mathlib.Analysis.Normed.Module.Normalize
import Mathlib.Analysis.Normed.MulAction
import Mathlib.Analysis.Normed.Ring.Basic
import Mathlib.Analysis.RCLike.Basic
import Mathlib.Data.Complex.Basic
import Mathlib.Data.ENNReal.Basic
import Mathlib.Data.Fin.Basic
import Mathlib.Data.Finset.Card
import Mathlib.Data.Finset.Defs
import Mathlib.Data.Finset.Filter
import Mathlib.Data.Finset.Range
import Mathlib.Data.Fintype.Basic
import Mathlib.Data.Fintype.BigOperators
import Mathlib.Data.Fintype.Defs
import Mathlib.Data.Fintype.Prod
import Mathlib.Data.FunLike.Basic
import Mathlib.Data.FunLike.Equiv
import Mathlib.Data.Int.Cast.Defs
import Mathlib.Data.Matrix.Basic
import Mathlib.Data.Matrix.Mul
import Mathlib.Data.Nat.Basic
import Mathlib.Data.Nat.Cast.Defs
import Mathlib.Data.Nat.Cast.Order.Basic
import Mathlib.Data.Nat.Cast.Order.Ring
import Mathlib.Data.Nat.Init
import Mathlib.Data.Nat.Lattice
import Mathlib.Data.Real.Basic
import Mathlib.Data.Real.Sqrt
import Mathlib.Data.Real.Star
import Mathlib.Data.Real.StarOrdered
import Mathlib.Data.SetLike.Basic
import Mathlib.LinearAlgebra.Complex.Module
import Mathlib.LinearAlgebra.DFinsupp
import Mathlib.LinearAlgebra.Matrix.ConjTranspose
import Mathlib.LinearAlgebra.Matrix.Defs
import Mathlib.LinearAlgebra.Matrix.Kronecker
import Mathlib.LinearAlgebra.UnitaryGroup
import Mathlib.Logic.Equiv.Defs
import Mathlib.Logic.Equiv.Fin.Basic
import Mathlib.Logic.Equiv.Prod
import Mathlib.MeasureTheory.Measure.MeasureSpace
import Mathlib.Order.Basic
import Mathlib.Order.Defs.LinearOrder
import Mathlib.Order.Defs.PartialOrder
import Mathlib.Order.Fin.Basic
import Mathlib.Order.Lattice
import Mathlib.Order.RelClasses
import Mathlib.Tactic.Abel
import Mathlib.Tactic.CancelDenoms.Core
import Mathlib.Tactic.FieldSimp.Lemmas
import Mathlib.Tactic.Linarith.Lemmas
import Mathlib.Tactic.Linarith.Preprocessing
import Mathlib.Tactic.NormNum.Basic
import Mathlib.Tactic.NormNum.Eq
import Mathlib.Tactic.NormNum.Ineq
import Mathlib.Tactic.NormNum.Inv
import Mathlib.Tactic.NormNum.Pow
import Mathlib.Tactic.NormNum.Result
import Mathlib.Tactic.Positivity.Core
import Mathlib.Tactic.Ring.Basic
import Mathlib.Tactic.Ring.Common
import Mathlib.Topology.Algebra.Group.Defs
import Mathlib.Topology.Algebra.Module.ContinuousLinearMap.Basic
import Mathlib.Topology.Algebra.UniformMulAction
import Mathlib.Topology.Defs.Filter
import Mathlib.Topology.EMetricSpace.Defs
import Mathlib.Topology.MetricSpace.Algebra
import Mathlib.Topology.MetricSpace.Pseudo.Defs
import Mathlib.Topology.UniformSpace.Defs

namespace QuantumParallelRepetition

noncomputable section

open WithLp
open scoped BigOperators Kronecker ComplexOrder MatrixOrder

theorem localUnitaryAction_matrix_mem_unitary {n : ℕ}
    (U V : Matrix.unitaryGroup (Fin n) ℂ) :
    ((U : Matrix (Fin n) (Fin n) ℂ) ⊗ₖ
      (V : Matrix (Fin n) (Fin n) ℂ)) ∈
        Matrix.unitaryGroup (Fin n × Fin n) ℂ := by
  exact Matrix.kronecker_mem_unitary U.property V.property

theorem localUnitaryAction_norm {n : ℕ}
    (U V : Matrix.unitaryGroup (Fin n) ℂ)
    (ψ : EuclideanSpace ℂ (Fin n × Fin n)) :
    ‖localUnitaryAction U V ψ‖ = ‖ψ‖ := by
  let M : Matrix (Fin n × Fin n) (Fin n × Fin n) ℂ :=
    (U : Matrix (Fin n) (Fin n) ℂ) ⊗ₖ
      (V : Matrix (Fin n) (Fin n) ℂ)
  have hM : M ∈ Matrix.unitaryGroup (Fin n × Fin n) ℂ :=
    localUnitaryAction_matrix_mem_unitary U V
  have hclm : Matrix.toEuclideanCLM
      (n := Fin n × Fin n) (𝕜 := ℂ) M ∈
      unitary
        (EuclideanSpace ℂ (Fin n × Fin n) →L[ℂ]
          EuclideanSpace ℂ (Fin n × Fin n)) :=
    Unitary.map_mem
      (Matrix.toEuclideanCLM (n := Fin n × Fin n) (𝕜 := ℂ)) hM
  exact ContinuousLinearMap.norm_map_of_mem_unitary hclm ψ

end

open scoped ComplexOrder Matrix BigOperators InnerProductSpace
open Complex Matrix Finset

noncomputable section

open WithLp
open scoped BigOperators Kronecker ComplexOrder MatrixOrder

theorem localUnitaryAction_sub
    {m : ℕ}
    (U V : Matrix.unitaryGroup (Fin m) ℂ)
    (z w : EuclideanSpace ℂ (Fin m × Fin m)) :
    localUnitaryAction U V (z - w) =
      localUnitaryAction U V z -
        localUnitaryAction U V w := by
  apply WithLp.ofLp_injective
  change
    ((U.val ⊗ₖ V.val).mulVec
      ((ofLp z) - (ofLp w))) =
        ((U.val ⊗ₖ V.val).mulVec (ofLp z)) -
          ((U.val ⊗ₖ V.val).mulVec (ofLp w))
  exact Matrix.mulVec_sub _ _ _

end

noncomputable section

open WithLp
open scoped BigOperators Kronecker ComplexOrder MatrixOrder

set_option backward.isDefEq.respectTransparency false
set_option maxHeartbeats 1800000
set_option maxRecDepth 2048

theorem dSVCanonicalFailurePrefix_card
    {d : ℕ} (r : Fin (d + 1)) :
    (Finset.univ.filter
      (fun i : Fin d => i.val < r.val)).card = r.val := by
  classical
  calc
    (Finset.univ.filter
      (fun i : Fin d => i.val < r.val)).card =
        (Finset.range r.val).card := by
      apply Finset.card_bij (fun i _ => i.val)
      · intro i member
        exact Finset.mem_range.mpr (Finset.mem_filter.mp member).2
      · intro i _ j _ equal
        exact Fin.ext equal
      · intro j member
        have before : j < r.val := Finset.mem_range.mp member
        have bounded : j < d := by
          have endpoint : r.val ≤ d := by omega
          omega
        refine ⟨⟨j, bounded⟩, ?_, rfl⟩
        exact Finset.mem_filter.mpr
          ⟨Finset.mem_univ _, before⟩
    _ = r.val := Finset.card_range _

theorem dSVCanonicalFailurePrefix_norm_sq
    {d : ℕ} (r : Fin (d + 1)) :
    ‖dSVCanonicalFailurePrefix r‖ ^ 2 = (r.val : ℝ) := by
  classical
  rw [EuclideanSpace.norm_sq_eq, Fintype.sum_prod_type]
  change
    (∑ i : Fin d, ∑ j : Fin d,
      ‖if i = j ∧ i.val < r.val then (1 : ℂ) else 0‖ ^ 2) =
      (r.val : ℝ)
  have atom (i j : Fin d) :
      ‖if i = j ∧ i.val < r.val then (1 : ℂ) else 0‖ ^ 2 =
        if i = j then if i.val < r.val then (1 : ℝ) else 0
        else 0 := by
    by_cases same : i = j
    · subst j
      by_cases before : i.val < r.val <;> simp [before]
    · simp [same]
  simp_rw [atom]
  have count := dSVCanonicalFailurePrefix_card r
  simpa [Finset.sum_boole] using congrArg
    (fun n : ℕ => (n : ℝ)) count

end

noncomputable section

open WithLp
open scoped BigOperators Kronecker ComplexOrder MatrixOrder

set_option backward.isDefEq.respectTransparency false
set_option maxHeartbeats 5000000
set_option maxRecDepth 3072

theorem dSVCanonicalFailurePrefix_inner
    {d : ℕ} (r s : Fin (d + 1)) :
    inner ℂ (dSVCanonicalFailurePrefix r)
        (dSVCanonicalFailurePrefix s) =
      (min r.val s.val : ℕ) := by
  classical
  rw [EuclideanSpace.inner_eq_star_dotProduct]
  change
    (∑ q : Fin d × Fin d,
      (if q.1 = q.2 ∧ q.1.val < s.val then (1 : ℂ) else 0) *
        star (if q.1 = q.2 ∧ q.1.val < r.val
          then (1 : ℂ) else 0)) =
      (min r.val s.val : ℕ)
  rw [Fintype.sum_prod_type]
  change
    (∑ i : Fin d, ∑ j : Fin d,
      (if i = j ∧ i.val < s.val then (1 : ℂ) else 0) *
        star (if i = j ∧ i.val < r.val then (1 : ℂ) else 0)) =
      (min r.val s.val : ℕ)
  have atom (i j : Fin d) :
      (if i = j ∧ i.val < s.val then (1 : ℂ) else 0) *
        star (if i = j ∧ i.val < r.val then (1 : ℂ) else 0) =
        if i = j then
          if i.val < min r.val s.val then (1 : ℂ) else 0
        else 0 := by
    by_cases same : i = j
    · subst j
      by_cases belowr : i.val < r.val
      · by_cases belows : i.val < s.val
        · simp [belowr, belows]
        · simp [belowr, belows]
      · by_cases belows : i.val < s.val
        · simp [belowr, belows]
        · simp [belowr, belows]
    · simp [same]
  simp_rw [atom]
  let t : Fin (d + 1) := ⟨min r.val s.val, by
    have hr : r.val ≤ d := by omega
    have hs : s.val ≤ d := by omega
    omega⟩
  have counted := dSVCanonicalFailurePrefix_card t
  have cast_counted := congrArg (fun n : ℕ => (n : ℂ)) counted
  simpa [t, Finset.sum_boole] using cast_counted

theorem dSVCanonicalFailurePrefix_sub_norm_sq
    {d : ℕ} (r s : Fin (d + 1)) :
    ‖dSVCanonicalFailurePrefix r -
        dSVCanonicalFailurePrefix s‖ ^ 2 =
      |(r.val : ℝ) - (s.val : ℝ)| := by
  rw [@norm_sub_sq ℂ,
    dSVCanonicalFailurePrefix_norm_sq,
    dSVCanonicalFailurePrefix_norm_sq,
    dSVCanonicalFailurePrefix_inner]
  change
    (r.val : ℝ) - 2 * (min r.val s.val : ℕ) + (s.val : ℝ) =
      |(r.val : ℝ) - (s.val : ℝ)|
  by_cases order : r.val ≤ s.val
  · rw [min_eq_left order, abs_of_nonpos]
    · ring
    · exact sub_nonpos.mpr (by exact_mod_cast order)
  · have opposite : s.val ≤ r.val := Nat.le_of_not_ge order
    rw [min_eq_right opposite, abs_of_nonneg]
    · ring
    · exact sub_nonneg.mpr (by exact_mod_cast opposite)

end

noncomputable section

variable {E : Type*} [NormedAddCommGroup E] [NormedSpace ℝ E]

attribute [local instance] Classical.propDecidable

theorem normalizeOrDefault_sub_le
    (fallback u v : E)
    (hfallback : ‖fallback‖ = 1)
    (hu : u ≠ 0) :
    ‖normalizeOrDefault fallback u - normalizeOrDefault fallback v‖ ≤
      2 * ‖u - v‖ / ‖u‖ := by
  classical
  have hupos : 0 < ‖u‖ := norm_pos_iff.mpr hu
  by_cases hv : v = 0
  · simp only [normalizeOrDefault, hu, ↓reduceIte, hv, sub_zero]
    calc
      ‖NormedSpace.normalize u - fallback‖ ≤
          ‖NormedSpace.normalize u‖ + ‖fallback‖ := norm_sub_le _ _
      _ = 2 := by rw [NormedSpace.norm_normalize hu, hfallback]; norm_num
      _ = 2 * ‖u‖ / ‖u‖ := by field_simp
  · simp only [normalizeOrDefault, hu, hv, ↓reduceIte]
    let u₀ := NormedSpace.normalize u
    let v₀ := NormedSpace.normalize v
    have hv₀ : ‖v₀‖ = 1 := NormedSpace.norm_normalize hv
    have hrevu : ‖u‖ • u₀ = u :=
      NormedSpace.norm_smul_normalize u
    have hrevv : ‖v‖ • v₀ = v :=
      NormedSpace.norm_smul_normalize v
    have hreverse : |‖v‖ - ‖u‖| ≤ ‖u - v‖ := by
      simpa [norm_sub_rev] using abs_norm_sub_norm_le v u
    have hscaled :
        ‖u‖ * ‖u₀ - v₀‖ = ‖u - ‖u‖ • v₀‖ := by
      calc
        ‖u‖ * ‖u₀ - v₀‖ = ‖‖u‖ • (u₀ - v₀)‖ := by
          rw [norm_smul, Real.norm_eq_abs,
            abs_of_nonneg (norm_nonneg u)]
        _ = ‖u - ‖u‖ • v₀‖ := by rw [smul_sub, hrevu]
    have hsecond : ‖v - ‖u‖ • v₀‖ = |‖v‖ - ‖u‖| := by
      calc
        ‖v - ‖u‖ • v₀‖ = ‖‖v‖ • v₀ - ‖u‖ • v₀‖ := by
          rw [hrevv]
        _ = ‖(‖v‖ - ‖u‖) • v₀‖ := by rw [sub_smul]
        _ = |‖v‖ - ‖u‖| := by
          rw [norm_smul, Real.norm_eq_abs, hv₀, mul_one]
    have hbound : ‖u‖ * ‖u₀ - v₀‖ ≤ 2 * ‖u - v‖ := by
      rw [hscaled]
      calc
        ‖u - ‖u‖ • v₀‖ ≤
            ‖u - v‖ + ‖v - ‖u‖ • v₀‖ := by
              have hsplit :
                  u - ‖u‖ • v₀ = (u - v) + (v - ‖u‖ • v₀) := by
                abel
              rw [hsplit]
              exact norm_add_le _ _
        _ = ‖u - v‖ + |‖v‖ - ‖u‖| := by rw [hsecond]
        _ ≤ 2 * ‖u - v‖ := by linarith
    change ‖u₀ - v₀‖ ≤ 2 * ‖u - v‖ / ‖u‖
    exact (le_div_iff₀ hupos).mpr (by nlinarith)

end

noncomputable section

open WithLp
open scoped BigOperators Kronecker ComplexOrder MatrixOrder

set_option backward.isDefEq.respectTransparency false
set_option maxHeartbeats 5000000
set_option maxRecDepth 3072

theorem dSVCanonicalFailurePrefix_eq_zero_of_rank_zero
    {d : ℕ} (rank : Fin (d + 1))
    (zero : rank.val = 0) :
    dSVCanonicalFailurePrefix rank = 0 := by
  have squared :
      ‖dSVCanonicalFailurePrefix rank‖ ^ 2 = 0 := by
    simpa [zero] using dSVCanonicalFailurePrefix_norm_sq rank
  have normzero : ‖dSVCanonicalFailurePrefix rank‖ = 0 := by
    nlinarith [norm_nonneg (dSVCanonicalFailurePrefix rank)]
  exact norm_eq_zero.mp normzero

theorem dSVCanonicalFailurePrefix_norm_eq_sqrt
    {d : ℕ} (rank : Fin (d + 1)) :
    ‖dSVCanonicalFailurePrefix rank‖ =
      Real.sqrt (rank.val : ℝ) := by
  have squared := dSVCanonicalFailurePrefix_norm_sq rank
  have root := Real.sq_sqrt (by positivity : 0 ≤ (rank.val : ℝ))
  nlinarith [norm_nonneg (dSVCanonicalFailurePrefix rank),
    Real.sqrt_nonneg (rank.val : ℝ)]

end

noncomputable section

open scoped BigOperators Kronecker ComplexOrder MatrixOrder

theorem dSVDensityRationalCanonicalUnitPrefix_relative_distance_sq
    {N : ℕ} (grid : 0 < N) (r s : Fin (N + 1)) :
    ‖(dSVCanonicalFailureUnitRankFamily N grid r).val -
        (dSVCanonicalFailureUnitRankFamily N grid s).val‖ ^ 2 ≤
      4 * |(r.val : ℝ) - (s.val : ℝ)| /
        (max 1 (min r.val s.val) : ℕ) := by
  classical
  let x : ℝ :=
    ‖(dSVCanonicalFailureUnitRankFamily N grid r).val -
      (dSVCanonicalFailureUnitRankFamily N grid s).val‖
  let y : ℝ :=
    ‖dSVCanonicalFailurePrefix r -
      dSVCanonicalFailurePrefix s‖
  have x_nonnegative : 0 ≤ x := norm_nonneg _
  have y_nonnegative : 0 ≤ y := norm_nonneg _
  have y_squared : y ^ 2 = |(r.val : ℝ) - (s.val : ℝ)| :=
    dSVCanonicalFailurePrefix_sub_norm_sq r s
  by_cases zero : r.val = 0
  · by_cases zero_s : s.val = 0
    · have same : r = s := Fin.ext (zero.trans zero_s.symm)
      subst s
      simp
    · have s_positive : 0 < s.val := Nat.pos_of_ne_zero zero_s
      have s_one : (1 : ℝ) ≤ (s.val : ℝ) := by
        exact_mod_cast (Nat.one_le_iff_ne_zero.mpr zero_s)
      have x_two : x ≤ 2 := by
        dsimp [x]
        calc
          _ ≤ ‖(dSVCanonicalFailureUnitRankFamily
                N grid r).val‖ +
              ‖(dSVCanonicalFailureUnitRankFamily
                N grid s).val‖ := norm_sub_le _ _
          _ = 2 := by
            rw [(dSVCanonicalFailureUnitRankFamily
              N grid r).property,
              (dSVCanonicalFailureUnitRankFamily
                N grid s).property]
            norm_num
      have magnitude :
          |(r.val : ℝ) - (s.val : ℝ)| = (s.val : ℝ) := by
        simp [zero]
      have denominator : max 1 (min r.val s.val) = 1 := by
        simp [zero]
      change x ^ 2 ≤ _
      rw [magnitude, denominator]
      norm_num only [Nat.cast_one, div_one]
      nlinarith [sq_nonneg x]
  · have r_positive_nat : 0 < r.val := Nat.pos_of_ne_zero zero
    have r_positive : (0 : ℝ) < r.val := by
      exact_mod_cast r_positive_nat
    have root_positive : 0 < Real.sqrt (r.val : ℝ) :=
      Real.sqrt_pos.mpr r_positive
    have raw_nonzero : dSVCanonicalFailurePrefix r ≠ 0 := by
      intro vanished
      have mass := dSVCanonicalFailurePrefix_norm_sq r
      rw [vanished] at mass
      norm_num at mass
      exact zero (by exact_mod_cast mass.symm)
    have normalized := normalizeOrDefault_sub_le
      (embezzlementState N)
      (dSVCanonicalFailurePrefix r)
      (dSVCanonicalFailurePrefix s)
      (embezzlementState_norm N grid)
      raw_nonzero
    change x ≤ 2 * y /
      ‖dSVCanonicalFailurePrefix r‖ at normalized
    rw [dSVCanonicalFailurePrefix_norm_eq_sqrt]
      at normalized
    have linear : x * Real.sqrt (r.val : ℝ) ≤ 2 * y :=
      (le_div_iff₀ root_positive).mp normalized
    have square := mul_self_le_mul_self
      (mul_nonneg x_nonnegative root_positive.le) linear
    have weighted : x ^ 2 * (r.val : ℝ) ≤
        4 * |(r.val : ℝ) - (s.val : ℝ)| := by
      have root_square := Real.sq_sqrt r_positive.le
      nlinarith [y_squared]
    have rank_relative :
        x ^ 2 ≤ 4 * |(r.val : ℝ) - (s.val : ℝ)| /
          (r.val : ℝ) :=
      (le_div_iff₀ r_positive).mpr weighted
    have denominator_positive :
        (0 : ℝ) < (max 1 (min r.val s.val) : ℕ) := by
      exact_mod_cast (show 0 < max 1 (min r.val s.val) by omega)
    have denominator_le :
        ((max 1 (min r.val s.val) : ℕ) : ℝ) ≤ (r.val : ℝ) := by
      exact_mod_cast
        (max_le (Nat.one_le_iff_ne_zero.mpr zero)
          (min_le_left r.val s.val))
    change x ^ 2 ≤ _
    calc
      x ^ 2 ≤ 4 * |(r.val : ℝ) - (s.val : ℝ)| /
          (r.val : ℝ) := rank_relative
      _ ≤ 4 * |(r.val : ℝ) - (s.val : ℝ)| /
          (max 1 (min r.val s.val) : ℕ) := by
            apply (div_le_div_iff₀ r_positive denominator_positive).mpr
            exact mul_le_mul_of_nonneg_left denominator_le
              (mul_nonneg (by norm_num) (abs_nonneg _))

theorem dSVDensityRationalPublicBucketCanonicalPrefixCleanup_sq
    {Ω I : Type*} [DecidableEq I] {N : ℕ} (grid : 0 < N)
    (bucket : Ω → Fin (N + 1) → I)
    (representative : Ω → I → Fin (N + 1))
    (ε : ℝ) (precision : 0 < ε) :
    ∃ n : ℕ, 0 < n ∧
      ∃ A B : Ω → I → Matrix.unitaryGroup (Fin (N * n)) ℂ,
        ∀ (phase : Ω) (r s : Fin (N + 1)),
          ‖localUnitaryAction
              (A phase (bucket phase r))
              (B phase (bucket phase s))
              (tensorEmbezzlementTarget (n := n)
                (dSVCanonicalFailureUnitRankFamily N grid r)) -
            embezzlementState (N * n)‖ ^ 2 ≤
              2 * ε ^ 2 +
              8 * |(r.val : ℝ) -
                ((representative phase (bucket phase r)).val : ℝ)| /
                (max 1
                  (min r.val
                    (representative phase (bucket phase r)).val) : ℕ) +
              4 * (if bucket phase r = bucket phase s
                then (0 : ℝ) else 1) := by
  obtain ⟨n, positive, A, B, accurate⟩ :=
    dSVDensityRationalPublicBucketLocalHarmonicCleanup_sq
      grid (dSVCanonicalFailureUnitRankFamily N grid)
      bucket representative ε precision
  refine ⟨n, positive, A, B, ?_⟩
  intro phase r s
  have actual := accurate phase r s
  have relative :=
    dSVDensityRationalCanonicalUnitPrefix_relative_distance_sq
      grid r (representative phase (bucket phase r))
  calc
    _ ≤ 2 * ε ^ 2 +
        2 * ‖(dSVCanonicalFailureUnitRankFamily N grid r).val -
          (dSVCanonicalFailureUnitRankFamily N grid
            (representative phase (bucket phase r))).val‖ ^ 2 +
        4 * (if bucket phase r = bucket phase s
          then (0 : ℝ) else 1) := actual
    _ ≤ 2 * ε ^ 2 +
        2 * (4 * |(r.val : ℝ) -
          ((representative phase (bucket phase r)).val : ℝ)| /
            (max 1
              (min r.val
                (representative phase (bucket phase r)).val) : ℕ)) +
        4 * (if bucket phase r = bucket phase s
          then (0 : ℝ) else 1) := by
      gcongr
    _ = _ := by ring

end

noncomputable section

open WithLp
open scoped BigOperators Kronecker ComplexOrder MatrixOrder

theorem
    dSVDensityRationalMixedCanonicalPrefixPureHarmonicTensor_unit
    {N n : ℕ} (z : BipartiteUnitVector N) :
    dSVDensityRationalMixedCanonicalPrefixPureHarmonicTensor
        n z.val =
      tensorEmbezzlementTarget (n := n) z := by
  rfl

theorem
    dSVDensityRationalMixedCanonicalPrefixPureHarmonicTensor_sub
    {N : ℕ} (n : ℕ)
    (x y : EuclideanSpace ℂ (Fin N × Fin N)) :
    dSVDensityRationalMixedCanonicalPrefixPureHarmonicTensor
        n (x - y) =
      dSVDensityRationalMixedCanonicalPrefixPureHarmonicTensor
          n x -
        dSVDensityRationalMixedCanonicalPrefixPureHarmonicTensor
          n y := by
  ext q
  change
    (x ((finProdFinEquiv.symm q.1).1,
          (finProdFinEquiv.symm q.2).1) -
      y ((finProdFinEquiv.symm q.1).1,
          (finProdFinEquiv.symm q.2).1)) *
        embezzlementState n
          ((finProdFinEquiv.symm q.1).2,
            (finProdFinEquiv.symm q.2).2) =
      x ((finProdFinEquiv.symm q.1).1,
          (finProdFinEquiv.symm q.2).1) *
        embezzlementState n
          ((finProdFinEquiv.symm q.1).2,
            (finProdFinEquiv.symm q.2).2) -
      y ((finProdFinEquiv.symm q.1).1,
          (finProdFinEquiv.symm q.2).1) *
        embezzlementState n
          ((finProdFinEquiv.symm q.1).2,
            (finProdFinEquiv.symm q.2).2)
  ring

theorem
    dSVDensityRationalMixedCanonicalPrefixPureHarmonicTensor_norm_sq
    {N n : ℕ} (positive : 0 < n)
    (z : EuclideanSpace ℂ (Fin N × Fin N)) :
    ‖dSVDensityRationalMixedCanonicalPrefixPureHarmonicTensor
      n z‖ ^ 2 = ‖z‖ ^ 2 := by
  classical
  let e : ((Fin N × Fin N) × (Fin n × Fin n)) ≃
      (Fin (N * n) × Fin (N * n)) :=
    (Equiv.prodProdProdComm (Fin N) (Fin N) (Fin n) (Fin n)).trans
      (Equiv.prodCongr finProdFinEquiv finProdFinEquiv)
  have point (q : (Fin N × Fin N) × (Fin n × Fin n)) :
      dSVDensityRationalMixedCanonicalPrefixPureHarmonicTensor
          n z (e q) =
        z q.1 * embezzlementState n q.2 := by
    rcases q with ⟨⟨a, b⟩, ⟨i, j⟩⟩
    change
      z ((finProdFinEquiv.symm (finProdFinEquiv (a, i))).1,
          (finProdFinEquiv.symm (finProdFinEquiv (b, j))).1) *
        embezzlementState n
          ((finProdFinEquiv.symm (finProdFinEquiv (a, i))).2,
            (finProdFinEquiv.symm (finProdFinEquiv (b, j))).2) =
      z (a, b) * embezzlementState n (i, j)
    simp only [Equiv.symm_apply_apply]
  rw [EuclideanSpace.norm_sq_eq]
  calc
    (∑ q : Fin (N * n) × Fin (N * n),
        ‖dSVDensityRationalMixedCanonicalPrefixPureHarmonicTensor
          n z q‖ ^ 2) =
      ∑ q : (Fin N × Fin N) × (Fin n × Fin n),
        ‖dSVDensityRationalMixedCanonicalPrefixPureHarmonicTensor
          n z (e q)‖ ^ 2 :=
        (Equiv.sum_comp e
          (fun q : Fin (N * n) × Fin (N * n) =>
            ‖dSVDensityRationalMixedCanonicalPrefixPureHarmonicTensor
              n z q‖ ^ 2)).symm
    _ = ∑ q : (Fin N × Fin N) × (Fin n × Fin n),
          ‖z q.1 * embezzlementState n q.2‖ ^ 2 := by
          apply Finset.sum_congr rfl
          intro q _
          rw [point q]
    _ = (∑ a : Fin N × Fin N, ‖z a‖ ^ 2) *
          (∑ b : Fin n × Fin n,
            ‖embezzlementState n b‖ ^ 2) := by
          rw [Fintype.sum_prod_type]
          simp_rw [norm_mul, mul_pow]
          exact (Fintype.sum_mul_sum
            (fun a : Fin N × Fin N => ‖z a‖ ^ 2)
            (fun b : Fin n × Fin n =>
              ‖embezzlementState n b‖ ^ 2)).symm
    _ = ‖z‖ ^ 2 := by
          rw [← EuclideanSpace.norm_sq_eq,
            ← EuclideanSpace.norm_sq_eq,
            embezzlementState_norm n positive]
          ring

theorem
    dSVDensityRationalMixedCanonicalPrefixPureHarmonicTensor_prefix_sub_norm_sq
    {N n : ℕ} (positive : 0 < n)
    (r s : Fin (N + 1)) :
    ‖dSVDensityRationalMixedCanonicalPrefixPureHarmonicTensor
          n (dSVCanonicalFailurePrefix r) -
        dSVDensityRationalMixedCanonicalPrefixPureHarmonicTensor
          n (dSVCanonicalFailurePrefix s)‖ ^ 2 =
      |(r.val : ℝ) - (s.val : ℝ)| := by
  rw [← dSVDensityRationalMixedCanonicalPrefixPureHarmonicTensor_sub,
    dSVDensityRationalMixedCanonicalPrefixPureHarmonicTensor_norm_sq
      positive,
    dSVCanonicalFailurePrefix_sub_norm_sq]

end

noncomputable section

open WithLp
open scoped BigOperators Kronecker ComplexOrder MatrixOrder

theorem
    dSVDensityRationalMixedCanonicalPrefixPhysicalLocalAction_real_smul
    {n : ℕ} (A B : Matrix.unitaryGroup (Fin n) ℂ)
    (r : ℝ) (z : EuclideanSpace ℂ (Fin n × Fin n)) :
    localUnitaryAction A B (r • z) =
      r • localUnitaryAction A B z := by
  change
    Matrix.toEuclideanLin
        ((A : Matrix (Fin n) (Fin n) ℂ) ⊗ₖ
          (B : Matrix (Fin n) (Fin n) ℂ)) (r • z) =
      r • Matrix.toEuclideanLin
        ((A : Matrix (Fin n) (Fin n) ℂ) ⊗ₖ
          (B : Matrix (Fin n) (Fin n) ℂ)) z
  exact (Matrix.toEuclideanLin
    ((A : Matrix (Fin n) (Fin n) ℂ) ⊗ₖ
      (B : Matrix (Fin n) (Fin n) ℂ))).map_smul_of_tower r z

theorem
    dSVDensityRationalMixedCanonicalPrefixPureHarmonicTensor_real_smul
    {N : ℕ} (n : ℕ) (r : ℝ)
    (z : EuclideanSpace ℂ (Fin N × Fin N)) :
    dSVDensityRationalMixedCanonicalPrefixPureHarmonicTensor
        n (r • z) =
      r • dSVDensityRationalMixedCanonicalPrefixPureHarmonicTensor
        n z := by
  ext q
  change
    ((r : ℂ) * z ((finProdFinEquiv.symm q.1).1,
        (finProdFinEquiv.symm q.2).1)) *
      embezzlementState n
        ((finProdFinEquiv.symm q.1).2,
          (finProdFinEquiv.symm q.2).2) =
    (r : ℂ) *
      (z ((finProdFinEquiv.symm q.1).1,
          (finProdFinEquiv.symm q.2).1) *
        embezzlementState n
          ((finProdFinEquiv.symm q.1).2,
            (finProdFinEquiv.symm q.2).2))
  ring

theorem
    dSVDensityRationalMixedCanonicalPrefixPhysicalRawHarmonicTensor_eq
    {N : ℕ} (grid : 0 < N) (n : ℕ)
    (rank : Fin (N + 1)) :
    dSVDensityRationalMixedCanonicalPrefixPureHarmonicTensor
        n (dSVCanonicalFailurePrefix rank) =
      Real.sqrt (rank.val : ℝ) •
        tensorEmbezzlementTarget (n := n)
          (dSVCanonicalFailureUnitRankFamily N grid rank) := by
  classical
  have raw : dSVCanonicalFailurePrefix rank =
      Real.sqrt (rank.val : ℝ) •
        (dSVCanonicalFailureUnitRankFamily N grid rank :
          EuclideanSpace ℂ (Fin N × Fin N)) := by
    by_cases zero : rank.val = 0
    · rw [dSVCanonicalFailurePrefix_eq_zero_of_rank_zero
        rank zero]
      simp [zero]
    · have nonzero : dSVCanonicalFailurePrefix rank ≠ 0 := by
        intro vanished
        have mass := dSVCanonicalFailurePrefix_norm_sq rank
        rw [vanished] at mass
        have cast_zero : (rank.val : ℝ) = 0 := by
          simpa using mass.symm
        exact zero (by exact_mod_cast cast_zero)
      change dSVCanonicalFailurePrefix rank =
        Real.sqrt (rank.val : ℝ) •
          normalizeOrDefault
            (embezzlementState N)
            (dSVCanonicalFailurePrefix rank)
      rw [normalizeOrDefault, if_neg nonzero,
        ← dSVCanonicalFailurePrefix_norm_eq_sqrt rank]
      exact (NormedSpace.norm_smul_normalize
        (dSVCanonicalFailurePrefix rank)).symm
  rw [raw,
    dSVDensityRationalMixedCanonicalPrefixPureHarmonicTensor_real_smul,
    dSVDensityRationalMixedCanonicalPrefixPureHarmonicTensor_unit]

theorem
    dSVDensityRationalMixedCanonicalPrefixPhysicalRankWeightedAtomError_eq
    {N n : ℕ} (grid : 0 < N)
    (rank : Fin (N + 1))
    (A B : Matrix.unitaryGroup (Fin (N * n)) ℂ) :
    ‖localUnitaryAction A B
          (dSVDensityRationalMixedCanonicalPrefixPureHarmonicTensor
            n (dSVCanonicalFailurePrefix rank)) -
        Real.sqrt (rank.val : ℝ) •
          embezzlementState (N * n)‖ ^ 2 =
      (rank.val : ℝ) *
        ‖localUnitaryAction A B
            (tensorEmbezzlementTarget (n := n)
              (dSVCanonicalFailureUnitRankFamily
                N grid rank)) -
          embezzlementState (N * n)‖ ^ 2 := by
  rw [dSVDensityRationalMixedCanonicalPrefixPhysicalRawHarmonicTensor_eq
    grid n rank]
  rw [dSVDensityRationalMixedCanonicalPrefixPhysicalLocalAction_real_smul]
  rw [← smul_sub, norm_smul, mul_pow,
    Real.norm_eq_abs, sq_abs,
    Real.sq_sqrt (by positivity : 0 ≤ (rank.val : ℝ))]

theorem
    exists_proofDSVDensityRationalPublicBucketPhysicalRawRankCleanup_sq
    {Ω I : Type*} [DecidableEq I] {N : ℕ} (grid : 0 < N)
    (bucket : Ω → Fin (N + 1) → I)
    (representative : Ω → I → Fin (N + 1))
    (ε : ℝ) (precision : 0 < ε) :
    ∃ n : ℕ, 0 < n ∧
      ∃ A B : Ω → I → Matrix.unitaryGroup (Fin (N * n)) ℂ,
        ∀ (phase : Ω) (r s : Fin (N + 1)),
          ‖localUnitaryAction
              (A phase (bucket phase r))
              (B phase (bucket phase s))
              (dSVDensityRationalMixedCanonicalPrefixPureHarmonicTensor
                n (dSVCanonicalFailurePrefix r)) -
            Real.sqrt (r.val : ℝ) •
              embezzlementState (N * n)‖ ^ 2 ≤
            (r.val : ℝ) *
              (2 * ε ^ 2 +
                8 * |(r.val : ℝ) -
                  ((representative phase (bucket phase r)).val : ℝ)| /
                  (max 1
                    (min r.val
                      (representative phase (bucket phase r)).val) : ℕ) +
                4 * (if bucket phase r = bucket phase s
                  then (0 : ℝ) else 1)) := by
  obtain ⟨n, positive, A, B, accurate⟩ :=
    dSVDensityRationalPublicBucketCanonicalPrefixCleanup_sq
      grid bucket representative ε precision
  refine ⟨n, positive, A, B, ?_⟩
  intro phase r s
  rw [dSVDensityRationalMixedCanonicalPrefixPhysicalRankWeightedAtomError_eq
    grid r]
  exact mul_le_mul_of_nonneg_left
    (accurate phase r s) (Nat.cast_nonneg r.val)

end

end QuantumParallelRepetition


open QuantumParallelRepetition
open scoped ComplexOrder Matrix BigOperators InnerProductSpace
open Complex Matrix Finset
open WithLp
open scoped BigOperators Kronecker ComplexOrder MatrixOrder

theorem
    solution
    {Ω I : Type*} [DecidableEq I] {N : ℕ} (grid : 0 < N)
    (bucket : Ω → Fin (N + 1) → I)
    (representative : Ω → I → Fin (N + 1))
    (ε : ℝ) (precision : 0 < ε) :
    ∃ n : ℕ, 0 < n ∧
      ∃ A B : Ω → I → Matrix.unitaryGroup (Fin (N * n)) ℂ,
        ∀ (phase : Ω) (r s : Fin (N + 1)),
          ‖localUnitaryAction
              (A phase (bucket phase r))
              (B phase (bucket phase s))
              (dSVDensityRationalMixedCanonicalPrefixPureHarmonicTensor
                n (dSVCanonicalFailurePrefix
                  (dSVDensityRationalPublicBucketPhysicalCommonRank
                    r s))) -
            Real.sqrt (r.val : ℝ) •
              embezzlementState (N * n)‖ ^ 2 ≤
            2 * |(r.val : ℝ) - (s.val : ℝ)| +
              2 * (r.val : ℝ) *
                (2 * ε ^ 2 +
                  8 * |(r.val : ℝ) -
                    ((representative phase (bucket phase r)).val : ℝ)| /
                    (max 1
                      (min r.val
                        (representative phase (bucket phase r)).val) : ℕ) +
                  4 * (if bucket phase r = bucket phase s
                    then (0 : ℝ) else 1)) := by
  obtain ⟨n, positive, A, B, accurate⟩ :=
    exists_proofDSVDensityRationalPublicBucketPhysicalRawRankCleanup_sq
      grid bucket representative ε precision
  refine ⟨n, positive, A, B, ?_⟩
  intro phase r s
  let U := A phase (bucket phase r)
  let V := B phase (bucket phase s)
  let common := dSVDensityRationalPublicBucketPhysicalCommonRank r s
  let mixed :=
    dSVDensityRationalMixedCanonicalPrefixPureHarmonicTensor
      n (dSVCanonicalFailurePrefix common)
  let alice :=
    dSVDensityRationalMixedCanonicalPrefixPureHarmonicTensor
      n (dSVCanonicalFailurePrefix r)
  let target := Real.sqrt (r.val : ℝ) •
    embezzlementState (N * n)
  have pure_distance :
      ‖localUnitaryAction U V mixed -
        localUnitaryAction U V alice‖ ^ 2 ≤
          |(r.val : ℝ) - (s.val : ℝ)| := by
    rw [← localUnitaryAction_sub,
      localUnitaryAction_norm]
    dsimp [mixed, alice]
    rw [dSVDensityRationalMixedCanonicalPrefixPureHarmonicTensor_prefix_sub_norm_sq
      positive]
    dsimp [common,
      dSVDensityRationalPublicBucketPhysicalCommonRank]
    rcases le_total r.val s.val with ordered | ordered
    · rw [min_eq_left ordered]
      simp
    · rw [min_eq_right ordered]
      rw [abs_sub_comm]
  have cleanup := accurate phase r s
  change
    ‖localUnitaryAction U V mixed - target‖ ^ 2 ≤ _
  have triangle :
      ‖localUnitaryAction U V mixed - target‖ ≤
        ‖localUnitaryAction U V mixed -
          localUnitaryAction U V alice‖ +
        ‖localUnitaryAction U V alice - target‖ := by
    calc
      _ = ‖(localUnitaryAction U V mixed -
          localUnitaryAction U V alice) +
          (localUnitaryAction U V alice - target)‖ := by
            congr 1
            abel
      _ ≤ _ := norm_add_le _ _
  change
    ‖localUnitaryAction U V alice - target‖ ^ 2 ≤ _
    at cleanup
  nlinarith [
    norm_nonneg (localUnitaryAction U V mixed - target),
    norm_nonneg (localUnitaryAction U V mixed -
      localUnitaryAction U V alice),
    norm_nonneg (localUnitaryAction U V alice - target),
    sq_nonneg
      (‖localUnitaryAction U V mixed -
          localUnitaryAction U V alice‖ -
        ‖localUnitaryAction U V alice - target‖)]
