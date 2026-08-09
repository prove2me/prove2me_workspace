import Theorems.Thm_QuantumParallelRepetition_exactReverseBobMarkerDecode_rightInverse
import Solutions.Sol_QuantumParallelRepetition_exactReverseBobMarkerDecode_rightInverse

open Lean in
run_meta do
  let env ← getEnv
  let some stub := env.find? `QuantumParallelRepetition.exactReverseBobMarkerDecode_rightInverse | throwError "missing statement QuantumParallelRepetition.exactReverseBobMarkerDecode_rightInverse"
  let some sol := env.find? `solution | throwError "missing solution for QuantumParallelRepetition.exactReverseBobMarkerDecode_rightInverse"
  unless stub.type == sol.type do
    let a ← Meta.ppExpr stub.type
    let b ← Meta.ppExpr sol.type
    let same ← Meta.isDefEq stub.type sol.type
    throwError "type mismatch for QuantumParallelRepetition.exactReverseBobMarkerDecode_rightInverse (defeq: {same})\nstatement: {a}\nsolution:  {b}"
