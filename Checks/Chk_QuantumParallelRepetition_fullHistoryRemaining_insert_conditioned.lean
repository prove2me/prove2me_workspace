import Theorems.Thm_QuantumParallelRepetition_fullHistoryRemaining_insert_conditioned
import Solutions.Sol_QuantumParallelRepetition_fullHistoryRemaining_insert_conditioned

open Lean in
run_meta do
  let env ← getEnv
  let some stub := env.find? `QuantumParallelRepetition.fullHistoryRemaining_insert_conditioned | throwError "missing statement QuantumParallelRepetition.fullHistoryRemaining_insert_conditioned"
  let some sol := env.find? `solution | throwError "missing solution for QuantumParallelRepetition.fullHistoryRemaining_insert_conditioned"
  unless stub.type == sol.type do
    let a ← Meta.ppExpr stub.type
    let b ← Meta.ppExpr sol.type
    let same ← Meta.isDefEq stub.type sol.type
    throwError "type mismatch for QuantumParallelRepetition.fullHistoryRemaining_insert_conditioned (defeq: {same})\nstatement: {a}\nsolution:  {b}"
