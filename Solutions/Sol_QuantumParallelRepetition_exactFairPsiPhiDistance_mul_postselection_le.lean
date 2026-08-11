import Definitions.Def_quantum_parallel_repetition_game
import Definitions.Def_qpr_core_22
import Theorems.Thm_QuantumParallelRepetition_exactSeedWeight_nonneg
import Theorems.Thm_QuantumParallelRepetition_exactAlicePurificationFamily_posSemidef
import Theorems.Thm_QuantumParallelRepetition_exactBobPurificationFamily_posSemidef
import Theorems.Thm_QuantumParallelRepetition_exactPaddedDefault_norm
import Theorems.Thm_QuantumParallelRepetition_exactGlobalHistoryVector_norm
import Theorems.Thm_QuantumParallelRepetition_exactLocallySampleableLaw_eq_fair_born
import Mathlib.Algebra.BigOperators.Group.Finset.Basic
import Mathlib.Algebra.BigOperators.Group.Finset.Defs
import Mathlib.Algebra.BigOperators.Group.Finset.Sigma
import Mathlib.Algebra.BigOperators.Ring.Finset
import Mathlib.Algebra.CharZero.Defs
import Mathlib.Algebra.Field.Defs
import Mathlib.Algebra.Group.Basic
import Mathlib.Algebra.Group.Defs
import Mathlib.Algebra.Group.Hom.Defs
import Mathlib.Algebra.Group.Pi.Basic
import Mathlib.Algebra.Group.Subgroup.Defs
import Mathlib.Algebra.GroupWithZero.Action.Defs
import Mathlib.Algebra.GroupWithZero.Basic
import Mathlib.Algebra.GroupWithZero.Defs
import Mathlib.Algebra.GroupWithZero.NeZero
import Mathlib.Algebra.GroupWithZero.Units.Basic
import Mathlib.Algebra.Module.Defs
import Mathlib.Algebra.Module.LinearMap.Defs
import Mathlib.Algebra.Module.Pi
import Mathlib.Algebra.Module.Submodule.Defs
import Mathlib.Algebra.NeZero
import Mathlib.Algebra.Order.BigOperators.Group.Finset
import Mathlib.Algebra.Order.Group.Unbundled.Abs
import Mathlib.Algebra.Order.GroupWithZero.Unbundled.Basic
import Mathlib.Algebra.Order.GroupWithZero.Unbundled.Defs
import Mathlib.Algebra.Order.Monoid.Defs
import Mathlib.Algebra.Order.Monoid.Unbundled.Basic
import Mathlib.Algebra.Order.Monoid.Unbundled.Defs
import Mathlib.Algebra.Order.Ring.Defs
import Mathlib.Algebra.Order.Ring.Unbundled.Basic
import Mathlib.Algebra.Order.Star.Basic
import Mathlib.Algebra.Order.ZeroLEOne
import Mathlib.Algebra.Ring.CompTypeclasses
import Mathlib.Algebra.Ring.Defs
import Mathlib.Algebra.Ring.Hom.Defs
import Mathlib.Algebra.Ring.Int.Defs
import Mathlib.Algebra.Ring.Nat
import Mathlib.Algebra.Star.Basic
import Mathlib.Analysis.CStarAlgebra.Classes
import Mathlib.Analysis.Complex.Basic
import Mathlib.Analysis.Complex.Norm
import Mathlib.Analysis.Complex.Order
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
import Mathlib.Analysis.Normed.Operator.LinearIsometry
import Mathlib.Analysis.Normed.Ring.Basic
import Mathlib.Analysis.RCLike.Basic
import Mathlib.Data.Complex.Basic
import Mathlib.Data.ENNReal.Basic
import Mathlib.Data.Finset.Attach
import Mathlib.Data.Finset.BooleanAlgebra
import Mathlib.Data.Finset.Defs
import Mathlib.Data.Finset.Filter
import Mathlib.Data.Finset.Insert
import Mathlib.Data.Finset.SDiff
import Mathlib.Data.Fintype.Basic
import Mathlib.Data.Fintype.BigOperators
import Mathlib.Data.Fintype.Card
import Mathlib.Data.Fintype.Defs
import Mathlib.Data.Fintype.Pi
import Mathlib.Data.Fintype.Prod
import Mathlib.Data.Fintype.Sets
import Mathlib.Data.Fintype.Sigma
import Mathlib.Data.Fintype.Sum
import Mathlib.Data.FunLike.Basic
import Mathlib.Data.FunLike.Equiv
import Mathlib.Data.Int.Cast.Defs
import Mathlib.Data.Matrix.Basic
import Mathlib.Data.Nat.Cast.Defs
import Mathlib.Data.Nat.Cast.Order.Ring
import Mathlib.Data.Nat.Init
import Mathlib.Data.Real.Basic
import Mathlib.Data.Real.Star
import Mathlib.Data.Real.StarOrdered
import Mathlib.Data.SetLike.Basic
import Mathlib.GroupTheory.GroupAction.Hom
import Mathlib.LinearAlgebra.Dimension.Finrank
import Mathlib.LinearAlgebra.Matrix.Defs
import Mathlib.LinearAlgebra.Matrix.Kronecker
import Mathlib.LinearAlgebra.Matrix.PosDef
import Mathlib.Logic.IsEmpty.Defs
import Mathlib.Logic.Unique
import Mathlib.MeasureTheory.Function.AEEqFun
import Mathlib.MeasureTheory.Function.LpSpace.Basic
import Mathlib.MeasureTheory.Measure.Haar.OfBasis
import Mathlib.MeasureTheory.Measure.MeasureSpace
import Mathlib.MeasureTheory.Measure.MeasureSpaceDef
import Mathlib.MeasureTheory.Measure.Restrict
import Mathlib.Order.Defs.LinearOrder
import Mathlib.Order.Defs.PartialOrder
import Mathlib.Order.Interval.Set.Defs
import Mathlib.Order.Lattice
import Mathlib.Order.RelClasses
import Mathlib.Tactic.Abel
import Mathlib.Tactic.FieldSimp.Lemmas
import Mathlib.Tactic.Linarith.Lemmas
import Mathlib.Tactic.NormNum.Basic
import Mathlib.Tactic.NormNum.Eq
import Mathlib.Tactic.NormNum.Ineq
import Mathlib.Tactic.NormNum.Result
import Mathlib.Tactic.Ring.Basic
import Mathlib.Tactic.Ring.Common
import Mathlib.Topology.Algebra.Group.Defs
import Mathlib.Topology.Defs.Filter
import Mathlib.Topology.MetricSpace.Algebra
import Mathlib.Topology.MetricSpace.Pseudo.Defs
import Mathlib.Topology.UniformSpace.Defs

namespace QuantumParallelRepetition

noncomputable section

open Matrix
open scoped BigOperators Kronecker ComplexOrder MatrixOrder

set_option backward.isDefEq.respectTransparency false
set_option maxHeartbeats 600000

section ActualHistoryWeights

variable {X Y A B : Type*}
variable [Fintype X] [Fintype Y] [Fintype A] [Fintype B]

theorem finite_sum_four_swap
    {I J K T : Type*}
    [Fintype I] [Fintype J] [Fintype K] [Fintype T]
    (f : I → J → K → T → ℝ) :
    (∑ i : I, ∑ j : J, ∑ k : K, ∑ t : T, f i j k t) =
      ∑ k : K, ∑ t : T, ∑ i : I, ∑ j : J, f i j k t := by
  classical
  calc
    (∑ i : I, ∑ j : J, ∑ k : K, ∑ t : T, f i j k t) =
      ∑ i : I, ∑ k : K, ∑ j : J, ∑ t : T, f i j k t := by
        apply Finset.sum_congr rfl
        intro i _
        rw [Finset.sum_comm]
    _ = ∑ k : K, ∑ i : I, ∑ j : J, ∑ t : T, f i j k t := by
      rw [Finset.sum_comm]
    _ = ∑ k : K, ∑ i : I, ∑ t : T, ∑ j : J, f i j k t := by
      apply Finset.sum_congr rfl
      intro k _
      apply Finset.sum_congr rfl
      intro i _
      rw [Finset.sum_comm]
    _ = ∑ k : K, ∑ t : T, ∑ i : I, ∑ j : J, f i j k t := by
      apply Finset.sum_congr rfl
      intro k _
      rw [Finset.sum_comm]

end ActualHistoryWeights

end

open scoped ComplexOrder Matrix BigOperators InnerProductSpace
open Complex Matrix Finset

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
open scoped BigOperators ComplexOrder Kronecker MatrixOrder
  Matrix.Norms.L2Operator InnerProductSpace

set_option backward.isDefEq.respectTransparency false
set_option maxHeartbeats 1800000
set_option maxRecDepth 2048

attribute [local instance] Classical.propDecidable

variable {X Y A B : Type*}
variable [Fintype X] [Fintype Y] [Fintype A] [Fintype B]

theorem exactPriorQuestionWeight_nonneg
    (G : Game X Y A B) (n : ℕ)
    (q : ExactFullQuestion X Y n) :
    0 ≤ exactPriorQuestionWeight G n q :=
  (G.repeat n).weight_nonneg q.1 q.2

theorem exactRevealMass_nonneg
    (G : Game X Y A B) (n : ℕ)
    (D : Finset (Fin n))
    (seed : ExactRemainingSeed D)
    (history : ExactRevealHistory X Y D seed) :
    0 ≤ exactRevealMass G n D seed history := by
  unfold exactRevealMass
  apply Finset.sum_nonneg
  intro q _
  split
  · exact exactPriorQuestionWeight_nonneg G n q
  · exact le_rfl

theorem exactPaddedVector_norm
    (G : Game X Y A B) (n : ℕ) (S : Strategy (G.repeat n))
    (D : Finset (Fin n))
    (r : ExactHistoryFlag X Y A B D)
    (z : EuclideanSpace ℂ
      (ExactAliceLocalIndex G n S D r ×
        ExactBobLocalIndex G n S D r)) :
    ‖exactPaddedVector G n S D r z‖ = ‖z‖ := by
  classical
  have hsquare :
      ‖exactPaddedVector G n S D r z‖ ^ 2 = ‖z‖ ^ 2 := by
    simp [EuclideanSpace.norm_sq_eq, exactPaddedVector,
      Fintype.sum_prod_type, Fintype.sum_sum_type]
  nlinarith [norm_nonneg (exactPaddedVector G n S D r z),
    norm_nonneg z]

theorem exactPaddedVector_sub
    (G : Game X Y A B) (n : ℕ) (S : Strategy (G.repeat n))
    (D : Finset (Fin n))
    (r : ExactHistoryFlag X Y A B D)
    (u v : EuclideanSpace ℂ
      (ExactAliceLocalIndex G n S D r ×
        ExactBobLocalIndex G n S D r)) :
    exactPaddedVector G n S D r (u - v) =
      exactPaddedVector G n S D r u -
        exactPaddedVector G n S D r v := by
  classical
  ext q
  rcases q with ⟨a, b⟩
  rcases a with a | (a | a) <;>
    rcases b with b | (b | b) <;>
    simp [exactPaddedVector]

end

noncomputable section

open scoped BigOperators ComplexOrder Kronecker MatrixOrder
  Matrix.Norms.L2Operator InnerProductSpace

set_option backward.isDefEq.respectTransparency false
set_option maxHeartbeats 1200000
set_option maxRecDepth 2048

section ActualPurificationHistories

variable {X Y A B : Type*}
variable [Fintype X] [Fintype Y] [Fintype A] [Fintype B]

theorem bornWeighted_normalized_distance
    {E : Type*} [NormedAddCommGroup E] [NormedSpace ℝ E]
    (fallback u v : E) (hfallback : ‖fallback‖ = 1) :
    ‖u‖ ^ 2 *
      ‖normalizeOrDefault fallback u -
        normalizeOrDefault fallback v‖ ^ 2 ≤
      4 * ‖u - v‖ ^ 2 := by
  by_cases hu : u = 0
  · simp [hu]
  · have hu_pos : 0 < ‖u‖ := norm_pos_iff.mpr hu
    have hdist := normalizeOrDefault_sub_le fallback u v hfallback hu
    have hscaled :
        ‖normalizeOrDefault fallback u -
          normalizeOrDefault fallback v‖ * ‖u‖ ≤
          2 * ‖u - v‖ :=
      (le_div_iff₀ hu_pos).mp hdist
    have hsquare := mul_self_le_mul_self
      (mul_nonneg (norm_nonneg _) (norm_nonneg u)) hscaled
    nlinarith [sq_nonneg
      (‖normalizeOrDefault fallback u -
        normalizeOrDefault fallback v‖ * ‖u‖),
      sq_nonneg (‖u - v‖)]

end ActualPurificationHistories

end

noncomputable section

open WithLp
open scoped BigOperators ComplexOrder Kronecker MatrixOrder
  Matrix.Norms.L2Operator InnerProductSpace

set_option backward.isDefEq.respectTransparency false
set_option maxHeartbeats 1600000
set_option maxRecDepth 2048

section TaggedTensorBlocks

variable {R : Type*} [Fintype R]
variable {ι : R → Type*} [∀ r, Fintype (ι r)]

theorem taggedTensorVector_sub
    (r : R) (u v : EuclideanSpace ℂ (ι r × ι r)) :
    taggedTensorVector r (u - v) =
      taggedTensorVector r u - taggedTensorVector r v := by
  classical
  ext q
  rcases q with ⟨a, b⟩
  rcases a with a | ⟨rA, a⟩
  · rcases b with b | ⟨rB, b⟩ <;>
      simp [taggedTensorVector]
  · rcases b with b | ⟨rB, b⟩
    · simp [taggedTensorVector]
    · by_cases hA : rA = r
      · subst rA
        by_cases hB : rB = r
        · subst rB
          simp [taggedTensorVector]
        · simp [taggedTensorVector, hB]
      · simp [taggedTensorVector, hA]

end TaggedTensorBlocks

variable {X Y A B : Type*}
variable [Fintype X] [Fintype Y] [Fintype A] [Fintype B]

end

noncomputable section

open scoped BigOperators Kronecker ComplexOrder MatrixOrder

set_option backward.isDefEq.respectTransparency false
set_option maxHeartbeats 1600000
set_option maxRecDepth 2048

attribute [local instance] Classical.propDecidable

variable {X Y A B : Type*}
variable [Fintype X] [Fintype Y] [Fintype A] [Fintype B]

theorem exactGlobalHistoryVector_sub
    (G : Game X Y A B) (n : ℕ) (S : Strategy (G.repeat n))
    (D : Finset (Fin n))
    (r : ExactHistoryFlag X Y A B D)
    (u v : EuclideanSpace ℂ
      (ExactPaddedLocalIndex G n S D r ×
        ExactPaddedLocalIndex G n S D r)) :
    exactGlobalHistoryVector G n S D r (u - v) =
      exactGlobalHistoryVector G n S D r u -
        exactGlobalHistoryVector G n S D r v :=
  taggedTensorVector_sub r u v

end

noncomputable section

open scoped BigOperators

set_option backward.isDefEq.respectTransparency false
set_option maxHeartbeats 1600000
set_option maxRecDepth 2048

attribute [local instance] Classical.propDecidable

variable {X Y A B : Type*}
variable [Fintype X] [Fintype Y] [Fintype A] [Fintype B]

theorem exactPsiPhi_BornWeighted_normalized_distance
    (G : Game X Y A B) (n : ℕ) (S : Strategy (G.repeat n))
    (D : Finset (Fin n))
    (r : ExactHistoryFlag X Y A B D)
    (x : X) (y : Y) :
    ‖exactUnnormalizedPsi G n S D r x y‖ ^ 2 *
      ‖exactPsi G n S D r x y -
        exactPhi G n S D r y‖ ^ 2 ≤
      4 * ‖exactUnnormalizedPsi G n S D r x y -
        exactUnnormalizedPhi G n S D r y‖ ^ 2 := by
  let fallback := exactPaddedDefault G n S D r
  let u := exactUnnormalizedPsi G n S D r x y
  let v := exactUnnormalizedPhi G n S D r y
  have h := bornWeighted_normalized_distance fallback
    (exactPaddedVector G n S D r u)
    (exactPaddedVector G n S D r v)
    (exactPaddedDefault_norm G n S D r)
  rw [exactPaddedVector_norm,
    ← exactPaddedVector_sub,
    exactPaddedVector_norm] at h
  exact h

end

noncomputable section

open scoped BigOperators ComplexOrder Kronecker MatrixOrder
  Matrix.Norms.L2Operator InnerProductSpace

set_option backward.isDefEq.respectTransparency false
set_option maxHeartbeats 1600000
set_option maxRecDepth 2048

attribute [local instance] Classical.propDecidable

variable {X Y A B : Type*}
variable [Fintype X] [Fintype Y] [Fintype A] [Fintype B]

theorem exactFairHistoryPriorWeight_nonneg
    (G : Game X Y A B) (n : ℕ)
    (D : Finset (Fin n))
    (r : ExactHistoryFlag X Y A B D) :
    0 ≤ exactFairHistoryPriorWeight G n D r := by
  exact mul_nonneg (exactSeedWeight_nonneg r.seed)
    (exactRevealMass_nonneg G n D r.seed r.history)

end

noncomputable section

open scoped BigOperators ComplexOrder Kronecker MatrixOrder
  Matrix.Norms.L2Operator InnerProductSpace

set_option backward.isDefEq.respectTransparency false
set_option maxHeartbeats 2400000
set_option maxRecDepth 2048

open QuantumParallelRepetition.ClassicalInformation

attribute [local instance] Classical.propDecidable

variable {X Y A B : Type*}
variable [Fintype X] [Fintype Y] [Fintype A] [Fintype B]

theorem exactGlobalHistoryFinPsi_sub_Phi_norm
    (G : Game X Y A B) (n : ℕ) (S : Strategy (G.repeat n))
    (D : Finset (Fin n))
    (r : ExactHistoryFlag X Y A B D)
    (x : X) (y : Y) :
    ‖(exactGlobalHistoryFinPsi G n S D r x y).val -
      (exactGlobalHistoryFinPhi G n S D r y).val‖ =
      ‖exactPsi G n S D r x y -
        exactPhi G n S D r y‖ := by
  change
    ‖exactGlobalHistoryFinReindex G n S D
        (exactGlobalHistoryVector G n S D r
          (exactPsi G n S D r x y)) -
      exactGlobalHistoryFinReindex G n S D
        (exactGlobalHistoryVector G n S D r
          (exactPhi G n S D r y))‖ = _
  rw [← map_sub, ← exactGlobalHistoryVector_sub,
    LinearIsometryEquiv.norm_map,
    exactGlobalHistoryVector_norm]

theorem exactLocallySampleableLaw_zero_of_coordinate_mismatch
    (G : Game X Y A B) (n : ℕ) (S : Strategy (G.repeat n))
    (D : Finset (Fin n))
    (i : SourceRemainingCoordinate D) (x : X) (y : Y)
    (r : ExactHistoryFlag X Y A B D)
    (different : i ≠ r.seed.coordinate) :
    exactLocallySampleableLaw G n S D (i, x, y, r) = 0 := by
  classical
  unfold exactLocallySampleableLaw
    exactSourcePushforward groupedMass
  apply Finset.sum_eq_zero
  intro q hq
  have code :
      exactLocallySampleableCode D q = (i, x, y, r) :=
    ((@Finset.mem_filter
      (ExactJointOutcome X Y A B D)
      (fun a => exactLocallySampleableCode D a =
        (i, x, y, r))
      (fun _ => Classical.propDecidable _)
      Finset.univ q).mp hq).2
  have coordinate : q.1.coordinate = i := congrArg
    (fun t : ExactLocallySampleableTuple X Y A B D => t.1) code
  have history : exactHistoryCode D q = r := congrArg
    (fun t : ExactLocallySampleableTuple X Y A B D =>
      t.2.2.2) code
  have seed : q.1 = r.seed := congrArg
    ExactHistoryFlag.seed history
  exact (different
    (coordinate.symm.trans (congrArg ExactForwardSeed.coordinate seed))).elim

theorem exactFairPosteriorExpectation_reindex
    (G : Game X Y A B) (n : ℕ) (S : Strategy (G.repeat n))
    (D : Finset (Fin n))
    (f : ExactLocallySampleableTuple X Y A B D → ℝ) :
    (∑ t : ExactLocallySampleableTuple X Y A B D,
      exactLocallySampleableLaw G n S D t * f t) =
      ∑ r : ExactHistoryFlag X Y A B D,
      ∑ y : Y, ∑ x : X,
        exactLocallySampleableLaw G n S D
          (r.seed.coordinate, x, y, r) *
        f (r.seed.coordinate, x, y, r) := by
  classical
  calc
    (∑ t : ExactLocallySampleableTuple X Y A B D,
      exactLocallySampleableLaw G n S D t * f t) =
      ∑ i : SourceRemainingCoordinate D,
      ∑ x : X, ∑ y : Y,
      ∑ r : ExactHistoryFlag X Y A B D,
        exactLocallySampleableLaw G n S D (i, x, y, r) *
          f (i, x, y, r) := by
            simp [Fintype.sum_prod_type]
    _ = ∑ y : Y,
        ∑ r : ExactHistoryFlag X Y A B D,
        ∑ i : SourceRemainingCoordinate D,
        ∑ x : X,
          exactLocallySampleableLaw G n S D (i, x, y, r) *
            f (i, x, y, r) := finite_sum_four_swap _
    _ = ∑ r : ExactHistoryFlag X Y A B D,
        ∑ y : Y,
        ∑ i : SourceRemainingCoordinate D,
        ∑ x : X,
          exactLocallySampleableLaw G n S D (i, x, y, r) *
            f (i, x, y, r) := by
              rw [Finset.sum_comm]
    _ = ∑ r : ExactHistoryFlag X Y A B D,
        ∑ y : Y, ∑ x : X,
        ∑ i : SourceRemainingCoordinate D,
          exactLocallySampleableLaw G n S D (i, x, y, r) *
            f (i, x, y, r) := by
              apply Finset.sum_congr rfl
              intro r _
              apply Finset.sum_congr rfl
              intro y _
              rw [Finset.sum_comm]
    _ = _ := by
      apply Finset.sum_congr rfl
      intro r _
      apply Finset.sum_congr rfl
      intro y _
      apply Finset.sum_congr rfl
      intro x _
      rw [Finset.sum_eq_single r.seed.coordinate]
      · intro i _ different
        simp [exactLocallySampleableLaw_zero_of_coordinate_mismatch
          G n S D i x y r different]
      · simp

end

end QuantumParallelRepetition


open QuantumParallelRepetition
open scoped ComplexOrder Matrix BigOperators InnerProductSpace
open Complex Matrix Finset
open scoped BigOperators ComplexOrder Kronecker MatrixOrder
  Matrix.Norms.L2Operator InnerProductSpace
set_option backward.isDefEq.respectTransparency false
set_option maxHeartbeats 2400000
set_option maxRecDepth 2048
open QuantumParallelRepetition.ClassicalInformation
attribute [local instance] Classical.propDecidable
variable {X Y A B : Type*}
variable [Fintype X] [Fintype Y] [Fintype A] [Fintype B]

theorem solution
    (G : Game X Y A B) (n : ℕ) (S : Strategy (G.repeat n))
    (D : Finset (Fin n))
    (positive : 0 < repeatedPostselectionMass G n S D) :
    (∑ t : ExactLocallySampleableTuple X Y A B D,
      exactLocallySampleableLaw G n S D t *
        ‖exactSourceTuplePsi G n S D t -
          exactSourceTuplePhi G n S D t‖ ^ 2) *
        repeatedPostselectionMass G n S D ≤
      4 * exactFairAcceptedAliceVariation G n S D := by
  classical
  rw [exactFairPosteriorExpectation_reindex]
  simp_rw [Finset.sum_mul]
  calc
    (∑ r : ExactHistoryFlag X Y A B D,
      ∑ y : Y, ∑ x : X,
        (exactLocallySampleableLaw G n S D
          (r.seed.coordinate, x, y, r) *
          ‖exactSourceTuplePsi G n S D
              (r.seed.coordinate, x, y, r) -
            exactSourceTuplePhi G n S D
              (r.seed.coordinate, x, y, r)‖ ^ 2) *
          repeatedPostselectionMass G n S D) ≤
      ∑ r : ExactHistoryFlag X Y A B D,
      ∑ y : Y, ∑ x : X,
        if exactHistoryAccepted G n D r then
          4 * (exactFairHistoryPriorWeight G n D r *
            G.questionWeight x y *
            ‖exactUnnormalizedPsi G n S D r x y -
              exactUnnormalizedPhi G n S D r y‖ ^ 2)
        else 0 := by
          apply Finset.sum_le_sum
          intro r _
          apply Finset.sum_le_sum
          intro y _
          apply Finset.sum_le_sum
          intro x _
          by_cases accepted : exactHistoryAccepted G n D r
          · rw [if_pos accepted,
              exactLocallySampleableLaw_eq_fair_born,
              if_pos accepted]
            change
              ((_ / repeatedPostselectionMass G n S D) *
                ‖(exactGlobalHistoryFinPsi
                    G n S D r x y).val -
                  (exactGlobalHistoryFinPhi
                    G n S D r y).val‖ ^ 2) *
                  repeatedPostselectionMass G n S D ≤ _
            rw [exactGlobalHistoryFinPsi_sub_Phi_norm]
            have hnorm :=
              exactPsiPhi_BornWeighted_normalized_distance
                G n S D r x y
            have hw :
                0 ≤ exactFairHistoryPriorWeight G n D r *
                  G.questionWeight x y :=
              mul_nonneg
                (exactFairHistoryPriorWeight_nonneg G n D r)
                (G.weight_nonneg x y)
            have hscaled := mul_le_mul_of_nonneg_left hnorm hw
            unfold exactFairHistoryPriorWeight at hscaled ⊢
            field_simp [positive.ne']
            nlinarith
          · rw [if_neg accepted,
              exactLocallySampleableLaw_eq_fair_born,
              if_neg accepted]
            simp
    _ = 4 * exactFairAcceptedAliceVariation G n S D := by
      unfold exactFairAcceptedAliceVariation
        exactFairAliceHistoryVariation
      rw [Finset.mul_sum]
      apply Finset.sum_congr rfl
      intro r _
      by_cases accepted : exactHistoryAccepted G n D r
      · simp only [if_pos accepted, Finset.mul_sum]
        apply Finset.sum_congr rfl
        intro y _
        apply Finset.sum_congr rfl
        intro x _
        ring
      · simp [accepted]
