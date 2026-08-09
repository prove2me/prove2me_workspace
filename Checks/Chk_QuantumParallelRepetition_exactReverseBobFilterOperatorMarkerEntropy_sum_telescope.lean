import Theorems.Thm_QuantumParallelRepetition_exactReverseBobFilterOperatorMarkerEntropy_sum_telescope
import Solutions.Sol_QuantumParallelRepetition_exactReverseBobFilterOperatorMarkerEntropy_sum_telescope

open Lean in
run_meta do
  let env ← getEnv
  let some stub := env.find? `QuantumParallelRepetition.exactReverseBobFilterOperatorMarkerEntropy_sum_telescope | throwError "missing statement QuantumParallelRepetition.exactReverseBobFilterOperatorMarkerEntropy_sum_telescope"
  let some sol := env.find? `solution | throwError "missing solution for QuantumParallelRepetition.exactReverseBobFilterOperatorMarkerEntropy_sum_telescope"
  unless stub.type == sol.type do
    let a ← Meta.ppExpr stub.type
    let b ← Meta.ppExpr sol.type
    let same ← Meta.isDefEq stub.type sol.type
    throwError "type mismatch for QuantumParallelRepetition.exactReverseBobFilterOperatorMarkerEntropy_sum_telescope (defeq: {same})\nstatement: {a}\nsolution:  {b}"
