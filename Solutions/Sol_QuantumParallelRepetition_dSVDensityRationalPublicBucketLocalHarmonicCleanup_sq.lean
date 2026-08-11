import Definitions.Def_quantum_parallel_repetition_game
import Definitions.Def_qpr_core_02
import Theorems.Thm_QuantumParallelRepetition_embezzlementState_norm
import Theorems.Thm_QuantumParallelRepetition_exists_proofUniversalHarmonicCatalyst
import Mathlib.Algebra.Algebra.Basic
import Mathlib.Algebra.Algebra.Defs
import Mathlib.Algebra.Algebra.Equiv
import Mathlib.Algebra.Algebra.Hom
import Mathlib.Algebra.Algebra.NonUnitalHom
import Mathlib.Algebra.BigOperators.Group.Finset.Basic
import Mathlib.Algebra.BigOperators.Group.Finset.Defs
import Mathlib.Algebra.BigOperators.Ring.Finset
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
import Mathlib.Algebra.GroupWithZero.Defs
import Mathlib.Algebra.GroupWithZero.Hom
import Mathlib.Algebra.Module.Defs
import Mathlib.Algebra.Module.Pi
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
import Mathlib.Analysis.Complex.Basic
import Mathlib.Analysis.Complex.Norm
import Mathlib.Analysis.InnerProductSpace.Adjoint
import Mathlib.Analysis.InnerProductSpace.Basic
import Mathlib.Analysis.InnerProductSpace.Defs
import Mathlib.Analysis.InnerProductSpace.PiL2
import Mathlib.Analysis.Matrix.Normed
import Mathlib.Analysis.Matrix.Order
import Mathlib.Analysis.Normed.Field.Basic
import Mathlib.Analysis.Normed.Group.Basic
import Mathlib.Analysis.Normed.Group.Defs
import Mathlib.Analysis.Normed.Group.Uniform
import Mathlib.Analysis.Normed.Lp.PiLp
import Mathlib.Analysis.Normed.Lp.WithLp
import Mathlib.Analysis.Normed.Module.Basic
import Mathlib.Analysis.Normed.Ring.Basic
import Mathlib.Analysis.RCLike.Basic
import Mathlib.Data.Complex.Basic
import Mathlib.Data.ENNReal.Basic
import Mathlib.Data.Finset.Defs
import Mathlib.Data.Fintype.Basic
import Mathlib.Data.Fintype.BigOperators
import Mathlib.Data.Fintype.Defs
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
import Mathlib.Data.Real.Star
import Mathlib.Data.Real.StarOrdered
import Mathlib.Data.SetLike.Basic
import Mathlib.LinearAlgebra.Matrix.ConjTranspose
import Mathlib.LinearAlgebra.Matrix.Defs
import Mathlib.LinearAlgebra.Matrix.Kronecker
import Mathlib.LinearAlgebra.UnitaryGroup
import Mathlib.Logic.Equiv.Defs
import Mathlib.Logic.Equiv.Fin.Basic
import Mathlib.Logic.Equiv.Prod
import Mathlib.MeasureTheory.Measure.MeasureSpace
import Mathlib.Order.Defs.LinearOrder
import Mathlib.Order.Defs.PartialOrder
import Mathlib.Order.Lattice
import Mathlib.Tactic.Linarith.Lemmas
import Mathlib.Tactic.NormNum.Basic
import Mathlib.Tactic.NormNum.Ineq
import Mathlib.Tactic.NormNum.Pow
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

end

open scoped ComplexOrder Matrix BigOperators InnerProductSpace
open Complex Matrix Finset

noncomputable section

open WithLp
open scoped BigOperators Kronecker ComplexOrder MatrixOrder

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

theorem localUnitaryPureResidual_targetLocalInverse_reset
    {n : ℕ}
    (U V : Matrix.unitaryGroup (Fin n) ℂ)
    (x : EuclideanSpace ℂ (Fin n × Fin n)) :
    localUnitaryAction U⁻¹ V⁻¹
        (localUnitaryAction U V x) = x := by
  rw [localUnitaryAction_comp,
    inv_mul_cancel, inv_mul_cancel]
  simp [localUnitaryAction]

end

noncomputable section

open WithLp
open scoped BigOperators Kronecker ComplexOrder MatrixOrder

set_option backward.isDefEq.respectTransparency false
set_option maxHeartbeats 1600000
set_option maxRecDepth 2048

theorem harmonicCoherentSharedResource_inverseAbsorption_distance
    {d n : ℕ}
    (U V : Matrix.unitaryGroup (Fin (d * n)) ℂ)
    (resource : BipartiteUnitVector d) :
    ‖localUnitaryAction U⁻¹ V⁻¹
        (tensorEmbezzlementTarget (n := n) resource) -
      embezzlementState (d * n)‖ =
      ‖localUnitaryAction U V
          (embezzlementState (d * n)) -
        tensorEmbezzlementTarget (n := n) resource‖ := by
  have reset :
      localUnitaryAction U V
        (localUnitaryAction U⁻¹ V⁻¹
          (tensorEmbezzlementTarget (n := n) resource)) =
        tensorEmbezzlementTarget (n := n) resource := by
    simpa using
      (localUnitaryPureResidual_targetLocalInverse_reset
        U⁻¹ V⁻¹
        (tensorEmbezzlementTarget (n := n) resource))
  calc
    _ = ‖localUnitaryAction U V
        (localUnitaryAction U⁻¹ V⁻¹
          (tensorEmbezzlementTarget (n := n) resource) -
          embezzlementState (d * n))‖ :=
      (localUnitaryAction_norm U V _).symm
    _ = ‖tensorEmbezzlementTarget (n := n) resource -
          localUnitaryAction U V
            (embezzlementState (d * n))‖ := by
      rw [localUnitaryAction_sub, reset]
    _ = _ := norm_sub_rev _ _

end

noncomputable section

open WithLp
open scoped BigOperators Kronecker ComplexOrder MatrixOrder

set_option backward.isDefEq.respectTransparency false
set_option maxHeartbeats 1600000
set_option maxRecDepth 2048

theorem tensorEmbezzlementTarget_sub_norm
    {d n : ℕ} (positive : 0 < n)
    (ξ ζ : BipartiteUnitVector d) :
    ‖tensorEmbezzlementTarget (n := n) ξ -
      tensorEmbezzlementTarget (n := n) ζ‖ =
      ‖ξ.val - ζ.val‖ := by
  classical
  let e : ((Fin d × Fin d) × (Fin n × Fin n)) ≃
      (Fin (d * n) × Fin (d * n)) :=
    (Equiv.prodProdProdComm (Fin d) (Fin d) (Fin n) (Fin n)).trans
      (Equiv.prodCongr finProdFinEquiv finProdFinEquiv)
  have point (q : (Fin d × Fin d) × (Fin n × Fin n)) :
      (tensorEmbezzlementTarget (n := n) ξ -
        tensorEmbezzlementTarget (n := n) ζ) (e q) =
        (ξ.val q.1 - ζ.val q.1) *
          embezzlementState n q.2 := by
    rcases q with ⟨⟨a, b⟩, ⟨i, j⟩⟩
    change
      ξ.val
          ((finProdFinEquiv.symm (finProdFinEquiv (a, i))).1,
            (finProdFinEquiv.symm (finProdFinEquiv (b, j))).1) *
          embezzlementState n
            ((finProdFinEquiv.symm (finProdFinEquiv (a, i))).2,
              (finProdFinEquiv.symm (finProdFinEquiv (b, j))).2) -
        ζ.val
          ((finProdFinEquiv.symm (finProdFinEquiv (a, i))).1,
            (finProdFinEquiv.symm (finProdFinEquiv (b, j))).1) *
          embezzlementState n
            ((finProdFinEquiv.symm (finProdFinEquiv (a, i))).2,
              (finProdFinEquiv.symm (finProdFinEquiv (b, j))).2) = _
    simp only [Equiv.symm_apply_apply]
    ring
  have reindex :
      (∑ q : Fin (d * n) × Fin (d * n),
        ‖(tensorEmbezzlementTarget (n := n) ξ -
          tensorEmbezzlementTarget (n := n) ζ) q‖ ^ 2) =
        ∑ q : (Fin d × Fin d) × (Fin n × Fin n),
          ‖(ξ.val q.1 - ζ.val q.1) *
            embezzlementState n q.2‖ ^ 2 := by
    calc
      (∑ q : Fin (d * n) × Fin (d * n),
        ‖(tensorEmbezzlementTarget (n := n) ξ -
          tensorEmbezzlementTarget (n := n) ζ) q‖ ^ 2) =
          ∑ q : (Fin d × Fin d) × (Fin n × Fin n),
            ‖(tensorEmbezzlementTarget (n := n) ξ -
              tensorEmbezzlementTarget (n := n) ζ)
                (e q)‖ ^ 2 :=
            (Equiv.sum_comp e
              (fun q : Fin (d * n) × Fin (d * n) =>
                ‖(tensorEmbezzlementTarget (n := n) ξ -
                  tensorEmbezzlementTarget (n := n) ζ)
                    q‖ ^ 2)).symm
      _ = _ := by
        apply Finset.sum_congr rfl
        intro q _
        rw [point q]
  have factor :
      (∑ q : (Fin d × Fin d) × (Fin n × Fin n),
        ‖(ξ.val q.1 - ζ.val q.1) *
          embezzlementState n q.2‖ ^ 2) =
        (∑ q : Fin d × Fin d, ‖(ξ.val - ζ.val) q‖ ^ 2) *
          (∑ q : Fin n × Fin n,
            ‖embezzlementState n q‖ ^ 2) := by
    rw [Fintype.sum_prod_type]
    simp_rw [norm_mul, mul_pow]
    exact (Fintype.sum_mul_sum
      (fun q : Fin d × Fin d => ‖(ξ.val - ζ.val) q‖ ^ 2)
      (fun q : Fin n × Fin n =>
        ‖embezzlementState n q‖ ^ 2)).symm
  have squares :
      ‖tensorEmbezzlementTarget (n := n) ξ -
        tensorEmbezzlementTarget (n := n) ζ‖ ^ 2 =
        ‖ξ.val - ζ.val‖ ^ 2 := by
    rw [EuclideanSpace.norm_sq_eq, reindex, factor,
      ← EuclideanSpace.norm_sq_eq, ← EuclideanSpace.norm_sq_eq,
      embezzlementState_norm n positive]
    ring
  nlinarith [norm_nonneg
    (tensorEmbezzlementTarget (n := n) ξ -
      tensorEmbezzlementTarget (n := n) ζ),
    norm_nonneg (ξ.val - ζ.val)]

end

noncomputable section

open scoped BigOperators Kronecker ComplexOrder MatrixOrder

theorem dSVBobTargetLocalHarmonicCleanup_stable
    {d n : ℕ} (hn : 0 < n)
    (U V : Matrix.unitaryGroup (Fin (d * n)) ℂ)
    (ξ ζ : BipartiteUnitVector d)
    (ε : ℝ)
    (clean :
      ‖localUnitaryAction U V
          (tensorEmbezzlementTarget (n := n) ζ) -
        embezzlementState (d * n)‖ ≤ ε) :
    ‖localUnitaryAction U V
        (tensorEmbezzlementTarget (n := n) ξ) -
      embezzlementState (d * n)‖ ≤
        ‖ξ.val - ζ.val‖ + ε := by
  let source := localUnitaryAction U V
    (tensorEmbezzlementTarget (n := n) ξ)
  let reference := localUnitaryAction U V
    (tensorEmbezzlementTarget (n := n) ζ)
  let residual := embezzlementState (d * n)
  have preserved : ‖source - reference‖ = ‖ξ.val - ζ.val‖ := by
    dsimp [source, reference]
    rw [← localUnitaryAction_sub,
      localUnitaryAction_norm,
      tensorEmbezzlementTarget_sub_norm hn]
  have triangle : ‖source - residual‖ ≤
      ‖source - reference‖ + ‖reference - residual‖ := by
    simpa [dist_eq_norm] using dist_triangle source reference residual
  change ‖source - residual‖ ≤ ‖ξ.val - ζ.val‖ + ε
  calc
    ‖source - residual‖ ≤
        ‖source - reference‖ + ‖reference - residual‖ := triangle
    _ ≤ ‖ξ.val - ζ.val‖ + ε := by
      rw [preserved]
      simpa [add_comm] using add_le_add_left
        (show ‖reference - residual‖ ≤ ε by
          simpa [reference, residual] using clean)
        ‖ξ.val - ζ.val‖

theorem dSVBobTargetLocalUniformHarmonicWorkCleanup
    {T : Type*}
    (d : ℕ) (dimension : 0 < d)
    (work : T → BipartiteUnitVector d)
    (ε : ℝ) (precision : 0 < ε) :
    ∃ n : ℕ, 0 < n ∧
      ∃ (A B : T → Matrix.unitaryGroup (Fin (d * n)) ℂ),
        (∀ ζ : T,
          ‖localUnitaryAction (A ζ) (B ζ)
              (tensorEmbezzlementTarget (n := n) (work ζ)) -
            embezzlementState (d * n)‖ ≤ ε) ∧
        (∀ ξ ζ : T,
          ‖localUnitaryAction (A ζ) (B ζ)
              (tensorEmbezzlementTarget (n := n) (work ξ)) -
            embezzlementState (d * n)‖ ≤
              ‖(work ξ).val - (work ζ).val‖ + ε) := by
  classical
  obtain ⟨n, positive, universal⟩ :=
    exists_proofUniversalHarmonicCatalyst
      d dimension ε precision
  have each (ζ : T) :
      ∃ U V : Matrix.unitaryGroup (Fin (d * n)) ℂ,
        ‖localUnitaryAction U V
            (embezzlementState (d * n)) -
          tensorEmbezzlementTarget (n := n)
            (work ζ)‖ ≤ ε :=
    universal (work ζ)
  choose U V prepared using each
  refine ⟨n, positive,
    (fun ζ => (U ζ)⁻¹),
    (fun ζ => (V ζ)⁻¹), ?_, ?_⟩
  · intro ζ
    rw [harmonicCoherentSharedResource_inverseAbsorption_distance]
    exact prepared ζ
  · intro ξ ζ
    apply dSVBobTargetLocalHarmonicCleanup_stable
      positive ((U ζ)⁻¹) ((V ζ)⁻¹)
      (work ξ) (work ζ) ε
    rw [harmonicCoherentSharedResource_inverseAbsorption_distance]
    exact prepared ζ

end

end QuantumParallelRepetition


open QuantumParallelRepetition
open scoped ComplexOrder Matrix BigOperators InnerProductSpace
open Complex Matrix Finset
open scoped BigOperators Kronecker ComplexOrder MatrixOrder

theorem solution
    {Ω I : Type*} [DecidableEq I] {N D : ℕ} (dimension : 0 < N)
    (work : Fin D → BipartiteUnitVector N)
    (bucket : Ω → Fin D → I)
    (representative : Ω → I → Fin D)
    (ε : ℝ) (precision : 0 < ε) :
    ∃ n : ℕ, 0 < n ∧
      ∃ A B : Ω → I → Matrix.unitaryGroup (Fin (N * n)) ℂ,
        ∀ (phase : Ω) (r s : Fin D),
          ‖localUnitaryAction
              (A phase (bucket phase r))
              (B phase (bucket phase s))
              (tensorEmbezzlementTarget (n := n) (work r)) -
            embezzlementState (N * n)‖ ^ 2 ≤
              2 * ε ^ 2 +
              2 * ‖(work r).val -
                (work (representative phase (bucket phase r))).val‖ ^ 2 +
              4 * (if bucket phase r = bucket phase s
                then (0 : ℝ) else 1) := by
  classical
  obtain ⟨n, positive, A, B, diagonal, _stable⟩ :=
    dSVBobTargetLocalUniformHarmonicWorkCleanup
      N dimension
      (fun q : Ω × I => work (representative q.1 q.2))
      ε precision
  refine ⟨n, positive,
    fun phase label => A (phase, label),
    fun phase label => B (phase, label), ?_⟩
  intro phase r s
  by_cases same : bucket phase r = bucket phase s
  · have clean := diagonal (phase, bucket phase r)
    have stable := dSVBobTargetLocalHarmonicCleanup_stable
      positive
      (A (phase, bucket phase r))
      (B (phase, bucket phase r))
      (work r)
      (work (representative phase (bucket phase r)))
      ε clean
    have actual :
        ‖localUnitaryAction
            (A (phase, bucket phase r))
            (B (phase, bucket phase s))
            (tensorEmbezzlementTarget (n := n) (work r)) -
          embezzlementState (N * n)‖ ≤
            ‖(work r).val -
              (work (representative phase (bucket phase r))).val‖ + ε := by
      simpa only [same] using stable
    simp only [if_pos same, mul_zero, add_zero]
    nlinarith [
      norm_nonneg
        (localUnitaryAction
            (A (phase, bucket phase r))
            (B (phase, bucket phase s))
            (tensorEmbezzlementTarget (n := n) (work r)) -
          embezzlementState (N * n)),
      norm_nonneg ((work r).val -
        (work (representative phase (bucket phase r))).val),
      sq_nonneg
        (‖(work r).val -
          (work (representative phase (bucket phase r))).val‖ - ε)]
  · have bound :
        ‖localUnitaryAction
            (A (phase, bucket phase r))
            (B (phase, bucket phase s))
            (tensorEmbezzlementTarget (n := n) (work r)) -
          embezzlementState (N * n)‖ ≤ 2 := by
      calc
        _ ≤ ‖localUnitaryAction
              (A (phase, bucket phase r))
              (B (phase, bucket phase s))
              (tensorEmbezzlementTarget (n := n) (work r))‖ +
            ‖embezzlementState (N * n)‖ := norm_sub_le _ _
        _ = 2 := by
          rw [localUnitaryAction_norm,
            tensorEmbezzlementTarget_norm positive,
            embezzlementState_norm (N * n)
              (Nat.mul_pos dimension positive)]
          norm_num
    simp only [if_neg same, mul_one]
    nlinarith [
      norm_nonneg
        (localUnitaryAction
            (A (phase, bucket phase r))
            (B (phase, bucket phase s))
            (tensorEmbezzlementTarget (n := n) (work r)) -
          embezzlementState (N * n)),
      sq_nonneg ε,
      sq_nonneg
        ‖(work r).val -
          (work (representative phase (bucket phase r))).val‖]
