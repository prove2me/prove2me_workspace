import Theorems.Thm_QuantumParallelRepetition_unconditionalSourcePhysicalSameGridWeightedStoppingLedger
import Solutions.Sol_QuantumParallelRepetition_unconditionalSourcePhysicalSameGridWeightedStoppingLedger

open Lean in
run_meta do
  let env ← getEnv
  let some stub := env.find? `QuantumParallelRepetition.unconditionalSourcePhysicalSameGridWeightedStoppingLedger | throwError "missing statement QuantumParallelRepetition.unconditionalSourcePhysicalSameGridWeightedStoppingLedger"
  let some sol := env.find? `solution | throwError "missing solution for QuantumParallelRepetition.unconditionalSourcePhysicalSameGridWeightedStoppingLedger"
  unless stub.type == sol.type do
    let a ← Meta.ppExpr stub.type
    let b ← Meta.ppExpr sol.type
    let same ← Meta.isDefEq stub.type sol.type
    throwError "type mismatch for QuantumParallelRepetition.unconditionalSourcePhysicalSameGridWeightedStoppingLedger (defeq: {same})\nstatement: {a}\nsolution:  {b}"
