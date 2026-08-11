import Definitions.Def_quantum_parallel_repetition_game
import Definitions.Def_qpr_core_25
import Theorems.Thm_QuantumParallelRepetition_dSVSoftBobLeftReducedDensity_posSemidef
import Mathlib.Algebra.Algebra.Basic
import Mathlib.Algebra.Algebra.Defs
import Mathlib.Algebra.BigOperators.Finsupp.Basic
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
import Mathlib.Algebra.Group.Submonoid.Defs
import Mathlib.Algebra.GroupWithZero.Action.Defs
import Mathlib.Algebra.GroupWithZero.Basic
import Mathlib.Algebra.GroupWithZero.Defs
import Mathlib.Algebra.GroupWithZero.NeZero
import Mathlib.Algebra.GroupWithZero.Units.Basic
import Mathlib.Algebra.Module.Defs
import Mathlib.Algebra.Module.Equiv.Defs
import Mathlib.Algebra.Module.LinearMap.Defs
import Mathlib.Algebra.Module.Pi
import Mathlib.Algebra.NeZero
import Mathlib.Algebra.Notation.Defs
import Mathlib.Algebra.Notation.Pi.Basic
import Mathlib.Algebra.Order.Floor.Defs
import Mathlib.Algebra.Order.Floor.Semiring
import Mathlib.Algebra.Order.GroupWithZero.Unbundled.Basic
import Mathlib.Algebra.Order.Monoid.Defs
import Mathlib.Algebra.Order.Monoid.Unbundled.Basic
import Mathlib.Algebra.Order.Monoid.Unbundled.Defs
import Mathlib.Algebra.Order.Ring.Defs
import Mathlib.Algebra.Order.Ring.Unbundled.Basic
import Mathlib.Algebra.Order.Star.Basic
import Mathlib.Algebra.Ring.CompTypeclasses
import Mathlib.Algebra.Ring.Defs
import Mathlib.Algebra.Ring.Hom.Defs
import Mathlib.Algebra.Ring.Nat
import Mathlib.Algebra.Star.Basic
import Mathlib.Algebra.Star.Unitary
import Mathlib.Analysis.CStarAlgebra.Classes
import Mathlib.Analysis.Complex.Basic
import Mathlib.Analysis.Complex.Norm
import Mathlib.Analysis.Complex.Order
import Mathlib.Analysis.InnerProductSpace.Basic
import Mathlib.Analysis.InnerProductSpace.Defs
import Mathlib.Analysis.InnerProductSpace.PiL2
import Mathlib.Analysis.Matrix.Normed
import Mathlib.Analysis.Matrix.Order
import Mathlib.Analysis.Matrix.PosDef
import Mathlib.Analysis.Matrix.Spectrum
import Mathlib.Analysis.Normed.Field.Basic
import Mathlib.Analysis.Normed.Group.Defs
import Mathlib.Analysis.Normed.Lp.PiLp
import Mathlib.Analysis.Normed.Lp.WithLp
import Mathlib.Analysis.Normed.Module.Basic
import Mathlib.Analysis.Normed.Ring.Basic
import Mathlib.Analysis.RCLike.Basic
import Mathlib.Data.Complex.Basic
import Mathlib.Data.ENNReal.Basic
import Mathlib.Data.Finset.Card
import Mathlib.Data.Finset.Defs
import Mathlib.Data.Finset.Filter
import Mathlib.Data.Finsupp.Defs
import Mathlib.Data.Fintype.Basic
import Mathlib.Data.Fintype.BigOperators
import Mathlib.Data.Fintype.Card
import Mathlib.Data.Fintype.Defs
import Mathlib.Data.Fintype.Fin
import Mathlib.Data.Fintype.Prod
import Mathlib.Data.Fintype.Sigma
import Mathlib.Data.FunLike.Basic
import Mathlib.Data.FunLike.Equiv
import Mathlib.Data.Int.Cast.Defs
import Mathlib.Data.Matrix.Basic
import Mathlib.Data.Matrix.Block
import Mathlib.Data.Matrix.Diagonal
import Mathlib.Data.Matrix.Mul
import Mathlib.Data.Nat.Basic
import Mathlib.Data.Nat.Cast.Defs
import Mathlib.Data.Nat.Cast.Order.Basic
import Mathlib.Data.Nat.Init
import Mathlib.Data.Real.Archimedean
import Mathlib.Data.Real.Basic
import Mathlib.Data.Real.Sqrt
import Mathlib.Data.Real.Star
import Mathlib.Data.Real.StarOrdered
import Mathlib.Data.SetLike.Basic
import Mathlib.Data.Sigma.Basic
import Mathlib.GroupTheory.GroupAction.Hom
import Mathlib.LinearAlgebra.Complex.Module
import Mathlib.LinearAlgebra.DFinsupp
import Mathlib.LinearAlgebra.Matrix.ConjTranspose
import Mathlib.LinearAlgebra.Matrix.Defs
import Mathlib.LinearAlgebra.Matrix.Hermitian
import Mathlib.LinearAlgebra.Matrix.Kronecker
import Mathlib.LinearAlgebra.Matrix.PosDef
import Mathlib.LinearAlgebra.Matrix.Vec
import Mathlib.LinearAlgebra.UnitaryGroup
import Mathlib.Logic.Equiv.Defs
import Mathlib.Logic.Equiv.Fin.Basic
import Mathlib.MeasureTheory.Measure.MeasureSpace
import Mathlib.Order.Basic
import Mathlib.Order.Defs.LinearOrder
import Mathlib.Order.Defs.PartialOrder
import Mathlib.Order.Lattice
import Mathlib.Tactic.FieldSimp.Lemmas
import Mathlib.Tactic.Linarith.Lemmas
import Mathlib.Tactic.NormNum.Basic
import Mathlib.Tactic.NormNum.Result
import Mathlib.Tactic.Ring.Basic
import Mathlib.Tactic.Ring.Common
import Mathlib.Topology.Algebra.Module.ContinuousLinearMap.Basic
import Mathlib.Topology.Defs.Filter
import Mathlib.Topology.Instances.Matrix
import Mathlib.Topology.MetricSpace.Pseudo.Defs
import Mathlib.Topology.UniformSpace.Defs

namespace QuantumParallelRepetition

noncomputable section

open WithLp
open scoped BigOperators Kronecker ComplexOrder MatrixOrder

theorem sharedThresholdResourceRaw_eq_vec
    {κ d : Type*} [Fintype κ] [Fintype d]
    [DecidableEq κ] [DecidableEq d]
    (τ : κ → ℝ) :
    sharedThresholdResourceRaw (d := d) τ =
      toLp 2 (Matrix.vec
        (Matrix.diagonal (fun q : Σ _ : κ, d => (τ q.1 : ℂ)))) := by
  ext ⟨⟨k, i⟩, ⟨l, j⟩⟩
  by_cases h : k = l
  · subst l
    by_cases hij : i = j
    · subst j
      simp [sharedThresholdResourceRaw, Matrix.vec]
    · simp [sharedThresholdResourceRaw,
        Matrix.vec, hij, Ne.symm hij]
  · simp [sharedThresholdResourceRaw,
      Matrix.vec, h, Ne.symm h]

theorem sharedThresholdResourceRaw_local_action
    {κ d : Type*} [Fintype κ] [Fintype d]
    [DecidableEq κ] [DecidableEq d]
    (τ : κ → ℝ)
    (A B : Matrix (Σ _ : κ, d) (Σ _ : κ, d) ℂ) :
    toLp 2
      ((A ⊗ₖ B.transpose).mulVec
        (ofLp (sharedThresholdResourceRaw (d := d) τ))) =
      toLp 2
        (Matrix.vec
          (B.transpose *
            Matrix.diagonal
              (fun q : Σ _ : κ, d => (τ q.1 : ℂ)) * A.transpose)) := by
  rw [sharedThresholdResourceRaw_eq_vec]
  apply WithLp.ofLp_injective
  change
    (A ⊗ₖ B.transpose).mulVec
      (Matrix.vec
        (Matrix.diagonal
          (fun q : Σ _ : κ, d => (τ q.1 : ℂ)))) =
      Matrix.vec
        (B.transpose *
          Matrix.diagonal
            (fun q : Σ _ : κ, d => (τ q.1 : ℂ)) * A.transpose)
  exact Matrix.kronecker_mulVec_vec
    B.transpose
    (Matrix.diagonal
      (fun q : Σ _ : κ, d => (τ q.1 : ℂ)))
    A

theorem sharedThresholdDiagonal_eq_block
    {κ d : Type*} [Fintype κ] [Fintype d]
    [DecidableEq κ] [DecidableEq d]
    (τ : κ → ℝ) :
    Matrix.diagonal
        (fun q : Σ _ : κ, d => (τ q.1 : ℂ)) =
      Matrix.blockDiagonal' fun k : κ =>
        (τ k : ℂ) • (1 : Matrix d d ℂ) := by
  classical
  ext ⟨k, i⟩ ⟨l, j⟩
  by_cases h : k = l
  · subst l
    by_cases hij : i = j
    · subst j
      simp [Matrix.blockDiagonal'_apply]
    · simp [Matrix.blockDiagonal'_apply, hij]
  · simp [Matrix.blockDiagonal'_apply, h]

theorem sharedThresholdResourceRaw_block_action
    {κ d : Type*} [Fintype κ] [Fintype d]
    [DecidableEq κ] [DecidableEq d]
    (τ : κ → ℝ) (A B : κ → Matrix d d ℂ) :
    toLp 2
      ((Matrix.blockDiagonal' A ⊗ₖ
          (Matrix.blockDiagonal' B).transpose).mulVec
        (ofLp (sharedThresholdResourceRaw (d := d) τ))) =
      toLp 2
        (Matrix.vec
          ((Matrix.blockDiagonal' fun k : κ =>
              (τ k : ℂ) • (A k * B k)).transpose)) := by
  rw [sharedThresholdResourceRaw_local_action]
  congr 2
  rw [sharedThresholdDiagonal_eq_block]
  simp only [Matrix.blockDiagonal'_transpose]
  rw [← Matrix.blockDiagonal'_mul,
    ← Matrix.blockDiagonal'_mul]
  congr 1
  funext k
  simp [Matrix.transpose_mul]

@[simp] theorem unitaryBasisOverlap_apply
    {d : Type*} [Fintype d] [DecidableEq d]
    (U V : Matrix.unitaryGroup d ℂ) (i j : d) :
    unitaryBasisOverlap U V i j =
      (((U : Matrix d d ℂ).conjTranspose *
        (V : Matrix d d ℂ)) i j) := by
  rfl

end

open scoped ComplexOrder Matrix BigOperators InnerProductSpace
open Complex Matrix Finset

noncomputable section

open scoped BigOperators

theorem dSVRationalSoftPass_mem_unit
    {t x : ℝ} (positive : 0 < t) (nonnegative : 0 ≤ x) :
    0 ≤ dSVRationalSoftPass t x ∧
      dSVRationalSoftPass t x ≤ 1 := by
  unfold dSVRationalSoftPass
  have denominator : 0 < x + t := by linarith
  constructor
  · exact div_nonneg nonnegative denominator.le
  · apply (div_le_iff₀ denominator).mpr
    linarith

end

noncomputable section

open WithLp
open scoped BigOperators Kronecker ComplexOrder MatrixOrder

attribute [local instance] Classical.propDecidable

theorem dSVUniformDensityThresholdGrid_apply
    {N : ℕ} (positive : 0 < N) (k : Fin N) :
    dSVUniformDensityThresholdGrid N k =
      ((k.val : ℝ) + 1) / (N : ℝ) := by
  have nonzero : (N : ℝ) ≠ 0 := by
    exact_mod_cast (Nat.ne_of_gt positive)
  unfold dSVUniformDensityThresholdGrid
    finiteUniformThresholdGrid
  field_simp
  ring

theorem dSVUniformDensityThresholdGrid_count_eq_floor
    {N : ℕ} (positive : 0 < N)
    (density : ℝ) (nonnegative : 0 ≤ density) (bounded : density ≤ 1) :
    (Finset.univ.filter fun k : Fin N =>
      dSVUniformDensityThresholdGrid N k ≤ density).card =
        Nat.floor (density * (N : ℝ)) := by
  classical
  have gridpositive : (0 : ℝ) < N := by exact_mod_cast positive
  have densitypositive : 0 ≤ density * (N : ℝ) :=
    mul_nonneg nonnegative gridpositive.le
  have floor_bound : Nat.floor (density * (N : ℝ)) ≤ N := by
    have product : density * (N : ℝ) ≤ (N : ℝ) := by
      nlinarith
    have floor := Nat.floor_mono product
    simpa using floor
  have same :
      (Finset.univ.filter fun k : Fin N =>
        dSVUniformDensityThresholdGrid N k ≤ density) =
      (Finset.univ.filter fun k : Fin N =>
        k.val < Nat.floor (density * (N : ℝ))) := by
    ext k
    simp only [Finset.mem_filter, Finset.mem_univ, true_and]
    rw [dSVUniformDensityThresholdGrid_apply positive,
      div_le_iff₀ gridpositive]
    constructor
    · intro threshold
      have cast : ((k.val + 1 : ℕ) : ℝ) ≤ density * (N : ℝ) := by
        simpa using threshold
      have below := (Nat.le_floor_iff densitypositive).2 cast
      omega
    · intro below
      have integer : k.val + 1 ≤ Nat.floor (density * (N : ℝ)) := by
        omega
      have cast := (Nat.le_floor_iff densitypositive).1 integer
      simpa using cast
  rw [same, Fin.card_filter_val_lt, min_eq_right floor_bound]

end

noncomputable section

open WithLp
open scoped BigOperators Kronecker ComplexOrder MatrixOrder

theorem coherentSharedRandomControlledUnitary_inv
    {ι κ : Type*} [Fintype ι] [DecidableEq ι]
    [Fintype κ] [DecidableEq κ]
    (U : ι → Matrix.unitaryGroup κ ℂ) :
    (coherentSharedRandomControlledUnitary U)⁻¹ =
      coherentSharedRandomControlledUnitary
        (fun i => (U i)⁻¹) := by
  classical
  apply Subtype.ext
  ext ⟨i, x⟩ ⟨j, y⟩
  change
    star ((coherentSharedRandomControlledUnitary U :
      Matrix (Σ _ : ι, κ) (Σ _ : ι, κ) ℂ) ⟨j, y⟩ ⟨i, x⟩) =
      (coherentSharedRandomControlledUnitary
        (fun i => (U i)⁻¹) :
        Matrix (Σ _ : ι, κ) (Σ _ : ι, κ) ℂ) ⟨i, x⟩ ⟨j, y⟩
  by_cases same : i = j
  · subst j
    simp [coherentSharedRandomControlledUnitary,
      Matrix.blockDiagonal'_apply]
  · have reversed : j ≠ i := Ne.symm same
    simp [coherentSharedRandomControlledUnitary,
      Matrix.blockDiagonal'_apply, same, reversed]

end

noncomputable section

open WithLp
open scoped BigOperators Kronecker ComplexOrder MatrixOrder

theorem spectralPartitionPOVM_effect_eq_spectralDiagonal
    {κ ι : Type*}
    [Fintype κ] [DecidableEq κ]
    [Fintype ι] [DecidableEq ι]
    (F : Matrix ι ι ℂ) (positive : F.PosSemidef)
    (bin : ι → κ) (outcome : κ) :
    (spectralPartitionPOVM F positive bin).operator outcome =
      spectralConjugationCLM positive.isHermitian.eigenvectorUnitary
        (Matrix.diagonal fun i : ι =>
          if bin i = outcome then (1 : ℂ) else 0) := by
  classical
  let selected : Finset ι :=
    Finset.univ.filter fun i : ι => bin i = outcome
  have diagonal :
      (∑ i ∈ selected,
        Matrix.diagonal (Pi.single i (1 : ℂ))) =
        Matrix.diagonal fun i : ι =>
          if bin i = outcome then (1 : ℂ) else 0 := by
    ext i j
    by_cases same : i = j
    · subst j
      simp [Matrix.sum_apply, selected, Pi.single_apply]
    · simp [Matrix.sum_apply, same]
  change
    (∑ i ∈ selected,
      spectralConjugationCLM positive.isHermitian.eigenvectorUnitary
        (Matrix.diagonal (Pi.single i (1 : ℂ)))) = _
  rw [← map_sum, diagonal]

theorem dSVUniformDensityPhysicalSpectralAliceCopy_inv
    {N d : ℕ} (ξ : BipartiteUnitVector d) :
    (dSVUniformDensityAliceHistorySpectralCopy
      (N := N) ξ)⁻¹ =
      coherentSharedRandomControlledUnitary
        (fun _ : Fin N =>
          dSVUniformDensityThresholdLeftBobBasis ξ) := by
  unfold dSVUniformDensityAliceHistorySpectralCopy
  rw [coherentSharedRandomControlledUnitary_inv]
  simp

theorem dSVUniformDensityPhysicalSpectralAliceCopy_transpose
    {N d : ℕ} (ξ : BipartiteUnitVector d) :
    (dSVUniformDensityAliceHistorySpectralCopy
      (N := N) ξ : Matrix
        (DSVUniformDensityThresholdLocalIndex N d)
        (DSVUniformDensityThresholdLocalIndex N d) ℂ).transpose =
      (dSVUniformDensityBobHistoryCopyBasis
        (N := N) ξ : Matrix
          (DSVUniformDensityThresholdLocalIndex N d)
          (DSVUniformDensityThresholdLocalIndex N d) ℂ) := by
  classical
  change
    (Matrix.blockDiagonal'
      (fun _ : Fin N =>
        (((dSVUniformDensityThresholdLeftBobBasis ξ)⁻¹ :
          Matrix.unitaryGroup (Fin d) ℂ) : Matrix (Fin d) (Fin d) ℂ))).transpose =
      Matrix.blockDiagonal'
        (fun _ : Fin N =>
          (conjugateUnitary
            (dSVUniformDensityThresholdLeftBobBasis ξ) :
            Matrix (Fin d) (Fin d) ℂ))
  rw [Matrix.blockDiagonal'_transpose]
  apply congrArg Matrix.blockDiagonal'
  funext k
  ext i j
  rfl

theorem dSVUniformDensityPhysicalSpectralAliceCopy_inv_transpose
    {N d : ℕ} (ξ : BipartiteUnitVector d) :
    ((((dSVUniformDensityAliceHistorySpectralCopy
      (N := N) ξ)⁻¹ : Matrix.unitaryGroup
        (DSVUniformDensityThresholdLocalIndex N d) ℂ) :
        Matrix (DSVUniformDensityThresholdLocalIndex N d)
          (DSVUniformDensityThresholdLocalIndex N d) ℂ)).transpose =
      (((dSVUniformDensityBobHistoryCopyBasis
        (N := N) ξ)⁻¹ : Matrix.unitaryGroup
          (DSVUniformDensityThresholdLocalIndex N d) ℂ) :
        Matrix (DSVUniformDensityThresholdLocalIndex N d)
          (DSVUniformDensityThresholdLocalIndex N d) ℂ) := by
  calc
    _ = (dSVUniformDensityAliceHistorySpectralCopy
      (N := N) ξ : Matrix
        (DSVUniformDensityThresholdLocalIndex N d)
        (DSVUniformDensityThresholdLocalIndex N d) ℂ).transpose.conjTranspose := by
          ext i j
          rfl
    _ = (dSVUniformDensityBobHistoryCopyBasis
      (N := N) ξ : Matrix
        (DSVUniformDensityThresholdLocalIndex N d)
        (DSVUniformDensityThresholdLocalIndex N d) ℂ).conjTranspose := by
          rw [dSVUniformDensityPhysicalSpectralAliceCopy_transpose]
    _ = _ := by
          rfl

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

theorem dSVDensityRationalCompleteProjectiveOutcome_eq_blockVector
    {d : ℕ} (w : ℝ) (N : ℕ)
    (ξ ζ : BipartiteUnitVector d) (a b : Bool) :
    dSVDensityRationalCompleteProjectiveOutcome
        w N ξ ζ a b =
      (‖sharedThresholdResourceRaw (d := Fin d)
          (fun _ : Fin N => (1 : ℝ))‖⁻¹ : ℝ) •
        toLp 2
          (Matrix.vec
            ((Matrix.blockDiagonal' fun k : Fin N =>
              (dSVDensityRationalLeftProjectiveThresholdPOVM
                  w N k ξ).operator a *
                (dSVDensityRationalLeftProjectiveThresholdPOVM
                  w N k ζ).operator b).transpose)) := by
  classical
  rw [dSVDensityRationalCompleteProjectiveOutcome_eq_block_action]
  let τ : Fin N → ℝ := fun _ => 1
  let P : Fin N → Matrix (Fin d) (Fin d) ℂ :=
    fun k => (dSVDensityRationalLeftProjectiveThresholdPOVM
      w N k ξ).operator a
  let R : Fin N → Matrix (Fin d) (Fin d) ℂ :=
    fun k => (dSVDensityRationalLeftProjectiveThresholdPOVM
      w N k ζ).operator b
  let M : Matrix
      (DSVUniformDensityThresholdLocalIndex N d ×
        DSVUniformDensityThresholdLocalIndex N d)
      (DSVUniformDensityThresholdLocalIndex N d ×
        DSVUniformDensityThresholdLocalIndex N d) ℂ :=
    Matrix.blockDiagonal' P ⊗ₖ
      (Matrix.blockDiagonal' R).transpose
  change
    Matrix.toEuclideanLin M
      (sharedThresholdResource (d := Fin d) τ) = _
  rw [sharedThresholdResource,
    (Matrix.toEuclideanLin M).map_smul_of_tower]
  congr 1
  have raw := sharedThresholdResourceRaw_block_action τ P R
  change
    toLp 2
      (M.mulVec
        (ofLp (sharedThresholdResourceRaw (d := Fin d) τ))) =
      toLp 2
        (Matrix.vec
          ((Matrix.blockDiagonal' fun k : Fin N => P k * R k).transpose))
  simpa only [M, P, R, τ, Complex.ofReal_one, one_smul] using raw

end

noncomputable section

open scoped BigOperators ComplexOrder MatrixOrder

theorem dSVDensityRationalPhysicalAcceptedRank_eq_floor
    {d N : ℕ} {w : ℝ} (width : 0 < w) (grid : 0 < N)
    (ξ : BipartiteUnitVector d) (i : Fin d) :
    (dSVDensityRationalPhysicalAcceptedRank
      w N ξ i).val =
      Nat.floor
        (dSVRationalSoftPass w
          ((dSVSoftBobLeftReducedDensity_posSemidef
            ξ).isHermitian.eigenvalues i) * (N : ℝ)) := by
  have unit := dSVRationalSoftPass_mem_unit width
    ((dSVSoftBobLeftReducedDensity_posSemidef
      ξ).eigenvalues_nonneg i)
  simpa [dSVDensityRationalPhysicalAcceptedRank,
    dSVDensityRationalProjectiveThresholdBin] using
    (dSVUniformDensityThresholdGrid_count_eq_floor grid
      (dSVRationalSoftPass w
        ((dSVSoftBobLeftReducedDensity_posSemidef
          ξ).isHermitian.eigenvalues i)) unit.1 unit.2)

theorem dSVDensityRationalProjectiveThresholdBin_eq_true_iff_prefix
    {d N : ℕ} {w : ℝ} (width : 0 < w) (grid : 0 < N)
    (ξ : BipartiteUnitVector d)
    (i : Fin d) (k : Fin N) :
    dSVDensityRationalProjectiveThresholdBin w N k
        ((dSVSoftBobLeftReducedDensity_posSemidef
          ξ).isHermitian.eigenvalues i) = true ↔
      k.val <
        (dSVDensityRationalPhysicalAcceptedRank w N ξ i).val := by
  have real_grid : (0 : ℝ) < N := by exact_mod_cast grid
  have pass_nonnegative :=
    (dSVRationalSoftPass_mem_unit width
      ((dSVSoftBobLeftReducedDensity_posSemidef
        ξ).eigenvalues_nonneg i)).1
  have product_nonnegative :
      0 ≤ dSVRationalSoftPass w
          ((dSVSoftBobLeftReducedDensity_posSemidef
            ξ).isHermitian.eigenvalues i) * (N : ℝ) :=
    mul_nonneg pass_nonnegative real_grid.le
  rw [dSVDensityRationalPhysicalAcceptedRank_eq_floor
    width grid ξ i]
  unfold dSVDensityRationalProjectiveThresholdBin
  simp only [decide_eq_true_eq]
  rw [dSVUniformDensityThresholdGrid_apply grid,
    div_le_iff₀ real_grid]
  constructor
  · intro accepted
    have cast :
        ((k.val + 1 : ℕ) : ℝ) ≤
          dSVRationalSoftPass w
            ((dSVSoftBobLeftReducedDensity_posSemidef
              ξ).isHermitian.eigenvalues i) * (N : ℝ) := by
      simpa using accepted
    have below := (Nat.le_floor_iff product_nonnegative).2 cast
    omega
  · intro below
    have integer :
        k.val + 1 ≤
          Nat.floor
            (dSVRationalSoftPass w
              ((dSVSoftBobLeftReducedDensity_posSemidef
                ξ).isHermitian.eigenvalues i) * (N : ℝ)) := by
      omega
    have cast := (Nat.le_floor_iff product_nonnegative).1 integer
    simpa using cast

end

noncomputable section

open WithLp
open scoped BigOperators Kronecker ComplexOrder MatrixOrder

attribute [local instance] Classical.propDecidable

theorem dSVDensityRationalPhysicalMixedAcceptedThreshold_iff
    {d N : ℕ} {w : ℝ} (width : 0 < w) (grid : 0 < N)
    (ξ ζ : BipartiteUnitVector d)
    (i j : Fin d) (k : Fin N) :
    (dSVDensityRationalProjectiveThresholdBin w N k
        ((dSVSoftBobLeftReducedDensity_posSemidef
          ξ).isHermitian.eigenvalues i) = true ∧
      dSVDensityRationalProjectiveThresholdBin w N k
        ((dSVSoftBobLeftReducedDensity_posSemidef
          ζ).isHermitian.eigenvalues j) = true) ↔
      k.val <
        (dSVDensityRationalPhysicalMixedAcceptedIntersectionRank
          w N ξ ζ i j).val := by
  rw [dSVDensityRationalProjectiveThresholdBin_eq_true_iff_prefix
    width grid ξ i k,
    dSVDensityRationalProjectiveThresholdBin_eq_true_iff_prefix
      width grid ζ j k]
  change _ ↔ k.val < min
    (dSVDensityRationalPhysicalAcceptedRank w N ξ i).val
    (dSVDensityRationalPhysicalAcceptedRank w N ζ j).val
  omega

end

noncomputable section

open WithLp
open scoped BigOperators Kronecker ComplexOrder MatrixOrder

theorem dSVDensityRationalCanonicalPrefixMask_transpose
    {d : ℕ} (w : ℝ) (N : ℕ)
    (ξ : BipartiteUnitVector d) :
    (dSVDensityRationalCanonicalPrefixMask
      w N ξ).transpose =
      dSVDensityRationalCanonicalPrefixMask w N ξ := by
  classical
  simp [dSVDensityRationalCanonicalPrefixMask]

theorem dSVDensityRationalPhysicalAcceptedProjector_eq_spectralMask
    {d : ℕ} (w : ℝ) (N : ℕ)
    (ξ : BipartiteUnitVector d) :
    Matrix.blockDiagonal'
        (dSVDensityRationalPhysicalProjector w ξ) =
      (((dSVUniformDensityAliceHistorySpectralCopy
        (N := N) ξ)⁻¹ : Matrix.unitaryGroup
        (DSVUniformDensityThresholdLocalIndex N d) ℂ) :
          Matrix (DSVUniformDensityThresholdLocalIndex N d)
            (DSVUniformDensityThresholdLocalIndex N d) ℂ) *
        dSVDensityRationalCanonicalPrefixMask w N ξ *
        (dSVUniformDensityAliceHistorySpectralCopy
          (N := N) ξ :
          Matrix (DSVUniformDensityThresholdLocalIndex N d)
            (DSVUniformDensityThresholdLocalIndex N d) ℂ) := by
  classical
  rw [dSVUniformDensityPhysicalSpectralAliceCopy_inv]
  change
    Matrix.blockDiagonal'
      (dSVDensityRationalPhysicalProjector w ξ) =
      Matrix.blockDiagonal'
          (fun _ : Fin N =>
            (dSVUniformDensityThresholdLeftBobBasis ξ :
              Matrix (Fin d) (Fin d) ℂ)) *
        Matrix.blockDiagonal'
          (fun k : Fin N =>
            Matrix.diagonal fun i : Fin d =>
              if dSVDensityRationalProjectiveThresholdBin w N k
                  ((dSVSoftBobLeftReducedDensity_posSemidef
                    ξ).isHermitian.eigenvalues i) = true
              then (1 : ℂ) else 0) *
        Matrix.blockDiagonal'
          (fun _ : Fin N =>
            (((dSVUniformDensityThresholdLeftBobBasis ξ)⁻¹ :
              Matrix.unitaryGroup (Fin d) ℂ) :
                Matrix (Fin d) (Fin d) ℂ))
  rw [← Matrix.blockDiagonal'_mul, ← Matrix.blockDiagonal'_mul]
  apply congrArg Matrix.blockDiagonal'
  funext k
  unfold dSVDensityRationalPhysicalProjector
    dSVDensityRationalLeftProjectiveThresholdPOVM
    dSVDensityRationalProjectiveThresholdPOVM
  rw [spectralPartitionPOVM_effect_eq_spectralDiagonal]
  rfl

end

noncomputable section

open WithLp
open scoped BigOperators Kronecker ComplexOrder MatrixOrder

theorem dSVDensityRationalMixedCanonicalCrossGauge_eq
    {d : ℕ} (N : ℕ)
    (ξ ζ : BipartiteUnitVector d) :
    (((dSVUniformDensityBobHistoryCopyBasis
        (N := N) ζ)⁻¹ : Matrix.unitaryGroup
        (DSVUniformDensityThresholdLocalIndex N d) ℂ) :
      Matrix (DSVUniformDensityThresholdLocalIndex N d)
        (DSVUniformDensityThresholdLocalIndex N d) ℂ) *
      (dSVUniformDensityBobHistoryCopyBasis
        (N := N) ξ :
        Matrix (DSVUniformDensityThresholdLocalIndex N d)
          (DSVUniformDensityThresholdLocalIndex N d) ℂ) =
      dSVDensityRationalMixedCanonicalCrossMatrix N ξ ζ := by
  rw [← dSVUniformDensityPhysicalSpectralAliceCopy_inv_transpose ζ,
    ← dSVUniformDensityPhysicalSpectralAliceCopy_transpose ξ,
    ← Matrix.transpose_mul]
  unfold dSVDensityRationalMixedCanonicalCrossMatrix
  congr 1
  rw [dSVUniformDensityPhysicalSpectralAliceCopy_inv]
  change
    Matrix.blockDiagonal' (fun _ : Fin N =>
      (((dSVUniformDensityThresholdLeftBobBasis ξ)⁻¹ :
        Matrix.unitaryGroup (Fin d) ℂ) : Matrix (Fin d) (Fin d) ℂ)) *
      Matrix.blockDiagonal' (fun _ : Fin N =>
        (dSVUniformDensityThresholdLeftBobBasis ζ :
          Matrix (Fin d) (Fin d) ℂ)) =
      Matrix.blockDiagonal' (fun _ : Fin N =>
        (unitaryBasisOverlap
          (dSVSoftBobLeftReducedDensity_posSemidef
            ξ).isHermitian.eigenvectorUnitary
          (dSVSoftBobLeftReducedDensity_posSemidef
            ζ).isHermitian.eigenvectorUnitary :
          Matrix (Fin d) (Fin d) ℂ))
  rw [← Matrix.blockDiagonal'_mul]
  rfl

theorem dSVDensityRationalCanonicalPrefixMask_eq_diagonal
    {d : ℕ} (w : ℝ) (N : ℕ)
    (ξ : BipartiteUnitVector d) :
    dSVDensityRationalCanonicalPrefixMask w N ξ =
      Matrix.diagonal
        (fun q : DSVUniformDensityThresholdLocalIndex N d =>
          if dSVDensityRationalProjectiveThresholdBin w N q.1
              ((dSVSoftBobLeftReducedDensity_posSemidef
                ξ).isHermitian.eigenvalues q.2) = true
          then (1 : ℂ) else 0) := by
  unfold dSVDensityRationalCanonicalPrefixMask
  rw [Matrix.blockDiagonal'_diagonal]

theorem dSVDensityRationalMixedCanonicalRawSource_apply
    {d : ℕ} (w : ℝ) (N : ℕ)
    (ξ ζ : BipartiteUnitVector d)
    (k l : Fin N) (i j : Fin d) :
    dSVDensityRationalMixedCanonicalRawSource
        w N ξ ζ (⟨k, i⟩, ⟨l, j⟩) =
      if k = l ∧
        dSVDensityRationalProjectiveThresholdBin w N k
          ((dSVSoftBobLeftReducedDensity_posSemidef
            ξ).isHermitian.eigenvalues i) = true ∧
        dSVDensityRationalProjectiveThresholdBin w N l
          ((dSVSoftBobLeftReducedDensity_posSemidef
            ζ).isHermitian.eigenvalues j) = true
      then
        dSVDensityRationalLocalSpectralPairBasisOverlap ξ ζ i j
      else 0 := by
  classical
  unfold dSVDensityRationalMixedCanonicalRawSource
  rw [dSVDensityRationalCanonicalPrefixMask_eq_diagonal w N ζ,
    dSVDensityRationalCanonicalPrefixMask_eq_diagonal w N ξ]
  change
    (Matrix.diagonal
        (fun q : DSVUniformDensityThresholdLocalIndex N d =>
          if dSVDensityRationalProjectiveThresholdBin w N q.1
              ((dSVSoftBobLeftReducedDensity_posSemidef
                ζ).isHermitian.eigenvalues q.2) = true
          then (1 : ℂ) else 0) *
        dSVDensityRationalMixedCanonicalCrossMatrix N ξ ζ *
        Matrix.diagonal
          (fun q : DSVUniformDensityThresholdLocalIndex N d =>
            if dSVDensityRationalProjectiveThresholdBin w N q.1
                ((dSVSoftBobLeftReducedDensity_posSemidef
                  ξ).isHermitian.eigenvalues q.2) = true
            then (1 : ℂ) else 0)) ⟨l, j⟩ ⟨k, i⟩ = _
  rw [Matrix.mul_diagonal, Matrix.diagonal_mul]
  by_cases flags : k = l
  · subst l
    by_cases alice :
        dSVDensityRationalProjectiveThresholdBin w N k
          ((dSVSoftBobLeftReducedDensity_posSemidef
            ξ).isHermitian.eigenvalues i) = true
    · by_cases bob :
          dSVDensityRationalProjectiveThresholdBin w N k
            ((dSVSoftBobLeftReducedDensity_posSemidef
              ζ).isHermitian.eigenvalues j) = true
      · simp [dSVDensityRationalMixedCanonicalCrossMatrix,
          dSVDensityRationalLocalSpectralPairBasisOverlap,
          Matrix.blockDiagonal'_apply, alice, bob]
      · simp [bob]
    · simp [alice]
  · simp [dSVDensityRationalMixedCanonicalCrossMatrix,
      Matrix.blockDiagonal'_apply, flags]

theorem dSVDensityRationalMixedCanonicalProjectorMatrix_eq
    {d : ℕ} (w : ℝ) (N : ℕ)
    (ξ ζ : BipartiteUnitVector d) :
    (((dSVUniformDensityBobHistoryCopyBasis
        (N := N) ζ)⁻¹ : Matrix.unitaryGroup
        (DSVUniformDensityThresholdLocalIndex N d) ℂ) :
      Matrix (DSVUniformDensityThresholdLocalIndex N d)
        (DSVUniformDensityThresholdLocalIndex N d) ℂ) *
      ((Matrix.blockDiagonal'
          (fun k : Fin N =>
            dSVDensityRationalPhysicalProjector w ξ k) *
        Matrix.blockDiagonal'
          (fun k : Fin N =>
            dSVDensityRationalPhysicalProjector w ζ k)).transpose) *
      (dSVUniformDensityAliceHistorySpectralCopy
        (N := N) ξ :
        Matrix (DSVUniformDensityThresholdLocalIndex N d)
          (DSVUniformDensityThresholdLocalIndex N d) ℂ).transpose =
      dSVDensityRationalCanonicalPrefixMask w N ζ *
        dSVDensityRationalMixedCanonicalCrossMatrix N ξ ζ *
        dSVDensityRationalCanonicalPrefixMask w N ξ := by
  let S : Matrix.unitaryGroup
      (DSVUniformDensityThresholdLocalIndex N d) ℂ :=
    dSVUniformDensityAliceHistorySpectralCopy (N := N) ξ
  let X : Matrix.unitaryGroup
      (DSVUniformDensityThresholdLocalIndex N d) ℂ :=
    dSVUniformDensityBobHistoryCopyBasis (N := N) ξ
  let Z : Matrix.unitaryGroup
      (DSVUniformDensityThresholdLocalIndex N d) ℂ :=
    dSVUniformDensityBobHistoryCopyBasis (N := N) ζ
  let XI : Matrix
      (DSVUniformDensityThresholdLocalIndex N d)
      (DSVUniformDensityThresholdLocalIndex N d) ℂ :=
    ((X⁻¹ : Matrix.unitaryGroup
      (DSVUniformDensityThresholdLocalIndex N d) ℂ) :
      Matrix (DSVUniformDensityThresholdLocalIndex N d)
        (DSVUniformDensityThresholdLocalIndex N d) ℂ)
  let ZI : Matrix
      (DSVUniformDensityThresholdLocalIndex N d)
      (DSVUniformDensityThresholdLocalIndex N d) ℂ :=
    ((Z⁻¹ : Matrix.unitaryGroup
      (DSVUniformDensityThresholdLocalIndex N d) ℂ) :
      Matrix (DSVUniformDensityThresholdLocalIndex N d)
        (DSVUniformDensityThresholdLocalIndex N d) ℂ)
  let M : Matrix
      (DSVUniformDensityThresholdLocalIndex N d)
      (DSVUniformDensityThresholdLocalIndex N d) ℂ :=
    dSVDensityRationalCanonicalPrefixMask w N ξ
  let R : Matrix
      (DSVUniformDensityThresholdLocalIndex N d)
      (DSVUniformDensityThresholdLocalIndex N d) ℂ :=
    dSVDensityRationalCanonicalPrefixMask w N ζ
  have physical_x :
      Matrix.blockDiagonal'
          (fun k : Fin N =>
            dSVDensityRationalPhysicalProjector w ξ k) =
        (((S⁻¹ : Matrix.unitaryGroup
          (DSVUniformDensityThresholdLocalIndex N d) ℂ) :
          Matrix (DSVUniformDensityThresholdLocalIndex N d)
            (DSVUniformDensityThresholdLocalIndex N d) ℂ)) *
          M * (S : Matrix _ _ ℂ) :=
    dSVDensityRationalPhysicalAcceptedProjector_eq_spectralMask
      w N ξ
  have physical_z :
      Matrix.blockDiagonal'
          (fun k : Fin N =>
            dSVDensityRationalPhysicalProjector w ζ k) =
        ((((dSVUniformDensityAliceHistorySpectralCopy
          (N := N) ζ)⁻¹ : Matrix.unitaryGroup
          (DSVUniformDensityThresholdLocalIndex N d) ℂ) :
          Matrix (DSVUniformDensityThresholdLocalIndex N d)
            (DSVUniformDensityThresholdLocalIndex N d) ℂ)) *
          R * (dSVUniformDensityAliceHistorySpectralCopy
            (N := N) ζ : Matrix _ _ ℂ) :=
    dSVDensityRationalPhysicalAcceptedProjector_eq_spectralMask
      w N ζ
  have transpose_x :
      (S : Matrix
        (DSVUniformDensityThresholdLocalIndex N d)
        (DSVUniformDensityThresholdLocalIndex N d) ℂ).transpose =
        (X : Matrix
          (DSVUniformDensityThresholdLocalIndex N d)
          (DSVUniformDensityThresholdLocalIndex N d) ℂ) :=
    dSVUniformDensityPhysicalSpectralAliceCopy_transpose
      (N := N) ξ
  have transpose_z :
      (dSVUniformDensityAliceHistorySpectralCopy
          (N := N) ζ : Matrix
            (DSVUniformDensityThresholdLocalIndex N d)
            (DSVUniformDensityThresholdLocalIndex N d) ℂ).transpose =
        (Z : Matrix
          (DSVUniformDensityThresholdLocalIndex N d)
          (DSVUniformDensityThresholdLocalIndex N d) ℂ) :=
    dSVUniformDensityPhysicalSpectralAliceCopy_transpose
      (N := N) ζ
  have inverse_x :
      (((S⁻¹ : Matrix.unitaryGroup
        (DSVUniformDensityThresholdLocalIndex N d) ℂ) :
        Matrix (DSVUniformDensityThresholdLocalIndex N d)
          (DSVUniformDensityThresholdLocalIndex N d) ℂ)).transpose =
        (((X⁻¹ : Matrix.unitaryGroup
          (DSVUniformDensityThresholdLocalIndex N d) ℂ) :
          Matrix (DSVUniformDensityThresholdLocalIndex N d)
            (DSVUniformDensityThresholdLocalIndex N d) ℂ)) :=
    dSVUniformDensityPhysicalSpectralAliceCopy_inv_transpose
      (N := N) ξ
  have inverse_z :
      ((((dSVUniformDensityAliceHistorySpectralCopy
        (N := N) ζ)⁻¹ : Matrix.unitaryGroup
        (DSVUniformDensityThresholdLocalIndex N d) ℂ) :
        Matrix (DSVUniformDensityThresholdLocalIndex N d)
          (DSVUniformDensityThresholdLocalIndex N d) ℂ)).transpose =
        (((Z⁻¹ : Matrix.unitaryGroup
          (DSVUniformDensityThresholdLocalIndex N d) ℂ) :
          Matrix (DSVUniformDensityThresholdLocalIndex N d)
            (DSVUniformDensityThresholdLocalIndex N d) ℂ)) :=
    dSVUniformDensityPhysicalSpectralAliceCopy_inv_transpose
      (N := N) ζ
  have cancel_x :
      XI * (X : Matrix
        (DSVUniformDensityThresholdLocalIndex N d)
        (DSVUniformDensityThresholdLocalIndex N d) ℂ) = 1 := by
    change
      star (X : Matrix
        (DSVUniformDensityThresholdLocalIndex N d)
        (DSVUniformDensityThresholdLocalIndex N d) ℂ) *
        (X : Matrix
          (DSVUniformDensityThresholdLocalIndex N d)
          (DSVUniformDensityThresholdLocalIndex N d) ℂ) = 1
    exact (Matrix.mem_unitaryGroup_iff').mp X.property
  have cancel_z :
      ZI * (Z : Matrix
        (DSVUniformDensityThresholdLocalIndex N d)
        (DSVUniformDensityThresholdLocalIndex N d) ℂ) = 1 := by
    change
      star (Z : Matrix
        (DSVUniformDensityThresholdLocalIndex N d)
        (DSVUniformDensityThresholdLocalIndex N d) ℂ) *
        (Z : Matrix
          (DSVUniformDensityThresholdLocalIndex N d)
          (DSVUniformDensityThresholdLocalIndex N d) ℂ) = 1
    exact (Matrix.mem_unitaryGroup_iff').mp Z.property
  change
    ZI *
      ((Matrix.blockDiagonal'
          (fun k : Fin N =>
            dSVDensityRationalPhysicalProjector w ξ k) *
        Matrix.blockDiagonal'
          (fun k : Fin N =>
            dSVDensityRationalPhysicalProjector w ζ k)).transpose) *
      (S : Matrix _ _ ℂ).transpose =
        R * dSVDensityRationalMixedCanonicalCrossMatrix N ξ ζ * M
  calc
    _ = ((ZI * (Z : Matrix _ _ ℂ)) * R) *
        (ZI * (X : Matrix _ _ ℂ)) *
        (M * (XI * (X : Matrix _ _ ℂ))) := by
          rw [physical_x, physical_z]
          dsimp only [XI, ZI]
          simp only [Matrix.transpose_mul,
            dSVDensityRationalCanonicalPrefixMask_transpose,
            transpose_x, transpose_z, inverse_x, inverse_z,
            Matrix.mul_assoc, M, R]
    _ = R * (ZI * (X : Matrix _ _ ℂ)) * M := by
          rw [cancel_x, cancel_z]
          simp
    _ = _ := by
      dsimp only [ZI]
      rw [dSVDensityRationalMixedCanonicalCrossGauge_eq N ξ ζ]

theorem dSVDensityRationalMixedCanonicalSpectralOutcome_eq
    {d : ℕ} (w : ℝ) (N : ℕ)
    (ξ ζ : BipartiteUnitVector d) :
    dSVDensityRationalCanonicalPrefixSpectralOutcome
        w N ξ ζ =
      (‖sharedThresholdResourceRaw (d := Fin d)
          (fun _ : Fin N => (1 : ℝ))‖⁻¹ : ℝ) •
        dSVDensityRationalMixedCanonicalRawSource w N ξ ζ := by
  classical
  let S : Matrix.unitaryGroup
      (DSVUniformDensityThresholdLocalIndex N d) ℂ :=
    dSVUniformDensityAliceHistorySpectralCopy (N := N) ξ
  let T : Matrix.unitaryGroup
      (DSVUniformDensityThresholdLocalIndex N d) ℂ :=
    dSVUniformDensityBobHistoryCopyBasis (N := N) ζ
  let c : ℝ :=
    ‖sharedThresholdResourceRaw (d := Fin d)
      (fun _ : Fin N => (1 : ℝ))‖⁻¹
  let K : Matrix
      (DSVUniformDensityThresholdLocalIndex N d ×
        DSVUniformDensityThresholdLocalIndex N d)
      (DSVUniformDensityThresholdLocalIndex N d ×
        DSVUniformDensityThresholdLocalIndex N d) ℂ :=
    (S : Matrix _ _ ℂ) ⊗ₖ
      (((T⁻¹ : Matrix.unitaryGroup
        (DSVUniformDensityThresholdLocalIndex N d) ℂ) :
        Matrix (DSVUniformDensityThresholdLocalIndex N d)
          (DSVUniformDensityThresholdLocalIndex N d) ℂ))
  unfold dSVDensityRationalCanonicalPrefixSpectralOutcome
    dSVDensityRationalPhysicalAcceptedOutcome
  rw [dSVDensityRationalCompleteProjectiveOutcome_eq_blockVector]
  unfold dSVDensityRationalMixedCanonicalRawSource
  change
    Matrix.toEuclideanLin K
      (c • toLp 2
        (Matrix.vec
          ((Matrix.blockDiagonal' fun k : Fin N =>
            dSVDensityRationalPhysicalProjector w ξ k *
              dSVDensityRationalPhysicalProjector
                w ζ k).transpose))) =
      c • toLp 2
        (Matrix.vec
          (dSVDensityRationalCanonicalPrefixMask w N ζ *
            dSVDensityRationalMixedCanonicalCrossMatrix N ξ ζ *
            dSVDensityRationalCanonicalPrefixMask w N ξ))
  rw [(Matrix.toEuclideanLin K).map_smul_of_tower]
  congr 1
  apply WithLp.ofLp_injective
  change
    K.mulVec
        (Matrix.vec
          ((Matrix.blockDiagonal' fun k : Fin N =>
            dSVDensityRationalPhysicalProjector w ξ k *
              dSVDensityRationalPhysicalProjector
                w ζ k).transpose)) =
      Matrix.vec
        (dSVDensityRationalCanonicalPrefixMask w N ζ *
          dSVDensityRationalMixedCanonicalCrossMatrix N ξ ζ *
          dSVDensityRationalCanonicalPrefixMask w N ξ)
  dsimp [K]
  rw [Matrix.kronecker_mulVec_vec]
  apply congrArg Matrix.vec
  rw [Matrix.blockDiagonal'_mul]
  exact dSVDensityRationalMixedCanonicalProjectorMatrix_eq
    w N ξ ζ

end

noncomputable section

open WithLp
open scoped BigOperators Kronecker ComplexOrder MatrixOrder

theorem
    dSVDensityRationalMixedCanonicalPrefixPhysicalAcceptedSigmaState_apply
    {d N n : ℕ} {w : ℝ}
    (width : 0 < w) (grid : 0 < N)
    (ξ ζ : BipartiteUnitVector d)
    (i j : Fin d) (k l : Fin N) (a b : Fin n) :
    dSVDensityRationalMixedCanonicalPrefixPhysicalAcceptedSigmaState
        (N := N) w n ξ ζ
        (⟨i, finProdFinEquiv (k, a)⟩,
          ⟨j, finProdFinEquiv (l, b)⟩) =
      dSVDensityRationalCanonicalPrefixSpectralOutcome
          w N ξ ζ (⟨k, i⟩, ⟨l, j⟩) *
        embezzlementState n (a, b) := by
  classical
  rw [dSVDensityRationalMixedCanonicalSpectralOutcome_eq]
  simp only [
    dSVDensityRationalMixedCanonicalPrefixPhysicalAcceptedSigmaState,
    dSVUniformDensityCorrectedMatchedSigmaWeightedResidual,
    dSVDensityRationalLocalSpectralPairHistory,
    dSVDensityRationalMixedCanonicalPrefixPureHarmonicTensor,
    dSVDensityRationalPhysicalMixedAcceptedPrefixWork,
    dSVCanonicalFailurePrefix,
    Equiv.symm_apply_apply]
  change
    (((‖sharedThresholdResourceRaw (d := Fin d)
        (fun _ : Fin N => (1 : ℝ))‖⁻¹ : ℝ) : ℂ) *
      dSVDensityRationalLocalSpectralPairBasisOverlap ξ ζ i j) *
      ((if k = l ∧
          k.val <
            (dSVDensityRationalPhysicalMixedAcceptedIntersectionRank
              w N ξ ζ i j).val
        then (1 : ℂ) else 0) *
        embezzlementState n (a, b)) =
      (((‖sharedThresholdResourceRaw (d := Fin d)
          (fun _ : Fin N => (1 : ℝ))‖⁻¹ : ℝ) : ℂ) *
        dSVDensityRationalMixedCanonicalRawSource
          w N ξ ζ (⟨k, i⟩, ⟨l, j⟩)) *
        embezzlementState n (a, b)
  rw [dSVDensityRationalMixedCanonicalRawSource_apply]
  by_cases same : k = l
  · subst l
    have accepted :=
      dSVDensityRationalPhysicalMixedAcceptedThreshold_iff
        width grid ξ ζ i j k
    by_cases below : k.val <
        (dSVDensityRationalPhysicalMixedAcceptedIntersectionRank
          w N ξ ζ i j).val
    · have both := accepted.mpr below
      simp [below, both.1, both.2, mul_assoc]
    · have not_both :
        ¬ (dSVDensityRationalProjectiveThresholdBin w N k
            ((dSVSoftBobLeftReducedDensity_posSemidef
              ξ).isHermitian.eigenvalues i) = true ∧
          dSVDensityRationalProjectiveThresholdBin w N k
            ((dSVSoftBobLeftReducedDensity_posSemidef
              ζ).isHermitian.eigenvalues j) = true) :=
        fun both => below (accepted.mp both)
      simp [below, not_both]
  · simp [same]

end

noncomputable section

open WithLp
open scoped BigOperators Kronecker ComplexOrder MatrixOrder

theorem unconditionalPhysicalAcceptedCoherentStage_eq_phaseSigma
    {d N B m : ℕ} (w : ℝ)
    (ξ ζ : BipartiteUnitVector d)
    (φ ψ : Fin B) (i j : Fin d) (a b : Fin (N * m)) :
    dSVDensityRationalPublicBucketPhysicalCoherentMixedState
        (N := N) (B := B) w m ξ ζ
        (⟨(φ, i), a⟩, ⟨(ψ, j), b⟩) =
      ePRState B (φ, ψ) *
        dSVDensityRationalMixedCanonicalPrefixPhysicalAcceptedSigmaState
          w m ξ ζ (⟨i, a⟩, ⟨j, b⟩) := by
  simp [dSVDensityRationalPublicBucketPhysicalCoherentMixedState,
    dSVDensityRationalPublicBucketCoherentPhaseSigmaState,
    dSVDensityRationalPublicBucketCoherentPhaseHistory,
    dSVDensityRationalMixedCanonicalPrefixPhysicalAcceptedSigmaState,
    dSVUniformDensityCorrectedMatchedSigmaWeightedResidual,
    mul_assoc]

theorem unconditionalPhysicalAcceptedCoherentStage_apply
    {d N B m : ℕ} {w : ℝ}
    (width : 0 < w) (grid : 0 < N)
    (ξ ζ : BipartiteUnitVector d)
    (φ ψ : Fin B) (i j : Fin d)
    (k l : Fin N) (a b : Fin m) :
    dSVDensityRationalPublicBucketPhysicalCoherentMixedState
        (N := N) (B := B) w m ξ ζ
        (⟨(φ, i), finProdFinEquiv (k, a)⟩,
          ⟨(ψ, j), finProdFinEquiv (l, b)⟩) =
      ePRState B (φ, ψ) *
        dSVDensityRationalCanonicalPrefixSpectralOutcome
          w N ξ ζ (⟨k, i⟩, ⟨l, j⟩) *
        embezzlementState m (a, b) := by
  rw [unconditionalPhysicalAcceptedCoherentStage_eq_phaseSigma,
    dSVDensityRationalMixedCanonicalPrefixPhysicalAcceptedSigmaState_apply
      width grid]
  ring

end

noncomputable section

open WithLp
open scoped BigOperators Kronecker ComplexOrder MatrixOrder

attribute [local instance] Classical.propDecidable

theorem unconditionalActualPhysicalMixedAcceptedSpectralGauge_apply
    {B N d m : ℕ}
    (U : Matrix.unitaryGroup
      (DSVUniformDensityThresholdLocalIndex N d) ℂ)
    (φ ψ : Fin B) (i j : Fin d)
    (k l : Fin N) (a b : Fin m) :
    (unconditionalActualCleanedSelectedStageSpectralUnitary
        (B := B) (m := m) U :
        Matrix (UnconditionalSelectedCopyLocalIndex B d N m)
          (UnconditionalSelectedCopyLocalIndex B d N m) ℂ)
      ⟨(φ, i), finProdFinEquiv (k, a)⟩
      ⟨(ψ, j), finProdFinEquiv (l, b)⟩ =
        if φ = ψ then
          (U : Matrix
              (DSVUniformDensityThresholdLocalIndex N d)
              (DSVUniformDensityThresholdLocalIndex N d) ℂ)
            ⟨k, i⟩ ⟨l, j⟩ *
            (if a = b then (1 : ℂ) else 0)
        else 0 := by
  classical
  have threshold_a : (finProdFinEquiv (k, a)).divNat = k := by
    change (finProdFinEquiv.symm (finProdFinEquiv (k, a))).1 = k
    rw [Equiv.symm_apply_apply]
  have harmonic_a : (finProdFinEquiv (k, a)).modNat = a := by
    change (finProdFinEquiv.symm (finProdFinEquiv (k, a))).2 = a
    rw [Equiv.symm_apply_apply]
  have threshold_b : (finProdFinEquiv (l, b)).divNat = l := by
    change (finProdFinEquiv.symm (finProdFinEquiv (l, b))).1 = l
    rw [Equiv.symm_apply_apply]
  have harmonic_b : (finProdFinEquiv (l, b)).modNat = b := by
    change (finProdFinEquiv.symm (finProdFinEquiv (l, b))).2 = b
    rw [Equiv.symm_apply_apply]
  simp [unconditionalActualCleanedSelectedStageSpectralUnitary,
    unconditionalSourceFixedPureStoppedSigmaReindexedUnitary,
    unconditionalActualCleanedSelectedStagePhysicalIndexEquiv,
    coherentSharedRandomControlledUnitary,
    unconditionalActualCleanedSelectedTensorUnitary,
    Matrix.blockDiagonal'_apply, Matrix.kroneckerMap_apply,
    Matrix.one_apply, threshold_a, harmonic_a,
    threshold_b, harmonic_b]

theorem
    unconditionalActualPhysicalMixedAcceptedSpectralGauge_sum
    {N d : ℕ}
    (f : DSVUniformDensityThresholdLocalIndex N d →
      DSVUniformDensityThresholdLocalIndex N d → ℂ) :
    (∑ i : Fin d, ∑ k : Fin N,
      ∑ j : Fin d, ∑ l : Fin N,
        f ⟨k, i⟩ ⟨l, j⟩) =
      ∑ x : DSVUniformDensityThresholdLocalIndex N d,
        ∑ y : DSVUniformDensityThresholdLocalIndex N d,
          f x y := by
  classical
  simp only [Fintype.sum_sigma]
  rw [Finset.sum_comm]
  apply Finset.sum_congr rfl
  intro k _
  apply Finset.sum_congr rfl
  intro i _
  rw [Finset.sum_comm]

end

end QuantumParallelRepetition


open QuantumParallelRepetition
open scoped ComplexOrder Matrix BigOperators InnerProductSpace
open Complex Matrix Finset
open WithLp
open scoped BigOperators Kronecker ComplexOrder MatrixOrder
attribute [local instance] Classical.propDecidable

theorem solution
    {B N d m : ℕ} {w : ℝ}
    (width : 0 < w) (grid : 0 < N)
    (ξ ζ : BipartiteUnitVector d) :
    toLp 2
      ((((unconditionalActualCleanedSelectedStageSpectralUnitary
            (B := B) (m := m)
            (dSVUniformDensityAliceHistorySpectralCopy
              (N := N) ξ) :
            Matrix (UnconditionalSelectedCopyLocalIndex B d N m)
              (UnconditionalSelectedCopyLocalIndex B d N m) ℂ) ⊗ₖ
          (unconditionalActualCleanedSelectedStageSpectralUnitary
            (B := B) (m := m)
            ((dSVUniformDensityBobHistoryCopyBasis
              (N := N) ζ)⁻¹) :
            Matrix (UnconditionalSelectedCopyLocalIndex B d N m)
              (UnconditionalSelectedCopyLocalIndex B d N m) ℂ)).mulVec
        (ofLp (unconditionalActualPhysicalMixedAcceptedRawStage
          (B := B) (m := m) w ξ ζ)))) =
      dSVDensityRationalPublicBucketPhysicalCoherentMixedState
        (N := N) (B := B) w m ξ ζ := by
  classical
  ext ⟨⟨⟨φ, i⟩, packedA⟩, ⟨⟨ψ, j⟩, packedB⟩⟩
  obtain ⟨⟨k, a⟩, rfl⟩ := finProdFinEquiv.surjective packedA
  obtain ⟨⟨l, b⟩, rfl⟩ := finProdFinEquiv.surjective packedB
  have reindex_packed (f : Fin (N * m) → ℂ) :
      (∑ packed : Fin (N * m), f packed) =
        ∑ packed : Fin N × Fin m, f (finProdFinEquiv packed) :=
    (Equiv.sum_comp finProdFinEquiv f).symm
  rw [unconditionalPhysicalAcceptedCoherentStage_apply
    width grid ξ ζ φ ψ i j k l a b]
  simp only [Matrix.mulVec, dotProduct, Matrix.kroneckerMap_apply,
    Fintype.sum_prod_type, Fintype.sum_sigma]
  simp_rw [reindex_packed]
  simp only [Fintype.sum_prod_type]
  simp_rw [unconditionalActualPhysicalMixedAcceptedSpectralGauge_apply]
  simp only [
    unconditionalActualPhysicalMixedAcceptedRawStage,
    Equiv.symm_apply_apply, ite_mul, mul_ite, zero_mul, mul_zero,
    mul_one]
  simp [dSVDensityRationalCanonicalPrefixSpectralOutcome, ePRState,
    Matrix.mulVec, dotProduct, Matrix.kroneckerMap_apply,
    Fintype.sum_prod_type, Finset.mul_sum,
    mul_assoc, mul_left_comm, mul_comm]
  let alice : Matrix
      (DSVUniformDensityThresholdLocalIndex N d)
      (DSVUniformDensityThresholdLocalIndex N d) ℂ :=
    dSVUniformDensityAliceHistorySpectralCopy (N := N) ξ
  let bob : Matrix
      (DSVUniformDensityThresholdLocalIndex N d)
      (DSVUniformDensityThresholdLocalIndex N d) ℂ :=
    dSVUniformDensityBobHistoryCopyBasis (N := N) ζ
  let summand :
      DSVUniformDensityThresholdLocalIndex N d →
        DSVUniformDensityThresholdLocalIndex N d → ℂ :=
    fun x y =>
      (↑(Real.sqrt (B : ℝ)) : ℂ)⁻¹ *
        (embezzlementState m (a, b) *
          (dSVDensityRationalPhysicalAcceptedOutcome
            w N ξ ζ (x, y) *
            (alice ⟨k, i⟩ x * (starRingEnd ℂ) (bob y ⟨l, j⟩))))
  by_cases phases : φ = ψ
  · simp only [if_pos phases]
    exact unconditionalActualPhysicalMixedAcceptedSpectralGauge_sum
      summand
  · simp only [if_neg phases]
