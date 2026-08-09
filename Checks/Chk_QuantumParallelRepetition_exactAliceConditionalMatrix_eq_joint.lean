import Theorems.Thm_QuantumParallelRepetition_exactAliceConditionalMatrix_eq_joint
import Solutions.Sol_QuantumParallelRepetition_exactAliceConditionalMatrix_eq_joint

open Lean in
run_meta do
  let env ← getEnv
  let some stub := env.find? `QuantumParallelRepetition.exactAliceConditionalMatrix_eq_joint | throwError "missing statement QuantumParallelRepetition.exactAliceConditionalMatrix_eq_joint"
  let some sol := env.find? `solution | throwError "missing solution for QuantumParallelRepetition.exactAliceConditionalMatrix_eq_joint"
  unless stub.type == sol.type do
    let a ← Meta.ppExpr stub.type
    let b ← Meta.ppExpr sol.type
    let same ← Meta.isDefEq stub.type sol.type
    throwError "type mismatch for QuantumParallelRepetition.exactAliceConditionalMatrix_eq_joint (defeq: {same})\nstatement: {a}\nsolution:  {b}"
