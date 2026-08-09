import Theorems.Thm_QuantumParallelRepetition_unconditionalFairPhysicalFlaggedStoppingTransfer
import Solutions.Sol_QuantumParallelRepetition_unconditionalFairPhysicalFlaggedStoppingTransfer

open Lean in
run_meta do
  let env ← getEnv
  let some stub := env.find? `QuantumParallelRepetition.unconditionalFairPhysicalFlaggedStoppingTransfer | throwError "missing statement QuantumParallelRepetition.unconditionalFairPhysicalFlaggedStoppingTransfer"
  let some sol := env.find? `solution | throwError "missing solution for QuantumParallelRepetition.unconditionalFairPhysicalFlaggedStoppingTransfer"
  unless stub.type == sol.type do
    let a ← Meta.ppExpr stub.type
    let b ← Meta.ppExpr sol.type
    let same ← Meta.isDefEq stub.type sol.type
    throwError "type mismatch for QuantumParallelRepetition.unconditionalFairPhysicalFlaggedStoppingTransfer (defeq: {same})\nstatement: {a}\nsolution:  {b}"
