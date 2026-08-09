import Theorems.Thm_QuantumParallelRepetition_repeatedEntangledValue_eq_fin
import Solutions.Sol_QuantumParallelRepetition_repeatedEntangledValue_eq_fin

open Lean in
run_meta do
  let env ← getEnv
  let some stub := env.find? `QuantumParallelRepetition.repeatedEntangledValue_eq_fin | throwError "missing statement QuantumParallelRepetition.repeatedEntangledValue_eq_fin"
  let some sol := env.find? `solution | throwError "missing solution for QuantumParallelRepetition.repeatedEntangledValue_eq_fin"
  unless stub.type == sol.type do
    let a ← Meta.ppExpr stub.type
    let b ← Meta.ppExpr sol.type
    let same ← Meta.isDefEq stub.type sol.type
    throwError "type mismatch for QuantumParallelRepetition.repeatedEntangledValue_eq_fin (defeq: {same})\nstatement: {a}\nsolution:  {b}"
