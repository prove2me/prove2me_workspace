import Theorems.Thm_QuantumParallelRepetition_unconditionalExactSourceScalarClipping
import Solutions.Sol_QuantumParallelRepetition_unconditionalExactSourceScalarClipping

open Lean in
run_meta do
  let env ← getEnv
  let some stub := env.find? `QuantumParallelRepetition.unconditionalExactSourceScalarClipping | throwError "missing statement QuantumParallelRepetition.unconditionalExactSourceScalarClipping"
  let some sol := env.find? `solution | throwError "missing solution for QuantumParallelRepetition.unconditionalExactSourceScalarClipping"
  unless stub.type == sol.type do
    let a ← Meta.ppExpr stub.type
    let b ← Meta.ppExpr sol.type
    let same ← Meta.isDefEq stub.type sol.type
    throwError "type mismatch for QuantumParallelRepetition.unconditionalExactSourceScalarClipping (defeq: {same})\nstatement: {a}\nsolution:  {b}"
