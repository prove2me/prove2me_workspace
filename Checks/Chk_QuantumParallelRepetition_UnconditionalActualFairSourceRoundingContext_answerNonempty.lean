import Theorems.Thm_QuantumParallelRepetition_UnconditionalActualFairSourceRoundingContext_answerNonempty
import Solutions.Sol_QuantumParallelRepetition_UnconditionalActualFairSourceRoundingContext_answerNonempty

open Lean in
run_meta do
  let env ← getEnv
  let some stub := env.find? `QuantumParallelRepetition.UnconditionalActualFairSourceRoundingContext.answerNonempty | throwError "missing statement QuantumParallelRepetition.UnconditionalActualFairSourceRoundingContext.answerNonempty"
  let some sol := env.find? `solution | throwError "missing solution for QuantumParallelRepetition.UnconditionalActualFairSourceRoundingContext.answerNonempty"
  unless stub.type == sol.type do
    let a ← Meta.ppExpr stub.type
    let b ← Meta.ppExpr sol.type
    let same ← Meta.isDefEq stub.type sol.type
    throwError "type mismatch for QuantumParallelRepetition.UnconditionalActualFairSourceRoundingContext.answerNonempty (defeq: {same})\nstatement: {a}\nsolution:  {b}"
