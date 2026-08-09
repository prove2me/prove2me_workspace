import Theorems.Thm_QuantumParallelRepetition_answerLogCost_nonneg_of_postselection
import Solutions.Sol_QuantumParallelRepetition_answerLogCost_nonneg_of_postselection

open Lean in
run_meta do
  let env ← getEnv
  let some stub := env.find? `QuantumParallelRepetition.answerLogCost_nonneg_of_postselection | throwError "missing statement QuantumParallelRepetition.answerLogCost_nonneg_of_postselection"
  let some sol := env.find? `solution | throwError "missing solution for QuantumParallelRepetition.answerLogCost_nonneg_of_postselection"
  unless stub.type == sol.type do
    let a ← Meta.ppExpr stub.type
    let b ← Meta.ppExpr sol.type
    let same ← Meta.isDefEq stub.type sol.type
    throwError "type mismatch for QuantumParallelRepetition.answerLogCost_nonneg_of_postselection (defeq: {same})\nstatement: {a}\nsolution:  {b}"
