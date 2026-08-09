import Theorems.Thm_QuantumParallelRepetition_entangledValue_relabel
import Solutions.Sol_QuantumParallelRepetition_entangledValue_relabel

open Lean in
run_meta do
  let env ← getEnv
  let some stub := env.find? `QuantumParallelRepetition.entangledValue_relabel | throwError "missing statement QuantumParallelRepetition.entangledValue_relabel"
  let some sol := env.find? `solution | throwError "missing solution for QuantumParallelRepetition.entangledValue_relabel"
  unless stub.type == sol.type do
    let a ← Meta.ppExpr stub.type
    let b ← Meta.ppExpr sol.type
    let same ← Meta.isDefEq stub.type sol.type
    throwError "type mismatch for QuantumParallelRepetition.entangledValue_relabel (defeq: {same})\nstatement: {a}\nsolution:  {b}"
