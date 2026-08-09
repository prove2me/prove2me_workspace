import Theorems.Thm_QuantumParallelRepetition_exactReverseBobConditionalHistoryIdentification_proved
import Solutions.Sol_QuantumParallelRepetition_exactReverseBobConditionalHistoryIdentification_proved

open Lean in
run_meta do
  let env ← getEnv
  let some stub := env.find? `QuantumParallelRepetition.exactReverseBobConditionalHistoryIdentification_proved | throwError "missing statement QuantumParallelRepetition.exactReverseBobConditionalHistoryIdentification_proved"
  let some sol := env.find? `solution | throwError "missing solution for QuantumParallelRepetition.exactReverseBobConditionalHistoryIdentification_proved"
  unless stub.type == sol.type do
    let a ← Meta.ppExpr stub.type
    let b ← Meta.ppExpr sol.type
    let same ← Meta.isDefEq stub.type sol.type
    throwError "type mismatch for QuantumParallelRepetition.exactReverseBobConditionalHistoryIdentification_proved (defeq: {same})\nstatement: {a}\nsolution:  {b}"
