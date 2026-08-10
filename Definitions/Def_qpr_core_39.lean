import Definitions.Def_quantum_parallel_repetition_game
import Definitions.Def_qpr_core_38
import Mathlib.Algebra.Algebra.Defs
import Mathlib.Algebra.Algebra.Equiv
import Mathlib.Algebra.Algebra.Hom
import Mathlib.Algebra.Algebra.NonUnitalHom
import Mathlib.Algebra.BigOperators.Group.Finset.Defs
import Mathlib.Algebra.Field.Defs
import Mathlib.Algebra.Group.Defs
import Mathlib.Algebra.Group.Hom.Defs
import Mathlib.Algebra.Group.Nat.Defs
import Mathlib.Algebra.Group.Pi.Basic
import Mathlib.Algebra.Group.Submonoid.Defs
import Mathlib.Algebra.GroupWithZero.Defs
import Mathlib.Algebra.GroupWithZero.Hom
import Mathlib.Algebra.Module.Defs
import Mathlib.Algebra.Module.Pi
import Mathlib.Algebra.Notation.Defs
import Mathlib.Algebra.Order.Group.Nat
import Mathlib.Algebra.Order.GroupWithZero.Canonical
import Mathlib.Algebra.Order.IsBotOne
import Mathlib.Algebra.Order.Monoid.Defs
import Mathlib.Algebra.Order.Monoid.Unbundled.Basic
import Mathlib.Algebra.Order.Monoid.Unbundled.Defs
import Mathlib.Algebra.Order.Ring.Nat
import Mathlib.Algebra.Order.Sub.Defs
import Mathlib.Algebra.Ring.CompTypeclasses
import Mathlib.Algebra.Ring.Defs
import Mathlib.Algebra.Ring.Hom.Defs
import Mathlib.Algebra.Star.Basic
import Mathlib.AlgebraicTopology.SimplexCategory.Basic
import Mathlib.AlgebraicTopology.SimplexCategory.Defs
import Mathlib.Analysis.CStarAlgebra.Classes
import Mathlib.Analysis.Complex.Basic
import Mathlib.Analysis.InnerProductSpace.Basic
import Mathlib.Analysis.InnerProductSpace.PiL2
import Mathlib.Analysis.Matrix.Normed
import Mathlib.Analysis.Matrix.Order
import Mathlib.Analysis.Normed.Field.Basic
import Mathlib.Analysis.Normed.Group.Defs
import Mathlib.Analysis.Normed.Lp.PiLp
import Mathlib.Analysis.Normed.Lp.WithLp
import Mathlib.Analysis.Normed.Operator.LinearIsometry
import Mathlib.Analysis.Normed.Ring.Basic
import Mathlib.Analysis.RCLike.Basic
import Mathlib.Data.Complex.Basic
import Mathlib.Data.ENNReal.Basic
import Mathlib.Data.Fin.Tuple.Basic
import Mathlib.Data.Fintype.Basic
import Mathlib.Data.Fintype.Card
import Mathlib.Data.Fintype.Defs
import Mathlib.Data.Fintype.EquivFin
import Mathlib.Data.Fintype.Pi
import Mathlib.Data.Fintype.Prod
import Mathlib.Data.Fintype.Sigma
import Mathlib.Data.FunLike.Basic
import Mathlib.Data.FunLike.Equiv
import Mathlib.Data.Int.Cast.Defs
import Mathlib.Data.Matrix.Basic
import Mathlib.Data.Matrix.Diagonal
import Mathlib.Data.Matrix.Mul
import Mathlib.Data.Nat.Basic
import Mathlib.Data.Nat.Cast.Defs
import Mathlib.Data.Nat.Init
import Mathlib.Data.SetLike.Basic
import Mathlib.Data.Sigma.Basic
import Mathlib.LinearAlgebra.Matrix.ConjTranspose
import Mathlib.LinearAlgebra.Matrix.Defs
import Mathlib.LinearAlgebra.Matrix.Kronecker
import Mathlib.LinearAlgebra.Matrix.Reindex
import Mathlib.LinearAlgebra.UnitaryGroup
import Mathlib.Logic.Equiv.Defs
import Mathlib.Logic.Equiv.Prod
import Mathlib.MeasureTheory.Measure.MeasureSpace
import Mathlib.Topology.Defs.Filter

namespace QuantumParallelRepetition

open scoped ComplexOrder Matrix BigOperators InnerProductSpace
open Complex Matrix Finset

noncomputable section

open WithLp
open scoped BigOperators Kronecker ComplexOrder MatrixOrder

def directDSVRemainingCopyEquiv
    {L : ℕ} {β : Type*} (j : Fin L) :
    ((Fin j.val → β) × (Fin (L - j.val) → β)) ≃ (Fin L → β) where
  toFun z i :=
    if before : i.val < j.val then z.1 ⟨i.val, before⟩
    else z.2 ⟨i.val - j.val, by omega⟩
  invFun z :=
    (fun i => z ⟨i.val, by omega⟩,
     fun i => z ⟨j.val + i.val, by omega⟩)
  left_inv z := by
    rcases z with ⟨before, after⟩
    apply Prod.ext
    · funext i
      simp
    · funext i
      simp
  right_inv z := by
    funext i
    dsimp
    split_ifs with before
    · rfl
    · apply congrArg z
      apply Fin.ext
      change j.val + (i.val - j.val) = i.val
      omega

def directDSVSelectedCopyLocalHistoryEquiv
    {L : ℕ} {β : Type*} (j : Fin L) :
    (β × ((Fin j.val → β) × (Fin (L - j.val) → β))) ≃
      (Fin (L + 1) → β) :=
  (Equiv.prodCongr (Equiv.refl β)
    (directDSVRemainingCopyEquiv (β := β) j)).trans
    (Fin.insertNthEquiv (fun _ : Fin (L + 1) => β) j.castSucc)

abbrev UnconditionalSourcePhysicalStoppingPhaseFiber
    (S B N d L m : ℕ) :=
  Σ _ : DSVDensityRationalPublicMultiscalePhaseIndex S B ×
    DSVUniformDensityIndependentHistoryLocalIndex
      (L + 1) N d, Fin m

def unconditionalSourcePhysicalStoppingPhaseHarmonicIndexEquiv
    (S B N d L m : ℕ) :
    ((DSVDensityRationalPublicMultiscalePhaseIndex S B ×
        DSVUniformDensityThresholdWholeHistoryLocalIndex N d L) ×
      Fin m) ≃
      (Σ _ : Fin (L + 1),
        UnconditionalSourcePhysicalStoppingPhaseFiber S B N d L m)
    where
  toFun q := ⟨q.1.2.1, ⟨(q.1.1, q.1.2.2), q.2⟩⟩
  invFun q := ((q.2.1.1, ⟨q.1, q.2.1.2⟩), q.2.2)
  left_inv := by
    intro q
    rcases q with ⟨⟨phase, ⟨flag, history⟩⟩, work⟩
    rfl
  right_inv := by
    intro q
    rcases q with ⟨flag, ⟨⟨phase, history⟩, work⟩⟩
    rfl

def unconditionalSourcePhysicalStoppingTargetFirstIndexEquiv
    (S B N d L m : ℕ) :
    Fin (d *
      dSVDensityRationalPublicMultiscalePhaseResidual
        S B N d L m) ≃
      (Σ _ : Fin (L + 1),
        UnconditionalSourcePhysicalStoppingPhaseFiber S B N d L m) :=
  (dSVDensityRationalPublicMultiscalePhaseTargetFirstIndexEquiv
      S B N d L m).symm.trans
    (unconditionalSourcePhysicalStoppingPhaseHarmonicIndexEquiv
      S B N d L m)

def unconditionalSourcePhysicalStoppingTargetFirstStateEquiv
    (S B N d L m : ℕ) :
    EuclideanSpace ℂ
      (Fin (d *
        dSVDensityRationalPublicMultiscalePhaseResidual
          S B N d L m) ×
       Fin (d *
        dSVDensityRationalPublicMultiscalePhaseResidual
          S B N d L m)) ≃ₗᵢ[ℂ]
    EuclideanSpace ℂ
      ((Σ _ : Fin (L + 1),
          UnconditionalSourcePhysicalStoppingPhaseFiber
            S B N d L m) ×
       (Σ _ : Fin (L + 1),
          UnconditionalSourcePhysicalStoppingPhaseFiber
            S B N d L m)) :=
  LinearIsometryEquiv.piLpCongrLeft 2 ℂ ℂ
    (Equiv.prodCongr
      (unconditionalSourcePhysicalStoppingTargetFirstIndexEquiv
        S B N d L m)
      (unconditionalSourcePhysicalStoppingTargetFirstIndexEquiv
        S B N d L m))

def unconditionalSourceFixedPureStoppedSigmaReindexedUnitary
    {ι κ : Type*} [Fintype ι] [DecidableEq ι]
    [Fintype κ] [DecidableEq κ]
    (e : ι ≃ κ) (U : Matrix.unitaryGroup ι ℂ) :
    Matrix.unitaryGroup κ ℂ := by
  classical
  let M : Matrix ι ι ℂ := U.val
  refine ⟨Matrix.reindex e e M, ?_⟩
  rw [Matrix.mem_unitaryGroup_iff']
  have compatible :
      star (Matrix.reindex e e M) = Matrix.reindex e e (star M) := by
    ext i j
    simp [Matrix.star_eq_conjTranspose, Matrix.reindex_apply,
      Matrix.conjTranspose_apply]
  rw [compatible]
  change
    (Matrix.reindexAlgEquiv ℂ ℂ e) (star M) *
      (Matrix.reindexAlgEquiv ℂ ℂ e) M = 1
  rw [← map_mul (Matrix.reindexAlgEquiv ℂ ℂ e),
    (Matrix.mem_unitaryGroup_iff').mp U.property]
  exact map_one (Matrix.reindexAlgEquiv ℂ ℂ e)

def unconditionalSelectedMultiscalePhaseIndexEquiv
    {S B : ℕ} (scale : Fin (S + 1)) :
    (Fin B × Fin (Fintype.card (Fin S → Fin B))) ≃
      DSVDensityRationalPublicMultiscalePhaseIndex (S + 1) B :=
  ((Equiv.prodCongr (Equiv.refl (Fin B))
      (Fintype.equivFin (Fin S → Fin B)).symm).trans
    (Fin.insertNthEquiv
      (fun _ : Fin (S + 1) => Fin B) scale)).trans
      (Fintype.equivFin (Fin (S + 1) → Fin B))

def unconditionalActualMultiscalePhaseIndexEquiv
    {S B : ℕ} (scale : Fin S) :
    (Fin B × Fin (Fintype.card (Fin (S - 1) → Fin B))) ≃
      DSVDensityRationalPublicMultiscalePhaseIndex S B := by
  cases S with
  | zero => exact Fin.elim0 scale
  | succ S =>
      exact unconditionalSelectedMultiscalePhaseIndexEquiv
        (S := S) scale

def unconditionalSourcePhysicalCleanedReindexedUnitary
    {ι κ : Type*}
    [Fintype ι] [DecidableEq ι]
    [Fintype κ] [DecidableEq κ]
    (e : ι ≃ κ)
    (U : Matrix.unitaryGroup ι ℂ) :
    Matrix.unitaryGroup κ ℂ := by
  classical
  let M : Matrix ι ι ℂ := U.val
  refine ⟨Matrix.reindex e e M, ?_⟩
  rw [Matrix.mem_unitaryGroup_iff']
  have compatible :
      star (Matrix.reindex e e M) =
        Matrix.reindex e e (star M) := by
    ext i j
    simp [Matrix.star_eq_conjTranspose,
      Matrix.reindex_apply, Matrix.conjTranspose_apply]
  rw [compatible]
  change
    (Matrix.reindexAlgEquiv ℂ ℂ e) (star M) *
      (Matrix.reindexAlgEquiv ℂ ℂ e) M = 1
  rw [← map_mul (Matrix.reindexAlgEquiv ℂ ℂ e),
    (Matrix.mem_unitaryGroup_iff').mp U.property]
  exact map_one (Matrix.reindexAlgEquiv ℂ ℂ e)

def unconditionalSourcePhysicalCleanedTargetFirstUnitary
    (S B N d L m : ℕ)
    (U : Matrix.unitaryGroup
      (Fin (d *
        dSVDensityRationalPublicMultiscalePhaseResidual
          S B N d L m)) ℂ) :
    Matrix.unitaryGroup
      (Σ _ : Fin (L + 1),
        UnconditionalSourcePhysicalStoppingPhaseFiber
          S B N d L m) ℂ :=
  unconditionalSourcePhysicalCleanedReindexedUnitary
    (unconditionalSourcePhysicalStoppingTargetFirstIndexEquiv
      S B N d L m) U

def unconditionalSourcePhysicalCleanedStoppingFixedSource
    (S B N d L m : ℕ) :
    EuclideanSpace ℂ
      ((Σ _ : Fin (L + 1),
          UnconditionalSourcePhysicalStoppingPhaseFiber
            S B N d L m) ×
       (Σ _ : Fin (L + 1),
          UnconditionalSourcePhysicalStoppingPhaseFiber
            S B N d L m)) :=
  unconditionalSourcePhysicalStoppingTargetFirstStateEquiv
    S B N d L m
    (dSVDensityRationalPublicMultiscalePhaseTargetFirstPreparedSource
      S B N d L m)

end

end QuantumParallelRepetition
