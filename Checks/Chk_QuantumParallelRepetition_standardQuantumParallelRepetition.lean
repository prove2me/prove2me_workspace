import Theorems.Thm_QuantumParallelRepetition_standardQuantumParallelRepetition
import Solutions.Sol_QuantumParallelRepetition_standardQuantumParallelRepetition

open Lean in
run_meta do
  let env ← getEnv
  let some stub := env.find? `QuantumParallelRepetition.standardQuantumParallelRepetition | throwError "missing statement QuantumParallelRepetition.standardQuantumParallelRepetition"
  let some sol := env.find? `solution | throwError "missing solution for QuantumParallelRepetition.standardQuantumParallelRepetition"
  unless stub.type == sol.type do
    let a ← Meta.ppExpr stub.type
    let b ← Meta.ppExpr sol.type
    let same ← Meta.isDefEq stub.type sol.type
    throwError "type mismatch for QuantumParallelRepetition.standardQuantumParallelRepetition (defeq: {same})\nstatement: {a}\nsolution:  {b}"
