import Theorems.Thm_QuantumParallelRepetition_unconditionalActualFairSourceBaseSupportedBorn
import Solutions.Sol_QuantumParallelRepetition_unconditionalActualFairSourceBaseSupportedBorn

open Lean in
run_meta do
  let env ← getEnv
  let some stub := env.find? `QuantumParallelRepetition.unconditionalActualFairSourceBaseSupportedBorn | throwError "missing statement QuantumParallelRepetition.unconditionalActualFairSourceBaseSupportedBorn"
  let some sol := env.find? `solution | throwError "missing solution for QuantumParallelRepetition.unconditionalActualFairSourceBaseSupportedBorn"
  unless stub.type == sol.type do
    let a ← Meta.ppExpr stub.type
    let b ← Meta.ppExpr sol.type
    let same ← Meta.isDefEq stub.type sol.type
    throwError "type mismatch for QuantumParallelRepetition.unconditionalActualFairSourceBaseSupportedBorn (defeq: {same})\nstatement: {a}\nsolution:  {b}"
