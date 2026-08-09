import Theorems.Thm_QuantumParallelRepetition_dSVDensityRationalCompleteProjectiveThresholdProjector_pos
import Solutions.Sol_QuantumParallelRepetition_dSVDensityRationalCompleteProjectiveThresholdProjector_pos

open Lean in
run_meta do
  let env ← getEnv
  let some stub := env.find? `QuantumParallelRepetition.dSVDensityRationalCompleteProjectiveThresholdProjector_pos | throwError "missing statement QuantumParallelRepetition.dSVDensityRationalCompleteProjectiveThresholdProjector_pos"
  let some sol := env.find? `solution | throwError "missing solution for QuantumParallelRepetition.dSVDensityRationalCompleteProjectiveThresholdProjector_pos"
  unless stub.type == sol.type do
    let a ← Meta.ppExpr stub.type
    let b ← Meta.ppExpr sol.type
    let same ← Meta.isDefEq stub.type sol.type
    throwError "type mismatch for QuantumParallelRepetition.dSVDensityRationalCompleteProjectiveThresholdProjector_pos (defeq: {same})\nstatement: {a}\nsolution:  {b}"
