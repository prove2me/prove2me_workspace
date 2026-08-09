import Theorems.Thm_QuantumParallelRepetition_unconditionalActualSourceSamplerBounds
import Solutions.Sol_QuantumParallelRepetition_unconditionalActualSourceSamplerBounds

open Lean in
run_meta do
  let env ← getEnv
  let some stub := env.find? `QuantumParallelRepetition.unconditionalActualSourceSamplerBounds | throwError "missing statement QuantumParallelRepetition.unconditionalActualSourceSamplerBounds"
  let some sol := env.find? `solution | throwError "missing solution for QuantumParallelRepetition.unconditionalActualSourceSamplerBounds"
  unless stub.type == sol.type do
    let a ← Meta.ppExpr stub.type
    let b ← Meta.ppExpr sol.type
    let same ← Meta.isDefEq stub.type sol.type
    throwError "type mismatch for QuantumParallelRepetition.unconditionalActualSourceSamplerBounds (defeq: {same})\nstatement: {a}\nsolution:  {b}"
