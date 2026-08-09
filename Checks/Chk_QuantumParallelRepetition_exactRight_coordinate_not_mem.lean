import Theorems.Thm_QuantumParallelRepetition_exactRight_coordinate_not_mem
import Solutions.Sol_QuantumParallelRepetition_exactRight_coordinate_not_mem

open Lean in
run_meta do
  let env ← getEnv
  let some stub := env.find? `QuantumParallelRepetition.exactRight_coordinate_not_mem | throwError "missing statement QuantumParallelRepetition.exactRight_coordinate_not_mem"
  let some sol := env.find? `solution | throwError "missing solution for QuantumParallelRepetition.exactRight_coordinate_not_mem"
  unless stub.type == sol.type do
    let a ← Meta.ppExpr stub.type
    let b ← Meta.ppExpr sol.type
    let same ← Meta.isDefEq stub.type sol.type
    throwError "type mismatch for QuantumParallelRepetition.exactRight_coordinate_not_mem (defeq: {same})\nstatement: {a}\nsolution:  {b}"
