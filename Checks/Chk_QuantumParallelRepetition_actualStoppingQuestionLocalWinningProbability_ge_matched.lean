import Theorems.Thm_QuantumParallelRepetition_actualStoppingQuestionLocalWinningProbability_ge_matched
import Solutions.Sol_QuantumParallelRepetition_actualStoppingQuestionLocalWinningProbability_ge_matched

open Lean in
run_meta do
  let env ← getEnv
  let some stub := env.find? `QuantumParallelRepetition.actualStoppingQuestionLocalWinningProbability_ge_matched | throwError "missing statement QuantumParallelRepetition.actualStoppingQuestionLocalWinningProbability_ge_matched"
  let some sol := env.find? `solution | throwError "missing solution for QuantumParallelRepetition.actualStoppingQuestionLocalWinningProbability_ge_matched"
  unless stub.type == sol.type do
    let a ← Meta.ppExpr stub.type
    let b ← Meta.ppExpr sol.type
    let same ← Meta.isDefEq stub.type sol.type
    throwError "type mismatch for QuantumParallelRepetition.actualStoppingQuestionLocalWinningProbability_ge_matched (defeq: {same})\nstatement: {a}\nsolution:  {b}"
