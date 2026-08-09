import Theorems.Thm_QuantumParallelRepetition_aliceMartingaleEntropyBudget
import Solutions.Sol_QuantumParallelRepetition_aliceMartingaleEntropyBudget

open Lean in
run_meta do
  let env ← getEnv
  let some stub := env.find? `QuantumParallelRepetition.aliceMartingaleEntropyBudget | throwError "missing statement QuantumParallelRepetition.aliceMartingaleEntropyBudget"
  let some sol := env.find? `solution | throwError "missing solution for QuantumParallelRepetition.aliceMartingaleEntropyBudget"
  unless stub.type == sol.type do
    let a ← Meta.ppExpr stub.type
    let b ← Meta.ppExpr sol.type
    let same ← Meta.isDefEq stub.type sol.type
    throwError "type mismatch for QuantumParallelRepetition.aliceMartingaleEntropyBudget (defeq: {same})\nstatement: {a}\nsolution:  {b}"
