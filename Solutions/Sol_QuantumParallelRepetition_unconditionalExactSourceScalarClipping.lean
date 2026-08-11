import Definitions.Def_quantum_parallel_repetition_game
import Definitions.Def_qpr_core_13
import Theorems.Thm_QuantumParallelRepetition_diagonalSchmidtState_norm_sq
import Theorems.Thm_QuantumParallelRepetition_dSVSoftBobLeftReducedDensity_posSemidef
import Theorems.Thm_QuantumParallelRepetition_exists_proofDSVUniformDensityPolarLeftCanonicalSchmidt
import Theorems.Thm_QuantumParallelRepetition_dSVDensityRationalLargeWidthRelativeMismatch_le_targetDistance
import Mathlib.Algebra.Algebra.Basic
import Mathlib.Algebra.Algebra.Defs
import Mathlib.Algebra.Algebra.Equiv
import Mathlib.Algebra.Algebra.Hom
import Mathlib.Algebra.Algebra.NonUnitalHom
import Mathlib.Algebra.BigOperators.Field
import Mathlib.Algebra.BigOperators.Finsupp.Basic
import Mathlib.Algebra.BigOperators.Group.Finset.Basic
import Mathlib.Algebra.BigOperators.Group.Finset.Defs
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
import Mathlib.Algebra.GroupWithZero.NeZero
import Mathlib.Algebra.GroupWithZero.Units.Basic
import Mathlib.Algebra.Module.Defs
import Mathlib.Algebra.Module.Pi
import Mathlib.Algebra.NeZero
import Mathlib.Algebra.Notation.Defs
import Mathlib.Algebra.Notation.Pi.Defs
import Mathlib.Algebra.Order.Archimedean.Defs
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
import Mathlib.Algebra.Order.Ring.Defs
import Mathlib.Algebra.Order.Ring.Unbundled.Basic
import Mathlib.Algebra.Order.Star.Basic
import Mathlib.Algebra.Ring.Defs
import Mathlib.Algebra.Ring.Equiv
import Mathlib.Algebra.Ring.Hom.Defs
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
import Mathlib.Analysis.Normed.Group.Defs
import Mathlib.Analysis.Normed.Group.Uniform
import Mathlib.Analysis.Normed.Lp.PiLp
import Mathlib.Analysis.Normed.Lp.WithLp
import Mathlib.Analysis.Normed.Module.Basic
import Mathlib.Analysis.Normed.Ring.Basic
import Mathlib.Analysis.RCLike.Basic
import Mathlib.Analysis.SpecialFunctions.Pow.Real
import Mathlib.Data.Complex.Basic
import Mathlib.Data.Complex.BigOperators
import Mathlib.Data.ENNReal.Basic
import Mathlib.Data.Finset.Card
import Mathlib.Data.Finset.Defs
import Mathlib.Data.Finset.Filter
import Mathlib.Data.Finsupp.Defs
import Mathlib.Data.Fintype.Basic
import Mathlib.Data.Fintype.Card
import Mathlib.Data.Fintype.Defs
import Mathlib.Data.Fintype.Fin
import Mathlib.Data.Fintype.Prod
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
import Mathlib.LinearAlgebra.Matrix.ConjTranspose
import Mathlib.LinearAlgebra.Matrix.Defs
import Mathlib.LinearAlgebra.Matrix.Hermitian
import Mathlib.LinearAlgebra.Matrix.Kronecker
import Mathlib.LinearAlgebra.Matrix.PosDef
import Mathlib.LinearAlgebra.Matrix.Trace
import Mathlib.LinearAlgebra.Matrix.Vec
import Mathlib.LinearAlgebra.UnitaryGroup
import Mathlib.MeasureTheory.Measure.MeasureSpace
import Mathlib.Order.Basic
import Mathlib.Order.Defs.LinearOrder
import Mathlib.Order.Defs.PartialOrder
import Mathlib.Order.Lattice
import Mathlib.Tactic.CancelDenoms.Core
import Mathlib.Tactic.FieldSimp.Lemmas
import Mathlib.Tactic.Linarith.Lemmas
import Mathlib.Tactic.Linarith.Preprocessing
import Mathlib.Tactic.NormNum.Basic
import Mathlib.Tactic.NormNum.Eq
import Mathlib.Tactic.NormNum.Ineq
import Mathlib.Tactic.NormNum.Inv
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

theorem dSVDensityRationalCanonicalAliceBasis_target
    {d : ℕ} (ξ : BipartiteUnitVector d) :
    ξ.val = schmidtVector
      (dSVUniformDensityPolarLeftSchmidtCoefficient ξ)
      (dSVDensityRationalCanonicalAliceBasis ξ)
      (dSVUniformDensityThresholdLeftBobBasis ξ) :=
  Classical.choose_spec
    (exists_proofDSVUniformDensityPolarLeftCanonicalSchmidt ξ)

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

end

noncomputable section

open WithLp
open scoped BigOperators ComplexOrder MatrixOrder

theorem dSVDensityRationalLargeWidthDiagonalMass_half
    {d N : ℕ} {w : ℝ} (width : 0 < w) (grid : 0 < N)
    (fine : (d : ℝ) / N ≤ 1 / (2 * (w + 1)))
    (ξ : BipartiteUnitVector d) :
    1 / (2 * (w + 1)) ≤
      dSVDensityRationalLeftProjectiveDiagonalMass w N ξ := by
  have denominator : 0 < w + 1 := by linarith
  have arithmetic :
      1 / (2 * (w + 1)) ≤ 1 / (w + 1) - (d : ℝ) / N := by
    have identity :
        1 / (w + 1) - 1 / (2 * (w + 1)) =
          1 / (2 * (w + 1)) := by
      field_simp; ring
    linarith
  exact arithmetic.trans
    (dSVDensityRationalLeftProjectiveDiagonalMass_lower
      width grid ξ)

theorem dSVDensityRationalLargeWidthDiagonalMass_pos
    {d N : ℕ} {w : ℝ} (width : 0 < w) (grid : 0 < N)
    (fine : (d : ℝ) / N ≤ 1 / (2 * (w + 1)))
    (ξ : BipartiteUnitVector d) :
    0 < dSVDensityRationalLeftProjectiveDiagonalMass w N ξ := by
  have lower := dSVDensityRationalLargeWidthDiagonalMass_half
    width grid fine ξ
  have positive : 0 < 1 / (2 * (w + 1)) := by positivity
  exact positive.trans_le lower

theorem dSVDensityRationalLargeWidth_exists_fine_grid
    (d : ℕ) (dimension : 0 < d)
    (w : ℝ) (width : 0 < w)
    (ε : ℝ) (precision : 0 < ε) :
    ∃ N : ℕ, 0 < N ∧
      2 * (w + 1) * ((d : ℝ) / N) ≤ ε := by
  have denominator : 0 < ε / (2 * (w + 1)) := by positivity
  obtain ⟨N, large⟩ :=
    exists_nat_gt ((d : ℝ) / (ε / (2 * (w + 1))))
  have real_dimension : 0 < (d : ℝ) := by exact_mod_cast dimension
  have real_grid : 0 < (N : ℝ) :=
    lt_trans (div_pos real_dimension denominator) large
  have grid : 0 < N := by exact_mod_cast real_grid
  refine ⟨N, grid, ?_⟩
  have crossed := (div_lt_iff₀ denominator).mp large
  have small : (d : ℝ) / N < ε / (2 * (w + 1)) := by
    apply (div_lt_iff₀ real_grid).mpr
    nlinarith
  have positive : 0 < 2 * (w + 1) := by positivity
  have scaled := (lt_div_iff₀ positive).mp small
  linarith

theorem dSVDensityRationalLargeWidth_exists_sourceUniformParameters
    (d : ℕ) (dimension : 0 < d)
    (ε : ℝ) (precision : 0 < ε) (small : ε ≤ 1) :
    ∃ (w : ℝ) (N : ℕ),
      1 ≤ w ∧ 0 < N ∧
      2 * (w + 1) * ((d : ℝ) / N) ≤ ε ∧
      (1 / w + w * ((d : ℝ) / N) ≤ 3 * ε / 2) ∧
      (∀ ξ : BipartiteUnitVector d,
        0 < dSVDensityRationalLeftProjectiveDiagonalMass
          w N ξ) ∧
      (∀ ξ ζ : BipartiteUnitVector d,
        dSVDensityRationalLeftProjectiveThresholdAtomMismatch
            w N ξ ζ /
          dSVDensityRationalLeftProjectiveDiagonalMass w N ξ ≤
            8 * Real.sqrt 2 * ‖ξ.val - ζ.val‖ + ε) := by
  let w : ℝ := 1 / ε
  have width : 0 < w := by dsimp [w]; positivity
  have large : 1 ≤ w := by
    dsimp [w]
    exact (le_div_iff₀ precision).mpr (by simpa using small)
  obtain ⟨N, grid, budget⟩ :=
    dSVDensityRationalLargeWidth_exists_fine_grid
      d dimension w width ε precision
  have fine : (d : ℝ) / N ≤ 1 / (2 * (w + 1)) := by
    have denominator : 0 < 2 * (w + 1) := by positivity
    apply (le_div_iff₀ denominator).mpr
    nlinarith
  have inverse : 1 / w = ε := by
    dsimp [w]
    field_simp
  have rounding : 1 / w + w * ((d : ℝ) / N) ≤ 3 * ε / 2 := by
    have grid_cost : w * ((d : ℝ) / N) ≤ ε / 2 := by
      have weight : 0 ≤ (d : ℝ) / N := by positivity
      nlinarith
    rw [inverse]
    linarith
  refine ⟨w, N, large, grid, budget, rounding, ?_, ?_⟩
  · intro ξ
    exact dSVDensityRationalLargeWidthDiagonalMass_pos
      width grid fine ξ
  · intro ξ ζ
    exact
      (dSVDensityRationalLargeWidthRelativeMismatch_le_targetDistance
        large grid fine ξ ζ).trans (by gcongr)

end

end QuantumParallelRepetition


open QuantumParallelRepetition
open scoped ComplexOrder Matrix BigOperators InnerProductSpace
open Complex Matrix Finset
open scoped BigOperators ComplexOrder Kronecker MatrixOrder
  Matrix.Norms.L2Operator InnerProductSpace

theorem solution
    (d : ℕ) (dimension : 0 < d)
    (alpha : ℝ) (alpha_positive : 0 < alpha)
    (alpha_bounded : alpha ≤ 1) :
    ∃ (w : ℝ) (N : ℕ),
      1 ≤ w ∧ 0 < N ∧
      2 * (w + 1) * ((d : ℝ) / N) ≤ alpha ^ (1 / 3 : ℝ) ∧
      (1 / w + (d : ℝ) * w / (N : ℝ) ≤
        3 * alpha ^ (1 / 3 : ℝ) / 2) ∧
      (∀ ξ : BipartiteUnitVector d,
        ‖ξ.val - dSVDensityRationalCanonicalAcceptedTarget
            w N ξ‖ ^ 2 ≤ 3 * alpha ^ (1 / 3 : ℝ) / 2) ∧
      (∀ ξ ζ : BipartiteUnitVector d,
        dSVDensityRationalLeftProjectiveThresholdAtomMismatch
            w N ξ ζ /
          dSVDensityRationalLeftProjectiveDiagonalMass w N ξ ≤
            8 * Real.sqrt 2 * ‖ξ.val - ζ.val‖ +
              alpha ^ (1 / 3 : ℝ)) := by
  have precision : 0 < alpha ^ (1 / 3 : ℝ) :=
    Real.rpow_pos_of_pos alpha_positive _
  have small : alpha ^ (1 / 3 : ℝ) ≤ 1 :=
    Real.rpow_le_one alpha_positive.le alpha_bounded (by norm_num)
  obtain ⟨w, N, width, grid, fine, rounding, _diagonal, mismatch⟩ :=
    dSVDensityRationalLargeWidth_exists_sourceUniformParameters
      d dimension (alpha ^ (1 / 3 : ℝ)) precision small
  have scalar :
      1 / w + (d : ℝ) * w / (N : ℝ) ≤
        3 * alpha ^ (1 / 3 : ℝ) / 2 := by
    calc
      1 / w + (d : ℝ) * w / (N : ℝ) =
          1 / w + w * ((d : ℝ) / N) := by ring
      _ ≤ 3 * alpha ^ (1 / 3 : ℝ) / 2 := rounding
  refine ⟨w, N, width, grid, fine, scalar, ?_, mismatch⟩
  intro ξ
  exact
    (dSVDensityRationalCanonicalAcceptedTarget_distance_sq_le
      (by linarith) grid ξ).trans scalar
