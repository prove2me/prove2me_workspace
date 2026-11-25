import Mathlib.LinearAlgebra.Matrix.Trace
import Mathlib.LinearAlgebra.Matrix.NonsingularInverse
import Mathlib.Data.Complex.Basic
import Mathlib.Data.Matrix.Basic
import Mathlib.Algebra.BigOperators.Group.Finset.Basic
import Mathlib.Algebra.Lie.OfAssociative
set_option autoImplicit false
open Matrix
namespace Newton
variable {N : ℕ}
structure SuNAlgebra (N : ℕ) where
  /-- Matrix representation -/
  matrix : Matrix (Fin N) (Fin N) ℂ
  /-- Traceless condition -/
  trace_zero : trace matrix = 0
  /-- Anti-Hermitian condition: A† = -A -/
  anti_hermitian : conjTranspose matrix = -matrix
namespace SuNAlgebra
instance : Zero (SuNAlgebra N) where
  zero := {
    matrix := 0
    trace_zero := by simp [trace]
    anti_hermitian := by simp [conjTranspose]
  }
instance : Add (SuNAlgebra N) where
  add A B := {
    matrix := A.matrix + B.matrix
    trace_zero := by
      simp only [trace_add, A.trace_zero, B.trace_zero, add_zero]
    anti_hermitian := by
      simp only [conjTranspose_add, A.anti_hermitian, B.anti_hermitian, neg_add]
  }
instance : Neg (SuNAlgebra N) where
  neg A := {
    matrix := -A.matrix
    trace_zero := by simp [trace_neg, A.trace_zero]
    anti_hermitian := by
      simp only [conjTranspose_neg, A.anti_hermitian, neg_neg]
  }
instance : Sub (SuNAlgebra N) where
  sub A B := A + (-B)
instance : SMul ℝ (SuNAlgebra N) where
  smul r A := {
    matrix := (r : ℂ) • A.matrix
    trace_zero := by
      simp only [trace_smul, A.trace_zero, smul_zero]
    anti_hermitian := by
      rw [conjTranspose_smul, A.anti_hermitian]
      simp only [Complex.star_def, Complex.conj_ofReal, smul_neg]
  }
theorem ext {A B : SuNAlgebra N} (h : A.matrix = B.matrix) : A = B := by
  cases A; cases B
  simp_all
@[simp]
theorem matrix_eq_iff {A B : SuNAlgebra N} : A.matrix = B.matrix ↔ A = B :=
  ⟨ext, fun h => h ▸ rfl⟩
@[simp]
theorem zero_matrix : (0 : SuNAlgebra N).matrix = 0 := rfl
@[simp]
theorem add_matrix (A B : SuNAlgebra N) : (A + B).matrix = A.matrix + B.matrix := rfl
@[simp]
theorem neg_matrix (A : SuNAlgebra N) : (-A).matrix = -A.matrix := rfl
@[simp]
theorem smul_matrix (r : ℝ) (A : SuNAlgebra N) : (r • A).matrix = (r : ℂ) • A.matrix := rfl
@[simp]
theorem sub_matrix (A B : SuNAlgebra N) : (A - B).matrix = A.matrix - B.matrix := rfl
instance : AddCommGroup (SuNAlgebra N) where
  add_assoc a b c := by
    apply ext
    simp only [add_matrix, _root_.add_assoc]
  zero_add a := by
    apply ext
    simp only [add_matrix, zero_matrix, _root_.zero_add]
  add_zero a := by
    apply ext
    simp only [add_matrix, zero_matrix, _root_.add_zero]
  add_comm a b := by
    apply ext
    simp only [add_matrix, _root_.add_comm]
  nsmul n a := {
    matrix := n • a.matrix
    trace_zero := by simp only [trace_smul, a.trace_zero, smul_zero]
    anti_hermitian := by
      rw [conjTranspose_smul, a.anti_hermitian, smul_neg]
      simp only [star_trivial]
  }
  nsmul_zero a := by
    apply ext
    change (0 : ℕ) • a.matrix = 0
    exact zero_smul ℕ a.matrix
  nsmul_succ n a := by
    apply ext
    change (n + 1) • a.matrix = n • a.matrix + a.matrix
    rw [add_smul, one_smul]
  zsmul n a := {
    matrix := n • a.matrix
    trace_zero := by simp only [trace_smul, a.trace_zero, smul_zero]
    anti_hermitian := by
      rw [conjTranspose_smul, a.anti_hermitian, smul_neg]
      simp only [star_trivial]
  }
  zsmul_zero' a := by
    apply ext
    change (0 : ℤ) • a.matrix = 0
    exact zero_smul ℤ a.matrix
  zsmul_succ' n a := by
    apply ext
    change (↑(n.succ) : ℤ) • a.matrix = (↑n : ℤ) • a.matrix + a.matrix
    rw [show (↑(n.succ) : ℤ) = (↑n : ℤ) + 1 from Int.natCast_succ n, add_smul, one_smul]
  zsmul_neg' n a := by
    apply ext
    change (Int.negSucc n) • a.matrix = -((↑(n.succ) : ℤ) • a.matrix)
    rw [Int.negSucc_eq, Int.natCast_succ, neg_smul]
  neg_add_cancel a := by
    apply ext
    simp only [add_matrix, neg_matrix, zero_matrix, _root_.neg_add_cancel]
end SuNAlgebra
noncomputable def SuNAlgebra.lie (A B : SuNAlgebra N) : SuNAlgebra N where
  matrix := ⁅A.matrix, B.matrix⁆
  trace_zero := by
    rw [Ring.lie_def, trace_sub, trace_mul_comm]
    exact sub_self _
  anti_hermitian := by
    rw [Ring.lie_def]
    simp only [conjTranspose_sub, conjTranspose_mul]
    rw [A.anti_hermitian, B.anti_hermitian]
    simp only [neg_mul, mul_neg, neg_neg, neg_sub]
noncomputable instance : LieRing (SuNAlgebra N) where
  bracket := SuNAlgebra.lie
  add_lie a b c := by
    apply SuNAlgebra.ext
    simp only [SuNAlgebra.lie, SuNAlgebra.add_matrix]
    rw [Ring.lie_def, Ring.lie_def, Ring.lie_def]
    rw [add_mul, mul_add, add_sub_add_comm]
  lie_add a b c := by
    apply SuNAlgebra.ext
    simp only [SuNAlgebra.lie, SuNAlgebra.add_matrix]
    rw [Ring.lie_def, Ring.lie_def, Ring.lie_def]
    rw [mul_add, add_mul, add_sub_add_comm]
  lie_self a := by
    apply SuNAlgebra.ext
    simp only [SuNAlgebra.lie, SuNAlgebra.zero_matrix]
    rw [Ring.lie_def]
    exact sub_self _
  leibniz_lie a b c := by
    apply SuNAlgebra.ext
    simp only [SuNAlgebra.lie, SuNAlgebra.add_matrix]
    simp only [Ring.lie_def, mul_sub, sub_mul, mul_assoc]
    ext i j
    simp only [Matrix.add_apply, Matrix.sub_apply]
    ring
noncomputable def killingForm [DecidableEq (Fin N)] (A B : SuNAlgebra N) : ℂ :=
  trace (A.matrix * B.matrix)
end Newton
