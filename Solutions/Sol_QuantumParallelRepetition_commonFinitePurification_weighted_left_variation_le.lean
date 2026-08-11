import Definitions.Def_quantum_parallel_repetition_game
import Definitions.Def_qpr_core_11
import Theorems.Thm_QuantumParallelRepetition_trace_mul_posSemidef_nonneg
import Theorems.Thm_QuantumParallelRepetition_common_finite_purification_pair_jensen
import Mathlib.Algebra.Algebra.Basic
import Mathlib.Algebra.Algebra.Defs
import Mathlib.Algebra.Algebra.NonUnitalHom
import Mathlib.Algebra.BigOperators.Group.Finset.Basic
import Mathlib.Algebra.BigOperators.Group.Finset.Defs
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
import Mathlib.Algebra.GroupWithZero.Defs
import Mathlib.Algebra.Module.Defs
import Mathlib.Algebra.Module.LinearMap.Defs
import Mathlib.Algebra.Module.Pi
import Mathlib.Algebra.Module.Submodule.Defs
import Mathlib.Algebra.Module.Submodule.LinearMap
import Mathlib.Algebra.Notation.Defs
import Mathlib.Algebra.Notation.Pi.Defs
import Mathlib.Algebra.Ring.Defs
import Mathlib.Algebra.Ring.Equiv
import Mathlib.Algebra.Ring.Hom.Defs
import Mathlib.Algebra.Ring.Nat
import Mathlib.Algebra.Star.Basic
import Mathlib.Algebra.Star.SelfAdjoint
import Mathlib.Algebra.Star.StarAlgHom
import Mathlib.Algebra.Star.StarRingHom
import Mathlib.Algebra.Star.Unitary
import Mathlib.Algebra.Star.UnitaryStarAlgAut
import Mathlib.Analysis.CStarAlgebra.Classes
import Mathlib.Analysis.CStarAlgebra.ContinuousFunctionalCalculus.Unital
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
import Mathlib.Analysis.Matrix.HermitianFunctionalCalculus
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
import Mathlib.Analysis.SpecialFunctions.Log.Basic
import Mathlib.Data.Complex.Basic
import Mathlib.Data.ENNReal.Basic
import Mathlib.Data.Finset.Defs
import Mathlib.Data.Fintype.Basic
import Mathlib.Data.Fintype.Defs
import Mathlib.Data.Fintype.EquivFin
import Mathlib.Data.Fintype.Prod
import Mathlib.Data.FunLike.Basic
import Mathlib.Data.FunLike.Equiv
import Mathlib.Data.Int.Cast.Defs
import Mathlib.Data.Matrix.Basic
import Mathlib.Data.Matrix.Diagonal
import Mathlib.Data.Matrix.Mul
import Mathlib.Data.Nat.Cast.Defs
import Mathlib.Data.Nat.Init
import Mathlib.Data.Real.Basic
import Mathlib.Data.Real.Sqrt
import Mathlib.Data.Real.Star
import Mathlib.Data.SetLike.Basic
import Mathlib.GroupTheory.GroupAction.Hom
import Mathlib.GroupTheory.GroupAction.Ring
import Mathlib.LinearAlgebra.Dimension.Finrank
import Mathlib.LinearAlgebra.Matrix.ConjTranspose
import Mathlib.LinearAlgebra.Matrix.Defs
import Mathlib.LinearAlgebra.Matrix.Hermitian
import Mathlib.LinearAlgebra.Matrix.Kronecker
import Mathlib.LinearAlgebra.Matrix.PosDef
import Mathlib.LinearAlgebra.Matrix.Trace
import Mathlib.LinearAlgebra.Matrix.Vec
import Mathlib.Logic.Equiv.Defs
import Mathlib.MeasureTheory.Function.AEEqFun
import Mathlib.MeasureTheory.Function.LpSpace.Basic
import Mathlib.MeasureTheory.Measure.Haar.OfBasis
import Mathlib.MeasureTheory.Measure.MeasureSpace
import Mathlib.MeasureTheory.Measure.MeasureSpaceDef
import Mathlib.MeasureTheory.Measure.Restrict
import Mathlib.Order.Defs.LinearOrder
import Mathlib.Order.Defs.PartialOrder
import Mathlib.Order.Interval.Set.Defs
import Mathlib.Tactic.Linarith.Lemmas
import Mathlib.Tactic.NormNum.Basic
import Mathlib.Tactic.NormNum.Result
import Mathlib.Tactic.Ring.Basic
import Mathlib.Tactic.Ring.Common
import Mathlib.Topology.Algebra.Group.Defs
import Mathlib.Topology.Algebra.Module.ContinuousLinearMap.Basic
import Mathlib.Topology.Algebra.Ring.Basic
import Mathlib.Topology.Algebra.Ring.Real
import Mathlib.Topology.Algebra.Star.Real
import Mathlib.Topology.Algebra.UniformMulAction
import Mathlib.Topology.Defs.Filter
import Mathlib.Topology.EMetricSpace.Defs
import Mathlib.Topology.Instances.Matrix
import Mathlib.Topology.MetricSpace.Algebra
import Mathlib.Topology.MetricSpace.Basic
import Mathlib.Topology.MetricSpace.Defs
import Mathlib.Topology.MetricSpace.Pseudo.Defs
import Mathlib.Topology.UniformSpace.Defs

namespace QuantumParallelRepetition

noncomputable section

open scoped BigOperators ComplexOrder MatrixOrder

theorem spectralSupportFunctional_mul
    {d : Type*} [Fintype d] [DecidableEq d]
    (F : Matrix d d ℂ) (hF : F.PosSemidef)
    (f g : ℝ → ℝ) :
    spectralSupportFunctional F hF f *
        spectralSupportFunctional F hF g =
      spectralSupportFunctional F hF (fun x => f x * g x) := by
  classical
  let e := Unitary.conjStarAlgAut ℂ (Matrix d d ℂ)
    hF.isHermitian.eigenvectorUnitary
  change e _ * e _ = e _
  rw [← map_mul, Matrix.diagonal_mul_diagonal]
  congr 1
  funext i
  push_cast
  rfl

theorem spectralSupportFunctional_id
    {d : Type*} [Fintype d] [DecidableEq d]
    (F : Matrix d d ℂ) (hF : F.PosSemidef) :
    spectralSupportFunctional F hF (fun x => x) = F := by
  simpa [spectralSupportFunctional, Function.comp_def] using
    hF.isHermitian.spectral_theorem.symm

theorem spectralSupportFunctional_congr
    {d : Type*} [Fintype d] [DecidableEq d]
    (F : Matrix d d ℂ) (hF : F.PosSemidef)
    {f g : ℝ → ℝ}
    (h : ∀ i : d,
      f (hF.isHermitian.eigenvalues i) =
        g (hF.isHermitian.eigenvalues i)) :
    spectralSupportFunctional F hF f =
      spectralSupportFunctional F hF g := by
  unfold spectralSupportFunctional
  congr 2
  funext i
  exact_mod_cast h i

theorem spectralSupportFunctional_isHermitian
    {d : Type*} [Fintype d] [DecidableEq d]
    (F : Matrix d d ℂ) (hF : F.PosSemidef)
    (f : ℝ → ℝ) :
    (spectralSupportFunctional F hF f).IsHermitian := by
  classical
  let e := Unitary.conjStarAlgAut ℂ (Matrix d d ℂ)
    hF.isHermitian.eigenvectorUnitary
  let D : Matrix d d ℂ :=
    Matrix.diagonal fun i => (f (hF.isHermitian.eigenvalues i) : ℂ)
  have hD : D.IsHermitian := by
    apply Matrix.isHermitian_diagonal_iff.mpr
    intro i
    change star (f (hF.isHermitian.eigenvalues i) : ℂ) = _
    simp
  have hDstar : star D = D := by
    simpa only [Matrix.star_eq_conjTranspose] using hD.eq
  change Matrix.conjTranspose (e D) = e D
  simpa only [Matrix.star_eq_conjTranspose] using
    (show star (e D) = e D by rw [← map_star, hDstar])

theorem spectralSupportSqrt_sq
    {d : Type*} [Fintype d] [DecidableEq d]
    (F : Matrix d d ℂ) (hF : F.PosSemidef) :
    spectralSupportSqrt F hF * spectralSupportSqrt F hF = F := by
  change spectralSupportFunctional F hF Real.sqrt *
    spectralSupportFunctional F hF Real.sqrt = F
  calc
    spectralSupportFunctional F hF Real.sqrt *
        spectralSupportFunctional F hF Real.sqrt =
      spectralSupportFunctional F hF
        (fun x => Real.sqrt x * Real.sqrt x) :=
      spectralSupportFunctional_mul F hF _ _
    _ = spectralSupportFunctional F hF (fun x => x) :=
      spectralSupportFunctional_congr F hF (by
        intro i
        exact Real.mul_self_sqrt (hF.eigenvalues_nonneg i))
    _ = F := spectralSupportFunctional_id F hF

end

open scoped ComplexOrder Matrix BigOperators InnerProductSpace
open Complex Matrix Finset

noncomputable section

open WithLp
open scoped BigOperators ComplexOrder Kronecker MatrixOrder
  Matrix.Norms.L2Operator InnerProductSpace

theorem reindexedMatrixQuadratic
    {d e : Type*} [Fintype d] [Fintype e]
    [DecidableEq d] [DecidableEq e]
    (φ : e ≃ d) (M : Matrix d d ℂ) (v : d → ℂ) :
    quadraticExpectation
      (Matrix.toEuclideanCLM (n := e) (𝕜 := ℂ)
        (M.submatrix φ φ))
      (toLp 2 (v ∘ φ)) =
      (star v ⬝ᵥ M.mulVec v).re := by
  unfold quadraticExpectation
  rw [EuclideanSpace.inner_eq_star_dotProduct]
  change
    (((M.submatrix φ φ).mulVec (v ∘ φ)) ⬝ᵥ
      star (v ∘ φ)).re = (star v ⬝ᵥ M.mulVec v).re
  have h_mul :
      (M.submatrix φ φ).mulVec (v ∘ φ) =
        M.mulVec v ∘ φ := by
    simpa [Function.comp_def] using
      Matrix.submatrix_mulVec_equiv M (v ∘ φ) φ φ
  have h_star : star (v ∘ φ) = star v ∘ φ := by
    rfl
  rw [h_mul, h_star, comp_equiv_dotProduct_comp_equiv]
  rw [dotProduct_comm]

theorem purificationJointEffect_submatrix
    {dA dB : Type} [Fintype dA] [Fintype dB]
    [DecidableEq dA] [DecidableEq dB]
    (A : Matrix dA dA ℂ) (B : Matrix dB dB ℂ) :
    (A ⊗ₖ (1 : Matrix (dA × dB) (dA × dB) ℂ)) ⊗ₖ B =
      ((1 : Matrix (dA × dB) (dA × dB) ℂ) ⊗ₖ
        (A ⊗ₖ B)).submatrix
          (strategyPurificationShuffle dA dB)
          (strategyPurificationShuffle dA dB) := by
  classical
  ext ⟨⟨a, k⟩, b⟩ ⟨⟨a', k'⟩, b'⟩
  simp [Matrix.kroneckerMap_apply, Matrix.submatrix_apply,
    strategyPurificationShuffle, Matrix.one_apply]

theorem strategyPurificationVector_quadratic
    {X Y A B : Type*}
    [Fintype X] [Fintype Y] [Fintype A] [Fintype B]
    {G : Game X Y A B} (S : Strategy G)
    (EA : Matrix S.Alice S.Alice ℂ)
    (EB : Matrix S.Bob S.Bob ℂ) :
    quadraticExpectation
      (Matrix.toEuclideanCLM
        (n := (S.Alice × (S.Alice × S.Bob)) × S.Bob) (𝕜 := ℂ)
        ((EA ⊗ₖ (1 : Matrix (S.Alice × S.Bob)
          (S.Alice × S.Bob) ℂ)) ⊗ₖ EB))
      (strategyPurificationVector S) =
      (Matrix.trace
        (S.state.matrix * (EA ⊗ₖ EB))).re := by
  let K := spectralSupportSqrt S.state.matrix S.state.positive
  let E := EA ⊗ₖ EB
  let φ := strategyPurificationShuffle S.Alice S.Bob
  have h_hermitian : (Matrix.conjTranspose K) = K :=
    (spectralSupportFunctional_isHermitian
      S.state.matrix S.state.positive Real.sqrt).eq
  have h_lift := purificationJointEffect_submatrix EA EB
  change
    quadraticExpectation
      (Matrix.toEuclideanCLM
        (n := (S.Alice × (S.Alice × S.Bob)) × S.Bob) (𝕜 := ℂ)
        ((EA ⊗ₖ (1 : Matrix (S.Alice × S.Bob)
          (S.Alice × S.Bob) ℂ)) ⊗ₖ EB))
      (toLp 2 (Matrix.vec K ∘ φ)) =
      (Matrix.trace (S.state.matrix * E)).re
  rw [h_lift]
  rw [reindexedMatrixQuadratic φ
    ((1 : Matrix (S.Alice × S.Bob) (S.Alice × S.Bob) ℂ) ⊗ₖ E)
    (Matrix.vec K)]
  have h_vec :
      Matrix.mulVec
        ((1 : Matrix (S.Alice × S.Bob) (S.Alice × S.Bob) ℂ) ⊗ₖ E)
        (Matrix.vec K) =
        Matrix.vec (E * K) := by
    exact (Matrix.vec_mul_eq_mulVec E K).symm
  rw [h_vec, Matrix.star_vec_dotProduct_vec]
  rw [h_hermitian]
  congr 1
  calc
    Matrix.trace (K * (E * K)) =
      Matrix.trace (K * E * K) := by rw [Matrix.mul_assoc]
    _ = Matrix.trace (K * K * E) := by
      rw [Matrix.trace_mul_cycle]
    _ = Matrix.trace (S.state.matrix * E) := by
      change
        Matrix.trace
          (spectralSupportSqrt S.state.matrix S.state.positive *
            spectralSupportSqrt S.state.matrix S.state.positive * E) = _
      rw [spectralSupportSqrt_sq]

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

theorem finiteLocalPurificationJointMatrix_gram
    {X Y A B eA eB : Type*}
    [Fintype X] [Fintype Y] [Fintype A] [Fintype B]
    [Fintype eA] [Fintype eB]
    {G : Game X Y A B} (S : Strategy G)
    (KA : Matrix eA S.Alice ℂ) (KB : Matrix eB S.Bob ℂ) :
    (finiteLocalPurificationJointMatrix S KA KB).conjTranspose *
        finiteLocalPurificationJointMatrix S KA KB =
      ((KA.conjTranspose * KA) ⊗ₖ
        (1 : Matrix (S.Alice × S.Bob) (S.Alice × S.Bob) ℂ)) ⊗ₖ
        (KB.conjTranspose * KB) := by
  unfold finiteLocalPurificationJointMatrix
  rw [Matrix.conjTranspose_kronecker,
    ← Matrix.mul_kronecker_mul,
    Matrix.conjTranspose_kronecker,
    ← Matrix.mul_kronecker_mul]
  simp

theorem finiteLocalPurificationVector_norm_sq
    {X Y A B eA eB : Type*}
    [Fintype X] [Fintype Y] [Fintype A] [Fintype B]
    [Fintype eA] [Fintype eB]
    {G : Game X Y A B} (S : Strategy G)
    (KA : Matrix eA S.Alice ℂ) (KB : Matrix eB S.Bob ℂ) :
    ‖finiteLocalPurificationVector S KA KB‖ ^ 2 =
      (Matrix.trace
        (S.state.matrix *
          ((KA.conjTranspose * KA) ⊗ₖ
            (KB.conjTranspose * KB)))).re := by
  unfold finiteLocalPurificationVector
  rw [rectangular_matrix_mulVec_norm_sq,
    finiteLocalPurificationJointMatrix_gram]
  exact strategyPurificationVector_quadratic S
    (KA.conjTranspose * KA) (KB.conjTranspose * KB)

end

noncomputable section

open WithLp
open scoped BigOperators ComplexOrder Kronecker MatrixOrder
  Matrix.Norms.L2Operator InnerProductSpace

theorem finiteLocalPurificationVector_sub_left
    {X Y A B eA eB : Type*}
    [Fintype X] [Fintype Y] [Fintype A] [Fintype B]
    [Fintype eA] [Fintype eB]
    {G : Game X Y A B} (S : Strategy G)
    (KA KA' : Matrix eA S.Alice ℂ)
    (KB : Matrix eB S.Bob ℂ) :
    finiteLocalPurificationVector S KA KB -
        finiteLocalPurificationVector S KA' KB =
      finiteLocalPurificationVector S (KA - KA') KB := by
  have hmatrix :
      finiteLocalPurificationJointMatrix S KA KB -
        finiteLocalPurificationJointMatrix S KA' KB =
      finiteLocalPurificationJointMatrix S (KA - KA') KB := by
    ext ⟨⟨a, k⟩, b⟩ ⟨⟨a', k'⟩, b'⟩
    simp [finiteLocalPurificationJointMatrix,
      Matrix.kroneckerMap_apply, sub_mul]
  unfold finiteLocalPurificationVector
  rw [← WithLp.toLp_sub, ← Matrix.sub_mulVec, hmatrix]

theorem finiteLocalPurificationVector_sub_left_norm_sq
    {X Y A B eA eB : Type*}
    [Fintype X] [Fintype Y] [Fintype A] [Fintype B]
    [Fintype eA] [Fintype eB]
    {G : Game X Y A B} (S : Strategy G)
    (KA KA' : Matrix eA S.Alice ℂ)
    (KB : Matrix eB S.Bob ℂ) :
    ‖finiteLocalPurificationVector S KA KB -
        finiteLocalPurificationVector S KA' KB‖ ^ 2 =
      bornTracePairing S.state.matrix
        ((KA - KA').conjTranspose * (KA - KA'))
        (KB.conjTranspose * KB) := by
  rw [finiteLocalPurificationVector_sub_left,
    finiteLocalPurificationVector_norm_sq]
  rfl

end

end QuantumParallelRepetition


open QuantumParallelRepetition
open scoped ComplexOrder Matrix BigOperators InnerProductSpace
open Complex Matrix Finset
open WithLp
open scoped BigOperators ComplexOrder Kronecker MatrixOrder
  Matrix.Norms.L2Operator InnerProductSpace
set_option backward.isDefEq.respectTransparency false

theorem solution
    {X Y A B ι κ eB : Type*}
    [Fintype X] [Fintype Y] [Fintype A] [Fintype B]
    [Fintype ι] [Fintype κ] [Fintype eB]
    {G : Game X Y A B} (S : Strategy G)
    (weight : ι → ℝ)
    (F : κ → Matrix S.Alice S.Alice ℂ)
    (anchor : Matrix S.Alice S.Alice ℂ)
    (positive : ∀ k, (F k).PosSemidef)
    (hanchor : anchor.PosSemidef)
    (choose : ι → κ) (meanIndex : κ)
    (nonnegative : ∀ a, 0 ≤ weight a)
    (normalized : (∑ a : ι, weight a) = 1)
    (mean : (∑ a : ι, weight a • F (choose a)) = F meanIndex)
    (KB : Matrix eB S.Bob ℂ) :
    (∑ a : ι, weight a *
      ‖finiteLocalPurificationVector S
          (finitePurificationMatrix F anchor positive hanchor (choose a)) KB -
        finiteLocalPurificationVector S
          (finitePurificationMatrix F anchor positive hanchor meanIndex) KB‖ ^ 2) ≤
      bornTracePairing S.state.matrix
        ((∑ a : ι, weight a •
            cfc (fun z : ℝ => z * Real.log z) (F (choose a))) -
          cfc (fun z : ℝ => z * Real.log z) (F meanIndex))
        (KB.conjTranspose * KB) := by
  classical
  have hJ := common_finite_purification_pair_jensen
    weight F anchor positive hanchor choose meanIndex
    nonnegative normalized mean
  have hnonneg := trace_mul_posSemidef_nonneg S.state.positive
    (hJ.kronecker (Matrix.posSemidef_conjTranspose_mul_self KB))
  change
    0 ≤ bornTracePairing S.state.matrix
      (((∑ a : ι, weight a •
          cfc (fun z : ℝ => z * Real.log z) (F (choose a))) -
        cfc (fun z : ℝ => z * Real.log z) (F meanIndex)) -
       (∑ a : ι, weight a •
        ((finitePurificationMatrix F anchor positive hanchor (choose a) -
            finitePurificationMatrix F anchor positive hanchor meanIndex).conjTranspose *
          (finitePurificationMatrix F anchor positive hanchor (choose a) -
            finitePurificationMatrix F anchor positive hanchor meanIndex))))
      (KB.conjTranspose * KB) at hnonneg
  have hsum :
      bornTracePairing S.state.matrix
        (∑ a : ι, weight a •
          ((finitePurificationMatrix F anchor positive hanchor (choose a) -
              finitePurificationMatrix F anchor positive hanchor meanIndex).conjTranspose *
            (finitePurificationMatrix F anchor positive hanchor (choose a) -
              finitePurificationMatrix F anchor positive hanchor meanIndex)))
        (KB.conjTranspose * KB) =
        ∑ a : ι, weight a *
          ‖finiteLocalPurificationVector S
              (finitePurificationMatrix F anchor positive hanchor (choose a)) KB -
            finiteLocalPurificationVector S
              (finitePurificationMatrix F anchor positive hanchor meanIndex) KB‖ ^ 2 := by
    simp only [map_sum, LinearMap.sum_apply, map_smul,
      LinearMap.smul_apply, smul_eq_mul]
    apply Finset.sum_congr rfl
    intro a _
    rw [finiteLocalPurificationVector_sub_left_norm_sq]
  rw [map_sub] at hnonneg
  change
    0 ≤
      bornTracePairing S.state.matrix
        ((∑ a : ι, weight a •
            cfc (fun z : ℝ => z * Real.log z) (F (choose a))) -
          cfc (fun z : ℝ => z * Real.log z) (F meanIndex))
        (KB.conjTranspose * KB) -
      bornTracePairing S.state.matrix
        (∑ a : ι, weight a •
          ((finitePurificationMatrix F anchor positive hanchor (choose a) -
              finitePurificationMatrix F anchor positive hanchor meanIndex).conjTranspose *
            (finitePurificationMatrix F anchor positive hanchor (choose a) -
              finitePurificationMatrix F anchor positive hanchor meanIndex)))
        (KB.conjTranspose * KB) at hnonneg
  rw [hsum] at hnonneg
  linarith
