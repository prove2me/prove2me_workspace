import Theorems.Thm_QuantumParallelRepetition_exactAliceCoordinateFilter_posSemidef
import Solutions.Sol_QuantumParallelRepetition_exactAliceCoordinateFilter_posSemidef

open Lean in
run_meta do
  let env ← getEnv
  let some stub := env.find? `QuantumParallelRepetition.exactAliceCoordinateFilter_posSemidef | throwError "missing statement QuantumParallelRepetition.exactAliceCoordinateFilter_posSemidef"
  let some sol := env.find? `solution | throwError "missing solution for QuantumParallelRepetition.exactAliceCoordinateFilter_posSemidef"
  unless stub.type == sol.type do
    let a ← Meta.ppExpr stub.type
    let b ← Meta.ppExpr sol.type
    let same ← Meta.isDefEq stub.type sol.type
    throwError "type mismatch for QuantumParallelRepetition.exactAliceCoordinateFilter_posSemidef (defeq: {same})\nstatement: {a}\nsolution:  {b}"
