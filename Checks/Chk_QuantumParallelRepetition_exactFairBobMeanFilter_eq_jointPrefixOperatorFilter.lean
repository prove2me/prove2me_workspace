import Theorems.Thm_QuantumParallelRepetition_exactFairBobMeanFilter_eq_jointPrefixOperatorFilter
import Solutions.Sol_QuantumParallelRepetition_exactFairBobMeanFilter_eq_jointPrefixOperatorFilter

open Lean in
run_meta do
  let env ← getEnv
  let some stub := env.find? `QuantumParallelRepetition.exactFairBobMeanFilter_eq_jointPrefixOperatorFilter | throwError "missing statement QuantumParallelRepetition.exactFairBobMeanFilter_eq_jointPrefixOperatorFilter"
  let some sol := env.find? `solution | throwError "missing solution for QuantumParallelRepetition.exactFairBobMeanFilter_eq_jointPrefixOperatorFilter"
  unless stub.type == sol.type do
    let a ← Meta.ppExpr stub.type
    let b ← Meta.ppExpr sol.type
    let same ← Meta.isDefEq stub.type sol.type
    throwError "type mismatch for QuantumParallelRepetition.exactFairBobMeanFilter_eq_jointPrefixOperatorFilter (defeq: {same})\nstatement: {a}\nsolution:  {b}"
