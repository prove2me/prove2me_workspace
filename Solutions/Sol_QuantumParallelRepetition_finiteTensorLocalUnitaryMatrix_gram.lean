import Definitions.Def_quantum_parallel_repetition_game
import Definitions.Def_qpr_core_08
import Mathlib.Algebra.BigOperators.Group.Finset.Basic
import Mathlib.Algebra.BigOperators.Group.Finset.Defs
import Mathlib.Algebra.BigOperators.GroupWithZero.Finset
import Mathlib.Algebra.BigOperators.Ring.Finset
import Mathlib.Algebra.Field.Defs
import Mathlib.Algebra.Group.Defs
import Mathlib.Algebra.Group.Submonoid.Defs
import Mathlib.Algebra.GroupWithZero.Defs
import Mathlib.Algebra.Notation.Defs
import Mathlib.Algebra.Ring.Defs
import Mathlib.Algebra.Ring.Hom.Defs
import Mathlib.Algebra.Star.Basic
import Mathlib.Algebra.Star.BigOperators
import Mathlib.Analysis.CStarAlgebra.Classes
import Mathlib.Analysis.Complex.Basic
import Mathlib.Analysis.InnerProductSpace.Basic
import Mathlib.Analysis.Matrix.Normed
import Mathlib.Analysis.Matrix.Order
import Mathlib.Analysis.Normed.Field.Basic
import Mathlib.Analysis.Normed.Lp.WithLp
import Mathlib.Analysis.Normed.Ring.Basic
import Mathlib.Analysis.RCLike.Basic
import Mathlib.Data.Complex.Basic
import Mathlib.Data.Finset.Defs
import Mathlib.Data.Fintype.Defs
import Mathlib.Data.Fintype.Pi
import Mathlib.Data.FunLike.Basic
import Mathlib.Data.Int.Cast.Defs
import Mathlib.Data.Matrix.Basic
import Mathlib.Data.Matrix.Diagonal
import Mathlib.Data.Matrix.Mul
import Mathlib.Data.Nat.Cast.Defs
import Mathlib.Data.SetLike.Basic
import Mathlib.LinearAlgebra.Matrix.ConjTranspose
import Mathlib.LinearAlgebra.Matrix.Defs
import Mathlib.LinearAlgebra.Matrix.Kronecker
import Mathlib.LinearAlgebra.UnitaryGroup
import Mathlib.MeasureTheory.Measure.MeasureSpace
import Mathlib.Tactic.Push
import Mathlib.Topology.Defs.Filter



open QuantumParallelRepetition
open scoped ComplexOrder Matrix BigOperators InnerProductSpace
open Complex Matrix Finset
open WithLp
open scoped BigOperators Kronecker ComplexOrder MatrixOrder

theorem solution
    {ι β : Type*}
    [Fintype ι] [DecidableEq ι]
    [Fintype β] [DecidableEq β]
    (U : ι → Matrix.unitaryGroup β ℂ) :
    (finiteTensorLocalUnitaryMatrix U).conjTranspose *
        finiteTensorLocalUnitaryMatrix U = 1 := by
  classical
  ext p q
  change
    (∑ r : ι → β,
      star (∏ i : ι, (U i : Matrix β β ℂ) (r i) (p i)) *
        (∏ i : ι, (U i : Matrix β β ℂ) (r i) (q i))) =
      (1 : Matrix (ι → β) (ι → β) ℂ) p q
  have factor :
      (∑ r : ι → β,
        star (∏ i : ι, (U i : Matrix β β ℂ) (r i) (p i)) *
          (∏ i : ι, (U i : Matrix β β ℂ) (r i) (q i))) =
        ∏ i : ι, ∑ x : β,
          star ((U i : Matrix β β ℂ) x (p i)) *
            (U i : Matrix β β ℂ) x (q i) := by
    calc
      _ = ∑ r : ι → β, ∏ i : ι,
          (star ((U i : Matrix β β ℂ) (r i) (p i)) *
            (U i : Matrix β β ℂ) (r i) (q i)) := by
        apply Finset.sum_congr rfl
        intro r _
        rw [star_prod, ← Finset.prod_mul_distrib]
      _ = _ :=
        (Fintype.prod_sum fun i : ι => fun x : β =>
          star ((U i : Matrix β β ℂ) x (p i)) *
            (U i : Matrix β β ℂ) x (q i)).symm
  rw [factor]
  have single (i : ι) :
      (∑ x : β,
        star ((U i : Matrix β β ℂ) x (p i)) *
          (U i : Matrix β β ℂ) x (q i)) =
        (1 : Matrix β β ℂ) (p i) (q i) := by
    have gram := (Matrix.mem_unitaryGroup_iff').mp
      (U i).property
    have entry := congrArg
      (fun M : Matrix β β ℂ => M (p i) (q i)) gram
    simpa [Matrix.star_eq_conjTranspose,
      Matrix.mul_apply, Matrix.conjTranspose_apply] using entry
  simp_rw [single]
  by_cases equal : p = q
  · subst q
    simp
  · have different : ∃ i : ι, p i ≠ q i := by
      by_contra h
      push Not at h
      exact equal (funext h)
    obtain ⟨i, hi⟩ := different
    have zero :
        (∏ j : ι, (1 : Matrix β β ℂ) (p j) (q j)) = 0 := by
      apply Finset.prod_eq_zero (Finset.mem_univ i)
      simp [hi]
    rw [zero]
    simp [equal]
