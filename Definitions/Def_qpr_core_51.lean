import Definitions.Def_quantum_parallel_repetition_game
import Definitions.Def_qpr_core_50
import Mathlib.Algebra.BigOperators.Group.Finset.Defs
import Mathlib.Algebra.Group.Submonoid.Defs
import Mathlib.Algebra.GroupWithZero.Defs
import Mathlib.Algebra.Ring.Defs
import Mathlib.Algebra.Star.Basic
import Mathlib.Analysis.InnerProductSpace.Basic
import Mathlib.Analysis.InnerProductSpace.PiL2
import Mathlib.Analysis.Matrix.Normed
import Mathlib.Analysis.Matrix.Order
import Mathlib.Analysis.Normed.Lp.WithLp
import Mathlib.Analysis.RCLike.Basic
import Mathlib.Data.Complex.Basic
import Mathlib.Data.Finset.Defs
import Mathlib.Data.Finset.Empty
import Mathlib.Data.Fintype.Basic
import Mathlib.Data.Fintype.Card
import Mathlib.Data.Fintype.Defs
import Mathlib.Data.Fintype.Pi
import Mathlib.Data.Fintype.Prod
import Mathlib.Data.Fintype.Sigma
import Mathlib.Data.Matrix.Basic
import Mathlib.Data.Matrix.Mul
import Mathlib.Data.Real.Basic
import Mathlib.Data.SetLike.Basic
import Mathlib.Data.Sigma.Basic
import Mathlib.LinearAlgebra.Matrix.Defs
import Mathlib.LinearAlgebra.Matrix.Kronecker
import Mathlib.LinearAlgebra.UnitaryGroup
import Mathlib.MeasureTheory.Measure.MeasureSpace
import Mathlib.Topology.Defs.Filter

namespace QuantumParallelRepetition

open scoped ComplexOrder Matrix BigOperators InnerProductSpace
open Complex Matrix Finset

noncomputable section

open WithLp
open scoped BigOperators Kronecker ComplexOrder MatrixOrder
  Matrix.Norms.L2Operator InnerProductSpace

open QuantumParallelRepetition.ClassicalSampling

attribute [local instance] Classical.propDecidable

namespace UnconditionalActualFairSourceRoundingContext

variable {X Y A B : Type}
variable [Fintype X] [Fintype Y] [Fintype A] [Fintype B]
variable {G : Game X Y A B} {n : ℕ} {S : Strategy (G.repeat n)}
variable {D : Finset (Fin n)} {alpha gamma : ℝ}

def U
    (c : UnconditionalActualFairSourceRoundingContext
      G n S D alpha gamma) :
    flag c → X →
      Matrix.unitaryGroup
        (Σ _ : Fin (c.stopping.L + 1), fiber c) ℂ :=
  unconditionalActualFairSourceAliceStoppingUnitary
    G n S D c.sampler.denominator c.sampler.numerator
    c.sampler.nonempty c.stopping.Q
    (width c) (schedule c) c.stopping.UA

def V
    (c : UnconditionalActualFairSourceRoundingContext
      G n S D alpha gamma) :
    flag c → Y →
      Matrix.unitaryGroup
        (Σ _ : Fin (c.stopping.L + 1), fiber c) ℂ :=
  unconditionalActualFairSourceBobStoppingUnitary
    G n S D c.sampler.denominator c.sampler.numerator
    c.sampler.nonempty c.stopping.Q
    (width c) (schedule c) c.stopping.UB

def prepared
    (c : UnconditionalActualFairSourceRoundingContext
      G n S D alpha gamma) :
    flag c → EuclideanSpace ℂ
      ((Σ _ : Fin (c.stopping.L + 1), fiber c) ×
       (Σ _ : Fin (c.stopping.L + 1), fiber c)) :=
  fun _ => unconditionalSourcePhysicalCleanedStoppingFixedSource
    1 c.stopping.P c.stopping.N (d c)
    c.stopping.L c.stopping.m

def rounded
    (c : UnconditionalActualFairSourceRoundingContext
      G n S D alpha gamma) : Strategy G :=
  unconditionalOneScaleActualSourceFlaggedStrategy
    G n S D c.remaining
    c.sampler.denominator c.sampler.numerator c.sampler.nonempty
    c.stopping.w c.stopping.N c.stopping.L c.stopping.P
    c.stopping.Q c.stopping.m c.stopping.phases c.stopping.grid
    c.stopping.harmonic c.stopping.UA c.stopping.UB

end UnconditionalActualFairSourceRoundingContext

end

end QuantumParallelRepetition
