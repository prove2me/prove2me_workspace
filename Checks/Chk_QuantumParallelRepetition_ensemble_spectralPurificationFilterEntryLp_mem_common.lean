import Theorems.Thm_QuantumParallelRepetition_ensemble_spectralPurificationFilterEntryLp_mem_common
import Solutions.Sol_QuantumParallelRepetition_ensemble_spectralPurificationFilterEntryLp_mem_common

open Lean in
run_meta do
  let env ← getEnv
  let some stub := env.find? `QuantumParallelRepetition.ensemble_spectralPurificationFilterEntryLp_mem_common | throwError "missing statement QuantumParallelRepetition.ensemble_spectralPurificationFilterEntryLp_mem_common"
  let some sol := env.find? `solution | throwError "missing solution for QuantumParallelRepetition.ensemble_spectralPurificationFilterEntryLp_mem_common"
  unless stub.type == sol.type do
    let a ← Meta.ppExpr stub.type
    let b ← Meta.ppExpr sol.type
    let same ← Meta.isDefEq stub.type sol.type
    throwError "type mismatch for QuantumParallelRepetition.ensemble_spectralPurificationFilterEntryLp_mem_common (defeq: {same})\nstatement: {a}\nsolution:  {b}"
