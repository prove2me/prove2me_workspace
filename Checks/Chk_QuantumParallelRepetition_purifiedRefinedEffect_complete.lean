import Theorems.Thm_QuantumParallelRepetition_purifiedRefinedEffect_complete
import Solutions.Sol_QuantumParallelRepetition_purifiedRefinedEffect_complete

open Lean in
run_meta do
  let env ← getEnv
  let some stub := env.find? `QuantumParallelRepetition.purifiedRefinedEffect_complete | throwError "missing statement QuantumParallelRepetition.purifiedRefinedEffect_complete"
  let some sol := env.find? `solution | throwError "missing solution for QuantumParallelRepetition.purifiedRefinedEffect_complete"
  unless stub.type == sol.type do
    let a ← Meta.ppExpr stub.type
    let b ← Meta.ppExpr sol.type
    let same ← Meta.isDefEq stub.type sol.type
    throwError "type mismatch for QuantumParallelRepetition.purifiedRefinedEffect_complete (defeq: {same})\nstatement: {a}\nsolution:  {b}"
