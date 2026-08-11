import Definitions.Def_quantum_parallel_repetition_game
import Definitions.Def_qpr_core_23
import Theorems.Thm_QuantumParallelRepetition_dSVUniformDensityThresholdSharedState_norm
import Theorems.Thm_QuantumParallelRepetition_dSVDensityRationalHeterogeneousPhysicalStopped_mass_partition
import Theorems.Thm_QuantumParallelRepetition_dSVDensityRationalHeterogeneousActualPhysicalFlagBornState_allFlags
import Theorems.Thm_QuantumParallelRepetition_exists_proofDSVDensityRationalHeterogeneousStoppedCommonStopGaugeErrorBound
import Mathlib.Algebra.Algebra.Basic
import Mathlib.Algebra.Algebra.Defs
import Mathlib.Algebra.Algebra.Equiv
import Mathlib.Algebra.Algebra.Hom
import Mathlib.Algebra.BigOperators.Fin
import Mathlib.Algebra.BigOperators.Group.Finset.Basic
import Mathlib.Algebra.BigOperators.Group.Finset.Defs
import Mathlib.Algebra.BigOperators.Group.Finset.Piecewise
import Mathlib.Algebra.BigOperators.Group.Finset.Sigma
import Mathlib.Algebra.BigOperators.Ring.Finset
import Mathlib.Algebra.Field.Defs
import Mathlib.Algebra.Group.Action.Defs
import Mathlib.Algebra.Group.Action.Pi
import Mathlib.Algebra.Group.Basic
import Mathlib.Algebra.Group.Defs
import Mathlib.Algebra.Group.Hom.Defs
import Mathlib.Algebra.Group.Nat.Defs
import Mathlib.Algebra.Group.Pi.Basic
import Mathlib.Algebra.Group.Submonoid.Defs
import Mathlib.Algebra.GroupWithZero.Action.Defs
import Mathlib.Algebra.GroupWithZero.Action.Pi
import Mathlib.Algebra.GroupWithZero.Basic
import Mathlib.Algebra.GroupWithZero.Defs
import Mathlib.Algebra.GroupWithZero.Hom
import Mathlib.Algebra.GroupWithZero.NeZero
import Mathlib.Algebra.Module.Defs
import Mathlib.Algebra.Module.Pi
import Mathlib.Algebra.NeZero
import Mathlib.Algebra.Notation.Defs
import Mathlib.Algebra.Notation.Pi.Defs
import Mathlib.Algebra.Order.Floor.Defs
import Mathlib.Algebra.Order.Group.Unbundled.Abs
import Mathlib.Algebra.Order.GroupWithZero.Unbundled.Basic
import Mathlib.Algebra.Order.Monoid.Defs
import Mathlib.Algebra.Order.Monoid.Unbundled.Basic
import Mathlib.Algebra.Order.Monoid.Unbundled.Defs
import Mathlib.Algebra.Order.Ring.Defs
import Mathlib.Algebra.Order.Ring.Unbundled.Basic
import Mathlib.Algebra.Order.Star.Basic
import Mathlib.Algebra.Order.SuccPred
import Mathlib.Algebra.Ring.Defs
import Mathlib.Algebra.Ring.Hom.Defs
import Mathlib.Algebra.Ring.Nat
import Mathlib.Algebra.Star.Basic
import Mathlib.Algebra.Star.StarAlgHom
import Mathlib.AlgebraicTopology.SimplexCategory.Basic
import Mathlib.AlgebraicTopology.SimplexCategory.Defs
import Mathlib.Analysis.CStarAlgebra.Classes
import Mathlib.Analysis.CStarAlgebra.Matrix
import Mathlib.Analysis.CStarAlgebra.Module.Constructions
import Mathlib.Analysis.CStarAlgebra.Module.Defs
import Mathlib.Analysis.Complex.Basic
import Mathlib.Analysis.Complex.Exponential
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
import Mathlib.Analysis.Normed.MulAction
import Mathlib.Analysis.Normed.Ring.Basic
import Mathlib.Analysis.RCLike.Basic
import Mathlib.Data.Complex.Basic
import Mathlib.Data.ENNReal.Basic
import Mathlib.Data.Fin.Basic
import Mathlib.Data.Finset.Defs
import Mathlib.Data.Finset.Range
import Mathlib.Data.Fintype.Basic
import Mathlib.Data.Fintype.BigOperators
import Mathlib.Data.Fintype.Defs
import Mathlib.Data.Fintype.Pi
import Mathlib.Data.Fintype.Prod
import Mathlib.Data.Fintype.Sigma
import Mathlib.Data.FunLike.Basic
import Mathlib.Data.Int.Cast.Defs
import Mathlib.Data.Matrix.Basic
import Mathlib.Data.Matrix.Block
import Mathlib.Data.Matrix.Diagonal
import Mathlib.Data.Matrix.Mul
import Mathlib.Data.Nat.Basic
import Mathlib.Data.Nat.Cast.Defs
import Mathlib.Data.Nat.Init
import Mathlib.Data.Nat.SuccPred
import Mathlib.Data.Real.Archimedean
import Mathlib.Data.Real.Basic
import Mathlib.Data.Real.Star
import Mathlib.Data.Real.StarOrdered
import Mathlib.Data.SetLike.Basic
import Mathlib.Data.Sigma.Basic
import Mathlib.LinearAlgebra.Matrix.ConjTranspose
import Mathlib.LinearAlgebra.Matrix.Defs
import Mathlib.LinearAlgebra.Matrix.Kronecker
import Mathlib.LinearAlgebra.UnitaryGroup
import Mathlib.Logic.Basic
import Mathlib.MeasureTheory.Measure.MeasureSpace
import Mathlib.Order.Basic
import Mathlib.Order.Defs.LinearOrder
import Mathlib.Order.Defs.PartialOrder
import Mathlib.Order.Lattice
import Mathlib.Order.Nat
import Mathlib.Tactic.Linarith.Lemmas
import Mathlib.Tactic.NormNum.Basic
import Mathlib.Tactic.NormNum.Ineq
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

open WithLp
open scoped BigOperators Kronecker ComplexOrder MatrixOrder

theorem finiteTensorVector_norm_sq
    {ι d : Type*} [Fintype ι] [DecidableEq ι] [Fintype d]
    (v : ι → EuclideanSpace ℂ d) :
    ‖finiteTensorVector v‖ ^ 2 =
      ∏ i : ι, ‖v i‖ ^ 2 := by
  classical
  rw [EuclideanSpace.norm_sq_eq]
  change
    (∑ q : ι → d, ‖∏ i : ι, v i (q i)‖ ^ 2) =
      ∏ i : ι, ‖v i‖ ^ 2
  calc
    (∑ q : ι → d, ‖∏ i : ι, v i (q i)‖ ^ 2) =
        ∑ q : ι → d, ∏ i : ι, ‖v i (q i)‖ ^ 2 := by
          apply Finset.sum_congr rfl
          intro q _
          rw [norm_prod, ← Finset.prod_pow]
    _ = ∏ i : ι, ∑ a : d, ‖v i a‖ ^ 2 :=
      (Fintype.prod_sum
        (fun i : ι => fun a : d => ‖v i a‖ ^ 2)).symm
    _ = ∏ i : ι, ‖v i‖ ^ 2 := by
      apply Finset.prod_congr rfl
      intro i _
      exact (EuclideanSpace.norm_sq_eq (v i)).symm

theorem sharedThresholdResourceRaw_ne_zero
    {κ d : Type*} [Fintype κ] [Fintype d]
    [DecidableEq κ] [DecidableEq d]
    (τ : κ → ℝ) (k : κ) (i : d) (hk : τ k ≠ 0) :
    sharedThresholdResourceRaw (d := d) τ ≠ 0 := by
  intro hzero
  have hentry := congrArg
    (fun z : EuclideanSpace ℂ
        ((Σ _ : κ, d) × (Σ _ : κ, d)) =>
      z (⟨k, i⟩, ⟨k, i⟩)) hzero
  have hcast : (τ k : ℂ) = 0 := by
    simpa [sharedThresholdResourceRaw] using hentry
  exact hk (by exact_mod_cast hcast)

theorem sharedThresholdResource_norm
    {κ d : Type*} [Fintype κ] [Fintype d]
    [DecidableEq κ] [DecidableEq d]
    (τ : κ → ℝ) (k : κ) (i : d) (hk : τ k ≠ 0) :
    ‖sharedThresholdResource (d := d) τ‖ = 1 := by
  have hnorm : ‖sharedThresholdResourceRaw (d := d) τ‖ ≠ 0 :=
    norm_ne_zero_iff.mpr
      (sharedThresholdResourceRaw_ne_zero τ k i hk)
  rw [sharedThresholdResource, norm_smul, Real.norm_eq_abs,
    abs_of_nonneg (inv_nonneg.mpr (norm_nonneg _)),
    inv_mul_cancel₀ hnorm]

end

open scoped ComplexOrder Matrix BigOperators InnerProductSpace
open Complex Matrix Finset

noncomputable section

open WithLp
open scoped BigOperators Kronecker ComplexOrder MatrixOrder

theorem dSVUniformDensityThresholdWholeHistorySharedState_norm
    {N d : ℕ} (grid : 0 < N) (dimension : 0 < d)
    (L : ℕ) :
    ‖dSVUniformDensityThresholdWholeHistorySharedState
      N d L‖ = 1 := by
  let k : Fin (L + 1) := ⟨0, by omega⟩
  let i : Fin (L + 1) →
      DSVUniformDensityThresholdLocalIndex N d :=
    fun _ => ⟨⟨0, grid⟩, ⟨0, dimension⟩⟩
  apply sharedThresholdResource_norm
    (fun flag : Fin (L + 1) =>
      if flag.val = 0 then (1 : ℝ) else 0) k i
  simp [k]

end

noncomputable section

open WithLp
open scoped BigOperators ComplexOrder Kronecker MatrixOrder
  Matrix.Norms.L2Operator InnerProductSpace

theorem rectangular_matrix_mulVec_norm_sq
    {d e : Type*} [Fintype d] [Fintype e] [DecidableEq d]
    (K : Matrix e d ℂ) (z : EuclideanSpace ℂ d) :
    ‖toLp 2 (K.mulVec (ofLp z))‖ ^ 2 =
      quadraticExpectation
        (Matrix.toEuclideanCLM (n := d) (𝕜 := ℂ)
          (K.conjTranspose * K)) z := by
  calc
    ‖toLp 2 (K.mulVec (ofLp z))‖ ^ 2 =
        (⟪toLp 2 (K.mulVec (ofLp z)),
          toLp 2 (K.mulVec (ofLp z))⟫_ℂ).re :=
      norm_sq_eq_re_inner (𝕜 := ℂ)
        (toLp 2 (K.mulVec (ofLp z)))
    _ = (star (K.mulVec (ofLp z)) ⬝ᵥ
          K.mulVec (ofLp z)).re := by
      rw [EuclideanSpace.inner_eq_star_dotProduct]
      change
        (K.mulVec (ofLp z) ⬝ᵥ star (K.mulVec (ofLp z))).re = _
      rw [dotProduct_comm]
    _ = (star (ofLp z) ⬝ᵥ
          (K.conjTranspose * K).mulVec (ofLp z)).re := by
      rw [Matrix.star_mulVec, ← Matrix.dotProduct_mulVec,
        Matrix.mulVec_mulVec]
    _ = quadraticExpectation
          (Matrix.toEuclideanCLM (n := d) (𝕜 := ℂ)
            (K.conjTranspose * K)) z := by
      unfold quadraticExpectation
      rw [EuclideanSpace.inner_eq_star_dotProduct]
      change
        (star (ofLp z) ⬝ᵥ
            (K.conjTranspose * K).mulVec (ofLp z)).re =
          ((K.conjTranspose * K).mulVec (ofLp z) ⬝ᵥ
            star (ofLp z)).re
      rw [dotProduct_comm]

end

noncomputable section

open WithLp
open scoped BigOperators Kronecker ComplexOrder MatrixOrder InnerProductSpace

theorem dSVUniformDensityMixedProtocolLocalAction_norm
    {ι : Type*} [Fintype ι] [DecidableEq ι]
    (U V : Matrix.unitaryGroup ι ℂ)
    (z : EuclideanSpace ℂ (ι × ι)) :
    ‖toLp 2
        (((U : Matrix ι ι ℂ) ⊗ₖ
          (V : Matrix ι ι ℂ)).mulVec (ofLp z))‖ = ‖z‖ := by
  classical
  let M : Matrix (ι × ι) (ι × ι) ℂ :=
    (U : Matrix ι ι ℂ) ⊗ₖ (V : Matrix ι ι ℂ)
  have unitary : M ∈ Matrix.unitaryGroup (ι × ι) ℂ :=
    Matrix.kronecker_mem_unitary U.property V.property
  have gram : M.conjTranspose * M = 1 := by
    simpa [Matrix.star_eq_conjTranspose] using
      (Matrix.mem_unitaryGroup_iff'.mp unitary)
  have squared :
      ‖toLp 2 (M.mulVec (ofLp z))‖ ^ 2 = ‖z‖ ^ 2 := by
    rw [rectangular_matrix_mulVec_norm_sq, gram]
    simp [quadraticExpectation, ← Complex.ofReal_pow]
  change ‖toLp 2 (M.mulVec (ofLp z))‖ = ‖z‖
  nlinarith [norm_nonneg (toLp 2 (M.mulVec (ofLp z))),
    norm_nonneg z]

end

noncomputable section

open WithLp
open scoped BigOperators Kronecker ComplexOrder MatrixOrder

attribute [local instance] Classical.propDecidable

theorem dSVUniformDensityPhysicalAsync_doubleProductSum
    {ι β γ : Type*} [Fintype ι] [DecidableEq ι]
    [Fintype β] [DecidableEq β] [Fintype γ] [DecidableEq γ]
    (f : ι → β → γ → ℝ) :
    (∑ x : ι → β, ∑ y : ι → γ,
      ∏ i : ι, f i (x i) (y i)) =
      ∏ i : ι, ∑ a : β, ∑ b : γ, f i a b := by
  classical
  calc
    (∑ x : ι → β, ∑ y : ι → γ,
      ∏ i : ι, f i (x i) (y i)) =
        ∑ x : ι → β,
          ∏ i : ι, ∑ b : γ, f i (x i) b := by
      apply Finset.sum_congr rfl
      intro x _
      exact (Fintype.prod_sum
        (fun i : ι => fun b : γ => f i (x i) b)).symm
    _ = ∏ i : ι, ∑ a : β, ∑ b : γ, f i a b :=
      (Fintype.prod_sum
        (fun i : ι => fun a : β => ∑ b : γ, f i a b)).symm

end

noncomputable section

open WithLp
open scoped BigOperators Kronecker ComplexOrder MatrixOrder

theorem dSVDensityRationalCompleteProjectiveThresholdEffect_false
    {d : ℕ} (w : ℝ) (N : ℕ)
    (ξ : BipartiteUnitVector d) (k : Fin N) :
    (dSVDensityRationalLeftProjectiveThresholdPOVM
      w N k ξ).operator false =
      1 - dSVDensityRationalCompleteProjectiveThresholdProjector
        w N ξ k := by
  have complete :=
    (dSVDensityRationalLeftProjectiveThresholdPOVM
      w N k ξ).complete
  rw [Fintype.sum_bool, add_comm] at complete
  exact eq_sub_of_add_eq complete

theorem dSVDensityRationalCompleteProjectiveBinaryPOVM_effect
    {d : ℕ} (w : ℝ) (N : ℕ)
    (ξ : BipartiteUnitVector d) (a : Bool) :
    (dSVDensityRationalCompleteProjectiveBinaryPOVM
      w N ξ).operator a =
      Matrix.blockDiagonal' (fun k : Fin N =>
        (dSVDensityRationalLeftProjectiveThresholdPOVM
          w N k ξ).operator a) := by
  cases a
  · change
      Matrix.blockDiagonal' (fun k : Fin N =>
        1 - dSVDensityRationalCompleteProjectiveThresholdProjector
          w N ξ k) = _
    congr 1
    funext k
    exact
      (dSVDensityRationalCompleteProjectiveThresholdEffect_false
        w N ξ k).symm
  · rfl

theorem dSVDensityRationalCompleteProjectiveOutcome_eq_block_action
    {d : ℕ} (w : ℝ) (N : ℕ)
    (ξ ζ : BipartiteUnitVector d) (a b : Bool) :
    dSVDensityRationalCompleteProjectiveOutcome
        w N ξ ζ a b =
      toLp 2
        ((Matrix.blockDiagonal'
            (fun k : Fin N =>
              (dSVDensityRationalLeftProjectiveThresholdPOVM
                w N k ξ).operator a) ⊗ₖ
          (Matrix.blockDiagonal'
            (fun k : Fin N =>
              (dSVDensityRationalLeftProjectiveThresholdPOVM
                w N k ζ).operator b)).transpose).mulVec
          (ofLp
            (dSVUniformDensityThresholdSharedState N d))) := by
  unfold dSVDensityRationalCompleteProjectiveOutcome
    coherentBinaryJointOutcome
  change
    toLp 2
      (((dSVDensityRationalCompleteProjectiveBinaryPOVM
            w N ξ).operator a ⊗ₖ
         ((dSVDensityRationalCompleteProjectiveBinaryPOVM
            w N ζ).operator b).transpose).mulVec
        (ofLp (dSVUniformDensityThresholdSharedState N d))) = _
  rw [dSVDensityRationalCompleteProjectiveBinaryPOVM_effect,
    dSVDensityRationalCompleteProjectiveBinaryPOVM_effect]

end

noncomputable section

open WithLp
open scoped BigOperators Kronecker ComplexOrder MatrixOrder

theorem dSVDensityRationalCompleteStoppedOptionalOutcome_some_some
    {d : ℕ} (w : ℝ) (N : ℕ)
    (ξ ζ : BipartiteUnitVector d) (alice bob : Bool) :
    dSVDensityRationalCompleteStoppedOptionalOutcome
        w N ξ ζ (some alice) (some bob) =
      dSVDensityRationalCompleteProjectiveOutcome
        w N ξ ζ alice bob := by
  rw [dSVDensityRationalCompleteProjectiveOutcome_eq_block_action]
  simp [dSVDensityRationalCompleteStoppedOptionalOutcome,
    dSVDensityRationalCompleteStoppedOptionalLocalEffect,
    dSVDensityRationalCompleteProjectiveBinaryPOVM_effect]

theorem dSVDensityRationalCompleteStoppedOptionalOutcome_none_none
    {d : ℕ} (w : ℝ) (N : ℕ)
    (ξ ζ : BipartiteUnitVector d) :
    dSVDensityRationalCompleteStoppedOptionalOutcome
        w N ξ ζ none none =
      dSVUniformDensityThresholdSharedState N d := by
  simp [dSVDensityRationalCompleteStoppedOptionalOutcome,
    dSVDensityRationalCompleteStoppedOptionalLocalEffect]

theorem dSVDensityRationalCompleteStoppedOptionalLocalSchedule_zero
    (L : ℕ) (copy : Fin (L + 1)) :
    dSVDensityRationalCompleteStoppedOptionalLocalSchedule
      L 0 copy =
      if copy.val < L then some false else none := by
  simp [dSVDensityRationalCompleteStoppedOptionalLocalSchedule]

theorem dSVDensityRationalCompleteStoppedOptionalLocalSchedule_hit
    {L : ℕ} (j : Fin L) :
    dSVDensityRationalCompleteStoppedOptionalLocalSchedule
      L j.succ j.castSucc = some true := by
  simp [dSVDensityRationalCompleteStoppedOptionalLocalSchedule,
    j.isLt]

end

noncomputable section

open WithLp
open scoped BigOperators ComplexOrder Kronecker MatrixOrder

attribute [local instance] Classical.propDecidable

theorem dSVDensityRationalHeterogeneousActualPhysicalState_norm
    {S N d L : ℕ} (grid : 0 < N) (dimension : 0 < d)
    (width : Fin S → ℝ) (schedule : Fin L → Fin S)
    (ξ ζ : BipartiteUnitVector d) :
    ‖dSVDensityRationalHeterogeneousActualPhysicalState
      N width schedule ξ ζ‖ = 1 := by
  unfold dSVDensityRationalHeterogeneousActualPhysicalState
  rw [dSVUniformDensityMixedProtocolLocalAction_norm]
  exact dSVUniformDensityThresholdWholeHistorySharedState_norm
    grid dimension L

end

noncomputable section

open WithLp
open scoped BigOperators Kronecker ComplexOrder MatrixOrder

theorem dSVDensityRationalCompleteStoppedOptionalLocalSchedule_before
    {L : ℕ} (j : Fin L) (i : Fin (L + 1))
    (earlier : i.val < j.val) :
    dSVDensityRationalCompleteStoppedOptionalLocalSchedule
      L j.succ i = some false := by
  have attempted : i.val < L := lt_trans earlier j.isLt
  simp [dSVDensityRationalCompleteStoppedOptionalLocalSchedule,
    attempted, Fin.succ_ne_zero, earlier]

theorem dSVDensityRationalCompleteStoppedOptionalLocalSchedule_after
    {L : ℕ} (j : Fin L) (i : Fin (L + 1))
    (later : j.val < i.val) :
    dSVDensityRationalCompleteStoppedOptionalLocalSchedule
      L j.succ i = none := by
  have not_before : ¬ i.val < j.val := by omega
  have not_equal : i.val ≠ j.val := by omega
  simp [dSVDensityRationalCompleteStoppedOptionalLocalSchedule,
    Fin.succ_ne_zero, not_before, not_equal]

end

noncomputable section

open WithLp
open scoped BigOperators ComplexOrder Kronecker MatrixOrder

theorem dSVDensityRationalPureMatchedFlagIndicator_sum
    {L : ℕ} (a b : Fin (L + 1)) :
    (∑ flag : Fin (L + 1),
      if a = flag ∧ b = flag then (1 : ℝ) else 0) =
      if a = b then 1 else 0 := by
  classical
  by_cases same : a = b
  · subst b
    simp
  · have absent (flag : Fin (L + 1)) :
        ¬ (a = flag ∧ b = flag) := by
      rintro ⟨first, second⟩
      exact same (first.trans second.symm)
    simp [same, absent]

theorem dSVDensityRationalPureMatchedFlagBorn_sum_eq
    {A C : Type*} [Fintype A] [Fintype C]
    {L : ℕ} (alice : A → Fin (L + 1))
    (bob : C → Fin (L + 1))
    (z : EuclideanSpace ℂ (A × C)) :
    (∑ flag : Fin (L + 1),
      dSVDensityRationalPureBaseExactFlagBornMass
        alice bob z flag flag) =
      ∑ a : A, ∑ c : C,
        ‖z (a, c)‖ ^ 2 *
          if alice a = bob c then (1 : ℝ) else 0 := by
  classical
  unfold dSVDensityRationalPureBaseExactFlagBornMass
  calc
    (∑ flag : Fin (L + 1),
      ∑ a : A, ∑ c : C,
        ‖z (a, c)‖ ^ 2 *
          if alice a = flag ∧ bob c = flag then (1 : ℝ) else 0) =
      ∑ a : A, ∑ c : C, ∑ flag : Fin (L + 1),
        ‖z (a, c)‖ ^ 2 *
          if alice a = flag ∧ bob c = flag then (1 : ℝ) else 0 := by
      rw [Finset.sum_comm]
      apply Finset.sum_congr rfl
      intro a _
      rw [Finset.sum_comm]
    _ = ∑ a : A, ∑ c : C,
      ‖z (a, c)‖ ^ 2 *
        if alice a = bob c then (1 : ℝ) else 0 := by
      apply Finset.sum_congr rfl
      intro a _
      apply Finset.sum_congr rfl
      intro c _
      rw [← Finset.mul_sum,
        dSVDensityRationalPureMatchedFlagIndicator_sum]

theorem dSVDensityRationalPureFlagBorn_partition
    {A C : Type*} [Fintype A] [Fintype C]
    {L : ℕ} (alice : A → Fin (L + 1))
    (bob : C → Fin (L + 1))
    (z : EuclideanSpace ℂ (A × C)) :
    dSVDensityRationalPublicMultiscaleFirstHitPhysicalFlagMismatchMass
        alice bob z +
      (∑ flag : Fin (L + 1),
        dSVDensityRationalPureBaseExactFlagBornMass
          alice bob z flag flag) =
      ‖z‖ ^ 2 := by
  classical
  rw [dSVDensityRationalPureMatchedFlagBorn_sum_eq]
  unfold
    dSVDensityRationalPublicMultiscaleFirstHitPhysicalFlagMismatchMass
  rw [EuclideanSpace.norm_sq_eq, Fintype.sum_prod_type]
  rw [← Finset.sum_add_distrib]
  apply Finset.sum_congr rfl
  intro a _
  rw [← Finset.sum_add_distrib]
  apply Finset.sum_congr rfl
  intro c _
  split_ifs <;> ring

theorem dSVDensityRationalPureMatchedFlagBorn_zero_succ
    {A C : Type*} [Fintype A] [Fintype C]
    {L : ℕ} (alice : A → Fin (L + 1))
    (bob : C → Fin (L + 1))
    (z : EuclideanSpace ℂ (A × C)) :
    (∑ flag : Fin (L + 1),
      dSVDensityRationalPureBaseExactFlagBornMass
        alice bob z flag flag) =
      dSVDensityRationalPureBaseExactFlagBornMass
          alice bob z 0 0 +
        ∑ j : Fin L,
          dSVDensityRationalPureBaseExactFlagBornMass
            alice bob z j.succ j.succ := by
  rw [Fin.sum_univ_succ]

theorem dSVDensityRationalPureFlagBorn_partition_zero_succ
    {A C : Type*} [Fintype A] [Fintype C]
    {L : ℕ} (alice : A → Fin (L + 1))
    (bob : C → Fin (L + 1))
    (z : EuclideanSpace ℂ (A × C)) :
    dSVDensityRationalPublicMultiscaleFirstHitPhysicalFlagMismatchMass
        alice bob z +
      dSVDensityRationalPureBaseExactFlagBornMass
          alice bob z 0 0 +
      (∑ j : Fin L,
        dSVDensityRationalPureBaseExactFlagBornMass
          alice bob z j.succ j.succ) =
      ‖z‖ ^ 2 := by
  have actual := dSVDensityRationalPureFlagBorn_partition
    alice bob z
  rw [dSVDensityRationalPureMatchedFlagBorn_zero_succ
    alice bob z] at actual
  linarith

theorem dSVDensityRationalPureFlagBorn_normalized_partition_zero_succ
    {A C : Type*} [Fintype A] [Fintype C]
    {L : ℕ} (alice : A → Fin (L + 1))
    (bob : C → Fin (L + 1))
    (z : EuclideanSpace ℂ (A × C)) (normalized : ‖z‖ = 1) :
    dSVDensityRationalPublicMultiscaleFirstHitPhysicalFlagMismatchMass
        alice bob z +
      dSVDensityRationalPureBaseExactFlagBornMass
          alice bob z 0 0 +
      (∑ j : Fin L,
        dSVDensityRationalPureBaseExactFlagBornMass
          alice bob z j.succ j.succ) = 1 := by
  simpa [normalized] using
    dSVDensityRationalPureFlagBorn_partition_zero_succ
      alice bob z

end

noncomputable section

open WithLp
open scoped BigOperators ComplexOrder Kronecker MatrixOrder

attribute [local instance] Classical.propDecidable

theorem
    dSVDensityRationalHeterogeneousActualPhysicalFlagMass_eq_optionalProduct
    {S d N L : ℕ} (width : Fin S → ℝ) (schedule : Fin L → Fin S)
    (ξ ζ : BipartiteUnitVector d)
    (flagAlice flagBob : Fin (L + 1)) :
    dSVDensityRationalHeterogeneousActualPhysicalFlagMass
        N width schedule ξ ζ flagAlice flagBob =
      ∏ i : Fin (L + 1),
        ‖dSVDensityRationalCompleteStoppedOptionalOutcome
          (dSVDensityRationalHeterogeneousActualPhysicalFlagBornCopyWidth
            width schedule i) N ξ ζ
          (dSVDensityRationalCompleteStoppedOptionalLocalSchedule
            L flagAlice i)
          (dSVDensityRationalCompleteStoppedOptionalLocalSchedule
            L flagBob i)‖ ^ 2 := by
  classical
  unfold dSVDensityRationalHeterogeneousActualPhysicalFlagMass
  simp_rw [dSVDensityRationalHeterogeneousActualPhysicalFlagBornState_allFlags,
    norm_prod, ← Finset.prod_pow]
  calc
    _ = ∏ i : Fin (L + 1),
          ∑ a : DSVUniformDensityThresholdLocalIndex N d,
            ∑ b : DSVUniformDensityThresholdLocalIndex N d,
              ‖dSVDensityRationalCompleteStoppedOptionalOutcome
                (dSVDensityRationalHeterogeneousActualPhysicalFlagBornCopyWidth
                  width schedule i) N ξ ζ
                (dSVDensityRationalCompleteStoppedOptionalLocalSchedule
                  L flagAlice i)
                (dSVDensityRationalCompleteStoppedOptionalLocalSchedule
                  L flagBob i) (a, b)‖ ^ 2 :=
      dSVUniformDensityPhysicalAsync_doubleProductSum
        (fun i a b =>
          ‖dSVDensityRationalCompleteStoppedOptionalOutcome
            (dSVDensityRationalHeterogeneousActualPhysicalFlagBornCopyWidth
              width schedule i) N ξ ζ
            (dSVDensityRationalCompleteStoppedOptionalLocalSchedule
              L flagAlice i)
            (dSVDensityRationalCompleteStoppedOptionalLocalSchedule
              L flagBob i) (a, b)‖ ^ 2)
    _ = _ := by
      apply Finset.prod_congr rfl
      intro i _
      rw [EuclideanSpace.norm_sq_eq, Fintype.sum_prod_type]

theorem
    dSVDensityRationalHeterogeneousActualPhysical_firstHitProduct
    {L : ℕ} (continuation : ℕ → ℝ) (success : ℝ) (j : Fin L) :
    (∏ i : Fin (L + 1),
      if i.val < j.val then continuation i.val
      else if i.val = j.val then success else 1) =
      dSVHeterogeneousRealPrefix continuation j.val * success := by
  classical
  let f : ℕ → ℝ := fun i =>
    if i < j.val then continuation i
    else if i = j.val then success else 1
  have length : L + 1 = (j.val + 1) + (L - j.val) := by
    omega
  calc
    _ = ∏ k ∈ Finset.range (L + 1), f k :=
      Fin.prod_univ_eq_prod_range f (L + 1)
    _ = (∏ k ∈ Finset.range (j.val + 1), f k) *
          (∏ k ∈ Finset.range (L - j.val), f (j.val + 1 + k)) := by
      rw [length, Finset.prod_range_add]
    _ = (∏ k ∈ Finset.range j.val, continuation k) * success := by
      rw [Finset.prod_range_succ]
      have prefixProduct :
          (∏ k ∈ Finset.range j.val, f k) =
            (∏ k ∈ Finset.range j.val, continuation k) := by
        apply Finset.prod_congr rfl
        intro k member
        have earlier : k < j.val := Finset.mem_range.mp member
        simp [f, earlier]
      have selected : f j.val = success := by
        simp [f]
      have tail :
          (∏ k ∈ Finset.range (L - j.val),
            f (j.val + 1 + k)) = 1 := by
        apply Finset.prod_eq_one
        intro k _
        have notEarlier : ¬ j.val + 1 + k < j.val := by omega
        have notEqual : j.val + 1 + k ≠ j.val := by omega
        simp [f, notEarlier, notEqual]
      rw [prefixProduct, selected, tail, mul_one]
    _ = _ := rfl

theorem
    dSVDensityRationalHeterogeneousActualPhysicalMatchedCopyBorn
    {S d N L : ℕ} (grid : 0 < N) (dimension : 0 < d)
    (width : Fin S → ℝ) (schedule : Fin L → Fin S)
    (ξ ζ : BipartiteUnitVector d)
    (j : Fin L) (i : Fin (L + 1)) :
    ‖dSVDensityRationalCompleteStoppedOptionalOutcome
        (dSVDensityRationalHeterogeneousActualPhysicalFlagBornCopyWidth
          width schedule i) N ξ ζ
        (dSVDensityRationalCompleteStoppedOptionalLocalSchedule
          L j.succ i)
        (dSVDensityRationalCompleteStoppedOptionalLocalSchedule
          L j.succ i)‖ ^ 2 =
      if i.val < j.val then
        dSVDensityRationalHeterogeneousPhysicalStageContinue
          N width schedule ξ ζ i.val
      else if i.val = j.val then
        dSVDensityRationalHeterogeneousPhysicalStageSuccess
          N width schedule ξ ζ j.val
      else 1 := by
  classical
  rcases lt_trichotomy i.val j.val with earlier | equal | later
  · rw [dSVDensityRationalCompleteStoppedOptionalLocalSchedule_before
      j i earlier,
      dSVDensityRationalCompleteStoppedOptionalOutcome_some_some]
    have active : i.val < L := lt_trans earlier j.isLt
    simp [dSVDensityRationalHeterogeneousActualPhysicalFlagBornCopyWidth,
      dSVDensityRationalHeterogeneousPhysicalStageContinue,
      dSVDensityRationalHeterogeneousPhysicalStageOutcome,
      active, earlier]
  · have selected : i = j.castSucc := Fin.ext equal
    subst i
    rw [dSVDensityRationalCompleteStoppedOptionalLocalSchedule_hit,
      dSVDensityRationalCompleteStoppedOptionalOutcome_some_some]
    simp [dSVDensityRationalHeterogeneousActualPhysicalFlagBornCopyWidth,
      dSVDensityRationalHeterogeneousPhysicalStageSuccess,
      dSVDensityRationalHeterogeneousPhysicalStageOutcome,
      j.isLt]
  · rw [dSVDensityRationalCompleteStoppedOptionalLocalSchedule_after
      j i later,
      dSVDensityRationalCompleteStoppedOptionalOutcome_none_none,
      dSVUniformDensityThresholdSharedState_norm grid dimension]
    simp [show ¬ i.val < j.val by omega,
      show i.val ≠ j.val by omega]

theorem
    dSVDensityRationalHeterogeneousActualPhysicalFlagMass_succ_succ_eq_stage
    {S d N L : ℕ} (grid : 0 < N) (dimension : 0 < d)
    (width : Fin S → ℝ) (schedule : Fin L → Fin S)
    (ξ ζ : BipartiteUnitVector d) (j : Fin L) :
    dSVDensityRationalHeterogeneousActualPhysicalFlagMass
        N width schedule ξ ζ j.succ j.succ =
      dSVDensityRationalHeterogeneousPhysicalSurvival
          N width schedule ξ ζ j.val *
        dSVDensityRationalHeterogeneousPhysicalStageSuccess
          N width schedule ξ ζ j.val := by
  rw [dSVDensityRationalHeterogeneousActualPhysicalFlagMass_eq_optionalProduct]
  simp_rw [dSVDensityRationalHeterogeneousActualPhysicalMatchedCopyBorn
    grid dimension width schedule ξ ζ j]
  exact dSVDensityRationalHeterogeneousActualPhysical_firstHitProduct
    (dSVDensityRationalHeterogeneousPhysicalStageContinue
      N width schedule ξ ζ)
    (dSVDensityRationalHeterogeneousPhysicalStageSuccess
      N width schedule ξ ζ j.val) j

theorem dSVDensityRationalHeterogeneousActualPhysicalNoHitCopyBorn
    {S d N L : ℕ} (grid : 0 < N) (dimension : 0 < d)
    (width : Fin S → ℝ) (schedule : Fin L → Fin S)
    (ξ ζ : BipartiteUnitVector d) (i : Fin (L + 1)) :
    ‖dSVDensityRationalCompleteStoppedOptionalOutcome
        (dSVDensityRationalHeterogeneousActualPhysicalFlagBornCopyWidth
          width schedule i) N ξ ζ
        (dSVDensityRationalCompleteStoppedOptionalLocalSchedule
          L 0 i)
        (dSVDensityRationalCompleteStoppedOptionalLocalSchedule
          L 0 i)‖ ^ 2 =
      if i.val < L then
        dSVDensityRationalHeterogeneousPhysicalStageContinue
          N width schedule ξ ζ i.val
      else 1 := by
  classical
  rw [dSVDensityRationalCompleteStoppedOptionalLocalSchedule_zero]
  by_cases active : i.val < L
  · rw [if_pos active,
      dSVDensityRationalCompleteStoppedOptionalOutcome_some_some]
    simp [dSVDensityRationalHeterogeneousActualPhysicalFlagBornCopyWidth,
      dSVDensityRationalHeterogeneousPhysicalStageContinue,
      dSVDensityRationalHeterogeneousPhysicalStageOutcome,
      active]
  · rw [if_neg active,
      dSVDensityRationalCompleteStoppedOptionalOutcome_none_none,
      dSVUniformDensityThresholdSharedState_norm grid dimension]
    simp [active]

theorem
    dSVDensityRationalHeterogeneousActualPhysicalFlagMass_zero_zero_eq_terminal
    {S d N L : ℕ} (grid : 0 < N) (dimension : 0 < d)
    (width : Fin S → ℝ) (schedule : Fin L → Fin S)
    (ξ ζ : BipartiteUnitVector d) :
    dSVDensityRationalHeterogeneousActualPhysicalFlagMass
        N width schedule ξ ζ 0 0 =
      dSVDensityRationalHeterogeneousPhysicalTerminalMass
        N width schedule ξ ζ := by
  rw [dSVDensityRationalHeterogeneousActualPhysicalFlagMass_eq_optionalProduct]
  simp_rw [dSVDensityRationalHeterogeneousActualPhysicalNoHitCopyBorn
    grid dimension width schedule ξ ζ]
  unfold dSVDensityRationalHeterogeneousPhysicalTerminalMass
    dSVDensityRationalHeterogeneousPhysicalSurvival
    dSVHeterogeneousRealPrefix
  rw [Fin.prod_univ_castSucc]
  simp only [Fin.val_castSucc, Fin.val_last, Fin.is_lt, ↓reduceIte,
    lt_self_iff_false, mul_one]
  exact Fin.prod_univ_eq_prod_range
    (dSVDensityRationalHeterogeneousPhysicalStageContinue
      N width schedule ξ ζ) L

theorem
    dSVDensityRationalHeterogeneousActualPhysicalBaseFlagBorn_eq_flagMass
    {S d N L : ℕ} (width : Fin S → ℝ) (schedule : Fin L → Fin S)
    (ξ ζ : BipartiteUnitVector d)
    (flagAlice flagBob : Fin (L + 1)) :
    dSVDensityRationalPureBaseExactFlagBornMass
        (fun q : DSVUniformDensityThresholdWholeHistoryLocalIndex
          N d L => q.1)
        (fun q : DSVUniformDensityThresholdWholeHistoryLocalIndex
          N d L => q.1)
        (dSVDensityRationalHeterogeneousActualPhysicalState
          N width schedule ξ ζ)
        flagAlice flagBob =
      dSVDensityRationalHeterogeneousActualPhysicalFlagMass
        N width schedule ξ ζ flagAlice flagBob := by
  classical
  unfold dSVDensityRationalPureBaseExactFlagBornMass
    dSVDensityRationalHeterogeneousActualPhysicalFlagMass
  simp only [Fintype.sum_sigma]
  simp [mul_ite, ite_and]

theorem
    dSVDensityRationalHeterogeneousActualPhysicalMatchedFlagMass_eq_stoppedSuccess
    {S d N L : ℕ} (grid : 0 < N) (dimension : 0 < d)
    (width : Fin S → ℝ) (schedule : Fin L → Fin S)
    (ξ ζ : BipartiteUnitVector d) :
    (∑ j : Fin L,
      dSVDensityRationalHeterogeneousActualPhysicalFlagMass
        N width schedule ξ ζ j.succ j.succ) =
      dSVDensityRationalHeterogeneousPhysicalStoppedSuccessMass
        N width schedule ξ ζ := by
  simp_rw [dSVDensityRationalHeterogeneousActualPhysicalFlagMass_succ_succ_eq_stage
    grid dimension width schedule ξ ζ]
  unfold dSVDensityRationalHeterogeneousPhysicalStoppedSuccessMass
  exact Fin.sum_univ_eq_sum_range
    (fun k : ℕ =>
      dSVDensityRationalHeterogeneousPhysicalSurvival
          N width schedule ξ ζ k *
        dSVDensityRationalHeterogeneousPhysicalStageSuccess
          N width schedule ξ ζ k) L

theorem
    dSVDensityRationalHeterogeneousActualPhysicalFlagBorn_mass_partition
    {S d N L : ℕ} (grid : 0 < N) (dimension : 0 < d)
    (width : Fin S → ℝ) (schedule : Fin L → Fin S)
    (ξ ζ : BipartiteUnitVector d) :
    dSVDensityRationalHeterogeneousActualAsynchronousFlagMass
        N width schedule ξ ζ +
      dSVDensityRationalHeterogeneousActualPhysicalFlagMass
          N width schedule ξ ζ 0 0 +
      (∑ j : Fin L,
        dSVDensityRationalHeterogeneousActualPhysicalFlagMass
          N width schedule ξ ζ j.succ j.succ) = 1 := by
  have actual :=
    dSVDensityRationalPureFlagBorn_normalized_partition_zero_succ
      (fun q : DSVUniformDensityThresholdWholeHistoryLocalIndex
        N d L => q.1)
      (fun q : DSVUniformDensityThresholdWholeHistoryLocalIndex
        N d L => q.1)
      (dSVDensityRationalHeterogeneousActualPhysicalState
        N width schedule ξ ζ)
      (dSVDensityRationalHeterogeneousActualPhysicalState_norm
        grid dimension width schedule ξ ζ)
  change
    dSVDensityRationalHeterogeneousActualAsynchronousFlagMass
        N width schedule ξ ζ +
      dSVDensityRationalPureBaseExactFlagBornMass
        (fun q : DSVUniformDensityThresholdWholeHistoryLocalIndex
          N d L => q.1)
        (fun q : DSVUniformDensityThresholdWholeHistoryLocalIndex
          N d L => q.1)
        (dSVDensityRationalHeterogeneousActualPhysicalState
          N width schedule ξ ζ) 0 0 +
      (∑ j : Fin L,
        dSVDensityRationalPureBaseExactFlagBornMass
          (fun q : DSVUniformDensityThresholdWholeHistoryLocalIndex
            N d L => q.1)
          (fun q : DSVUniformDensityThresholdWholeHistoryLocalIndex
            N d L => q.1)
          (dSVDensityRationalHeterogeneousActualPhysicalState
            N width schedule ξ ζ) j.succ j.succ) = 1 at actual
  simpa only
    [dSVDensityRationalHeterogeneousActualPhysicalBaseFlagBorn_eq_flagMass]
    using actual

theorem
    dSVDensityRationalHeterogeneousActualAsynchronousFlagMass_eq_stoppedAsynchronousMass
    {S d N L : ℕ} (grid : 0 < N) (dimension : 0 < d)
    (width : Fin S → ℝ) (schedule : Fin L → Fin S)
    (ξ ζ : BipartiteUnitVector d) :
    dSVDensityRationalHeterogeneousActualAsynchronousFlagMass
        N width schedule ξ ζ =
      dSVDensityRationalHeterogeneousPhysicalStoppedAsynchronousMass
        N width schedule ξ ζ := by
  have physical :=
    dSVDensityRationalHeterogeneousActualPhysicalFlagBorn_mass_partition
      grid dimension width schedule ξ ζ
  rw [dSVDensityRationalHeterogeneousActualPhysicalFlagMass_zero_zero_eq_terminal
        grid dimension width schedule ξ ζ,
      dSVDensityRationalHeterogeneousActualPhysicalMatchedFlagMass_eq_stoppedSuccess
        grid dimension width schedule ξ ζ] at physical
  have stages :=
    dSVDensityRationalHeterogeneousPhysicalStopped_mass_partition
      grid dimension width schedule ξ ζ
  linarith

end

noncomputable section

open WithLp
open scoped BigOperators ComplexOrder Kronecker MatrixOrder

theorem
    dSVDensityRationalHeterogeneousStoppedCommonPrefixFailureVector_norm_sq
    {S N d L : ℕ} (width : Fin S → ℝ)
    (schedule : Fin L → Fin S)
    (ξ ζ : BipartiteUnitVector d)
    (j : Fin L) :
    ‖dSVDensityRationalHeterogeneousStoppedCommonPrefixFailureVector
        (N := N) width schedule ξ ζ j‖ ^ 2 =
      dSVDensityRationalHeterogeneousPhysicalSurvival
        N width schedule ξ ζ j.val := by
  rw [dSVDensityRationalHeterogeneousStoppedCommonPrefixFailureVector,
    finiteTensorVector_norm_sq]
  unfold dSVDensityRationalHeterogeneousPhysicalSurvival
    dSVHeterogeneousRealPrefix
  calc
    (∏ i : Fin j.val,
      ‖dSVDensityRationalHeterogeneousStoppedCommonPrefixFailureCopy
        width schedule ξ ζ j i‖ ^ 2) =
        ∏ i : Fin j.val,
          dSVDensityRationalHeterogeneousPhysicalStageContinue
            N width schedule ξ ζ i.val := by
      apply Finset.prod_congr rfl
      intro i _
      simp [dSVDensityRationalHeterogeneousStoppedCommonPrefixFailureCopy,
        dSVDensityRationalHeterogeneousPhysicalStageContinue,
        dSVDensityRationalHeterogeneousPhysicalStageOutcome,
        lt_trans i.isLt j.isLt]
    _ = _ :=
      Fin.prod_univ_eq_prod_range
        (dSVDensityRationalHeterogeneousPhysicalStageContinue
          N width schedule ξ ζ) j.val

theorem
    dSVDensityRationalHeterogeneousStoppedCommonPrefixHazard_eq_gaugeError
    {d N B S L : ℕ} (Q n : ℕ)
    (width : Fin S → ℝ) (schedule : Fin L → Fin S)
    (ξ ζ : BipartiteUnitVector d)
    (A C : Fin B → Option ℕ →
      Matrix.unitaryGroup (Fin (N * n)) ℂ) :
    dSVDensityRationalHeterogeneousStoppedCommonPrefixHazard
        Q n width schedule ξ ζ A C =
      dSVDensityRationalHeterogeneousStoppedCommonStopGaugeError
        Q n width schedule ξ ζ A C := by
  unfold dSVDensityRationalHeterogeneousStoppedCommonPrefixHazard
    dSVDensityRationalHeterogeneousStoppedCommonStopGaugeError
  simp_rw [
    dSVDensityRationalHeterogeneousStoppedCommonPrefixFailureVector_norm_sq]

end

end QuantumParallelRepetition


open QuantumParallelRepetition
open scoped ComplexOrder Matrix BigOperators InnerProductSpace
open Complex Matrix Finset
open WithLp
open scoped BigOperators ComplexOrder Kronecker MatrixOrder

theorem
    solution
    {d N B : ℕ} (grid : 0 < N) (dimension : 0 < d)
    (phases : 0 < B) {Q : ℕ} (fine : 0 < Q)
    (ε : ℝ) (precision : 0 < ε) :
    ∃ n : ℕ, 0 < n ∧
      ∃ A C : Fin B → Option ℕ →
          Matrix.unitaryGroup (Fin (N * n)) ℂ,
        ∀ {S L : ℕ}
          (width : Fin S → ℝ) (schedule : Fin L → Fin S)
          (ξ ζ : BipartiteUnitVector d),
          dSVDensityRationalHeterogeneousStoppedCommonPrefixHazard
              Q n width schedule ξ ζ A C ≤
            (10 + 8 * ((Q : ℝ) / (B : ℝ))) *
                dSVDensityRationalHeterogeneousActualAsynchronousFlagMass
                  N width schedule ξ ζ +
              (4 * ε ^ 2 +
                16 * (Real.exp (((B : ℝ) + 1) / (Q : ℝ)) - 1) +
                8 / (B : ℝ)) := by
  obtain ⟨n, harmonic, A, C, bound⟩ :=
    exists_proofDSVDensityRationalHeterogeneousStoppedCommonStopGaugeErrorBound
      grid dimension phases fine ε precision
  refine ⟨n, harmonic, A, C, ?_⟩
  intro S L width schedule ξ ζ
  rw [dSVDensityRationalHeterogeneousStoppedCommonPrefixHazard_eq_gaugeError,
    dSVDensityRationalHeterogeneousActualAsynchronousFlagMass_eq_stoppedAsynchronousMass
      grid dimension width schedule ξ ζ]
  exact bound width schedule ξ ζ
