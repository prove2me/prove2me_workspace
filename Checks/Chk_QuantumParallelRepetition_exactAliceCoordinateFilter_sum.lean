import Theorems.Thm_QuantumParallelRepetition_exactAliceCoordinateFilter_sum
import Solutions.Sol_QuantumParallelRepetition_exactAliceCoordinateFilter_sum

open Lean in
run_meta do
  let env ← getEnv
  let some stub := env.find? `QuantumParallelRepetition.exactAliceCoordinateFilter_sum | throwError "missing statement QuantumParallelRepetition.exactAliceCoordinateFilter_sum"
  let some sol := env.find? `solution | throwError "missing solution for QuantumParallelRepetition.exactAliceCoordinateFilter_sum"
  unless stub.type == sol.type do
    let a ← Meta.ppExpr stub.type
    let b ← Meta.ppExpr sol.type
    let same ← Meta.isDefEq stub.type sol.type
    throwError "type mismatch for QuantumParallelRepetition.exactAliceCoordinateFilter_sum (defeq: {same})\nstatement: {a}\nsolution:  {b}"
