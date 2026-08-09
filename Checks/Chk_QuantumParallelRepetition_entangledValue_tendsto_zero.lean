import Theorems.Thm_QuantumParallelRepetition_entangledValue_tendsto_zero
import Solutions.Sol_QuantumParallelRepetition_entangledValue_tendsto_zero

open Lean in
run_meta do
  let env ← getEnv
  let some stub := env.find? `QuantumParallelRepetition.entangledValue_tendsto_zero | throwError "missing statement QuantumParallelRepetition.entangledValue_tendsto_zero"
  let some sol := env.find? `solution | throwError "missing solution for QuantumParallelRepetition.entangledValue_tendsto_zero"
  unless stub.type == sol.type do
    let a ← Meta.ppExpr stub.type
    let b ← Meta.ppExpr sol.type
    let same ← Meta.isDefEq stub.type sol.type
    throwError "type mismatch for QuantumParallelRepetition.entangledValue_tendsto_zero (defeq: {same})\nstatement: {a}\nsolution:  {b}"
