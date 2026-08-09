import Theorems.Thm_QuantumParallelRepetition_exactLocallySampleableLaw_eq_fair_born
import Solutions.Sol_QuantumParallelRepetition_exactLocallySampleableLaw_eq_fair_born

open Lean in
run_meta do
  let env ← getEnv
  let some stub := env.find? `QuantumParallelRepetition.exactLocallySampleableLaw_eq_fair_born | throwError "missing statement QuantumParallelRepetition.exactLocallySampleableLaw_eq_fair_born"
  let some sol := env.find? `solution | throwError "missing solution for QuantumParallelRepetition.exactLocallySampleableLaw_eq_fair_born"
  unless stub.type == sol.type do
    let a ← Meta.ppExpr stub.type
    let b ← Meta.ppExpr sol.type
    let same ← Meta.isDefEq stub.type sol.type
    throwError "type mismatch for QuantumParallelRepetition.exactLocallySampleableLaw_eq_fair_born (defeq: {same})\nstatement: {a}\nsolution:  {b}"
