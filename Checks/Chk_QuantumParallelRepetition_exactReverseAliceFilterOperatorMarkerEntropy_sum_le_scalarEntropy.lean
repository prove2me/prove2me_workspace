import Theorems.Thm_QuantumParallelRepetition_exactReverseAliceFilterOperatorMarkerEntropy_sum_le_scalarEntropy
import Solutions.Sol_QuantumParallelRepetition_exactReverseAliceFilterOperatorMarkerEntropy_sum_le_scalarEntropy

open Lean in
run_meta do
  let env ← getEnv
  let some stub := env.find? `QuantumParallelRepetition.exactReverseAliceFilterOperatorMarkerEntropy_sum_le_scalarEntropy | throwError "missing statement QuantumParallelRepetition.exactReverseAliceFilterOperatorMarkerEntropy_sum_le_scalarEntropy"
  let some sol := env.find? `solution | throwError "missing solution for QuantumParallelRepetition.exactReverseAliceFilterOperatorMarkerEntropy_sum_le_scalarEntropy"
  unless stub.type == sol.type do
    let a ← Meta.ppExpr stub.type
    let b ← Meta.ppExpr sol.type
    let same ← Meta.isDefEq stub.type sol.type
    throwError "type mismatch for QuantumParallelRepetition.exactReverseAliceFilterOperatorMarkerEntropy_sum_le_scalarEntropy (defeq: {same})\nstatement: {a}\nsolution:  {b}"
