import Theorems.Thm_QuantumParallelRepetition_exactReverseAliceUniformMarkedSeed_sum
import Solutions.Sol_QuantumParallelRepetition_exactReverseAliceUniformMarkedSeed_sum

open Lean in
run_meta do
  let env ← getEnv
  let some stub := env.find? `QuantumParallelRepetition.exactReverseAliceUniformMarkedSeed_sum | throwError "missing statement QuantumParallelRepetition.exactReverseAliceUniformMarkedSeed_sum"
  let some sol := env.find? `solution | throwError "missing solution for QuantumParallelRepetition.exactReverseAliceUniformMarkedSeed_sum"
  unless stub.type == sol.type do
    let a ← Meta.ppExpr stub.type
    let b ← Meta.ppExpr sol.type
    let same ← Meta.isDefEq stub.type sol.type
    throwError "type mismatch for QuantumParallelRepetition.exactReverseAliceUniformMarkedSeed_sum (defeq: {same})\nstatement: {a}\nsolution:  {b}"
