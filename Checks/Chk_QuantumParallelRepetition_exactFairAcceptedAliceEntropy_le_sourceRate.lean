import Theorems.Thm_QuantumParallelRepetition_exactFairAcceptedAliceEntropy_le_sourceRate
import Solutions.Sol_QuantumParallelRepetition_exactFairAcceptedAliceEntropy_le_sourceRate

open Lean in
run_meta do
  let env ← getEnv
  let some stub := env.find? `QuantumParallelRepetition.exactFairAcceptedAliceEntropy_le_sourceRate | throwError "missing statement QuantumParallelRepetition.exactFairAcceptedAliceEntropy_le_sourceRate"
  let some sol := env.find? `solution | throwError "missing solution for QuantumParallelRepetition.exactFairAcceptedAliceEntropy_le_sourceRate"
  unless stub.type == sol.type do
    let a ← Meta.ppExpr stub.type
    let b ← Meta.ppExpr sol.type
    let same ← Meta.isDefEq stub.type sol.type
    throwError "type mismatch for QuantumParallelRepetition.exactFairAcceptedAliceEntropy_le_sourceRate (defeq: {same})\nstatement: {a}\nsolution:  {b}"
