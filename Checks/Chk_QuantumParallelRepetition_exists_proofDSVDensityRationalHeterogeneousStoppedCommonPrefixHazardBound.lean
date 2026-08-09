import Theorems.Thm_QuantumParallelRepetition_exists_proofDSVDensityRationalHeterogeneousStoppedCommonPrefixHazardBound
import Solutions.Sol_QuantumParallelRepetition_exists_proofDSVDensityRationalHeterogeneousStoppedCommonPrefixHazardBound

open Lean in
run_meta do
  let env ← getEnv
  let some stub := env.find? `QuantumParallelRepetition.exists_proofDSVDensityRationalHeterogeneousStoppedCommonPrefixHazardBound | throwError "missing statement QuantumParallelRepetition.exists_proofDSVDensityRationalHeterogeneousStoppedCommonPrefixHazardBound"
  let some sol := env.find? `solution | throwError "missing solution for QuantumParallelRepetition.exists_proofDSVDensityRationalHeterogeneousStoppedCommonPrefixHazardBound"
  unless stub.type == sol.type do
    let a ← Meta.ppExpr stub.type
    let b ← Meta.ppExpr sol.type
    let same ← Meta.isDefEq stub.type sol.type
    throwError "type mismatch for QuantumParallelRepetition.exists_proofDSVDensityRationalHeterogeneousStoppedCommonPrefixHazardBound (defeq: {same})\nstatement: {a}\nsolution:  {b}"
