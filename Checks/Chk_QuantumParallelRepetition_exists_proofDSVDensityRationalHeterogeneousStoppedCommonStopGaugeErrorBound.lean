import Theorems.Thm_QuantumParallelRepetition_exists_proofDSVDensityRationalHeterogeneousStoppedCommonStopGaugeErrorBound
import Solutions.Sol_QuantumParallelRepetition_exists_proofDSVDensityRationalHeterogeneousStoppedCommonStopGaugeErrorBound

open Lean in
run_meta do
  let env ← getEnv
  let some stub := env.find? `QuantumParallelRepetition.exists_proofDSVDensityRationalHeterogeneousStoppedCommonStopGaugeErrorBound | throwError "missing statement QuantumParallelRepetition.exists_proofDSVDensityRationalHeterogeneousStoppedCommonStopGaugeErrorBound"
  let some sol := env.find? `solution | throwError "missing solution for QuantumParallelRepetition.exists_proofDSVDensityRationalHeterogeneousStoppedCommonStopGaugeErrorBound"
  unless stub.type == sol.type do
    let a ← Meta.ppExpr stub.type
    let b ← Meta.ppExpr sol.type
    let same ← Meta.isDefEq stub.type sol.type
    throwError "type mismatch for QuantumParallelRepetition.exists_proofDSVDensityRationalHeterogeneousStoppedCommonStopGaugeErrorBound (defeq: {same})\nstatement: {a}\nsolution:  {b}"
