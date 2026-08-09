import Theorems.Thm_QuantumParallelRepetition_mixtureEmbedding_isometry
import Solutions.Sol_QuantumParallelRepetition_mixtureEmbedding_isometry

open Lean in
run_meta do
  let env ← getEnv
  let some stub := env.find? `QuantumParallelRepetition.mixtureEmbedding_isometry | throwError "missing statement QuantumParallelRepetition.mixtureEmbedding_isometry"
  let some sol := env.find? `solution | throwError "missing solution for QuantumParallelRepetition.mixtureEmbedding_isometry"
  unless stub.type == sol.type do
    let a ← Meta.ppExpr stub.type
    let b ← Meta.ppExpr sol.type
    let same ← Meta.isDefEq stub.type sol.type
    throwError "type mismatch for QuantumParallelRepetition.mixtureEmbedding_isometry (defeq: {same})\nstatement: {a}\nsolution:  {b}"
