import Definitions.Def_quantum_parallel_repetition_game
import Definitions.Def_qpr_core_24
import Theorems.Thm_QuantumParallelRepetition_exactSeedWeight_nonneg
import Theorems.Thm_QuantumParallelRepetition_exactSeedWeight_sum
import Theorems.Thm_QuantumParallelRepetition_sourceHistoryAcceptedMass_eq_uniform
import Theorems.Thm_QuantumParallelRepetition_exactSourceSharedFlagWeight_nonneg
import Theorems.Thm_QuantumParallelRepetition_exactSourceSharedFlagWeight_sum
import Theorems.Thm_QuantumParallelRepetition_exactSourceAliceSampleTuple_expectation
import Theorems.Thm_QuantumParallelRepetition_exactLocallySampleableLaw_absolute_continuous_roundedJA
import Theorems.Thm_QuantumParallelRepetition_actualStoppingQuestionLocalWinningProbability_ge_matched
import Theorems.Thm_QuantumParallelRepetition_unconditionalWeightedClippedMatchedVerifierAndMassLoss
import Mathlib.Algebra.Algebra.Basic
import Mathlib.Algebra.Algebra.Defs
import Mathlib.Algebra.BigOperators.Field
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
import Mathlib.Algebra.Group.Nat.Defs
import Mathlib.Algebra.Group.Pi.Basic
import Mathlib.Algebra.Group.Submonoid.Defs
import Mathlib.Algebra.GroupWithZero.Action.Defs
import Mathlib.Algebra.GroupWithZero.Action.Pi
import Mathlib.Algebra.GroupWithZero.Basic
import Mathlib.Algebra.GroupWithZero.Defs
import Mathlib.Algebra.GroupWithZero.Hom
import Mathlib.Algebra.GroupWithZero.NeZero
import Mathlib.Algebra.GroupWithZero.Units.Basic
import Mathlib.Algebra.Module.Defs
import Mathlib.Algebra.Module.Equiv.Defs
import Mathlib.Algebra.Module.LinearMap.Defs
import Mathlib.Algebra.Module.Pi
import Mathlib.Algebra.NeZero
import Mathlib.Algebra.Notation.Defs
import Mathlib.Algebra.Order.BigOperators.Group.Finset
import Mathlib.Algebra.Order.Field.Basic
import Mathlib.Algebra.Order.Group.Nat
import Mathlib.Algebra.Order.Group.Unbundled.Abs
import Mathlib.Algebra.Order.Group.Unbundled.Basic
import Mathlib.Algebra.Order.GroupWithZero.Canonical
import Mathlib.Algebra.Order.GroupWithZero.Unbundled.Basic
import Mathlib.Algebra.Order.GroupWithZero.Unbundled.Defs
import Mathlib.Algebra.Order.IsBotOne
import Mathlib.Algebra.Order.Monoid.Defs
import Mathlib.Algebra.Order.Monoid.Unbundled.Basic
import Mathlib.Algebra.Order.Monoid.Unbundled.Defs
import Mathlib.Algebra.Order.Ring.Defs
import Mathlib.Algebra.Order.Ring.Nat
import Mathlib.Algebra.Order.Sub.Defs
import Mathlib.Algebra.Order.SuccPred
import Mathlib.Algebra.Order.ZeroLEOne
import Mathlib.Algebra.Ring.CompTypeclasses
import Mathlib.Algebra.Ring.Defs
import Mathlib.Algebra.Ring.Hom.Defs
import Mathlib.Algebra.Ring.Nat
import Mathlib.Algebra.Star.Basic
import Mathlib.Algebra.Star.StarAlgHom
import Mathlib.AlgebraicTopology.SimplexCategory.Basic
import Mathlib.AlgebraicTopology.SimplexCategory.Defs
import Mathlib.Analysis.CStarAlgebra.Classes
import Mathlib.Analysis.CStarAlgebra.Matrix
import Mathlib.Analysis.Complex.Basic
import Mathlib.Analysis.Complex.Norm
import Mathlib.Analysis.Complex.Order
import Mathlib.Analysis.InnerProductSpace.Adjoint
import Mathlib.Analysis.InnerProductSpace.Basic
import Mathlib.Analysis.InnerProductSpace.Defs
import Mathlib.Analysis.InnerProductSpace.PiL2
import Mathlib.Analysis.InnerProductSpace.Positive
import Mathlib.Analysis.Matrix.Normed
import Mathlib.Analysis.Matrix.Order
import Mathlib.Analysis.Normed.Field.Basic
import Mathlib.Analysis.Normed.Group.Defs
import Mathlib.Analysis.Normed.Group.Uniform
import Mathlib.Analysis.Normed.Lp.PiLp
import Mathlib.Analysis.Normed.Lp.WithLp
import Mathlib.Analysis.Normed.Module.Basic
import Mathlib.Analysis.Normed.Operator.Basic
import Mathlib.Analysis.Normed.Ring.Basic
import Mathlib.Analysis.RCLike.Basic
import Mathlib.Data.Bool.Basic
import Mathlib.Data.Complex.Basic
import Mathlib.Data.Complex.BigOperators
import Mathlib.Data.ENNReal.Basic
import Mathlib.Data.Finset.Attach
import Mathlib.Data.Finset.BooleanAlgebra
import Mathlib.Data.Finset.Card
import Mathlib.Data.Finset.Defs
import Mathlib.Data.Finset.Empty
import Mathlib.Data.Finset.Filter
import Mathlib.Data.Finset.Insert
import Mathlib.Data.Finset.Lattice.Basic
import Mathlib.Data.Finset.SDiff
import Mathlib.Data.Fintype.Basic
import Mathlib.Data.Fintype.BigOperators
import Mathlib.Data.Fintype.Card
import Mathlib.Data.Fintype.Defs
import Mathlib.Data.Fintype.EquivFin
import Mathlib.Data.Fintype.Perm
import Mathlib.Data.Fintype.Pi
import Mathlib.Data.Fintype.Prod
import Mathlib.Data.Fintype.Sets
import Mathlib.Data.Fintype.Sigma
import Mathlib.Data.FunLike.Basic
import Mathlib.Data.FunLike.Equiv
import Mathlib.Data.Int.Cast.Defs
import Mathlib.Data.Matrix.Basic
import Mathlib.Data.Matrix.Block
import Mathlib.Data.Matrix.Mul
import Mathlib.Data.Nat.Basic
import Mathlib.Data.Nat.Cast.Defs
import Mathlib.Data.Nat.Cast.Order.Basic
import Mathlib.Data.Nat.Init
import Mathlib.Data.Nat.SuccPred
import Mathlib.Data.Real.Basic
import Mathlib.Data.Real.Sqrt
import Mathlib.Data.SetLike.Basic
import Mathlib.Data.Sigma.Basic
import Mathlib.LinearAlgebra.DFinsupp
import Mathlib.LinearAlgebra.Matrix.ConjTranspose
import Mathlib.LinearAlgebra.Matrix.Defs
import Mathlib.LinearAlgebra.Matrix.Kronecker
import Mathlib.LinearAlgebra.Matrix.PosDef
import Mathlib.LinearAlgebra.Matrix.Trace
import Mathlib.LinearAlgebra.UnitaryGroup
import Mathlib.Logic.Equiv.Defs
import Mathlib.MeasureTheory.Measure.MeasureSpace
import Mathlib.Order.Basic
import Mathlib.Order.Defs.LinearOrder
import Mathlib.Order.Defs.PartialOrder
import Mathlib.Order.Lattice
import Mathlib.Order.Nat
import Mathlib.Order.RelClasses
import Mathlib.Tactic.CancelDenoms.Core
import Mathlib.Tactic.FieldSimp.Lemmas
import Mathlib.Tactic.Linarith.Lemmas
import Mathlib.Tactic.NormNum.Basic
import Mathlib.Tactic.NormNum.Ineq
import Mathlib.Tactic.NormNum.Inv
import Mathlib.Tactic.NormNum.Result
import Mathlib.Tactic.Ring.Basic
import Mathlib.Tactic.Ring.Common
import Mathlib.Tactic.Ring.RingNF
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

open scoped BigOperators ComplexConjugate InnerProductSpace

variable {H : Type*} [NormedAddCommGroup H] [InnerProductSpace ℂ H]

theorem positive_quadraticExpectation_nonneg
    (W : H →L[ℂ] H) (hW : W.IsPositive) (z : H) :
    0 ≤ quadraticExpectation W z := by
  exact hW.re_inner_nonneg_right z

end

noncomputable section

open scoped BigOperators ComplexOrder MatrixOrder Matrix.Norms.L2Operator

theorem matrixEffectCLM_isPositive
    {d : Type*} [Fintype d] [DecidableEq d]
    (E : Matrix d d ℂ) (hE : E.PosSemidef) :
    (Matrix.toEuclideanCLM (n := d) (𝕜 := ℂ) E).IsPositive := by
  apply (ContinuousLinearMap.isPositive_toLinearMap_iff _).mp
  exact Matrix.isPositive_toEuclideanLin_iff.mpr hE

end

noncomputable section

open scoped BigOperators ComplexOrder Kronecker MatrixOrder
open Matrix

variable {X Y A B : Type*} {J : Type}
variable [Fintype X] [Fintype Y] [Fintype A] [Fintype B]
variable [Fintype J] [DecidableEq J]
variable {G : Game X Y A B}

theorem mixtureEmbedding_compress (S : J → Strategy G)
    (E : Matrix (mixtureAlice S × mixtureBob S)
      (mixtureAlice S × mixtureBob S) ℂ) :
    (mixtureEmbedding S)ᴴ * E * mixtureEmbedding S =
      E.submatrix (mixtureMatchedIndex S) (mixtureMatchedIndex S) := by
  classical
  ext i j
  simp [mixtureEmbedding, Matrix.mul_apply,
    Matrix.conjTranspose_apply, Matrix.submatrix_apply]

theorem mixtureJointEffect_compress (S : J → Strategy G)
    (x : X) (y : Y) (a : A) (b : B) :
    (((mixtureAlicePOVM S x).operator a ⊗ₖ
      (mixtureBobPOVM S y).operator b).submatrix
        (mixtureMatchedIndex S) (mixtureMatchedIndex S)) =
      Matrix.blockDiagonal' fun j =>
        (S j).jointMeasurementOperator x y a b := by
  classical
  ext ⟨i, u, v⟩ ⟨j, u', v'⟩
  by_cases h : i = j
  · subst j
    simp [Matrix.submatrix_apply, Matrix.kroneckerMap_apply,
      mixtureMatchedIndex, mixtureAlicePOVM, mixtureBobPOVM,
      Matrix.blockDiagonal'_apply, Strategy.jointMeasurementOperator]
  · simp [Matrix.submatrix_apply, Matrix.kroneckerMap_apply,
      mixtureMatchedIndex, mixtureAlicePOVM, mixtureBobPOVM,
      Matrix.blockDiagonal'_apply, Strategy.jointMeasurementOperator, h]

theorem mixtureEmbedding_trace_mul (S : J → Strategy G)
    (R : Matrix (mixtureMatched S) (mixtureMatched S) ℂ)
    (E : Matrix (mixtureAlice S × mixtureBob S)
      (mixtureAlice S × mixtureBob S) ℂ) :
    Matrix.trace
      ((mixtureEmbedding S * R * (mixtureEmbedding S)ᴴ) * E) =
      Matrix.trace
        (R * E.submatrix (mixtureMatchedIndex S)
          (mixtureMatchedIndex S)) := by
  calc
    Matrix.trace
        ((mixtureEmbedding S * R * (mixtureEmbedding S)ᴴ) * E) =
        Matrix.trace
          ((mixtureEmbedding S * R) * ((mixtureEmbedding S)ᴴ * E)) := by
            congr 1
            simp [Matrix.mul_assoc]
    _ = Matrix.trace
          (((mixtureEmbedding S)ᴴ * E) * (mixtureEmbedding S * R)) :=
          Matrix.trace_mul_comm _ _
    _ = Matrix.trace
          (((mixtureEmbedding S)ᴴ * E * mixtureEmbedding S) * R) := by
            congr 1
            simp [Matrix.mul_assoc]
    _ = Matrix.trace
          (R * ((mixtureEmbedding S)ᴴ * E * mixtureEmbedding S)) :=
          Matrix.trace_mul_comm _ _
    _ = Matrix.trace
          (R * E.submatrix (mixtureMatchedIndex S)
            (mixtureMatchedIndex S)) := by
          rw [mixtureEmbedding_compress]

theorem mixtureBlockMatrix_trace_mul
    (p : J → ℝ) (S : J → Strategy G)
    (E : ∀ j : J,
      Matrix ((S j).Alice × (S j).Bob)
        ((S j).Alice × (S j).Bob) ℂ) :
    Matrix.trace (mixtureBlockMatrix p S * Matrix.blockDiagonal' E) =
      ∑ j : J, p j • Matrix.trace ((S j).state.matrix * E j) := by
  unfold mixtureBlockMatrix
  rw [← Matrix.blockDiagonal'_mul, Matrix.trace_blockDiagonal']
  simp [Matrix.trace_smul]

theorem convexMixtureStrategy_outcomeProbability
    (p : J → ℝ) (hp : ∀ j, 0 ≤ p j)
    (h_normalized : (∑ j : J, p j) = 1)
    (S : J → Strategy G) (x : X) (y : Y) (a : A) (b : B) :
    (convexMixtureStrategy p hp h_normalized S).outcomeProbability
        x y a b =
      ∑ j : J, p j * (S j).outcomeProbability x y a b := by
  change
    (Matrix.trace
      ((mixtureEmbedding S * mixtureBlockMatrix p S *
          (mixtureEmbedding S)ᴴ) *
        ((mixtureAlicePOVM S x).operator a ⊗ₖ
          (mixtureBobPOVM S y).operator b))).re = _
  rw [mixtureEmbedding_trace_mul, mixtureJointEffect_compress,
    mixtureBlockMatrix_trace_mul]
  simp [Strategy.outcomeProbability]

theorem convexMixtureStrategy_winProbability
    (p : J → ℝ) (hp : ∀ j, 0 ≤ p j)
    (h_normalized : (∑ j : J, p j) = 1)
    (S : J → Strategy G) :
    (convexMixtureStrategy p hp h_normalized S).winProbability =
      ∑ j : J, p j * (S j).winProbability := by
  classical
  have h_branch (x : X) (y : Y) (a : A) (b : B) :
      (if G.predicate x y a b = true then
        ∑ j : J, p j * (S j).outcomeProbability x y a b
       else 0) =
        ∑ j : J, p j *
          (if G.predicate x y a b = true then
            (S j).outcomeProbability x y a b else 0) := by
    split <;> simp
  have h_swap (f : X → Y → A → B → J → ℝ) :
      (∑ x : X, ∑ y : Y, ∑ a : A, ∑ b : B, ∑ j : J,
        f x y a b j) =
        ∑ j : J, ∑ x : X, ∑ y : Y, ∑ a : A, ∑ b : B,
          f x y a b j := by
    calc
      (∑ x : X, ∑ y : Y, ∑ a : A, ∑ b : B, ∑ j : J,
        f x y a b j) =
          ∑ x : X, ∑ y : Y, ∑ a : A, ∑ j : J, ∑ b : B,
            f x y a b j := by
              apply Finset.sum_congr rfl
              intro x _
              apply Finset.sum_congr rfl
              intro y _
              apply Finset.sum_congr rfl
              intro a _
              exact Finset.sum_comm
      _ = ∑ x : X, ∑ y : Y, ∑ j : J, ∑ a : A, ∑ b : B,
            f x y a b j := by
              apply Finset.sum_congr rfl
              intro x _
              apply Finset.sum_congr rfl
              intro y _
              exact Finset.sum_comm
      _ = ∑ x : X, ∑ j : J, ∑ y : Y, ∑ a : A, ∑ b : B,
            f x y a b j := by
              apply Finset.sum_congr rfl
              intro x _
              exact Finset.sum_comm
      _ = ∑ j : J, ∑ x : X, ∑ y : Y, ∑ a : A, ∑ b : B,
            f x y a b j := Finset.sum_comm
  unfold Strategy.winProbability
  simp_rw [convexMixtureStrategy_outcomeProbability p hp h_normalized S]
  simp_rw [h_branch]
  simp_rw [Finset.mul_sum]
  rw [h_swap (fun x y a b j =>
    G.questionWeight x y *
      (p j * (if G.predicate x y a b = true then
        (S j).outcomeProbability x y a b else 0)))]
  apply Finset.sum_congr rfl
  intro j _
  apply Finset.sum_congr rfl
  intro x _
  apply Finset.sum_congr rfl
  intro y _
  apply Finset.sum_congr rfl
  intro a _
  apply Finset.sum_congr rfl
  intro b _
  ring

end

noncomputable section

open WithLp
open scoped BigOperators ComplexOrder Kronecker MatrixOrder
  Matrix.Norms.L2Operator InnerProductSpace

theorem pureFlaggedStrategy_winProbability
    {X Y A B : Type*} {dA dB J : Type}
    [Fintype X] [Fintype Y] [Fintype A] [Fintype B]
    [Fintype dA] [Fintype dB] [DecidableEq dA] [DecidableEq dB]
    [Fintype J] [DecidableEq J]
    (G : Game X Y A B)
    (p : J → ℝ) (hp : ∀ j, 0 ≤ p j)
    (h_normalized : (∑ j : J, p j) = 1)
    (z : J → EuclideanSpace ℂ (dA × dB))
    (hz : ∀ j, ‖z j‖ = 1)
    (PA : J → X → POVM A dA)
    (PB : J → Y → POVM B dB) :
    (pureFlaggedStrategy G p hp h_normalized z hz PA PB).winProbability =
      ∑ j : J, p j *
        (pureVectorStrategy G (z j) (hz j) (PA j) (PB j)).winProbability := by
  exact convexMixtureStrategy_winProbability p hp h_normalized
    (fun j => pureVectorStrategy G (z j) (hz j) (PA j) (PB j))

end

open scoped ComplexOrder Matrix BigOperators InnerProductSpace
open Complex Matrix Finset

noncomputable section

open scoped BigOperators

theorem sourceRemainingPermutationCoordinate_sum
    {T : Type*} [AddCommMonoid T]
    {n : ℕ} (D : Finset (Fin n))
    (π : SourceRemainingPermutation D)
    (f : Fin n → T) :
    (∑ k : Fin (Finset.univ \ D).card,
      f (sourceRemainingPermutationCoordinate D π k)) =
      ∑ i : SourceRemainingCoordinate D, f i.val := by
  classical
  exact (sourceRemainingPermutationRank D π).symm.sum_comp
    (fun i : SourceRemainingCoordinate D => f i.val)

section ActualEntropyBudgets

variable {X Y A B : Type*}
variable [Fintype X] [Fintype Y] [Fintype A] [Fintype B]

theorem sourceRemainingPermutation_card_pos
    {n : ℕ} (D : Finset (Fin n)) :
    0 < (Fintype.card (SourceRemainingPermutation D) : ℝ) := by
  classical
  exact_mod_cast (Fintype.card_pos_iff.mpr
    ⟨Equiv.refl (SourceRemainingCoordinate D)⟩ :
      0 < Fintype.card (SourceRemainingPermutation D))

end ActualEntropyBudgets

end

noncomputable section

open scoped BigOperators

attribute [local instance] Classical.propDecidable

@[simp] theorem exactSeedEquiv_symm_apply
    {M : Type*} [Fintype M] [DecidableEq M]
    (t : ExactSeedTuple M) :
    (exactSeedEquiv M).symm t =
      ⟨t.1, t.2.1, t.2.2.1, t.2.2.2.1,
        t.2.2.2.2.1, t.2.2.2.2.2⟩ := by
  rfl

theorem exactForwardSeed_sum
    {M : Type*} [Fintype M] [DecidableEq M]
    (f : ExactForwardSeed M → ℝ) :
    (∑ seed : ExactForwardSeed M, f seed) =
      ∑ i : M,
      ∑ partition : M → Bool,
      ∑ leftOrder : Equiv.Perm
        {j : M // j ∈ exactLeft i partition},
      ∑ rightOrder : Equiv.Perm
        {j : M // j ∈ exactRight i partition},
      ∑ leftCut : Fin ((exactLeft i partition).card + 1),
      ∑ rightCut : Fin ((exactRight i partition).card + 1),
        f ⟨i, partition, leftOrder, rightOrder, leftCut, rightCut⟩ := by
  classical
  calc
    (∑ seed : ExactForwardSeed M, f seed) =
        ∑ t : ExactSeedTuple M,
          f ((exactSeedEquiv M).symm t) :=
      ((exactSeedEquiv M).symm.sum_comp f).symm
    _ = _ := by
      simp [Fintype.sum_sigma, Fintype.sum_prod_type,
        exactSeedEquiv_symm_apply]

theorem exactUniform_sum
    {T : Type*} [Fintype T]
    (positive : 0 < Fintype.card T) :
    (∑ _t : T, (1 / (Fintype.card T : ℝ))) = 1 := by
  have hcard : (Fintype.card T : ℝ) ≠ 0 := by
    exact_mod_cast (Nat.ne_of_gt positive)
  simp only [Finset.sum_const, Finset.card_univ, nsmul_eq_mul]
  field_simp [hcard]

theorem exactUniform_sum_mul
    {T : Type*} [Fintype T]
    (positive : 0 < Fintype.card T) (value : ℝ) :
    (∑ _t : T,
      value * (1 / (Fintype.card T : ℝ))) = value := by
  rw [← Finset.mul_sum, exactUniform_sum positive]
  ring

theorem exactPrefixUniform_sum_mul
    (m : ℕ) (value : ℝ) :
    (∑ _k : Fin (m + 1),
      value * (1 / ((m : ℝ) + 1))) = value := by
  simpa only [Fintype.card_fin, Nat.cast_add, Nat.cast_one] using
    (exactUniform_sum_mul
      (T := Fin (m + 1)) (by simp) value)

theorem exactPermutationUniform_sum_mul
    {T : Type*} [Fintype T] (value : ℝ) :
    (∑ _π : Equiv.Perm T,
      value * (1 / (Fintype.card (Equiv.Perm T) : ℝ))) = value := by
  exact exactUniform_sum_mul
    (Fintype.card_pos_iff.mpr ⟨Equiv.refl T⟩) value

end

noncomputable section

open scoped BigOperators

set_option maxHeartbeats 1200000

attribute [local instance] Classical.propDecidable

theorem exactFintypeCard_eq
    {T : Type*} (first second : Fintype T) :
    @Fintype.card T first = @Fintype.card T second :=
  @Fintype.card_congr T T first second (Equiv.refl T)

end

noncomputable section

open scoped BigOperators

open QuantumParallelRepetition.Pinsker

theorem sum_positive_difference_eq_totalVariation
    {ι : Type*} [Fintype ι]
    (p q : ι → ℝ)
    (hp : (∑ i, p i) = 1)
    (hq : (∑ i, q i) = 1) :
    (∑ i, max (p i - q i) 0) = finiteTotalVariation p q := by
  classical
  have hpoint (x : ℝ) : max x 0 = (|x| + x) / 2 := by
    by_cases hx : 0 ≤ x
    · rw [max_eq_left hx, abs_of_nonneg hx]
      ring
    · have hxneg : x < 0 := lt_of_not_ge hx
      rw [max_eq_right hxneg.le, abs_of_neg hxneg]
      ring
  have hzero : (∑ i, (p i - q i)) = 0 := by
    rw [Finset.sum_sub_distrib, hp, hq, sub_self]
  unfold finiteTotalVariation
  simp_rw [hpoint]
  rw [← Finset.sum_div, Finset.sum_add_distrib, hzero, add_zero]

theorem finiteTotalVariation_comm
    {ι : Type*} [Fintype ι]
    (p q : ι → ℝ) :
    finiteTotalVariation p q = finiteTotalVariation q p := by
  unfold finiteTotalVariation
  congr 1
  apply Finset.sum_congr rfl
  intro i _
  exact abs_sub_comm (p i) (q i)

theorem expectation_le_add_totalVariation
    {ι : Type*} [Fintype ι]
    (p q f : ι → ℝ)
    (hp : (∑ i, p i) = 1)
    (hq : (∑ i, q i) = 1)
    (U : ℝ)
    (hfzero : ∀ i, 0 ≤ f i)
    (hfupper : ∀ i, f i ≤ U) :
    (∑ i, p i * f i) ≤
      (∑ i, q i * f i) + U * finiteTotalVariation p q := by
  classical
  have hterm (i : ι) :
      (p i - q i) * f i ≤ U * max (p i - q i) 0 := by
    by_cases hi : 0 ≤ p i - q i
    · rw [max_eq_left hi]
      nlinarith [mul_nonneg hi (sub_nonneg.mpr (hfupper i))]
    · have hineg : p i - q i < 0 := lt_of_not_ge hi
      rw [max_eq_right hineg.le]
      simp only [mul_zero]
      exact mul_nonpos_of_nonpos_of_nonneg hineg.le (hfzero i)
  have hsum := Finset.sum_le_sum (fun i (_ : i ∈ Finset.univ) => hterm i)
  have hpositive := sum_positive_difference_eq_totalVariation p q hp hq
  calc
    (∑ i, p i * f i) =
        (∑ i, q i * f i) + ∑ i, (p i - q i) * f i := by
          rw [← Finset.sum_add_distrib]
          apply Finset.sum_congr rfl
          intro i _
          ring
    _ ≤ (∑ i, q i * f i) +
          ∑ i, U * max (p i - q i) 0 := by
      linarith
    _ = (∑ i, q i * f i) +
          U * finiteTotalVariation p q := by
      rw [← Finset.mul_sum, hpositive]

theorem winning_expectation_transfer
    {ι : Type*} [Fintype ι]
    (p q win : ι → ℝ)
    (hp : (∑ i, p i) = 1)
    (hq : (∑ i, q i) = 1)
    (hzero : ∀ i, 0 ≤ win i)
    (hone : ∀ i, win i ≤ 1) :
    (∑ i, q i * win i) - finiteTotalVariation p q ≤
      ∑ i, p i * win i := by
  have h := expectation_le_add_totalVariation
    q p win hq hp (1 : ℝ) hzero hone
  rw [← finiteTotalVariation_comm p q] at h
  norm_num at h ⊢
  linarith

end

noncomputable section

open scoped BigOperators ComplexOrder Kronecker MatrixOrder
  Matrix.Norms.L2Operator InnerProductSpace

section ActualSharedFlag

variable {X Y A B dA dB J : Type}
variable [Fintype X] [Fintype Y] [Fintype A] [Fintype B]
variable [Fintype dA] [Fintype dB] [DecidableEq dA] [DecidableEq dB]
variable [Fintype J] [DecidableEq J]

theorem flaggedQuestionWeight_nonneg
    (G : Game X Y A B) (flagWeight : J → ℝ)
    (nonnegative : ∀ j, 0 ≤ flagWeight j)
    (ω : J × (X × Y)) :
    0 ≤ flaggedQuestionWeight G flagWeight ω :=
  mul_nonneg (nonnegative ω.1)
    (G.weight_nonneg ω.2.1 ω.2.2)

theorem flaggedQuestionWeight_sum
    (G : Game X Y A B) (flagWeight : J → ℝ)
    (normalized : (∑ j, flagWeight j) = 1) :
    (∑ ω : J × (X × Y),
      flaggedQuestionWeight G flagWeight ω) = 1 := by
  classical
  simp [flaggedQuestionWeight, Fintype.sum_prod_type,
    ← Finset.mul_sum, G.weight_normalized, normalized]

end ActualSharedFlag

end

noncomputable section

open scoped BigOperators ComplexOrder Kronecker MatrixOrder
  Matrix.Norms.L2Operator InnerProductSpace

theorem matched_payoff_discard_le
    {ι : Type*} [Fintype ι]
    (weight payoff : ι → ℝ)
    (nonnegative : ∀ i, 0 ≤ weight i)
    (payoff_le_one : ∀ i, payoff i ≤ 1)
    (matched : ι → Bool) :
    (∑ i, weight i * payoff i) -
        (∑ i, weight i * if matched i then 0 else 1) ≤
      ∑ i, weight i * if matched i then payoff i else 0 := by
  classical
  rw [← Finset.sum_sub_distrib]
  apply Finset.sum_le_sum
  intro i _
  by_cases hi : matched i = true
  · simp [hi]
  · have hone := payoff_le_one i
    simp only [Bool.not_eq_true] at hi
    simp [hi]
    nlinarith [mul_nonneg (nonnegative i)
      (sub_nonneg.mpr hone)]

end

noncomputable section

open scoped BigOperators ComplexOrder Kronecker MatrixOrder
  Matrix.Norms.L2Operator InnerProductSpace

set_option backward.isDefEq.respectTransparency false
set_option maxHeartbeats 1600000

attribute [local instance] Classical.propDecidable

variable {X Y A B : Type*}
variable [Fintype X] [Fintype Y] [Fintype A] [Fintype B]

theorem sourceHistoryAcceptedMass_eq_remaining_average
    (G : Game X Y A B) (n : ℕ)
    (S : Strategy (G.repeat n)) (D : Finset (Fin n)) :
    sourceHistoryAcceptedMass G n S D =
      (∑ i : SourceRemainingCoordinate D,
        (strategyEventLaw (G.repeat n) S).eventMass
          (FiniteEventLaw.winEvent (repeatedCoordinateWin G n)
            (insert i.val D))) /
        ((Finset.univ \ D).card : ℝ) := by
  classical
  rw [sourceHistoryAcceptedMass_eq_uniform]
  have hperm := sourceRemainingPermutation_card_pos D
  unfold sourceUniformPermutationAverage
  simp_rw [sourceRemainingPermutationCoordinate_sum D _
    (fun i : Fin n =>
      (strategyEventLaw (G.repeat n) S).eventMass
        (FiniteEventLaw.winEvent (repeatedCoordinateWin G n)
          (insert i D)))]
  have hsum :
      (∑ _π : SourceRemainingPermutation D,
        ∑ i : SourceRemainingCoordinate D,
          (strategyEventLaw (G.repeat n) S).eventMass
            (FiniteEventLaw.winEvent (repeatedCoordinateWin G n)
              (insert i.val D))) =
      (Fintype.card (SourceRemainingPermutation D) : ℝ) *
        (∑ i : SourceRemainingCoordinate D,
          (strategyEventLaw (G.repeat n) S).eventMass
            (FiniteEventLaw.winEvent (repeatedCoordinateWin G n)
              (insert i.val D))) := by simp
  rw [hsum]
  exact mul_div_mul_left _ _ hperm.ne'

theorem sourceHistoryAcceptedMass_gt_of_greedy
    (G : Game X Y A B) (n : ℕ)
    (S : Strategy (G.repeat n)) (D : Finset (Fin n))
    (hm : 0 < (Finset.univ \ D).card)
    {η : ℝ}
    (hgreedy :
      (∑ i ∈ Finset.univ \ D,
        FiniteEventLaw.failureMass
          (strategyEventLaw (G.repeat n) S)
          (repeatedCoordinateWin G n) D i) <
        ((Finset.univ \ D).card : ℝ) *
          (η * (strategyEventLaw (G.repeat n) S).eventMass
            (FiniteEventLaw.winEvent
              (repeatedCoordinateWin G n) D))) :
    (1 - η) *
        (strategyEventLaw (G.repeat n) S).eventMass
          (FiniteEventLaw.winEvent
            (repeatedCoordinateWin G n) D) <
      sourceHistoryAcceptedMass G n S D := by
  classical
  let p : ℝ := (strategyEventLaw (G.repeat n) S).eventMass
    (FiniteEventLaw.winEvent (repeatedCoordinateWin G n) D)
  have hmreal : 0 < ((Finset.univ \ D).card : ℝ) := by
    exact_mod_cast hm
  have hsub := Finset.sum_subtype (F := inferInstance)
    (Finset.univ \ D)
    (fun i : Fin n => Iff.rfl)
    (fun i : Fin n => (strategyEventLaw (G.repeat n) S).eventMass
      (FiniteEventLaw.winEvent (repeatedCoordinateWin G n)
        (insert i D)))
  have hfails :
      (∑ i ∈ Finset.univ \ D,
        FiniteEventLaw.failureMass
          (strategyEventLaw (G.repeat n) S)
          (repeatedCoordinateWin G n) D i) =
        ((Finset.univ \ D).card : ℝ) * p -
          (∑ i ∈ Finset.univ \ D,
            (strategyEventLaw (G.repeat n) S).eventMass
              (FiniteEventLaw.winEvent (repeatedCoordinateWin G n)
                (insert i D))) := by
    simp [FiniteEventLaw.failureMass, p, Finset.sum_sub_distrib]
  rw [sourceHistoryAcceptedMass_eq_remaining_average]
  rw [← hsub]
  apply (lt_div_iff₀ hmreal).mpr
  change (1 - η) * p * ((Finset.univ \ D).card : ℝ) < _
  change
    (∑ i ∈ Finset.univ \ D,
      FiniteEventLaw.failureMass
        (strategyEventLaw (G.repeat n) S)
        (repeatedCoordinateWin G n) D i) <
      ((Finset.univ \ D).card : ℝ) * (η * p) at hgreedy
  nlinarith [hgreedy, hfails]

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

end

noncomputable section

open scoped BigOperators

set_option maxHeartbeats 1600000

attribute [local instance] Classical.propDecidable

theorem exactSeedCoordinateFiber_sum
    {M : Type*} [Fintype M] [DecidableEq M]
    (coordinate : M) :
    (∑ partition : M → Bool,
      ∑ leftOrder : Equiv.Perm
        {j : M // j ∈ exactLeft coordinate partition},
      ∑ rightOrder : Equiv.Perm
        {j : M // j ∈ exactRight coordinate partition},
      ∑ leftCut : Fin
        ((exactLeft coordinate partition).card + 1),
      ∑ rightCut : Fin
        ((exactRight coordinate partition).card + 1),
        exactSeedWeight
          ⟨coordinate, partition, leftOrder,
            rightOrder, leftCut, rightCut⟩) =
      1 / (Fintype.card M : ℝ) := by
  classical
  have hbits : 0 < Fintype.card (M → Bool) :=
    Fintype.card_pos_iff.mpr ⟨fun _ => false⟩
  conv_rhs =>
    rw [← exactUniform_sum_mul hbits
      (1 / (Fintype.card M : ℝ))]
  apply Finset.sum_congr (by ext; simp)
  intro partition _
  letI : DecidableEq
      {j : M // j ∈ exactLeft coordinate partition} :=
    fun a b => Classical.propDecidable (a = b)
  letI : DecidableEq
      {j : M // j ∈ exactRight coordinate partition} :=
    fun a b => Classical.propDecidable (a = b)
  conv_rhs =>
    rw [← exactPermutationUniform_sum_mul
      (T := {j : M // j ∈ exactLeft coordinate partition})
      ((1 / (Fintype.card M : ℝ)) *
        (1 / (Fintype.card (M → Bool) : ℝ)))]
  apply Finset.sum_congr (by ext; simp)
  intro leftOrder _
  conv_rhs =>
    rw [← exactPermutationUniform_sum_mul
      (T := {j : M // j ∈ exactRight coordinate partition})
      ((1 / (Fintype.card M : ℝ)) *
        (1 / (Fintype.card (M → Bool) : ℝ)) *
        (1 / (Fintype.card
          (Equiv.Perm
            {j : M // j ∈ exactLeft coordinate partition}) : ℝ)))]
  apply Finset.sum_congr (by ext; simp)
  intro rightOrder _
  conv_rhs =>
    rw [← exactPrefixUniform_sum_mul
      (exactLeft coordinate partition).card
      ((1 / (Fintype.card M : ℝ)) *
        (1 / (Fintype.card (M → Bool) : ℝ)) *
        (1 / (Fintype.card
          (Equiv.Perm
            {j : M // j ∈ exactLeft coordinate partition}) : ℝ)) *
        (1 / (Fintype.card
          (Equiv.Perm
            {j : M // j ∈ exactRight coordinate partition}) : ℝ)))]
  apply Finset.sum_congr (by ext; simp)
  intro leftCut _
  conv_rhs =>
    rw [← exactPrefixUniform_sum_mul
      (exactRight coordinate partition).card
      ((1 / (Fintype.card M : ℝ)) *
        (1 / (Fintype.card (M → Bool) : ℝ)) *
        (1 / (Fintype.card
          (Equiv.Perm
            {j : M // j ∈ exactLeft coordinate partition}) : ℝ)) *
        (1 / (Fintype.card
          (Equiv.Perm
            {j : M // j ∈ exactRight coordinate partition}) : ℝ)) *
        (1 / ((exactLeft coordinate partition).card + 1 : ℝ)))]
  apply Finset.sum_congr (by ext; simp)
  intro rightCut _
  simp only [exactSeedWeight]
  refine congrArg₂ (· * ·)
    (congrArg₂ (· * ·)
      (congrArg₂ (· * ·) (congrArg₂ (· * ·) rfl ?_) ?_) rfl) rfl
  · exact congrArg (fun k : ℕ => 1 / (k : ℝ)) (exactFintypeCard_eq _ _)
  · exact congrArg (fun k : ℕ => 1 / (k : ℝ)) (exactFintypeCard_eq _ _)

theorem exactSeedWeight_coordinate_sum
    {M : Type*} [Fintype M] [DecidableEq M]
    (f : M → ℝ) :
    (∑ seed : ExactForwardSeed M,
      exactSeedWeight seed * f seed.coordinate) =
      ∑ i : M, (1 / (Fintype.card M : ℝ)) * f i := by
  classical
  rw [exactForwardSeed_sum]
  apply Finset.sum_congr (by ext; simp)
  intro i _
  simp_rw [← Finset.sum_mul]
  rw [exactSeedCoordinateFiber_sum i]

end

noncomputable section

open scoped BigOperators

set_option backward.isDefEq.respectTransparency false
set_option maxHeartbeats 2800000
set_option maxRecDepth 2048

open QuantumParallelRepetition.Pinsker
open QuantumParallelRepetition.ClassicalInformation

attribute [local instance] Classical.propDecidable

theorem finiteGroupedExpectation_eq_atom_sum
    {Ω C : Type*} [Fintype Ω] [Fintype C] [DecidableEq C]
    (code : Ω → C) (mass : Ω → ℝ) (value : C → ℝ) :
    (∑ target : C, groupedMass code mass target * value target) =
      ∑ outcome : Ω, mass outcome * value (code outcome) := by
  classical
  unfold groupedMass
  calc
    (∑ target : C,
      (∑ outcome ∈
        (Finset.univ.filter fun outcome : Ω =>
          code outcome = target), mass outcome) * value target) =
      ∑ target : C,
        ∑ outcome ∈
          (Finset.univ.filter fun outcome : Ω =>
            code outcome = target),
          mass outcome * value (code outcome) := by
        apply Finset.sum_congr rfl
        intro target _
        rw [Finset.sum_mul]
        apply Finset.sum_congr rfl
        intro outcome houtcome
        have hcode : code outcome = target :=
          (Finset.mem_filter.mp houtcome).2
        rw [hcode]
    _ = ∑ outcome : Ω, mass outcome * value (code outcome) :=
      Finset.sum_fiberwise Finset.univ code
        (fun outcome => mass outcome * value (code outcome))

variable {X Y A B : Type*}
variable [Fintype X] [Fintype Y] [Fintype A] [Fintype B]

end

noncomputable section

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

theorem exactSourceAliceSampleTuple_groupedMass
    (G : Game X Y A B) (n : ℕ) (D : Finset (Fin n))
    (denominator : ℕ)
    (numerator : ExactLocalSamplerIndex X Y D →
      ExactHistoryFlag X Y A B D → ℕ)
    (normalized : ∀ k, (∑ r, numerator k r) = denominator)
    (nonempty : ∀ k,
      (rationalMarked denominator (numerator k)).Nonempty)
    (history : ExactLocallySampleableTuple X Y A B D) :
    groupedMass
      (exactSourceAliceSampleTuple
        D denominator numerator nonempty)
      (flaggedQuestionWeight G
        (exactSourceSharedFlagWeight D denominator)) history =
      exactLocallySampleableJARounded
        G n D denominator numerator history := by
  classical
  have expectation := exactSourceAliceSampleTuple_expectation
    G n D denominator numerator normalized nonempty
    (fun candidate => if candidate = history then (1 : ℝ) else 0)
  simpa [groupedMass, Finset.sum_filter, mul_ite] using expectation

end

noncomputable section

open scoped BigOperators

open QuantumParallelRepetition.Pinsker
open QuantumParallelRepetition.ClassicalInformation

attribute [local instance] Classical.propDecidable

variable {Ω T : Type*} [Fintype Ω] [Fintype T] [DecidableEq T]

theorem exactFiniteFiberLift_groupedMass
    (projection : Ω → T) (original : Ω → ℝ) (target : T → ℝ)
    (supported : ∀ point,
      groupedMass projection original point = 0 → target point = 0)
    (point : T) :
    groupedMass projection
      (exactFiniteFiberLift projection original target) point =
        target point := by
  classical
  change
    (∑ outcome ∈
      (Finset.univ.filter fun outcome : Ω =>
        projection outcome = point),
      exactFiniteFiberLift projection original target outcome) =
        target point
  calc
    (∑ outcome ∈
      (Finset.univ.filter fun outcome : Ω =>
        projection outcome = point),
      exactFiniteFiberLift projection original target outcome) =
      ∑ outcome ∈
        (Finset.univ.filter fun outcome : Ω =>
          projection outcome = point),
        target point * original outcome /
          groupedMass projection original point := by
          apply Finset.sum_congr rfl
          intro outcome member
          have same : projection outcome = point :=
            (Finset.mem_filter.mp member).2
          simp [exactFiniteFiberLift, same]
    _ = target point * groupedMass projection original point /
          groupedMass projection original point := by
          rw [← Finset.sum_div, ← Finset.mul_sum]
          rfl
    _ = target point := by
          by_cases empty : groupedMass projection original point = 0
          · simp [empty, supported point empty]
          · field_simp

theorem exactFiniteFiberLift_expectation
    (projection : Ω → T) (original : Ω → ℝ) (target : T → ℝ)
    (supported : ∀ point,
      groupedMass projection original point = 0 → target point = 0)
    (value : T → ℝ) :
    (∑ outcome : Ω,
      exactFiniteFiberLift projection original target outcome *
        value (projection outcome)) =
      ∑ point : T, target point * value point := by
  calc
    (∑ outcome : Ω,
      exactFiniteFiberLift projection original target outcome *
        value (projection outcome)) =
      ∑ point : T,
        groupedMass projection
          (exactFiniteFiberLift projection original target) point *
            value point :=
      (finiteGroupedExpectation_eq_atom_sum projection
        (exactFiniteFiberLift projection original target)
        value).symm
    _ = ∑ point : T, target point * value point := by
      simp_rw [exactFiniteFiberLift_groupedMass
        projection original target supported]

end

noncomputable section

open scoped BigOperators ComplexOrder Kronecker MatrixOrder
  Matrix.Norms.L2Operator InnerProductSpace

set_option backward.isDefEq.respectTransparency false
set_option maxHeartbeats 1800000
set_option maxRecDepth 2048

open QuantumParallelRepetition.ClassicalInformation

attribute [local instance] Classical.propDecidable

variable {X Y A B : Type*}
variable [Fintype X] [Fintype Y] [Fintype A] [Fintype B]

theorem exactSourceAcceptedCoordinateMass_nonneg
    (G : Game X Y A B) (n : ℕ) (S : Strategy (G.repeat n))
    (D : Finset (Fin n))
    (positive : 0 < repeatedPostselectionMass G n S D)
    (t : ExactLocallySampleableTuple X Y A B D) :
    0 ≤ exactSourceAcceptedCoordinateMass G n S D t := by
  unfold exactSourceAcceptedCoordinateMass
  apply Finset.sum_nonneg
  intro q _
  split
  · exact exactPostselectedJointLaw_nonneg
      G n S D positive q
  · exact le_rfl

theorem exactSourceAcceptedCoordinateMass_le_law
    (G : Game X Y A B) (n : ℕ) (S : Strategy (G.repeat n))
    (D : Finset (Fin n))
    (positive : 0 < repeatedPostselectionMass G n S D)
    (t : ExactLocallySampleableTuple X Y A B D) :
    exactSourceAcceptedCoordinateMass G n S D t ≤
      exactLocallySampleableLaw G n S D t := by
  classical
  unfold exactSourceAcceptedCoordinateMass
    exactLocallySampleableLaw exactSourcePushforward
    groupedMass
  rw [Finset.sum_filter]
  apply Finset.sum_le_sum
  intro q _
  by_cases history : exactLocallySampleableCode D q = t
  · by_cases winning :
      repeatedCoordinateWin G n q.1.coordinate.val q.2 = true
    · simp [history, winning]
    · simp [history, winning,
        exactPostselectedJointLaw_nonneg
          G n S D positive q]
  · simp [history]

theorem exactSourceConditionalWinningProbability_bounds
    (G : Game X Y A B) (n : ℕ) (S : Strategy (G.repeat n))
    (D : Finset (Fin n))
    (positive : 0 < repeatedPostselectionMass G n S D)
    (t : ExactLocallySampleableTuple X Y A B D) :
    0 ≤ exactSourceConditionalWinningProbability
      G n S D t ∧
    exactSourceConditionalWinningProbability
      G n S D t ≤ 1 := by
  have mass_nonnegative :=
    exactSourceAcceptedCoordinateMass_nonneg
      G n S D positive t
  have mass_le := exactSourceAcceptedCoordinateMass_le_law
    G n S D positive t
  have law_nonnegative := exactLocallySampleableLaw_nonneg
    G n S D positive t
  unfold exactSourceConditionalWinningProbability
  constructor
  · exact div_nonneg mass_nonnegative law_nonnegative
  · by_cases zero : exactLocallySampleableLaw G n S D t = 0
    · simp [zero]
    · exact (div_le_one
        (lt_of_le_of_ne law_nonnegative (Ne.symm zero))).mpr mass_le

theorem exactSourceConditionalWinningProbability_mul_law
    (G : Game X Y A B) (n : ℕ) (S : Strategy (G.repeat n))
    (D : Finset (Fin n))
    (positive : 0 < repeatedPostselectionMass G n S D)
    (t : ExactLocallySampleableTuple X Y A B D) :
    exactLocallySampleableLaw G n S D t *
        exactSourceConditionalWinningProbability G n S D t =
      exactSourceAcceptedCoordinateMass G n S D t := by
  by_cases zero : exactLocallySampleableLaw G n S D t = 0
  · have nonnegative := exactSourceAcceptedCoordinateMass_nonneg
      G n S D positive t
    have bounded := exactSourceAcceptedCoordinateMass_le_law
      G n S D positive t
    rw [zero] at bounded
    have accepted_zero :
        exactSourceAcceptedCoordinateMass G n S D t = 0 := by
      linarith
    simp [zero, accepted_zero]
  · unfold exactSourceConditionalWinningProbability
    field_simp [zero]

theorem exactSourceAcceptedCoordinateMass_sum
    (G : Game X Y A B) (n : ℕ) (S : Strategy (G.repeat n))
    (D : Finset (Fin n)) :
    (∑ t : ExactLocallySampleableTuple X Y A B D,
      exactSourceAcceptedCoordinateMass G n S D t) =
      ∑ q : ExactJointOutcome X Y A B D,
        if repeatedCoordinateWin G n q.1.coordinate.val q.2 = true
        then exactPostselectedJointLaw G n S D q
        else 0 := by
  classical
  unfold exactSourceAcceptedCoordinateMass
  rw [Finset.sum_comm]
  apply Finset.sum_congr rfl
  intro q _
  by_cases winning :
      repeatedCoordinateWin G n q.1.coordinate.val q.2 = true
  · simp [winning]
  · simp [winning]

theorem exactSourceConditionalWinningProbability_expectation
    (G : Game X Y A B) (n : ℕ) (S : Strategy (G.repeat n))
    (D : Finset (Fin n))
    (positive : 0 < repeatedPostselectionMass G n S D) :
    (∑ t : ExactLocallySampleableTuple X Y A B D,
      exactLocallySampleableLaw G n S D t *
        exactSourceConditionalWinningProbability G n S D t) =
      ∑ q : ExactJointOutcome X Y A B D,
        if repeatedCoordinateWin G n q.1.coordinate.val q.2 = true
        then exactPostselectedJointLaw G n S D q
        else 0 := by
  simp_rw [exactSourceConditionalWinningProbability_mul_law
    G n S D positive]
  exact exactSourceAcceptedCoordinateMass_sum G n S D

theorem exactRepeatedConditionedCoordinateWin
    (G : Game X Y A B) (n : ℕ) (S : Strategy (G.repeat n))
    (D : Finset (Fin n)) (i : Fin n) :
    (∑ outcome : ExactOutcome X Y A B n,
      if repeatedCoordinateWin G n i outcome = true then
        repeatedConditionedOutcomeLaw G n S D outcome
      else 0) =
    (strategyEventLaw (G.repeat n) S).eventMass
        (FiniteEventLaw.winEvent
          (repeatedCoordinateWin G n) (insert i D)) /
        repeatedPostselectionMass G n S D := by
  classical
  have accepted_as_indicator :
      (strategyEventLaw (G.repeat n) S).eventMass
          (FiniteEventLaw.winEvent
            (repeatedCoordinateWin G n) (insert i D)) =
        ∑ outcome : ExactOutcome X Y A B n,
          if outcome ∈ FiniteEventLaw.winEvent
              (repeatedCoordinateWin G n) (insert i D) then
            (strategyEventLaw (G.repeat n) S).weight outcome
          else 0 := by
    simp [FiniteEventLaw.eventMass]
  rw [accepted_as_indicator]
  rw [Finset.sum_div]
  apply Finset.sum_congr rfl
  intro outcome _
  by_cases winning : repeatedCoordinateWin G n i outcome = true
  · simp [repeatedConditionedOutcomeLaw,
      conditionedEventDistribution,
      repeatedPostselectionMass, postselectionMass,
      FiniteEventLaw.winEvent, winning, ite_div]
  · simp [FiniteEventLaw.winEvent, winning]

theorem exactSourceAcceptedCoordinateMass_sum_eq_remaining_average
    (G : Game X Y A B) (n : ℕ) (S : Strategy (G.repeat n))
    (D : Finset (Fin n)) :
    (∑ t : ExactLocallySampleableTuple X Y A B D,
      exactSourceAcceptedCoordinateMass G n S D t) =
      (1 / (Fintype.card (SourceRemainingCoordinate D) : ℝ)) *
        (∑ i : SourceRemainingCoordinate D,
          (strategyEventLaw (G.repeat n) S).eventMass
            (FiniteEventLaw.winEvent
              (repeatedCoordinateWin G n) (insert i.val D)) /
            repeatedPostselectionMass G n S D) := by
  classical
  rw [exactSourceAcceptedCoordinateMass_sum]
  unfold exactPostselectedJointLaw
  rw [Fintype.sum_prod_type, Finset.sum_comm]
  calc
    (∑ outcome : ExactOutcome X Y A B n,
      ∑ seed : ExactRemainingSeed D,
        if repeatedCoordinateWin G n seed.coordinate.val outcome = true
        then exactSeedWeight seed *
          repeatedConditionedOutcomeLaw G n S D outcome
        else 0) =
      ∑ outcome : ExactOutcome X Y A B n,
        ∑ seed : ExactRemainingSeed D,
          exactSeedWeight seed *
            (if repeatedCoordinateWin G n seed.coordinate.val outcome = true
             then repeatedConditionedOutcomeLaw G n S D outcome
             else 0) := by
          apply Finset.sum_congr rfl
          intro outcome _
          apply Finset.sum_congr rfl
          intro seed _
          split <;> simp
    _ = ∑ outcome : ExactOutcome X Y A B n,
        ∑ i : SourceRemainingCoordinate D,
          (1 / (Fintype.card (SourceRemainingCoordinate D) : ℝ)) *
            (if repeatedCoordinateWin G n i.val outcome = true
             then repeatedConditionedOutcomeLaw G n S D outcome
             else 0) := by
          apply Finset.sum_congr rfl
          intro outcome _
          exact exactSeedWeight_coordinate_sum
            (M := SourceRemainingCoordinate D)
            (fun i =>
              if repeatedCoordinateWin G n i.val outcome = true
              then repeatedConditionedOutcomeLaw G n S D outcome
              else 0)
    _ = (1 / (Fintype.card (SourceRemainingCoordinate D) : ℝ)) *
        (∑ i : SourceRemainingCoordinate D,
          ∑ outcome : ExactOutcome X Y A B n,
            if repeatedCoordinateWin G n i.val outcome = true
            then repeatedConditionedOutcomeLaw G n S D outcome
            else 0) := by
          rw [Finset.sum_comm, Finset.mul_sum]
          apply Finset.sum_congr rfl
          intro i _
          rw [Finset.mul_sum]
    _ = _ := by
      congr 1
      apply Finset.sum_congr rfl
      intro i _
      exact exactRepeatedConditionedCoordinateWin
        G n S D i.val

theorem exactSourceConditionalWinningProbability_eq_accepted_average
    (G : Game X Y A B) (n : ℕ) (S : Strategy (G.repeat n))
    (D : Finset (Fin n))
    (positive : 0 < repeatedPostselectionMass G n S D) :
    (∑ t : ExactLocallySampleableTuple X Y A B D,
      exactLocallySampleableLaw G n S D t *
        exactSourceConditionalWinningProbability G n S D t) =
      sourceHistoryAcceptedMass G n S D /
        repeatedPostselectionMass G n S D := by
  rw [exactSourceConditionalWinningProbability_expectation
    G n S D positive,
    ← exactSourceAcceptedCoordinateMass_sum,
    exactSourceAcceptedCoordinateMass_sum_eq_remaining_average,
    sourceHistoryAcceptedMass_eq_remaining_average]
  have cardinality :
      Fintype.card (SourceRemainingCoordinate D) =
        (Finset.univ \ D).card := by
    simpa only [Fintype.card_fin] using Fintype.card_congr
      (Finset.equivFin (Finset.univ \ D))
  push_cast [cardinality]
  rw [← Finset.sum_div]
  ring

theorem exactSource_failure_sum_lt_of_uniform
    (G : Game X Y A B) (n : ℕ) (S : Strategy (G.repeat n))
    (D : Finset (Fin n))
    (remaining : 0 < (Finset.univ \ D).card)
    (positive : 0 < repeatedPostselectionMass G n S D)
    {δ : ℝ}
    (failure : uniformRemainingFailure
      (strategyEventLaw (G.repeat n) S)
      (repeatedCoordinateWin G n) D < δ) :
    (∑ i ∈ Finset.univ \ D,
      FiniteEventLaw.failureMass
        (strategyEventLaw (G.repeat n) S)
        (repeatedCoordinateWin G n) D i) <
      ((Finset.univ \ D).card : ℝ) *
        (δ * repeatedPostselectionMass G n S D) := by
  have cardinality : 0 < ((Finset.univ \ D).card : ℝ) := by
    exact_mod_cast remaining
  unfold uniformRemainingFailure conditionalCoordinateFailure at failure
  change
    (∑ i ∈ Finset.univ \ D,
      FiniteEventLaw.failureMass
        (strategyEventLaw (G.repeat n) S)
        (repeatedCoordinateWin G n) D i /
        repeatedPostselectionMass G n S D) /
      ((Finset.univ \ D).card : ℝ) < δ at failure
  rw [← Finset.sum_div] at failure
  have first := (div_lt_iff₀ cardinality).mp failure
  have second := (div_lt_iff₀ positive).mp first
  nlinarith

theorem exactSourceConditionalWinningProbability_gt_of_uniform_failure
    (G : Game X Y A B) (n : ℕ) (S : Strategy (G.repeat n))
    (D : Finset (Fin n))
    (remaining : 0 < (Finset.univ \ D).card)
    (positive : 0 < repeatedPostselectionMass G n S D)
    {δ : ℝ}
    (failure : uniformRemainingFailure
      (strategyEventLaw (G.repeat n) S)
      (repeatedCoordinateWin G n) D < δ) :
    1 - δ <
      ∑ t : ExactLocallySampleableTuple X Y A B D,
        exactLocallySampleableLaw G n S D t *
          exactSourceConditionalWinningProbability G n S D t := by
  rw [exactSourceConditionalWinningProbability_eq_accepted_average
    G n S D positive]
  have numerator := exactSource_failure_sum_lt_of_uniform
    G n S D remaining positive failure
  have accepted := sourceHistoryAcceptedMass_gt_of_greedy
    G n S D remaining numerator
  apply (lt_div_iff₀ positive).mpr
  exact accepted

end

noncomputable section

open scoped BigOperators ComplexOrder Kronecker MatrixOrder
  Matrix.Norms.L2Operator InnerProductSpace

set_option backward.isDefEq.respectTransparency false
set_option maxHeartbeats 1800000
set_option maxRecDepth 2048

open QuantumParallelRepetition.Pinsker
open QuantumParallelRepetition.ClassicalSampling
open QuantumParallelRepetition.ClassicalInformation

attribute [local instance] Classical.propDecidable

variable {X Y A B dA dB : Type}
variable [Fintype X] [Fintype Y] [Fintype A] [Fintype B]
variable [Fintype dA] [Fintype dB] [DecidableEq dA] [DecidableEq dB]

theorem exactSourceAliceFlagCoupling_supported
    (G : Game X Y A B) (n : ℕ) (S : Strategy (G.repeat n))
    (D : Finset (Fin n))
    (remaining : 0 < (Finset.univ \ D).card)
    (positive : 0 < repeatedPostselectionMass G n S D)
    (base : ExactHistoryFlag X Y A B D)
    (denominator : ℕ) (denominator_positive : 0 < denominator)
    (numerator : ExactLocalSamplerIndex X Y D →
      ExactHistoryFlag X Y A B D → ℕ)
    (normalized : ∀ index,
      (∑ history, numerator index history) = denominator)
    (preserves : ∀ index history,
      0 < exactLocalConditionalFamily D base
          (exactLocallySampleableLaw G n S D) index history →
        0 < numerator index history)
    (nonempty : ∀ index,
      (rationalMarked denominator (numerator index)).Nonempty)
    (history : ExactLocallySampleableTuple X Y A B D) :
    groupedMass
        (exactSourceAliceSampleTuple
          D denominator numerator nonempty)
        (flaggedQuestionWeight G
          (exactSourceSharedFlagWeight D denominator)) history = 0 →
      exactLocallySampleableLaw G n S D history = 0 := by
  rw [exactSourceAliceSampleTuple_groupedMass
    G n D denominator numerator normalized nonempty]
  exact exactLocallySampleableLaw_absolute_continuous_roundedJA
    G n S D remaining positive base denominator denominator_positive
    numerator preserves history

theorem exactSourceAliceFlagCoupling_expectation
    (G : Game X Y A B) (n : ℕ) (S : Strategy (G.repeat n))
    (D : Finset (Fin n))
    (remaining : 0 < (Finset.univ \ D).card)
    (positive : 0 < repeatedPostselectionMass G n S D)
    (base : ExactHistoryFlag X Y A B D)
    (denominator : ℕ) (denominator_positive : 0 < denominator)
    (numerator : ExactLocalSamplerIndex X Y D →
      ExactHistoryFlag X Y A B D → ℕ)
    (normalized : ∀ index,
      (∑ history, numerator index history) = denominator)
    (preserves : ∀ index history,
      0 < exactLocalConditionalFamily D base
          (exactLocallySampleableLaw G n S D) index history →
        0 < numerator index history)
    (nonempty : ∀ index,
      (rationalMarked denominator (numerator index)).Nonempty)
    (value : ExactLocallySampleableTuple X Y A B D → ℝ) :
    (∑ outcome :
      ExactSourceSharedFlag X Y A B D denominator × (X × Y),
      exactSourceAliceFlagCoupling
        G n S D denominator numerator nonempty outcome *
        value (exactSourceAliceSampleTuple
          D denominator numerator nonempty outcome)) =
      ∑ history : ExactLocallySampleableTuple X Y A B D,
        exactLocallySampleableLaw G n S D history *
          value history := by
  exact exactFiniteFiberLift_expectation
    (exactSourceAliceSampleTuple
      D denominator numerator nonempty)
    (flaggedQuestionWeight G
      (exactSourceSharedFlagWeight D denominator))
    (exactLocallySampleableLaw G n S D)
    (exactSourceAliceFlagCoupling_supported
      G n S D remaining positive base denominator denominator_positive
      numerator normalized preserves nonempty)
    value

theorem exactSourceAliceFlagCoupling_sum
    (G : Game X Y A B) (n : ℕ) (S : Strategy (G.repeat n))
    (D : Finset (Fin n))
    (remaining : 0 < (Finset.univ \ D).card)
    (positive : 0 < repeatedPostselectionMass G n S D)
    (base : ExactHistoryFlag X Y A B D)
    (denominator : ℕ) (denominator_positive : 0 < denominator)
    (numerator : ExactLocalSamplerIndex X Y D →
      ExactHistoryFlag X Y A B D → ℕ)
    (normalized : ∀ index,
      (∑ history, numerator index history) = denominator)
    (preserves : ∀ index history,
      0 < exactLocalConditionalFamily D base
          (exactLocallySampleableLaw G n S D) index history →
        0 < numerator index history)
    (nonempty : ∀ index,
      (rationalMarked denominator (numerator index)).Nonempty) :
    (∑ outcome :
      ExactSourceSharedFlag X Y A B D denominator × (X × Y),
      exactSourceAliceFlagCoupling
        G n S D denominator numerator nonempty outcome) = 1 := by
  have expectation := exactSourceAliceFlagCoupling_expectation
    G n S D remaining positive base denominator denominator_positive
    numerator normalized preserves nonempty (fun _ => (1 : ℝ))
  simpa [exactLocallySampleableLaw_sum
    G n S D remaining positive] using expectation

end

noncomputable section

open WithLp
open scoped BigOperators ComplexOrder Kronecker MatrixOrder
  Matrix.Norms.L2Operator InnerProductSpace

attribute [local instance] Classical.propDecidable

section DependentStoppingBlocks

variable {X Y A B R : Type}
variable [Fintype X] [Fintype Y] [Fintype A] [Fintype B]
variable [Fintype R] [DecidableEq R]
variable {ι κ : R → Type}
variable [∀ r, Fintype (ι r)] [∀ r, DecidableEq (ι r)]
variable [∀ r, Fintype (κ r)] [∀ r, DecidableEq (κ r)]

theorem actualStoppingBranchWinningEffect_posSemidef
    (G : Game X Y A B)
    (PA : (r : R) → X → POVM A (ι r))
    (PB : (s : R) → Y → POVM B (κ s))
    (r s : R) (x : X) (y : Y) :
    (actualStoppingBranchWinningEffect
      G PA PB r s x y).PosSemidef := by
  classical
  apply Matrix.nonneg_iff_posSemidef.mp
  unfold actualStoppingBranchWinningEffect
  apply Finset.sum_nonneg
  intro a _
  apply Finset.sum_nonneg
  intro b _
  split
  · exact ((PA r x).positive a).kronecker
      ((PB s y).positive b) |>.nonneg
  · exact le_rfl

theorem actualStoppingBranchBorn_nonneg
    (G : Game X Y A B)
    (PA : (r : R) → X → POVM A (ι r))
    (PB : (s : R) → Y → POVM B (κ s))
    (z : EuclideanSpace ℂ ((Σ r, ι r) × (Σ s, κ s)))
    (r s : R) (x : X) (y : Y) :
    0 ≤ quadraticExpectation
      (Matrix.toEuclideanCLM (n := ι r × κ s) (𝕜 := ℂ)
        (actualStoppingBranchWinningEffect
          G PA PB r s x y))
      (actualStoppingBranchVector z r s) := by
  apply positive_quadraticExpectation_nonneg
  apply matrixEffectCLM_isPositive
  exact actualStoppingBranchWinningEffect_posSemidef
    G PA PB r s x y

end DependentStoppingBlocks

end

noncomputable section

open WithLp
open scoped BigOperators ComplexOrder Kronecker MatrixOrder
  Matrix.Norms.L2Operator InnerProductSpace

attribute [local instance] Classical.propDecidable

section QuestionLocalStopping

variable {X Y A B R : Type}
variable [Fintype X] [Fintype Y] [Fintype A] [Fintype B]
variable [Fintype R] [DecidableEq R]
variable {ι : R → Type}
variable [∀ r, Fintype (ι r)] [∀ r, DecidableEq (ι r)]

theorem actualStoppingQuestionLocalFlaggedWinningProbability_ge_matched
    {L : ℕ} {J : Type} [Fintype J] [DecidableEq J]
    {ι : Fin (L + 1) → Type}
    [∀ r, Fintype (ι r)] [∀ r, DecidableEq (ι r)]
    (G : Game X Y A B)
    (weight : J → ℝ)
    (weight_nonnegative : ∀ j, 0 ≤ weight j)
    (weight_normalized : (∑ j : J, weight j) = 1)
    (PA : J → (r : Fin (L + 1)) → X → POVM A (ι r))
    (PB : J → (r : Fin (L + 1)) → Y → POVM B (ι r))
    (U : J → X → Matrix.unitaryGroup
      (Σ r : Fin (L + 1), ι r) ℂ)
    (V : J → Y → Matrix.unitaryGroup
      (Σ r : Fin (L + 1), ι r) ℂ)
    (z : J → EuclideanSpace ℂ
      ((Σ r : Fin (L + 1), ι r) ×
       (Σ r : Fin (L + 1), ι r)))
    (normalized : ∀ j, ‖z j‖ = 1) :
    (∑ q : J, weight q *
      (∑ x : X, ∑ y : Y, G.questionWeight x y *
        ∑ j : Fin L,
          quadraticExpectation
            (Matrix.toEuclideanCLM
              (n := ι j.succ × ι j.succ) (𝕜 := ℂ)
              (actualStoppingBranchWinningEffect
                G (PA q) (PB q) j.succ j.succ x y))
            (actualStoppingBranchVector
              (actualStoppingQuestionLocalAction
                (U q x) (V q y) (z q)) j.succ j.succ))) ≤
      (pureFlaggedStrategy G weight weight_nonnegative
        weight_normalized z normalized
        (fun q x => unitaryConjugatePOVM (U q x)
          (dependentBlockPOVM (fun r => PA q r x)))
        (fun q y => unitaryConjugatePOVM (V q y)
          (dependentBlockPOVM (fun r => PB q r y)))).winProbability := by
  classical
  rw [pureFlaggedStrategy_winProbability]
  apply Finset.sum_le_sum
  intro q _
  apply mul_le_mul_of_nonneg_left _ (weight_nonnegative q)
  exact actualStoppingQuestionLocalWinningProbability_ge_matched
    G (PA q) (PB q) (U q) (V q) (z q) (normalized q)

end QuestionLocalStopping

end

end QuantumParallelRepetition


open QuantumParallelRepetition
open scoped ComplexOrder Matrix BigOperators InnerProductSpace
open Complex Matrix Finset
open scoped BigOperators ComplexOrder Kronecker MatrixOrder
  Matrix.Norms.L2Operator InnerProductSpace
open QuantumParallelRepetition.ClassicalSampling
attribute [local instance] Classical.propDecidable

theorem solution
    {X Y A B : Type}
    [Fintype X] [Fintype Y] [Fintype A] [Fintype B]
    (G : Game X Y A B) (n : ℕ) (S : Strategy (G.repeat n))
    (D : Finset (Fin n))
    (remaining : 0 < (Finset.univ \ D).card)
    (positive : 0 < repeatedPostselectionMass G n S D)
    (base : ExactHistoryFlag X Y A B D)
    (denominator : ℕ) (denominator_positive : 0 < denominator)
    (numerator : ExactLocalSamplerIndex X Y D →
      ExactHistoryFlag X Y A B D → ℕ)
    (rational_normalized : ∀ index,
      (∑ history, numerator index history) = denominator)
    (support_preserving : ∀ index history,
      0 < exactLocalConditionalFamily D base
          (exactLocallySampleableLaw G n S D) index history →
        0 < numerator index history)
    (nonempty : ∀ index,
      (rationalMarked denominator (numerator index)).Nonempty)
    {L : ℕ} {ι : Fin (L + 1) → Type}
    [∀ r, Fintype (ι r)] [∀ r, DecidableEq (ι r)]
    (PA : ExactSourceSharedFlag X Y A B D denominator →
      (r : Fin (L + 1)) → X → POVM A (ι r))
    (PB : ExactSourceSharedFlag X Y A B D denominator →
      (r : Fin (L + 1)) → Y → POVM B (ι r))
    (U : ExactSourceSharedFlag X Y A B D denominator →
      X → Matrix.unitaryGroup (Σ r : Fin (L + 1), ι r) ℂ)
    (V : ExactSourceSharedFlag X Y A B D denominator →
      Y → Matrix.unitaryGroup (Σ r : Fin (L + 1), ι r) ℂ)
    (z : ExactSourceSharedFlag X Y A B D denominator →
      EuclideanSpace ℂ
        ((Σ r : Fin (L + 1), ι r) ×
          (Σ r : Fin (L + 1), ι r)))
    (z_normalized : ∀ flag, ‖z flag‖ = 1)
    (matched :
      ExactSourceSharedFlag X Y A B D denominator ×
        (X × Y) → Bool)
    {K : Type*} [Fintype K]
    {H : ExactLocallySampleableTuple X Y A B D × K → Type*}
    [∀ p, NormedAddCommGroup (H p)]
    [∀ p, InnerProductSpace ℂ (H p)]
    (operator : (p : ExactLocallySampleableTuple X Y A B D × K) →
      (H p →L[ℂ] H p))
    (contraction : ∀ p, ‖operator p‖ ≤ 1)
    (actual canonical source :
      (p : ExactLocallySampleableTuple X Y A B D × K) → H p)
    (actual_mass :
      (∑ h : ExactLocallySampleableTuple X Y A B D,
        exactLocallySampleableLaw G n S D h *
          ∑ k : K, ‖actual (h, k)‖ ^ 2) ≤ 1)
    (canonical_mass :
      (∑ h : ExactLocallySampleableTuple X Y A B D,
        exactLocallySampleableLaw G n S D h *
          ∑ k : K, ‖canonical (h, k)‖ ^ 2) ≤ 1)
    (canonical_row_mass : ∀ h : ExactLocallySampleableTuple X Y A B D,
      (∑ k : K, ‖canonical (h, k)‖ ^ 2) ≤ 1)
    (same_work_mass : ∀ (h : ExactLocallySampleableTuple X Y A B D)
      (k : K), ‖source (h, k)‖ = ‖canonical (h, k)‖)
    (supported_born : ∀ h : ExactLocallySampleableTuple X Y A B D,
      exactLocallySampleableLaw G n S D h ≠ 0 →
        ∀ k : K,
          quadraticExpectation (operator (h, k)) (source (h, k)) =
            ‖source (h, k)‖ ^ 2 *
              exactSourceConditionalWinningProbability G n S D h)
    (epsilon lam deviation clipping bad : ℝ)
    (clean_deviation :
      (∑ h : ExactLocallySampleableTuple X Y A B D,
        exactLocallySampleableLaw G n S D h *
          ∑ k : K, ‖actual (h, k) - canonical (h, k)‖ ^ 2) ≤ deviation)
    (clip_deviation :
      (∑ h : ExactLocallySampleableTuple X Y A B D,
        exactLocallySampleableLaw G n S D h *
          ∑ k : K, ‖canonical (h, k) - source (h, k)‖ ^ 2) ≤ clipping)
    (actual_success :
      1 - bad ≤
        ∑ h : ExactLocallySampleableTuple X Y A B D,
          exactLocallySampleableLaw G n S D h *
            ∑ k : K, ‖actual (h, k)‖ ^ 2)
    (history_born_nonnegative :
      ∀ h : ExactLocallySampleableTuple X Y A B D,
        0 ≤ ∑ k : K,
          quadraticExpectation (operator (h, k)) (actual (h, k)))
    (history_born_bounded :
      ∀ h : ExactLocallySampleableTuple X Y A B D,
        (∑ k : K,
          quadraticExpectation (operator (h, k)) (actual (h, k))) ≤ 1)
    (source_failure :
      uniformRemainingFailure
          (strategyEventLaw (G.repeat n) S)
          (repeatedCoordinateWin G n) D < epsilon / 2)
    (total_variation :
      QuantumParallelRepetition.Pinsker.finiteTotalVariation
        (flaggedQuestionWeight G
          (exactSourceSharedFlagWeight D denominator))
        (exactSourceAliceFlagCoupling
          G n S D denominator numerator nonempty) ≤ lam)
    (mismatch :
      (∑ outcome :
        ExactSourceSharedFlag X Y A B D denominator × (X × Y),
        flaggedQuestionWeight G
          (exactSourceSharedFlagWeight D denominator) outcome *
          if matched outcome then 0 else 1) ≤ 4 * lam)
    (matched_physical_branch :
      ∀ (flag : ExactSourceSharedFlag X Y A B D denominator)
        (x : X) (y : Y),
        matched (flag, (x, y)) = true →
          (∑ k : K,
            quadraticExpectation
              (operator
                (exactSourceAliceSampleTuple
                  D denominator numerator nonempty (flag, (x, y)), k))
              (actual
                (exactSourceAliceSampleTuple
                  D denominator numerator nonempty (flag, (x, y)), k))) ≤
            ∑ j : Fin L,
              quadraticExpectation
                (Matrix.toEuclideanCLM
                  (n := ι j.succ × ι j.succ) (𝕜 := ℂ)
                  (actualStoppingBranchWinningEffect
                    G (PA flag) (PB flag) j.succ j.succ x y))
                (actualStoppingBranchVector
                  (actualStoppingQuestionLocalAction
                    (U flag x) (V flag y) (z flag))
                  j.succ j.succ)) :
    1 - epsilon / 2 - 5 * lam -
        (bad + 4 * Real.sqrt deviation + 2 * Real.sqrt clipping) ≤
      (pureFlaggedStrategy G
        (exactSourceSharedFlagWeight D denominator)
        (exactSourceSharedFlagWeight_nonneg D denominator)
        (exactSourceSharedFlagWeight_sum D remaining denominator)
        z z_normalized
        (fun flag x => unitaryConjugatePOVM
          (U flag x)
          (dependentBlockPOVM
            (fun r => PA flag r x)))
        (fun flag y => unitaryConjugatePOVM
          (V flag y)
          (dependentBlockPOVM
            (fun r => PB flag r y)))).winProbability := by
  classical
  let weight : ExactSourceSharedFlag X Y A B D denominator → ℝ :=
    exactSourceSharedFlagWeight D denominator
  let p :
      ExactSourceSharedFlag X Y A B D denominator × (X × Y) → ℝ :=
    flaggedQuestionWeight G weight
  let q :
      ExactSourceSharedFlag X Y A B D denominator × (X × Y) → ℝ :=
    exactSourceAliceFlagCoupling
      G n S D denominator numerator nonempty
  let history :
      ExactSourceSharedFlag X Y A B D denominator × (X × Y) →
        ExactLocallySampleableTuple X Y A B D :=
    exactSourceAliceSampleTuple D denominator numerator nonempty
  let physical : ExactLocallySampleableTuple X Y A B D → ℝ :=
    fun h => ∑ k : K,
      quadraticExpectation (operator (h, k)) (actual (h, k))
  let flagPhysical :
      ExactSourceSharedFlag X Y A B D denominator × (X × Y) → ℝ :=
    fun outcome => physical (history outcome)
  have weight_nonnegative : ∀ flag, 0 ≤ weight flag :=
    exactSourceSharedFlagWeight_nonneg D denominator
  have weight_normalized : (∑ flag, weight flag) = 1 :=
    exactSourceSharedFlagWeight_sum D remaining denominator
  have p_normalized : (∑ outcome, p outcome) = 1 :=
    flaggedQuestionWeight_sum G weight weight_normalized
  have q_normalized : (∑ outcome, q outcome) = 1 :=
    exactSourceAliceFlagCoupling_sum
      G n S D remaining positive base denominator denominator_positive
      numerator rational_normalized support_preserving nonempty
  have fair_verifier :=
    unconditionalWeightedClippedMatchedVerifierAndMassLoss
      (exactLocallySampleableLaw G n S D)
      (exactLocallySampleableLaw_nonneg G n S D positive)
      (exactLocallySampleableLaw_sum G n S D remaining positive)
      (exactSourceConditionalWinningProbability G n S D)
      (fun h =>
        (exactSourceConditionalWinningProbability_bounds
          G n S D positive h).2)
      operator contraction actual canonical source
      actual_mass canonical_mass canonical_row_mass
      same_work_mass supported_born
      deviation clipping bad
      clean_deviation clip_deviation actual_success
  have fair_win :
      1 - epsilon / 2 ≤
        ∑ h : ExactLocallySampleableTuple X Y A B D,
          exactLocallySampleableLaw G n S D h *
            exactSourceConditionalWinningProbability
              G n S D h :=
    (exactSourceConditionalWinningProbability_gt_of_uniform_failure
      G n S D remaining positive source_failure).le
  have pushforward :
      (∑ outcome, q outcome * flagPhysical outcome) =
        ∑ h : ExactLocallySampleableTuple X Y A B D,
          exactLocallySampleableLaw G n S D h * physical h := by
    simpa [q, flagPhysical, history] using
      (exactSourceAliceFlagCoupling_expectation
        G n S D remaining positive base denominator denominator_positive
        numerator rational_normalized support_preserving nonempty physical)
  have flagPhysical_nonnegative (outcome :
      ExactSourceSharedFlag X Y A B D denominator × (X × Y)) :
      0 ≤ flagPhysical outcome :=
    history_born_nonnegative (history outcome)
  have flagPhysical_bounded (outcome :
      ExactSourceSharedFlag X Y A B D denominator × (X × Y)) :
      flagPhysical outcome ≤ 1 :=
    history_born_bounded (history outcome)
  have variation : QuantumParallelRepetition.Pinsker.finiteTotalVariation p q ≤ lam := by
    simpa [p, q, weight] using total_variation
  have transferred := winning_expectation_transfer
    p q flagPhysical p_normalized q_normalized
    flagPhysical_nonnegative flagPhysical_bounded
  have p_nonnegative (outcome :
      ExactSourceSharedFlag X Y A B D denominator × (X × Y)) :
      0 ≤ p outcome :=
    flaggedQuestionWeight_nonneg
      G weight weight_nonnegative outcome
  have discarded := matched_payoff_discard_le
    p flagPhysical p_nonnegative flagPhysical_bounded matched
  have mismatch' :
      (∑ outcome, p outcome * if matched outcome then 0 else 1) ≤
        4 * lam := by
    simpa [p, weight] using mismatch
  have physical_transfer :
      1 - epsilon / 2 - 5 * lam -
          (bad + 4 * Real.sqrt deviation + 2 * Real.sqrt clipping) ≤
        ∑ outcome, p outcome *
          if matched outcome then flagPhysical outcome else 0 := by
    rw [← pushforward] at fair_verifier
    change
      (∑ h : ExactLocallySampleableTuple X Y A B D,
        exactLocallySampleableLaw G n S D h *
          exactSourceConditionalWinningProbability G n S D h) -
          bad - 4 * Real.sqrt deviation - 2 * Real.sqrt clipping ≤
        ∑ outcome, q outcome * flagPhysical outcome at fair_verifier
    linarith
  let stop :
      ExactSourceSharedFlag X Y A B D denominator × (X × Y) → ℝ :=
    fun outcome =>
      ∑ j : Fin L,
        quadraticExpectation
          (Matrix.toEuclideanCLM
            (n := ι j.succ × ι j.succ) (𝕜 := ℂ)
            (actualStoppingBranchWinningEffect
              G (PA outcome.1) (PB outcome.1)
              j.succ j.succ outcome.2.1 outcome.2.2))
          (actualStoppingBranchVector
            (actualStoppingQuestionLocalAction
              (U outcome.1 outcome.2.1)
              (V outcome.1 outcome.2.2) (z outcome.1))
            j.succ j.succ)
  have stop_nonnegative (outcome :
      ExactSourceSharedFlag X Y A B D denominator × (X × Y)) :
      0 ≤ stop outcome := by
    unfold stop
    apply Finset.sum_nonneg
    intro j _
    exact actualStoppingBranchBorn_nonneg
      G (PA outcome.1) (PB outcome.1)
      (actualStoppingQuestionLocalAction
        (U outcome.1 outcome.2.1)
        (V outcome.1 outcome.2.2) (z outcome.1))
      j.succ j.succ outcome.2.1 outcome.2.2
  have matched_stop :
      (∑ outcome, p outcome *
        if matched outcome then flagPhysical outcome else 0) ≤
      ∑ outcome, p outcome * stop outcome := by
    apply Finset.sum_le_sum
    intro outcome _
    apply mul_le_mul_of_nonneg_left _ (p_nonnegative outcome)
    by_cases matching : matched outcome = true
    · simp only [matching, ite_true]
      rcases outcome with ⟨flag, x, y⟩
      exact matched_physical_branch flag x y matching
    · have false_match : matched outcome = false :=
        Bool.eq_false_of_not_eq_true matching
      simp only [false_match, Bool.false_eq]
      exact stop_nonnegative outcome
  have physical_stopping :=
    actualStoppingQuestionLocalFlaggedWinningProbability_ge_matched
      G weight weight_nonnegative weight_normalized
      PA PB U V z z_normalized
  have reindex :
      (∑ outcome, p outcome * stop outcome) =
        ∑ flag, weight flag *
          (∑ x : X, ∑ y : Y, G.questionWeight x y *
            ∑ j : Fin L,
              quadraticExpectation
                (Matrix.toEuclideanCLM
                  (n := ι j.succ × ι j.succ) (𝕜 := ℂ)
                  (actualStoppingBranchWinningEffect
                    G (PA flag) (PB flag) j.succ j.succ x y))
                (actualStoppingBranchVector
                  (actualStoppingQuestionLocalAction
                    (U flag x) (V flag y) (z flag))
                  j.succ j.succ)) := by
    simp only [p, flaggedQuestionWeight, stop,
      Fintype.sum_prod_type]
    simp_rw [Finset.mul_sum]
    apply Finset.sum_congr rfl
    intro flag _
    apply Finset.sum_congr rfl
    intro x _
    apply Finset.sum_congr rfl
    intro y _
    ring_nf
  change
    1 - epsilon / 2 - 5 * lam -
        (bad + 4 * Real.sqrt deviation + 2 * Real.sqrt clipping) ≤
      (pureFlaggedStrategy G weight weight_nonnegative weight_normalized
        z z_normalized
        (fun flag x => unitaryConjugatePOVM
          (U flag x)
          (dependentBlockPOVM
            (fun r => PA flag r x)))
        (fun flag y => unitaryConjugatePOVM
          (V flag y)
          (dependentBlockPOVM
            (fun r => PB flag r y)))).winProbability
  rw [reindex] at matched_stop
  exact physical_transfer.trans (matched_stop.trans physical_stopping)
