import Theorems.Thm_QuantumParallelRepetition_exactInsertedPrefixBefore_marker_eq
import Solutions.Sol_QuantumParallelRepetition_exactInsertedPrefixBefore_marker_eq

open Lean in
run_meta do
  let env ← getEnv
  let some stub := env.find? `QuantumParallelRepetition.exactInsertedPrefixBefore_marker_eq | throwError "missing statement QuantumParallelRepetition.exactInsertedPrefixBefore_marker_eq"
  let some sol := env.find? `solution | throwError "missing solution for QuantumParallelRepetition.exactInsertedPrefixBefore_marker_eq"
  unless stub.type == sol.type do
    let a ← Meta.ppExpr stub.type
    let b ← Meta.ppExpr sol.type
    let same ← Meta.isDefEq stub.type sol.type
    throwError "type mismatch for QuantumParallelRepetition.exactInsertedPrefixBefore_marker_eq (defeq: {same})\nstatement: {a}\nsolution:  {b}"
