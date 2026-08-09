import Theorems.Thm_QuantumParallelRepetition_reweightedSeed_flagged_projection_relativeEntropy_le
import Solutions.Sol_QuantumParallelRepetition_reweightedSeed_flagged_projection_relativeEntropy_le

open Lean in
run_meta do
  let env ← getEnv
  let some stub := env.find? `QuantumParallelRepetition.reweightedSeed_flagged_projection_relativeEntropy_le | throwError "missing statement QuantumParallelRepetition.reweightedSeed_flagged_projection_relativeEntropy_le"
  let some sol := env.find? `solution | throwError "missing solution for QuantumParallelRepetition.reweightedSeed_flagged_projection_relativeEntropy_le"
  unless stub.type == sol.type do
    let a ← Meta.ppExpr stub.type
    let b ← Meta.ppExpr sol.type
    let same ← Meta.isDefEq stub.type sol.type
    throwError "type mismatch for QuantumParallelRepetition.reweightedSeed_flagged_projection_relativeEntropy_le (defeq: {same})\nstatement: {a}\nsolution:  {b}"
