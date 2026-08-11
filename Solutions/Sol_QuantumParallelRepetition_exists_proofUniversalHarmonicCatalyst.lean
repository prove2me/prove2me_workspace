import Definitions.Def_quantum_parallel_repetition_game
import Definitions.Def_qpr_core_03
import Theorems.Thm_QuantumParallelRepetition_embezzlementState_norm
import Theorems.Thm_QuantumParallelRepetition_diagonalSchmidtState_norm_sq
import Mathlib.Algebra.Algebra.Basic
import Mathlib.Algebra.Algebra.Defs
import Mathlib.Algebra.Algebra.Equiv
import Mathlib.Algebra.Algebra.Hom
import Mathlib.Algebra.Algebra.NonUnitalHom
import Mathlib.Algebra.BigOperators.Group.Finset.Basic
import Mathlib.Algebra.BigOperators.Group.Finset.Defs
import Mathlib.Algebra.BigOperators.Group.Finset.Piecewise
import Mathlib.Algebra.BigOperators.Pi
import Mathlib.Algebra.BigOperators.Ring.Finset
import Mathlib.Algebra.CharP.Defs
import Mathlib.Algebra.CharZero.Defs
import Mathlib.Algebra.Field.Defs
import Mathlib.Algebra.Group.Action.Defs
import Mathlib.Algebra.Group.Action.Opposite
import Mathlib.Algebra.Group.Action.Pi
import Mathlib.Algebra.Group.Basic
import Mathlib.Algebra.Group.Defs
import Mathlib.Algebra.Group.End
import Mathlib.Algebra.Group.Hom.Defs
import Mathlib.Algebra.Group.Opposite
import Mathlib.Algebra.Group.Pi.Basic
import Mathlib.Algebra.Group.Submonoid.Defs
import Mathlib.Algebra.GroupWithZero.Action.Defs
import Mathlib.Algebra.GroupWithZero.Action.Pi
import Mathlib.Algebra.GroupWithZero.Basic
import Mathlib.Algebra.GroupWithZero.Defs
import Mathlib.Algebra.GroupWithZero.Hom
import Mathlib.Algebra.GroupWithZero.NeZero
import Mathlib.Algebra.GroupWithZero.Units.Basic
import Mathlib.Algebra.GroupWithZero.Units.Lemmas
import Mathlib.Algebra.Module.Defs
import Mathlib.Algebra.Module.Equiv.Defs
import Mathlib.Algebra.Module.LinearMap.Defs
import Mathlib.Algebra.Module.Pi
import Mathlib.Algebra.Module.Submodule.Defs
import Mathlib.Algebra.Module.Submodule.Ker
import Mathlib.Algebra.NeZero
import Mathlib.Algebra.Notation.Defs
import Mathlib.Algebra.Notation.Pi.Basic
import Mathlib.Algebra.Opposites
import Mathlib.Algebra.Order.Archimedean.Defs
import Mathlib.Algebra.Order.BigOperators.Group.Finset
import Mathlib.Algebra.Order.Floor.Defs
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
import Mathlib.Algebra.Order.ZeroLEOne
import Mathlib.Algebra.Ring.CompTypeclasses
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
import Mathlib.Analysis.Complex.Exponential
import Mathlib.Analysis.Complex.Norm
import Mathlib.Analysis.Complex.Order
import Mathlib.Analysis.InnerProductSpace.Adjoint
import Mathlib.Analysis.InnerProductSpace.Basic
import Mathlib.Analysis.InnerProductSpace.Defs
import Mathlib.Analysis.InnerProductSpace.Orthonormal
import Mathlib.Analysis.InnerProductSpace.PiL2
import Mathlib.Analysis.InnerProductSpace.Positive
import Mathlib.Analysis.InnerProductSpace.Spectrum
import Mathlib.Analysis.Matrix.Normed
import Mathlib.Analysis.Matrix.Order
import Mathlib.Analysis.Normed.Field.Basic
import Mathlib.Analysis.Normed.Field.Lemmas
import Mathlib.Analysis.Normed.Group.Basic
import Mathlib.Analysis.Normed.Group.Defs
import Mathlib.Analysis.Normed.Group.Real
import Mathlib.Analysis.Normed.Group.Uniform
import Mathlib.Analysis.Normed.Lp.PiLp
import Mathlib.Analysis.Normed.Lp.WithLp
import Mathlib.Analysis.Normed.Module.Basic
import Mathlib.Analysis.Normed.Ring.Basic
import Mathlib.Analysis.RCLike.Basic
import Mathlib.Analysis.SpecialFunctions.Log.Basic
import Mathlib.Data.Complex.Basic
import Mathlib.Data.Complex.BigOperators
import Mathlib.Data.ENNReal.Basic
import Mathlib.Data.Fin.Tuple.Sort
import Mathlib.Data.Finset.Card
import Mathlib.Data.Finset.Defs
import Mathlib.Data.Finset.Empty
import Mathlib.Data.Finset.Filter
import Mathlib.Data.Finset.Image
import Mathlib.Data.Finset.Max
import Mathlib.Data.Finset.Range
import Mathlib.Data.Fintype.Basic
import Mathlib.Data.Fintype.BigOperators
import Mathlib.Data.Fintype.Card
import Mathlib.Data.Fintype.Defs
import Mathlib.Data.Fintype.EquivFin
import Mathlib.Data.Fintype.Prod
import Mathlib.Data.FunLike.Basic
import Mathlib.Data.FunLike.Equiv
import Mathlib.Data.Int.Cast.Defs
import Mathlib.Data.Matrix.Basic
import Mathlib.Data.Matrix.Diagonal
import Mathlib.Data.Matrix.Mul
import Mathlib.Data.Matrix.PEquiv
import Mathlib.Data.Nat.Cast.Basic
import Mathlib.Data.Nat.Cast.Defs
import Mathlib.Data.Nat.Cast.Order.Basic
import Mathlib.Data.Nat.Init
import Mathlib.Data.PEquiv
import Mathlib.Data.Prod.Basic
import Mathlib.Data.Rat.BigOperators
import Mathlib.Data.Rat.Cast.CharZero
import Mathlib.Data.Rat.Cast.Defs
import Mathlib.Data.Rat.Defs
import Mathlib.Data.Real.Archimedean
import Mathlib.Data.Real.Basic
import Mathlib.Data.Real.Sqrt
import Mathlib.Data.Real.Star
import Mathlib.Data.Real.StarOrdered
import Mathlib.Data.Set.CoeSort
import Mathlib.Data.Set.Defs
import Mathlib.Data.Set.Restrict
import Mathlib.Data.SetLike.Basic
import Mathlib.GroupTheory.GroupAction.Hom
import Mathlib.LinearAlgebra.Complex.Module
import Mathlib.LinearAlgebra.DFinsupp
import Mathlib.LinearAlgebra.Dimension.Finrank
import Mathlib.LinearAlgebra.FiniteDimensional.Defs
import Mathlib.LinearAlgebra.Matrix.ConjTranspose
import Mathlib.LinearAlgebra.Matrix.Defs
import Mathlib.LinearAlgebra.Matrix.Kronecker
import Mathlib.LinearAlgebra.Matrix.Permutation
import Mathlib.LinearAlgebra.Matrix.Vec
import Mathlib.LinearAlgebra.UnitaryGroup
import Mathlib.Logic.Embedding.Basic
import Mathlib.Logic.Equiv.Defs
import Mathlib.Logic.Equiv.Fin.Basic
import Mathlib.Logic.Equiv.Prod
import Mathlib.Logic.IsEmpty.Defs
import Mathlib.MeasureTheory.Measure.MeasureSpace
import Mathlib.NumberTheory.Harmonic.Bounds
import Mathlib.NumberTheory.Harmonic.Defs
import Mathlib.Order.Basic
import Mathlib.Order.Defs.LinearOrder
import Mathlib.Order.Defs.PartialOrder
import Mathlib.Order.Fin.Basic
import Mathlib.Order.Interval.Finset.Defs
import Mathlib.Order.Interval.Finset.Fin
import Mathlib.Order.Lattice
import Mathlib.Order.Monotone.Defs
import Mathlib.RingTheory.PicardGroup
import Mathlib.Tactic.CancelDenoms.Core
import Mathlib.Tactic.FieldSimp.Lemmas
import Mathlib.Tactic.Linarith.Lemmas
import Mathlib.Tactic.Linarith.Preprocessing
import Mathlib.Tactic.NormNum.Basic
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

theorem rawEmbezzlementState_ne_zero
    (n : ℕ) (hn : 0 < n) :
    rawEmbezzlementState n ≠ 0 := by
  intro h
  let j : Fin n := ⟨0, hn⟩
  have hj := congrArg
    (fun z : EuclideanSpace ℂ (Fin n × Fin n) => z (j, j)) h
  simp [rawEmbezzlementState, j] at hj

theorem rawEmbezzlementState_norm_sq (n : ℕ) :
    ‖rawEmbezzlementState n‖ ^ 2 =
      harmonicNumber n := by
  classical
  have hamp (j : Fin n) :
      ‖(↑((Real.sqrt ((j.val : ℝ) + 1))⁻¹) : ℂ)‖ ^ 2 =
        ((j.val : ℝ) + 1)⁻¹ := by
    rw [Complex.norm_real, Real.norm_eq_abs,
      abs_of_nonneg (by positivity), inv_pow,
      Real.sq_sqrt (by positivity)]
  have hterm (i j : Fin n) :
      ‖if i = j then
        (↑((Real.sqrt ((i.val : ℝ) + 1))⁻¹) : ℂ)
      else
        0‖ ^ 2 =
      if i = j then
        ‖(↑((Real.sqrt ((i.val : ℝ) + 1))⁻¹) : ℂ)‖ ^ 2
      else
        0 := by
    split_ifs <;> simp
  rw [EuclideanSpace.norm_sq_eq, Fintype.sum_prod_type]
  unfold harmonicNumber
  apply Finset.sum_congr rfl
  intro i _
  change
    (∑ j : Fin n,
      ‖if i = j then
        (↑((Real.sqrt ((i.val : ℝ) + 1))⁻¹) : ℂ)
      else
        0‖ ^ 2) = ((i.val : ℝ) + 1)⁻¹
  calc
    (∑ j : Fin n,
      ‖if i = j then
        (↑((Real.sqrt ((i.val : ℝ) + 1))⁻¹) : ℂ)
      else
        0‖ ^ 2) =
        ‖(↑((Real.sqrt ((i.val : ℝ) + 1))⁻¹) : ℂ)‖ ^ 2 := by
          simp_rw [hterm]
          simp
    _ = ((i.val : ℝ) + 1)⁻¹ := hamp i

theorem embezzlementState_apply
    (n : ℕ) (i j : Fin n) :
    embezzlementState n (i, j) =
      (‖rawEmbezzlementState n‖⁻¹ : ℝ) •
        (if i = j then
          (↑((Real.sqrt ((i.val : ℝ) + 1))⁻¹) : ℂ)
        else
          0) := by
  rfl

theorem unitVector_distance_of_real_overlap
    {ι : Type*} [Fintype ι]
    (z w : EuclideanSpace ℂ ι)
    (hz : ‖z‖ = 1) (hw : ‖w‖ = 1)
    (ε : ℝ) (hε : 0 ≤ ε)
    (hoverlap : 1 - ε ≤ (inner ℂ z w).re) :
    ‖z - w‖ ≤ Real.sqrt (2 * ε) := by
  have hoverlap' : 1 - ε ≤ RCLike.re (inner ℂ z w) := by
    exact hoverlap
  have hsq : ‖z - w‖ ^ 2 ≤ 2 * ε := by
    rw [@norm_sub_sq ℂ, hz, hw]
    nlinarith [hoverlap']
  have hsqrt : (Real.sqrt (2 * ε)) ^ 2 = 2 * ε :=
    Real.sq_sqrt (by positivity)
  nlinarith [norm_nonneg (z - w), Real.sqrt_nonneg (2 * ε)]

theorem tensorEmbezzlementTarget_norm
    {d n : ℕ} (hn : 0 < n)
    (ξ : BipartiteUnitVector d) :
    ‖tensorEmbezzlementTarget (n := n) ξ‖ = 1 := by
  classical
  let e : ((Fin d × Fin d) × (Fin n × Fin n)) ≃
      (Fin (d * n) × Fin (d * n)) :=
    (Equiv.prodProdProdComm (Fin d) (Fin d) (Fin n) (Fin n)).trans
      (Equiv.prodCongr finProdFinEquiv finProdFinEquiv)
  have hpoint (p : (Fin d × Fin d) × (Fin n × Fin n)) :
      tensorEmbezzlementTarget (n := n) ξ (e p) =
        ξ.val p.1 * embezzlementState n p.2 := by
    rcases p with ⟨⟨a, b⟩, ⟨c, f⟩⟩
    change
      ξ.val
        ((finProdFinEquiv.symm (finProdFinEquiv (a, c))).1,
          (finProdFinEquiv.symm (finProdFinEquiv (b, f))).1) *
        embezzlementState n
          ((finProdFinEquiv.symm (finProdFinEquiv (a, c))).2,
            (finProdFinEquiv.symm (finProdFinEquiv (b, f))).2) =
        ξ.val (a, b) * embezzlementState n (c, f)
    simp only [Equiv.symm_apply_apply]
  have hsum :
      (∑ q : Fin (d * n) × Fin (d * n),
        ‖tensorEmbezzlementTarget (n := n) ξ q‖ ^ 2) =
      ∑ p : (Fin d × Fin d) × (Fin n × Fin n),
        ‖ξ.val p.1 * embezzlementState n p.2‖ ^ 2 := by
    calc
      (∑ q : Fin (d * n) × Fin (d * n),
        ‖tensorEmbezzlementTarget (n := n) ξ q‖ ^ 2) =
        ∑ p : (Fin d × Fin d) × (Fin n × Fin n),
          ‖tensorEmbezzlementTarget (n := n) ξ (e p)‖ ^ 2 :=
            (Equiv.sum_comp e
              (fun q : Fin (d * n) × Fin (d * n) =>
                ‖tensorEmbezzlementTarget (n := n) ξ q‖ ^ 2)).symm
      _ = ∑ p : (Fin d × Fin d) × (Fin n × Fin n),
          ‖ξ.val p.1 * embezzlementState n p.2‖ ^ 2 := by
            apply Finset.sum_congr rfl
            intro p _
            rw [hpoint p]
  have hfactor :
      (∑ p : (Fin d × Fin d) × (Fin n × Fin n),
        ‖ξ.val p.1 * embezzlementState n p.2‖ ^ 2) =
      (∑ a : Fin d × Fin d, ‖ξ.val a‖ ^ 2) *
        (∑ b : Fin n × Fin n,
          ‖embezzlementState n b‖ ^ 2) := by
    rw [Fintype.sum_prod_type]
    simp_rw [norm_mul, mul_pow]
    exact (Fintype.sum_mul_sum
      (fun a : Fin d × Fin d => ‖ξ.val a‖ ^ 2)
      (fun b : Fin n × Fin n =>
        ‖embezzlementState n b‖ ^ 2)).symm
  have hsquare :
      ‖tensorEmbezzlementTarget (n := n) ξ‖ ^ 2 = 1 := by
    rw [EuclideanSpace.norm_sq_eq, hsum, hfactor,
      ← EuclideanSpace.norm_sq_eq, ← EuclideanSpace.norm_sq_eq,
      ξ.property, embezzlementState_norm n hn]
    norm_num
  nlinarith [norm_nonneg (tensorEmbezzlementTarget (n := n) ξ)]

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

theorem schmidtVector_apply
    {d : ℕ}
    (σ : Fin d → ℝ)
    (U V : Matrix.unitaryGroup (Fin d) ℂ)
    (a b : Fin d) :
    schmidtVector σ U V (a, b) =
      ∑ i : Fin d, (σ i : ℂ) * U a i * V b i := by
  classical
  simp [schmidtVector, localUnitaryAction,
    Matrix.mulVec, dotProduct, Matrix.kroneckerMap_apply,
    diagonalSchmidtState, Fintype.sum_prod_type,
    mul_assoc, mul_comm]

end

noncomputable section

open scoped ComplexOrder Matrix BigOperators InnerProductSpace
open Complex Matrix Finset

theorem linearMap_exists_singularBases
    {d : ℕ}
    (T : EuclideanSpace ℂ (Fin d) →ₗ[ℂ]
      EuclideanSpace ℂ (Fin d)) :
    ∃ (σ : Fin d → ℝ)
      (u v : OrthonormalBasis (Fin d) ℂ
        (EuclideanSpace ℂ (Fin d))),
      (∀ i, 0 ≤ σ i) ∧
        (∀ i, T (v i) = (σ i : ℂ) • u i) := by
  classical
  let hT := T.isPositive_adjoint_comp_self
  let v : OrthonormalBasis (Fin d) ℂ
      (EuclideanSpace ℂ (Fin d)) :=
    hT.isSymmetric.eigenvectorBasis finrank_euclideanSpace_fin
  let σ : Fin d → ℝ := fun i =>
    Real.sqrt
      (hT.isSymmetric.eigenvalues finrank_euclideanSpace_fin i)
  have hσ (i : Fin d) : 0 ≤ σ i := Real.sqrt_nonneg _
  have hσsq (i : Fin d) :
      σ i ^ 2 =
        hT.isSymmetric.eigenvalues finrank_euclideanSpace_fin i := by
    exact Real.sq_sqrt
      (hT.nonneg_eigenvalues finrank_euclideanSpace_fin i)
  have heigen (i : Fin d) :
      (T.adjoint ∘ₗ T) (v i) = ((σ i ^ 2 : ℝ) : ℂ) • v i := by
    rw [hσsq]
    exact hT.isSymmetric.apply_eigenvectorBasis
      finrank_euclideanSpace_fin i
  let s : Set (Fin d) := {i | σ i ≠ 0}
  let f : Fin d → EuclideanSpace ℂ (Fin d) :=
    fun i => ((σ i : ℂ)⁻¹) • T (v i)
  have hGram (i j : Fin d) :
      inner ℂ (T (v i)) (T (v j)) =
        ((σ j ^ 2 : ℝ) : ℂ) *
          inner ℂ (v i) (v j) := by
    calc
      inner ℂ (T (v i)) (T (v j)) =
          inner ℂ (v i) (T.adjoint (T (v j))) :=
        (T.adjoint_inner_right (v i) (T (v j))).symm
      _ = inner ℂ (v i)
          (((σ j ^ 2 : ℝ) : ℂ) • v j) := by
        rw [← heigen j]
        rfl
      _ = ((σ j ^ 2 : ℝ) : ℂ) *
          inner ℂ (v i) (v j) := by
        rw [inner_smul_right]
  have hf : Orthonormal ℂ (s.restrict f) := by
    rw [orthonormal_iff_ite]
    intro i j
    have hi : (σ (i : Fin d) : ℂ) ≠ 0 := by
      exact_mod_cast i.property
    have hj : (σ (j : Fin d) : ℂ) ≠ 0 := by
      exact_mod_cast j.property
    change inner ℂ
      (((σ (i : Fin d) : ℂ)⁻¹) • T (v i))
      (((σ (j : Fin d) : ℂ)⁻¹) • T (v j)) = _
    rw [inner_smul_left, inner_smul_right, hGram,
      v.inner_eq_ite]
    by_cases hij : i = j
    · subst j
      simp only [ite_true, mul_one]
      have hs :
          starRingEnd ℂ ((σ (i : Fin d) : ℂ)⁻¹) =
            ((σ (i : Fin d) : ℂ)⁻¹) := by
        simp
      rw [hs]
      push_cast
      field_simp
    · have hval : (i : Fin d) ≠ (j : Fin d) := by
        intro h
        exact hij (Subtype.ext h)
      simp [hij, hval]
  obtain ⟨u, hu⟩ :=
    Orthonormal.exists_orthonormalBasis_extension_of_card_eq
      (by
        rw [Fintype.card_fin]
        exact finrank_euclideanSpace_fin) hf
  refine ⟨σ, u, v, hσ, ?_⟩
  intro i
  by_cases hi : σ i = 0
  · have hker : (T.adjoint ∘ₗ T) (v i) = 0 := by
      rw [heigen i, hi]
      simp
    have hTv : T (v i) = 0 := by
      apply LinearMap.mem_ker.mp
      rw [← T.ker_adjoint_comp_self]
      exact LinearMap.mem_ker.mpr hker
    simp [hi, hTv]
  · have hui : u i = f i := hu i hi
    rw [hui]
    change T (v i) =
      (σ i : ℂ) • (((σ i : ℂ)⁻¹) • T (v i))
    rw [smul_smul, mul_inv_cancel₀]
    · simp
    · exact_mod_cast hi

end

open scoped ComplexOrder Matrix BigOperators InnerProductSpace
open Complex Matrix Finset

noncomputable section

@[simp] theorem orthonormalBasisUnitary_apply
    {d : ℕ}
    (b : OrthonormalBasis (Fin d) ℂ
      (EuclideanSpace ℂ (Fin d)))
    (i j : Fin d) :
    orthonormalBasisUnitary b i j = b j i := by
  rfl

@[simp] theorem conjugateUnitary_apply
    {d : ℕ}
    (U : Matrix.unitaryGroup (Fin d) ℂ)
    (i j : Fin d) :
    conjugateUnitary U i j = star (U i j) := by
  rfl

theorem exists_proofSchmidtDecomposition
    {d : ℕ}
    (ξ : EuclideanSpace ℂ (Fin d × Fin d)) :
    ∃ (σ : Fin d → ℝ)
      (U V : Matrix.unitaryGroup (Fin d) ℂ),
      (∀ i, 0 ≤ σ i) ∧
        ξ = schmidtVector σ U V := by
  classical
  let C : Matrix (Fin d) (Fin d) ℂ := fun b a => ξ (a, b)
  let T : EuclideanSpace ℂ (Fin d) →ₗ[ℂ]
      EuclideanSpace ℂ (Fin d) := Matrix.toEuclideanLin C
  obtain ⟨σ, u, v, hσ, hsing⟩ :=
    linearMap_exists_singularBases T
  refine ⟨σ,
    conjugateUnitary (orthonormalBasisUnitary v),
    orthonormalBasisUnitary u, hσ, ?_⟩
  ext ⟨a, b⟩
  rw [schmidtVector_apply]
  have hrepr :
      T ((EuclideanSpace.basisFun (Fin d) ℂ) a) =
        ∑ i : Fin d,
          inner ℂ (v i) ((EuclideanSpace.basisFun (Fin d) ℂ) a) •
            T (v i) := by
    calc
      T ((EuclideanSpace.basisFun (Fin d) ℂ) a) =
          T (∑ i : Fin d,
            inner ℂ (v i) ((EuclideanSpace.basisFun (Fin d) ℂ) a) •
              v i) := by
        rw [v.sum_repr']
      _ = _ := by
        simp
  have hcoord := congrArg
    (fun z : EuclideanSpace ℂ (Fin d) => z b) hrepr
  simpa [T, C, Matrix.toLpLin_apply,
    EuclideanSpace.basisFun_apply, Matrix.mulVec_single_one,
    Matrix.col_apply, EuclideanSpace.inner_single_right,
    conjugateUnitary_apply,
    orthonormalBasisUnitary_apply, hsing,
    mul_assoc, mul_left_comm, mul_comm] using hcoord

theorem exists_proofUnitSchmidtDecomposition
    {d : ℕ}
    (ξ : BipartiteUnitVector d) :
    ∃ (σ : Fin d → ℝ)
      (U V : Matrix.unitaryGroup (Fin d) ℂ),
      (∀ i, 0 ≤ σ i) ∧
        (∑ i : Fin d, σ i ^ 2) = 1 ∧
        ξ.val = schmidtVector σ U V := by
  obtain ⟨σ, U, V, hσ, hξ⟩ :=
    exists_proofSchmidtDecomposition ξ.val
  refine ⟨σ, U, V, hσ, ?_, hξ⟩
  have hnorm : ‖schmidtVector σ U V‖ ^ 2 = 1 := by
    rw [← hξ, ξ.property]
    norm_num
  exact (schmidtVector_norm_sq σ U V).symm.trans hnorm

end

noncomputable section

open scoped BigOperators

theorem harmonicNumber_eq_harmonic (n : ℕ) :
    harmonicNumber n = (harmonic n : ℝ) := by
  unfold harmonicNumber harmonic
  rw [Finset.sum_fin_eq_sum_range]
  simp only [Rat.cast_sum, Rat.cast_inv, Nat.cast_add, Nat.cast_one]
  apply Finset.sum_congr rfl
  intro i hi
  simp [Finset.mem_range.mp hi]

theorem harmonicNumber_log_lower (n : ℕ) :
    Real.log ((n : ℝ) + 1) ≤ harmonicNumber n := by
  rw [harmonicNumber_eq_harmonic]
  simpa [Nat.cast_add, Nat.cast_one] using log_add_one_le_harmonic n

theorem harmonicNumber_log_upper (n : ℕ) :
    harmonicNumber n ≤ 1 + Real.log (n : ℝ) := by
  rw [harmonicNumber_eq_harmonic]
  exact harmonic_le_one_add_log n

theorem harmonicNumber_pos {n : ℕ} (hn : 0 < n) :
    0 < harmonicNumber n := by
  have hnreal : 0 < (n : ℝ) := by exact_mod_cast hn
  exact (Real.log_pos (by linarith : (1 : ℝ) < (n : ℝ) + 1)).trans_le
    (harmonicNumber_log_lower n)

theorem harmonicNumber_mul_le_add
    {d n : ℕ} (hd : 0 < d) (hn : 0 < n) :
    harmonicNumber (d * n) ≤
      harmonicNumber n + (1 + Real.log (d : ℝ)) := by
  have hdreal : 0 < (d : ℝ) := by exact_mod_cast hd
  have hnreal : 0 < (n : ℝ) := by exact_mod_cast hn
  have hlogn : Real.log (n : ℝ) ≤ harmonicNumber n := by
    exact (Real.log_le_log hnreal (by linarith :
      (n : ℝ) ≤ (n : ℝ) + 1)).trans
      (harmonicNumber_log_lower n)
  calc
    harmonicNumber (d * n) ≤
        1 + Real.log ((d * n : ℕ) : ℝ) :=
          harmonicNumber_log_upper (d * n)
    _ = 1 + (Real.log (d : ℝ) + Real.log (n : ℝ)) := by
      rw [Nat.cast_mul, Real.log_mul hdreal.ne' hnreal.ne']
    _ ≤ harmonicNumber n + (1 + Real.log (d : ℝ)) := by
      linarith

theorem exists_proofHarmonicNumber_gt (bound : ℝ) :
    ∃ n : ℕ, bound < harmonicNumber n := by
  obtain ⟨n, hn⟩ := exists_nat_gt (Real.exp bound)
  have hpositive : 0 < (n : ℝ) + 1 := by positivity
  have hlog : bound < Real.log ((n : ℝ) + 1) := by
    apply (Real.lt_log_iff_exp_lt hpositive).mpr
    exact lt_trans hn (by linarith)
  exact ⟨n, hlog.trans_le (harmonicNumber_log_lower n)⟩

theorem exists_proofHarmonicNumber_ratio_ge
    (d : ℕ) (hd : 0 < d)
    {ε : ℝ} (hε : 0 < ε) (hεone : ε ≤ 1) :
    ∃ n : ℕ, 0 < n ∧
      1 - ε ≤ harmonicNumber n /
        harmonicNumber (d * n) := by
  let C : ℝ := 1 + Real.log (d : ℝ)
  have hdreal : 0 < (d : ℝ) := by exact_mod_cast hd
  have hlogd : 0 ≤ Real.log (d : ℝ) := by
    apply Real.log_nonneg
    exact_mod_cast hd
  have hC : 0 < C := by
    dsimp [C]
    linarith
  obtain ⟨n, hnlarge⟩ :=
    exists_proofHarmonicNumber_gt (C / ε)
  have hn : 0 < n := by
    have hzero : harmonicNumber 0 = 0 := by
      rw [harmonicNumber_eq_harmonic]
      simp
    by_contra hnot
    have hnzero : n = 0 := by omega
    rw [hnzero, hzero] at hnlarge
    have hpositive : 0 < C / ε := div_pos hC hε
    linarith
  have hden : 0 < harmonicNumber (d * n) :=
    harmonicNumber_pos (Nat.mul_pos hd hn)
  have hupper := harmonicNumber_mul_le_add hd hn
  have hbudget : C < ε * harmonicNumber n := by
    have h := (div_lt_iff₀ hε).mp hnlarge
    nlinarith
  refine ⟨n, hn, (le_div_iff₀ hden).mpr ?_⟩
  have hscaled := mul_le_mul_of_nonneg_left
    hupper (sub_nonneg.mpr hεone)
  have hproduct : 0 ≤ ε * C := mul_nonneg hε.le hC.le
  change (1 - ε) * harmonicNumber (d * n) ≤
    harmonicNumber n
  change harmonicNumber (d * n) ≤
    harmonicNumber n + C at hupper
  change (1 - ε) * harmonicNumber (d * n) ≤
    (1 - ε) * (harmonicNumber n + C) at hscaled
  nlinarith

end

noncomputable section

open WithLp
open scoped BigOperators Kronecker

theorem localPermutationUnitaryAction_apply
    {n : ℕ} (σ : Equiv.Perm (Fin n))
    (ψ : EuclideanSpace ℂ (Fin n × Fin n))
    (i j : Fin n) :
    localUnitaryAction
      (permutationUnitary σ)
      (permutationUnitary σ) ψ (i, j) =
        ψ (σ i, σ j) := by
  let X : Matrix (Fin n) (Fin n) ℂ :=
    fun a b => ψ (b, a)
  have hx : ofLp ψ = Matrix.vec X := by
    funext q
    rcases q with ⟨a, b⟩
    rfl
  change
    (((σ.permMatrix ℂ) ⊗ₖ (σ.permMatrix ℂ)).mulVec
      (ofLp ψ)) (i, j) = ψ (σ i, σ j)
  rw [hx, Matrix.kronecker_mulVec_vec]
  change
    ((σ.permMatrix ℂ) * X *
      (σ.permMatrix ℂ).transpose) j i = ψ (σ i, σ j)
  rw [Matrix.transpose_permMatrix,
    PEquiv.toMatrix_toPEquiv_mul,
    PEquiv.mul_toMatrix_toPEquiv]
  rfl

theorem diagonalInner_real_eq_sum
    {N : ℕ}
    (z w : EuclideanSpace ℂ (Fin N × Fin N))
    (hz : ∀ i j : Fin N, i ≠ j → z (i, j) = 0) :
    (inner ℂ z w).re =
      ∑ i : Fin N, (inner ℂ (z (i, i)) (w (i, i))).re := by
  rw [PiLp.inner_apply, Complex.re_sum,
    Fintype.sum_prod_type]
  apply Finset.sum_congr rfl
  intro i _
  apply Finset.sum_eq_single i
  · intro j _ hji
    rw [hz i j (Ne.symm hji)]
    simp
  · simp

end

noncomputable section

open WithLp
open scoped BigOperators Kronecker ComplexOrder MatrixOrder

theorem harmonicSchmidtFiber_count_sq_le
    {n : ℕ} (a x : ℝ) (ha : 0 ≤ a) (hx : 0 ≤ x) :
    (((Finset.univ.filter fun j : Fin n =>
      x ≤ a * (Real.sqrt ((j.val : ℝ) + 1))⁻¹).card : ℕ) : ℝ) * x ^ 2 ≤
      a ^ 2 := by
  classical
  let S : Finset (Fin n) := Finset.univ.filter fun j : Fin n =>
    x ≤ a * (Real.sqrt ((j.val : ℝ) + 1))⁻¹
  change (S.card : ℝ) * x ^ 2 ≤ a ^ 2
  by_cases hs : S.Nonempty
  · let j : Fin n := S.max' hs
    have hjmem : j ∈ S := S.max'_mem hs
    have hjthreshold :
        x ≤ a * (Real.sqrt ((j.val : ℝ) + 1))⁻¹ :=
      (Finset.mem_filter.mp hjmem).2
    have hcard : S.card ≤ j.val + 1 := by
      calc
        S.card ≤ (Finset.Iic j).card := by
          apply Finset.card_le_card
          intro k hk
          exact Finset.mem_Iic.mpr (S.le_max' k hk)
        _ = j.val + 1 := by simp
    have hjpositive : 0 < (j.val : ℝ) + 1 := by positivity
    have hsqrtpositive : 0 < Real.sqrt ((j.val : ℝ) + 1) :=
      Real.sqrt_pos.2 hjpositive
    have hscaled :
        x * Real.sqrt ((j.val : ℝ) + 1) ≤ a := by
      apply (le_div_iff₀ hsqrtpositive).mp
      simpa [div_eq_mul_inv] using hjthreshold
    have hsquares :
        ((j.val : ℝ) + 1) * x ^ 2 ≤ a ^ 2 := by
      have hnonneg : 0 ≤ x * Real.sqrt ((j.val : ℝ) + 1) :=
        mul_nonneg hx (Real.sqrt_nonneg _)
      have hs :
          (x * Real.sqrt ((j.val : ℝ) + 1)) ^ 2 ≤ a ^ 2 := by
        nlinarith [mul_nonneg (sub_nonneg.mpr hscaled)
          (add_nonneg ha hnonneg)]
      rw [mul_pow, Real.sq_sqrt hjpositive.le] at hs
      nlinarith
    have hcardreal : (S.card : ℝ) ≤ (j.val : ℝ) + 1 := by
      exact_mod_cast hcard
    exact (mul_le_mul_of_nonneg_right hcardreal (sq_nonneg x)).trans
      hsquares
  · have hempty : S = ∅ := Finset.not_nonempty_iff_eq_empty.mp hs
    rw [hempty]
    simp [sq_nonneg a]

theorem descendingHarmonicSchmidtPermutation_antitone
    {d n : ℕ} (σ : Fin d → ℝ) :
    Antitone (fun q : Fin (d * n) =>
      harmonicTensorSchmidtAmplitude (n := n) σ
        (descendingHarmonicSchmidtPermutation
          (n := n) σ q)) := by
  intro i j hij
  have h := Tuple.monotone_sort
    (fun q : Fin (d * n) =>
      -harmonicTensorSchmidtAmplitude (n := n) σ q)
    hij
  exact neg_le_neg_iff.mp h

theorem harmonicSchmidtThreshold_card_eq
    {d n : ℕ} (σ : Fin d → ℝ) (x : ℝ) :
    (((Finset.univ.filter fun q : Fin (d * n) =>
      x ≤ harmonicTensorSchmidtAmplitude (n := n) σ q).card : ℕ) : ℝ) =
      ∑ i : Fin d,
        (((Finset.univ.filter fun j : Fin n =>
          x ≤ σ i * (Real.sqrt ((j.val : ℝ) + 1))⁻¹).card : ℕ) : ℝ) := by
  classical
  calc
    (((Finset.univ.filter fun q : Fin (d * n) =>
      x ≤ harmonicTensorSchmidtAmplitude (n := n) σ q).card : ℕ) : ℝ) =
      ∑ q : Fin (d * n),
        if x ≤ harmonicTensorSchmidtAmplitude (n := n) σ q
          then (1 : ℝ) else 0 := by
            simp
    _ = ∑ p : Fin d × Fin n,
      if x ≤ harmonicTensorSchmidtAmplitude (n := n) σ
          (finProdFinEquiv p)
        then (1 : ℝ) else 0 := by
          exact (Equiv.sum_comp finProdFinEquiv
            (fun q : Fin (d * n) =>
              if x ≤ harmonicTensorSchmidtAmplitude
                (n := n) σ q then (1 : ℝ) else 0)).symm
    _ = ∑ i : Fin d,
        (((Finset.univ.filter fun j : Fin n =>
          x ≤ σ i * (Real.sqrt ((j.val : ℝ) + 1))⁻¹).card : ℕ) : ℝ) := by
          rw [Fintype.sum_prod_type]
          apply Finset.sum_congr rfl
          intro i _
          simp [harmonicTensorSchmidtAmplitude]

theorem harmonicSchmidtThreshold_count_sq_le_one
    {d n : ℕ} (σ : Fin d → ℝ)
    (hσ : ∀ i, 0 ≤ σ i)
    (hunit : (∑ i : Fin d, σ i ^ 2) = 1)
    (x : ℝ) (hx : 0 ≤ x) :
    (((Finset.univ.filter fun q : Fin (d * n) =>
      x ≤ harmonicTensorSchmidtAmplitude (n := n) σ q).card : ℕ) : ℝ) *
        x ^ 2 ≤ 1 := by
  rw [harmonicSchmidtThreshold_card_eq]
  calc
    (∑ i : Fin d,
      (((Finset.univ.filter fun j : Fin n =>
        x ≤ σ i * (Real.sqrt ((j.val : ℝ) + 1))⁻¹).card : ℕ) : ℝ)) *
          x ^ 2 =
        ∑ i : Fin d,
          (((Finset.univ.filter fun j : Fin n =>
            x ≤ σ i * (Real.sqrt ((j.val : ℝ) + 1))⁻¹).card : ℕ) : ℝ) *
              x ^ 2 := by rw [Finset.sum_mul]
    _ ≤ ∑ i : Fin d, σ i ^ 2 := by
      apply Finset.sum_le_sum
      intro i _
      exact harmonicSchmidtFiber_count_sq_le
        (σ i) x (hσ i) hx
    _ = 1 := hunit

theorem descendingHarmonicSchmidtAmplitude_rank_sq_le_one
    {d n : ℕ} (σ : Fin d → ℝ)
    (hσ : ∀ i, 0 ≤ σ i)
    (hunit : (∑ i : Fin d, σ i ^ 2) = 1)
    (k : Fin (d * n)) :
    (((k.val : ℝ) + 1) *
      harmonicTensorSchmidtAmplitude (n := n) σ
        (descendingHarmonicSchmidtPermutation
          (n := n) σ k) ^ 2) ≤ 1 := by
  classical
  let π := descendingHarmonicSchmidtPermutation
    (n := n) σ
  let x := harmonicTensorSchmidtAmplitude
    (n := n) σ (π k)
  let S : Finset (Fin (d * n)) :=
    Finset.univ.filter fun q : Fin (d * n) =>
      x ≤ harmonicTensorSchmidtAmplitude (n := n) σ q
  have hx : 0 ≤ x := by
    dsimp [x, harmonicTensorSchmidtAmplitude]
    exact mul_nonneg (hσ _) (inv_nonneg.mpr (Real.sqrt_nonneg _))
  have hanti :=
    descendingHarmonicSchmidtPermutation_antitone
      (n := n) σ
  have hcard : k.val + 1 ≤ S.card := by
    calc
      k.val + 1 = (Finset.Iic k).card := by simp
      _ = ((Finset.Iic k).map π.toEmbedding).card := by simp
      _ ≤ S.card := by
        apply Finset.card_le_card
        intro q hq
        obtain ⟨l, hl, hleq⟩ := Finset.mem_map.mp hq
        subst q
        apply Finset.mem_filter.mpr
        refine ⟨Finset.mem_univ _, ?_⟩
        exact hanti (Finset.mem_Iic.mp hl)
  have hcardreal : (k.val : ℝ) + 1 ≤ (S.card : ℝ) := by
    exact_mod_cast hcard
  have htotal := harmonicSchmidtThreshold_count_sq_le_one
    (n := n) σ hσ hunit x hx
  change ((k.val : ℝ) + 1) * x ^ 2 ≤ 1
  change (S.card : ℝ) * x ^ 2 ≤ 1 at htotal
  exact (mul_le_mul_of_nonneg_right hcardreal
    (sq_nonneg x)).trans htotal

theorem descendingHarmonicSchmidtAmplitude_le_harmonic
    {d n : ℕ} (σ : Fin d → ℝ)
    (hσ : ∀ i, 0 ≤ σ i)
    (hunit : (∑ i : Fin d, σ i ^ 2) = 1)
    (k : Fin (d * n)) :
    harmonicTensorSchmidtAmplitude (n := n) σ
      (descendingHarmonicSchmidtPermutation
        (n := n) σ k) ≤
      (Real.sqrt ((k.val : ℝ) + 1))⁻¹ := by
  let x := harmonicTensorSchmidtAmplitude (n := n) σ
    (descendingHarmonicSchmidtPermutation
      (n := n) σ k)
  have hx : 0 ≤ x := by
    dsimp [x, harmonicTensorSchmidtAmplitude]
    exact mul_nonneg (hσ _)
      (inv_nonneg.mpr (Real.sqrt_nonneg _))
  have hrank : 0 < (k.val : ℝ) + 1 := by positivity
  have hsqrt : 0 < Real.sqrt ((k.val : ℝ) + 1) :=
    Real.sqrt_pos.mpr hrank
  have hrankbound :=
    descendingHarmonicSchmidtAmplitude_rank_sq_le_one
      (n := n) σ hσ hunit k
  change x ≤ (Real.sqrt ((k.val : ℝ) + 1))⁻¹
  rw [← one_div]
  apply (le_div_iff₀ hsqrt).2
  have hsquare :
      (x * Real.sqrt ((k.val : ℝ) + 1)) ^ 2 ≤ 1 := by
    rw [mul_pow, Real.sq_sqrt hrank.le]
    nlinarith
  have hnonneg :
      0 ≤ x * Real.sqrt ((k.val : ℝ) + 1) :=
    mul_nonneg hx hsqrt.le
  nlinarith [sq_nonneg
    (x * Real.sqrt ((k.val : ℝ) + 1) + 1)]

theorem diagonalSchmidtTensorTarget_diagonal
    {d n : ℕ} (σ : Fin d → ℝ)
    (hunit : (∑ i : Fin d, σ i ^ 2) = 1)
    (q : Fin (d * n)) :
    tensorEmbezzlementTarget (n := n)
      (diagonalSchmidtUnitVector σ hunit) (q, q) =
        (‖rawEmbezzlementState n‖⁻¹ : ℝ) •
          (harmonicTensorSchmidtAmplitude
            (n := n) σ q : ℂ) := by
  simp [tensorEmbezzlementTarget,
    diagonalSchmidtUnitVector,
    diagonalSchmidtState,
    embezzlementState_apply,
    harmonicTensorSchmidtAmplitude,
    mul_assoc, mul_comm]

theorem harmonicSchmidtPermutationAction_off_diagonal
    {d n : ℕ} (σ : Fin d → ℝ)
    (i j : Fin (d * n)) (hij : i ≠ j) :
    localUnitaryAction
      (harmonicSchmidtPermutationUnitary (n := n) σ)
      (harmonicSchmidtPermutationUnitary (n := n) σ)
      (embezzlementState (d * n)) (i, j) = 0 := by
  rw [harmonicSchmidtPermutationUnitary,
    localPermutationUnitaryAction_apply,
    embezzlementState_apply]
  have hperm :
      (descendingHarmonicSchmidtPermutation
        (n := n) σ).symm i ≠
      (descendingHarmonicSchmidtPermutation
        (n := n) σ).symm j :=
    (descendingHarmonicSchmidtPermutation
      (n := n) σ).symm.injective.ne hij
  simp [hperm]

theorem harmonicSchmidtPermutationAction_diagonal
    {d n : ℕ} (σ : Fin d → ℝ)
    (k : Fin (d * n)) :
    localUnitaryAction
      (harmonicSchmidtPermutationUnitary (n := n) σ)
      (harmonicSchmidtPermutationUnitary (n := n) σ)
      (embezzlementState (d * n))
        (descendingHarmonicSchmidtPermutation
          (n := n) σ k,
          descendingHarmonicSchmidtPermutation
            (n := n) σ k) =
      (‖rawEmbezzlementState (d * n)‖⁻¹ : ℝ) •
        (↑((Real.sqrt ((k.val : ℝ) + 1))⁻¹) : ℂ) := by
  rw [harmonicSchmidtPermutationUnitary,
    localPermutationUnitaryAction_apply,
    embezzlementState_apply]
  simp

theorem harmonicTensorSchmidtAmplitude_sq_sum
    {d n : ℕ} (σ : Fin d → ℝ)
    (hunit : (∑ i : Fin d, σ i ^ 2) = 1) :
    (∑ q : Fin (d * n),
      harmonicTensorSchmidtAmplitude
        (n := n) σ q ^ 2) =
      harmonicNumber n := by
  have hterm (i : Fin d) (j : Fin n) :
      (σ i * (Real.sqrt ((j.val : ℝ) + 1))⁻¹) ^ 2 =
        σ i ^ 2 * ((j.val : ℝ) + 1)⁻¹ := by
    rw [mul_pow, inv_pow, Real.sq_sqrt (by positivity)]
  calc
    (∑ q : Fin (d * n),
      harmonicTensorSchmidtAmplitude
        (n := n) σ q ^ 2) =
      ∑ p : Fin d × Fin n,
        harmonicTensorSchmidtAmplitude
          (n := n) σ (finProdFinEquiv p) ^ 2 := by
            exact (Equiv.sum_comp finProdFinEquiv
              (fun q : Fin (d * n) =>
                harmonicTensorSchmidtAmplitude
                  (n := n) σ q ^ 2)).symm
    _ = ∑ i : Fin d,
      σ i ^ 2 * harmonicNumber n := by
        rw [Fintype.sum_prod_type]
        apply Finset.sum_congr rfl
        intro i _
        simp_rw [harmonicTensorSchmidtAmplitude,
          Equiv.symm_apply_apply]
        simp_rw [hterm]
        rw [← Finset.mul_sum]
        rfl
    _ = (∑ i : Fin d, σ i ^ 2) *
      harmonicNumber n := by
        rw [Finset.sum_mul]
    _ = harmonicNumber n := by rw [hunit, one_mul]

theorem descendingHarmonicSchmidtAmplitude_sq_sum
    {d n : ℕ} (σ : Fin d → ℝ)
    (hunit : (∑ i : Fin d, σ i ^ 2) = 1) :
    (∑ k : Fin (d * n),
      harmonicTensorSchmidtAmplitude
        (n := n) σ
          (descendingHarmonicSchmidtPermutation
            (n := n) σ k) ^ 2) =
      harmonicNumber n := by
  calc
    (∑ k : Fin (d * n),
      harmonicTensorSchmidtAmplitude
        (n := n) σ
          (descendingHarmonicSchmidtPermutation
            (n := n) σ k) ^ 2) =
        ∑ q : Fin (d * n),
          harmonicTensorSchmidtAmplitude
            (n := n) σ q ^ 2 :=
          Equiv.sum_comp
            (descendingHarmonicSchmidtPermutation
              (n := n) σ)
            (fun q : Fin (d * n) =>
              harmonicTensorSchmidtAmplitude
                (n := n) σ q ^ 2)
    _ = harmonicNumber n :=
      harmonicTensorSchmidtAmplitude_sq_sum
        (n := n) σ hunit

theorem universalCatalystOverlap_eq_sum
    {d n : ℕ} (σ : Fin d → ℝ)
    (hunit : (∑ i : Fin d, σ i ^ 2) = 1) :
    (inner ℂ
      (localUnitaryAction
        (harmonicSchmidtPermutationUnitary (n := n) σ)
        (harmonicSchmidtPermutationUnitary (n := n) σ)
        (embezzlementState (d * n)))
      (tensorEmbezzlementTarget (n := n)
        (diagonalSchmidtUnitVector σ hunit))).re =
      ∑ k : Fin (d * n),
        universalCatalystOverlapTerm
          (n := n) σ k := by
  rw [diagonalInner_real_eq_sum _ _
    (harmonicSchmidtPermutationAction_off_diagonal
      (n := n) σ)]
  calc
    (∑ q : Fin (d * n),
      (inner ℂ
        (localUnitaryAction
          (harmonicSchmidtPermutationUnitary (n := n) σ)
          (harmonicSchmidtPermutationUnitary (n := n) σ)
          (embezzlementState (d * n)) (q, q))
        (tensorEmbezzlementTarget (n := n)
          (diagonalSchmidtUnitVector σ hunit)
          (q, q))).re) =
      ∑ k : Fin (d * n),
        (inner ℂ
          (localUnitaryAction
            (harmonicSchmidtPermutationUnitary (n := n) σ)
            (harmonicSchmidtPermutationUnitary (n := n) σ)
            (embezzlementState (d * n))
            (descendingHarmonicSchmidtPermutation
              (n := n) σ k,
              descendingHarmonicSchmidtPermutation
                (n := n) σ k))
          (tensorEmbezzlementTarget (n := n)
            (diagonalSchmidtUnitVector σ hunit)
            (descendingHarmonicSchmidtPermutation
              (n := n) σ k,
              descendingHarmonicSchmidtPermutation
                (n := n) σ k))).re := by
          exact (Equiv.sum_comp
            (descendingHarmonicSchmidtPermutation
              (n := n) σ)
            (fun q : Fin (d * n) =>
              (inner ℂ
                (localUnitaryAction
                  (harmonicSchmidtPermutationUnitary
                    (n := n) σ)
                  (harmonicSchmidtPermutationUnitary
                    (n := n) σ)
                  (embezzlementState (d * n)) (q, q))
                (tensorEmbezzlementTarget (n := n)
                  (diagonalSchmidtUnitVector σ hunit)
                  (q, q))).re)).symm
    _ = ∑ k : Fin (d * n),
        universalCatalystOverlapTerm
          (n := n) σ k := by
          apply Finset.sum_congr rfl
          intro k _
          rw [harmonicSchmidtPermutationAction_diagonal,
            diagonalSchmidtTensorTarget_diagonal]
          simp [universalCatalystOverlapTerm,
            mul_assoc, mul_comm, mul_left_comm]

theorem universalCatalystOverlapTerm_lower
    {d n : ℕ} (σ : Fin d → ℝ)
    (hσ : ∀ i, 0 ≤ σ i)
    (hunit : (∑ i : Fin d, σ i ^ 2) = 1)
    (k : Fin (d * n)) :
    ‖rawEmbezzlementState (d * n)‖⁻¹ *
      ‖rawEmbezzlementState n‖⁻¹ *
        harmonicTensorSchmidtAmplitude
          (n := n) σ
            (descendingHarmonicSchmidtPermutation
              (n := n) σ k) ^ 2 ≤
      universalCatalystOverlapTerm
        (n := n) σ k := by
  let a := harmonicTensorSchmidtAmplitude
    (n := n) σ
      (descendingHarmonicSchmidtPermutation
        (n := n) σ k)
  let h := (Real.sqrt ((k.val : ℝ) + 1))⁻¹
  let c := ‖rawEmbezzlementState (d * n)‖⁻¹ *
    ‖rawEmbezzlementState n‖⁻¹
  have ha : 0 ≤ a := by
    dsimp [a, harmonicTensorSchmidtAmplitude]
    exact mul_nonneg (hσ _)
      (inv_nonneg.mpr (Real.sqrt_nonneg _))
  have hc : 0 ≤ c := by
    dsimp [c]
    positivity
  have hah : a ≤ h :=
    descendingHarmonicSchmidtAmplitude_le_harmonic
      (n := n) σ hσ hunit k
  change c * a ^ 2 ≤ _
  calc
    c * a ^ 2 = (c * a) * a := by ring
    _ ≤ (c * a) * h :=
      mul_le_mul_of_nonneg_left hah (mul_nonneg hc ha)
    _ = universalCatalystOverlapTerm
      (n := n) σ k := by
        dsimp [c, a, h, universalCatalystOverlapTerm]
        ring

theorem universalDiagonalCatalystOverlap_lower
    {d n : ℕ} (hd : 0 < d) (hn : 0 < n)
    (σ : Fin d → ℝ)
    (hσ : ∀ i, 0 ≤ σ i)
    (hunit : (∑ i : Fin d, σ i ^ 2) = 1) :
    ‖rawEmbezzlementState n‖ /
      ‖rawEmbezzlementState (d * n)‖ ≤
        (inner ℂ
          (localUnitaryAction
            (harmonicSchmidtPermutationUnitary
              (n := n) σ)
            (harmonicSchmidtPermutationUnitary
              (n := n) σ)
            (embezzlementState (d * n)))
          (tensorEmbezzlementTarget (n := n)
            (diagonalSchmidtUnitVector σ hunit))).re := by
  have hnraw : ‖rawEmbezzlementState n‖ ≠ 0 :=
    norm_ne_zero_iff.mpr
      (rawEmbezzlementState_ne_zero n hn)
  have hdnraw :
      ‖rawEmbezzlementState (d * n)‖ ≠ 0 :=
    norm_ne_zero_iff.mpr
      (rawEmbezzlementState_ne_zero
        (d * n) (Nat.mul_pos hd hn))
  calc
    ‖rawEmbezzlementState n‖ /
      ‖rawEmbezzlementState (d * n)‖ =
        ‖rawEmbezzlementState (d * n)‖⁻¹ *
          ‖rawEmbezzlementState n‖⁻¹ *
            harmonicNumber n := by
              rw [← rawEmbezzlementState_norm_sq n]
              field_simp
    _ = ∑ k : Fin (d * n),
      ‖rawEmbezzlementState (d * n)‖⁻¹ *
        ‖rawEmbezzlementState n‖⁻¹ *
          harmonicTensorSchmidtAmplitude
            (n := n) σ
              (descendingHarmonicSchmidtPermutation
                (n := n) σ k) ^ 2 := by
          rw [← descendingHarmonicSchmidtAmplitude_sq_sum
            (n := n) σ hunit, Finset.mul_sum]
    _ ≤ ∑ k : Fin (d * n),
      universalCatalystOverlapTerm
        (n := n) σ k := by
          apply Finset.sum_le_sum
          intro k _
          exact universalCatalystOverlapTerm_lower
            (n := n) σ hσ hunit k
    _ = (inner ℂ
      (localUnitaryAction
        (harmonicSchmidtPermutationUnitary
          (n := n) σ)
        (harmonicSchmidtPermutationUnitary
          (n := n) σ)
        (embezzlementState (d * n)))
      (tensorEmbezzlementTarget (n := n)
        (diagonalSchmidtUnitVector σ hunit))).re :=
      (universalCatalystOverlap_eq_sum
        (n := n) σ hunit).symm

@[simp] theorem harmonicTargetLiftUnitary_apply
    {d n : ℕ}
    (U : Matrix.unitaryGroup (Fin d) ℂ)
    (a b : Fin d) (i j : Fin n) :
    harmonicTargetLiftUnitary (n := n) U
      (finProdFinEquiv (a, i))
      (finProdFinEquiv (b, j)) =
        if i = j then U a b else 0 := by
  change
    (Matrix.reindex finProdFinEquiv finProdFinEquiv
      (U.val ⊗ₖ (1 : Matrix (Fin n) (Fin n) ℂ)))
        (finProdFinEquiv (a, i))
        (finProdFinEquiv (b, j)) = _
  simp [Matrix.reindex_apply,
    Matrix.kroneckerMap_apply, Matrix.one_apply]

theorem localUnitaryAction_comp
    {m : ℕ}
    (U₁ V₁ U₂ V₂ : Matrix.unitaryGroup (Fin m) ℂ)
    (ψ : EuclideanSpace ℂ (Fin m × Fin m)) :
    localUnitaryAction U₁ V₁
      (localUnitaryAction U₂ V₂ ψ) =
        localUnitaryAction (U₁ * U₂) (V₁ * V₂) ψ := by
  apply WithLp.ofLp_injective
  change
    ((U₁.val ⊗ₖ V₁.val).mulVec
      ((U₂.val ⊗ₖ V₂.val).mulVec (ofLp ψ))) =
      ((U₁ * U₂).val ⊗ₖ (V₁ * V₂).val).mulVec (ofLp ψ)
  rw [Matrix.mulVec_mulVec,
    ← Matrix.mul_kronecker_mul]
  rfl

theorem targetCatalystDoubleSum_reindex
    {d n : ℕ}
    (F : Fin (d * n) → Fin (d * n) → ℂ) :
    (∑ i : Fin (d * n), ∑ j : Fin (d * n), F i j) =
      ∑ p : Fin d × Fin n,
        ∑ q : Fin d × Fin n,
          F (finProdFinEquiv p) (finProdFinEquiv q) := by
  calc
    (∑ i : Fin (d * n), ∑ j : Fin (d * n), F i j) =
        ∑ p : Fin d × Fin n,
          ∑ j : Fin (d * n), F (finProdFinEquiv p) j := by
            exact (Equiv.sum_comp finProdFinEquiv
              (fun i : Fin (d * n) =>
                ∑ j : Fin (d * n), F i j)).symm
    _ = ∑ p : Fin d × Fin n,
        ∑ q : Fin d × Fin n,
          F (finProdFinEquiv p) (finProdFinEquiv q) := by
            apply Finset.sum_congr rfl
            intro p _
            exact (Equiv.sum_comp finProdFinEquiv
              (fun j : Fin (d * n) =>
                F (finProdFinEquiv p) j)).symm

theorem harmonicTargetLift_diagonal_action_apply
    {d n : ℕ}
    (σ : Fin d → ℝ)
    (hunit : (∑ i : Fin d, σ i ^ 2) = 1)
    (U V : Matrix.unitaryGroup (Fin d) ℂ)
    (a b : Fin d) (i j : Fin n) :
    localUnitaryAction
      (harmonicTargetLiftUnitary (n := n) U)
      (harmonicTargetLiftUnitary (n := n) V)
      (tensorEmbezzlementTarget (n := n)
        (diagonalSchmidtUnitVector σ hunit))
        (finProdFinEquiv (a, i),
          finProdFinEquiv (b, j)) =
      schmidtVector σ U V (a, b) *
        embezzlementState n (i, j) := by
  classical
  let LU := harmonicTargetLiftUnitary (n := n) U
  let LV := harmonicTargetLiftUnitary (n := n) V
  let T := tensorEmbezzlementTarget (n := n)
    (diagonalSchmidtUnitVector σ hunit)
  have hT (p q : Fin d × Fin n) :
      T (finProdFinEquiv p, finProdFinEquiv q) =
        (if p.1 = q.1 then (σ p.1 : ℂ) else 0) *
          embezzlementState n (p.2, q.2) := by
    change
      (if (finProdFinEquiv.symm (finProdFinEquiv p)).1 =
          (finProdFinEquiv.symm (finProdFinEquiv q)).1 then
        (σ (finProdFinEquiv.symm (finProdFinEquiv p)).1 : ℂ)
      else 0) *
        embezzlementState n
          ((finProdFinEquiv.symm (finProdFinEquiv p)).2,
            (finProdFinEquiv.symm (finProdFinEquiv q)).2) = _
    simp only [Equiv.symm_apply_apply]
  change
    ((LU.val ⊗ₖ LV.val).mulVec
      (ofLp T))
      (finProdFinEquiv (a, i), finProdFinEquiv (b, j)) = _
  calc
    ((LU.val ⊗ₖ LV.val).mulVec
      (ofLp T))
      (finProdFinEquiv (a, i), finProdFinEquiv (b, j)) =
      ∑ r : Fin (d * n), ∑ s : Fin (d * n),
        LU (finProdFinEquiv (a, i)) r *
          LV (finProdFinEquiv (b, j)) s * T (r, s) := by
            simp [Matrix.mulVec, dotProduct,
              Matrix.kroneckerMap_apply,
              Fintype.sum_prod_type, mul_assoc]
    _ = ∑ p : Fin d × Fin n,
        ∑ q : Fin d × Fin n,
          LU (finProdFinEquiv (a, i)) (finProdFinEquiv p) *
            LV (finProdFinEquiv (b, j)) (finProdFinEquiv q) *
            T (finProdFinEquiv p, finProdFinEquiv q) :=
          targetCatalystDoubleSum_reindex
            (fun r s =>
              LU (finProdFinEquiv (a, i)) r *
                LV (finProdFinEquiv (b, j)) s * T (r, s))
    _ = schmidtVector σ U V (a, b) *
      embezzlementState n (i, j) := by
        simp_rw [hT]
        simp [LU, LV,
          harmonicTargetLiftUnitary_apply,
          schmidtVector_apply,
          Fintype.sum_prod_type,
          mul_assoc, mul_comm, mul_left_comm]
        rw [Finset.mul_sum]
        apply Finset.sum_congr rfl
        intro k _
        ring

theorem harmonicTargetLift_diagonal_action
    {d n : ℕ}
    (ξ : BipartiteUnitVector d)
    (σ : Fin d → ℝ)
    (hunit : (∑ i : Fin d, σ i ^ 2) = 1)
    (U V : Matrix.unitaryGroup (Fin d) ℂ)
    (hξ : ξ.val = schmidtVector σ U V) :
    localUnitaryAction
      (harmonicTargetLiftUnitary (n := n) U)
      (harmonicTargetLiftUnitary (n := n) V)
      (tensorEmbezzlementTarget (n := n)
        (diagonalSchmidtUnitVector σ hunit)) =
      tensorEmbezzlementTarget (n := n) ξ := by
  ext ⟨r, s⟩
  let p : Fin d × Fin n := finProdFinEquiv.symm r
  let q : Fin d × Fin n := finProdFinEquiv.symm s
  have hr : finProdFinEquiv p = r :=
    Equiv.apply_symm_apply finProdFinEquiv r
  have hs : finProdFinEquiv q = s :=
    Equiv.apply_symm_apply finProdFinEquiv s
  calc
    localUnitaryAction
      (harmonicTargetLiftUnitary (n := n) U)
      (harmonicTargetLiftUnitary (n := n) V)
      (tensorEmbezzlementTarget (n := n)
        (diagonalSchmidtUnitVector σ hunit)) (r, s) =
      localUnitaryAction
        (harmonicTargetLiftUnitary (n := n) U)
        (harmonicTargetLiftUnitary (n := n) V)
        (tensorEmbezzlementTarget (n := n)
          (diagonalSchmidtUnitVector σ hunit))
          (finProdFinEquiv (p.1, p.2),
            finProdFinEquiv (q.1, q.2)) := by
          simp [hr, hs]
    _ = schmidtVector σ U V (p.1, q.1) *
      embezzlementState n (p.2, q.2) :=
        harmonicTargetLift_diagonal_action_apply
          σ hunit U V p.1 q.1 p.2 q.2
    _ = ξ.val (p.1, q.1) *
      embezzlementState n (p.2, q.2) := by rw [hξ]
    _ = tensorEmbezzlementTarget (n := n) ξ
      (finProdFinEquiv (p.1, p.2),
        finProdFinEquiv (q.1, q.2)) := by
          change _ =
            ξ.val
              ((finProdFinEquiv.symm
                (finProdFinEquiv (p.1, p.2))).1,
                (finProdFinEquiv.symm
                  (finProdFinEquiv (q.1, q.2))).1) *
              embezzlementState n
                ((finProdFinEquiv.symm
                  (finProdFinEquiv (p.1, p.2))).2,
                  (finProdFinEquiv.symm
                    (finProdFinEquiv (q.1, q.2))).2)
          simp only [Equiv.symm_apply_apply]
    _ = tensorEmbezzlementTarget (n := n) ξ (r, s) := by
      simp [hr, hs]

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

theorem universalDiagonalCatalystOverlap_of_harmonic_ratio
    {d n : ℕ} (hd : 0 < d) (hn : 0 < n)
    (σ : Fin d → ℝ)
    (hσ : ∀ i, 0 ≤ σ i)
    (hunit : (∑ i : Fin d, σ i ^ 2) = 1)
    (δ : ℝ) (hδ : 0 ≤ δ) (hδone : δ ≤ 1)
    (hratio : 1 - δ ≤
      harmonicNumber n /
        harmonicNumber (d * n)) :
    1 - δ ≤
      (inner ℂ
        (localUnitaryAction
          (harmonicSchmidtPermutationUnitary
            (n := n) σ)
          (harmonicSchmidtPermutationUnitary
            (n := n) σ)
          (embezzlementState (d * n)))
        (tensorEmbezzlementTarget (n := n)
          (diagonalSchmidtUnitVector σ hunit))).re := by
  let q : ℝ :=
    ‖rawEmbezzlementState n‖ /
      ‖rawEmbezzlementState (d * n)‖
  have hq : 0 ≤ q := by
    dsimp [q]
    exact div_nonneg (norm_nonneg _) (norm_nonneg _)
  have hqsquare :
      q ^ 2 = harmonicNumber n /
        harmonicNumber (d * n) := by
    dsimp [q]
    rw [div_pow,
      rawEmbezzlementState_norm_sq,
      rawEmbezzlementState_norm_sq]
  have hgoalnonneg : 0 ≤ 1 - δ := sub_nonneg.mpr hδone
  have hgoalsquare : (1 - δ) ^ 2 ≤ 1 - δ := by
    nlinarith [mul_nonneg hδ hgoalnonneg]
  have hqbound : 1 - δ ≤ q := by
    rw [← hqsquare] at hratio
    nlinarith [sq_nonneg (q + (1 - δ))]
  exact hqbound.trans
    (universalDiagonalCatalystOverlap_lower
      hd hn σ hσ hunit)

theorem universalDiagonalCatalyst_distance
    {d n : ℕ} (hd : 0 < d) (hn : 0 < n)
    (σ : Fin d → ℝ)
    (hσ : ∀ i, 0 ≤ σ i)
    (hunit : (∑ i : Fin d, σ i ^ 2) = 1)
    (δ : ℝ) (hδ : 0 ≤ δ) (hδone : δ ≤ 1)
    (hratio : 1 - δ ≤
      harmonicNumber n /
        harmonicNumber (d * n)) :
    ‖localUnitaryAction
      (harmonicSchmidtPermutationUnitary
        (n := n) σ)
      (harmonicSchmidtPermutationUnitary
        (n := n) σ)
      (embezzlementState (d * n)) -
        tensorEmbezzlementTarget (n := n)
          (diagonalSchmidtUnitVector σ hunit)‖ ≤
      Real.sqrt (2 * δ) := by
  apply unitVector_distance_of_real_overlap
    (localUnitaryAction
      (harmonicSchmidtPermutationUnitary
        (n := n) σ)
      (harmonicSchmidtPermutationUnitary
        (n := n) σ)
      (embezzlementState (d * n)))
    (tensorEmbezzlementTarget (n := n)
      (diagonalSchmidtUnitVector σ hunit))
    (by rw [localUnitaryAction_norm,
      embezzlementState_norm (d * n)
        (Nat.mul_pos hd hn)])
    (tensorEmbezzlementTarget_norm hn
      (diagonalSchmidtUnitVector σ hunit))
    δ hδ
  exact universalDiagonalCatalystOverlap_of_harmonic_ratio
    hd hn σ hσ hunit δ hδ hδone hratio

end

end QuantumParallelRepetition


open QuantumParallelRepetition
open scoped ComplexOrder Matrix BigOperators InnerProductSpace
open Complex Matrix Finset
open WithLp
open scoped BigOperators Kronecker ComplexOrder MatrixOrder

theorem solution
    (d : ℕ) (hd : 0 < d)
    (ε : ℝ) (hε : 0 < ε) :
    ∃ n : ℕ, 0 < n ∧
      ∀ ξ : BipartiteUnitVector d,
        ∃ U V : Matrix.unitaryGroup (Fin (d * n)) ℂ,
          ‖localUnitaryAction U V
            (embezzlementState (d * n)) -
              tensorEmbezzlementTarget (n := n) ξ‖ ≤ ε := by
  let δ : ℝ := min (ε ^ 2 / 2) 1
  have hδ : 0 < δ := by
    dsimp [δ]
    exact lt_min (by positivity) zero_lt_one
  have hδone : δ ≤ 1 := min_le_right _ _
  obtain ⟨n, hn, hratio⟩ :=
    exists_proofHarmonicNumber_ratio_ge d hd hδ hδone
  refine ⟨n, hn, ?_⟩
  intro ξ
  obtain ⟨σ, U, V, hσ, hunit, hξ⟩ :=
    exists_proofUnitSchmidtDecomposition ξ
  let LU := harmonicTargetLiftUnitary (n := n) U
  let LV := harmonicTargetLiftUnitary (n := n) V
  let P := harmonicSchmidtPermutationUnitary
    (n := n) σ
  refine ⟨LU * P, LV * P, ?_⟩
  have hdiagonal := universalDiagonalCatalyst_distance
    hd hn σ hσ hunit δ hδ.le hδone hratio
  have htarget := harmonicTargetLift_diagonal_action
    (n := n) ξ σ hunit U V hξ
  have hdeltaeps : 2 * δ ≤ ε ^ 2 := by
    have hmin : δ ≤ ε ^ 2 / 2 := min_le_left _ _
    linarith
  have hsqrt : Real.sqrt (2 * δ) ≤ ε := by
    have hsq : (Real.sqrt (2 * δ)) ^ 2 = 2 * δ :=
      Real.sq_sqrt (by positivity)
    nlinarith [Real.sqrt_nonneg (2 * δ)]
  calc
    ‖localUnitaryAction (LU * P) (LV * P)
      (embezzlementState (d * n)) -
        tensorEmbezzlementTarget (n := n) ξ‖ =
      ‖localUnitaryAction LU LV
        (localUnitaryAction P P
          (embezzlementState (d * n)) -
            tensorEmbezzlementTarget (n := n)
              (diagonalSchmidtUnitVector σ hunit))‖ := by
        rw [localUnitaryAction_sub,
          localUnitaryAction_comp]
        rw [htarget]
    _ = ‖localUnitaryAction P P
      (embezzlementState (d * n)) -
        tensorEmbezzlementTarget (n := n)
          (diagonalSchmidtUnitVector σ hunit)‖ :=
        localUnitaryAction_norm LU LV _
    _ ≤ Real.sqrt (2 * δ) := hdiagonal
    _ ≤ ε := hsqrt
