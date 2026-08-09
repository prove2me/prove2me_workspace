import Theorems.Thm_QuantumParallelRepetition_exactReverseBobActualMarkedEntropy_eq_source
import Solutions.Sol_QuantumParallelRepetition_exactReverseBobActualMarkedEntropy_eq_source

open Lean in
run_meta do
  let env ← getEnv
  let some stub := env.find? `QuantumParallelRepetition.exactReverseBobActualMarkedEntropy_eq_source | throwError "missing statement QuantumParallelRepetition.exactReverseBobActualMarkedEntropy_eq_source"
  let some sol := env.find? `solution | throwError "missing solution for QuantumParallelRepetition.exactReverseBobActualMarkedEntropy_eq_source"
  unless stub.type == sol.type do
    let a ← Meta.ppExpr stub.type
    let b ← Meta.ppExpr sol.type
    let same ← Meta.isDefEq stub.type sol.type
    throwError "type mismatch for QuantumParallelRepetition.exactReverseBobActualMarkedEntropy_eq_source (defeq: {same})\nstatement: {a}\nsolution:  {b}"
