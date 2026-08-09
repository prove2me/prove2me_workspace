import Theorems.Thm_QuantumParallelRepetition_exactReverseBobCanonicalPartition_side
import Solutions.Sol_QuantumParallelRepetition_exactReverseBobCanonicalPartition_side

open Lean in
run_meta do
  let env ← getEnv
  let some stub := env.find? `QuantumParallelRepetition.exactReverseBobCanonicalPartition_side | throwError "missing statement QuantumParallelRepetition.exactReverseBobCanonicalPartition_side"
  let some sol := env.find? `solution | throwError "missing solution for QuantumParallelRepetition.exactReverseBobCanonicalPartition_side"
  unless stub.type == sol.type do
    let a ← Meta.ppExpr stub.type
    let b ← Meta.ppExpr sol.type
    let same ← Meta.isDefEq stub.type sol.type
    throwError "type mismatch for QuantumParallelRepetition.exactReverseBobCanonicalPartition_side (defeq: {same})\nstatement: {a}\nsolution:  {b}"
