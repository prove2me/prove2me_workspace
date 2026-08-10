import Definitions.Def_quantum_parallel_repetition_game
import Definitions.Def_qpr_core_42
import Theorems.Thm_QuantumParallelRepetition_exactAlicePurificationFamily_posSemidef
import Theorems.Thm_QuantumParallelRepetition_exactBobPurificationFamily_posSemidef
import Theorems.Thm_QuantumParallelRepetition_exactGlobalHistoryLocalIndex_card_pos
import Theorems.Thm_QuantumParallelRepetition_exactSourceSharedFlagWeight_nonneg
import Theorems.Thm_QuantumParallelRepetition_exactSourceSharedFlagWeight_sum
import Theorems.Thm_QuantumParallelRepetition_unconditionalSourcePhysicalCleanedStoppingFixedSource_norm
import Theorems.Thm_QuantumParallelRepetition_exactSourceAnswerTypes_nonempty_of_remaining
import Mathlib.Algebra.BigOperators.Group.Finset.Defs
import Mathlib.Algebra.Field.Defs
import Mathlib.Algebra.Group.Basic
import Mathlib.Algebra.Group.Defs
import Mathlib.Algebra.Group.Subgroup.Defs
import Mathlib.Algebra.Group.Submonoid.Defs
import Mathlib.Algebra.GroupWithZero.Action.Defs
import Mathlib.Algebra.GroupWithZero.Defs
import Mathlib.Algebra.Module.Defs
import Mathlib.Algebra.Module.Submodule.Defs
import Mathlib.Algebra.Ring.Defs
import Mathlib.Algebra.Star.Basic
import Mathlib.Algebra.Star.Unitary
import Mathlib.AlgebraicTopology.SimplexCategory.Basic
import Mathlib.AlgebraicTopology.SimplexCategory.Defs
import Mathlib.Analysis.CStarAlgebra.Classes
import Mathlib.Analysis.Complex.Basic
import Mathlib.Analysis.Complex.Norm
import Mathlib.Analysis.Complex.Order
import Mathlib.Analysis.InnerProductSpace.Basic
import Mathlib.Analysis.InnerProductSpace.PiL2
import Mathlib.Analysis.Matrix.Normed
import Mathlib.Analysis.Matrix.Order
import Mathlib.Analysis.Normed.Field.Basic
import Mathlib.Analysis.Normed.Group.Defs
import Mathlib.Analysis.Normed.Group.Uniform
import Mathlib.Analysis.Normed.Lp.PiLp
import Mathlib.Analysis.Normed.Lp.WithLp
import Mathlib.Analysis.Normed.Module.Basic
import Mathlib.Analysis.Normed.Ring.Basic
import Mathlib.Analysis.RCLike.Basic
import Mathlib.Data.Complex.Basic
import Mathlib.Data.ENNReal.Basic
import Mathlib.Data.Fin.SuccPred
import Mathlib.Data.Finset.Card
import Mathlib.Data.Finset.Defs
import Mathlib.Data.Finset.Empty
import Mathlib.Data.Finset.SDiff
import Mathlib.Data.Fintype.Basic
import Mathlib.Data.Fintype.Card
import Mathlib.Data.Fintype.Defs
import Mathlib.Data.Fintype.Perm
import Mathlib.Data.Fintype.Pi
import Mathlib.Data.Fintype.Prod
import Mathlib.Data.Fintype.Sets
import Mathlib.Data.Fintype.Sigma
import Mathlib.Data.Fintype.Sum
import Mathlib.Data.Matrix.Basic
import Mathlib.Data.Matrix.Mul
import Mathlib.Data.Nat.Cast.Defs
import Mathlib.Data.Nat.Init
import Mathlib.Data.Prod.Basic
import Mathlib.Data.Real.Basic
import Mathlib.Data.SetLike.Basic
import Mathlib.Data.Sigma.Basic
import Mathlib.LinearAlgebra.Dimension.Finrank
import Mathlib.LinearAlgebra.Matrix.ConjTranspose
import Mathlib.LinearAlgebra.Matrix.Defs
import Mathlib.LinearAlgebra.Matrix.Kronecker
import Mathlib.LinearAlgebra.Matrix.PosDef
import Mathlib.LinearAlgebra.UnitaryGroup
import Mathlib.Logic.Equiv.Defs
import Mathlib.Logic.Equiv.Prod
import Mathlib.MeasureTheory.Function.AEEqFun
import Mathlib.MeasureTheory.Function.LpSpace.Basic
import Mathlib.MeasureTheory.Measure.Haar.OfBasis
import Mathlib.MeasureTheory.Measure.MeasureSpace
import Mathlib.MeasureTheory.Measure.MeasureSpaceDef
import Mathlib.MeasureTheory.Measure.Restrict
import Mathlib.Order.Interval.Set.Defs
import Mathlib.Topology.Algebra.Group.Defs
import Mathlib.Topology.Defs.Filter
import Mathlib.Topology.MetricSpace.Algebra
import Mathlib.Topology.MetricSpace.Pseudo.Defs
import Mathlib.Topology.UniformSpace.Defs

namespace QuantumParallelRepetition

open scoped ComplexOrder Matrix BigOperators InnerProductSpace
open Complex Matrix Finset

noncomputable section

open WithLp
open scoped BigOperators Kronecker ComplexOrder MatrixOrder
  Matrix.Norms.L2Operator InnerProductSpace

def directDSVActualBilateralRetainedIndexEquiv
    {s t u v ι κ : Type*}
    (eA : ι ≃ s × t) (eB : κ ≃ u × v) :
    (ι × κ) ≃ ((s × u) × (t × v)) :=
  (Equiv.prodCongr eA eB).trans
    (Equiv.prodProdProdComm s t u v)

def directDSVActualLocalPOVMWinningEffect
    {X Y A B s t : Type*}
    [Fintype X] [Fintype Y] [Fintype A] [Fintype B]
    [Fintype s] [Fintype t] [DecidableEq s] [DecidableEq t]
    (G : Game X Y A B)
    (PA : POVM A s) (PB : POVM B t)
    (x : X) (y : Y) : Matrix (s × t) (s × t) ℂ :=
  ∑ a : A, ∑ b : B,
    if G.predicate x y a b = true then
      PA.operator a ⊗ₖ PB.operator b
    else 0

end

noncomputable section

open WithLp
open scoped BigOperators Kronecker ComplexOrder MatrixOrder

def unconditionalSelectedRetainedBilateralRegroup
    (ι τ : Type) :
    ((ι × τ) × (ι × τ)) ≃ ((ι × ι) × (τ × τ)) where
  toFun p := ((p.1.1, p.2.1), (p.1.2, p.2.2))
  invFun p := ((p.1.1, p.2.1), (p.1.2, p.2.2))
  left_inv := by rintro ⟨⟨_, _⟩, ⟨_, _⟩⟩; rfl
  right_inv := by rintro ⟨⟨_, _⟩, ⟨_, _⟩⟩; rfl

end

noncomputable section

open WithLp
open scoped BigOperators Kronecker ComplexOrder MatrixOrder

attribute [local instance] Classical.propDecidable

def unconditionalActualFixedSourceRetainedHistoryPairEquiv
    {N d L : ℕ} {R : Type} (j : Fin L) :
    (UnconditionalActualCleanedSelectedRetainedIndex
      (N := N) (d := d) j R ×
     UnconditionalActualCleanedSelectedRetainedIndex
      (N := N) (d := d) j R) ≃
    ((Fin j.val →
        (DSVUniformDensityThresholdLocalIndex N d ×
         DSVUniformDensityThresholdLocalIndex N d)) ×
      (((Fin (L - j.val) →
           DSVUniformDensityThresholdLocalIndex N d) ×
        (Fin (L - j.val) →
           DSVUniformDensityThresholdLocalIndex N d)) ×
       (R × R))) where
  toFun p :=
    ((fun i => (p.1.1 i, p.2.1 i)),
      ((p.1.2.1, p.2.2.1), (p.1.2.2, p.2.2.2)))
  invFun p :=
    ((fun i => (p.1 i).1, (p.2.1.1, p.2.2.1)),
      (fun i => (p.1 i).2, (p.2.1.2, p.2.2.2)))
  left_inv := by
    rintro ⟨⟨beforeA, afterA, phaseA⟩,
      ⟨beforeB, afterB, phaseB⟩⟩
    simp
  right_inv := by
    rintro ⟨before, ⟨⟨afterA, afterB⟩, ⟨phaseA, phaseB⟩⟩⟩
    simp

end

noncomputable section

open scoped BigOperators ComplexOrder Kronecker MatrixOrder
  Matrix.Norms.L2Operator InnerProductSpace

open QuantumParallelRepetition.ClassicalSampling

attribute [local instance] Classical.propDecidable

def physical8SelectedGlobalTargetWorkEquiv
    (P N d m : ℕ) :
    UnconditionalSelectedCopyLocalIndex P d N m ≃
      Fin d × (Fin P × Fin (N * m)) where
  toFun q := (q.1.2, (q.1.1, q.2))
  invFun q := ⟨(q.2.1, q.1), q.2.2⟩
  left_inv := by
    rintro ⟨⟨phase, atom⟩, work⟩
    rfl
  right_inv := by
    rintro ⟨atom, phase, work⟩
    rfl

def physical8OneScaleActualGlobalFiberEquiv
    {P N d L m : ℕ} {R : Type}
    (phaseSplit :
      DSVDensityRationalPublicMultiscalePhaseIndex 1 P ≃
        Fin P × R)
    (j : Fin L) :
    UnconditionalSourcePhysicalStoppingPhaseFiber 1 P N d L m ≃
      Fin d ×
        ((Fin P × Fin (N * m)) ×
          UnconditionalSourceFlagControlledRetainedIndex
            (N := N) (d := d) j R) :=
  (unconditionalSourcePhysicalCleanedFullLocalIndexEquiv
      phaseSplit j).trans
    ((Equiv.prodCongr
        (physical8SelectedGlobalTargetWorkEquiv P N d m)
        (Equiv.refl
          (UnconditionalSourceFlagControlledRetainedIndex
            (N := N) (d := d) j R))).trans
      (Equiv.prodAssoc (Fin d) (Fin P × Fin (N * m))
        (UnconditionalSourceFlagControlledRetainedIndex
          (N := N) (d := d) j R)))

def physical8OneScaleOriginalFlagPOVM
    {C Z : Type*} [Fintype C] [DecidableEq C]
    {P N d L m : ℕ} {R : Type}
    [Fintype R] [DecidableEq R]
    (phaseSplit :
      DSVDensityRationalPublicMultiscalePhaseIndex 1 P ≃
        Fin P × R)
    (default : C) (sourcePOVM : Z → POVM C (Fin d)) :
    Fin (L + 1) → Z →
      POVM C
        (UnconditionalSourcePhysicalStoppingPhaseFiber
          1 P N d L m) :=
  Fin.cases
    (fun _ => deterministicOutcomePOVM default)
    (fun j x =>
      directDSVActualReindexedRetainedPOVM
        (physical8OneScaleActualGlobalFiberEquiv
          (N := N) (d := d) (m := m) phaseSplit j)
        (sourcePOVM x))

def physical8OneScaleActualAliceStoppingUnitary
    {F Z : Type*} {P N d L m : ℕ} {R : Type}
    [Fintype R] [DecidableEq R]
    (phaseSplit :
      DSVDensityRationalPublicMultiscalePhaseIndex 1 P ≃
        Fin P × R)
    (Q : ℕ) (width : Fin 1 → ℝ)
    (schedule : Fin L → Fin 1)
    (target : F → Z → BipartiteUnitVector d)
    (cleanup : Fin P → Option ℕ →
      Matrix.unitaryGroup (Fin (N * m)) ℂ) :
    F → Z → Matrix.unitaryGroup
      (Σ _ : Fin (L + 1),
        UnconditionalSourcePhysicalStoppingPhaseFiber
          1 P N d L m) ℂ :=
  fun flag x =>
    coherentSharedRandomControlledUnitary
        (unconditionalSourceFlagControlledFiniteStageDecoder
          phaseSplit Q width schedule (target flag x)
          (dSVUniformDensityAliceHistorySpectralCopy
            (N := N) (target flag x)) cleanup) *
      unconditionalSourcePhysicalCleanedTargetFirstUnitary
        1 P N d L m
        (dSVDensityRationalHeterogeneousTargetFirstSpectralAlice
          1 P N d L m width schedule (target flag x))

def physical8OneScaleActualBobStoppingUnitary
    {F Z : Type*} {P N d L m : ℕ} {R : Type}
    [Fintype R] [DecidableEq R]
    (phaseSplit :
      DSVDensityRationalPublicMultiscalePhaseIndex 1 P ≃
        Fin P × R)
    (Q : ℕ) (width : Fin 1 → ℝ)
    (schedule : Fin L → Fin 1)
    (target : F → Z → BipartiteUnitVector d)
    (cleanup : Fin P → Option ℕ →
      Matrix.unitaryGroup (Fin (N * m)) ℂ) :
    F → Z → Matrix.unitaryGroup
      (Σ _ : Fin (L + 1),
        UnconditionalSourcePhysicalStoppingPhaseFiber
          1 P N d L m) ℂ :=
  fun flag y =>
    coherentSharedRandomControlledUnitary
        (unconditionalSourceFlagControlledFiniteStageDecoder
          phaseSplit Q width schedule (target flag y)
          ((dSVUniformDensityBobHistoryCopyBasis
            (N := N) (target flag y))⁻¹) cleanup) *
      unconditionalSourcePhysicalCleanedTargetFirstUnitary
        1 P N d L m
        (dSVDensityRationalHeterogeneousTargetFirstSpectralBob
          1 P N d L m width schedule (target flag y))

def physical8OneScaleActualSourceFlaggedStrategy
    {X Y A B : Type}
    [Fintype X] [Fintype Y] [Fintype A] [Fintype B]
    (G : Game X Y A B)
    (n : ℕ) (S : Strategy (G.repeat n))
    (D : Finset (Fin n))
    (remaining : 0 < (Finset.univ \ D).card)
    (denominator : ℕ)
    (numerator : ExactLocalSamplerIndex X Y D →
      ExactHistoryFlag X Y A B D → ℕ)
    (nonempty : ∀ index,
      (rationalMarked denominator (numerator index)).Nonempty)
    (w : ℝ) (N L P Q m : ℕ)
    (phases : 0 < P) (grid : 0 < N) (harmonic : 0 < m)
    (UA UB : Fin P → Option ℕ →
      Matrix.unitaryGroup (Fin (N * m)) ℂ) : Strategy G := by
  classical
  let d : ℕ := Fintype.card
    (ExactGlobalHistoryLocalIndex G n S D)
  have dimension : 0 < d :=
    exactGlobalHistoryLocalIndex_card_pos G n S D
  let R : Type := Fin (Fintype.card (Fin (1 - 1) → Fin P))
  let phaseSplit :
      DSVDensityRationalPublicMultiscalePhaseIndex 1 P ≃
        Fin P × R :=
    (unconditionalActualMultiscalePhaseIndexEquiv
      (B := P) (0 : Fin 1)).symm
  let width : Fin 1 → ℝ := fun _ => w
  let schedule : Fin L → Fin 1 := fun _ => 0
  let F : Type := ExactSourceSharedFlag X Y A B D denominator
  let ξ : F → X → BipartiteUnitVector d :=
    fun flag x => exactGlobalHistoryFinGamma G n S D
      (exactSourceAlicePermutationHistory
        D denominator numerator nonempty flag x) x
  let ζ : F → Y → BipartiteUnitVector d :=
    fun flag y => exactGlobalHistoryFinPhi G n S D
      (exactSourceBobPermutationHistory
        D denominator numerator nonempty flag y) y
  let a₀ : A := Classical.choice
    (exactSourceAnswerTypes_nonempty_of_remaining
      G n S D remaining).1
  let b₀ : B := Classical.choice
    (exactSourceAnswerTypes_nonempty_of_remaining
      G n S D remaining).2
  let globalAlice : X → POVM A (Fin d) := fun x =>
    reindexedPOVM (finCongr (Nat.mul_one d))
      (unconditionalConjugatePOVM
        (exactSourceGlobalCatalystAlicePOVM G n S D 1 a₀ x))
  let globalBob : Y → POVM B (Fin d) := fun y =>
    reindexedPOVM (finCongr (Nat.mul_one d))
      (unconditionalConjugatePOVM
        (exactSourceGlobalCatalystBobPOVM G n S D 1 b₀ y))
  let PA : F → Fin (L + 1) → X →
      POVM A
        (UnconditionalSourcePhysicalStoppingPhaseFiber
          1 P N d L m) :=
    fun flag => physical8OneScaleOriginalFlagPOVM
      (N := N) (d := d) (m := m) phaseSplit a₀
      (fun x => unitaryConjugatePOVM
        (conjugateUnitary
          (dSVDensityRationalCanonicalAliceBasis (ξ flag x)))
        (globalAlice x))
  let PB : F → Fin (L + 1) → Y →
      POVM B
        (UnconditionalSourcePhysicalStoppingPhaseFiber
          1 P N d L m) :=
    fun flag => physical8OneScaleOriginalFlagPOVM
      (N := N) (d := d) (m := m) phaseSplit b₀
      (fun y => unitaryConjugatePOVM
        (conjugateUnitary
          (dSVUniformDensityThresholdLeftBobBasis (ζ flag y)))
        (globalBob y))
  let U := physical8OneScaleActualAliceStoppingUnitary
    (P := P) (N := N) (d := d) (L := L) (m := m)
    phaseSplit Q width schedule ξ UA
  let V := physical8OneScaleActualBobStoppingUnitary
    (P := P) (N := N) (d := d) (L := L) (m := m)
    phaseSplit Q width schedule ζ UB
  let prepared : F → EuclideanSpace ℂ
      ((Σ _ : Fin (L + 1),
          UnconditionalSourcePhysicalStoppingPhaseFiber
            1 P N d L m) ×
       (Σ _ : Fin (L + 1),
          UnconditionalSourcePhysicalStoppingPhaseFiber
            1 P N d L m)) :=
    fun _ => unconditionalSourcePhysicalCleanedStoppingFixedSource
      1 P N d L m
  have prepared_normalized : ∀ flag : F, ‖prepared flag‖ = 1 := by
    intro flag
    exact unconditionalSourcePhysicalCleanedStoppingFixedSource_norm
      phases grid dimension harmonic
  exact pureFlaggedStrategy G
    (exactSourceSharedFlagWeight D denominator)
    (exactSourceSharedFlagWeight_nonneg D denominator)
    (exactSourceSharedFlagWeight_sum D remaining denominator)
    prepared prepared_normalized
    (fun flag x => unitaryConjugatePOVM (U flag x)
      (dependentBlockPOVM (fun r => PA flag r x)))
    (fun flag y => unitaryConjugatePOVM (V flag y)
      (dependentBlockPOVM (fun r => PB flag r y)))

abbrev unconditionalOneScaleActualSourceFlaggedStrategy :=
  @physical8OneScaleActualSourceFlaggedStrategy

end

noncomputable section

open WithLp
open scoped BigOperators Kronecker ComplexOrder MatrixOrder

attribute [local instance] Classical.propDecidable

def unconditionalActualOneScaleFixedSourcePhaseSplit (P : ℕ) :
    DSVDensityRationalPublicMultiscalePhaseIndex 1 P ≃
      Fin P × UnconditionalActualCanonicalRetainedPhaseIndex 1 P :=
  (unconditionalActualMultiscalePhaseIndexEquiv
    (B := P) (0 : Fin 1)).symm

end

end QuantumParallelRepetition
