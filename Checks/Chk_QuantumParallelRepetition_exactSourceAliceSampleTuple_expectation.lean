import Theorems.Thm_QuantumParallelRepetition_exactSourceAliceSampleTuple_expectation
import Solutions.Sol_QuantumParallelRepetition_exactSourceAliceSampleTuple_expectation

open Lean in
run_meta do
  let env ← getEnv
  let some stub := env.find? `QuantumParallelRepetition.exactSourceAliceSampleTuple_expectation | throwError "missing statement QuantumParallelRepetition.exactSourceAliceSampleTuple_expectation"
  let some sol := env.find? `solution | throwError "missing solution for QuantumParallelRepetition.exactSourceAliceSampleTuple_expectation"
  unless stub.type == sol.type do
    let a ← Meta.ppExpr stub.type
    let b ← Meta.ppExpr sol.type
    let same ← Meta.isDefEq stub.type sol.type
    throwError "type mismatch for QuantumParallelRepetition.exactSourceAliceSampleTuple_expectation (defeq: {same})\nstatement: {a}\nsolution:  {b}"
