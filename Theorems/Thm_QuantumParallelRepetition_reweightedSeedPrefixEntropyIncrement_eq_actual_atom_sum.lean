import Definitions.Def_quantum_parallel_repetition_game
import Definitions.Def_qpr_core_21
import Mathlib.Algebra.BigOperators.Group.Finset.Basic
import Mathlib.Algebra.BigOperators.Group.Finset.Defs
import Mathlib.Algebra.Star.Basic
import Mathlib.Analysis.InnerProductSpace.Basic
import Mathlib.Analysis.Matrix.Normed
import Mathlib.Analysis.Matrix.Order
import Mathlib.Analysis.Normed.Lp.WithLp
import Mathlib.Analysis.RCLike.Basic
import Mathlib.Data.Finset.Defs
import Mathlib.Data.Fintype.Basic
import Mathlib.Data.Fintype.Defs
import Mathlib.Data.Fintype.Pi
import Mathlib.Data.Fintype.Prod
import Mathlib.Data.Fintype.Sets
import Mathlib.Data.Matrix.Basic
import Mathlib.Data.Real.Basic
import Mathlib.Data.SetLike.Basic
import Mathlib.LinearAlgebra.Matrix.Kronecker
import Mathlib.MeasureTheory.Measure.MeasureSpace
import Mathlib.Topology.Defs.Filter

open QuantumParallelRepetition
open scoped ComplexOrder Matrix BigOperators InnerProductSpace
open Complex Matrix Finset
open scoped BigOperators
set_option backward.isDefEq.respectTransparency false
set_option maxHeartbeats 3200000
set_option maxRecDepth 2048
open QuantumParallelRepetition.Pinsker
open QuantumParallelRepetition.ClassicalInformation
attribute [local instance] Classical.propDecidable
variable {X Y A B : Type*}
variable [Fintype X] [Fintype Y] [Fintype A] [Fintype B]

theorem QuantumParallelRepetition.reweightedSeedPrefixEntropyIncrement_eq_actual_atom_sum
    {K Ω V : Type*} [Fintype K] [Fintype Ω] [Fintype V]
    {h : ℕ}
    (seedLaw : FiniteEventLaw K)
    (G : Game X Y A B) (n : ℕ) (S : Strategy (G.repeat n))
    (D : Finset (Fin n))
    (positive : 0 < repeatedPostselectionMass G n S D)
    (projection : K × ExactOutcome X Y A B n →
      Ω × (Fin h → V))
    (default : V) (k : Fin h) :
    reweightedSeedPrefixEntropyIncrement
        seedLaw G n S D projection default k =
      ∑ point : K × ExactOutcome X Y A B n,
        reweightedSeedPosterior seedLaw G n S D point *
          finiteRelativeEntropy
            (jointConditional
              (groupedMass (exactPrefixNextCode default k)
                (reweightedSeedPrefixJoint
                  seedLaw G n S D projection))
              (finitePrefixMask default k.castSucc
                (((projection point).1,
                  repeatedConditionedAnswerFlag
                    G n S D point.2),
                  (projection point).2)))
            (jointConditional
              (groupedMass (exactPrefixNextCode default k)
                (reweightedSeedPrefixPrior
                  seedLaw G n S D projection))
              (finitePrefixMask default k.castSucc
                (((projection point).1,
                  repeatedConditionedAnswerFlag
                    G n S D point.2),
                  (projection point).2))) := by sorry
