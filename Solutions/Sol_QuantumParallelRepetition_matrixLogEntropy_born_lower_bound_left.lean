import Definitions.Def_quantum_parallel_repetition_game
import Definitions.Def_qpr_core_02
import Theorems.Thm_QuantumParallelRepetition_trace_mul_posSemidef_nonneg
import Theorems.Thm_QuantumParallelRepetition_positiveMatrixSpectralAtom_posSemidef
import Theorems.Thm_QuantumParallelRepetition_positiveMatrixSpectralAtom_sum
import Mathlib.Algebra.Algebra.Basic
import Mathlib.Algebra.Algebra.Defs
import Mathlib.Algebra.Algebra.Spectrum.Basic
import Mathlib.Algebra.BigOperators.Field
import Mathlib.Algebra.BigOperators.Finsupp.Basic
import Mathlib.Algebra.BigOperators.Group.Finset.Basic
import Mathlib.Algebra.BigOperators.Group.Finset.Defs
import Mathlib.Algebra.BigOperators.Group.Finset.Piecewise
import Mathlib.Algebra.BigOperators.Ring.Finset
import Mathlib.Algebra.Field.Defs
import Mathlib.Algebra.Group.Action.Defs
import Mathlib.Algebra.Group.Basic
import Mathlib.Algebra.Group.Defs
import Mathlib.Algebra.Group.Submonoid.Defs
import Mathlib.Algebra.GroupWithZero.Action.Defs
import Mathlib.Algebra.GroupWithZero.Basic
import Mathlib.Algebra.GroupWithZero.Defs
import Mathlib.Algebra.GroupWithZero.NeZero
import Mathlib.Algebra.GroupWithZero.Units.Basic
import Mathlib.Algebra.Module.Defs
import Mathlib.Algebra.Module.LinearMap.Defs
import Mathlib.Algebra.Module.Submodule.LinearMap
import Mathlib.Algebra.NeZero
import Mathlib.Algebra.Notation.Defs
import Mathlib.Algebra.Notation.Pi.Basic
import Mathlib.Algebra.Order.BigOperators.Group.Finset
import Mathlib.Algebra.Order.GroupWithZero.Unbundled.Basic
import Mathlib.Algebra.Order.GroupWithZero.Unbundled.Defs
import Mathlib.Algebra.Order.Monoid.Defs
import Mathlib.Algebra.Order.Ring.Defs
import Mathlib.Algebra.Order.Star.Basic
import Mathlib.Algebra.Ring.Defs
import Mathlib.Algebra.Ring.Hom.Defs
import Mathlib.Algebra.Ring.Nat
import Mathlib.Algebra.Star.Basic
import Mathlib.Algebra.Star.SelfAdjoint
import Mathlib.Analysis.CStarAlgebra.Classes
import Mathlib.Analysis.CStarAlgebra.ContinuousFunctionalCalculus.Unital
import Mathlib.Analysis.Complex.Basic
import Mathlib.Analysis.Complex.Order
import Mathlib.Analysis.Convex.Jensen
import Mathlib.Analysis.InnerProductSpace.Basic
import Mathlib.Analysis.InnerProductSpace.Defs
import Mathlib.Analysis.Matrix.HermitianFunctionalCalculus
import Mathlib.Analysis.Matrix.Normed
import Mathlib.Analysis.Matrix.Order
import Mathlib.Analysis.Matrix.PosDef
import Mathlib.Analysis.Matrix.Spectrum
import Mathlib.Analysis.Normed.Field.Basic
import Mathlib.Analysis.Normed.Lp.WithLp
import Mathlib.Analysis.Normed.Module.Basic
import Mathlib.Analysis.Normed.Ring.Basic
import Mathlib.Analysis.RCLike.Basic
import Mathlib.Analysis.SpecialFunctions.Log.Basic
import Mathlib.Analysis.SpecialFunctions.Log.NegMulLog
import Mathlib.Data.Complex.Basic
import Mathlib.Data.Finset.Defs
import Mathlib.Data.Finsupp.Defs
import Mathlib.Data.Fintype.Defs
import Mathlib.Data.Fintype.EquivFin
import Mathlib.Data.Fintype.Prod
import Mathlib.Data.FunLike.Basic
import Mathlib.Data.Int.Cast.Defs
import Mathlib.Data.Matrix.Basic
import Mathlib.Data.Matrix.Diagonal
import Mathlib.Data.Matrix.Mul
import Mathlib.Data.Nat.Cast.Defs
import Mathlib.Data.Real.Basic
import Mathlib.Data.Real.Star
import Mathlib.Data.Real.StarOrdered
import Mathlib.Data.Set.Defs
import Mathlib.Data.SetLike.Basic
import Mathlib.GroupTheory.GroupAction.Hom
import Mathlib.GroupTheory.GroupAction.Ring
import Mathlib.LinearAlgebra.Matrix.ConjTranspose
import Mathlib.LinearAlgebra.Matrix.Defs
import Mathlib.LinearAlgebra.Matrix.Hermitian
import Mathlib.LinearAlgebra.Matrix.Kronecker
import Mathlib.LinearAlgebra.Matrix.PosDef
import Mathlib.LinearAlgebra.Matrix.Trace
import Mathlib.LinearAlgebra.UnitaryGroup
import Mathlib.MeasureTheory.Measure.MeasureSpace
import Mathlib.Order.Basic
import Mathlib.Order.Defs.LinearOrder
import Mathlib.Order.Defs.PartialOrder
import Mathlib.Order.Interval.Set.Defs
import Mathlib.Order.RelClasses
import Mathlib.RingTheory.Etale.Weakly
import Mathlib.RingTheory.Flat.TorsionFree
import Mathlib.RingTheory.TotallySplit
import Mathlib.Tactic.FieldSimp.Lemmas
import Mathlib.Tactic.Linarith.Lemmas
import Mathlib.Tactic.NormNum.Basic
import Mathlib.Tactic.NormNum.Inv
import Mathlib.Tactic.NormNum.Result
import Mathlib.Tactic.Ring.Basic
import Mathlib.Tactic.Ring.Common
import Mathlib.Topology.Algebra.Module.ContinuousLinearMap.Basic
import Mathlib.Topology.Algebra.Ring.Basic
import Mathlib.Topology.Algebra.Ring.Real
import Mathlib.Topology.Algebra.Star.Real
import Mathlib.Topology.ContinuousMap.ContinuousSqrt
import Mathlib.Topology.Defs.Filter
import Mathlib.Topology.Instances.Matrix
import Mathlib.Topology.MetricSpace.Basic
import Mathlib.Topology.MetricSpace.Defs
import Mathlib.Topology.MetricSpace.Pseudo.Defs
import Mathlib.Topology.UniformSpace.Defs

namespace QuantumParallelRepetition

noncomputable section

open scoped BigOperators

variable {ι : Type*}

theorem negMulLog_rescale
    {W p : ℝ} (hW : 0 < W) (hp : 0 < p) :
    W * Real.negMulLog (p / W) = p * Real.log (W / p) := by
  unfold Real.negMulLog
  rw [Real.log_div hp.ne' hW.ne', Real.log_div hW.ne' hp.ne']
  field_simp
  ring

theorem finite_weighted_entropy_le
    (s : Finset ι) (w h : ι → ℝ) {W p : ℝ}
    (hw : ∀ i ∈ s, 0 ≤ w i)
    (hh : ∀ i ∈ s, 0 ≤ h i)
    (hW : 0 < W)
    (hp : 0 < p)
    (hw_sum : (∑ i ∈ s, w i) = W)
    (hp_sum : (∑ i ∈ s, w i * h i) = p) :
    (∑ i ∈ s, w i * Real.negMulLog (h i))
      ≤ p * Real.log (W / p) := by
  classical
  have h_normalized :
      (∑ i ∈ s, w i / W) = 1 := by
    calc
      (∑ i ∈ s, w i / W) = (∑ i ∈ s, w i) / W := by
        rw [Finset.sum_div]
      _ = W / W := by rw [hw_sum]
      _ = 1 := div_self hW.ne'
  have h_mean :
      (∑ i ∈ s, (w i / W) * h i) = p / W := by
    calc
      (∑ i ∈ s, (w i / W) * h i) =
          ∑ i ∈ s, (w i * h i) / W := by
            apply Finset.sum_congr rfl
            intro i hi
            ring
      _ = (∑ i ∈ s, w i * h i) / W := by
            rw [Finset.sum_div]
      _ = p / W := by rw [hp_sum]
  have h_jensen :
      (∑ i ∈ s, (w i / W) * Real.negMulLog (h i))
        ≤ Real.negMulLog (∑ i ∈ s, (w i / W) * h i) := by
    simpa only [smul_eq_mul] using
      (Real.concaveOn_negMulLog.le_map_sum
        (t := s) (w := fun i => w i / W) (p := h)
        (fun i hi => div_nonneg (hw i hi) hW.le)
        h_normalized
        (fun i hi => show h i ∈ Set.Ici (0 : ℝ) from hh i hi))
  calc
    (∑ i ∈ s, w i * Real.negMulLog (h i)) =
        W * (∑ i ∈ s, (w i / W) * Real.negMulLog (h i)) := by
          rw [Finset.mul_sum]
          apply Finset.sum_congr rfl
          intro i hi
          field_simp
    _ ≤ W * Real.negMulLog (∑ i ∈ s, (w i / W) * h i) :=
          mul_le_mul_of_nonneg_left h_jensen hW.le
    _ = W * Real.negMulLog (p / W) := by rw [h_mean]
    _ = p * Real.log (W / p) := negMulLog_rescale hW hp

theorem finite_weighted_entropy_le_of_weight_bound
    (s : Finset ι) (w h : ι → ℝ) {W N p : ℝ}
    (hw : ∀ i ∈ s, 0 ≤ w i)
    (hh : ∀ i ∈ s, 0 ≤ h i)
    (hW : 0 < W)
    (hp : 0 < p)
    (hw_sum : (∑ i ∈ s, w i) = W)
    (hp_sum : (∑ i ∈ s, w i * h i) = p)
    (hWN : W ≤ N) :
    (∑ i ∈ s, w i * Real.negMulLog (h i))
      ≤ p * Real.log (N / p) := by
  have hquot : W / p ≤ N / p := by
    exact (div_le_div_iff_of_pos_right hp).mpr hWN
  have hlog : Real.log (W / p) ≤ Real.log (N / p) :=
    Real.log_le_log (div_pos hW hp) hquot
  exact
    (finite_weighted_entropy_le s w h hw hh hW hp hw_sum hp_sum).trans
      (mul_le_mul_of_nonneg_left hlog hp.le)

end

noncomputable section

open MeasureTheory Filter Set
open scoped BigOperators Topology ComplexOrder MatrixOrder Matrix.Norms.Elementwise

set_option backward.isDefEq.respectTransparency false

attribute [local instance] Matrix.normedAddCommGroup Matrix.normedSpace

@[simp] theorem spectralConjugationCLM_apply
    {d : Type*} [Fintype d] [DecidableEq d]
    (U : Matrix.unitaryGroup d ℂ) (A : Matrix d d ℂ) :
    spectralConjugationCLM U A =
      (U : Matrix d d ℂ) * A * star (U : Matrix d d ℂ) := by
  rfl

end

noncomputable section

open Matrix
open scoped BigOperators Kronecker ComplexOrder MatrixOrder

set_option backward.isDefEq.respectTransparency false
set_option maxHeartbeats 600000

theorem positiveMatrix_cfc_spectral_sum
    {d : Type*} [Fintype d] [DecidableEq d]
    (F : Matrix d d ℂ) (hF : F.PosSemidef)
    (f : ℝ → ℝ) :
    cfc f F =
      ∑ i : d,
        f (hF.isHermitian.eigenvalues i) •
          positiveMatrixSpectralAtom F hF i := by
  classical
  let U := hF.isHermitian.eigenvectorUnitary
  let eigenvalue := hF.isHermitian.eigenvalues
  have hdiag :
      (∑ i : d,
        f (eigenvalue i) •
          Matrix.diagonal (Pi.single i (1 : ℂ))) =
        Matrix.diagonal fun i => (f (eigenvalue i) : ℂ) := by
    ext j k
    by_cases hjk : j = k
    · subst k
      simp [Matrix.sum_apply, Pi.single_apply]
    · simp [Matrix.sum_apply,         hjk]
  calc
    cfc f F =
        spectralConjugationCLM U
          (Matrix.diagonal fun i => (f (eigenvalue i) : ℂ)) := by
      rw [hF.isHermitian.cfc_eq]
      rfl
    _ = spectralConjugationCLM U
          (∑ i : d,
            f (eigenvalue i) •
              Matrix.diagonal (Pi.single i (1 : ℂ))) := by
      rw [hdiag]
    _ = ∑ i : d,
        f (eigenvalue i) •
          positiveMatrixSpectralAtom F hF i := by
      simp [positiveMatrixSpectralAtom, U, eigenvalue]

theorem leftSpectralBornWeight_nonneg
    {dA dB : Type*}
    [Fintype dA] [Fintype dB]
    [DecidableEq dA] [DecidableEq dB]
    (ρ : DensityMatrix (dA × dB))
    (F : Matrix dA dA ℂ) (hF : F.PosSemidef)
    (G : Matrix dB dB ℂ) (hG : G.PosSemidef)
    (i : dA) :
    0 ≤ leftSpectralBornWeight ρ F hF G i := by
  exact trace_mul_posSemidef_nonneg ρ.positive
    ((positiveMatrixSpectralAtom_posSemidef F hF i).kronecker hG)

theorem leftSpectralBornWeight_sum
    {dA dB : Type*}
    [Fintype dA] [Fintype dB]
    [DecidableEq dA] [DecidableEq dB]
    (ρ : DensityMatrix (dA × dB))
    (F : Matrix dA dA ℂ) (hF : F.PosSemidef)
    (G : Matrix dB dB ℂ) :
    (∑ i : dA, leftSpectralBornWeight ρ F hF G i) =
      bornTracePairing ρ.matrix (1 : Matrix dA dA ℂ) G := by
  unfold leftSpectralBornWeight
  calc
    (∑ i : dA,
      bornTracePairing ρ.matrix
        (positiveMatrixSpectralAtom F hF i) G) =
      bornTracePairing ρ.matrix
        (∑ i : dA, positiveMatrixSpectralAtom F hF i) G := by
          simp [map_sum, LinearMap.sum_apply]
    _ = bornTracePairing ρ.matrix (1 : Matrix dA dA ℂ) G := by
      rw [positiveMatrixSpectralAtom_sum]

theorem leftSpectralBornWeight_moment
    {dA dB : Type*}
    [Fintype dA] [Fintype dB]
    [DecidableEq dA] [DecidableEq dB]
    (ρ : DensityMatrix (dA × dB))
    (F : Matrix dA dA ℂ) (hF : F.PosSemidef)
    (G : Matrix dB dB ℂ) :
    (∑ i : dA,
      leftSpectralBornWeight ρ F hF G i *
        hF.isHermitian.eigenvalues i) =
      bornTracePairing ρ.matrix F G := by
  have hspectral : F =
      ∑ i : dA,
        hF.isHermitian.eigenvalues i •
          positiveMatrixSpectralAtom F hF i := by
    calc
      F = cfc (fun z : ℝ => z) F :=
        (cfc_id' ℝ F hF.isHermitian).symm
      _ = _ := positiveMatrix_cfc_spectral_sum F hF (fun z : ℝ => z)
  have h := congrArg
    (fun H : Matrix dA dA ℂ => bornTracePairing ρ.matrix H G)
      hspectral
  simp only [map_sum, LinearMap.sum_apply, map_smul,
    LinearMap.smul_apply, smul_eq_mul] at h
  calc
    (∑ i : dA,
      leftSpectralBornWeight ρ F hF G i *
        hF.isHermitian.eigenvalues i) =
      ∑ i : dA,
        hF.isHermitian.eigenvalues i *
          bornTracePairing ρ.matrix
            (positiveMatrixSpectralAtom F hF i) G := by
        apply Finset.sum_congr rfl
        intro i _
        unfold leftSpectralBornWeight
        ring
    _ = bornTracePairing ρ.matrix F G := h.symm

theorem leftSpectralBornWeight_entropy
    {dA dB : Type*}
    [Fintype dA] [Fintype dB]
    [DecidableEq dA] [DecidableEq dB]
    (ρ : DensityMatrix (dA × dB))
    (F : Matrix dA dA ℂ) (hF : F.PosSemidef)
    (G : Matrix dB dB ℂ) :
    bornTracePairing ρ.matrix
        (cfc (fun z : ℝ => z * Real.log z) F) G =
      ∑ i : dA,
        leftSpectralBornWeight ρ F hF G i *
          (hF.isHermitian.eigenvalues i *
            Real.log (hF.isHermitian.eigenvalues i)) := by
  have hspectral := positiveMatrix_cfc_spectral_sum F hF
    (fun z : ℝ => z * Real.log z)
  have h := congrArg
    (fun H : Matrix dA dA ℂ => bornTracePairing ρ.matrix H G)
      hspectral
  simp only [map_sum, LinearMap.sum_apply, map_smul,
    LinearMap.smul_apply, smul_eq_mul] at h
  calc
    bornTracePairing ρ.matrix
        (cfc (fun z : ℝ => z * Real.log z) F) G =
      ∑ i : dA,
        (hF.isHermitian.eigenvalues i *
          Real.log (hF.isHermitian.eigenvalues i)) *
          bornTracePairing ρ.matrix
            (positiveMatrixSpectralAtom F hF i) G := h
    _ = ∑ i : dA,
      leftSpectralBornWeight ρ F hF G i *
        (hF.isHermitian.eigenvalues i *
          Real.log (hF.isHermitian.eigenvalues i)) := by
      apply Finset.sum_congr rfl
      intro i _
      unfold leftSpectralBornWeight
      ring

theorem bornTracePairing_one_one
    {dA dB : Type*}
    [Fintype dA] [Fintype dB]
    [DecidableEq dA] [DecidableEq dB]
    (ρ : DensityMatrix (dA × dB)) :
    bornTracePairing ρ.matrix
      (1 : Matrix dA dA ℂ) (1 : Matrix dB dB ℂ) = 1 := by
  simp [bornTracePairing, ρ.trace_one]

theorem bornTracePairing_one_le_one
    {dA dB : Type*}
    [Fintype dA] [Fintype dB]
    [DecidableEq dA] [DecidableEq dB]
    (ρ : DensityMatrix (dA × dB))
    (G : Matrix dB dB ℂ)
    (hGcomplement : (1 - G).PosSemidef) :
    bornTracePairing ρ.matrix (1 : Matrix dA dA ℂ) G ≤ 1 := by
  have hpositive : 0 ≤ bornTracePairing ρ.matrix
      (1 : Matrix dA dA ℂ) (1 - G) :=
    trace_mul_posSemidef_nonneg ρ.positive
      (Matrix.PosSemidef.one.kronecker hGcomplement)
  have hdiff : bornTracePairing ρ.matrix
      (1 : Matrix dA dA ℂ) (1 - G) =
      bornTracePairing ρ.matrix
        (1 : Matrix dA dA ℂ) (1 : Matrix dB dB ℂ) -
      bornTracePairing ρ.matrix (1 : Matrix dA dA ℂ) G :=
    (bornTracePairing ρ.matrix (1 : Matrix dA dA ℂ)).map_sub 1 G
  rw [hdiff, bornTracePairing_one_one] at hpositive
  linarith

theorem positiveContraction_eigenvalue_le_one
    {d : Type*} [Fintype d] [DecidableEq d]
    (F : Matrix d d ℂ) (hF : F.PosSemidef)
    (hcomplement : (1 - F).PosSemidef)
    (i : d) :
    hF.isHermitian.eigenvalues i ≤ 1 := by
  have hFle : F ≤ (1 : Matrix d d ℂ) :=
    Matrix.le_iff.mpr hcomplement
  have hspectrum : ∀ z ∈ spectrum ℝ F, z ≤ 1 :=
    (CFC.le_one_iff (R := ℝ) F hF.isHermitian).mp hFle
  exact hspectrum _ (hF.isHermitian.eigenvalues_mem_spectrum_real i)

theorem leftSpectralBornWeight_negEntropy
    {dA dB : Type*}
    [Fintype dA] [Fintype dB]
    [DecidableEq dA] [DecidableEq dB]
    (ρ : DensityMatrix (dA × dB))
    (F : Matrix dA dA ℂ) (hF : F.PosSemidef)
    (G : Matrix dB dB ℂ) :
    -bornTracePairing ρ.matrix
        (cfc (fun z : ℝ => z * Real.log z) F) G =
      ∑ i : dA,
        leftSpectralBornWeight ρ F hF G i *
          Real.negMulLog (hF.isHermitian.eigenvalues i) := by
  rw [leftSpectralBornWeight_entropy ρ F hF G,
    ← Finset.sum_neg_distrib]
  apply Finset.sum_congr rfl
  intro i _
  simp [Real.negMulLog]

end

open scoped ComplexOrder Matrix BigOperators InnerProductSpace
open Complex Matrix Finset

end QuantumParallelRepetition


open QuantumParallelRepetition
open scoped ComplexOrder Matrix BigOperators InnerProductSpace
open Complex Matrix Finset
open Matrix
open scoped BigOperators Kronecker ComplexOrder MatrixOrder
set_option backward.isDefEq.respectTransparency false
set_option maxHeartbeats 600000

theorem solution
    {dA dB : Type*}
    [Fintype dA] [Fintype dB]
    [DecidableEq dA] [DecidableEq dB]
    (ρ : DensityMatrix (dA × dB))
    (F : Matrix dA dA ℂ) (hF : F.PosSemidef)
    (hFcomplement : (1 - F).PosSemidef)
    (G : Matrix dB dB ℂ) (hG : G.PosSemidef)
    (hGcomplement : (1 - G).PosSemidef) :
    -bornTracePairing ρ.matrix
        (cfc (fun z : ℝ => z * Real.log z) F) G ≤
      Real.negMulLog (bornTracePairing ρ.matrix F G) := by
  classical
  have hp_nonneg : 0 ≤ bornTracePairing ρ.matrix F G :=
    trace_mul_posSemidef_nonneg ρ.positive (hF.kronecker hG)
  have hmass_le :
      bornTracePairing ρ.matrix F G ≤
        bornTracePairing ρ.matrix (1 : Matrix dA dA ℂ) G := by
    calc
      bornTracePairing ρ.matrix F G =
        ∑ i : dA,
          leftSpectralBornWeight ρ F hF G i *
            hF.isHermitian.eigenvalues i :=
          (leftSpectralBornWeight_moment ρ F hF G).symm
      _ ≤ ∑ i : dA, leftSpectralBornWeight ρ F hF G i := by
        apply Finset.sum_le_sum
        intro i _
        exact mul_le_of_le_one_right
          (leftSpectralBornWeight_nonneg ρ F hF G hG i)
          (positiveContraction_eigenvalue_le_one F hF hFcomplement i)
      _ = bornTracePairing ρ.matrix (1 : Matrix dA dA ℂ) G :=
        leftSpectralBornWeight_sum ρ F hF G
  by_cases hp : bornTracePairing ρ.matrix F G = 0
  · have hzero :
        (∑ i : dA,
          leftSpectralBornWeight ρ F hF G i *
            hF.isHermitian.eigenvalues i) = 0 := by
        rw [leftSpectralBornWeight_moment, hp]
    have hterm (i : dA) :
        leftSpectralBornWeight ρ F hF G i *
          hF.isHermitian.eigenvalues i = 0 :=
      (Finset.sum_eq_zero_iff_of_nonneg
        (fun j _ => mul_nonneg
          (leftSpectralBornWeight_nonneg ρ F hF G hG j)
          (hF.eigenvalues_nonneg j))).mp hzero i (Finset.mem_univ i)
    have hentropy :
        (∑ i : dA,
          leftSpectralBornWeight ρ F hF G i *
            Real.negMulLog (hF.isHermitian.eigenvalues i)) = 0 := by
      apply Finset.sum_eq_zero
      intro i _
      rcases mul_eq_zero.mp (hterm i) with hw | he
      · simp [hw]
      · simp [he]
    calc
      -bornTracePairing ρ.matrix
          (cfc (fun z : ℝ => z * Real.log z) F) G =
        ∑ i : dA,
          leftSpectralBornWeight ρ F hF G i *
            Real.negMulLog (hF.isHermitian.eigenvalues i) :=
          leftSpectralBornWeight_negEntropy ρ F hF G
      _ = 0 := hentropy
      _ ≤ Real.negMulLog (bornTracePairing ρ.matrix F G) := by
        rw [hp]
        simp
  · have hp_pos : 0 < bornTracePairing ρ.matrix F G :=
      lt_of_le_of_ne hp_nonneg (Ne.symm hp)
    have hW_pos : 0 <
        bornTracePairing ρ.matrix (1 : Matrix dA dA ℂ) G :=
      lt_of_lt_of_le hp_pos hmass_le
    have hscalar := finite_weighted_entropy_le_of_weight_bound
      (Finset.univ : Finset dA)
      (leftSpectralBornWeight ρ F hF G)
      hF.isHermitian.eigenvalues
      (W := bornTracePairing ρ.matrix (1 : Matrix dA dA ℂ) G)
      (N := (1 : ℝ))
      (p := bornTracePairing ρ.matrix F G)
      (fun i _ => leftSpectralBornWeight_nonneg ρ F hF G hG i)
      (fun i _ => hF.eigenvalues_nonneg i)
      hW_pos hp_pos
      (leftSpectralBornWeight_sum ρ F hF G)
      (leftSpectralBornWeight_moment ρ F hF G)
      (bornTracePairing_one_le_one ρ G hGcomplement)
    calc
      -bornTracePairing ρ.matrix
          (cfc (fun z : ℝ => z * Real.log z) F) G =
        ∑ i : dA,
          leftSpectralBornWeight ρ F hF G i *
            Real.negMulLog (hF.isHermitian.eigenvalues i) :=
        leftSpectralBornWeight_negEntropy ρ F hF G
      _ ≤ bornTracePairing ρ.matrix F G *
          Real.log (1 / bornTracePairing ρ.matrix F G) := hscalar
      _ = Real.negMulLog (bornTracePairing ρ.matrix F G) := by
        rw [one_div, Real.log_inv]
        simp [Real.negMulLog]
