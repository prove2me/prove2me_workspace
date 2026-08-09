import Theorems.Thm_QuantumParallelRepetition_unconditionalActualFairSourceRoundingData_exists_stoppedVerifier
import Solutions.Sol_QuantumParallelRepetition_unconditionalActualFairSourceRoundingData_exists_stoppedVerifier

open Lean in
run_meta do
  let env ← getEnv
  let some stub := env.find? `QuantumParallelRepetition.unconditionalActualFairSourceRoundingData_exists_stoppedVerifier | throwError "missing statement QuantumParallelRepetition.unconditionalActualFairSourceRoundingData_exists_stoppedVerifier"
  let some sol := env.find? `solution | throwError "missing solution for QuantumParallelRepetition.unconditionalActualFairSourceRoundingData_exists_stoppedVerifier"
  unless stub.type == sol.type do
    let a ← Meta.ppExpr stub.type
    let b ← Meta.ppExpr sol.type
    let same ← Meta.isDefEq stub.type sol.type
    throwError "type mismatch for QuantumParallelRepetition.unconditionalActualFairSourceRoundingData_exists_stoppedVerifier (defeq: {same})\nstatement: {a}\nsolution:  {b}"
