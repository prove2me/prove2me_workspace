import Theorems.Thm_QuantumParallelRepetition_exactSourceGlobalCatalystWinningEffect_law_supported_verifier
import Solutions.Sol_QuantumParallelRepetition_exactSourceGlobalCatalystWinningEffect_law_supported_verifier

open Lean in
run_meta do
  let env ← getEnv
  let some stub := env.find? `QuantumParallelRepetition.exactSourceGlobalCatalystWinningEffect_law_supported_verifier | throwError "missing statement QuantumParallelRepetition.exactSourceGlobalCatalystWinningEffect_law_supported_verifier"
  let some sol := env.find? `solution | throwError "missing solution for QuantumParallelRepetition.exactSourceGlobalCatalystWinningEffect_law_supported_verifier"
  unless stub.type == sol.type do
    let a ← Meta.ppExpr stub.type
    let b ← Meta.ppExpr sol.type
    let same ← Meta.isDefEq stub.type sol.type
    throwError "type mismatch for QuantumParallelRepetition.exactSourceGlobalCatalystWinningEffect_law_supported_verifier (defeq: {same})\nstatement: {a}\nsolution:  {b}"
