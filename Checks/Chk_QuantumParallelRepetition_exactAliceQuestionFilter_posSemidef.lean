import Theorems.Thm_QuantumParallelRepetition_exactAliceQuestionFilter_posSemidef
import Solutions.Sol_QuantumParallelRepetition_exactAliceQuestionFilter_posSemidef

open Lean in
run_meta do
  let env ← getEnv
  let some stub := env.find? `QuantumParallelRepetition.exactAliceQuestionFilter_posSemidef | throwError "missing statement QuantumParallelRepetition.exactAliceQuestionFilter_posSemidef"
  let some sol := env.find? `solution | throwError "missing solution for QuantumParallelRepetition.exactAliceQuestionFilter_posSemidef"
  unless stub.type == sol.type do
    let a ← Meta.ppExpr stub.type
    let b ← Meta.ppExpr sol.type
    let same ← Meta.isDefEq stub.type sol.type
    throwError "type mismatch for QuantumParallelRepetition.exactAliceQuestionFilter_posSemidef (defeq: {same})\nstatement: {a}\nsolution:  {b}"
