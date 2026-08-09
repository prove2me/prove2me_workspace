import Mathlib.Analysis.Matrix.PosDef
import Mathlib.LinearAlgebra.Matrix.Kronecker

noncomputable section

open scoped BigOperators ComplexOrder Kronecker
open Matrix

namespace QuantumParallelRepetition

variable {X Y A B : Type*}

/-- A finite two-player, one-round game. -/
structure Game (X Y A B : Type*)
    [Fintype X] [Fintype Y] [Fintype A] [Fintype B] where
  questionWeight : X → Y → ℝ
  weight_nonneg : ∀ x y, 0 ≤ questionWeight x y
  weight_normalized : (∑ x : X, ∑ y : Y, questionWeight x y) = 1
  predicate : X → Y → A → B → Bool

namespace Game

variable [Fintype X] [Fintype Y] [Fintype A] [Fintype B]

/-- The `n`-fold parallel repetition of a game, won only when every coordinate is won. -/
def «repeat» (G : Game X Y A B) (n : ℕ) :
    Game (Fin n → X) (Fin n → Y) (Fin n → A) (Fin n → B) where
  questionWeight xs ys := ∏ i : Fin n, G.questionWeight (xs i) (ys i)
  weight_nonneg xs ys :=
    Finset.prod_nonneg fun i _ => G.weight_nonneg (xs i) (ys i)
  weight_normalized := by
    classical
    calc
      (∑ xs : Fin n → X, ∑ ys : Fin n → Y,
        ∏ i : Fin n, G.questionWeight (xs i) (ys i)) =
          ∑ xs : Fin n → X, ∏ i : Fin n, ∑ y : Y,
            G.questionWeight (xs i) y := by
              apply Finset.sum_congr rfl
              intro xs _
              exact (Fintype.prod_sum
                (fun i : Fin n => fun y : Y => G.questionWeight (xs i) y)).symm
      _ = ∏ _i : Fin n, ∑ x : X, ∑ y : Y,
            G.questionWeight x y := by
              exact (Fintype.prod_sum
                (fun _i : Fin n => fun x : X => ∑ y : Y,
                  G.questionWeight x y)).symm
      _ = 1 := by simp [G.weight_normalized]
  predicate xs ys as bs :=
    decide (∀ i : Fin n, G.predicate (xs i) (ys i) (as i) (bs i) = true)

end Game

/-- A finite-dimensional quantum state represented by a positive semidefinite,
trace-one matrix. -/
structure DensityMatrix (d : Type*) [Fintype d] where
  matrix : Matrix d d ℂ
  positive : matrix.PosSemidef
  trace_one : Matrix.trace matrix = 1

/-- A finite-outcome positive operator-valued measurement. -/
structure POVM (ι d : Type*) [Fintype ι] [Fintype d] [DecidableEq d] where
  operator : ι → Matrix d d ℂ
  positive : ∀ i, (operator i).PosSemidef
  complete : (∑ i : ι, operator i) = 1

/-- A finite-dimensional entangled strategy for a two-player game. -/
structure Strategy [Fintype X] [Fintype Y] [Fintype A] [Fintype B]
    (_G : Game X Y A B) where
  Alice : Type
  Bob : Type
  [alice_fintype : Fintype Alice]
  [bob_fintype : Fintype Bob]
  [alice_decidableEq : DecidableEq Alice]
  [bob_decidableEq : DecidableEq Bob]
  state : DensityMatrix (Alice × Bob)
  aliceMeasurement : X → POVM A Alice
  bobMeasurement : Y → POVM B Bob

attribute [instance] Strategy.alice_fintype Strategy.bob_fintype
  Strategy.alice_decidableEq Strategy.bob_decidableEq

namespace Strategy

variable [Fintype X] [Fintype Y] [Fintype A] [Fintype B]
variable {G : Game X Y A B}

/-- The tensor-product measurement operator for a pair of answers. -/
def jointMeasurementOperator (S : Strategy G) (x : X) (y : Y) (a : A) (b : B) :
    Matrix (S.Alice × S.Bob) (S.Alice × S.Bob) ℂ :=
  (S.aliceMeasurement x).operator a ⊗ₖ (S.bobMeasurement y).operator b

/-- The Born-rule probability of a pair of answers. -/
def outcomeProbability (S : Strategy G) (x : X) (y : Y) (a : A) (b : B) : ℝ :=
  (Matrix.trace (S.state.matrix * S.jointMeasurementOperator x y a b)).re

/-- The winning probability of a fixed entangled strategy. -/
def winProbability (S : Strategy G) : ℝ :=
  ∑ x : X, ∑ y : Y, G.questionWeight x y *
    ∑ a : A, ∑ b : B,
      if G.predicate x y a b = true then S.outcomeProbability x y a b else 0

end Strategy

/-- The entangled value of a game: the supremum of the winning probabilities of all
finite-dimensional entangled strategies. -/
def entangledValue [Fintype X] [Fintype Y] [Fintype A] [Fintype B]
    (G : Game X Y A B) : ℝ :=
  sSup (Set.range (Strategy.winProbability (G := G)))

/-- The entangled value of the `n`-fold parallel repetition of `G`. -/
def repeatedEntangledValue [Fintype X] [Fintype Y] [Fintype A] [Fintype B]
    (G : Game X Y A B) (n : ℕ) : ℝ :=
  entangledValue (G.repeat n)

end QuantumParallelRepetition

end
