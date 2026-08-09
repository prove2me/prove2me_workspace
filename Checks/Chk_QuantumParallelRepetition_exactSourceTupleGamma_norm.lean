import Theorems.Thm_QuantumParallelRepetition_exactSourceTupleGamma_norm
import Solutions.Sol_QuantumParallelRepetition_exactSourceTupleGamma_norm

open Lean in
run_meta do
  let env ← getEnv
  let some stub := env.find? `QuantumParallelRepetition.exactSourceTupleGamma_norm | throwError "missing statement QuantumParallelRepetition.exactSourceTupleGamma_norm"
  let some sol := env.find? `solution | throwError "missing solution for QuantumParallelRepetition.exactSourceTupleGamma_norm"
  unless stub.type == sol.type do
    let a ← Meta.ppExpr stub.type
    let b ← Meta.ppExpr sol.type
    let same ← Meta.isDefEq stub.type sol.type
    throwError "type mismatch for QuantumParallelRepetition.exactSourceTupleGamma_norm (defeq: {same})\nstatement: {a}\nsolution:  {b}"
