import Definitions.Def_quantum_parallel_repetition_game
import Definitions.Def_qpr_core_24
import Theorems.Thm_QuantumParallelRepetition_Strategy_outcomeProbability_nonneg
import Theorems.Thm_QuantumParallelRepetition_Strategy_outcomeProbability_normalized
import Theorems.Thm_QuantumParallelRepetition_exactSeedWeight_nonneg
import Theorems.Thm_QuantumParallelRepetition_exactSeedWeight_sum
import Theorems.Thm_QuantumParallelRepetition_exactRemainingCoordinate_card_pos
import Theorems.Thm_QuantumParallelRepetition_exact_source_equation_twenty_seven_support_preserving
import Mathlib.Algebra.Algebra.Basic
import Mathlib.Algebra.Algebra.Defs
import Mathlib.Algebra.BigOperators.Field
import Mathlib.Algebra.BigOperators.Group.Finset.Basic
import Mathlib.Algebra.BigOperators.Group.Finset.Defs
import Mathlib.Algebra.BigOperators.Group.Finset.Piecewise
import Mathlib.Algebra.BigOperators.GroupWithZero.Finset
import Mathlib.Algebra.BigOperators.Ring.Finset
import Mathlib.Algebra.CharP.Defs
import Mathlib.Algebra.CharZero.Defs
import Mathlib.Algebra.Field.Defs
import Mathlib.Algebra.Group.Basic
import Mathlib.Algebra.Group.Defs
import Mathlib.Algebra.Group.Nat.Defs
import Mathlib.Algebra.Group.Pi.Basic
import Mathlib.Algebra.GroupWithZero.Action.Defs
import Mathlib.Algebra.GroupWithZero.Basic
import Mathlib.Algebra.GroupWithZero.Defs
import Mathlib.Algebra.GroupWithZero.Nat
import Mathlib.Algebra.GroupWithZero.NeZero
import Mathlib.Algebra.GroupWithZero.Units.Basic
import Mathlib.Algebra.Module.Defs
import Mathlib.Algebra.NeZero
import Mathlib.Algebra.Notation.Pi.Defs
import Mathlib.Algebra.Order.BigOperators.Group.Finset
import Mathlib.Algebra.Order.BigOperators.Ring.Finset
import Mathlib.Algebra.Order.Field.Basic
import Mathlib.Algebra.Order.Floor.Defs
import Mathlib.Algebra.Order.Group.Defs
import Mathlib.Algebra.Order.Group.Unbundled.Abs
import Mathlib.Algebra.Order.Group.Unbundled.Basic
import Mathlib.Algebra.Order.GroupWithZero.Unbundled.Basic
import Mathlib.Algebra.Order.GroupWithZero.Unbundled.Defs
import Mathlib.Algebra.Order.Module.Defs
import Mathlib.Algebra.Order.Monoid.Defs
import Mathlib.Algebra.Order.Monoid.Unbundled.Basic
import Mathlib.Algebra.Order.Monoid.Unbundled.Defs
import Mathlib.Algebra.Order.Ring.Abs
import Mathlib.Algebra.Order.Ring.Defs
import Mathlib.Algebra.Order.Ring.Unbundled.Basic
import Mathlib.Algebra.Order.Star.Basic
import Mathlib.Algebra.Order.ZeroLEOne
import Mathlib.Algebra.Ring.CharZero
import Mathlib.Algebra.Ring.Defs
import Mathlib.Algebra.Ring.Nat
import Mathlib.Algebra.Star.Basic
import Mathlib.Analysis.Calculus.Deriv.Add
import Mathlib.Analysis.Calculus.Deriv.Basic
import Mathlib.Analysis.Calculus.Deriv.Inv
import Mathlib.Analysis.Calculus.Deriv.MeanValue
import Mathlib.Analysis.Calculus.Deriv.Mul
import Mathlib.Analysis.Calculus.Deriv.Pow
import Mathlib.Analysis.Convex.Basic
import Mathlib.Analysis.InnerProductSpace.Basic
import Mathlib.Analysis.InnerProductSpace.Defs
import Mathlib.Analysis.Matrix.Normed
import Mathlib.Analysis.Matrix.Order
import Mathlib.Analysis.Normed.Field.Basic
import Mathlib.Analysis.Normed.Group.Defs
import Mathlib.Analysis.Normed.Group.Real
import Mathlib.Analysis.Normed.Lp.WithLp
import Mathlib.Analysis.Normed.Module.Basic
import Mathlib.Analysis.Normed.Ring.Basic
import Mathlib.Analysis.RCLike.Basic
import Mathlib.Analysis.SpecialFunctions.Log.Basic
import Mathlib.Analysis.SpecialFunctions.Log.Deriv
import Mathlib.Data.Finset.BooleanAlgebra
import Mathlib.Data.Finset.Card
import Mathlib.Data.Finset.Defs
import Mathlib.Data.Finset.Empty
import Mathlib.Data.Finset.Filter
import Mathlib.Data.Finset.Image
import Mathlib.Data.Finset.Insert
import Mathlib.Data.Finset.Lattice.Basic
import Mathlib.Data.Finset.Range
import Mathlib.Data.Finset.SDiff
import Mathlib.Data.Fintype.Basic
import Mathlib.Data.Fintype.BigOperators
import Mathlib.Data.Fintype.Card
import Mathlib.Data.Fintype.Defs
import Mathlib.Data.Fintype.Pi
import Mathlib.Data.Fintype.Prod
import Mathlib.Data.Fintype.Sets
import Mathlib.Data.Int.Cast.Defs
import Mathlib.Data.Matrix.Basic
import Mathlib.Data.Nat.Cast.Defs
import Mathlib.Data.Nat.Cast.Order.Ring
import Mathlib.Data.Nat.Init
import Mathlib.Data.Real.Archimedean
import Mathlib.Data.Real.Basic
import Mathlib.Data.Real.Sqrt
import Mathlib.Data.Real.Star
import Mathlib.Data.Real.StarOrdered
import Mathlib.Data.Set.Defs
import Mathlib.Data.SetLike.Basic
import Mathlib.InformationTheory.KullbackLeibler.KLFun
import Mathlib.LinearAlgebra.Matrix.Kronecker
import Mathlib.MeasureTheory.Measure.MeasureSpace
import Mathlib.Order.Basic
import Mathlib.Order.Defs.LinearOrder
import Mathlib.Order.Defs.PartialOrder
import Mathlib.Order.Interval.Set.Defs
import Mathlib.Order.Lattice
import Mathlib.Order.Monotone.Defs
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
import Mathlib.Topology.Algebra.Module.ModuleTopology
import Mathlib.Topology.Algebra.Ring.Basic
import Mathlib.Topology.Algebra.Ring.Real
import Mathlib.Topology.Closure
import Mathlib.Topology.ContinuousOn
import Mathlib.Topology.Defs.Basic
import Mathlib.Topology.Defs.Filter
import Mathlib.Topology.MetricSpace.Algebra
import Mathlib.Topology.MetricSpace.Pseudo.Defs
import Mathlib.Topology.UniformSpace.Defs

namespace QuantumParallelRepetition

noncomputable section

open scoped BigOperators ComplexOrder Kronecker MatrixOrder
open Matrix

variable {X Y A B : Type*}

namespace Game

variable [Fintype X] [Fintype Y] [Fintype A] [Fintype B]

@[simp] theorem repeat_questionWeight (G : Game X Y A B) (n : ℕ)
    (xs : Fin n → X) (ys : Fin n → Y) :
    (G.repeat n).questionWeight xs ys =
      ∏ i : Fin n, G.questionWeight (xs i) (ys i) := rfl

end Game

end

open scoped ComplexOrder Matrix BigOperators InnerProductSpace
open Complex Matrix Finset

noncomputable section

open scoped BigOperators

namespace Pinsker

theorem centered_log_lower_of_one_le {x : ℝ} (hx : 1 ≤ x) :
    2 * (x - 1) / (x + 1) ≤ Real.log x := by
  have hden : 0 < x + 1 := by linarith
  let t : ℝ := (x - 1) / (x + 1)
  have ht0 : 0 ≤ t := by
    exact div_nonneg (sub_nonneg.mpr hx) hden.le
  have ht1 : t < 1 := by
    apply (div_lt_one hden).mpr
    linarith
  have hratio : (1 + t) / (1 - t) = x := by
    dsimp [t]
    field_simp
    ring
  have hseries :
      t ≤ (1 / 2 : ℝ) * Real.log ((1 + t) / (1 - t)) := by
    simpa using (Real.sum_range_le_log_div ht0 ht1 1)
  rw [hratio] at hseries
  dsimp [t] at hseries
  calc
    2 * (x - 1) / (x + 1) = 2 * ((x - 1) / (x + 1)) := by ring
    _ ≤ Real.log x := by linarith

theorem centered_log_upper_of_le_one
    {x : ℝ} (hx0 : 0 < x) (hx1 : x ≤ 1) :
    Real.log x ≤ 2 * (x - 1) / (x + 1) := by
  have hinv : 1 ≤ (1 : ℝ) / x := by
    apply (le_div_iff₀ hx0).mpr
    simpa using hx1
  have h := centered_log_lower_of_one_le hinv
  have hratio :
      2 * ((1 : ℝ) / x - 1) / ((1 : ℝ) / x + 1) =
        -(2 * (x - 1) / (x + 1)) := by
    field_simp
    ring
  rw [hratio, Real.log_div (by norm_num : (1 : ℝ) ≠ 0) hx0.ne',
    Real.log_one] at h
  linarith

theorem hasDerivAt_pinskerScalarGap {x : ℝ} (hx : 0 < x) :
    HasDerivAt pinskerScalarGap
      (Real.log x - 3 * (x - 1) * (x + 5) / (2 * (x + 2) ^ 2)) x := by
  have hden : 2 * (x + 2) ≠ 0 := by positivity
  have hnumerator :=
    (((hasDerivAt_id x).sub_const 1).pow 2).const_mul 3
  have hdenominator :=
    ((hasDerivAt_id x).add_const 2).const_mul 2
  have hquotient := hnumerator.div hdenominator hden
  have hgap := (InformationTheory.hasDerivAt_klFun hx.ne').sub hquotient
  have hfunction :
      (InformationTheory.klFun -
        (fun y => 3 * ((fun z => id z - 1) ^ 2) y) /
          (fun y => 2 * (id y + 2))) = pinskerScalarGap := by
    funext y
    change
      InformationTheory.klFun y - 3 * (y - 1) ^ 2 / (2 * (y + 2)) =
        InformationTheory.klFun y - 3 * (y - 1) ^ 2 / (2 * (y + 2))
    rfl
  rw [hfunction] at hgap
  apply hgap.congr_deriv
  dsimp
  field_simp
  ring

theorem pinsker_rational_coefficient_le {x : ℝ} (hx : 0 < x) :
    3 * (x + 5) / (2 * (x + 2) ^ 2) ≤ 2 / (x + 1) := by
  have hleft : 0 < 2 * (x + 2) ^ 2 := by positivity
  have hright : 0 < x + 1 := by linarith
  apply (div_le_div_iff₀ hleft hright).mpr
  nlinarith [sq_nonneg (x - 1)]

theorem pinskerScalarGap_derivative_nonneg
    {x : ℝ} (hx : 1 ≤ x) :
    0 ≤ Real.log x -
      3 * (x - 1) * (x + 5) / (2 * (x + 2) ^ 2) := by
  have hx0 : 0 < x := by linarith
  have hcoefficient := pinsker_rational_coefficient_le hx0
  have hscaled := mul_le_mul_of_nonneg_left
    hcoefficient (sub_nonneg.mpr hx)
  have hrational :
      3 * (x - 1) * (x + 5) / (2 * (x + 2) ^ 2) ≤
        2 * (x - 1) / (x + 1) := by
    calc
      3 * (x - 1) * (x + 5) / (2 * (x + 2) ^ 2) =
          (x - 1) * (3 * (x + 5) / (2 * (x + 2) ^ 2)) := by ring
      _ ≤ (x - 1) * (2 / (x + 1)) := hscaled
      _ = 2 * (x - 1) / (x + 1) := by ring
  have hlog := centered_log_lower_of_one_le hx
  linarith

theorem pinskerScalarGap_derivative_nonpos
    {x : ℝ} (hx0 : 0 < x) (hx1 : x ≤ 1) :
    Real.log x -
      3 * (x - 1) * (x + 5) / (2 * (x + 2) ^ 2) ≤ 0 := by
  have hcoefficient := pinsker_rational_coefficient_le hx0
  have hscaled := mul_le_mul_of_nonpos_left
    hcoefficient (sub_nonpos.mpr hx1)
  have hrational :
      2 * (x - 1) / (x + 1) ≤
        3 * (x - 1) * (x + 5) / (2 * (x + 2) ^ 2) := by
    calc
      2 * (x - 1) / (x + 1) = (x - 1) * (2 / (x + 1)) := by ring
      _ ≤ (x - 1) * (3 * (x + 5) / (2 * (x + 2) ^ 2)) := hscaled
      _ = 3 * (x - 1) * (x + 5) / (2 * (x + 2) ^ 2) := by ring
  have hlog := centered_log_upper_of_le_one hx0 hx1
  linarith

theorem pinskerScalarGap_nonneg {x : ℝ} (hx : 0 ≤ x) :
    0 ≤ pinskerScalarGap x := by
  by_cases hzero : x = 0
  · subst x
    norm_num [pinskerScalarGap, InformationTheory.klFun]
  have hxpos : 0 < x := lt_of_le_of_ne hx (Ne.symm hzero)
  by_cases hone : 1 ≤ x
  · let derivative : ℝ → ℝ := fun y =>
      Real.log y - 3 * (y - 1) * (y + 5) / (2 * (y + 2) ^ 2)
    have hcontinuous : ContinuousOn pinskerScalarGap (Set.Icc 1 x) := by
      intro y hy
      have hypos : 0 < y := by
        have hyone := (Set.mem_Icc.mp hy).1
        linarith
      exact (hasDerivAt_pinskerScalarGap hypos).continuousAt.continuousWithinAt
    have hmonotone : MonotoneOn pinskerScalarGap (Set.Icc 1 x) := by
      apply monotoneOn_of_hasDerivWithinAt_nonneg
        (f' := derivative) (convex_Icc 1 x) hcontinuous
      · intro y hy
        have hymem : y ∈ Set.Icc (1 : ℝ) x := interior_subset hy
        have hypos : 0 < y := by
          have hyone := (Set.mem_Icc.mp hymem).1
          linarith
        exact (hasDerivAt_pinskerScalarGap hypos).hasDerivWithinAt
      · intro y hy
        have hymem : y ∈ Set.Icc (1 : ℝ) x := interior_subset hy
        exact pinskerScalarGap_derivative_nonneg (Set.mem_Icc.mp hymem).1
    have hbound := hmonotone
      (show (1 : ℝ) ∈ Set.Icc 1 x from ⟨le_rfl, hone⟩)
      (show x ∈ Set.Icc (1 : ℝ) x from ⟨hone, le_rfl⟩) hone
    simpa [pinskerScalarGap, InformationTheory.klFun] using hbound
  · have hxone : x ≤ 1 := le_of_not_ge hone
    let derivative : ℝ → ℝ := fun y =>
      Real.log y - 3 * (y - 1) * (y + 5) / (2 * (y + 2) ^ 2)
    have hcontinuous : ContinuousOn pinskerScalarGap (Set.Icc x 1) := by
      intro y hy
      have hypos : 0 < y :=
        hxpos.trans_le (Set.mem_Icc.mp hy).1
      exact (hasDerivAt_pinskerScalarGap hypos).continuousAt.continuousWithinAt
    have hantitone : AntitoneOn pinskerScalarGap (Set.Icc x 1) := by
      apply antitoneOn_of_hasDerivWithinAt_nonpos
        (f' := derivative) (convex_Icc x 1) hcontinuous
      · intro y hy
        have hymem : y ∈ Set.Icc x (1 : ℝ) := interior_subset hy
        have hypos : 0 < y := hxpos.trans_le (Set.mem_Icc.mp hymem).1
        exact (hasDerivAt_pinskerScalarGap hypos).hasDerivWithinAt
      · intro y hy
        have hymem : y ∈ Set.Icc x (1 : ℝ) := interior_subset hy
        have hypos : 0 < y := hxpos.trans_le (Set.mem_Icc.mp hymem).1
        exact pinskerScalarGap_derivative_nonpos
          hypos (Set.mem_Icc.mp hymem).2
    have hbound := hantitone
      (show x ∈ Set.Icc x (1 : ℝ) from ⟨le_rfl, hxone⟩)
      (show (1 : ℝ) ∈ Set.Icc x 1 from ⟨hxone, le_rfl⟩) hxone
    simpa [pinskerScalarGap, InformationTheory.klFun] using hbound

theorem quadratic_le_klFun {x : ℝ} (hx : 0 ≤ x) :
    3 * (x - 1) ^ 2 / (2 * (x + 2)) ≤ InformationTheory.klFun x := by
  have h := pinskerScalarGap_nonneg hx
  dsimp [pinskerScalarGap] at h
  linarith

theorem quadratic_density_le_weighted_kl
    {p q : ℝ} (hp : 0 ≤ p) (hq : 0 < q) :
    3 * (p - q) ^ 2 / (2 * (p + 2 * q)) ≤
      q * InformationTheory.klFun (p / q) := by
  have hscalar := quadratic_le_klFun (div_nonneg hp hq.le)
  have hweighted := mul_le_mul_of_nonneg_left hscalar hq.le
  calc
    3 * (p - q) ^ 2 / (2 * (p + 2 * q)) =
        q * (3 * (p / q - 1) ^ 2 / (2 * (p / q + 2))) := by
      field_simp [hq.ne']
    _ ≤ q * InformationTheory.klFun (p / q) := hweighted

theorem finite_pinsker
    {ι : Type*} [Fintype ι]
    (p q : ι → ℝ)
    (hp : ∀ i, 0 ≤ p i)
    (hq : ∀ i, 0 < q i)
    (hp_normalized : (∑ i, p i) = 1)
    (hq_normalized : (∑ i, q i) = 1) :
    2 * (finiteTotalVariation p q) ^ 2 ≤ finiteRelativeEntropy p q := by
  classical
  let weight : ι → ℝ := fun i => (p i + 2 * q i) / 3
  have hweight : ∀ i, 0 < weight i := by
    intro i
    dsimp [weight]
    have hpi := hp i
    have hqi := hq i
    positivity
  have hweight_sum : (∑ i, weight i) = 1 := by
    dsimp [weight]
    calc
      (∑ i, (p i + 2 * q i) / 3) =
          ((∑ i, p i) + 2 * (∑ i, q i)) / 3 := by
        rw [← Finset.sum_div, Finset.sum_add_distrib, ← Finset.mul_sum]
      _ = 1 := by rw [hp_normalized, hq_normalized]; norm_num
  have hcauchy :
      (∑ i, |p i - q i|) ^ 2 ≤
        ∑ i, |p i - q i| ^ 2 / weight i := by
    have h := Finset.sq_sum_div_le_sum_sq_div
      (Finset.univ : Finset ι)
      (fun i => |p i - q i|)
      (g := weight)
      (fun i _ => hweight i)
    simpa [hweight_sum] using h
  have hpoint : ∀ i,
      |p i - q i| ^ 2 / weight i ≤
        2 * (q i * InformationTheory.klFun (p i / q i)) := by
    intro i
    have hdensity := quadratic_density_le_weighted_kl (hp i) (hq i)
    calc
      |p i - q i| ^ 2 / weight i =
          2 * (3 * (p i - q i) ^ 2 /
            (2 * (p i + 2 * q i))) := by
        dsimp [weight]
        rw [sq_abs]
        have hden : p i + 2 * q i ≠ 0 := by
          have hpi := hp i
          have hqi := hq i
          positivity
        field_simp [hden]
      _ ≤ 2 * (q i * InformationTheory.klFun (p i / q i)) :=
        mul_le_mul_of_nonneg_left hdensity (by norm_num)
  have hsum :
      (∑ i, |p i - q i| ^ 2 / weight i) ≤
        2 * finiteRelativeEntropy p q := by
    calc
      (∑ i, |p i - q i| ^ 2 / weight i) ≤
          ∑ i, 2 * (q i * InformationTheory.klFun (p i / q i)) :=
        Finset.sum_le_sum fun i _ => hpoint i
      _ = 2 * finiteRelativeEntropy p q := by
        unfold finiteRelativeEntropy
        rw [Finset.mul_sum]
  have hmain :
      (∑ i, |p i - q i|) ^ 2 ≤ 2 * finiteRelativeEntropy p q :=
    hcauchy.trans hsum
  unfold finiteTotalVariation
  nlinarith

theorem sum_over_positive_reference_support
    {ι : Type*} [Fintype ι]
    (q f : ι → ℝ)
    (hq : ∀ i, 0 ≤ q i)
    (hzero : ∀ i, q i = 0 → f i = 0) :
    (∑ i : {i : ι // 0 < q i}, f i) = ∑ i, f i := by
  classical
  calc
    (∑ i : {i : ι // 0 < q i}, f i) =
        ∑ i ∈ (Finset.univ.filter fun i : ι => 0 < q i), f i := by
      simpa using
        (Finset.sum_subtype_eq_sum_filter
          (s := (Finset.univ : Finset ι))
          (p := fun i : ι => 0 < q i) f)
    _ = ∑ i, f i := by
      apply Finset.sum_filter_of_ne
      intro i _ hfi
      have hqi : q i ≠ 0 := by
        intro hqi
        exact hfi (hzero i hqi)
      exact lt_of_le_of_ne (hq i) hqi.symm

theorem finite_pinsker_of_absolute_continuity
    {ι : Type*} [Fintype ι]
    (p q : ι → ℝ)
    (hp : ∀ i, 0 ≤ p i)
    (hq : ∀ i, 0 ≤ q i)
    (absolute_continuity : ∀ i, q i = 0 → p i = 0)
    (hp_normalized : (∑ i, p i) = 1)
    (hq_normalized : (∑ i, q i) = 1) :
    2 * (finiteTotalVariation p q) ^ 2 ≤ finiteRelativeEntropy p q := by
  classical
  let p' : {i : ι // 0 < q i} → ℝ := fun i => p i
  let q' : {i : ι // 0 < q i} → ℝ := fun i => q i
  have hp'_nonnegative : ∀ i, 0 ≤ p' i := fun i => hp i
  have hq'_positive : ∀ i, 0 < q' i := fun i => i.property
  have hp'_normalized : (∑ i, p' i) = 1 := by
    change (∑ i : {i : ι // 0 < q i}, p i) = 1
    rw [sum_over_positive_reference_support q p hq absolute_continuity,
      hp_normalized]
  have hq'_normalized : (∑ i, q' i) = 1 := by
    change (∑ i : {i : ι // 0 < q i}, q i) = 1
    rw [sum_over_positive_reference_support q q hq (fun _ h => h),
      hq_normalized]
  have htv : finiteTotalVariation p' q' = finiteTotalVariation p q := by
    unfold finiteTotalVariation
    change
      (∑ i : {i : ι // 0 < q i}, |p i - q i|) / 2 =
        (∑ i, |p i - q i|) / 2
    rw [sum_over_positive_reference_support
      q (fun i => |p i - q i|) hq]
    intro i hqi
    simp [hqi, absolute_continuity i hqi]
  have hkl : finiteRelativeEntropy p' q' = finiteRelativeEntropy p q := by
    unfold finiteRelativeEntropy
    change
      (∑ i : {i : ι // 0 < q i},
        q i * InformationTheory.klFun (p i / q i)) =
      ∑ i, q i * InformationTheory.klFun (p i / q i)
    apply sum_over_positive_reference_support
      q (fun i => q i * InformationTheory.klFun (p i / q i)) hq
    intro i hqi
    simp [hqi]
  have h := finite_pinsker p' q'
    hp'_nonnegative hq'_positive hp'_normalized hq'_normalized
  rwa [htv, hkl] at h

theorem finite_pinsker_sqrt_of_absolute_continuity
    {ι : Type*} [Fintype ι]
    (p q : ι → ℝ)
    (hp : ∀ i, 0 ≤ p i)
    (hq : ∀ i, 0 ≤ q i)
    (absolute_continuity : ∀ i, q i = 0 → p i = 0)
    (hp_normalized : (∑ i, p i) = 1)
    (hq_normalized : (∑ i, q i) = 1) :
    finiteTotalVariation p q ≤
      Real.sqrt (finiteRelativeEntropy p q / 2) := by
  apply Real.le_sqrt_of_sq_le
  have h := finite_pinsker_of_absolute_continuity
    p q hp hq absolute_continuity hp_normalized hq_normalized
  nlinarith

end Pinsker

end

noncomputable section

open scoped BigOperators

set_option backward.isDefEq.respectTransparency false
set_option maxHeartbeats 1600000
set_option maxRecDepth 2048

open QuantumParallelRepetition.Pinsker
open QuantumParallelRepetition.ClassicalInformation
open QuantumParallelRepetition.ClassicalSampling

attribute [local instance] Classical.propDecidable

variable {X Y A B : Type*}
variable [Fintype X] [Fintype Y] [Fintype A] [Fintype B]

theorem conditionedEventDistribution_nonneg
    {Ω : Type*} [Fintype Ω]
    (law : FiniteEventLaw Ω) (event : Finset Ω)
    (positive : 0 < law.eventMass event) (ω : Ω) :
    0 ≤ conditionedEventDistribution law event ω := by
  unfold conditionedEventDistribution
  split_ifs
  · exact div_nonneg (law.weight_nonneg ω) positive.le
  · exact le_rfl

theorem conditionedEventDistribution_sum
    {Ω : Type*} [Fintype Ω]
    (law : FiniteEventLaw Ω) (event : Finset Ω)
    (positive : 0 < law.eventMass event) :
    (∑ ω : Ω, conditionedEventDistribution law event ω) = 1 := by
  classical
  unfold conditionedEventDistribution
  calc
    (∑ ω : Ω,
      if ω ∈ event then law.weight ω / law.eventMass event else 0) =
      (∑ ω ∈ event, law.weight ω) / law.eventMass event := by
      rw [Finset.sum_div]
      simp
    _ = 1 := by
      change law.eventMass event / law.eventMass event = 1
      exact div_self positive.ne'

end

noncomputable section

open scoped BigOperators

open QuantumParallelRepetition.Pinsker
open QuantumParallelRepetition.ClassicalInformation

attribute [local instance] Classical.propDecidable

theorem groupedMass_nonneg
    {Ω κ : Type*} [Fintype Ω] [Fintype κ] [DecidableEq κ]
    (f : Ω → κ) (p : Ω → ℝ)
    (hp : ∀ ω, 0 ≤ p ω) (a : κ) :
    0 ≤ groupedMass f p a := by
  unfold groupedMass
  exact Finset.sum_nonneg (fun ω _ => hp ω)

end

noncomputable section

open scoped BigOperators

set_option backward.isDefEq.respectTransparency false
set_option maxHeartbeats 1600000
set_option maxRecDepth 2048

open QuantumParallelRepetition.Pinsker
open QuantumParallelRepetition.ClassicalInformation

attribute [local instance] Classical.propDecidable

variable {X Y A B : Type*}
variable [Fintype X] [Fintype Y] [Fintype A] [Fintype B]

theorem groupedMass_sum
    {Ω κ : Type*} [Fintype Ω] [Fintype κ] [DecidableEq κ]
    (projection : Ω → κ) (mass : Ω → ℝ) :
    (∑ a : κ, groupedMass projection mass a) =
      ∑ ω : Ω, mass ω := by
  unfold groupedMass
  exact Finset.sum_fiberwise Finset.univ projection mass

end

noncomputable section

open scoped BigOperators

set_option backward.isDefEq.respectTransparency false
set_option maxHeartbeats 1600000
set_option maxRecDepth 2048

open QuantumParallelRepetition.Pinsker
open QuantumParallelRepetition.ClassicalInformation

attribute [local instance] Classical.propDecidable

variable {X Y A B : Type*}
variable [Fintype X] [Fintype Y] [Fintype A] [Fintype B]

theorem exactRemainingSeedWeight_sum
    {n : ℕ} (D : Finset (Fin n))
    (remaining : 0 < (Finset.univ \ D).card) :
    (∑ seed : ExactRemainingSeed D,
      exactSeedWeight seed) = 1 := by
  apply exactSeedWeight_sum
  simpa using remaining

theorem exactPostselectedJointLaw_nonneg
    (G : Game X Y A B) (n : ℕ) (S : Strategy (G.repeat n))
    (D : Finset (Fin n))
    (positive : 0 < repeatedPostselectionMass G n S D)
    (q : ExactJointOutcome X Y A B D) :
    0 ≤ exactPostselectedJointLaw G n S D q := by
  apply mul_nonneg (exactSeedWeight_nonneg q.1)
  exact conditionedEventDistribution_nonneg
    (strategyEventLaw (G.repeat n) S)
    (FiniteEventLaw.winEvent (repeatedCoordinateWin G n) D)
    positive q.2

theorem exactPostselectedJointLaw_sum
    (G : Game X Y A B) (n : ℕ) (S : Strategy (G.repeat n))
    (D : Finset (Fin n))
    (remaining : 0 < (Finset.univ \ D).card)
    (positive : 0 < repeatedPostselectionMass G n S D) :
    (∑ q : ExactJointOutcome X Y A B D,
      exactPostselectedJointLaw G n S D q) = 1 := by
  have hconditional_sum :
      (∑ outcome : ExactOutcome X Y A B n,
        repeatedConditionedOutcomeLaw G n S D outcome) = 1 := by
    exact conditionedEventDistribution_sum
      (strategyEventLaw (G.repeat n) S)
      (FiniteEventLaw.winEvent (repeatedCoordinateWin G n) D)
      positive
  unfold exactPostselectedJointLaw
  rw [Fintype.sum_prod_type]
  calc
    (∑ seed : ExactRemainingSeed D,
      ∑ outcome : ExactOutcome X Y A B n,
        exactSeedWeight seed *
          repeatedConditionedOutcomeLaw G n S D outcome) =
      ∑ seed : ExactRemainingSeed D,
        exactSeedWeight seed *
          (∑ outcome : ExactOutcome X Y A B n,
            repeatedConditionedOutcomeLaw G n S D outcome) := by
          simp_rw [Finset.mul_sum]
    _ = ∑ seed : ExactRemainingSeed D,
        exactSeedWeight seed := by
          rw [hconditional_sum]
          simp
    _ = 1 := exactRemainingSeedWeight_sum D remaining

theorem exactSourcePushforward_nonneg
    {K : Type*} [Fintype K]
    (G : Game X Y A B) (n : ℕ) (S : Strategy (G.repeat n))
    (D : Finset (Fin n))
    (positive : 0 < repeatedPostselectionMass G n S D)
    (projection : ExactJointOutcome X Y A B D → K)
    (k : K) :
    0 ≤ exactSourcePushforward G n S D projection k := by
  exact groupedMass_nonneg projection
    (exactPostselectedJointLaw G n S D)
    (exactPostselectedJointLaw_nonneg G n S D positive) k

theorem exactSourcePushforward_sum
    {K : Type*} [Fintype K]
    (G : Game X Y A B) (n : ℕ) (S : Strategy (G.repeat n))
    (D : Finset (Fin n))
    (remaining : 0 < (Finset.univ \ D).card)
    (positive : 0 < repeatedPostselectionMass G n S D)
    (projection : ExactJointOutcome X Y A B D → K) :
    (∑ k : K,
      exactSourcePushforward G n S D projection k) = 1 := by
  unfold exactSourcePushforward
  rw [groupedMass_sum]
  exact exactPostselectedJointLaw_sum
    G n S D remaining positive

end

noncomputable section

open scoped BigOperators

set_option backward.isDefEq.respectTransparency false
set_option maxHeartbeats 1600000
set_option maxRecDepth 2048

open QuantumParallelRepetition.Pinsker
open QuantumParallelRepetition.ClassicalInformation
open QuantumParallelRepetition.ClassicalSampling

attribute [local instance] Classical.propDecidable

variable {X Y A B : Type*}
variable [Fintype X] [Fintype Y] [Fintype A] [Fintype B]

theorem exactLocallySampleableLaw_nonneg
    (G : Game X Y A B) (n : ℕ) (S : Strategy (G.repeat n))
    (D : Finset (Fin n))
    (positive : 0 < repeatedPostselectionMass G n S D)
    (t : ExactLocallySampleableTuple X Y A B D) :
    0 ≤ exactLocallySampleableLaw G n S D t :=
  exactSourcePushforward_nonneg G n S D positive
    (exactLocallySampleableCode D) t

theorem exactLocallySampleableLaw_sum
    (G : Game X Y A B) (n : ℕ) (S : Strategy (G.repeat n))
    (D : Finset (Fin n))
    (remaining : 0 < (Finset.univ \ D).card)
    (positive : 0 < repeatedPostselectionMass G n S D) :
    (∑ t : ExactLocallySampleableTuple X Y A B D,
      exactLocallySampleableLaw G n S D t) = 1 :=
  exactSourcePushforward_sum G n S D remaining positive
    (exactLocallySampleableCode D)

theorem exactLocallySampleableLaw_eq_zero_of_question_zero
    (G : Game X Y A B) (n : ℕ) (S : Strategy (G.repeat n))
    (D : Finset (Fin n))
    (i : SourceRemainingCoordinate D) (x : X) (y : Y)
    (r : ExactHistoryFlag X Y A B D)
    (zero : G.questionWeight x y = 0) :
    exactLocallySampleableLaw G n S D (i, x, y, r) = 0 := by
  classical
  unfold exactLocallySampleableLaw
    exactSourcePushforward groupedMass
  apply Finset.sum_eq_zero
  intro q hq
  have hcode :
      exactLocallySampleableCode D q = (i, x, y, r) := by
    exact ((@Finset.mem_filter
      (ExactJointOutcome X Y A B D)
      (fun a => exactLocallySampleableCode D a = (i, x, y, r))
      (fun _ => Classical.propDecidable _)
      Finset.univ q).mp hq).2
  have hx : q.2.1 q.1.coordinate.val = x :=
    congrArg
      (fun t : ExactLocallySampleableTuple X Y A B D =>
        t.2.1) hcode
  have hy : q.2.2.1 q.1.coordinate.val = y :=
    congrArg
      (fun t : ExactLocallySampleableTuple X Y A B D =>
        t.2.2.1) hcode
  have hproduct :
      (G.repeat n).questionWeight q.2.1 q.2.2.1 = 0 := by
    rw [Game.repeat_questionWeight]
    apply Finset.prod_eq_zero
      (Finset.mem_univ q.1.coordinate.val)
    simpa [hx, hy] using zero
  have hprod :
      (∏ j : Fin n,
        G.questionWeight (q.2.1 j) (q.2.2.1 j)) = 0 := by
    simpa only [Game.repeat_questionWeight] using hproduct
  simp [exactPostselectedJointLaw,
    repeatedConditionedOutcomeLaw,
    conditionedEventDistribution,
    strategyEventLaw, hprod]

theorem exactAliceLocalMass_nonneg
    {n : ℕ} (D : Finset (Fin n))
    (Q : ExactLocallySampleableTuple X Y A B D → ℝ)
    (nonnegative : ∀ t, 0 ≤ Q t)
    (i : SourceRemainingCoordinate D) (x : X) :
    0 ≤ exactAliceLocalMass D Q i x := by
  unfold exactAliceLocalMass
  exact Finset.sum_nonneg
    (fun r _ => Finset.sum_nonneg (fun y _ => nonnegative (i, x, y, r)))

theorem exactBobLocalMass_nonneg
    {n : ℕ} (D : Finset (Fin n))
    (Q : ExactLocallySampleableTuple X Y A B D → ℝ)
    (nonnegative : ∀ t, 0 ≤ Q t)
    (i : SourceRemainingCoordinate D) (y : Y) :
    0 ≤ exactBobLocalMass D Q i y := by
  unfold exactBobLocalMass
  exact Finset.sum_nonneg
    (fun r _ => Finset.sum_nonneg (fun x _ => nonnegative (i, x, y, r)))

theorem exactAliceLocalConditional_nonneg
    {n : ℕ} (D : Finset (Fin n))
    (base : ExactHistoryFlag X Y A B D)
    (Q : ExactLocallySampleableTuple X Y A B D → ℝ)
    (nonnegative : ∀ t, 0 ≤ Q t)
    (i : SourceRemainingCoordinate D) (x : X)
    (r : ExactHistoryFlag X Y A B D) :
    0 ≤ exactAliceLocalConditional D base Q i x r := by
  unfold exactAliceLocalConditional
  split_ifs with hmass hbase
  · exact zero_le_one
  · exact le_rfl
  · exact div_nonneg
      (Finset.sum_nonneg (fun y _ => nonnegative (i, x, y, r)))
      (exactAliceLocalMass_nonneg D Q nonnegative i x)

theorem exactBobLocalConditional_nonneg
    {n : ℕ} (D : Finset (Fin n))
    (base : ExactHistoryFlag X Y A B D)
    (Q : ExactLocallySampleableTuple X Y A B D → ℝ)
    (nonnegative : ∀ t, 0 ≤ Q t)
    (i : SourceRemainingCoordinate D) (y : Y)
    (r : ExactHistoryFlag X Y A B D) :
    0 ≤ exactBobLocalConditional D base Q i y r := by
  unfold exactBobLocalConditional
  split_ifs with hmass hbase
  · exact zero_le_one
  · exact le_rfl
  · exact div_nonneg
      (Finset.sum_nonneg (fun x _ => nonnegative (i, x, y, r)))
      (exactBobLocalMass_nonneg D Q nonnegative i y)

theorem exactAliceLocalMass_zero_apply
    {n : ℕ} (D : Finset (Fin n))
    (Q : ExactLocallySampleableTuple X Y A B D → ℝ)
    (nonnegative : ∀ t, 0 ≤ Q t)
    (i : SourceRemainingCoordinate D) (x : X)
    (y : Y) (r : ExactHistoryFlag X Y A B D)
    (zero : exactAliceLocalMass D Q i x = 0) :
    Q (i, x, y, r) = 0 := by
  change
    (∑ r : ExactHistoryFlag X Y A B D,
      ∑ y : Y, Q (i, x, y, r)) = 0 at zero
  have hr : (∑ y : Y, Q (i, x, y, r)) = 0 :=
    (Finset.sum_eq_zero_iff_of_nonneg
      (fun r _ => Finset.sum_nonneg
        (fun y _ => nonnegative (i, x, y, r)))).mp
          zero r (Finset.mem_univ r)
  exact (Finset.sum_eq_zero_iff_of_nonneg
    (fun y _ => nonnegative (i, x, y, r))).mp
      hr y (Finset.mem_univ y)

theorem exactBobLocalMass_zero_apply
    {n : ℕ} (D : Finset (Fin n))
    (Q : ExactLocallySampleableTuple X Y A B D → ℝ)
    (nonnegative : ∀ t, 0 ≤ Q t)
    (i : SourceRemainingCoordinate D) (x : X)
    (y : Y) (r : ExactHistoryFlag X Y A B D)
    (zero : exactBobLocalMass D Q i y = 0) :
    Q (i, x, y, r) = 0 := by
  change
    (∑ r : ExactHistoryFlag X Y A B D,
      ∑ x : X, Q (i, x, y, r)) = 0 at zero
  have hr : (∑ x : X, Q (i, x, y, r)) = 0 :=
    (Finset.sum_eq_zero_iff_of_nonneg
      (fun r _ => Finset.sum_nonneg
        (fun x _ => nonnegative (i, x, y, r)))).mp
          zero r (Finset.mem_univ r)
  exact (Finset.sum_eq_zero_iff_of_nonneg
    (fun x _ => nonnegative (i, x, y, r))).mp
      hr x (Finset.mem_univ x)

theorem exactAliceLocalConditional_zero_apply
    {n : ℕ} (D : Finset (Fin n))
    (base : ExactHistoryFlag X Y A B D)
    (Q : ExactLocallySampleableTuple X Y A B D → ℝ)
    (nonnegative : ∀ t, 0 ≤ Q t)
    (i : SourceRemainingCoordinate D) (x : X)
    (y : Y) (r : ExactHistoryFlag X Y A B D)
    (zero : exactAliceLocalConditional D base Q i x r = 0) :
    Q (i, x, y, r) = 0 := by
  by_cases hmass : exactAliceLocalMass D Q i x = 0
  · exact exactAliceLocalMass_zero_apply
      D Q nonnegative i x y r hmass
  · unfold exactAliceLocalConditional at zero
    rw [if_neg hmass] at zero
    have hfiber : (∑ y : Y, Q (i, x, y, r)) = 0 :=
      (div_eq_zero_iff.mp zero).resolve_right hmass
    exact (Finset.sum_eq_zero_iff_of_nonneg
      (fun y _ => nonnegative (i, x, y, r))).mp
        hfiber y (Finset.mem_univ y)

theorem exactBobLocalConditional_zero_apply
    {n : ℕ} (D : Finset (Fin n))
    (base : ExactHistoryFlag X Y A B D)
    (Q : ExactLocallySampleableTuple X Y A B D → ℝ)
    (nonnegative : ∀ t, 0 ≤ Q t)
    (i : SourceRemainingCoordinate D) (x : X)
    (y : Y) (r : ExactHistoryFlag X Y A B D)
    (zero : exactBobLocalConditional D base Q i y r = 0) :
    Q (i, x, y, r) = 0 := by
  by_cases hmass : exactBobLocalMass D Q i y = 0
  · exact exactBobLocalMass_zero_apply
      D Q nonnegative i x y r hmass
  · unfold exactBobLocalConditional at zero
    rw [if_neg hmass] at zero
    have hfiber : (∑ x : X, Q (i, x, y, r)) = 0 :=
      (div_eq_zero_iff.mp zero).resolve_right hmass
    exact (Finset.sum_eq_zero_iff_of_nonneg
      (fun x _ => nonnegative (i, x, y, r))).mp
        hfiber x (Finset.mem_univ x)

theorem exactAliceLocalConditional_sum
    {n : ℕ} (D : Finset (Fin n))
    (base : ExactHistoryFlag X Y A B D)
    (Q : ExactLocallySampleableTuple X Y A B D → ℝ)
    (i : SourceRemainingCoordinate D) (x : X) :
    (∑ r : ExactHistoryFlag X Y A B D,
      exactAliceLocalConditional D base Q i x r) = 1 := by
  unfold exactAliceLocalConditional
  split_ifs with hmass
  · simp
  · rw [← Finset.sum_div]
    exact div_self hmass

theorem exactBobLocalConditional_sum
    {n : ℕ} (D : Finset (Fin n))
    (base : ExactHistoryFlag X Y A B D)
    (Q : ExactLocallySampleableTuple X Y A B D → ℝ)
    (i : SourceRemainingCoordinate D) (y : Y) :
    (∑ r : ExactHistoryFlag X Y A B D,
      exactBobLocalConditional D base Q i y r) = 1 := by
  unfold exactBobLocalConditional
  split_ifs with hmass
  · simp
  · rw [← Finset.sum_div]
    exact div_self hmass

theorem exactLocallySampleableJA_nonneg
    (G : Game X Y A B) (n : ℕ) (S : Strategy (G.repeat n))
    (D : Finset (Fin n))
    (positive : 0 < repeatedPostselectionMass G n S D)
    (base : ExactHistoryFlag X Y A B D)
    (t : ExactLocallySampleableTuple X Y A B D) :
    0 ≤ exactLocallySampleableJA G n S D base t := by
  unfold exactLocallySampleableJA
  exact div_nonneg
    (mul_nonneg (G.weight_nonneg t.2.1 t.2.2.1)
      (exactAliceLocalConditional_nonneg D base
        (exactLocallySampleableLaw G n S D)
        (exactLocallySampleableLaw_nonneg G n S D positive)
        t.1 t.2.1 t.2.2.2))
    (Nat.cast_nonneg _)

theorem exactLocallySampleableJB_nonneg
    (G : Game X Y A B) (n : ℕ) (S : Strategy (G.repeat n))
    (D : Finset (Fin n))
    (positive : 0 < repeatedPostselectionMass G n S D)
    (base : ExactHistoryFlag X Y A B D)
    (t : ExactLocallySampleableTuple X Y A B D) :
    0 ≤ exactLocallySampleableJB G n S D base t := by
  unfold exactLocallySampleableJB
  exact div_nonneg
    (mul_nonneg (G.weight_nonneg t.2.1 t.2.2.1)
      (exactBobLocalConditional_nonneg D base
        (exactLocallySampleableLaw G n S D)
        (exactLocallySampleableLaw_nonneg G n S D positive)
        t.1 t.2.2.1 t.2.2.2))
    (Nat.cast_nonneg _)

theorem exactLocallySampleableJA_sum
    (G : Game X Y A B) (n : ℕ) (S : Strategy (G.repeat n))
    (D : Finset (Fin n))
    (remaining : 0 < (Finset.univ \ D).card)
    (base : ExactHistoryFlag X Y A B D) :
    (∑ t : ExactLocallySampleableTuple X Y A B D,
      exactLocallySampleableJA G n S D base t) = 1 := by
  have hcard :
      (Fintype.card (SourceRemainingCoordinate D) : ℝ) ≠ 0 := by
    exact_mod_cast
      (Nat.ne_of_gt (exactRemainingCoordinate_card_pos D remaining))
  calc
    (∑ t : ExactLocallySampleableTuple X Y A B D,
      exactLocallySampleableJA G n S D base t) =
      (∑ i : SourceRemainingCoordinate D,
        ∑ x : X, ∑ y : Y,
          G.questionWeight x y *
            (∑ r : ExactHistoryFlag X Y A B D,
              exactAliceLocalConditional D base
                (exactLocallySampleableLaw G n S D) i x r)) /
        (Fintype.card (SourceRemainingCoordinate D) : ℝ) := by
      simp only [exactLocallySampleableJA,
        Fintype.sum_prod_type]
      simp_rw [← Finset.sum_div]
      congr 1
      apply Finset.sum_congr rfl
      intro i _
      apply Finset.sum_congr rfl
      intro x _
      apply Finset.sum_congr rfl
      intro y _
      rw [Finset.mul_sum]
    _ = (∑ i : SourceRemainingCoordinate D,
        ∑ x : X, ∑ y : Y, G.questionWeight x y) /
        (Fintype.card (SourceRemainingCoordinate D) : ℝ) := by
      simp_rw [exactAliceLocalConditional_sum, mul_one]
    _ = 1 := by
      simp_rw [G.weight_normalized]
      simp only [Finset.sum_const, Finset.card_univ,
        nsmul_eq_mul, mul_one]
      exact div_self hcard

theorem exactLocallySampleableJB_sum
    (G : Game X Y A B) (n : ℕ) (S : Strategy (G.repeat n))
    (D : Finset (Fin n))
    (remaining : 0 < (Finset.univ \ D).card)
    (base : ExactHistoryFlag X Y A B D) :
    (∑ t : ExactLocallySampleableTuple X Y A B D,
      exactLocallySampleableJB G n S D base t) = 1 := by
  have hcard :
      (Fintype.card (SourceRemainingCoordinate D) : ℝ) ≠ 0 := by
    exact_mod_cast
      (Nat.ne_of_gt (exactRemainingCoordinate_card_pos D remaining))
  calc
    (∑ t : ExactLocallySampleableTuple X Y A B D,
      exactLocallySampleableJB G n S D base t) =
      (∑ i : SourceRemainingCoordinate D,
        ∑ x : X, ∑ y : Y,
          G.questionWeight x y *
            (∑ r : ExactHistoryFlag X Y A B D,
              exactBobLocalConditional D base
                (exactLocallySampleableLaw G n S D) i y r)) /
        (Fintype.card (SourceRemainingCoordinate D) : ℝ) := by
      simp only [exactLocallySampleableJB,
        Fintype.sum_prod_type]
      simp_rw [← Finset.sum_div]
      congr 1
      apply Finset.sum_congr rfl
      intro i _
      apply Finset.sum_congr rfl
      intro x _
      apply Finset.sum_congr rfl
      intro y _
      rw [Finset.mul_sum]
    _ = (∑ i : SourceRemainingCoordinate D,
        ∑ x : X, ∑ y : Y, G.questionWeight x y) /
        (Fintype.card (SourceRemainingCoordinate D) : ℝ) := by
      simp_rw [exactBobLocalConditional_sum, mul_one]
    _ = 1 := by
      simp_rw [G.weight_normalized]
      simp only [Finset.sum_const, Finset.card_univ,
        nsmul_eq_mul, mul_one]
      exact div_self hcard

theorem exactLocallySampleableLaw_absolute_continuous_JA
    (G : Game X Y A B) (n : ℕ) (S : Strategy (G.repeat n))
    (D : Finset (Fin n))
    (remaining : 0 < (Finset.univ \ D).card)
    (positive : 0 < repeatedPostselectionMass G n S D)
    (base : ExactHistoryFlag X Y A B D)
    (t : ExactLocallySampleableTuple X Y A B D) :
    exactLocallySampleableJA G n S D base t = 0 →
      exactLocallySampleableLaw G n S D t = 0 := by
  rcases t with ⟨i, x, y, r⟩
  intro zero
  have hcard :
      (Fintype.card (SourceRemainingCoordinate D) : ℝ) ≠ 0 := by
    exact_mod_cast
      (Nat.ne_of_gt (exactRemainingCoordinate_card_pos D remaining))
  change
    G.questionWeight x y *
      exactAliceLocalConditional D base
        (exactLocallySampleableLaw G n S D) i x r /
        (Fintype.card (SourceRemainingCoordinate D) : ℝ) = 0 at zero
  have hproduct :
      G.questionWeight x y *
        exactAliceLocalConditional D base
          (exactLocallySampleableLaw G n S D) i x r = 0 :=
    (div_eq_zero_iff.mp zero).resolve_right hcard
  rcases mul_eq_zero.mp hproduct with hquestion | hconditional
  · exact exactLocallySampleableLaw_eq_zero_of_question_zero
      G n S D i x y r hquestion
  · exact exactAliceLocalConditional_zero_apply D base
      (exactLocallySampleableLaw G n S D)
      (exactLocallySampleableLaw_nonneg G n S D positive)
      i x y r hconditional

theorem exactLocallySampleableLaw_absolute_continuous_JB
    (G : Game X Y A B) (n : ℕ) (S : Strategy (G.repeat n))
    (D : Finset (Fin n))
    (remaining : 0 < (Finset.univ \ D).card)
    (positive : 0 < repeatedPostselectionMass G n S D)
    (base : ExactHistoryFlag X Y A B D)
    (t : ExactLocallySampleableTuple X Y A B D) :
    exactLocallySampleableJB G n S D base t = 0 →
      exactLocallySampleableLaw G n S D t = 0 := by
  rcases t with ⟨i, x, y, r⟩
  intro zero
  have hcard :
      (Fintype.card (SourceRemainingCoordinate D) : ℝ) ≠ 0 := by
    exact_mod_cast
      (Nat.ne_of_gt (exactRemainingCoordinate_card_pos D remaining))
  change
    G.questionWeight x y *
      exactBobLocalConditional D base
        (exactLocallySampleableLaw G n S D) i y r /
        (Fintype.card (SourceRemainingCoordinate D) : ℝ) = 0 at zero
  have hproduct :
      G.questionWeight x y *
        exactBobLocalConditional D base
          (exactLocallySampleableLaw G n S D) i y r = 0 :=
    (div_eq_zero_iff.mp zero).resolve_right hcard
  rcases mul_eq_zero.mp hproduct with hquestion | hconditional
  · exact exactLocallySampleableLaw_eq_zero_of_question_zero
      G n S D i x y r hquestion
  · exact exactBobLocalConditional_zero_apply D base
      (exactLocallySampleableLaw G n S D)
      (exactLocallySampleableLaw_nonneg G n S D positive)
      i x y r hconditional

theorem exactLocallySampleableJA_pinsker
    (G : Game X Y A B) (n : ℕ) (S : Strategy (G.repeat n))
    (D : Finset (Fin n))
    (remaining : 0 < (Finset.univ \ D).card)
    (positive : 0 < repeatedPostselectionMass G n S D)
    (base : ExactHistoryFlag X Y A B D) :
    finiteTotalVariation
        (exactLocallySampleableLaw G n S D)
        (exactLocallySampleableJA G n S D base) ≤
      Real.sqrt
        (finiteRelativeEntropy
          (exactLocallySampleableLaw G n S D)
          (exactLocallySampleableJA G n S D base) / 2) := by
  exact finite_pinsker_sqrt_of_absolute_continuity
    (exactLocallySampleableLaw G n S D)
    (exactLocallySampleableJA G n S D base)
    (exactLocallySampleableLaw_nonneg G n S D positive)
    (exactLocallySampleableJA_nonneg G n S D positive base)
    (exactLocallySampleableLaw_absolute_continuous_JA
      G n S D remaining positive base)
    (exactLocallySampleableLaw_sum
      G n S D remaining positive)
    (exactLocallySampleableJA_sum G n S D remaining base)

theorem exactLocallySampleableJB_pinsker
    (G : Game X Y A B) (n : ℕ) (S : Strategy (G.repeat n))
    (D : Finset (Fin n))
    (remaining : 0 < (Finset.univ \ D).card)
    (positive : 0 < repeatedPostselectionMass G n S D)
    (base : ExactHistoryFlag X Y A B D) :
    finiteTotalVariation
        (exactLocallySampleableLaw G n S D)
        (exactLocallySampleableJB G n S D base) ≤
      Real.sqrt
        (finiteRelativeEntropy
          (exactLocallySampleableLaw G n S D)
          (exactLocallySampleableJB G n S D base) / 2) := by
  exact finite_pinsker_sqrt_of_absolute_continuity
    (exactLocallySampleableLaw G n S D)
    (exactLocallySampleableJB G n S D base)
    (exactLocallySampleableLaw_nonneg G n S D positive)
    (exactLocallySampleableJB_nonneg G n S D positive base)
    (exactLocallySampleableLaw_absolute_continuous_JB
      G n S D remaining positive base)
    (exactLocallySampleableLaw_sum
      G n S D remaining positive)
    (exactLocallySampleableJB_sum G n S D remaining base)

end

noncomputable section

open scoped BigOperators

set_option backward.isDefEq.respectTransparency false
set_option maxHeartbeats 1600000
set_option maxRecDepth 2048

open QuantumParallelRepetition.Pinsker
open QuantumParallelRepetition.ClassicalInformation

attribute [local instance] Classical.propDecidable

variable {X Y A B : Type*}
variable [Fintype X] [Fintype Y] [Fintype A] [Fintype B]

theorem exact_source_alice_pinsker_of_classical_information
    (G : Game X Y A B) (n : ℕ) (S : Strategy (G.repeat n))
    (D : Finset (Fin n))
    (remaining : 0 < (Finset.univ \ D).card)
    (positive : 0 < repeatedPostselectionMass G n S D)
    (base : ExactHistoryFlag X Y A B D)
    (information :
      ExactSourceClassicalInformationBound G n S D base) :
    finiteTotalVariation
        (exactLocallySampleableLaw G n S D)
        (exactLocallySampleableJA G n S D base) ≤
      exactSourcePinskerRate G n S D := by
  calc
    _ ≤ Real.sqrt
      (finiteRelativeEntropy
        (exactLocallySampleableLaw G n S D)
        (exactLocallySampleableJA G n S D base) / 2) :=
      exactLocallySampleableJA_pinsker
        G n S D remaining positive base
    _ ≤ exactSourcePinskerRate G n S D := by
      unfold exactSourcePinskerRate
      apply Real.sqrt_le_sqrt
      exact div_le_div_of_nonneg_right information.1 (by norm_num)

theorem exact_source_bob_pinsker_of_classical_information
    (G : Game X Y A B) (n : ℕ) (S : Strategy (G.repeat n))
    (D : Finset (Fin n))
    (remaining : 0 < (Finset.univ \ D).card)
    (positive : 0 < repeatedPostselectionMass G n S D)
    (base : ExactHistoryFlag X Y A B D)
    (information :
      ExactSourceClassicalInformationBound G n S D base) :
    finiteTotalVariation
        (exactLocallySampleableLaw G n S D)
        (exactLocallySampleableJB G n S D base) ≤
      exactSourcePinskerRate G n S D := by
  calc
    _ ≤ Real.sqrt
      (finiteRelativeEntropy
        (exactLocallySampleableLaw G n S D)
        (exactLocallySampleableJB G n S D base) / 2) :=
      exactLocallySampleableJB_pinsker
        G n S D remaining positive base
    _ ≤ exactSourcePinskerRate G n S D := by
      unfold exactSourcePinskerRate
      apply Real.sqrt_le_sqrt
      exact div_le_div_of_nonneg_right information.2 (by norm_num)

end

end QuantumParallelRepetition


open QuantumParallelRepetition
open scoped ComplexOrder Matrix BigOperators InnerProductSpace
open Complex Matrix Finset
open scoped BigOperators
set_option backward.isDefEq.respectTransparency false
set_option maxHeartbeats 1600000
set_option maxRecDepth 2048
open QuantumParallelRepetition.Pinsker
open QuantumParallelRepetition.ClassicalSampling
open QuantumParallelRepetition.ClassicalInformation
attribute [local instance] Classical.propDecidable
variable {X Y A B : Type}
variable [Fintype X] [Fintype Y] [Fintype A] [Fintype B]

theorem
    solution
    (G : Game X Y A B) (n : ℕ) (S : Strategy (G.repeat n))
    (D : Finset (Fin n))
    (remaining : 0 < (Finset.univ \ D).card)
    (positive : 0 < repeatedPostselectionMass G n S D)
    (base : ExactHistoryFlag X Y A B D)
    (information : ExactSourceClassicalInformationBound
      G n S D base)
    {gamma : ℝ} (gamma_positive : 0 < gamma) :
    ExactSourceSupportPreservingClassicalSampler
      G n S D base (exactSourcePinskerRate G n S D) gamma := by
  exact exact_source_equation_twenty_seven_support_preserving
    G n S D remaining positive base gamma_positive
    (exact_source_alice_pinsker_of_classical_information
      G n S D remaining positive base information)
    (exact_source_bob_pinsker_of_classical_information
      G n S D remaining positive base information)
