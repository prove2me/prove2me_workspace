import Theorems.Thm_QuantumParallelRepetition_unconditionalActualFairSourceRoundingContext_analyticLedger
import Solutions.Sol_QuantumParallelRepetition_unconditionalActualFairSourceRoundingContext_analyticLedger

open Lean in
run_meta do
  let env ← getEnv
  let some stub := env.find? `QuantumParallelRepetition.unconditionalActualFairSourceRoundingContext_analyticLedger | throwError "missing statement QuantumParallelRepetition.unconditionalActualFairSourceRoundingContext_analyticLedger"
  let some sol := env.find? `solution | throwError "missing solution for QuantumParallelRepetition.unconditionalActualFairSourceRoundingContext_analyticLedger"
  unless stub.type == sol.type do
    let a ← Meta.ppExpr stub.type
    let b ← Meta.ppExpr sol.type
    let same ← Meta.isDefEq stub.type sol.type
    throwError "type mismatch for QuantumParallelRepetition.unconditionalActualFairSourceRoundingContext_analyticLedger (defeq: {same})\nstatement: {a}\nsolution:  {b}"
