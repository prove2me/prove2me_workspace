import Theorems.Thm_QuantumParallelRepetition_exactSourceAnswerTypes_nonempty_of_remaining
import Solutions.Sol_QuantumParallelRepetition_exactSourceAnswerTypes_nonempty_of_remaining

open Lean in
run_meta do
  let env ← getEnv
  let some stub := env.find? `QuantumParallelRepetition.exactSourceAnswerTypes_nonempty_of_remaining | throwError "missing statement QuantumParallelRepetition.exactSourceAnswerTypes_nonempty_of_remaining"
  let some sol := env.find? `solution | throwError "missing solution for QuantumParallelRepetition.exactSourceAnswerTypes_nonempty_of_remaining"
  unless stub.type == sol.type do
    let a ← Meta.ppExpr stub.type
    let b ← Meta.ppExpr sol.type
    let same ← Meta.isDefEq stub.type sol.type
    throwError "type mismatch for QuantumParallelRepetition.exactSourceAnswerTypes_nonempty_of_remaining (defeq: {same})\nstatement: {a}\nsolution:  {b}"
