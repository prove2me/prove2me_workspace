import Theorems.Thm_QuantumParallelRepetition_unconditionalActualFairSourceOuterBorn_of_base
import Solutions.Sol_QuantumParallelRepetition_unconditionalActualFairSourceOuterBorn_of_base

open Lean in
run_meta do
  let env ← getEnv
  let some stub := env.find? `QuantumParallelRepetition.unconditionalActualFairSourceOuterBorn_of_base | throwError "missing statement QuantumParallelRepetition.unconditionalActualFairSourceOuterBorn_of_base"
  let some sol := env.find? `solution | throwError "missing solution for QuantumParallelRepetition.unconditionalActualFairSourceOuterBorn_of_base"
  unless stub.type == sol.type do
    let a ← Meta.ppExpr stub.type
    let b ← Meta.ppExpr sol.type
    let same ← Meta.isDefEq stub.type sol.type
    throwError "type mismatch for QuantumParallelRepetition.unconditionalActualFairSourceOuterBorn_of_base (defeq: {same})\nstatement: {a}\nsolution:  {b}"
