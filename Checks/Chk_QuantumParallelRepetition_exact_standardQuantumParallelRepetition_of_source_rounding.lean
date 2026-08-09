import Theorems.Thm_QuantumParallelRepetition_exact_standardQuantumParallelRepetition_of_source_rounding
import Solutions.Sol_QuantumParallelRepetition_exact_standardQuantumParallelRepetition_of_source_rounding

open Lean in
run_meta do
  let env ← getEnv
  let some stub := env.find? `QuantumParallelRepetition.exact_standardQuantumParallelRepetition_of_source_rounding | throwError "missing statement QuantumParallelRepetition.exact_standardQuantumParallelRepetition_of_source_rounding"
  let some sol := env.find? `solution | throwError "missing solution for QuantumParallelRepetition.exact_standardQuantumParallelRepetition_of_source_rounding"
  unless stub.type == sol.type do
    let a ← Meta.ppExpr stub.type
    let b ← Meta.ppExpr sol.type
    let same ← Meta.isDefEq stub.type sol.type
    throwError "type mismatch for QuantumParallelRepetition.exact_standardQuantumParallelRepetition_of_source_rounding (defeq: {same})\nstatement: {a}\nsolution:  {b}"
