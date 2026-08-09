import Theorems.Thm_QuantumParallelRepetition_dSVDensityRationalMixedAcceptedPrefix_norm_sq
import Solutions.Sol_QuantumParallelRepetition_dSVDensityRationalMixedAcceptedPrefix_norm_sq

open Lean in
run_meta do
  let env ← getEnv
  let some stub := env.find? `QuantumParallelRepetition.dSVDensityRationalMixedAcceptedPrefix_norm_sq | throwError "missing statement QuantumParallelRepetition.dSVDensityRationalMixedAcceptedPrefix_norm_sq"
  let some sol := env.find? `solution | throwError "missing solution for QuantumParallelRepetition.dSVDensityRationalMixedAcceptedPrefix_norm_sq"
  unless stub.type == sol.type do
    let a ← Meta.ppExpr stub.type
    let b ← Meta.ppExpr sol.type
    let same ← Meta.isDefEq stub.type sol.type
    throwError "type mismatch for QuantumParallelRepetition.dSVDensityRationalMixedAcceptedPrefix_norm_sq (defeq: {same})\nstatement: {a}\nsolution:  {b}"
