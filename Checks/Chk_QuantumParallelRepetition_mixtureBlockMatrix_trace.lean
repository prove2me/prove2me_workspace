import Theorems.Thm_QuantumParallelRepetition_mixtureBlockMatrix_trace
import Solutions.Sol_QuantumParallelRepetition_mixtureBlockMatrix_trace

open Lean in
run_meta do
  let env ← getEnv
  let some stub := env.find? `QuantumParallelRepetition.mixtureBlockMatrix_trace | throwError "missing statement QuantumParallelRepetition.mixtureBlockMatrix_trace"
  let some sol := env.find? `solution | throwError "missing solution for QuantumParallelRepetition.mixtureBlockMatrix_trace"
  unless stub.type == sol.type do
    let a ← Meta.ppExpr stub.type
    let b ← Meta.ppExpr sol.type
    let same ← Meta.isDefEq stub.type sol.type
    throwError "type mismatch for QuantumParallelRepetition.mixtureBlockMatrix_trace (defeq: {same})\nstatement: {a}\nsolution:  {b}"
