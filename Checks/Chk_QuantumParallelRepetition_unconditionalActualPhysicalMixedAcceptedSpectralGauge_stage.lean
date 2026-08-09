import Theorems.Thm_QuantumParallelRepetition_unconditionalActualPhysicalMixedAcceptedSpectralGauge_stage
import Solutions.Sol_QuantumParallelRepetition_unconditionalActualPhysicalMixedAcceptedSpectralGauge_stage

open Lean in
run_meta do
  let env ← getEnv
  let some stub := env.find? `QuantumParallelRepetition.unconditionalActualPhysicalMixedAcceptedSpectralGauge_stage | throwError "missing statement QuantumParallelRepetition.unconditionalActualPhysicalMixedAcceptedSpectralGauge_stage"
  let some sol := env.find? `solution | throwError "missing solution for QuantumParallelRepetition.unconditionalActualPhysicalMixedAcceptedSpectralGauge_stage"
  unless stub.type == sol.type do
    let a ← Meta.ppExpr stub.type
    let b ← Meta.ppExpr sol.type
    let same ← Meta.isDefEq stub.type sol.type
    throwError "type mismatch for QuantumParallelRepetition.unconditionalActualPhysicalMixedAcceptedSpectralGauge_stage (defeq: {same})\nstatement: {a}\nsolution:  {b}"
