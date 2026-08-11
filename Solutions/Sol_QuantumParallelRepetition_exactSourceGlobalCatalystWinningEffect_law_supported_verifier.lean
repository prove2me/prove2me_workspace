import Definitions.Def_quantum_parallel_repetition_game
import Definitions.Def_qpr_core_24
import Theorems.Thm_QuantumParallelRepetition_embezzlementState_norm
import Theorems.Thm_QuantumParallelRepetition_exactLeft_coordinate_not_mem
import Theorems.Thm_QuantumParallelRepetition_exactRight_coordinate_not_mem
import Theorems.Thm_QuantumParallelRepetition_exactAlicePurificationFamily_posSemidef
import Theorems.Thm_QuantumParallelRepetition_exactBobPurificationFamily_posSemidef
import Theorems.Thm_QuantumParallelRepetition_exactLocallySampleableLaw_eq_fair_born
import Theorems.Thm_QuantumParallelRepetition_exactSourceConditionalWinningProbability_eq_normalized_verifier
import Mathlib.Algebra.Algebra.Basic
import Mathlib.Algebra.Algebra.Defs
import Mathlib.Algebra.BigOperators.Group.Finset.Basic
import Mathlib.Algebra.BigOperators.Group.Finset.Defs
import Mathlib.Algebra.BigOperators.Group.Finset.Piecewise
import Mathlib.Algebra.BigOperators.Group.Finset.Sigma
import Mathlib.Algebra.BigOperators.Ring.Finset
import Mathlib.Algebra.CharZero.Defs
import Mathlib.Algebra.Field.Defs
import Mathlib.Algebra.Group.Action.Defs
import Mathlib.Algebra.Group.Action.Pi
import Mathlib.Algebra.Group.Basic
import Mathlib.Algebra.Group.Defs
import Mathlib.Algebra.Group.Pi.Basic
import Mathlib.Algebra.Group.Subgroup.Defs
import Mathlib.Algebra.GroupWithZero.Action.Defs
import Mathlib.Algebra.GroupWithZero.Action.Pi
import Mathlib.Algebra.GroupWithZero.Basic
import Mathlib.Algebra.GroupWithZero.Defs
import Mathlib.Algebra.GroupWithZero.Hom
import Mathlib.Algebra.Module.Defs
import Mathlib.Algebra.Module.Pi
import Mathlib.Algebra.Module.Submodule.Defs
import Mathlib.Algebra.Notation.Defs
import Mathlib.Algebra.Notation.Pi.Defs
import Mathlib.Algebra.Order.Monoid.Defs
import Mathlib.Algebra.Order.Monoid.Unbundled.Basic
import Mathlib.Algebra.Order.Monoid.Unbundled.Defs
import Mathlib.Algebra.Order.Ring.Defs
import Mathlib.Algebra.Order.Ring.Unbundled.Basic
import Mathlib.Algebra.Order.Star.Basic
import Mathlib.Algebra.Ring.Defs
import Mathlib.Algebra.Ring.Hom.Defs
import Mathlib.Algebra.Ring.Nat
import Mathlib.Algebra.Star.Basic
import Mathlib.Algebra.Star.StarAlgHom
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
import Mathlib.Analysis.Normed.Group.Uniform
import Mathlib.Analysis.Normed.Lp.PiLp
import Mathlib.Analysis.Normed.Lp.WithLp
import Mathlib.Analysis.Normed.Module.Basic
import Mathlib.Analysis.Normed.Module.Normalize
import Mathlib.Analysis.Normed.Ring.Basic
import Mathlib.Analysis.RCLike.Basic
import Mathlib.Data.Complex.Basic
import Mathlib.Data.Complex.BigOperators
import Mathlib.Data.ENNReal.Basic
import Mathlib.Data.Finset.BooleanAlgebra
import Mathlib.Data.Finset.Card
import Mathlib.Data.Finset.Defs
import Mathlib.Data.Finset.Erase
import Mathlib.Data.Finset.Filter
import Mathlib.Data.Finset.Image
import Mathlib.Data.Finset.Insert
import Mathlib.Data.Finset.SDiff
import Mathlib.Data.Fintype.Basic
import Mathlib.Data.Fintype.BigOperators
import Mathlib.Data.Fintype.Card
import Mathlib.Data.Fintype.Defs
import Mathlib.Data.Fintype.EquivFin
import Mathlib.Data.Fintype.Pi
import Mathlib.Data.Fintype.Prod
import Mathlib.Data.Fintype.Sets
import Mathlib.Data.Fintype.Sigma
import Mathlib.Data.Fintype.Sum
import Mathlib.Data.FunLike.Basic
import Mathlib.Data.FunLike.Equiv
import Mathlib.Data.Int.Cast.Defs
import Mathlib.Data.Matrix.Basic
import Mathlib.Data.Matrix.Diagonal
import Mathlib.Data.Matrix.Mul
import Mathlib.Data.Nat.Cast.Defs
import Mathlib.Data.Nat.Init
import Mathlib.Data.Real.Basic
import Mathlib.Data.Real.Star
import Mathlib.Data.Real.StarOrdered
import Mathlib.Data.Set.Defs
import Mathlib.Data.SetLike.Basic
import Mathlib.Data.Sigma.Basic
import Mathlib.LinearAlgebra.Dimension.Finrank
import Mathlib.LinearAlgebra.Matrix.ConjTranspose
import Mathlib.LinearAlgebra.Matrix.Defs
import Mathlib.LinearAlgebra.Matrix.Kronecker
import Mathlib.LinearAlgebra.Matrix.PosDef
import Mathlib.Logic.Basic
import Mathlib.Logic.Equiv.Defs
import Mathlib.Logic.Equiv.Fin.Basic
import Mathlib.Logic.Equiv.Prod
import Mathlib.Logic.Unique
import Mathlib.MeasureTheory.Function.AEEqFun
import Mathlib.MeasureTheory.Function.LpSpace.Basic
import Mathlib.MeasureTheory.Measure.Haar.OfBasis
import Mathlib.MeasureTheory.Measure.MeasureSpace
import Mathlib.MeasureTheory.Measure.MeasureSpaceDef
import Mathlib.MeasureTheory.Measure.Restrict
import Mathlib.Order.Defs.PartialOrder
import Mathlib.Order.Interval.Set.Defs
import Mathlib.Order.Lattice
import Mathlib.Tactic.Linarith.Lemmas
import Mathlib.Tactic.NormNum.Basic
import Mathlib.Tactic.NormNum.Ineq
import Mathlib.Tactic.NormNum.Pow
import Mathlib.Tactic.NormNum.Result
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

open Matrix
open scoped BigOperators Kronecker ComplexOrder MatrixOrder

set_option backward.isDefEq.respectTransparency false
set_option maxHeartbeats 1500000

variable {X Y A B : Type*}
variable [Fintype X] [Fintype Y] [Fintype A] [Fintype B]

theorem fullCoordinate_three_sum_rotate
    {I J K T : Type*}
    [Fintype I] [Fintype J] [Fintype K] [AddCommMonoid T]
    (f : I → J → K → T) :
    (∑ i : I, ∑ j : J, ∑ k : K, f i j k) =
      ∑ j : J, ∑ k : K, ∑ i : I, f i j k := by
  calc
    (∑ i : I, ∑ j : J, ∑ k : K, f i j k) =
      ∑ j : J, ∑ i : I, ∑ k : K, f i j k := by
        rw [Finset.sum_comm]
    _ = ∑ j : J, ∑ k : K, ∑ i : I, f i j k := by
      apply Finset.sum_congr rfl
      intro j _
      rw [Finset.sum_comm]

end

noncomputable section

open scoped BigOperators

attribute [local instance] Classical.propDecidable

theorem exactLeftPrefix_subset
    {M : Type*} [Fintype M] [DecidableEq M]
    (seed : ExactForwardSeed M) :
    exactLeftPrefix seed ⊆
      exactLeft seed.coordinate seed.partition := by
  intro j hj
  obtain ⟨a, _, ha⟩ := Finset.mem_image.mp hj
  exact ha ▸ a.property

theorem exactRightPrefix_subset
    {M : Type*} [Fintype M] [DecidableEq M]
    (seed : ExactForwardSeed M) :
    exactRightPrefix seed ⊆
      exactRight seed.coordinate seed.partition := by
  intro j hj
  obtain ⟨a, _, ha⟩ := Finset.mem_image.mp hj
  exact ha ▸ a.property

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

end

noncomputable section

open scoped BigOperators

set_option backward.isDefEq.respectTransparency false
set_option maxHeartbeats 1200000
set_option maxRecDepth 2048

attribute [local instance] Classical.propDecidable

variable {X Y A B : Type*}
variable [Fintype X] [Fintype Y] [Fintype A] [Fintype B]

theorem exactRevealCode_compatible_iff
    {n : ℕ} (D : Finset (Fin n))
    (seed : ExactRemainingSeed D)
    (history : ExactRevealHistory X Y D seed)
    (x : X) (y : Y)
    (xs : Fin n → X) (ys : Fin n → Y) :
    (exactRevealCode D seed (xs, ys) = history ∧
      xs seed.coordinate.val = x ∧ ys seed.coordinate.val = y) ↔
      exactAliceQuestionCompatible
        D seed history x xs ∧
      exactBobQuestionCompatible
        D seed history y ys := by
  constructor
  · rintro ⟨h, hx, hy⟩
    subst history
    exact ⟨⟨fun _ => rfl, fun _ => rfl, fun _ => rfl, hx⟩,
      ⟨fun _ => rfl, fun _ => rfl, fun _ => rfl, hy⟩⟩
  · rintro ⟨⟨hxc, hxl, hxr, hx⟩,
      ⟨hyc, hyr, hyl, hy⟩⟩
    refine ⟨?_, hx, hy⟩
    cases history with
    | mk ac bc al br bl ar =>
      have hac :
          (fun j : {j : Fin n // j ∈ D} => xs j.val) = ac :=
        funext hxc
      have hbc :
          (fun j : {j : Fin n // j ∈ D} => ys j.val) = bc :=
        funext hyc
      have hal :
          (fun j : {j : SourceRemainingCoordinate D //
            j ∈ exactLeft seed.coordinate seed.partition} =>
            xs j.val.val) = al :=
        funext hxl
      have hbr :
          (fun j : {j : SourceRemainingCoordinate D //
            j ∈ exactRight seed.coordinate seed.partition} =>
            ys j.val.val) = br :=
        funext hyr
      have hbl :
          (fun j : {j : SourceRemainingCoordinate D //
            j ∈ exactLeftPrefix seed} =>
            ys j.val.val) = bl :=
        funext hyl
      have har :
          (fun j : {j : SourceRemainingCoordinate D //
            j ∈ exactRightPrefix seed} =>
            xs j.val.val) = ar :=
        funext hxr
      cases hac
      cases hbc
      cases hal
      cases hbr
      cases hbl
      cases har
      rfl

end

noncomputable section

open WithLp
open scoped BigOperators ComplexOrder Kronecker MatrixOrder
  Matrix.Norms.L2Operator InnerProductSpace

set_option backward.isDefEq.respectTransparency false
set_option maxHeartbeats 1600000
set_option maxRecDepth 2048

attribute [local instance] Classical.propDecidable

variable {X Y A B : Type*}
variable [Fintype X] [Fintype Y] [Fintype A] [Fintype B]

theorem exactFiberQuestionMass_eq_jointQuestionMass
    (G : Game X Y A B) (n : ℕ)
    (D : Finset (Fin n))
    (seed : ExactRemainingSeed D)
    (history : ExactRevealHistory X Y D seed)
    (x : X) (y : Y) :
    exactFiberQuestionMass G n D seed history x y =
      exactJointQuestionMass G n D seed history x y := by
  classical
  unfold exactFiberQuestionMass
    exactFiberQuestionWeight
    exactJointQuestionMass
  rw [Fintype.sum_prod_type]
  apply Finset.sum_congr rfl
  intro xs _
  apply Finset.sum_congr rfl
  intro ys _
  simp [exactPriorQuestionWeight,
    exactRevealCode_compatible_iff]

end

noncomputable section

open scoped BigOperators

set_option backward.isDefEq.respectTransparency false
set_option maxHeartbeats 1800000
set_option maxRecDepth 2048

open QuantumParallelRepetition.ClassicalInformation

attribute [local instance] Classical.propDecidable

variable {X Y A B : Type*}
variable [Fintype X] [Fintype Y] [Fintype A] [Fintype B]

theorem exactHistoryCode_accepted_iff
    (G : Game X Y A B) (n : ℕ)
    (D : Finset (Fin n))
    (q : ExactJointOutcome X Y A B D) :
    exactHistoryAccepted G n D
        (exactHistoryCode D q) ↔
      q.2 ∈ FiniteEventLaw.winEvent
        (repeatedCoordinateWin G n) D := by
  classical
  simp only [FiniteEventLaw.winEvent,
    Finset.mem_filter, Finset.mem_univ, true_and,
    repeatedCoordinateWin,
    exactHistoryAccepted,
    exactHistoryCode,
    exactRevealCode]
  constructor
  · intro h j hj
    exact h ⟨j, hj⟩
  · intro h j
    exact h j.val j.property

theorem exactLocallySampleableLaw_zero_of_not_accepted
    (G : Game X Y A B) (n : ℕ) (S : Strategy (G.repeat n))
    (D : Finset (Fin n))
    (i : SourceRemainingCoordinate D) (x : X) (y : Y)
    (r : ExactHistoryFlag X Y A B D)
    (not_accepted : ¬ exactHistoryAccepted G n D r) :
    exactLocallySampleableLaw G n S D (i, x, y, r) = 0 := by
  classical
  unfold exactLocallySampleableLaw
    exactSourcePushforward
    groupedMass
  apply Finset.sum_eq_zero
  intro q hq
  have hcode :
      exactLocallySampleableCode D q = (i, x, y, r) := by
    exact ((@Finset.mem_filter
      (ExactJointOutcome X Y A B D)
      (fun a => exactLocallySampleableCode D a = (i, x, y, r))
      (fun _ => Classical.propDecidable _)
      Finset.univ q).mp hq).2
  have hhistory : exactHistoryCode D q = r :=
    congrArg
      (fun t : ExactLocallySampleableTuple X Y A B D =>
        t.2.2.2) hcode
  have hnot :
      q.2 ∉ FiniteEventLaw.winEvent
        (repeatedCoordinateWin G n) D := by
    intro hw
    apply not_accepted
    rw [← hhistory]
    exact (exactHistoryCode_accepted_iff
      G n D q).mpr hw
  simp [exactPostselectedJointLaw,
    repeatedConditionedOutcomeLaw,
    conditionedEventDistribution, hnot]

end

noncomputable section

open scoped BigOperators

set_option backward.isDefEq.respectTransparency false
set_option maxHeartbeats 1800000
set_option maxRecDepth 2048

attribute [local instance] Classical.propDecidable

variable {X Y A B : Type*}
variable [Fintype X] [Fintype Y] [Fintype A] [Fintype B]

theorem exactRevealCode_splitAt_independent
    {n : ℕ} (D : Finset (Fin n))
    (seed : ExactRemainingSeed D)
    (x x' : X) (y y' : Y)
    (tailX : {j : Fin n // j ≠ seed.coordinate.val} → X)
    (tailY : {j : Fin n // j ≠ seed.coordinate.val} → Y) :
    exactRevealCode D seed
      ((Equiv.funSplitAt seed.coordinate.val X).symm (x, tailX),
       (Equiv.funSplitAt seed.coordinate.val Y).symm (y, tailY)) =
    exactRevealCode D seed
      ((Equiv.funSplitAt seed.coordinate.val X).symm (x', tailX),
       (Equiv.funSplitAt seed.coordinate.val Y).symm (y', tailY)) := by
  unfold exactRevealCode
  congr 1
  · funext j
    have hiD : seed.coordinate.val ∉ D :=
      (Finset.mem_sdiff.mp seed.coordinate.property).2
    have different : j.val ≠ seed.coordinate.val := by
      intro h
      exact hiD (h ▸ j.property)
    simp [Equiv.funSplitAt, Equiv.piSplitAt, different]
  · funext j
    have hiD : seed.coordinate.val ∉ D :=
      (Finset.mem_sdiff.mp seed.coordinate.property).2
    have different : j.val ≠ seed.coordinate.val := by
      intro h
      exact hiD (h ▸ j.property)
    simp [Equiv.funSplitAt, Equiv.piSplitAt, different]
  · funext j
    have different : j.val.val ≠ seed.coordinate.val := by
      intro h
      have same : j.val = seed.coordinate := Subtype.ext h
      have mem : seed.coordinate ∈
          exactLeft seed.coordinate seed.partition := by
        simpa [same] using j.property
      exact exactLeft_coordinate_not_mem
        seed.coordinate seed.partition mem
    simp [Equiv.funSplitAt, Equiv.piSplitAt, different]
  · funext j
    have different : j.val.val ≠ seed.coordinate.val := by
      intro h
      have same : j.val = seed.coordinate := Subtype.ext h
      have mem : seed.coordinate ∈
          exactRight seed.coordinate seed.partition := by
        simpa [same] using j.property
      exact exactRight_coordinate_not_mem
        seed.coordinate seed.partition mem
    simp [Equiv.funSplitAt, Equiv.piSplitAt, different]
  · funext j
    have different : j.val.val ≠ seed.coordinate.val := by
      intro h
      have same : j.val = seed.coordinate := Subtype.ext h
      have hleft := exactLeftPrefix_subset seed j.property
      exact exactLeft_coordinate_not_mem
        seed.coordinate seed.partition (same ▸ hleft)
    simp [Equiv.funSplitAt, Equiv.piSplitAt, different]
  · funext j
    have different : j.val.val ≠ seed.coordinate.val := by
      intro h
      have same : j.val = seed.coordinate := Subtype.ext h
      have hright := exactRightPrefix_subset seed j.property
      exact exactRight_coordinate_not_mem
        seed.coordinate seed.partition (same ▸ hright)
    simp [Equiv.funSplitAt, Equiv.piSplitAt, different]

theorem exactRepeatedQuestionWeight_splitAt_joint
    (G : Game X Y A B) (n : ℕ) (i : Fin n)
    (x : X) (y : Y)
    (tailX : {j : Fin n // j ≠ i} → X)
    (tailY : {j : Fin n // j ≠ i} → Y) :
    (G.repeat n).questionWeight
        ((Equiv.funSplitAt i X).symm (x, tailX))
        ((Equiv.funSplitAt i Y).symm (y, tailY)) =
      G.questionWeight x y *
        ∏ j : {j : Fin n // j ≠ i},
          G.questionWeight (tailX j) (tailY j) := by
  classical
  rw [Game.repeat_questionWeight]
  rw [← Finset.mul_prod_erase
    (Finset.univ : Finset (Fin n))
    (fun j : Fin n => G.questionWeight
      ((Equiv.funSplitAt i X).symm (x, tailX) j)
      ((Equiv.funSplitAt i Y).symm (y, tailY) j))
    (Finset.mem_univ i)]
  simp only [Equiv.funSplitAt, Equiv.piSplitAt,
    Equiv.coe_fn_symm_mk, dite_true]
  congr 1
  let e : {j : Fin n // j ∈ (Finset.univ : Finset (Fin n)).erase i} ≃
      {j : Fin n // j ≠ i} :=
    { toFun := fun j => ⟨j.val, (Finset.mem_erase.mp j.property).1⟩
      invFun := fun j => ⟨j.val,
        Finset.mem_erase.mpr ⟨j.property, Finset.mem_univ _⟩⟩
      left_inv := fun _ => rfl
      right_inv := fun _ => rfl }
  rw [← Finset.prod_coe_sort, ← e.prod_comp]
  apply Finset.prod_congr rfl
  intro j _
  have different : j.val ≠ i := (Finset.mem_erase.mp j.property).1
  simp [different, e]

theorem exactFairQuestionTailWeight_independent
    (G : Game X Y A B) (n : ℕ)
    (D : Finset (Fin n))
    (seed : ExactRemainingSeed D)
    (history : ExactRevealHistory X Y D seed)
    (x x' : X) (y y' : Y) :
    exactFairQuestionTailWeight
        G n D seed history x y =
      exactFairQuestionTailWeight
        G n D seed history x' y' := by
  unfold exactFairQuestionTailWeight
  apply Finset.sum_congr rfl
  intro tailX _
  apply Finset.sum_congr rfl
  intro tailY _
  rw [exactRevealCode_splitAt_independent
    D seed x x' y y' tailX tailY]

theorem exactJointQuestionMass_eq_question_mul_tail
    (G : Game X Y A B) (n : ℕ)
    (D : Finset (Fin n))
    (seed : ExactRemainingSeed D)
    (history : ExactRevealHistory X Y D seed)
    (x : X) (y : Y) :
    exactJointQuestionMass G n D seed history x y =
      G.questionWeight x y *
        exactFairQuestionTailWeight
          G n D seed history x y := by
  classical
  let e := Equiv.prodCongr
    (Equiv.funSplitAt seed.coordinate.val X)
    (Equiv.funSplitAt seed.coordinate.val Y)
  calc
    exactJointQuestionMass G n D seed history x y =
      ∑ t : (X × ({j : Fin n // j ≠ seed.coordinate.val} → X)) ×
          (Y × ({j : Fin n // j ≠ seed.coordinate.val} → Y)),
        if exactRevealCode D seed (e.symm t) = history ∧
          (e.symm t).1 seed.coordinate.val = x ∧
          (e.symm t).2 seed.coordinate.val = y
        then exactPriorQuestionWeight G n (e.symm t)
        else 0 := by
          unfold exactJointQuestionMass
          exact (e.symm.sum_comp (fun q =>
            if exactRevealCode D seed q = history ∧
              q.1 seed.coordinate.val = x ∧
              q.2 seed.coordinate.val = y
            then exactPriorQuestionWeight G n q
            else 0)).symm
    _ = ∑ tailX : {j : Fin n // j ≠ seed.coordinate.val} → X,
        ∑ tailY : {j : Fin n // j ≠ seed.coordinate.val} → Y,
          if exactRevealCode D seed
             ((Equiv.funSplitAt seed.coordinate.val X).symm (x, tailX),
              (Equiv.funSplitAt seed.coordinate.val Y).symm (y, tailY)) =
                history
          then exactPriorQuestionWeight G n
             ((Equiv.funSplitAt seed.coordinate.val X).symm (x, tailX),
              (Equiv.funSplitAt seed.coordinate.val Y).symm (y, tailY))
          else 0 := by
            simp only [Fintype.sum_prod_type, e, Equiv.prodCongr,
              Equiv.coe_fn_symm_mk, Prod.map, Equiv.funSplitAt,
              Equiv.piSplitAt, dite_true]
            change
              (∑ xx : X,
                ∑ tailX : {j : Fin n // j ≠ seed.coordinate.val} → X,
                ∑ yy : Y,
                ∑ tailY : {j : Fin n // j ≠ seed.coordinate.val} → Y,
                  if exactRevealCode D seed
                      ((Equiv.funSplitAt seed.coordinate.val X).symm
                         (xx, tailX),
                       (Equiv.funSplitAt seed.coordinate.val Y).symm
                         (yy, tailY)) = history ∧
                    xx = x ∧ yy = y then
                    exactPriorQuestionWeight G n
                      ((Equiv.funSplitAt seed.coordinate.val X).symm
                         (xx, tailX),
                       (Equiv.funSplitAt seed.coordinate.val Y).symm
                         (yy, tailY))
                  else 0) = _
            rw [Finset.sum_comm]
            apply Finset.sum_congr rfl
            intro tailX _
            calc
              (∑ xx : X,
                ∑ yy : Y,
                ∑ tailY : {j : Fin n // j ≠ seed.coordinate.val} → Y,
                  if exactRevealCode D seed
                      ((Equiv.funSplitAt seed.coordinate.val X).symm
                         (xx, tailX),
                       (Equiv.funSplitAt seed.coordinate.val Y).symm
                         (yy, tailY)) = history ∧
                    xx = x ∧ yy = y then
                    exactPriorQuestionWeight G n
                      ((Equiv.funSplitAt seed.coordinate.val X).symm
                         (xx, tailX),
                       (Equiv.funSplitAt seed.coordinate.val Y).symm
                         (yy, tailY))
                  else 0) =
                ∑ xx : X,
                ∑ tailY : {j : Fin n // j ≠ seed.coordinate.val} → Y,
                ∑ yy : Y,
                  if exactRevealCode D seed
                      ((Equiv.funSplitAt seed.coordinate.val X).symm
                         (xx, tailX),
                       (Equiv.funSplitAt seed.coordinate.val Y).symm
                         (yy, tailY)) = history ∧
                    xx = x ∧ yy = y then
                    exactPriorQuestionWeight G n
                      ((Equiv.funSplitAt seed.coordinate.val X).symm
                         (xx, tailX),
                       (Equiv.funSplitAt seed.coordinate.val Y).symm
                         (yy, tailY))
                  else 0 := by
                    apply Finset.sum_congr rfl
                    intro xx _
                    rw [Finset.sum_comm]
              _ = ∑ tailY : {j : Fin n // j ≠ seed.coordinate.val} → Y,
                  ∑ xx : X, ∑ yy : Y,
                    if exactRevealCode D seed
                        ((Equiv.funSplitAt seed.coordinate.val X).symm
                           (xx, tailX),
                         (Equiv.funSplitAt seed.coordinate.val Y).symm
                           (yy, tailY)) = history ∧
                      xx = x ∧ yy = y then
                      exactPriorQuestionWeight G n
                        ((Equiv.funSplitAt seed.coordinate.val X).symm
                           (xx, tailX),
                         (Equiv.funSplitAt seed.coordinate.val Y).symm
                           (yy, tailY))
                    else 0 := by
                      rw [Finset.sum_comm]
              _ = _ := by
                    apply Finset.sum_congr rfl
                    intro tailY _
                    have hcondition (xx : X) (yy : Y) :
                        (exactRevealCode D seed
                            ((Equiv.funSplitAt seed.coordinate.val X).symm
                               (xx, tailX),
                             (Equiv.funSplitAt seed.coordinate.val Y).symm
                               (yy, tailY)) = history ∧
                          xx = x ∧ yy = y) =
                        (xx = x ∧ yy = y ∧
                          exactRevealCode D seed
                            ((Equiv.funSplitAt seed.coordinate.val X).symm
                               (xx, tailX),
                             (Equiv.funSplitAt seed.coordinate.val Y).symm
                               (yy, tailY)) = history) := by
                          apply propext
                          tauto
                    simp_rw [hcondition, ite_and]
                    simp [Equiv.funSplitAt, Equiv.piSplitAt]
    _ = G.questionWeight x y *
        exactFairQuestionTailWeight G n D seed history x y := by
          unfold exactFairQuestionTailWeight
          rw [Finset.mul_sum]
          apply Finset.sum_congr rfl
          intro tailX _
          rw [Finset.mul_sum]
          apply Finset.sum_congr rfl
          intro tailY _
          by_cases h : exactRevealCode D seed
              ((Equiv.funSplitAt seed.coordinate.val X).symm (x, tailX),
               (Equiv.funSplitAt seed.coordinate.val Y).symm (y, tailY)) =
                history
          · rw [if_pos h, if_pos h]
            exact exactRepeatedQuestionWeight_splitAt_joint
              G n seed.coordinate.val x y tailX tailY
          · simp [h]

theorem exactJointQuestionMass_sum
    (G : Game X Y A B) (n : ℕ)
    (D : Finset (Fin n))
    (seed : ExactRemainingSeed D)
    (history : ExactRevealHistory X Y D seed) :
    (∑ x : X, ∑ y : Y,
      exactJointQuestionMass G n D seed history x y) =
      exactRevealMass G n D seed history := by
  classical
  unfold exactJointQuestionMass exactRevealMass
  calc
    (∑ x : X, ∑ y : Y,
      ∑ q : ExactFullQuestion X Y n,
        if exactRevealCode D seed q = history ∧
          q.1 seed.coordinate.val = x ∧
          q.2 seed.coordinate.val = y
        then exactPriorQuestionWeight G n q
        else 0) =
      ∑ q : ExactFullQuestion X Y n,
        ∑ x : X, ∑ y : Y,
          if exactRevealCode D seed q = history ∧
            q.1 seed.coordinate.val = x ∧
            q.2 seed.coordinate.val = y
          then exactPriorQuestionWeight G n q
          else 0 := by
            calc
              (∑ x : X, ∑ y : Y,
                ∑ q : ExactFullQuestion X Y n,
                  if exactRevealCode D seed q = history ∧
                    q.1 seed.coordinate.val = x ∧
                    q.2 seed.coordinate.val = y
                  then exactPriorQuestionWeight G n q
                  else 0) =
                ∑ y : Y, ∑ q : ExactFullQuestion X Y n,
                ∑ x : X,
                  if exactRevealCode D seed q = history ∧
                    q.1 seed.coordinate.val = x ∧
                    q.2 seed.coordinate.val = y
                  then exactPriorQuestionWeight G n q
                  else 0 :=
                    fullCoordinate_three_sum_rotate _
              _ = _ := fullCoordinate_three_sum_rotate _
    _ = ∑ q : ExactFullQuestion X Y n,
        if exactRevealCode D seed q = history
        then exactPriorQuestionWeight G n q
        else 0 := by
          apply Finset.sum_congr rfl
          intro q _
          by_cases h : exactRevealCode D seed q = history
          · have hsum :
                (∑ xx : X, ∑ yy : Y,
                  if q.1 seed.coordinate.val = xx ∧
                    q.2 seed.coordinate.val = yy
                  then exactPriorQuestionWeight G n q
                  else 0) = exactPriorQuestionWeight G n q := by
                  calc
                    (∑ xx : X, ∑ yy : Y,
                      if q.1 seed.coordinate.val = xx ∧
                        q.2 seed.coordinate.val = yy
                      then exactPriorQuestionWeight G n q
                      else 0) =
                      ∑ xx : X,
                        if q.1 seed.coordinate.val = xx
                        then exactPriorQuestionWeight G n q
                        else 0 := by
                          apply Finset.sum_congr rfl
                          intro xx _
                          by_cases hx : q.1 seed.coordinate.val = xx
                          · simp [hx]
                          · simp [hx]
                    _ = _ := by simp
            simpa [h] using hsum
          · simp [h]

theorem exactJointQuestionMass_eq_reveal_mul_question
    (G : Game X Y A B) (n : ℕ)
    (D : Finset (Fin n))
    (seed : ExactRemainingSeed D)
    (history : ExactRevealHistory X Y D seed)
    (x : X) (y : Y) :
    exactJointQuestionMass G n D seed history x y =
      exactRevealMass G n D seed history *
        G.questionWeight x y := by
  have htotal := exactJointQuestionMass_sum
    G n D seed history
  have htail :
      exactRevealMass G n D seed history =
        exactFairQuestionTailWeight
          G n D seed history x y := by
    calc
      exactRevealMass G n D seed history =
        ∑ xx : X, ∑ yy : Y,
          exactJointQuestionMass
            G n D seed history xx yy := htotal.symm
      _ = ∑ xx : X, ∑ yy : Y,
          G.questionWeight xx yy *
            exactFairQuestionTailWeight
              G n D seed history x y := by
            apply Finset.sum_congr rfl
            intro xx _
            apply Finset.sum_congr rfl
            intro yy _
            rw [exactJointQuestionMass_eq_question_mul_tail]
            rw [exactFairQuestionTailWeight_independent
              G n D seed history xx x yy y]
      _ = (∑ xx : X, ∑ yy : Y,
          G.questionWeight xx yy) *
            exactFairQuestionTailWeight
              G n D seed history x y := by
            simp [Finset.sum_mul]
      _ = exactFairQuestionTailWeight
          G n D seed history x y := by
            rw [G.weight_normalized]
            simp
  rw [exactJointQuestionMass_eq_question_mul_tail,
    ← htail]
  ring

end

noncomputable section

open scoped BigOperators ComplexOrder Kronecker MatrixOrder
  Matrix.Norms.L2Operator InnerProductSpace

set_option backward.isDefEq.respectTransparency false
set_option maxHeartbeats 2000000
set_option maxRecDepth 2048

open QuantumParallelRepetition.Pinsker
open QuantumParallelRepetition.ClassicalInformation
open QuantumParallelRepetition.ClassicalSampling

attribute [local instance] Classical.propDecidable

variable {X Y A B : Type}
variable [Fintype X] [Fintype Y] [Fintype A] [Fintype B]

theorem exactLocallySampleableLaw_coordinate_eq_of_ne_zero
    (G : Game X Y A B) (n : ℕ) (S : Strategy (G.repeat n))
    (D : Finset (Fin n))
    (t : ExactLocallySampleableTuple X Y A B D)
    (supported : exactLocallySampleableLaw G n S D t ≠ 0) :
    t.1 = t.2.2.2.seed.coordinate := by
  classical
  by_contra different
  apply supported
  unfold exactLocallySampleableLaw
    exactSourcePushforward groupedMass
  apply Finset.sum_eq_zero
  intro q member
  have code :
      exactLocallySampleableCode D q = t := by
    exact ((@Finset.mem_filter
      (ExactJointOutcome X Y A B D)
      (fun a => exactLocallySampleableCode D a = t)
      (fun _ => Classical.propDecidable _)
      Finset.univ q).mp member).2
  have coordinate :=
    congrArg
      (fun u : ExactLocallySampleableTuple X Y A B D =>
        u.1)
      code
  have history_coordinate :=
    congrArg
      (fun u : ExactLocallySampleableTuple X Y A B D =>
        u.2.2.2.seed.coordinate)
      code
  exact False.elim
    (different (coordinate.symm.trans history_coordinate))

theorem exactLocallySampleableLaw_accepted_of_ne_zero
    (G : Game X Y A B) (n : ℕ) (S : Strategy (G.repeat n))
    (D : Finset (Fin n))
    (t : ExactLocallySampleableTuple X Y A B D)
    (supported : exactLocallySampleableLaw G n S D t ≠ 0) :
    exactHistoryAccepted G n D t.2.2.2 := by
  classical
  by_contra rejected
  exact supported
    (exactLocallySampleableLaw_zero_of_not_accepted
      G n S D t.1 t.2.1 t.2.2.1 t.2.2.2 rejected)

theorem exactLocallySampleableLaw_fiber_ne_zero_of_ne_zero
    (G : Game X Y A B) (n : ℕ) (S : Strategy (G.repeat n))
    (D : Finset (Fin n))
    (t : ExactLocallySampleableTuple X Y A B D)
    (supported : exactLocallySampleableLaw G n S D t ≠ 0) :
    exactFiberQuestionMass
      G n D t.2.2.2.seed t.2.2.2.history
      t.2.1 t.2.2.1 ≠ 0 := by
  classical
  have coordinate :=
    exactLocallySampleableLaw_coordinate_eq_of_ne_zero
      G n S D t supported
  have accepted :=
    exactLocallySampleableLaw_accepted_of_ne_zero
      G n S D t supported
  intro zero
  have reveal_zero :
      exactRevealMass G n D
          t.2.2.2.seed t.2.2.2.history *
        G.questionWeight t.2.1 t.2.2.1 = 0 := by
    simpa [exactFiberQuestionMass_eq_jointQuestionMass,
      exactJointQuestionMass_eq_reveal_mul_question] using zero
  apply supported
  have source :=
    exactLocallySampleableLaw_eq_fair_born
      G n S D t.2.2.2 t.2.1 t.2.2.1
  have tuple :
      t =
        (t.2.2.2.seed.coordinate, t.2.1, t.2.2.1, t.2.2.2) := by
    rcases t with ⟨i, x, y, r⟩
    simpa using coordinate
  rw [tuple, source, if_pos accepted]
  rw [show
    exactSeedWeight t.2.2.2.seed *
        exactRevealMass G n D
          t.2.2.2.seed t.2.2.2.history *
        G.questionWeight t.2.1 t.2.2.1 =
      exactSeedWeight t.2.2.2.seed *
        (exactRevealMass G n D
          t.2.2.2.seed t.2.2.2.history *
          G.questionWeight t.2.1 t.2.2.1) by ring]
  simp [reveal_zero]

theorem exactLocallySampleableLaw_psi_ne_zero_of_ne_zero
    (G : Game X Y A B) (n : ℕ) (S : Strategy (G.repeat n))
    (D : Finset (Fin n))
    (t : ExactLocallySampleableTuple X Y A B D)
    (supported : exactLocallySampleableLaw G n S D t ≠ 0) :
    exactUnnormalizedPsi
      G n S D t.2.2.2 t.2.1 t.2.2.1 ≠ 0 := by
  classical
  have coordinate :=
    exactLocallySampleableLaw_coordinate_eq_of_ne_zero
      G n S D t supported
  have accepted :=
    exactLocallySampleableLaw_accepted_of_ne_zero
      G n S D t supported
  intro zero
  apply supported
  have source :=
    exactLocallySampleableLaw_eq_fair_born
      G n S D t.2.2.2 t.2.1 t.2.2.1
  have tuple :
      t =
        (t.2.2.2.seed.coordinate, t.2.1, t.2.2.1, t.2.2.2) := by
    rcases t with ⟨i, x, y, r⟩
    simpa using coordinate
  rw [tuple, source, if_pos accepted, zero]
  simp

end

noncomputable section

open scoped BigOperators ComplexOrder Kronecker MatrixOrder
  Matrix.Norms.L2Operator InnerProductSpace

set_option backward.isDefEq.respectTransparency false
set_option maxHeartbeats 2400000
set_option maxRecDepth 2048

attribute [local instance] Classical.propDecidable

@[simp] theorem twoBlockPOVM_effect_inl
    {C d e : Type} [Fintype C] [DecidableEq C]
    [Fintype d] [Fintype e] [DecidableEq d] [DecidableEq e]
    (P : POVM C d) (Q : POVM C e)
    (c : C) (i j : d) :
    (twoBlockPOVM P Q).operator c
      (.inl i) (.inl j) = P.operator c i j := by
  classical
  simp [twoBlockPOVM, reindexedPOVM,
    dependentBlockPOVM, Equiv.sumEquivSigmaBool,
    Matrix.blockDiagonal'_apply]

@[simp] theorem twoBlockPOVM_effect_inr
    {C d e : Type} [Fintype C] [DecidableEq C]
    [Fintype d] [Fintype e] [DecidableEq d] [DecidableEq e]
    (P : POVM C d) (Q : POVM C e)
    (c : C) (i j : e) :
    (twoBlockPOVM P Q).operator c
      (.inr i) (.inr j) = Q.operator c i j := by
  classical
  simp [twoBlockPOVM, reindexedPOVM,
    dependentBlockPOVM, Equiv.sumEquivSigmaBool,
    Matrix.blockDiagonal'_apply]

@[simp] theorem dependentBlockPOVM_effect_same
    {R C : Type*} [Fintype R] [DecidableEq R] [Fintype C]
    {ι : R → Type*}
    [∀ r, Fintype (ι r)] [∀ r, DecidableEq (ι r)]
    (P : (r : R) → POVM C (ι r))
    (r : R) (c : C) (i j : ι r) :
    (dependentBlockPOVM P).operator c
      ⟨r, i⟩ ⟨r, j⟩ = (P r).operator c i j := by
  classical
  simp [dependentBlockPOVM,
    Matrix.blockDiagonal'_apply]

variable {X Y A B : Type}
variable [Fintype X] [Fintype Y] [Fintype A] [Fintype B]

@[simp] theorem exactSourceGlobalAlicePOVM_effect
    [DecidableEq A]
    (G : Game X Y A B) (n : ℕ) (S : Strategy (G.repeat n))
    (D : Finset (Fin n)) (r : ExactHistoryFlag X Y A B D)
    (a₀ a : A) (x : X)
    (i j : ExactAliceLocalIndex G n S D r) :
    (exactSourceGlobalAlicePOVM G n S D a₀ x).operator a
      (.inr ⟨r, .inr (.inl i)⟩)
      (.inr ⟨r, .inr (.inl j)⟩) =
      (exactSourceAliceRefinedPOVM G n S D r a₀ x).operator a i j := by
  classical
  simp [exactSourceGlobalAlicePOVM,
    pOVMChangeDecidableEq,
    exactSourceAlicePaddedPOVM]

@[simp] theorem exactSourceGlobalBobPOVM_effect
    [DecidableEq B]
    (G : Game X Y A B) (n : ℕ) (S : Strategy (G.repeat n))
    (D : Finset (Fin n)) (r : ExactHistoryFlag X Y A B D)
    (b₀ b : B) (y : Y)
    (i j : ExactBobLocalIndex G n S D r) :
    (exactSourceGlobalBobPOVM G n S D b₀ y).operator b
      (.inr ⟨r, .inr (.inr i)⟩)
      (.inr ⟨r, .inr (.inr j)⟩) =
      (exactSourceBobRefinedPOVM G n S D r b₀ y).operator b i j := by
  classical
  simp [exactSourceGlobalBobPOVM,
    pOVMChangeDecidableEq,
    exactSourceBobPaddedPOVM]

theorem matrixQuadraticExpectation_expand
    {d : Type*} [Fintype d] [DecidableEq d]
    (M : Matrix d d ℂ) (z : EuclideanSpace ℂ d) :
    quadraticExpectation
      (Matrix.toEuclideanCLM (n := d) (𝕜 := ℂ) M) z =
      (∑ i : d, (∑ j : d, M i j * z j) * star (z i)).re := by
  simp [quadraticExpectation, EuclideanSpace.inner_eq_star_dotProduct,
    Matrix.mulVec, dotProduct]

theorem finiteSum_injective_support
    {d e K : Type*} [Fintype d] [Fintype e] [AddCommMonoid K]
    (f : d → e) (injective : Function.Injective f)
    (g : e → K)
    (supported : ∀ j : e, (∀ i : d, f i ≠ j) → g j = 0) :
    (∑ j : e, g j) = ∑ i : d, g (f i) := by
  classical
  calc
    (∑ j : e, g j) = ∑ j ∈ Finset.univ.image f, g j := by
      symm
      apply Finset.sum_subset (Finset.subset_univ _)
      intro j _ outside
      apply supported j
      intro i same
      exact outside
        (Finset.mem_image.mpr ⟨i, Finset.mem_univ i, same⟩)
    _ = ∑ i : d, g (f i) := by
      rw [Finset.sum_image]
      intro i _ j _ same
      exact injective same

theorem matrixQuadraticExpectation_injective
    {d e : Type*}
    [Fintype d] [Fintype e] [DecidableEq d] [DecidableEq e]
    (f : d → e) (injective : Function.Injective f)
    (M : Matrix e e ℂ) (N : Matrix d d ℂ)
    (v : EuclideanSpace ℂ e) (z : EuclideanSpace ℂ d)
    (included : ∀ i : d, v (f i) = z i)
    (supported : ∀ j : e, (∀ i : d, f i ≠ j) → v j = 0)
    (compressed : ∀ i j : d, M (f i) (f j) = N i j) :
    quadraticExpectation
      (Matrix.toEuclideanCLM (n := e) (𝕜 := ℂ) M) v =
    quadraticExpectation
      (Matrix.toEuclideanCLM (n := d) (𝕜 := ℂ) N) z := by
  classical
  rw [matrixQuadraticExpectation_expand,
    matrixQuadraticExpectation_expand]
  congr 1
  rw [finiteSum_injective_support f injective
    (fun i : e => (∑ j : e, M i j * v j) * star (v i))
    (by
      intro i outside
      simp [supported i outside])]
  apply Finset.sum_congr rfl
  intro i _
  rw [included i]
  congr 1
  rw [finiteSum_injective_support f injective
    (fun j : e => M (f i) j * v j)
    (by
      intro j outside
      simp [supported j outside])]
  apply Finset.sum_congr rfl
  intro j _
  rw [compressed i j, included j]

theorem exactSourceGlobalJointBasis_injective
    (G : Game X Y A B) (n : ℕ) (S : Strategy (G.repeat n))
    (D : Finset (Fin n))
    (r : ExactHistoryFlag X Y A B D) :
    Function.Injective (exactSourceGlobalJointBasis G n S D r) := by
  intro i j same
  rcases i with ⟨ia, ib⟩
  rcases j with ⟨ja, jb⟩
  have alice := congrArg Prod.fst same
  have bob := congrArg Prod.snd same
  change
    (Sum.inr ⟨r, .inr (.inl ia)⟩ :
      ExactGlobalHistoryLocalIndex G n S D) =
      Sum.inr ⟨r, .inr (.inl ja)⟩ at alice
  change
    (Sum.inr ⟨r, .inr (.inr ib)⟩ :
      ExactGlobalHistoryLocalIndex G n S D) =
      Sum.inr ⟨r, .inr (.inr jb)⟩ at bob
  have alice_block :
      (Sum.inr (.inl ia) : ExactPaddedLocalIndex G n S D r) =
        Sum.inr (.inl ja) :=
    eq_of_heq (Sigma.mk.inj (Sum.inr.inj alice)).2
  have bob_block :
      (Sum.inr (.inr ib) : ExactPaddedLocalIndex G n S D r) =
        Sum.inr (.inr jb) :=
    eq_of_heq (Sigma.mk.inj (Sum.inr.inj bob)).2
  have alice' : ia = ja :=
    Sum.inl.inj (Sum.inr.inj alice_block)
  have bob' : ib = jb :=
    Sum.inr.inj (Sum.inr.inj bob_block)
  exact Prod.ext alice' bob'

theorem exactSourceGlobalJointBasis_vector
    (G : Game X Y A B) (n : ℕ) (S : Strategy (G.repeat n))
    (D : Finset (Fin n))
    (r : ExactHistoryFlag X Y A B D)
    (z : EuclideanSpace ℂ
      (ExactAliceLocalIndex G n S D r ×
        ExactBobLocalIndex G n S D r))
    (i : ExactAliceLocalIndex G n S D r ×
      ExactBobLocalIndex G n S D r) :
    exactGlobalHistoryVector G n S D r
        (exactPaddedVector G n S D r z)
        (exactSourceGlobalJointBasis G n S D r i) =
      z i := by
  rcases i with ⟨ia, ib⟩
  change
    (if ha : r = r then
      if hb : r = r then
        exactPaddedVector G n S D r z
          (ha ▸ Sum.inr (Sum.inl ia),
            hb ▸ Sum.inr (Sum.inr ib))
      else 0
    else 0) = z (ia, ib)
  simp only [exactPaddedVector, dite_true]

theorem exactSourceGlobalJointBasis_support
    (G : Game X Y A B) (n : ℕ) (S : Strategy (G.repeat n))
    (D : Finset (Fin n))
    (r : ExactHistoryFlag X Y A B D)
    (z : EuclideanSpace ℂ
      (ExactAliceLocalIndex G n S D r ×
        ExactBobLocalIndex G n S D r))
    (j : ExactGlobalHistoryLocalIndex G n S D ×
      ExactGlobalHistoryLocalIndex G n S D)
    (outside : ∀ i, exactSourceGlobalJointBasis
      G n S D r i ≠ j) :
    exactGlobalHistoryVector G n S D r
      (exactPaddedVector G n S D r z) j = 0 := by
  classical
  rcases j with ⟨u, v⟩
  rcases u with u | ⟨ru, u⟩
  · rfl
  rcases v with v | ⟨rv, v⟩
  · rfl
  change
    (if ha : ru = r then
      if hb : rv = r then
        exactPaddedVector G n S D r z
          (ha ▸ u, hb ▸ v)
      else 0
    else 0) = 0
  by_cases hu : ru = r
  · subst ru
    by_cases hv : rv = r
    · subst rv
      simp only [dite_true]
      rcases u with u | (u | u)
      · rfl
      · rcases v with v | (v | v)
        · rfl
        · rfl
        · exact False.elim
            (outside (u, v)
              (by rfl))
      · rfl
    · simp only [dif_neg hv, dite_true]
  · simp only [dif_neg hu]

end

noncomputable section

open scoped BigOperators ComplexOrder Kronecker MatrixOrder
  Matrix.Norms.L2Operator InnerProductSpace

set_option backward.isDefEq.respectTransparency false
set_option maxHeartbeats 2400000
set_option maxRecDepth 2048

open QuantumParallelRepetition.ClassicalSampling

attribute [local instance] Classical.propDecidable

variable {X Y A B : Type}
variable [Fintype X] [Fintype Y] [Fintype A] [Fintype B]

theorem exactSourceGlobalWinningEffect_compression
    [DecidableEq A] [DecidableEq B]
    (G : Game X Y A B) (n : ℕ) (S : Strategy (G.repeat n))
    (D : Finset (Fin n)) (r : ExactHistoryFlag X Y A B D)
    (a₀ : A) (b₀ : B) (x : X) (y : Y)
    (i j : ExactAliceLocalIndex G n S D r ×
      ExactBobLocalIndex G n S D r) :
    exactSourceGlobalWinningEffect G n S D a₀ b₀ x y
      (exactSourceGlobalJointBasis G n S D r i)
      (exactSourceGlobalJointBasis G n S D r j) =
      exactSourceWinningEffect G n S D r a₀ b₀ x y i j := by
  classical
  rcases i with ⟨ia, ib⟩
  rcases j with ⟨ja, jb⟩
  simp only [exactSourceGlobalWinningEffect,
    exactSourceWinningEffect, Matrix.sum_apply]
  apply Finset.sum_congr rfl
  intro a _
  apply Finset.sum_congr rfl
  intro b _
  split_ifs
  · simp only [exactSourceGlobalJointBasis,
      exactSourceJointEffect, Matrix.kroneckerMap_apply,
      exactSourceGlobalAlicePOVM_effect,
      exactSourceGlobalBobPOVM_effect]
  · rfl

theorem exactSourceGlobalWinningEffect_quadratic
    [DecidableEq A] [DecidableEq B]
    (G : Game X Y A B) (n : ℕ) (S : Strategy (G.repeat n))
    (D : Finset (Fin n)) (r : ExactHistoryFlag X Y A B D)
    (a₀ : A) (b₀ : B) (x : X) (y : Y)
    (z : EuclideanSpace ℂ
      (ExactAliceLocalIndex G n S D r ×
        ExactBobLocalIndex G n S D r)) :
    quadraticExpectation
      (Matrix.toEuclideanCLM
        (n := ExactGlobalHistoryLocalIndex G n S D ×
          ExactGlobalHistoryLocalIndex G n S D)
        (𝕜 := ℂ)
        (exactSourceGlobalWinningEffect G n S D a₀ b₀ x y))
      (exactGlobalHistoryVector G n S D r
        (exactPaddedVector G n S D r z)) =
      quadraticExpectation
        (exactSourceWinningEffectCLM G n S D r a₀ b₀ x y)
        z := by
  classical
  unfold exactSourceWinningEffectCLM
  apply matrixQuadraticExpectation_injective
    (exactSourceGlobalJointBasis G n S D r)
    (exactSourceGlobalJointBasis_injective G n S D r)
  · exact exactSourceGlobalJointBasis_vector G n S D r z
  · exact exactSourceGlobalJointBasis_support G n S D r z
  · exact exactSourceGlobalWinningEffect_compression
      G n S D r a₀ b₀ x y

end

noncomputable section

open scoped BigOperators ComplexOrder Kronecker MatrixOrder

set_option backward.isDefEq.respectTransparency false
set_option maxHeartbeats 1200000
set_option maxRecDepth 2048

attribute [local instance] Classical.propDecidable

variable {X Y A B : Type}
variable [Fintype X] [Fintype Y] [Fintype A] [Fintype B]

@[simp] theorem reindexedCatalystPOVM_effect
    {C d : Type*} [Fintype C] [Fintype d] [DecidableEq d]
    (P : POVM C d) (e : ℕ) (c : C)
    (i j : d) (k l : Fin e) :
    (reindexedPOVM finProdFinEquiv
      (purificationAlicePOVM (k := Fin e)
        (reindexedPOVM (Fintype.equivFin d) P))).operator c
      (finProdFinEquiv ((Fintype.equivFin d) i, k))
      (finProdFinEquiv ((Fintype.equivFin d) j, l)) =
      P.operator c i j * (if k = l then 1 else 0) := by
  classical
  simp [reindexedPOVM, purificationAlicePOVM,
    Matrix.kroneckerMap_apply, Matrix.one_apply]

end

noncomputable section

open scoped BigOperators ComplexOrder Kronecker MatrixOrder
  Matrix.Norms.L2Operator InnerProductSpace

attribute [local instance] Classical.propDecidable

variable {X Y A B : Type}
variable [Fintype X] [Fintype Y] [Fintype A] [Fintype B]

@[simp] theorem exactSourceGlobalCatalystBobPOVM_effect
    [DecidableEq B]
    (G : Game X Y A B) (n : ℕ) (S : Strategy (G.repeat n))
    (D : Finset (Fin n)) (e : ℕ) (b₀ b : B) (y : Y)
    (i j : ExactGlobalHistoryLocalIndex G n S D)
    (k l : Fin e) :
    (exactSourceGlobalCatalystBobPOVM G n S D e b₀ y).operator b
      (finProdFinEquiv
        (Fintype.equivFin
          (ExactGlobalHistoryLocalIndex G n S D) i, k))
      (finProdFinEquiv
        (Fintype.equivFin
          (ExactGlobalHistoryLocalIndex G n S D) j, l)) =
      (exactSourceGlobalBobPOVM G n S D b₀ y).operator b i j *
        (if k = l then 1 else 0) := by
  classical
  simp [exactSourceGlobalCatalystBobPOVM,
    reindexedPOVM, purificationAlicePOVM,
    Matrix.kroneckerMap_apply, Matrix.one_apply]

end

noncomputable section

open WithLp
open scoped BigOperators ComplexOrder Kronecker MatrixOrder
  Matrix.Norms.L2Operator InnerProductSpace

set_option backward.isDefEq.respectTransparency false
set_option maxHeartbeats 2400000
set_option maxRecDepth 2048

open QuantumParallelRepetition.ClassicalSampling

attribute [local instance] Classical.propDecidable

theorem residualIdentity_quadratic
    {s t : Type} [Fintype s] [Fintype t]
    [DecidableEq s] [DecidableEq t]
    (M : Matrix s s ℂ)
    (z : EuclideanSpace ℂ s)
    (κ : EuclideanSpace ℂ t)
    (normalized : ‖κ‖ = 1) :
    quadraticExpectation
      (Matrix.toEuclideanCLM (n := s × t) (𝕜 := ℂ)
        (M ⊗ₖ (1 : Matrix t t ℂ)))
      (toLp 2 (fun q : s × t => z q.1 * κ q.2)) =
    quadraticExpectation
      (Matrix.toEuclideanCLM (n := s) (𝕜 := ℂ) M) z := by
  classical
  rw [matrixQuadraticExpectation_expand,
    matrixQuadraticExpectation_expand]
  have residual_square :
      (∑ j : t, ‖κ j‖ ^ 2) = 1 := by
    rw [← EuclideanSpace.norm_sq_eq, normalized]
    norm_num
  have residual_complex :
      (∑ j : t, κ j * star (κ j)) = 1 := by
    calc
      (∑ j : t, κ j * star (κ j)) =
          (↑(∑ j : t, ‖κ j‖ ^ 2) : ℂ) := by
            push_cast
            apply Finset.sum_congr rfl
            intro j _
            simpa [Complex.normSq_eq_norm_sq] using
              Complex.mul_conj (κ j)
      _ = 1 := by rw [residual_square]; norm_num
  congr 1
  change
    (∑ i : s × t,
      (∑ j : s × t,
        (M i.1 j.1 * (if i.2 = j.2 then 1 else 0)) *
          (z j.1 * κ j.2)) *
        star (z i.1 * κ i.2)) =
      ∑ i : s, (∑ j : s, M i j * z j) * star (z i)
  rw [Fintype.sum_prod_type]
  calc
    (∑ i : s, ∑ k : t,
      (∑ j : s × t,
        (M i j.1 * (if k = j.2 then 1 else 0)) *
          (z j.1 * κ j.2)) *
        star (z i * κ k)) =
      ∑ i : s, ∑ k : t,
        ((∑ j : s, M i j * z j) * κ k) *
          star (z i * κ k) := by
            apply Finset.sum_congr rfl
            intro i _
            apply Finset.sum_congr rfl
            intro k _
            congr 1
            rw [Fintype.sum_prod_type]
            simp [mul_ite, ite_mul, Finset.sum_mul, mul_assoc]
    _ = ∑ i : s,
      ((∑ j : s, M i j * z j) * star (z i)) *
        (∑ k : t, κ k * star (κ k)) := by
          apply Finset.sum_congr rfl
          intro i _
          rw [Finset.mul_sum]
          apply Finset.sum_congr rfl
          intro k _
          simp only [star_mul]
          ring
    _ = ∑ i : s, (∑ j : s, M i j * z j) * star (z i) := by
          rw [residual_complex]
          simp

variable {X Y A B : Type}
variable [Fintype X] [Fintype Y] [Fintype A] [Fintype B]

@[simp] theorem exactSourceGlobalCatalystAlicePOVM_effect_global
    [DecidableEq A]
    (G : Game X Y A B) (n : ℕ) (S : Strategy (G.repeat n))
    (D : Finset (Fin n)) (e : ℕ) (a₀ a : A) (x : X)
    (i j : ExactGlobalHistoryLocalIndex G n S D)
    (k l : Fin e) :
    (exactSourceGlobalCatalystAlicePOVM
      G n S D e a₀ x).operator a
      (finProdFinEquiv
        ((Fintype.equivFin
          (ExactGlobalHistoryLocalIndex G n S D)) i, k))
      (finProdFinEquiv
        ((Fintype.equivFin
          (ExactGlobalHistoryLocalIndex G n S D)) j, l)) =
      (exactSourceGlobalAlicePOVM
        G n S D a₀ x).operator a i j *
        (if k = l then 1 else 0) := by
  classical
  change
    (reindexedPOVM finProdFinEquiv
      (purificationAlicePOVM (k := Fin e)
        (reindexedPOVM
          (Fintype.equivFin
            (ExactGlobalHistoryLocalIndex G n S D))
          (exactSourceGlobalAlicePOVM G n S D a₀ x)))).operator a
      (finProdFinEquiv
        ((Fintype.equivFin
          (ExactGlobalHistoryLocalIndex G n S D)) i, k))
      (finProdFinEquiv
        ((Fintype.equivFin
          (ExactGlobalHistoryLocalIndex G n S D)) j, l)) = _
  exact reindexedCatalystPOVM_effect
    (exactSourceGlobalAlicePOVM G n S D a₀ x)
    e a i j k l

theorem exactSourceGlobalCatalystWinningEffect_compression
    [DecidableEq A] [DecidableEq B]
    (G : Game X Y A B) (n : ℕ) (S : Strategy (G.repeat n))
    (D : Finset (Fin n)) (e : ℕ)
    (a₀ : A) (b₀ : B) (x : X) (y : Y)
    (i j :
      (ExactGlobalHistoryLocalIndex G n S D ×
       ExactGlobalHistoryLocalIndex G n S D) ×
      (Fin e × Fin e)) :
    exactSourceGlobalCatalystWinningEffect
        G n S D e a₀ b₀ x y
      (exactSourceGlobalCatalystBasisEquiv G n S D e i)
      (exactSourceGlobalCatalystBasisEquiv G n S D e j) =
      ((exactSourceGlobalWinningEffect G n S D a₀ b₀ x y) ⊗ₖ
        (1 : Matrix (Fin e × Fin e) (Fin e × Fin e) ℂ)) i j := by
  classical
  rcases i with ⟨⟨ia, ib⟩, ⟨ka, kb⟩⟩
  rcases j with ⟨⟨ja, jb⟩, ⟨la, lb⟩⟩
  by_cases alice_residual : ka = la
  · subst la
    by_cases bob_residual : kb = lb
    · subst lb
      simp only [exactSourceGlobalCatalystWinningEffect,
        exactSourceGlobalWinningEffect, Matrix.sum_apply,
        Matrix.kroneckerMap_apply,
        exactSourceGlobalCatalystBasisEquiv,
        Equiv.trans_apply, Equiv.prodCongr_apply,
        Equiv.prodProdProdComm_apply, Matrix.one_apply,
        ite_true, mul_one]
      apply Finset.sum_congr rfl
      intro a _
      apply Finset.sum_congr rfl
      intro b _
      split_ifs with winning
      · simp [Matrix.kroneckerMap_apply,
                    exactSourceGlobalCatalystAlicePOVM_effect_global,
          exactSourceGlobalCatalystBobPOVM_effect]
      · rfl
    · simp [exactSourceGlobalCatalystWinningEffect,
        exactSourceGlobalWinningEffect,
        exactSourceGlobalCatalystBasisEquiv,
        Matrix.sum_apply, Matrix.kroneckerMap_apply,                         bob_residual]
      apply Finset.sum_eq_zero
      intro a _
      apply Finset.sum_eq_zero
      intro b _
      split_ifs with winning
      · simp [Matrix.kroneckerMap_apply,
          exactSourceGlobalCatalystAlicePOVM_effect_global,
          exactSourceGlobalCatalystBobPOVM_effect,
          bob_residual]
      · rfl
  · simp [exactSourceGlobalCatalystWinningEffect,
      exactSourceGlobalWinningEffect,
      exactSourceGlobalCatalystBasisEquiv,
      Matrix.sum_apply, Matrix.kroneckerMap_apply,                   alice_residual]
    apply Finset.sum_eq_zero
    intro a _
    apply Finset.sum_eq_zero
    intro b _
    split_ifs with winning
    · simp [Matrix.kroneckerMap_apply,
        exactSourceGlobalCatalystAlicePOVM_effect_global,
        exactSourceGlobalCatalystBobPOVM_effect,
        alice_residual]
    · rfl

theorem exactSourceGlobalCatalystWinningEffect_tensor_quadratic
    [DecidableEq A] [DecidableEq B]
    (G : Game X Y A B) (n : ℕ) (S : Strategy (G.repeat n))
    (D : Finset (Fin n))
    (r : ExactHistoryFlag X Y A B D)
    (e : ℕ) (residual_positive : 0 < e)
    (a₀ : A) (b₀ : B) (x : X) (y : Y) :
    quadraticExpectation
      (Matrix.toEuclideanCLM
        (n :=
          Fin (Fintype.card
            (ExactGlobalHistoryLocalIndex G n S D) * e) ×
          Fin (Fintype.card
            (ExactGlobalHistoryLocalIndex G n S D) * e))
        (𝕜 := ℂ)
        (exactSourceGlobalCatalystWinningEffect
          G n S D e a₀ b₀ x y))
      (tensorEmbezzlementTarget (n := e)
        (exactGlobalHistoryFinPsi G n S D r x y)) =
    quadraticExpectation
      (Matrix.toEuclideanCLM
        (n :=
          ExactGlobalHistoryLocalIndex G n S D ×
          ExactGlobalHistoryLocalIndex G n S D)
        (𝕜 := ℂ)
        (exactSourceGlobalWinningEffect
          G n S D a₀ b₀ x y))
      (exactGlobalHistoryVector G n S D r
        (exactPsi G n S D r x y)) := by
  classical
  let source := exactGlobalHistoryVector G n S D r
    (exactPsi G n S D r x y)
  let residual := embezzlementState e
  let tensor : EuclideanSpace ℂ
      ((ExactGlobalHistoryLocalIndex G n S D ×
        ExactGlobalHistoryLocalIndex G n S D) ×
       (Fin e × Fin e)) :=
    toLp 2 (fun q => source q.1 * residual q.2)
  let basis := exactSourceGlobalCatalystBasisEquiv G n S D e
  calc
    _ = quadraticExpectation
      (Matrix.toEuclideanCLM
        (n :=
          (ExactGlobalHistoryLocalIndex G n S D ×
            ExactGlobalHistoryLocalIndex G n S D) ×
          (Fin e × Fin e))
        (𝕜 := ℂ)
        ((exactSourceGlobalWinningEffect
          G n S D a₀ b₀ x y) ⊗ₖ
          (1 : Matrix (Fin e × Fin e) (Fin e × Fin e) ℂ)))
      tensor := by
        apply matrixQuadraticExpectation_injective
          basis basis.injective
        · intro i
          rcases i with ⟨⟨ia, ib⟩, ⟨ka, kb⟩⟩
          have alice_system :
              (finProdFinEquiv
                ((Fintype.equivFin
                  (ExactGlobalHistoryLocalIndex G n S D))
                  ia, ka)).divNat =
                (Fintype.equivFin
                  (ExactGlobalHistoryLocalIndex G n S D)) ia := by
            exact congrArg Prod.fst
              (Equiv.symm_apply_apply finProdFinEquiv
                ((Fintype.equivFin
                  (ExactGlobalHistoryLocalIndex G n S D)) ia, ka))
          have alice_residual :
              (finProdFinEquiv
                ((Fintype.equivFin
                  (ExactGlobalHistoryLocalIndex G n S D))
                  ia, ka)).modNat = ka := by
            exact congrArg Prod.snd
              (Equiv.symm_apply_apply finProdFinEquiv
                ((Fintype.equivFin
                  (ExactGlobalHistoryLocalIndex G n S D)) ia, ka))
          have bob_system :
              (finProdFinEquiv
                ((Fintype.equivFin
                  (ExactGlobalHistoryLocalIndex G n S D))
                  ib, kb)).divNat =
                (Fintype.equivFin
                  (ExactGlobalHistoryLocalIndex G n S D)) ib := by
            exact congrArg Prod.fst
              (Equiv.symm_apply_apply finProdFinEquiv
                ((Fintype.equivFin
                  (ExactGlobalHistoryLocalIndex G n S D)) ib, kb))
          have bob_residual :
              (finProdFinEquiv
                ((Fintype.equivFin
                  (ExactGlobalHistoryLocalIndex G n S D))
                  ib, kb)).modNat = kb := by
            exact congrArg Prod.snd
              (Equiv.symm_apply_apply finProdFinEquiv
                ((Fintype.equivFin
                  (ExactGlobalHistoryLocalIndex G n S D)) ib, kb))
          simp [basis, tensor, source, residual,
            exactSourceGlobalCatalystBasisEquiv,
            tensorEmbezzlementTarget,
            exactGlobalHistoryFinPsi,
            exactGlobalHistoryFinReindex,
            LinearIsometryEquiv.piLpCongrLeft_apply,
            Equiv.piCongrLeft'_apply,
            alice_system, alice_residual,
            bob_system, bob_residual]
        · intro j outside
          exact False.elim
            (outside (basis.symm j) (basis.apply_symm_apply j))
        · exact exactSourceGlobalCatalystWinningEffect_compression
            G n S D e a₀ b₀ x y
    _ = _ := residualIdentity_quadratic
      (exactSourceGlobalWinningEffect G n S D a₀ b₀ x y)
      source residual
      (embezzlementState_norm e residual_positive)

theorem exactPsi_eq_padded_normalizedPureVector_of_ne_zero
    (G : Game X Y A B) (n : ℕ) (S : Strategy (G.repeat n))
    (D : Finset (Fin n))
    (r : ExactHistoryFlag X Y A B D)
    (x : X) (y : Y)
    (nonzero : exactUnnormalizedPsi G n S D r x y ≠ 0) :
    exactPsi G n S D r x y =
      exactPaddedVector G n S D r
        (normalizedPureVector
          (exactUnnormalizedPsi G n S D r x y)) := by
  classical
  let raw := exactUnnormalizedPsi G n S D r x y
  have padded_nonzero :
      exactPaddedVector G n S D r raw ≠ 0 := by
    intro zero
    apply nonzero
    apply norm_eq_zero.mp
    rw [← exactPaddedVector_norm G n S D r raw, zero]
    exact norm_zero
  unfold exactPsi normalizeOrDefault
  rw [if_neg padded_nonzero, NormedSpace.normalize,
    exactPaddedVector_norm]
  ext q
  rcases q with ⟨i, j⟩
  rcases i with i | (i | i) <;>
    rcases j with j | (j | j) <;>
    simp [exactPaddedVector, normalizedPureVector,
      smul_eq_mul]

end

end QuantumParallelRepetition


open QuantumParallelRepetition
open scoped ComplexOrder Matrix BigOperators InnerProductSpace
open Complex Matrix Finset
open WithLp
open scoped BigOperators ComplexOrder Kronecker MatrixOrder
  Matrix.Norms.L2Operator InnerProductSpace
set_option backward.isDefEq.respectTransparency false
set_option maxHeartbeats 2400000
set_option maxRecDepth 2048
open QuantumParallelRepetition.ClassicalSampling
attribute [local instance] Classical.propDecidable
variable {X Y A B : Type}
variable [Fintype X] [Fintype Y] [Fintype A] [Fintype B]

theorem solution
    [DecidableEq A] [DecidableEq B]
    (G : Game X Y A B) (n : ℕ) (S : Strategy (G.repeat n))
    (D : Finset (Fin n))
    (positive : 0 < repeatedPostselectionMass G n S D)
    (e : ℕ) (residual_positive : 0 < e)
    (a₀ : A) (b₀ : B)
    (t : ExactLocallySampleableTuple X Y A B D)
    (supported : exactLocallySampleableLaw G n S D t ≠ 0) :
    exactSourceConditionalWinningProbability G n S D t =
      quadraticExpectation
        (Matrix.toEuclideanCLM
          (n :=
            Fin (Fintype.card
              (ExactGlobalHistoryLocalIndex G n S D) * e) ×
            Fin (Fintype.card
              (ExactGlobalHistoryLocalIndex G n S D) * e))
          (𝕜 := ℂ)
          (exactSourceGlobalCatalystWinningEffect
            G n S D e a₀ b₀ t.2.1 t.2.2.1))
        (tensorEmbezzlementTarget (n := e)
          (exactGlobalHistoryFinPsi G n S D t.2.2.2
            t.2.1 t.2.2.1)) := by
  classical
  have coordinate :=
    exactLocallySampleableLaw_coordinate_eq_of_ne_zero
      G n S D t supported
  have accepted :=
    exactLocallySampleableLaw_accepted_of_ne_zero
      G n S D t supported
  have fiber :=
    exactLocallySampleableLaw_fiber_ne_zero_of_ne_zero
      G n S D t supported
  have raw_nonzero :=
    exactLocallySampleableLaw_psi_ne_zero_of_ne_zero
      G n S D t supported
  rw [exactSourceGlobalCatalystWinningEffect_tensor_quadratic
    G n S D t.2.2.2 e residual_positive a₀ b₀ t.2.1 t.2.2.1]
  rw [exactPsi_eq_padded_normalizedPureVector_of_ne_zero
    G n S D t.2.2.2 t.2.1 t.2.2.1 raw_nonzero]
  rw [exactSourceGlobalWinningEffect_quadratic
    G n S D t.2.2.2 a₀ b₀ t.2.1 t.2.2.1]
  have tuple :
      t = (t.2.2.2.seed.coordinate,
        t.2.1, t.2.2.1, t.2.2.2) := by
    rcases t with ⟨i, x, y, r⟩
    simpa using coordinate
  conv_lhs => rw [tuple]
  exact
    exactSourceConditionalWinningProbability_eq_normalized_verifier
      G n S D positive t.2.2.2 accepted a₀ b₀
      t.2.1 t.2.2.1 fiber
