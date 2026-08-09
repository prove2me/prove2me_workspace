import Theorems.Thm_QuantumParallelRepetition_exactReverseAlice_history_of_marked_context
import Solutions.Sol_QuantumParallelRepetition_exactReverseAlice_history_of_marked_context

open Lean in
run_meta do
  let env ← getEnv
  let some stub := env.find? `QuantumParallelRepetition.exactReverseAlice_history_of_marked_context | throwError "missing statement QuantumParallelRepetition.exactReverseAlice_history_of_marked_context"
  let some sol := env.find? `solution | throwError "missing solution for QuantumParallelRepetition.exactReverseAlice_history_of_marked_context"
  unless stub.type == sol.type do
    let a ← Meta.ppExpr stub.type
    let b ← Meta.ppExpr sol.type
    let same ← Meta.isDefEq stub.type sol.type
    throwError "type mismatch for QuantumParallelRepetition.exactReverseAlice_history_of_marked_context (defeq: {same})\nstatement: {a}\nsolution:  {b}"
