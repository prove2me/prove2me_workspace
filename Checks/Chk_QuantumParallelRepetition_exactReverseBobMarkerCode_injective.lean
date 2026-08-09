import Theorems.Thm_QuantumParallelRepetition_exactReverseBobMarkerCode_injective
import Solutions.Sol_QuantumParallelRepetition_exactReverseBobMarkerCode_injective

open Lean in
run_meta do
  let env ← getEnv
  let some stub := env.find? `QuantumParallelRepetition.exactReverseBobMarkerCode_injective | throwError "missing statement QuantumParallelRepetition.exactReverseBobMarkerCode_injective"
  let some sol := env.find? `solution | throwError "missing solution for QuantumParallelRepetition.exactReverseBobMarkerCode_injective"
  unless stub.type == sol.type do
    let a ← Meta.ppExpr stub.type
    let b ← Meta.ppExpr sol.type
    let same ← Meta.isDefEq stub.type sol.type
    throwError "type mismatch for QuantumParallelRepetition.exactReverseBobMarkerCode_injective (defeq: {same})\nstatement: {a}\nsolution:  {b}"
