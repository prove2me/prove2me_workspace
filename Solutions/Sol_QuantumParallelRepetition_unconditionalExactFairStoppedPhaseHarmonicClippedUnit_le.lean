import Definitions.Def_quantum_parallel_repetition_game
import Definitions.Def_qpr_core_25
import Theorems.Thm_QuantumParallelRepetition_embezzlementState_norm
import Theorems.Thm_QuantumParallelRepetition_diagonalSchmidtState_norm_sq
import Theorems.Thm_QuantumParallelRepetition_dSVSoftBobLeftReducedDensity_posSemidef
import Theorems.Thm_QuantumParallelRepetition_exists_proofDSVUniformDensityPolarLeftCanonicalSchmidt
import Theorems.Thm_QuantumParallelRepetition_exactSeedWeight_nonneg
import Theorems.Thm_QuantumParallelRepetition_exactAlicePurificationFamily_posSemidef
import Theorems.Thm_QuantumParallelRepetition_exactBobPurificationFamily_posSemidef
import Theorems.Thm_QuantumParallelRepetition_exactSeedWeight_sum
import Theorems.Thm_QuantumParallelRepetition_exactSourceStateDistanceBound_of_fair_operator_entropy
import Theorems.Thm_QuantumParallelRepetition_exactFairAcceptedAliceEntropy_le_sourceRate
import Theorems.Thm_QuantumParallelRepetition_exactFairAcceptedBobEntropy_le_sourceRate
import Mathlib.Algebra.Algebra.Basic
import Mathlib.Algebra.Algebra.Defs
import Mathlib.Algebra.Algebra.Equiv
import Mathlib.Algebra.Algebra.Hom
import Mathlib.Algebra.Algebra.NonUnitalHom
import Mathlib.Algebra.BigOperators.Field
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
import Mathlib.Algebra.Group.Hom.Defs
import Mathlib.Algebra.Group.Pi.Basic
import Mathlib.Algebra.Group.Subgroup.Defs
import Mathlib.Algebra.Group.Submonoid.Defs
import Mathlib.Algebra.GroupWithZero.Action.Defs
import Mathlib.Algebra.GroupWithZero.Action.Pi
import Mathlib.Algebra.GroupWithZero.Basic
import Mathlib.Algebra.GroupWithZero.Defs
import Mathlib.Algebra.GroupWithZero.Hom
import Mathlib.Algebra.GroupWithZero.NeZero
import Mathlib.Algebra.GroupWithZero.Units.Basic
import Mathlib.Algebra.Module.Defs
import Mathlib.Algebra.Module.Pi
import Mathlib.Algebra.Module.Submodule.Defs
import Mathlib.Algebra.NeZero
import Mathlib.Algebra.Notation.Defs
import Mathlib.Algebra.Notation.Pi.Defs
import Mathlib.Algebra.Order.BigOperators.Group.Finset
import Mathlib.Algebra.Order.Field.Basic
import Mathlib.Algebra.Order.Floor.Defs
import Mathlib.Algebra.Order.Floor.Semiring
import Mathlib.Algebra.Order.Group.Defs
import Mathlib.Algebra.Order.Group.Unbundled.Abs
import Mathlib.Algebra.Order.Group.Unbundled.Basic
import Mathlib.Algebra.Order.GroupWithZero.Unbundled.Basic
import Mathlib.Algebra.Order.GroupWithZero.Unbundled.Defs
import Mathlib.Algebra.Order.Monoid.Defs
import Mathlib.Algebra.Order.Monoid.Unbundled.Basic
import Mathlib.Algebra.Order.Monoid.Unbundled.Defs
import Mathlib.Algebra.Order.Ring.Abs
import Mathlib.Algebra.Order.Ring.Defs
import Mathlib.Algebra.Order.Ring.Unbundled.Basic
import Mathlib.Algebra.Order.Star.Basic
import Mathlib.Algebra.Ring.Defs
import Mathlib.Algebra.Ring.Equiv
import Mathlib.Algebra.Ring.Hom.Defs
import Mathlib.Algebra.Ring.Int.Defs
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
import Mathlib.Analysis.Matrix.PosDef
import Mathlib.Analysis.Matrix.Spectrum
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
import Mathlib.Data.Complex.BigOperators
import Mathlib.Data.ENNReal.Basic
import Mathlib.Data.Finset.BooleanAlgebra
import Mathlib.Data.Finset.Card
import Mathlib.Data.Finset.Defs
import Mathlib.Data.Finset.Empty
import Mathlib.Data.Finset.Filter
import Mathlib.Data.Finset.Lattice.Basic
import Mathlib.Data.Finset.SDiff
import Mathlib.Data.Finsupp.Defs
import Mathlib.Data.Fintype.Basic
import Mathlib.Data.Fintype.BigOperators
import Mathlib.Data.Fintype.Card
import Mathlib.Data.Fintype.Defs
import Mathlib.Data.Fintype.Fin
import Mathlib.Data.Fintype.Pi
import Mathlib.Data.Fintype.Prod
import Mathlib.Data.Fintype.Sets
import Mathlib.Data.Fintype.Sigma
import Mathlib.Data.Fintype.Sum
import Mathlib.Data.FunLike.Basic
import Mathlib.Data.Int.Cast.Defs
import Mathlib.Data.Matrix.Basic
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
import Mathlib.LinearAlgebra.Dimension.Finrank
import Mathlib.LinearAlgebra.Matrix.ConjTranspose
import Mathlib.LinearAlgebra.Matrix.Defs
import Mathlib.LinearAlgebra.Matrix.Hermitian
import Mathlib.LinearAlgebra.Matrix.Kronecker
import Mathlib.LinearAlgebra.Matrix.PosDef
import Mathlib.LinearAlgebra.Matrix.Trace
import Mathlib.LinearAlgebra.Matrix.Vec
import Mathlib.LinearAlgebra.UnitaryGroup
import Mathlib.MeasureTheory.Function.AEEqFun
import Mathlib.MeasureTheory.Function.LpSpace.Basic
import Mathlib.MeasureTheory.Measure.Haar.OfBasis
import Mathlib.MeasureTheory.Measure.MeasureSpace
import Mathlib.MeasureTheory.Measure.MeasureSpaceDef
import Mathlib.MeasureTheory.Measure.Restrict
import Mathlib.Order.Basic
import Mathlib.Order.Defs.LinearOrder
import Mathlib.Order.Defs.PartialOrder
import Mathlib.Order.Interval.Set.Defs
import Mathlib.Order.Lattice
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

theorem positiveDensity_eigenvalues_sum
    {d : Type*} [Fintype d] [DecidableEq d]
    (F : Matrix d d ℂ) (hF : F.PosSemidef)
    (htrace : Matrix.trace F = 1) :
    (∑ i : d, hF.isHermitian.eigenvalues i) = 1 := by
  have hspectral := congrArg Complex.re
    hF.isHermitian.trace_eq_sum_eigenvalues
  simpa [htrace, Complex.re_sum] using hspectral.symm

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

theorem schmidtVector_norm_sq
    {d : ℕ}
    (σ : Fin d → ℝ)
    (U V : Matrix.unitaryGroup (Fin d) ℂ) :
    ‖schmidtVector σ U V‖ ^ 2 =
      ∑ i : Fin d, σ i ^ 2 := by
  rw [schmidtVector,
    localUnitaryAction_norm,
    diagonalSchmidtState_norm_sq]

theorem matrixVectorization_inner
    {d e : Type*} [Fintype d] [Fintype e]
    (X Y : Matrix d e ℂ) :
    inner ℂ (toLp 2 (Matrix.vec X))
      (toLp 2 (Matrix.vec Y)) =
        Matrix.trace (X.conjTranspose * Y) := by
  rw [EuclideanSpace.inner_eq_star_dotProduct]
  change
    Matrix.vec Y ⬝ᵥ star (Matrix.vec X) =
      Matrix.trace (X.conjTranspose * Y)
  rw [dotProduct_comm, Matrix.star_vec_dotProduct_vec]

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

theorem targetCoefficientMatrix_vec
    {d : ℕ} (ξ : BipartiteUnitVector d) :
    toLp 2 (Matrix.vec (targetCoefficientMatrix ξ)) = ξ.val := by
  ext ⟨a, b⟩
  rfl

theorem targetReducedDensity_trace
    {d : ℕ} (ξ : BipartiteUnitVector d) :
    Matrix.trace (targetReducedDensity ξ) = 1 := by
  have vectorized := matrixVectorization_inner
    (targetCoefficientMatrix ξ)
    (targetCoefficientMatrix ξ)
  rw [targetCoefficientMatrix_vec,
    inner_self_eq_one_of_norm_eq_one ξ.property] at vectorized
  exact vectorized.symm

end

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

open scoped BigOperators ComplexOrder MatrixOrder

set_option backward.isDefEq.respectTransparency false
set_option maxHeartbeats 7000000
set_option maxRecDepth 3072

theorem dSVAdaptiveSoft_sqrt_sub_sq_le_abs
    (a b : ℝ) (ha : 0 ≤ a) (hb : 0 ≤ b) :
    (Real.sqrt a - Real.sqrt b) ^ 2 ≤ |a - b| := by
  have sa : 0 ≤ Real.sqrt a := Real.sqrt_nonneg a
  have sb : 0 ≤ Real.sqrt b := Real.sqrt_nonneg b
  have square_a : Real.sqrt a ^ 2 = a := Real.sq_sqrt ha
  have square_b : Real.sqrt b ^ 2 = b := Real.sq_sqrt hb
  rcases le_total a b with ordered | ordered
  · rw [abs_of_nonpos (sub_nonpos.mpr ordered)]
    have roots := Real.sqrt_le_sqrt ordered
    nlinarith [mul_nonneg sa (sub_nonneg.mpr roots)]
  · rw [abs_of_nonneg (sub_nonneg.mpr ordered)]
    have roots := Real.sqrt_le_sqrt ordered
    nlinarith [mul_nonneg sb (sub_nonneg.mpr roots)]

end

noncomputable section

open WithLp
open scoped BigOperators Kronecker ComplexOrder MatrixOrder

theorem dSVSoftBobLeftReducedDensity_trace
    {d : ℕ} (ζ : BipartiteUnitVector d) :
    Matrix.trace (dSVSoftBobLeftReducedDensity ζ) = 1 := by
  unfold dSVSoftBobLeftReducedDensity
  calc
    Matrix.trace
        (targetCoefficientMatrix ζ *
          (targetCoefficientMatrix ζ).conjTranspose) =
        Matrix.trace
          ((targetCoefficientMatrix ζ).conjTranspose *
            targetCoefficientMatrix ζ) :=
      Matrix.trace_mul_comm _ _
    _ = 1 := targetReducedDensity_trace ζ

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

theorem dSVUniformDensityThresholdWeight_nonneg
    (N : ℕ) (k : Fin N) :
    0 ≤ dSVUniformDensityThresholdWeight N k := by
  unfold dSVUniformDensityThresholdWeight
  positivity

theorem dSVUniformDensityGridPrefix_eq_count
    (N : ℕ) (density : ℝ) :
    dSVUniformDensityGridPrefix N density =
      ((Finset.univ.filter fun k : Fin N =>
        dSVUniformDensityThresholdGrid N k ≤ density).card : ℝ) /
        (N : ℝ) := by
  classical
  unfold dSVUniformDensityGridPrefix
    dSVUniformDensityThresholdWeight
  simp_rw [mul_ite, mul_one, mul_zero]
  rw [← Finset.sum_filter]
  simp [div_eq_mul_inv, mul_comm]

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

open scoped BigOperators Kronecker ComplexOrder MatrixOrder

theorem dSVUniformDensitySchmidtVector_sub
    {d : ℕ} (σ τ : Fin d → ℝ)
    (U V : Matrix.unitaryGroup (Fin d) ℂ) :
    schmidtVector σ U V -
        schmidtVector τ U V =
      schmidtVector (fun i => σ i - τ i) U V := by
  unfold schmidtVector
  rw [← localUnitaryAction_sub]
  congr 1
  ext ⟨i, j⟩
  by_cases equal : i = j
  · subst j
    simp [diagonalSchmidtState]
  · simp [diagonalSchmidtState, equal]

theorem dSVUniformDensity_normalize_sub_self_norm
    {d : ℕ} (v : EuclideanSpace ℂ (Fin d × Fin d))
    (nonzero : v ≠ 0) :
    ‖NormedSpace.normalize v - v‖ = |1 - ‖v‖| := by
  have positive : 0 < ‖v‖ := norm_pos_iff.mpr nonzero
  calc
    ‖NormedSpace.normalize v - v‖ =
        ‖((‖v‖⁻¹ - 1 : ℝ) • v)‖ := by
          unfold NormedSpace.normalize
          congr 1
          rw [sub_smul, one_smul]
    _ = |‖v‖⁻¹ - 1| * ‖v‖ := by
          rw [norm_smul, Real.norm_eq_abs]
    _ = |(‖v‖⁻¹ - 1) * ‖v‖| := by
          rw [abs_mul, abs_of_nonneg (norm_nonneg v)]
    _ = |1 - ‖v‖| := by
          congr 1
          field_simp [positive.ne']

end

noncomputable section

open WithLp
open scoped BigOperators Kronecker ComplexOrder MatrixOrder

theorem dSVUniformDensityCorrectedMatchedSigmaWeightedResidual_distance_sq
    {H : Type*} [Fintype H] {n : ℕ}
    (history : EuclideanSpace ℂ (H × H))
    (work target : H → H → EuclideanSpace ℂ (Fin n × Fin n)) :
    ‖dSVUniformDensityCorrectedMatchedSigmaWeightedResidual
        history work -
      dSVUniformDensityCorrectedMatchedSigmaWeightedResidual
        history target‖ ^ 2 =
      ∑ a : H, ∑ b : H,
        ‖history (a, b)‖ ^ 2 * ‖work a b - target a b‖ ^ 2 := by
  classical
  rw [EuclideanSpace.norm_sq_eq]
  simp only [Fintype.sum_prod_type, Fintype.sum_sigma]
  change
    (∑ a : H, ∑ i : Fin n,
      ∑ b : H, ∑ j : Fin n,
        ‖history (a, b) * work a b (i, j) -
          history (a, b) * target a b (i, j)‖ ^ 2) = _
  apply Finset.sum_congr rfl
  intro a _
  rw [Finset.sum_comm]
  apply Finset.sum_congr rfl
  intro b _
  rw [EuclideanSpace.norm_sq_eq, Fintype.sum_prod_type,
    Finset.mul_sum]
  apply Finset.sum_congr rfl
  intro i _
  rw [Finset.mul_sum]
  apply Finset.sum_congr rfl
  intro j _
  change
    ‖history (a, b) * work a b (i, j) -
      history (a, b) * target a b (i, j)‖ ^ 2 =
      ‖history (a, b)‖ ^ 2 *
        ‖work a b (i, j) - target a b (i, j)‖ ^ 2
  rw [← mul_sub, norm_mul, mul_pow]

end

noncomputable section

open WithLp
open scoped BigOperators ComplexOrder MatrixOrder

attribute [local instance] Classical.propDecidable

theorem dSVUniformDensityGridPrefix_le_density
    {N : ℕ} (positive : 0 < N)
    {a : ℝ} (nonnegative : 0 ≤ a) (bounded : a ≤ 1) :
    dSVUniformDensityGridPrefix N a ≤ a := by
  have cast : (0 : ℝ) < N := by exact_mod_cast positive
  rw [dSVUniformDensityGridPrefix_eq_count,
    dSVUniformDensityThresholdGrid_count_eq_floor
      positive a nonnegative bounded]
  apply (div_le_iff₀ cast).mpr
  exact Nat.floor_le (mul_nonneg nonnegative cast.le)

theorem dSVUniformDensityGridPrefix_density_sub_lt
    {N : ℕ} (positive : 0 < N)
    {a : ℝ} (nonnegative : 0 ≤ a) (bounded : a ≤ 1) :
    a - dSVUniformDensityGridPrefix N a < 1 / (N : ℝ) := by
  have cast : (0 : ℝ) < N := by exact_mod_cast positive
  rw [dSVUniformDensityGridPrefix_eq_count,
    dSVUniformDensityThresholdGrid_count_eq_floor
      positive a nonnegative bounded]
  apply (lt_div_iff₀ cast).mpr
  have floor := Nat.lt_floor_add_one (a * (N : ℝ))
  calc
    (a - (Nat.floor (a * (N : ℝ)) : ℝ) / (N : ℝ)) *
        (N : ℝ) =
      a * (N : ℝ) - (Nat.floor (a * (N : ℝ)) : ℝ) := by
        field_simp
    _ < 1 := by linarith

theorem dSVUniformDensityGridPrefix_density_sub_le
    {N : ℕ} (positive : 0 < N)
    {a : ℝ} (nonnegative : 0 ≤ a) (bounded : a ≤ 1) :
    a - 1 / (N : ℝ) ≤ dSVUniformDensityGridPrefix N a := by
  linarith [dSVUniformDensityGridPrefix_density_sub_lt
    positive nonnegative bounded]

theorem dSVSoftBobLeftReducedDensity_eigenvalue_le_one
    {d : ℕ} (ξ : BipartiteUnitVector d) (i : Fin d) :
    (dSVSoftBobLeftReducedDensity_posSemidef ξ).isHermitian.eigenvalues i
      ≤ 1 := by
  let F := dSVSoftBobLeftReducedDensity ξ
  let hF : F.PosSemidef :=
    dSVSoftBobLeftReducedDensity_posSemidef ξ
  change hF.isHermitian.eigenvalues i ≤ 1
  calc
    hF.isHermitian.eigenvalues i ≤
        ∑ j : Fin d, hF.isHermitian.eigenvalues j :=
      Finset.single_le_sum
        (fun j _ => hF.eigenvalues_nonneg j) (Finset.mem_univ i)
    _ = 1 := positiveDensity_eigenvalues_sum F hF
      (dSVSoftBobLeftReducedDensity_trace ξ)

theorem dSVRationalSoftPass_ge_density_div_width_add_one
    {w a : ℝ} (width : 0 < w)
    (nonnegative : 0 ≤ a) (bounded : a ≤ 1) :
    a / (w + 1) ≤ dSVRationalSoftPass w a := by
  unfold dSVRationalSoftPass
  have denominator : 0 < a + w := by linarith
  have wider : 0 < w + 1 := by linarith
  apply (div_le_div_iff₀ wider denominator).mpr
  nlinarith

theorem dSVDensityRationalLeftProjectiveDiagonalMass_lower
    {d N : ℕ} {w : ℝ} (width : 0 < w) (grid : 0 < N)
    (ξ : BipartiteUnitVector d) :
    1 / (w + 1) - (d : ℝ) / N ≤
      dSVDensityRationalLeftProjectiveDiagonalMass w N ξ := by
  let F := dSVSoftBobLeftReducedDensity ξ
  let hF : F.PosSemidef :=
    dSVSoftBobLeftReducedDensity_posSemidef ξ
  have density_sum :
      (∑ i : Fin d, hF.isHermitian.eigenvalues i) = 1 :=
    positiveDensity_eigenvalues_sum F hF
      (dSVSoftBobLeftReducedDensity_trace ξ)
  have rational_sum :
      1 / (w + 1) ≤
        ∑ i : Fin d,
          dSVRationalSoftPass w
            (hF.isHermitian.eigenvalues i) := by
    calc
      1 / (w + 1) =
          ∑ i : Fin d, hF.isHermitian.eigenvalues i / (w + 1) := by
        rw [← Finset.sum_div, density_sum]
      _ ≤ ∑ i : Fin d,
          dSVRationalSoftPass w
            (hF.isHermitian.eigenvalues i) := by
        apply Finset.sum_le_sum
        intro i _
        exact dSVRationalSoftPass_ge_density_div_width_add_one
          width (hF.eigenvalues_nonneg i)
          (dSVSoftBobLeftReducedDensity_eigenvalue_le_one ξ i)
  calc
    1 / (w + 1) - (d : ℝ) / N ≤
        (∑ i : Fin d,
          dSVRationalSoftPass w
            (hF.isHermitian.eigenvalues i)) - (d : ℝ) / N :=
      sub_le_sub_right rational_sum _
    _ = ∑ i : Fin d,
        (dSVRationalSoftPass w
          (hF.isHermitian.eigenvalues i) - 1 / (N : ℝ)) := by
      simp [Finset.sum_sub_distrib]
      ring
    _ ≤ dSVDensityRationalLeftProjectiveDiagonalMass w N ξ := by
      unfold dSVDensityRationalLeftProjectiveDiagonalMass
      change
        (∑ i : Fin d,
          (dSVRationalSoftPass w
            (hF.isHermitian.eigenvalues i) - 1 / (N : ℝ))) ≤
          ∑ i : Fin d,
            dSVUniformDensityGridPrefix N
              (dSVRationalSoftPass w
                (hF.isHermitian.eigenvalues i))
      apply Finset.sum_le_sum
      intro i _
      exact dSVUniformDensityGridPrefix_density_sub_le grid
        (dSVRationalSoftPass_mem_unit width
          (hF.eigenvalues_nonneg i)).1
        (dSVRationalSoftPass_mem_unit width
          (hF.eigenvalues_nonneg i)).2

end

noncomputable section

open scoped BigOperators ComplexOrder MatrixOrder

theorem dSVDensityRationalGridPrefix_nonneg
    (N : ℕ) (a : ℝ) :
    0 ≤ dSVUniformDensityGridPrefix N a := by
  unfold dSVUniformDensityGridPrefix
  apply Finset.sum_nonneg
  intro k _
  exact mul_nonneg
    (dSVUniformDensityThresholdWeight_nonneg N k)
    (by split <;> norm_num)

theorem dSVDensityRationalSoftPass_rescaled_le_density
    {w a : ℝ} (width : 0 < w) (nonnegative : 0 ≤ a) :
    w * dSVRationalSoftPass w a ≤ a := by
  have denominator : 0 < a + w := by linarith
  unfold dSVRationalSoftPass
  calc
    w * (a / (a + w)) = w * a / (a + w) := by ring
    _ ≤ a := (div_le_iff₀ denominator).mpr (by
      nlinarith [sq_nonneg a])

theorem dSVDensityRationalSoftPass_density_defect_le
    {w a : ℝ} (width : 0 < w)
    (nonnegative : 0 ≤ a) (bounded : a ≤ 1) :
    a - w * dSVRationalSoftPass w a ≤ a / w := by
  have denominator : 0 < a + w := by linarith
  calc
    a - w * dSVRationalSoftPass w a =
        a ^ 2 / (a + w) := by
      unfold dSVRationalSoftPass
      field_simp
      ring
    _ ≤ a / w := by
      apply (div_le_div_iff₀ denominator width).mpr
      nlinarith [mul_nonneg (mul_nonneg nonnegative width.le)
        (sub_nonneg.mpr bounded), sq_nonneg a]

theorem dSVDensityRationalGrid_rescaled_le_density
    {N : ℕ} {w a : ℝ} (width : 0 < w) (grid : 0 < N)
    (nonnegative : 0 ≤ a) :
    w * dSVUniformDensityGridPrefix N
        (dSVRationalSoftPass w a) ≤ a := by
  obtain ⟨pass_nonnegative, pass_bounded⟩ :=
    dSVRationalSoftPass_mem_unit width nonnegative
  calc
    w * dSVUniformDensityGridPrefix N
        (dSVRationalSoftPass w a) ≤
      w * dSVRationalSoftPass w a :=
        mul_le_mul_of_nonneg_left
          (dSVUniformDensityGridPrefix_le_density grid
            pass_nonnegative pass_bounded) width.le
    _ ≤ a :=
      dSVDensityRationalSoftPass_rescaled_le_density
        width nonnegative

theorem dSVDensityRationalGrid_density_defect_le
    {N : ℕ} {w a : ℝ} (width : 0 < w) (grid : 0 < N)
    (nonnegative : 0 ≤ a) (bounded : a ≤ 1) :
    a - w * dSVUniformDensityGridPrefix N
        (dSVRationalSoftPass w a) ≤
      a / w + w / (N : ℝ) := by
  obtain ⟨pass_nonnegative, pass_bounded⟩ :=
    dSVRationalSoftPass_mem_unit width nonnegative
  have cell_bound :
      dSVRationalSoftPass w a -
        dSVUniformDensityGridPrefix N
          (dSVRationalSoftPass w a) ≤ 1 / (N : ℝ) :=
    (dSVUniformDensityGridPrefix_density_sub_lt grid
      pass_nonnegative pass_bounded).le
  have scaled := mul_le_mul_of_nonneg_left cell_bound width.le
  have rational := dSVDensityRationalSoftPass_density_defect_le
    width nonnegative bounded
  calc
    a - w * dSVUniformDensityGridPrefix N
        (dSVRationalSoftPass w a) =
      (a - w * dSVRationalSoftPass w a) +
        w * (dSVRationalSoftPass w a -
          dSVUniformDensityGridPrefix N
            (dSVRationalSoftPass w a)) := by ring
    _ ≤ a / w + w * (1 / (N : ℝ)) :=
      add_le_add rational scaled
    _ = a / w + w / (N : ℝ) := by ring

theorem dSVDensityRationalCanonicalAcceptedCoefficient_sq
    {d : ℕ} {w : ℝ} (width : 0 < w) (N : ℕ)
    (ξ : BipartiteUnitVector d) (i : Fin d) :
    dSVDensityRationalCanonicalAcceptedCoefficient
        w N ξ i ^ 2 =
      w * dSVUniformDensityGridPrefix N
        (dSVRationalSoftPass w
          ((dSVSoftBobLeftReducedDensity_posSemidef ξ).isHermitian.eigenvalues i)) := by
  unfold dSVDensityRationalCanonicalAcceptedCoefficient
  apply Real.sq_sqrt
  exact mul_nonneg width.le
    (dSVDensityRationalGridPrefix_nonneg _ _)

theorem dSVDensityRationalCanonicalAliceBasis_target
    {d : ℕ} (ξ : BipartiteUnitVector d) :
    ξ.val = schmidtVector
      (dSVUniformDensityPolarLeftSchmidtCoefficient ξ)
      (dSVDensityRationalCanonicalAliceBasis ξ)
      (dSVUniformDensityThresholdLeftBobBasis ξ) :=
  Classical.choose_spec
    (exists_proofDSVUniformDensityPolarLeftCanonicalSchmidt ξ)

theorem dSVDensityRationalCanonicalAcceptedTarget_norm_sq
    {d : ℕ} {w : ℝ} (width : 0 < w) (N : ℕ)
    (ξ : BipartiteUnitVector d) :
    ‖dSVDensityRationalCanonicalAcceptedTarget w N ξ‖ ^ 2 =
      w * dSVDensityRationalLeftProjectiveDiagonalMass w N ξ := by
  unfold dSVDensityRationalCanonicalAcceptedTarget
  rw [schmidtVector_norm_sq]
  simp_rw [dSVDensityRationalCanonicalAcceptedCoefficient_sq width]
  unfold dSVDensityRationalLeftProjectiveDiagonalMass
  rw [Finset.mul_sum]

theorem dSVDensityRationalCanonicalAcceptedTarget_distance_sq_eq
    {d : ℕ} (w : ℝ) (N : ℕ)
    (ξ : BipartiteUnitVector d) :
    ‖ξ.val - dSVDensityRationalCanonicalAcceptedTarget
      w N ξ‖ ^ 2 =
      ∑ i : Fin d,
        (dSVUniformDensityPolarLeftSchmidtCoefficient ξ i -
          dSVDensityRationalCanonicalAcceptedCoefficient
            w N ξ i) ^ 2 := by
  rw [dSVDensityRationalCanonicalAliceBasis_target ξ]
  unfold dSVDensityRationalCanonicalAcceptedTarget
  rw [dSVUniformDensitySchmidtVector_sub,
    schmidtVector_norm_sq]

theorem dSVDensityRationalCanonicalAcceptedCoefficient_error_sq_le
    {d N : ℕ} {w : ℝ} (width : 0 < w) (grid : 0 < N)
    (ξ : BipartiteUnitVector d) (i : Fin d) :
    (dSVUniformDensityPolarLeftSchmidtCoefficient ξ i -
        dSVDensityRationalCanonicalAcceptedCoefficient
          w N ξ i) ^ 2 ≤
      ((dSVSoftBobLeftReducedDensity_posSemidef ξ).isHermitian.eigenvalues i) / w +
        w / (N : ℝ) := by
  let a :=
    ((dSVSoftBobLeftReducedDensity_posSemidef ξ).isHermitian.eigenvalues i)
  let b := w * dSVUniformDensityGridPrefix N
    (dSVRationalSoftPass w a)
  have ha : 0 ≤ a :=
    (dSVSoftBobLeftReducedDensity_posSemidef ξ).eigenvalues_nonneg i
  have ha_one : a ≤ 1 :=
    dSVSoftBobLeftReducedDensity_eigenvalue_le_one ξ i
  have hb : 0 ≤ b := mul_nonneg width.le
    (dSVDensityRationalGridPrefix_nonneg N _)
  have below : b ≤ a :=
    dSVDensityRationalGrid_rescaled_le_density width grid ha
  have roots := dSVAdaptiveSoft_sqrt_sub_sq_le_abs a b ha hb
  rw [abs_of_nonneg (sub_nonneg.mpr below)] at roots
  have defect := dSVDensityRationalGrid_density_defect_le
    width grid ha ha_one
  change (Real.sqrt a - Real.sqrt b) ^ 2 ≤ a / w + w / (N : ℝ)
  exact roots.trans defect

theorem dSVDensityRationalCanonicalAcceptedTarget_distance_sq_le
    {d N : ℕ} {w : ℝ} (width : 0 < w) (grid : 0 < N)
    (ξ : BipartiteUnitVector d) :
    ‖ξ.val - dSVDensityRationalCanonicalAcceptedTarget
        w N ξ‖ ^ 2 ≤ 1 / w + (d : ℝ) * w / (N : ℝ) := by
  rw [dSVDensityRationalCanonicalAcceptedTarget_distance_sq_eq]
  calc
    (∑ i : Fin d,
      (dSVUniformDensityPolarLeftSchmidtCoefficient ξ i -
        dSVDensityRationalCanonicalAcceptedCoefficient
          w N ξ i) ^ 2) ≤
      ∑ i : Fin d,
        (((dSVSoftBobLeftReducedDensity_posSemidef ξ).isHermitian.eigenvalues i) / w +
          w / (N : ℝ)) :=
      Finset.sum_le_sum (fun i _ =>
        dSVDensityRationalCanonicalAcceptedCoefficient_error_sq_le
          width grid ξ i)
    _ = 1 / w + (d : ℝ) * w / (N : ℝ) := by
      rw [Finset.sum_add_distrib, ← Finset.sum_div]
      rw [positiveDensity_eigenvalues_sum
        (dSVSoftBobLeftReducedDensity ξ)
        (dSVSoftBobLeftReducedDensity_posSemidef ξ)
        (dSVSoftBobLeftReducedDensity_trace ξ)]
      simp
      ring

theorem dSVDensityRationalCanonicalAcceptedTarget_distance_le
    {d N : ℕ} {w : ℝ} (width : 0 < w) (grid : 0 < N)
    (ξ : BipartiteUnitVector d) :
    ‖ξ.val - dSVDensityRationalCanonicalAcceptedTarget
        w N ξ‖ ≤
      Real.sqrt (1 / w + (d : ℝ) * w / (N : ℝ)) := by
  have nonnegative : 0 ≤ 1 / w + (d : ℝ) * w / (N : ℝ) := by
    positivity
  have squared :=
    dSVDensityRationalCanonicalAcceptedTarget_distance_sq_le
      width grid ξ
  have exact_sqrt := Real.sq_sqrt nonnegative
  nlinarith [norm_nonneg
    (ξ.val - dSVDensityRationalCanonicalAcceptedTarget w N ξ),
    Real.sqrt_nonneg (1 / w + (d : ℝ) * w / (N : ℝ))]

theorem dSVDensityRationalCanonicalAcceptedTarget_ne_zero
    {d N : ℕ} {w : ℝ} (width : 0 < w) (grid : 0 < N)
    (fine : (d : ℝ) / (N : ℝ) < 1 / (w + 1))
    (ξ : BipartiteUnitVector d) :
    dSVDensityRationalCanonicalAcceptedTarget w N ξ ≠ 0 := by
  intro zero
  have actual :=
    dSVDensityRationalCanonicalAcceptedTarget_norm_sq
      width N ξ
  rw [zero, norm_zero, zero_pow (by norm_num : 2 ≠ 0)] at actual
  have lower :=
    dSVDensityRationalLeftProjectiveDiagonalMass_lower
      width grid ξ
  nlinarith

theorem dSVDensityRationalCanonicalNormalizedTarget_distance_le
    {d N : ℕ} {w : ℝ} (width : 0 < w) (grid : 0 < N)
    (fine : (d : ℝ) / (N : ℝ) < 1 / (w + 1))
    (ξ : BipartiteUnitVector d) :
    ‖ξ.val - dSVDensityRationalCanonicalNormalizedTarget
        w N ξ‖ ≤
      2 * Real.sqrt (1 / w + (d : ℝ) * w / (N : ℝ)) := by
  let v := dSVDensityRationalCanonicalAcceptedTarget w N ξ
  have nonzero : v ≠ 0 :=
    dSVDensityRationalCanonicalAcceptedTarget_ne_zero
      width grid fine ξ
  have reverse : |1 - ‖v‖| ≤ ‖ξ.val - v‖ := by
    have actual := abs_norm_sub_norm_le ξ.val v
    simpa [ξ.property] using actual
  have movement :
      ‖v - NormedSpace.normalize v‖ = |1 - ‖v‖| := by
    rw [norm_sub_rev]
    exact dSVUniformDensity_normalize_sub_self_norm v nonzero
  change ‖ξ.val - NormedSpace.normalize v‖ ≤ _
  calc
    ‖ξ.val - NormedSpace.normalize v‖ =
      ‖(ξ.val - v) + (v - NormedSpace.normalize v)‖ := by
        congr 1
        abel
    _ ≤ ‖ξ.val - v‖ + ‖v - NormedSpace.normalize v‖ :=
      norm_add_le _ _
    _ ≤ 2 * ‖ξ.val - v‖ := by
      rw [movement]
      linarith
    _ ≤ 2 * Real.sqrt (1 / w + (d : ℝ) * w / (N : ℝ)) := by
      gcongr
      exact dSVDensityRationalCanonicalAcceptedTarget_distance_le
        width grid ξ

theorem dSVDensityRationalCanonicalAcceptedUnitTarget_distance_le
    {d N : ℕ} {w : ℝ} (width : 0 < w) (grid : 0 < N)
    (fine : (d : ℝ) / (N : ℝ) < 1 / (w + 1))
    (ξ : BipartiteUnitVector d) :
    ‖ξ.val -
        (dSVDensityRationalCanonicalAcceptedUnitTarget
          width grid fine ξ).val‖ ≤
      2 * Real.sqrt (1 / w + (d : ℝ) * w / (N : ℝ)) :=
  dSVDensityRationalCanonicalNormalizedTarget_distance_le
    width grid fine ξ

end

noncomputable section

open WithLp
open scoped BigOperators Kronecker ComplexOrder MatrixOrder

theorem dSVDensityRationalPublicBucketCoherentPhaseHistory_apply
    {H : Type*} [Fintype H] (B : ℕ)
    (history : EuclideanSpace ℂ (H × H))
    (φ ψ : Fin B) (a b : H) :
    dSVDensityRationalPublicBucketCoherentPhaseHistory
        B history ((φ, a), (ψ, b)) =
      ePRState B (φ, ψ) * history (a, b) := by
  rfl

theorem dSVDensityRationalPublicBucketCoherentPhaseHistory_apply_norm_sq
    {H : Type*} [Fintype H] {B : ℕ}
    (positive : 0 < B)
    (history : EuclideanSpace ℂ (H × H))
    (φ ψ : Fin B) (a b : H) :
    ‖dSVDensityRationalPublicBucketCoherentPhaseHistory
        B history ((φ, a), (ψ, b))‖ ^ 2 =
      (if φ = ψ then (B : ℝ)⁻¹ else 0) *
        ‖history (a, b)‖ ^ 2 := by
  rw [dSVDensityRationalPublicBucketCoherentPhaseHistory_apply,
    norm_mul, mul_pow]
  by_cases same : φ = ψ
  · subst ψ
    simp only [ePRState, ↓reduceIte]
    rw [Complex.norm_real, Real.norm_eq_abs,
      abs_of_nonneg (inv_nonneg.mpr (Real.sqrt_nonneg _)),
      inv_pow, Real.sq_sqrt (by positivity : (0 : ℝ) ≤ B)]
  · simp [ePRState, same]

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

open scoped BigOperators ComplexOrder Kronecker MatrixOrder
  Matrix.Norms.L2Operator InnerProductSpace

set_option backward.isDefEq.respectTransparency false
set_option maxHeartbeats 8000000
set_option maxRecDepth 2048

open QuantumParallelRepetition.ClassicalInformation

attribute [local instance] Classical.propDecidable

variable {X Y A B : Type*}
variable [Fintype X] [Fintype Y] [Fintype A] [Fintype B]

theorem exactFairOperatorEntropyBound_of_positive
    (G : Game X Y A B) (n : ℕ) (S : Strategy (G.repeat n))
    (D : Finset (Fin n))
    (remaining : 0 < (Finset.univ \ D).card)
    (positive : 0 < repeatedPostselectionMass G n S D) :
    ExactFairOperatorEntropyBound G n S D
      (martingaleRate G n S D) :=
  ⟨exactFairAcceptedAliceEntropy_le_sourceRate
      G n S D remaining positive,
    exactFairAcceptedBobEntropy_le_sourceRate
      G n S D remaining positive⟩

theorem exactSourceStateDistanceBound_of_positive
    (G : Game X Y A B) (n : ℕ) (S : Strategy (G.repeat n))
    (D : Finset (Fin n))
    (remaining : 0 < (Finset.univ \ D).card)
    (positive : 0 < repeatedPostselectionMass G n S D) :
    ExactSourceStateDistanceBound G n S D
      (martingaleRate G n S D) :=
  exactSourceStateDistanceBound_of_fair_operator_entropy
    G n S D (martingaleRate G n S D) positive
    (exactFairOperatorEntropyBound_of_positive
      G n S D remaining positive)

end

noncomputable section

open WithLp
open scoped BigOperators Kronecker ComplexOrder MatrixOrder

theorem
    dSVDensityRationalMixedCanonicalPrefixPhysicalSigmaWeighted_norm_sq
    {H : Type*} [Fintype H] {n : ℕ}
    (history : EuclideanSpace ℂ (H × H))
    (work : H → H → EuclideanSpace ℂ (Fin n × Fin n)) :
    ‖dSVUniformDensityCorrectedMatchedSigmaWeightedResidual
        history work‖ ^ 2 =
      ∑ i : H, ∑ j : H,
        ‖history (i, j)‖ ^ 2 * ‖work i j‖ ^ 2 := by
  have zero :
      dSVUniformDensityCorrectedMatchedSigmaWeightedResidual
          history (fun _ _ => (0 : EuclideanSpace ℂ (Fin n × Fin n))) =
        0 := by
    ext q
    simp [dSVUniformDensityCorrectedMatchedSigmaWeightedResidual]
  have distance :=
    dSVUniformDensityCorrectedMatchedSigmaWeightedResidual_distance_sq
      history work (fun _ _ => (0 : EuclideanSpace ℂ (Fin n × Fin n)))
  simpa [zero] using distance

end

noncomputable section

open WithLp
open scoped BigOperators Kronecker ComplexOrder MatrixOrder
  Matrix.Norms.L2Operator InnerProductSpace

theorem unconditionalMatchedVerifierTensor_norm_sq
    {s t : Type*} [Fintype s] [Fintype t]
    (target : EuclideanSpace ℂ s)
    (work : EuclideanSpace ℂ t) :
    ‖unconditionalMatchedVerifierTensor target work‖ ^ 2 =
      ‖target‖ ^ 2 * ‖work‖ ^ 2 := by
  classical
  rw [EuclideanSpace.norm_sq_eq, Fintype.sum_prod_type]
  change
    (∑ i : s, ∑ j : t, ‖target i * work j‖ ^ 2) =
      ‖target‖ ^ 2 * ‖work‖ ^ 2
  simp_rw [norm_mul, mul_pow]
  rw [← Fintype.sum_mul_sum, ← EuclideanSpace.norm_sq_eq,
    ← EuclideanSpace.norm_sq_eq]

variable {X Y A B : Type*}
variable [Fintype X] [Fintype Y] [Fintype A] [Fintype B]

end

noncomputable section

open WithLp
open scoped BigOperators Kronecker ComplexOrder MatrixOrder
  Matrix.Norms.L2Operator InnerProductSpace

@[simp] theorem unconditionalConjugatePureVector_apply
    {ι : Type*} [Fintype ι]
    (z : EuclideanSpace ℂ ι) (i : ι) :
    unconditionalConjugatePureVector z i = star (z i) := by
  rfl

theorem unconditionalConjugatePureVector_norm_sq
    {ι : Type*} [Fintype ι] (z : EuclideanSpace ℂ ι) :
    ‖unconditionalConjugatePureVector z‖ ^ 2 = ‖z‖ ^ 2 := by
  simp [EuclideanSpace.norm_sq_eq]

theorem unconditionalConjugatePureVector_norm
    {ι : Type*} [Fintype ι] (z : EuclideanSpace ℂ ι) :
    ‖unconditionalConjugatePureVector z‖ = ‖z‖ := by
  have squares := unconditionalConjugatePureVector_norm_sq z
  nlinarith [norm_nonneg (unconditionalConjugatePureVector z),
    norm_nonneg z]

end

noncomputable section

open WithLp
open scoped BigOperators Kronecker ComplexOrder MatrixOrder
  Matrix.Norms.L2Operator InnerProductSpace

theorem unconditionalSelectedCopy_coherentPhaseSigma_norm_sq
    {H : Type*} [Fintype H] {B m : ℕ}
    (phases : 0 < B)
    (history : EuclideanSpace ℂ (H × H))
    (work : H → H → EuclideanSpace ℂ (Fin m × Fin m)) :
    ‖dSVDensityRationalPublicBucketCoherentPhaseSigmaState
        B history (fun _ i j => work i j)‖ ^ 2 =
      ‖dSVUniformDensityCorrectedMatchedSigmaWeightedResidual
        history work‖ ^ 2 := by
  classical
  unfold dSVDensityRationalPublicBucketCoherentPhaseSigmaState
  rw [dSVDensityRationalMixedCanonicalPrefixPhysicalSigmaWeighted_norm_sq,
    dSVDensityRationalMixedCanonicalPrefixPhysicalSigmaWeighted_norm_sq]
  simp only [Fintype.sum_prod_type]
  simp_rw [
    dSVDensityRationalPublicBucketCoherentPhaseHistory_apply_norm_sq
      phases]
  have phase_ne : (B : ℝ) ≠ 0 := by
    exact_mod_cast (Nat.ne_of_gt phases)
  calc
    (∑ φ : Fin B, ∑ i : H, ∑ ψ : Fin B, ∑ j : H,
        (if φ = ψ then (B : ℝ)⁻¹ else 0) *
          ‖history (i, j)‖ ^ 2 * ‖work i j‖ ^ 2) =
        ∑ φ : Fin B, ∑ i : H, ∑ j : H,
          (B : ℝ)⁻¹ * ‖history (i, j)‖ ^ 2 * ‖work i j‖ ^ 2 := by
            apply Finset.sum_congr rfl
            intro φ _
            apply Finset.sum_congr rfl
            intro i _
            simp
    _ = _ := by
      calc
        (∑ φ : Fin B, ∑ i : H, ∑ j : H,
            (B : ℝ)⁻¹ * ‖history (i, j)‖ ^ 2 * ‖work i j‖ ^ 2) =
          ∑ _φ : Fin B, (B : ℝ)⁻¹ *
            (∑ i : H, ∑ j : H,
              ‖history (i, j)‖ ^ 2 * ‖work i j‖ ^ 2) := by
              apply Finset.sum_congr rfl
              intro φ _
              simp_rw [Finset.mul_sum]
              apply Finset.sum_congr rfl
              intro i _
              apply Finset.sum_congr rfl
              intro j _
              ring
        _ = _ := by
          rw [Finset.sum_const, Finset.card_univ,
            Fintype.card_fin, nsmul_eq_mul]
          field_simp

theorem unconditionalSelectedCopy_coherentPhaseConstantWork_norm_sq
    {H : Type*} [Fintype H] {B m : ℕ}
    (phases : 0 < B)
    (history : EuclideanSpace ℂ (H × H))
    (work : EuclideanSpace ℂ (Fin m × Fin m)) :
    ‖dSVDensityRationalPublicBucketCoherentPhaseSigmaState
        B history (fun _ _ _ => work)‖ ^ 2 =
      ‖history‖ ^ 2 * ‖work‖ ^ 2 := by
  rw [unconditionalSelectedCopy_coherentPhaseSigma_norm_sq
    phases history (fun _ _ => work),
    dSVDensityRationalMixedCanonicalPrefixPhysicalSigmaWeighted_norm_sq]
  calc
    (∑ i : H, ∑ j : H, ‖history (i, j)‖ ^ 2 * ‖work‖ ^ 2) =
        (∑ i : H, ∑ j : H, ‖history (i, j)‖ ^ 2) * ‖work‖ ^ 2 := by
          simp_rw [Finset.sum_mul]
    _ = _ := by
      congr 1
      rw [EuclideanSpace.norm_sq_eq, Fintype.sum_prod_type]

end

noncomputable section

open WithLp
open scoped BigOperators Kronecker ComplexOrder MatrixOrder
  Matrix.Norms.L2Operator InnerProductSpace

theorem unconditionalConjugatePureVector_sub_norm
    {ι : Type*} [Fintype ι]
    (x y : EuclideanSpace ℂ ι) :
    ‖unconditionalConjugatePureVector x -
      unconditionalConjugatePureVector y‖ = ‖x - y‖ := by
  have conjugate_sub :
      unconditionalConjugatePureVector x -
          unconditionalConjugatePureVector y =
        unconditionalConjugatePureVector (x - y) := by
    ext i
    simp [unconditionalConjugatePureVector, star_sub]
  rw [conjugate_sub, unconditionalConjugatePureVector_norm]

theorem unconditionalClippedConjugateUnitTarget_distance_sq_le
    {d N : ℕ} {w : ℝ}
    (width : 0 < w) (grid : 0 < N)
    (fine : (d : ℝ) / (N : ℝ) < 1 / (w + 1))
    (gamma : BipartiteUnitVector d)
    (psi : EuclideanSpace ℂ (Fin d × Fin d)) :
    ‖unconditionalConjugatePureVector psi -
      unconditionalConjugatePureVector
        (dSVDensityRationalCanonicalAcceptedUnitTarget
          width grid fine gamma).val‖ ^ 2 ≤
      2 * ‖psi - gamma.val‖ ^ 2 +
        8 * (1 / w + (d : ℝ) * w / (N : ℝ)) := by
  rw [unconditionalConjugatePureVector_sub_norm]
  let accepted : BipartiteUnitVector d :=
    dSVDensityRationalCanonicalAcceptedUnitTarget
      width grid fine gamma
  have triangle : ‖psi - accepted.val‖ ≤
      ‖psi - gamma.val‖ + ‖gamma.val - accepted.val‖ := by
    calc
      ‖psi - accepted.val‖ =
          ‖(psi - gamma.val) + (gamma.val - accepted.val)‖ := by
            congr 1
            abel
      _ ≤ _ := norm_add_le _ _
  have clipping :=
    dSVDensityRationalCanonicalAcceptedUnitTarget_distance_le
      width grid fine gamma
  have clipping_nonnegative :
      0 ≤ 1 / w + (d : ℝ) * w / (N : ℝ) := by
    positivity
  have clipping_squared :
      ‖gamma.val - accepted.val‖ ^ 2 ≤
        4 * (1 / w + (d : ℝ) * w / (N : ℝ)) := by
    change
      ‖gamma.val -
        (dSVDensityRationalCanonicalAcceptedUnitTarget
          width grid fine gamma).val‖ ^ 2 ≤ _
    nlinarith [
      norm_nonneg
        (gamma.val -
          (dSVDensityRationalCanonicalAcceptedUnitTarget
            width grid fine gamma).val),
      Real.sqrt_nonneg (1 / w + (d : ℝ) * w / (N : ℝ)),
      Real.sq_sqrt clipping_nonnegative]
  change ‖psi - accepted.val‖ ^ 2 ≤ _
  nlinarith [norm_nonneg (psi - accepted.val),
    norm_nonneg (psi - gamma.val),
    norm_nonneg (gamma.val - accepted.val),
    sq_nonneg (‖psi - gamma.val‖ - ‖gamma.val - accepted.val‖)]

theorem unconditionalMatchedVerifierTensor_sub_right
    {s t : Type*} [Fintype s] [Fintype t]
    (x y : EuclideanSpace ℂ s)
    (work : EuclideanSpace ℂ t) :
    unconditionalMatchedVerifierTensor x work -
      unconditionalMatchedVerifierTensor y work =
        unconditionalMatchedVerifierTensor (x - y) work := by
  ext q
  change x q.1 * work q.2 - y q.1 * work q.2 =
    (x q.1 - y q.1) * work q.2
  ring

theorem
    unconditionalWeightedClippedConjugateUnitSource_distance_sq_le
    {J : Type*} [Fintype J]
    {d N : ℕ} {w : ℝ}
    (width : 0 < w) (grid : 0 < N)
    (fine : (d : ℝ) / (N : ℝ) < 1 / (w + 1))
    (weight : J → ℝ)
    (weight_nonnegative : ∀ j, 0 ≤ weight j)
    (weight_normalized : (∑ j, weight j) = 1)
    (gamma : J → BipartiteUnitVector d)
    (psi : J → EuclideanSpace ℂ (Fin d × Fin d))
    (energy : ℝ)
    (energy_bound :
      (∑ j, weight j * ‖psi j - (gamma j).val‖ ^ 2) ≤ energy) :
    (∑ j, weight j *
      ‖unconditionalConjugatePureVector (psi j) -
        unconditionalConjugatePureVector
          (dSVDensityRationalCanonicalAcceptedUnitTarget
            width grid fine (gamma j)).val‖ ^ 2) ≤
      2 * energy + 8 * (1 / w + (d : ℝ) * w / (N : ℝ)) := by
  classical
  let clip : ℝ := 1 / w + (d : ℝ) * w / (N : ℝ)
  calc
    _ ≤ ∑ j, weight j *
        (2 * ‖psi j - (gamma j).val‖ ^ 2 + 8 * clip) := by
      apply Finset.sum_le_sum
      intro j _
      exact mul_le_mul_of_nonneg_left
        (unconditionalClippedConjugateUnitTarget_distance_sq_le
          width grid fine (gamma j) (psi j))
        (weight_nonnegative j)
    _ = 2 * (∑ j, weight j * ‖psi j - (gamma j).val‖ ^ 2) +
        (8 * clip) * (∑ j, weight j) := by
      rw [Finset.mul_sum, Finset.mul_sum, ← Finset.sum_add_distrib]
      apply Finset.sum_congr rfl
      intro j _
      ring
    _ = 2 * (∑ j, weight j * ‖psi j - (gamma j).val‖ ^ 2) +
        8 * clip := by
      rw [weight_normalized]
      ring
    _ ≤ 2 * energy + 8 * (1 / w + (d : ℝ) * w / (N : ℝ)) := by
      dsimp [clip]
      linarith

variable {X Y A B : Type*}
variable [Fintype X] [Fintype Y] [Fintype A] [Fintype B]

end

noncomputable section

open WithLp
open scoped BigOperators Kronecker ComplexOrder MatrixOrder
  Matrix.Norms.L2Operator InnerProductSpace

theorem unconditionalCoherentPhaseConstantWork_sub
    {H : Type*} [Fintype H] {B m : ℕ}
    (x y : EuclideanSpace ℂ (H × H))
    (work : EuclideanSpace ℂ (Fin m × Fin m)) :
    dSVDensityRationalPublicBucketCoherentPhaseSigmaState
        B x (fun _ _ _ => work) -
      dSVDensityRationalPublicBucketCoherentPhaseSigmaState
        B y (fun _ _ _ => work) =
      dSVDensityRationalPublicBucketCoherentPhaseSigmaState
        B (x - y) (fun _ _ _ => work) := by
  ext ⟨⟨⟨φ, i⟩, a⟩, ⟨⟨ψ, j⟩, b⟩⟩
  change
    (ePRState B (φ, ψ) * x (i, j)) * work (a, b) -
      (ePRState B (φ, ψ) * y (i, j)) * work (a, b) =
      (ePRState B (φ, ψ) *
        (x (i, j) - y (i, j))) * work (a, b)
  ring

theorem unconditionalStoppedPhaseHarmonic_distance_sq
    {H : Type*} [Fintype H] {B m : ℕ}
    (phases : 0 < B) (harmonic : 0 < m)
    (x y : EuclideanSpace ℂ (H × H)) :
    ‖dSVDensityRationalPublicBucketCoherentPhaseSigmaState
        B x (fun _ _ _ => embezzlementState m) -
      dSVDensityRationalPublicBucketCoherentPhaseSigmaState
        B y (fun _ _ _ => embezzlementState m)‖ ^ 2 =
      ‖x - y‖ ^ 2 := by
  rw [unconditionalCoherentPhaseConstantWork_sub,
    unconditionalSelectedCopy_coherentPhaseConstantWork_norm_sq
      phases,
    embezzlementState_norm m harmonic]
  ring

theorem unconditionalStoppedPhaseHarmonicDistance_sum_le
    {J K : Type*} [Fintype K]
    {d B m : ℕ}
    (phases : 0 < B) (harmonic : 0 < m)
    (x y : J → EuclideanSpace ℂ (Fin d × Fin d))
    {T : J × K → Type*} [∀ p, Fintype (T p)]
    (work : (p : J × K) → EuclideanSpace ℂ (T p))
    (work_row : ∀ j : J, (∑ k : K, ‖work (j, k)‖ ^ 2) ≤ 1)
    (j : J) :
    (∑ k : K,
      ‖unconditionalMatchedVerifierTensor
          (dSVDensityRationalPublicBucketCoherentPhaseSigmaState
            B (x j) (fun _ _ _ => embezzlementState m))
          (work (j, k)) -
        unconditionalMatchedVerifierTensor
          (dSVDensityRationalPublicBucketCoherentPhaseSigmaState
            B (y j) (fun _ _ _ => embezzlementState m))
          (work (j, k))‖ ^ 2) ≤
      ‖x j - y j‖ ^ 2 := by
  classical
  let sx := dSVDensityRationalPublicBucketCoherentPhaseSigmaState
    B (x j) (fun _ _ _ => embezzlementState m)
  let sy := dSVDensityRationalPublicBucketCoherentPhaseSigmaState
    B (y j) (fun _ _ _ => embezzlementState m)
  have stage : ‖sx - sy‖ ^ 2 = ‖x j - y j‖ ^ 2 :=
    unconditionalStoppedPhaseHarmonic_distance_sq
      phases harmonic (x j) (y j)
  change
    (∑ k : K,
      ‖unconditionalMatchedVerifierTensor sx (work (j, k)) -
        unconditionalMatchedVerifierTensor sy
          (work (j, k))‖ ^ 2) ≤ _
  calc
    _ = ∑ k : K, ‖sx - sy‖ ^ 2 * ‖work (j, k)‖ ^ 2 := by
      apply Finset.sum_congr rfl
      intro k _
      rw [unconditionalMatchedVerifierTensor_sub_right,
        unconditionalMatchedVerifierTensor_norm_sq]
    _ = ‖sx - sy‖ ^ 2 *
        (∑ k : K, ‖work (j, k)‖ ^ 2) := by
      rw [Finset.mul_sum]
    _ ≤ ‖sx - sy‖ ^ 2 :=
      mul_le_of_le_one_right (sq_nonneg _) (work_row j)
    _ = _ := stage

theorem unconditionalWeightedStoppedPhaseHarmonicClippedUnit_le
    {J K : Type*} [Fintype J] [Fintype K]
    {d N B m : ℕ} {w : ℝ}
    (width : 0 < w) (grid : 0 < N)
    (fine : (d : ℝ) / (N : ℝ) < 1 / (w + 1))
    (phases : 0 < B) (harmonic : 0 < m)
    (weight : J → ℝ)
    (weight_nonnegative : ∀ j, 0 ≤ weight j)
    (weight_normalized : (∑ j, weight j) = 1)
    (gamma : J → BipartiteUnitVector d)
    (psi : J → EuclideanSpace ℂ (Fin d × Fin d))
    (energy : ℝ)
    (energy_bound :
      (∑ j, weight j * ‖psi j - (gamma j).val‖ ^ 2) ≤ energy)
    {T : J × K → Type*} [∀ p, Fintype (T p)]
    (work : (p : J × K) → EuclideanSpace ℂ (T p))
    (work_row : ∀ j : J, (∑ k : K, ‖work (j, k)‖ ^ 2) ≤ 1) :
    (∑ j : J, weight j * ∑ k : K,
      ‖unconditionalMatchedVerifierTensor
          (dSVDensityRationalPublicBucketCoherentPhaseSigmaState
            B (unconditionalConjugatePureVector (psi j))
            (fun _ _ _ => embezzlementState m))
          (work (j, k)) -
        unconditionalMatchedVerifierTensor
          (dSVDensityRationalPublicBucketCoherentPhaseSigmaState
            B
            (unconditionalConjugatePureVector
              (dSVDensityRationalCanonicalAcceptedUnitTarget
                width grid fine (gamma j)).val)
            (fun _ _ _ => embezzlementState m))
          (work (j, k))‖ ^ 2) ≤
      2 * energy + 8 * (1 / w + (d : ℝ) * w / (N : ℝ)) := by
  classical
  calc
    _ ≤ ∑ j : J, weight j *
        ‖unconditionalConjugatePureVector (psi j) -
          unconditionalConjugatePureVector
            (dSVDensityRationalCanonicalAcceptedUnitTarget
              width grid fine (gamma j)).val‖ ^ 2 := by
      apply Finset.sum_le_sum
      intro j _
      exact mul_le_mul_of_nonneg_left
        (unconditionalStoppedPhaseHarmonicDistance_sum_le
          phases harmonic
          (fun i => unconditionalConjugatePureVector (psi i))
          (fun i => unconditionalConjugatePureVector
            (dSVDensityRationalCanonicalAcceptedUnitTarget
              width grid fine (gamma i)).val)
          work work_row j)
        (weight_nonnegative j)
    _ ≤ _ :=
      unconditionalWeightedClippedConjugateUnitSource_distance_sq_le
        width grid fine weight weight_nonnegative weight_normalized
        gamma psi energy energy_bound

end

end QuantumParallelRepetition


open QuantumParallelRepetition
open scoped ComplexOrder Matrix BigOperators InnerProductSpace
open Complex Matrix Finset
open WithLp
open scoped BigOperators Kronecker ComplexOrder MatrixOrder
  Matrix.Norms.L2Operator InnerProductSpace

theorem solution
    {X Y A B : Type*}
    [Fintype X] [Fintype Y] [Fintype A] [Fintype B]
    (G : Game X Y A B) (n : ℕ) (S : Strategy (G.repeat n))
    (D : Finset (Fin n))
    (remaining : 0 < (Finset.univ \ D).card)
    (positive : 0 < repeatedPostselectionMass G n S D)
    {w : ℝ} {N P m : ℕ}
    (width : 0 < w) (grid : 0 < N)
    (fine :
      (Fintype.card
        (ExactGlobalHistoryLocalIndex G n S D) : ℝ) /
        (N : ℝ) < 1 / (w + 1))
    (phases : 0 < P) (harmonic : 0 < m)
    {K : Type*} [Fintype K]
    {T : ExactLocallySampleableTuple X Y A B D × K → Type*}
    [∀ p, Fintype (T p)]
    (work :
      (p : ExactLocallySampleableTuple X Y A B D × K) →
        EuclideanSpace ℂ (T p))
    (work_row :
      ∀ u : ExactLocallySampleableTuple X Y A B D,
        (∑ k : K, ‖work (u, k)‖ ^ 2) ≤ 1) :
    (∑ u : ExactLocallySampleableTuple X Y A B D,
      exactLocallySampleableLaw G n S D u *
        ∑ k : K,
          ‖unconditionalMatchedVerifierTensor
              (dSVDensityRationalPublicBucketCoherentPhaseSigmaState
                P
                (unconditionalConjugatePureVector
                  (exactSourceTuplePsi G n S D u))
                (fun _ _ _ => embezzlementState m))
              (work (u, k)) -
            unconditionalMatchedVerifierTensor
              (dSVDensityRationalPublicBucketCoherentPhaseSigmaState
                P
                (unconditionalConjugatePureVector
                  (dSVDensityRationalCanonicalAcceptedUnitTarget
                    width grid fine
                    (unconditionalExactFairGammaUnit
                      G n S D u)).val)
                (fun _ _ _ => embezzlementState m))
              (work (u, k))‖ ^ 2) ≤
      16 * martingaleRate G n S D +
        8 * (1 / w +
          (Fintype.card
            (ExactGlobalHistoryLocalIndex G n S D) : ℝ) *
            w / (N : ℝ)) := by
  classical
  have source :=
    (exactSourceStateDistanceBound_of_positive
      G n S D remaining positive).1
  have energy :
      (∑ u : ExactLocallySampleableTuple X Y A B D,
        exactLocallySampleableLaw G n S D u *
          ‖exactSourceTuplePsi G n S D u -
            (unconditionalExactFairGammaUnit
              G n S D u).val‖ ^ 2) ≤
        8 * martingaleRate G n S D := by
    simpa only [unconditionalExactFairGammaUnit, norm_sub_rev]
      using source
  have result :=
    unconditionalWeightedStoppedPhaseHarmonicClippedUnit_le
      width grid fine phases harmonic
      (exactLocallySampleableLaw G n S D)
      (exactLocallySampleableLaw_nonneg G n S D positive)
      (exactLocallySampleableLaw_sum G n S D remaining positive)
      (unconditionalExactFairGammaUnit G n S D)
      (exactSourceTuplePsi G n S D)
      (8 * martingaleRate G n S D) energy work work_row
  convert result using 1
  ring
