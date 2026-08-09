import Theorems.Thm_QuantumParallelRepetition_unconditionalActualFairWeightedStoppedSuccess
import Solutions.Sol_QuantumParallelRepetition_unconditionalActualFairWeightedStoppedSuccess

open Lean in
run_meta do
  let env ← getEnv
  let some stub := env.find? `QuantumParallelRepetition.unconditionalActualFairWeightedStoppedSuccess | throwError "missing statement QuantumParallelRepetition.unconditionalActualFairWeightedStoppedSuccess"
  let some sol := env.find? `solution | throwError "missing solution for QuantumParallelRepetition.unconditionalActualFairWeightedStoppedSuccess"
  unless stub.type == sol.type do
    let a ← Meta.ppExpr stub.type
    let b ← Meta.ppExpr sol.type
    let same ← Meta.isDefEq stub.type sol.type
    throwError "type mismatch for QuantumParallelRepetition.unconditionalActualFairWeightedStoppedSuccess (defeq: {same})\nstatement: {a}\nsolution:  {b}"
