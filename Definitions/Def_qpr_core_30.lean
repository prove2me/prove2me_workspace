import Definitions.Def_quantum_parallel_repetition_game
import Definitions.Def_qpr_core_29
import Mathlib.Algebra.BigOperators.Group.Finset.Defs
import Mathlib.Algebra.Group.Defs
import Mathlib.Algebra.Star.Basic
import Mathlib.Analysis.Complex.Exponential
import Mathlib.Analysis.InnerProductSpace.Basic
import Mathlib.Analysis.Matrix.Normed
import Mathlib.Analysis.Matrix.Order
import Mathlib.Analysis.Normed.Lp.WithLp
import Mathlib.Analysis.RCLike.Basic
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
import Mathlib.Data.Matrix.Basic
import Mathlib.Data.Nat.Cast.Defs
import Mathlib.Data.Nat.Init
import Mathlib.Data.Real.Basic
import Mathlib.LinearAlgebra.Matrix.Kronecker
import Mathlib.Logic.Equiv.Defs
import Mathlib.MeasureTheory.Measure.MeasureSpace
import Mathlib.Topology.Defs.Filter

namespace QuantumParallelRepetition

open scoped ComplexOrder Matrix BigOperators InnerProductSpace
open Complex Matrix Finset

noncomputable section

def unconditionalPrefactorBucketCoefficient : ℝ :=
  16 * (Real.exp 1 - 1) + 4

end

noncomputable section

open scoped BigOperators

set_option backward.isDefEq.respectTransparency false
set_option maxHeartbeats 2000000
set_option maxRecDepth 2048

open QuantumParallelRepetition.Pinsker
open QuantumParallelRepetition.ClassicalSampling
open QuantumParallelRepetition.ClassicalInformation

attribute [local instance] Classical.propDecidable

variable {X Y A B : Type*}
variable [Fintype X] [Fintype Y] [Fintype A] [Fintype B]

def exactLocalQuestionHistoryEquiv
    {n : ℕ} (D : Finset (Fin n)) :
    (LocalQuestionContext X Y D ×
      ExactHistoryFlag X Y A B D) ≃
      ExactLocallySampleableTuple X Y A B D where
  toFun t := (t.1.1, t.1.2.1, t.1.2.2, t.2)
  invFun t := ((t.1, t.2.1, t.2.2.1), t.2.2.2)
  left_inv t := by
    rcases t with ⟨⟨i, x, y⟩, r⟩
    rfl
  right_inv t := by
    rcases t with ⟨i, x, y, r⟩
    rfl

def exactLocallySampleableJARounded
    (G : Game X Y A B) (n : ℕ) (D : Finset (Fin n))
    (denominator : ℕ)
    (numerator : ExactLocalSamplerIndex X Y D →
      ExactHistoryFlag X Y A B D → ℕ)
    (t : ExactLocallySampleableTuple X Y A B D) : ℝ :=
  G.questionWeight t.2.1 t.2.2.1 *
    ((numerator (.inl (t.1, t.2.1)) t.2.2.2 : ℝ) /
      denominator) /
    (Fintype.card (SourceRemainingCoordinate D) : ℝ)

def exactLocallySampleableJBRounded
    (G : Game X Y A B) (n : ℕ) (D : Finset (Fin n))
    (denominator : ℕ)
    (numerator : ExactLocalSamplerIndex X Y D →
      ExactHistoryFlag X Y A B D → ℕ)
    (t : ExactLocallySampleableTuple X Y A B D) : ℝ :=
  G.questionWeight t.2.1 t.2.2.1 *
    ((numerator (.inr (t.1, t.2.2.1)) t.2.2.2 : ℝ) /
      denominator) /
    (Fintype.card (SourceRemainingCoordinate D) : ℝ)

def exactLocallySampleablePermutationMismatch
    (G : Game X Y A B) (n : ℕ) (D : Finset (Fin n))
    (denominator : ℕ)
    (numerator : ExactLocalSamplerIndex X Y D →
      ExactHistoryFlag X Y A B D → ℕ)
    (nonempty : ∀ k,
      (rationalMarked denominator (numerator k)).Nonempty) : ℝ :=
  ∑ c : LocalQuestionContext X Y D,
    localQuestionWeight G n D c *
      uniformPermutationProbability
        (fun permutation :
          Equiv.Perm
            (ExactHistoryFlag X Y A B D × Fin denominator) =>
          rationalPermutationOutput denominator
              (numerator (.inl (c.1, c.2.1)))
              (nonempty (.inl (c.1, c.2.1))) permutation ≠
            rationalPermutationOutput denominator
              (numerator (.inr (c.1, c.2.2)))
              (nonempty (.inr (c.1, c.2.2))) permutation)

end

noncomputable section

open scoped BigOperators

set_option backward.isDefEq.respectTransparency false
set_option maxHeartbeats 1500000
set_option maxRecDepth 2048

open QuantumParallelRepetition.Pinsker
open QuantumParallelRepetition.ClassicalSampling
open QuantumParallelRepetition.ClassicalInformation

attribute [local instance] Classical.propDecidable

variable {X Y A B : Type}
variable [Fintype X] [Fintype Y] [Fintype A] [Fintype B]

abbrev ExactSourceSharedFlag
    (X Y A B : Type)
    [Fintype X] [Fintype Y] [Fintype A] [Fintype B]
    {n : ℕ} (D : Finset (Fin n)) (denominator : ℕ) :=
  SourceRemainingCoordinate D ×
    Equiv.Perm
      (ExactHistoryFlag X Y A B D × Fin denominator)

def exactSourceSharedFlagWeight
    {n : ℕ} (D : Finset (Fin n)) (denominator : ℕ)
    (_ : ExactSourceSharedFlag X Y A B D denominator) : ℝ :=
  (1 / (Fintype.card (SourceRemainingCoordinate D) : ℝ)) *
    (1 / (Fintype.card
      (Equiv.Perm
        (ExactHistoryFlag X Y A B D × Fin denominator)) : ℝ))

def exactSourceAlicePermutationHistory
    {n : ℕ} (D : Finset (Fin n)) (denominator : ℕ)
    (numerator : ExactLocalSamplerIndex X Y D →
      ExactHistoryFlag X Y A B D → ℕ)
    (nonempty : ∀ k,
      (rationalMarked denominator (numerator k)).Nonempty)
    (j : ExactSourceSharedFlag X Y A B D denominator)
    (x : X) : ExactHistoryFlag X Y A B D :=
  rationalPermutationOutput denominator
    (numerator (.inl (j.1, x)))
    (nonempty (.inl (j.1, x))) j.2

def exactSourceBobPermutationHistory
    {n : ℕ} (D : Finset (Fin n)) (denominator : ℕ)
    (numerator : ExactLocalSamplerIndex X Y D →
      ExactHistoryFlag X Y A B D → ℕ)
    (nonempty : ∀ k,
      (rationalMarked denominator (numerator k)).Nonempty)
    (j : ExactSourceSharedFlag X Y A B D denominator)
    (y : Y) : ExactHistoryFlag X Y A B D :=
  rationalPermutationOutput denominator
    (numerator (.inr (j.1, y)))
    (nonempty (.inr (j.1, y))) j.2

def exactSourcePermutationMatched
    {n : ℕ} (D : Finset (Fin n)) (denominator : ℕ)
    (numerator : ExactLocalSamplerIndex X Y D →
      ExactHistoryFlag X Y A B D → ℕ)
    (nonempty : ∀ k,
      (rationalMarked denominator (numerator k)).Nonempty)
    (ω : ExactSourceSharedFlag X Y A B D denominator ×
      (X × Y)) : Bool := by
  classical
  exact decide
    (exactSourceAlicePermutationHistory
      D denominator numerator nonempty ω.1 ω.2.1 =
      exactSourceBobPermutationHistory
        D denominator numerator nonempty ω.1 ω.2.2)

end

noncomputable section

open scoped BigOperators

set_option backward.isDefEq.respectTransparency false
set_option maxHeartbeats 1800000
set_option maxRecDepth 2048

open QuantumParallelRepetition.Pinsker
open QuantumParallelRepetition.ClassicalInformation

attribute [local instance] Classical.propDecidable

def finiteIndependentProductWeight
    {ι V : Type*} [Fintype ι] [Fintype V]
    (q : ι → V → ℝ) (x : ι → V) : ℝ :=
  ∏ i : ι, q i (x i)

def finiteCoordinateMarginal
    {ι V : Type*} [Fintype ι] [Fintype V]
    (p : (ι → V) → ℝ) (i : ι) : V → ℝ := by
  classical
  exact groupedMass (fun x : ι → V => x i) p

end

end QuantumParallelRepetition
