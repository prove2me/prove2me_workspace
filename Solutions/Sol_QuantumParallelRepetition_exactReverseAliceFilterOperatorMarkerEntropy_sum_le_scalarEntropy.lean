import Definitions.Def_quantum_parallel_repetition_game
import Definitions.Def_qpr_core_22
import Theorems.Thm_QuantumParallelRepetition_trace_mul_posSemidef_nonneg
import Theorems.Thm_QuantumParallelRepetition_matrixLogEntropy_born_lower_bound_left
import Theorems.Thm_QuantumParallelRepetition_exactAliceQuestionFilter_posSemidef
import Theorems.Thm_QuantumParallelRepetition_exactBobQuestionFilter_posSemidef
import Theorems.Thm_QuantumParallelRepetition_exactFairAcceptedJointStatistic_reindex
import Theorems.Thm_QuantumParallelRepetition_exactReverseAliceLowQuestionPotential_eq_alignedPrefix
import Theorems.Thm_QuantumParallelRepetition_exactReverseAliceHighQuestionPotential_eq_alignedPrefix
import Theorems.Thm_QuantumParallelRepetition_exactReverseAliceFilterOperatorMarkerEntropy_sum_telescope
import Mathlib.Algebra.Algebra.Basic
import Mathlib.Algebra.Algebra.Defs
import Mathlib.Algebra.Algebra.Spectrum.Basic
import Mathlib.Algebra.BigOperators.Field
import Mathlib.Algebra.BigOperators.Group.Finset.Basic
import Mathlib.Algebra.BigOperators.Group.Finset.Defs
import Mathlib.Algebra.BigOperators.Group.Finset.Sigma
import Mathlib.Algebra.BigOperators.Ring.Finset
import Mathlib.Algebra.Field.Defs
import Mathlib.Algebra.Group.Action.Defs
import Mathlib.Algebra.Group.Basic
import Mathlib.Algebra.Group.Defs
import Mathlib.Algebra.Group.Hom.Defs
import Mathlib.Algebra.GroupWithZero.Action.Defs
import Mathlib.Algebra.GroupWithZero.Basic
import Mathlib.Algebra.GroupWithZero.Defs
import Mathlib.Algebra.GroupWithZero.NeZero
import Mathlib.Algebra.GroupWithZero.Units.Basic
import Mathlib.Algebra.Module.BigOperators
import Mathlib.Algebra.Module.Defs
import Mathlib.Algebra.Module.LinearMap.Defs
import Mathlib.Algebra.Module.NatInt
import Mathlib.Algebra.Module.Submodule.LinearMap
import Mathlib.Algebra.NeZero
import Mathlib.Algebra.Order.BigOperators.Group.Finset
import Mathlib.Algebra.Order.Group.Unbundled.Basic
import Mathlib.Algebra.Order.GroupWithZero.Unbundled.Basic
import Mathlib.Algebra.Order.GroupWithZero.Unbundled.Defs
import Mathlib.Algebra.Order.Module.Defs
import Mathlib.Algebra.Order.Monoid.Defs
import Mathlib.Algebra.Order.Monoid.Unbundled.Defs
import Mathlib.Algebra.Order.Ring.Defs
import Mathlib.Algebra.Order.Star.Basic
import Mathlib.Algebra.Order.ZeroLEOne
import Mathlib.Algebra.Ring.Defs
import Mathlib.Algebra.Ring.Hom.Defs
import Mathlib.Algebra.Ring.Int.Defs
import Mathlib.Algebra.Ring.Nat
import Mathlib.Algebra.Star.Basic
import Mathlib.Algebra.Star.SelfAdjoint
import Mathlib.Analysis.CStarAlgebra.Classes
import Mathlib.Analysis.CStarAlgebra.ContinuousFunctionalCalculus.Unital
import Mathlib.Analysis.Complex.Basic
import Mathlib.Analysis.Complex.Order
import Mathlib.Analysis.InnerProductSpace.Basic
import Mathlib.Analysis.InnerProductSpace.Defs
import Mathlib.Analysis.Matrix.HermitianFunctionalCalculus
import Mathlib.Analysis.Matrix.Normed
import Mathlib.Analysis.Matrix.Order
import Mathlib.Analysis.Matrix.PosDef
import Mathlib.Analysis.Matrix.Spectrum
import Mathlib.Analysis.Normed.Field.Basic
import Mathlib.Analysis.Normed.Lp.WithLp
import Mathlib.Analysis.Normed.Module.Basic
import Mathlib.Analysis.Normed.Ring.Basic
import Mathlib.Analysis.RCLike.Basic
import Mathlib.Analysis.SpecialFunctions.Log.Basic
import Mathlib.Analysis.SpecialFunctions.Log.NegMulLog
import Mathlib.Data.Complex.Basic
import Mathlib.Data.Finset.Card
import Mathlib.Data.Finset.Defs
import Mathlib.Data.Finset.SDiff
import Mathlib.Data.Fintype.Basic
import Mathlib.Data.Fintype.Defs
import Mathlib.Data.Fintype.EquivFin
import Mathlib.Data.Fintype.Pi
import Mathlib.Data.Fintype.Prod
import Mathlib.Data.Fintype.Sets
import Mathlib.Data.FunLike.Basic
import Mathlib.Data.Int.Cast.Basic
import Mathlib.Data.Int.Cast.Defs
import Mathlib.Data.Int.Cast.Lemmas
import Mathlib.Data.Matrix.Basic
import Mathlib.Data.Matrix.Diagonal
import Mathlib.Data.Matrix.Mul
import Mathlib.Data.Nat.Cast.Basic
import Mathlib.Data.Nat.Cast.Defs
import Mathlib.Data.Real.Basic
import Mathlib.Data.Real.Star
import Mathlib.Data.Real.StarOrdered
import Mathlib.Data.Set.Defs
import Mathlib.Data.Set.Operations
import Mathlib.Data.SetLike.Basic
import Mathlib.GroupTheory.GroupAction.Hom
import Mathlib.GroupTheory.GroupAction.Ring
import Mathlib.LinearAlgebra.Complex.Module
import Mathlib.LinearAlgebra.Matrix.ConjTranspose
import Mathlib.LinearAlgebra.Matrix.Defs
import Mathlib.LinearAlgebra.Matrix.Hermitian
import Mathlib.LinearAlgebra.Matrix.Kronecker
import Mathlib.LinearAlgebra.Matrix.PosDef
import Mathlib.MeasureTheory.Measure.MeasureSpace
import Mathlib.Order.Basic
import Mathlib.Order.Defs.LinearOrder
import Mathlib.Order.Defs.PartialOrder
import Mathlib.Order.Lattice
import Mathlib.Order.RelClasses
import Mathlib.Tactic.FieldSimp.Lemmas
import Mathlib.Tactic.Linarith.Lemmas
import Mathlib.Tactic.Module
import Mathlib.Tactic.NormNum.Basic
import Mathlib.Tactic.NormNum.Ineq
import Mathlib.Tactic.NormNum.Result
import Mathlib.Tactic.Ring.Basic
import Mathlib.Tactic.Ring.Common
import Mathlib.Topology.Algebra.Ring.Basic
import Mathlib.Topology.Algebra.Ring.Real
import Mathlib.Topology.Algebra.Star.Real
import Mathlib.Topology.ContinuousMap.ContinuousSqrt
import Mathlib.Topology.Defs.Filter
import Mathlib.Topology.Instances.Matrix
import Mathlib.Topology.MetricSpace.Basic
import Mathlib.Topology.MetricSpace.Defs
import Mathlib.Topology.MetricSpace.Pseudo.Defs
import Mathlib.Topology.UniformSpace.Defs

namespace QuantumParallelRepetition

noncomputable section

open scoped BigOperators ComplexOrder Kronecker MatrixOrder
open Matrix

variable {X Y A B : Type*}

namespace Game

variable [Fintype X] [Fintype Y] [Fintype A] [Fintype B]

theorem marginalY_nonneg (G : Game X Y A B) (y : Y) :
    0 ≤ G.marginalY y := by
  unfold marginalY
  exact Finset.sum_nonneg fun x _ => G.weight_nonneg x y

end Game

end

noncomputable section

open scoped BigOperators Kronecker

namespace Game

variable {X Y A B : Type*}
variable [Fintype X] [Fintype Y] [Fintype A] [Fintype B]

theorem questionWeight_le_marginalY
    (G : Game X Y A B) (x : X) (y : Y) :
    G.questionWeight x y ≤ G.marginalY y := by
  unfold marginalY
  exact Finset.single_le_sum
    (fun x _ => G.weight_nonneg x y)
    (Finset.mem_univ x)

theorem conditionalXGivenY_nonneg
    (G : Game X Y A B) (y : Y) (x : X) :
    0 ≤ G.conditionalXGivenY y x := by
  exact div_nonneg (G.weight_nonneg x y)
    (G.marginalY_nonneg y)

theorem marginalY_mul_conditionalXGivenY
    (G : Game X Y A B) (x : X) (y : Y) :
    G.marginalY y * G.conditionalXGivenY y x =
      G.questionWeight x y := by
  unfold conditionalXGivenY
  by_cases hy : G.marginalY y = 0
  · have hzero : G.questionWeight x y = 0 := by
      have hle := G.questionWeight_le_marginalY x y
      have hnonneg := G.weight_nonneg x y
      rw [hy] at hle
      linarith
    simp [hy, hzero]
  · field_simp

theorem conditionalXGivenY_sum
    (G : Game X Y A B) (y : Y)
    (hy : 0 < G.marginalY y) :
    (∑ x : X, G.conditionalXGivenY y x) = 1 := by
  unfold conditionalXGivenY
  rw [← Finset.sum_div]
  change G.marginalY y / G.marginalY y = 1
  exact div_self hy.ne'

end Game

section RepeatedQuantumFilters

open scoped ComplexOrder MatrixOrder

variable {X Y A B : Type*}
variable [Fintype X] [Fintype Y] [Fintype A] [Fintype B]

theorem conditionedAliceEffect_complement_positive
    (G : Game X Y A B) (n : ℕ)
    (S : Strategy (G.repeat n))
    (D : Finset (Fin n))
    (α : {i : Fin n // i ∈ D} → A)
    (xs : Fin n → X) :
    (1 - conditionedAliceEffect G n S D α xs).PosSemidef := by
  classical
  have hsplit :
      1 - conditionedAliceEffect G n S D α xs =
        ∑ answers : Fin n → A,
          if ∀ (i : Fin n) (hi : i ∈ D),
            answers i = α ⟨i, hi⟩
          then 0
          else (S.aliceMeasurement xs).operator answers := by
    unfold conditionedAliceEffect
    rw [← (S.aliceMeasurement xs).complete,
      ← Finset.sum_sub_distrib]
    apply Finset.sum_congr rfl
    intro answers _
    split_ifs <;> simp
  rw [hsplit]
  apply Matrix.posSemidef_sum Finset.univ
  intro answers _
  split_ifs
  · exact Matrix.PosSemidef.zero
  · exact (S.aliceMeasurement xs).positive answers

theorem conditionedBobEffect_complement_positive
    (G : Game X Y A B) (n : ℕ)
    (S : Strategy (G.repeat n))
    (D : Finset (Fin n))
    (β : {i : Fin n // i ∈ D} → B)
    (ys : Fin n → Y) :
    (1 - conditionedBobEffect G n S D β ys).PosSemidef := by
  classical
  have hsplit :
      1 - conditionedBobEffect G n S D β ys =
        ∑ answers : Fin n → B,
          if ∀ (i : Fin n) (hi : i ∈ D),
            answers i = β ⟨i, hi⟩
          then 0
          else (S.bobMeasurement ys).operator answers := by
    unfold conditionedBobEffect
    rw [← (S.bobMeasurement ys).complete,
      ← Finset.sum_sub_distrib]
    apply Finset.sum_congr rfl
    intro answers _
    split_ifs <;> simp
  rw [hsplit]
  apply Matrix.posSemidef_sum Finset.univ
  intro answers _
  split_ifs
  · exact Matrix.PosSemidef.zero
  · exact (S.bobMeasurement ys).positive answers

end RepeatedQuantumFilters

end

noncomputable section

open Matrix
open scoped BigOperators Kronecker ComplexOrder MatrixOrder

set_option backward.isDefEq.respectTransparency false
set_option maxHeartbeats 600000

section HistoryContractions

variable {X Y A B : Type*}
variable [Fintype X] [Fintype Y] [Fintype A] [Fintype B]

theorem Game.conditionalXGivenY_sum_le_one
    (G : Game X Y A B) (y : Y) :
    (∑ x : X, G.conditionalXGivenY y x) ≤ 1 := by
  by_cases hy : G.marginalY y = 0
  · simp [Game.conditionalXGivenY, hy]
  · have hpos : 0 < G.marginalY y :=
      lt_of_le_of_ne (G.marginalY_nonneg y) (Ne.symm hy)
    rw [G.conditionalXGivenY_sum y hpos]

theorem matrixLogEntropy_nonpos_of_contraction
    {d : Type*} [Fintype d] [DecidableEq d]
    {F : Matrix d d ℂ}
    (hF : F.PosSemidef)
    (hcomplement : (1 - F).PosSemidef) :
    (-(cfc (fun z : ℝ => z * Real.log z) F)).PosSemidef := by
  have hFle : F ≤ (1 : Matrix d d ℂ) :=
    Matrix.le_iff.mpr hcomplement
  have hupper : ∀ z ∈ spectrum ℝ F, z ≤ 1 :=
    (CFC.le_one_iff (R := ℝ) F hF.isHermitian).mp hFle
  have hlower : ∀ z ∈ spectrum ℝ F, 0 ≤ z := by
    intro z hz
    rw [hF.isHermitian.spectrum_real_eq_range_eigenvalues] at hz
    obtain ⟨i, rfl⟩ := hz
    exact hF.eigenvalues_nonneg i
  have hnonpos : cfc (fun z : ℝ => z * Real.log z) F ≤
      (0 : Matrix d d ℂ) := by
    apply cfc_nonpos
    intro z hz
    exact Real.mul_log_nonpos (hlower z hz) (hupper z hz)
  simpa using Matrix.le_iff.mp hnonpos

theorem matrixLogEntropy_born_nonpos_left
    {dA dB : Type*}
    [Fintype dA] [Fintype dB]
    [DecidableEq dA] [DecidableEq dB]
    (ρ : DensityMatrix (dA × dB))
    (F : Matrix dA dA ℂ)
    (G : Matrix dB dB ℂ)
    (hF : F.PosSemidef)
    (hFcomplement : (1 - F).PosSemidef)
    (hG : G.PosSemidef) :
    bornTracePairing ρ.matrix
        (cfc (fun z : ℝ => z * Real.log z) F) G ≤ 0 := by
  have hneg := matrixLogEntropy_nonpos_of_contraction hF hFcomplement
  have hpair : 0 ≤ bornTracePairing ρ.matrix
      (-(cfc (fun z : ℝ => z * Real.log z) F)) G := by
    exact trace_mul_posSemidef_nonneg ρ.positive (hneg.kronecker hG)
  have hrewrite : bornTracePairing ρ.matrix
      (-(cfc (fun z : ℝ => z * Real.log z) F)) G =
      -bornTracePairing ρ.matrix
        (cfc (fun z : ℝ => z * Real.log z) F) G := by
    simp
  rw [hrewrite] at hpair
  exact neg_nonneg.mp hpair

end HistoryContractions

end

open scoped ComplexOrder Matrix BigOperators InnerProductSpace
open Complex Matrix Finset

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

theorem exactAliceQuestionMass_nonneg
    (G : Game X Y A B) (n : ℕ)
    (D : Finset (Fin n))
    (seed : ExactRemainingSeed D)
    (history : ExactRevealHistory X Y D seed)
    (x : X) :
    0 ≤ exactAliceQuestionMass G n D seed history x := by
  unfold exactAliceQuestionMass
  apply Finset.sum_nonneg
  intro q _
  split
  · exact exactPriorQuestionWeight_nonneg G n q
  · exact le_rfl

theorem exactBobQuestionMass_nonneg
    (G : Game X Y A B) (n : ℕ)
    (D : Finset (Fin n))
    (seed : ExactRemainingSeed D)
    (history : ExactRevealHistory X Y D seed)
    (y : Y) :
    0 ≤ exactBobQuestionMass G n D seed history y := by
  unfold exactBobQuestionMass
  apply Finset.sum_nonneg
  intro q _
  split
  · exact exactPriorQuestionWeight_nonneg G n q
  · exact le_rfl

theorem exactAliceMeanFilter_posSemidef
    (G : Game X Y A B) (n : ℕ) (S : Strategy (G.repeat n))
    (D : Finset (Fin n))
    (seed : ExactRemainingSeed D)
    (history : ExactRevealHistory X Y D seed)
    (answer : {j : Fin n // j ∈ D} → A)
    (y : Y) :
    (exactAliceMeanFilter
      G n S D seed history answer y).PosSemidef := by
  unfold exactAliceMeanFilter
  apply Matrix.posSemidef_sum Finset.univ
  intro x _
  exact (exactAliceQuestionFilter_posSemidef
    G n S D seed history answer x).smul
    (G.conditionalXGivenY_nonneg y x)

end

noncomputable section

open scoped BigOperators ComplexOrder MatrixOrder

theorem source_equation_nineteen_alice
    {dA dB : Type*}
    [Fintype dA] [Fintype dB]
    [DecidableEq dA] [DecidableEq dB]
    (ρ : DensityMatrix (dA × dB))
    (F : Matrix dA dA ℂ) (hF : F.PosSemidef)
    (hFcomplement : (1 - F).PosSemidef)
    (G : Matrix dB dB ℂ) (hG : G.PosSemidef)
    (hGcomplement : (1 - G).PosSemidef) :
    -bornTracePairing ρ.matrix
        (cfc (fun z : ℝ => z * Real.log z) F) G ≤
      Real.negMulLog (bornTracePairing ρ.matrix F G) :=
  matrixLogEntropy_born_lower_bound_left
    ρ F hF hFcomplement G hG hGcomplement

end

noncomputable section

open scoped BigOperators ComplexOrder Kronecker MatrixOrder
  Matrix.Norms.L2Operator InnerProductSpace

set_option backward.isDefEq.respectTransparency false
set_option maxHeartbeats 2400000
set_option maxRecDepth 2048

attribute [local instance] Classical.propDecidable

variable {X Y A B : Type*}
variable [Fintype X] [Fintype Y] [Fintype A] [Fintype B]

theorem exactAliceQuestionConditionalWeight_sum
    (G : Game X Y A B) (n : ℕ)
    (D : Finset (Fin n))
    (seed : ExactRemainingSeed D)
    (history : ExactRevealHistory X Y D seed)
    (x : X) :
    (∑ q : ExactFullQuestion X Y n,
      if exactRevealCode D seed q = history ∧
        q.1 seed.coordinate.val = x then
        exactPriorQuestionWeight G n q /
          exactAliceQuestionMass G n D seed history x
      else 0) =
      if exactAliceQuestionMass G n D seed history x = 0
      then 0 else 1 := by
  classical
  calc
    (∑ q : ExactFullQuestion X Y n,
      if exactRevealCode D seed q = history ∧
        q.1 seed.coordinate.val = x then
        exactPriorQuestionWeight G n q /
          exactAliceQuestionMass G n D seed history x
      else 0) =
      (∑ q : ExactFullQuestion X Y n,
        if exactRevealCode D seed q = history ∧
          q.1 seed.coordinate.val = x then
          exactPriorQuestionWeight G n q
        else 0) /
          exactAliceQuestionMass G n D seed history x := by
            rw [Finset.sum_div]
            apply Finset.sum_congr rfl
            intro q _
            split <;> simp_all
    _ = exactAliceQuestionMass G n D seed history x /
          exactAliceQuestionMass G n D seed history x := by
            rfl
    _ = _ := by
      split_ifs with zero
      · simp [zero]
      · exact div_self zero

theorem exactBobQuestionConditionalWeight_sum
    (G : Game X Y A B) (n : ℕ)
    (D : Finset (Fin n))
    (seed : ExactRemainingSeed D)
    (history : ExactRevealHistory X Y D seed)
    (y : Y) :
    (∑ q : ExactFullQuestion X Y n,
      if exactRevealCode D seed q = history ∧
        q.2 seed.coordinate.val = y then
        exactPriorQuestionWeight G n q /
          exactBobQuestionMass G n D seed history y
      else 0) =
      if exactBobQuestionMass G n D seed history y = 0
      then 0 else 1 := by
  classical
  calc
    (∑ q : ExactFullQuestion X Y n,
      if exactRevealCode D seed q = history ∧
        q.2 seed.coordinate.val = y then
        exactPriorQuestionWeight G n q /
          exactBobQuestionMass G n D seed history y
      else 0) =
      (∑ q : ExactFullQuestion X Y n,
        if exactRevealCode D seed q = history ∧
          q.2 seed.coordinate.val = y then
          exactPriorQuestionWeight G n q
        else 0) /
          exactBobQuestionMass G n D seed history y := by
            rw [Finset.sum_div]
            apply Finset.sum_congr rfl
            intro q _
            split <;> simp_all
    _ = exactBobQuestionMass G n D seed history y /
          exactBobQuestionMass G n D seed history y := by
            rfl
    _ = _ := by
      split_ifs with zero
      · simp [zero]
      · exact div_self zero

theorem exactAliceQuestionFilter_complement_posSemidef
    (G : Game X Y A B) (n : ℕ) (S : Strategy (G.repeat n))
    (D : Finset (Fin n))
    (seed : ExactRemainingSeed D)
    (history : ExactRevealHistory X Y D seed)
    (answer : {i : Fin n // i ∈ D} → A)
    (x : X) :
    (1 - exactAliceQuestionFilter
      G n S D seed history answer x).PosSemidef := by
  classical
  let w : ExactFullQuestion X Y n → ℝ := fun q =>
    if exactRevealCode D seed q = history ∧
      q.1 seed.coordinate.val = x then
      exactPriorQuestionWeight G n q /
        exactAliceQuestionMass G n D seed history x
    else 0
  let E : ExactFullQuestion X Y n →
      Matrix S.Alice S.Alice ℂ := fun q =>
    conditionedAliceEffect G n S D answer q.1
  have weights_nonnegative (q : ExactFullQuestion X Y n) :
      0 ≤ w q := by
    dsimp [w]
    split
    · exact div_nonneg
        (exactPriorQuestionWeight_nonneg G n q)
        (exactAliceQuestionMass_nonneg G n D seed history x)
    · exact le_rfl
  have weights_sum : (∑ q, w q) ≤ 1 := by
    change
      (∑ q : ExactFullQuestion X Y n,
        if exactRevealCode D seed q = history ∧
          q.1 seed.coordinate.val = x then
          exactPriorQuestionWeight G n q /
            exactAliceQuestionMass G n D seed history x
        else 0) ≤ 1
    rw [exactAliceQuestionConditionalWeight_sum
      G n D seed history x]
    split <;> norm_num
  have filter_eq :
      exactAliceQuestionFilter
          G n S D seed history answer x =
        ∑ q, w q • E q := by
    unfold exactAliceQuestionFilter
    apply Finset.sum_congr rfl
    intro q _
    dsimp [w, E]
    split <;> simp_all
  have split :
      1 - (∑ q, w q • E q) =
        (1 - (∑ q, w q)) •
            (1 : Matrix S.Alice S.Alice ℂ) +
          ∑ q, w q • (1 - E q) := by
    simp_rw [smul_sub]
    rw [Finset.sum_sub_distrib, ← Finset.sum_smul]
    module
  rw [filter_eq, split]
  apply Matrix.PosSemidef.add
  · exact Matrix.PosSemidef.one.smul (sub_nonneg.mpr weights_sum)
  · apply Matrix.posSemidef_sum Finset.univ
    intro q _
    exact (conditionedAliceEffect_complement_positive
      G n S D answer q.1).smul (weights_nonnegative q)

theorem exactBobQuestionFilter_complement_posSemidef
    (G : Game X Y A B) (n : ℕ) (S : Strategy (G.repeat n))
    (D : Finset (Fin n))
    (seed : ExactRemainingSeed D)
    (history : ExactRevealHistory X Y D seed)
    (answer : {i : Fin n // i ∈ D} → B)
    (y : Y) :
    (1 - exactBobQuestionFilter
      G n S D seed history answer y).PosSemidef := by
  classical
  let w : ExactFullQuestion X Y n → ℝ := fun q =>
    if exactRevealCode D seed q = history ∧
      q.2 seed.coordinate.val = y then
      exactPriorQuestionWeight G n q /
        exactBobQuestionMass G n D seed history y
    else 0
  let E : ExactFullQuestion X Y n →
      Matrix S.Bob S.Bob ℂ := fun q =>
    conditionedBobEffect G n S D answer q.2
  have weights_nonnegative (q : ExactFullQuestion X Y n) :
      0 ≤ w q := by
    dsimp [w]
    split
    · exact div_nonneg
        (exactPriorQuestionWeight_nonneg G n q)
        (exactBobQuestionMass_nonneg G n D seed history y)
    · exact le_rfl
  have weights_sum : (∑ q, w q) ≤ 1 := by
    change
      (∑ q : ExactFullQuestion X Y n,
        if exactRevealCode D seed q = history ∧
          q.2 seed.coordinate.val = y then
          exactPriorQuestionWeight G n q /
            exactBobQuestionMass G n D seed history y
        else 0) ≤ 1
    rw [exactBobQuestionConditionalWeight_sum
      G n D seed history y]
    split <;> norm_num
  have filter_eq :
      exactBobQuestionFilter
          G n S D seed history answer y =
        ∑ q, w q • E q := by
    unfold exactBobQuestionFilter
    apply Finset.sum_congr rfl
    intro q _
    dsimp [w, E]
    split <;> simp_all
  have split :
      1 - (∑ q, w q • E q) =
        (1 - (∑ q, w q)) •
            (1 : Matrix S.Bob S.Bob ℂ) +
          ∑ q, w q • (1 - E q) := by
    simp_rw [smul_sub]
    rw [Finset.sum_sub_distrib, ← Finset.sum_smul]
    module
  rw [filter_eq, split]
  apply Matrix.PosSemidef.add
  · exact Matrix.PosSemidef.one.smul (sub_nonneg.mpr weights_sum)
  · apply Matrix.posSemidef_sum Finset.univ
    intro q _
    exact (conditionedBobEffect_complement_positive
      G n S D answer q.2).smul (weights_nonnegative q)

theorem exactAliceMeanFilter_complement_posSemidef
    (G : Game X Y A B) (n : ℕ) (S : Strategy (G.repeat n))
    (D : Finset (Fin n))
    (seed : ExactRemainingSeed D)
    (history : ExactRevealHistory X Y D seed)
    (answer : {i : Fin n // i ∈ D} → A)
    (y : Y) :
    (1 - exactAliceMeanFilter
      G n S D seed history answer y).PosSemidef := by
  classical
  let w : X → ℝ := G.conditionalXGivenY y
  let E : X → Matrix S.Alice S.Alice ℂ := fun x =>
    exactAliceQuestionFilter G n S D seed history answer x
  have weights_sum : (∑ x, w x) ≤ 1 :=
    G.conditionalXGivenY_sum_le_one y
  have split :
      1 - (∑ x, w x • E x) =
        (1 - (∑ x, w x)) •
            (1 : Matrix S.Alice S.Alice ℂ) +
          ∑ x, w x • (1 - E x) := by
    simp_rw [smul_sub]
    rw [Finset.sum_sub_distrib, ← Finset.sum_smul]
    module
  change (1 - ∑ x, w x • E x).PosSemidef
  rw [split]
  apply Matrix.PosSemidef.add
  · exact Matrix.PosSemidef.one.smul (sub_nonneg.mpr weights_sum)
  · apply Matrix.posSemidef_sum Finset.univ
    intro x _
    exact (exactAliceQuestionFilter_complement_posSemidef
      G n S D seed history answer x).smul
        (G.conditionalXGivenY_nonneg y x)

theorem exactFairAliceMean_spectral_entropy_le
    (G : Game X Y A B) (n : ℕ) (S : Strategy (G.repeat n))
    (D : Finset (Fin n))
    (r : ExactHistoryFlag X Y A B D)
    (y : Y) :
    -bornTracePairing S.state.matrix
        (cfc (fun z : ℝ => z * Real.log z)
          (exactAliceMeanFilter
            G n S D r.seed r.history r.aliceAnswer y))
        (exactBobQuestionFilter
          G n S D r.seed r.history r.bobAnswer y) ≤
      Real.negMulLog
        (bornTracePairing S.state.matrix
          (exactAliceMeanFilter
            G n S D r.seed r.history r.aliceAnswer y)
          (exactBobQuestionFilter
            G n S D r.seed r.history r.bobAnswer y)) := by
  classical
  exact source_equation_nineteen_alice S.state
    (exactAliceMeanFilter
      G n S D r.seed r.history r.aliceAnswer y)
    (exactAliceMeanFilter_posSemidef
      G n S D r.seed r.history r.aliceAnswer y)
    (exactAliceMeanFilter_complement_posSemidef
      G n S D r.seed r.history r.aliceAnswer y)
    (exactBobQuestionFilter
      G n S D r.seed r.history r.bobAnswer y)
    (exactBobQuestionFilter_posSemidef
      G n S D r.seed r.history r.bobAnswer y)
    (exactBobQuestionFilter_complement_posSemidef
      G n S D r.seed r.history r.bobAnswer y)

theorem exactFairAliceHistoryHighOperatorPotential_nonpos
    (G : Game X Y A B) (n : ℕ) (S : Strategy (G.repeat n))
    (D : Finset (Fin n))
    (r : ExactHistoryFlag X Y A B D) :
    exactFairAliceHistoryHighOperatorPotential
      G n S D r ≤ 0 := by
  classical
  unfold exactFairAliceHistoryHighOperatorPotential
  apply Finset.sum_nonpos
  intro y _
  apply mul_nonpos_of_nonneg_of_nonpos (G.marginalY_nonneg y)
  calc
    bornTracePairing S.state.matrix
        (∑ x : X, G.conditionalXGivenY y x •
          cfc (fun z : ℝ => z * Real.log z)
            (exactAliceQuestionFilter
              G n S D r.seed r.history r.aliceAnswer x))
        (exactBobQuestionFilter
          G n S D r.seed r.history r.bobAnswer y) =
      ∑ x : X, G.conditionalXGivenY y x *
        bornTracePairing S.state.matrix
          (cfc (fun z : ℝ => z * Real.log z)
            (exactAliceQuestionFilter
              G n S D r.seed r.history r.aliceAnswer x))
          (exactBobQuestionFilter
            G n S D r.seed r.history r.bobAnswer y) := by
              simp only [map_sum, map_smul, LinearMap.sum_apply,
                LinearMap.smul_apply, smul_eq_mul]
    _ ≤ 0 := by
      apply Finset.sum_nonpos
      intro x _
      exact mul_nonpos_of_nonneg_of_nonpos
        (G.conditionalXGivenY_nonneg y x)
        (matrixLogEntropy_born_nonpos_left S.state
          (exactAliceQuestionFilter
            G n S D r.seed r.history r.aliceAnswer x)
          (exactBobQuestionFilter
            G n S D r.seed r.history r.bobAnswer y)
          (exactAliceQuestionFilter_posSemidef
            G n S D r.seed r.history r.aliceAnswer x)
          (exactAliceQuestionFilter_complement_posSemidef
            G n S D r.seed r.history r.aliceAnswer x)
          (exactBobQuestionFilter_posSemidef
            G n S D r.seed r.history r.bobAnswer y))

theorem exactFairAliceHistoryLowOperatorPotential_neg_le_entropy
    (G : Game X Y A B) (n : ℕ) (S : Strategy (G.repeat n))
    (D : Finset (Fin n))
    (r : ExactHistoryFlag X Y A B D) :
    -exactFairAliceHistoryLowOperatorPotential G n S D r ≤
      ∑ y : Y, G.marginalY y *
        Real.negMulLog
          (bornTracePairing S.state.matrix
            (exactAliceMeanFilter
              G n S D r.seed r.history r.aliceAnswer y)
            (exactBobQuestionFilter
              G n S D r.seed r.history r.bobAnswer y)) := by
  classical
  unfold exactFairAliceHistoryLowOperatorPotential
  rw [← Finset.sum_neg_distrib]
  apply Finset.sum_le_sum
  intro y _
  have bound := mul_le_mul_of_nonneg_left
    (exactFairAliceMean_spectral_entropy_le G n S D r y)
    (G.marginalY_nonneg y)
  nlinarith

theorem exactReverseAliceFilterHighOperatorPotential_nonpos
    (G : Game X Y A B) (n : ℕ) (S : Strategy (G.repeat n))
    (D : Finset (Fin n))
    (side : Finset (SourceRemainingCoordinate D))
    (context : ExactReverseSideContext
      (SourceRemainingCoordinate D) side)
    (marker : Fin side.card) :
    exactReverseAliceFilterHighOperatorPotential
      G n S D side context marker ≤ 0 := by
  classical
  unfold exactReverseAliceFilterHighOperatorPotential
  dsimp only
  apply Finset.sum_nonpos
  intro history _
  apply Finset.sum_nonpos
  intro aliceAnswer _
  apply Finset.sum_nonpos
  intro bobAnswer _
  split
  · exact mul_nonpos_of_nonneg_of_nonpos
      (exactRevealMass_nonneg G n D
        (exactReverseBobMarkerDecode side context marker)
        history)
      (exactFairAliceHistoryHighOperatorPotential_nonpos
        G n S D
        ⟨exactReverseBobMarkerDecode side context marker,
          history, aliceAnswer, bobAnswer⟩)
  · exact le_rfl

end

noncomputable section

open scoped BigOperators ComplexOrder Kronecker MatrixOrder
  Matrix.Norms.L2Operator InnerProductSpace

set_option backward.isDefEq.respectTransparency false
set_option maxHeartbeats 3000000
set_option maxRecDepth 2048

attribute [local instance] Classical.propDecidable

variable {X Y A B : Type*}
variable [Fintype X] [Fintype Y] [Fintype A] [Fintype B]

theorem exactFairAliceHistoryHighOperatorPotential_eq_joint
    (G : Game X Y A B) (n : ℕ) (S : Strategy (G.repeat n))
    (D : Finset (Fin n))
    (r : ExactHistoryFlag X Y A B D) :
    exactFairAliceHistoryHighOperatorPotential G n S D r =
      ∑ x : X, ∑ y : Y, G.questionWeight x y *
        bornTracePairing S.state.matrix
          (cfc (fun z : ℝ => z * Real.log z)
            (exactAliceQuestionFilter
              G n S D r.seed r.history r.aliceAnswer x))
          (exactBobQuestionFilter
            G n S D r.seed r.history r.bobAnswer y) := by
  classical
  unfold exactFairAliceHistoryHighOperatorPotential
  simp only [map_sum, map_smul, LinearMap.sum_apply,
    LinearMap.smul_apply, smul_eq_mul]
  calc
    (∑ y : Y, G.marginalY y *
      (∑ x : X, G.conditionalXGivenY y x *
        bornTracePairing S.state.matrix
          (cfc (fun z : ℝ => z * Real.log z)
            (exactAliceQuestionFilter
              G n S D r.seed r.history r.aliceAnswer x))
          (exactBobQuestionFilter
            G n S D r.seed r.history r.bobAnswer y))) =
      ∑ y : Y, ∑ x : X,
        (G.marginalY y * G.conditionalXGivenY y x) *
          bornTracePairing S.state.matrix
            (cfc (fun z : ℝ => z * Real.log z)
              (exactAliceQuestionFilter
                G n S D r.seed r.history r.aliceAnswer x))
            (exactBobQuestionFilter
              G n S D r.seed r.history r.bobAnswer y) := by
        simp only [Finset.mul_sum]
        apply Finset.sum_congr rfl
        intro y _
        apply Finset.sum_congr rfl
        intro x _
        ring
    _ = ∑ y : Y, ∑ x : X, G.questionWeight x y *
        bornTracePairing S.state.matrix
          (cfc (fun z : ℝ => z * Real.log z)
            (exactAliceQuestionFilter
              G n S D r.seed r.history r.aliceAnswer x))
          (exactBobQuestionFilter
            G n S D r.seed r.history r.bobAnswer y) := by
        apply Finset.sum_congr rfl
        intro y _
        apply Finset.sum_congr rfl
        intro x _
        rw [← G.marginalY_mul_conditionalXGivenY x y]
    _ = _ := Finset.sum_comm

theorem exactFairAliceHistoryLowOperatorPotential_eq_joint
    (G : Game X Y A B) (n : ℕ) (S : Strategy (G.repeat n))
    (D : Finset (Fin n))
    (r : ExactHistoryFlag X Y A B D) :
    exactFairAliceHistoryLowOperatorPotential G n S D r =
      ∑ x : X, ∑ y : Y, G.questionWeight x y *
        bornTracePairing S.state.matrix
          (cfc (fun z : ℝ => z * Real.log z)
            (exactAliceMeanFilter
              G n S D r.seed r.history r.aliceAnswer y))
          (exactBobQuestionFilter
            G n S D r.seed r.history r.bobAnswer y) := by
  classical
  unfold exactFairAliceHistoryLowOperatorPotential
  calc
    (∑ y : Y, G.marginalY y *
      bornTracePairing S.state.matrix
        (cfc (fun z : ℝ => z * Real.log z)
          (exactAliceMeanFilter
            G n S D r.seed r.history r.aliceAnswer y))
        (exactBobQuestionFilter
          G n S D r.seed r.history r.bobAnswer y)) =
      ∑ y : Y, ∑ x : X, G.questionWeight x y *
        bornTracePairing S.state.matrix
          (cfc (fun z : ℝ => z * Real.log z)
            (exactAliceMeanFilter
              G n S D r.seed r.history r.aliceAnswer y))
          (exactBobQuestionFilter
            G n S D r.seed r.history r.bobAnswer y) := by
        apply Finset.sum_congr rfl
        intro y _
        unfold Game.marginalY
        rw [Finset.sum_mul]
    _ = _ := Finset.sum_comm

end

noncomputable section

open scoped BigOperators ComplexOrder Kronecker MatrixOrder
  Matrix.Norms.L2Operator InnerProductSpace

set_option backward.isDefEq.respectTransparency false
set_option maxHeartbeats 3400000
set_option maxRecDepth 2048

attribute [local instance] Classical.propDecidable

variable {X Y A B : Type*}
variable [Fintype X] [Fintype Y] [Fintype A] [Fintype B]

theorem exactReverseAliceHighOperatorPotential_eq_question
    (G : Game X Y A B) (n : ℕ) (S : Strategy (G.repeat n))
    (D : Finset (Fin n))
    (side : Finset (SourceRemainingCoordinate D))
    (context : ExactReverseSideContext
      (SourceRemainingCoordinate D) side)
    (marker : Fin side.card) :
    exactReverseAliceFilterHighOperatorPotential
        G n S D side context marker =
      exactReverseAliceHighQuestionPotential
        G n S D side context marker := by
  classical
  unfold exactReverseAliceFilterHighOperatorPotential
    exactReverseAliceHighQuestionPotential
  dsimp only
  calc
    (∑ history : ExactRevealHistory X Y D
        (exactReverseBobMarkerDecode side context marker),
      ∑ aliceAnswer : {j : Fin n // j ∈ D} → A,
      ∑ bobAnswer : {j : Fin n // j ∈ D} → B,
        if exactHistoryAccepted G n D
          ⟨exactReverseBobMarkerDecode side context marker,
            history, aliceAnswer, bobAnswer⟩ then
          exactRevealMass G n D
            (exactReverseBobMarkerDecode side context marker)
            history *
          exactFairAliceHistoryHighOperatorPotential G n S D
            ⟨exactReverseBobMarkerDecode side context marker,
              history, aliceAnswer, bobAnswer⟩
        else 0) =
      ∑ history : ExactRevealHistory X Y D
        (exactReverseBobMarkerDecode side context marker),
      ∑ aliceAnswer : {j : Fin n // j ∈ D} → A,
      ∑ bobAnswer : {j : Fin n // j ∈ D} → B,
        if exactHistoryAccepted G n D
          ⟨exactReverseBobMarkerDecode side context marker,
            history, aliceAnswer, bobAnswer⟩ then
          exactRevealMass G n D
            (exactReverseBobMarkerDecode side context marker)
            history *
            (∑ x : X, ∑ y : Y, G.questionWeight x y *
              bornTracePairing S.state.matrix
                (cfc (fun z : ℝ => z * Real.log z)
                  (exactAliceQuestionFilter G n S D
                    (exactReverseBobMarkerDecode side context marker)
                    history aliceAnswer x))
                (exactBobQuestionFilter G n S D
                  (exactReverseBobMarkerDecode side context marker)
                  history bobAnswer y))
        else 0 := by
          apply Finset.sum_congr rfl
          intro history _
          apply Finset.sum_congr rfl
          intro aliceAnswer _
          apply Finset.sum_congr rfl
          intro bobAnswer _
          split
          · rw [exactFairAliceHistoryHighOperatorPotential_eq_joint]
          · rfl
    _ = _ := exactFairAcceptedJointStatistic_reindex
      G n S D (exactReverseBobMarkerDecode side context marker)
      (fun history aliceAnswer bobAnswer x y =>
        bornTracePairing S.state.matrix
          (cfc (fun z : ℝ => z * Real.log z)
            (exactAliceQuestionFilter G n S D
              (exactReverseBobMarkerDecode side context marker)
              history aliceAnswer x))
          (exactBobQuestionFilter G n S D
            (exactReverseBobMarkerDecode side context marker)
            history bobAnswer y))

theorem exactReverseAliceLowOperatorPotential_eq_question
    (G : Game X Y A B) (n : ℕ) (S : Strategy (G.repeat n))
    (D : Finset (Fin n))
    (side : Finset (SourceRemainingCoordinate D))
    (context : ExactReverseSideContext
      (SourceRemainingCoordinate D) side)
    (marker : Fin side.card) :
    exactReverseAliceFilterLowOperatorPotential
        G n S D side context marker =
      exactReverseAliceLowQuestionPotential
        G n S D side context marker := by
  classical
  unfold exactReverseAliceFilterLowOperatorPotential
    exactReverseAliceLowQuestionPotential
  dsimp only
  calc
    (∑ history : ExactRevealHistory X Y D
        (exactReverseBobMarkerDecode side context marker),
      ∑ aliceAnswer : {j : Fin n // j ∈ D} → A,
      ∑ bobAnswer : {j : Fin n // j ∈ D} → B,
        if exactHistoryAccepted G n D
          ⟨exactReverseBobMarkerDecode side context marker,
            history, aliceAnswer, bobAnswer⟩ then
          exactRevealMass G n D
            (exactReverseBobMarkerDecode side context marker)
            history *
          exactFairAliceHistoryLowOperatorPotential G n S D
            ⟨exactReverseBobMarkerDecode side context marker,
              history, aliceAnswer, bobAnswer⟩
        else 0) =
      ∑ history : ExactRevealHistory X Y D
        (exactReverseBobMarkerDecode side context marker),
      ∑ aliceAnswer : {j : Fin n // j ∈ D} → A,
      ∑ bobAnswer : {j : Fin n // j ∈ D} → B,
        if exactHistoryAccepted G n D
          ⟨exactReverseBobMarkerDecode side context marker,
            history, aliceAnswer, bobAnswer⟩ then
          exactRevealMass G n D
            (exactReverseBobMarkerDecode side context marker)
            history *
            (∑ x : X, ∑ y : Y, G.questionWeight x y *
              bornTracePairing S.state.matrix
                (cfc (fun z : ℝ => z * Real.log z)
                  (exactAliceMeanFilter G n S D
                    (exactReverseBobMarkerDecode side context marker)
                    history aliceAnswer y))
                (exactBobQuestionFilter G n S D
                  (exactReverseBobMarkerDecode side context marker)
                  history bobAnswer y))
        else 0 := by
          apply Finset.sum_congr rfl
          intro history _
          apply Finset.sum_congr rfl
          intro aliceAnswer _
          apply Finset.sum_congr rfl
          intro bobAnswer _
          split
          · rw [exactFairAliceHistoryLowOperatorPotential_eq_joint]
          · rfl
    _ = _ := exactFairAcceptedJointStatistic_reindex
      G n S D (exactReverseBobMarkerDecode side context marker)
      (fun history aliceAnswer bobAnswer x y =>
        bornTracePairing S.state.matrix
          (cfc (fun z : ℝ => z * Real.log z)
            (exactAliceMeanFilter G n S D
              (exactReverseBobMarkerDecode side context marker)
              history aliceAnswer y))
          (exactBobQuestionFilter G n S D
            (exactReverseBobMarkerDecode side context marker)
            history bobAnswer y))

end

noncomputable section

open scoped BigOperators ComplexOrder Kronecker MatrixOrder
  Matrix.Norms.L2Operator InnerProductSpace

set_option backward.isDefEq.respectTransparency false
set_option maxHeartbeats 4000000
set_option maxRecDepth 2048

attribute [local instance] Classical.propDecidable

variable {X Y A B : Type*}
variable [Fintype X] [Fintype Y] [Fintype A] [Fintype B]

theorem exactReverseAliceLowOperatorPotential_neg_le_scalarEntropy
    (G : Game X Y A B) (n : ℕ) (S : Strategy (G.repeat n))
    (D : Finset (Fin n))
    (side : Finset (SourceRemainingCoordinate D))
    (context : ExactReverseSideContext
      (SourceRemainingCoordinate D) side)
    (marker : Fin side.card) :
    -exactReverseAliceFilterLowOperatorPotential
        G n S D side context marker ≤
      exactReverseAliceAcceptedScalarEntropy
        G n S D side context marker := by
  classical
  unfold exactReverseAliceFilterLowOperatorPotential
    exactReverseAliceAcceptedScalarEntropy
  dsimp only
  rw [← Finset.sum_neg_distrib]
  apply Finset.sum_le_sum
  intro history _
  rw [← Finset.sum_neg_distrib]
  apply Finset.sum_le_sum
  intro aliceAnswer _
  rw [← Finset.sum_neg_distrib]
  apply Finset.sum_le_sum
  intro bobAnswer _
  by_cases accepted : exactHistoryAccepted G n D
      ⟨exactReverseBobMarkerDecode side context marker,
        history, aliceAnswer, bobAnswer⟩
  · simp only [if_pos accepted]
    have spectral := exactFairAliceHistoryLowOperatorPotential_neg_le_entropy
      G n S D
      ⟨exactReverseBobMarkerDecode side context marker,
        history, aliceAnswer, bobAnswer⟩
    have weighted := mul_le_mul_of_nonneg_left spectral
      (exactRevealMass_nonneg G n D
        (exactReverseBobMarkerDecode side context marker)
        history)
    nlinarith
  · simp [accepted]

theorem exactReverseAliceAlignedCfcPrefixPotential_last_nonpos
    (G : Game X Y A B) (n : ℕ) (S : Strategy (G.repeat n))
    (D : Finset (Fin n))
    (side : Finset (SourceRemainingCoordinate D))
    (context : ExactReverseSideContext
      (SourceRemainingCoordinate D) side)
    (nonempty : 0 < side.card) :
    exactReverseAliceAlignedCfcPrefixPotential
      G n S D side context side.card ≤ 0 := by
  classical
  let marker : Fin side.card := ⟨side.card - 1, Nat.sub_lt nonempty Nat.one_pos⟩
  have last : marker.val + 1 = side.card := by
    dsimp [marker]
    omega
  have high := exactReverseAliceFilterHighOperatorPotential_nonpos
    G n S D side context marker
  rw [exactReverseAliceHighOperatorPotential_eq_question,
    exactReverseAliceHighQuestionPotential_eq_alignedPrefix,
    last] at high
  exact high

end

end QuantumParallelRepetition


open QuantumParallelRepetition
open scoped ComplexOrder Matrix BigOperators InnerProductSpace
open Complex Matrix Finset
open scoped BigOperators ComplexOrder Kronecker MatrixOrder
  Matrix.Norms.L2Operator InnerProductSpace
set_option backward.isDefEq.respectTransparency false
set_option maxHeartbeats 4000000
set_option maxRecDepth 2048
attribute [local instance] Classical.propDecidable
variable {X Y A B : Type*}
variable [Fintype X] [Fintype Y] [Fintype A] [Fintype B]

theorem solution
    (G : Game X Y A B) (n : ℕ) (S : Strategy (G.repeat n))
    (D : Finset (Fin n))
    (side : Finset (SourceRemainingCoordinate D))
    (context : ExactReverseSideContext
      (SourceRemainingCoordinate D) side)
    (nonempty : 0 < side.card) :
    (∑ marker : Fin side.card,
      exactReverseAliceFilterOperatorMarkerEntropy
        G n S D side context marker) ≤
      exactReverseAliceAcceptedScalarEntropy
        G n S D side context ⟨0, nonempty⟩ := by
  classical
  have last := exactReverseAliceAlignedCfcPrefixPotential_last_nonpos
    G n S D side context nonempty
  have low := exactReverseAliceLowOperatorPotential_neg_le_scalarEntropy
    G n S D side context ⟨0, nonempty⟩
  rw [exactReverseAliceFilterOperatorMarkerEntropy_sum_telescope]
  rw [exactReverseAliceLowOperatorPotential_eq_question,
    exactReverseAliceLowQuestionPotential_eq_alignedPrefix] at low
  dsimp only at low
  linarith
