import Theorems.Thm_QuantumParallelRepetition_unconditionalSourcePhysicalCleanedSelectedHistoryEquiv_hit
import Solutions.Sol_QuantumParallelRepetition_unconditionalSourcePhysicalCleanedSelectedHistoryEquiv_hit

open Lean in
run_meta do
  let env ← getEnv
  let some stub := env.find? `QuantumParallelRepetition.unconditionalSourcePhysicalCleanedSelectedHistoryEquiv_hit | throwError "missing statement QuantumParallelRepetition.unconditionalSourcePhysicalCleanedSelectedHistoryEquiv_hit"
  let some sol := env.find? `solution | throwError "missing solution for QuantumParallelRepetition.unconditionalSourcePhysicalCleanedSelectedHistoryEquiv_hit"
  unless stub.type == sol.type do
    let a ← Meta.ppExpr stub.type
    let b ← Meta.ppExpr sol.type
    let same ← Meta.isDefEq stub.type sol.type
    throwError "type mismatch for QuantumParallelRepetition.unconditionalSourcePhysicalCleanedSelectedHistoryEquiv_hit (defeq: {same})\nstatement: {a}\nsolution:  {b}"
