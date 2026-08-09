import Theorems.Thm_QuantumParallelRepetition_repeatedEntangledValue_relabel
import Solutions.Sol_QuantumParallelRepetition_repeatedEntangledValue_relabel

open Lean in
run_meta do
  let env ← getEnv
  let some stub := env.find? `QuantumParallelRepetition.repeatedEntangledValue_relabel | throwError "missing statement QuantumParallelRepetition.repeatedEntangledValue_relabel"
  let some sol := env.find? `solution | throwError "missing solution for QuantumParallelRepetition.repeatedEntangledValue_relabel"
  unless stub.type == sol.type do
    let a ← Meta.ppExpr stub.type
    let b ← Meta.ppExpr sol.type
    let same ← Meta.isDefEq stub.type sol.type
    throwError "type mismatch for QuantumParallelRepetition.repeatedEntangledValue_relabel (defeq: {same})\nstatement: {a}\nsolution:  {b}"
