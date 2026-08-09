import Theorems.Thm_QuantumParallelRepetition_exactLocallySampleableLaw_absolute_continuous_roundedJA
import Solutions.Sol_QuantumParallelRepetition_exactLocallySampleableLaw_absolute_continuous_roundedJA

open Lean in
run_meta do
  let env ← getEnv
  let some stub := env.find? `QuantumParallelRepetition.exactLocallySampleableLaw_absolute_continuous_roundedJA | throwError "missing statement QuantumParallelRepetition.exactLocallySampleableLaw_absolute_continuous_roundedJA"
  let some sol := env.find? `solution | throwError "missing solution for QuantumParallelRepetition.exactLocallySampleableLaw_absolute_continuous_roundedJA"
  unless stub.type == sol.type do
    let a ← Meta.ppExpr stub.type
    let b ← Meta.ppExpr sol.type
    let same ← Meta.isDefEq stub.type sol.type
    throwError "type mismatch for QuantumParallelRepetition.exactLocallySampleableLaw_absolute_continuous_roundedJA (defeq: {same})\nstatement: {a}\nsolution:  {b}"
