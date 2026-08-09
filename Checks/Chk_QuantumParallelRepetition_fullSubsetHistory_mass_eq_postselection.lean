import Theorems.Thm_QuantumParallelRepetition_fullSubsetHistory_mass_eq_postselection
import Solutions.Sol_QuantumParallelRepetition_fullSubsetHistory_mass_eq_postselection

open Lean in
run_meta do
  let env ← getEnv
  let some stub := env.find? `QuantumParallelRepetition.fullSubsetHistory_mass_eq_postselection | throwError "missing statement QuantumParallelRepetition.fullSubsetHistory_mass_eq_postselection"
  let some sol := env.find? `solution | throwError "missing solution for QuantumParallelRepetition.fullSubsetHistory_mass_eq_postselection"
  unless stub.type == sol.type do
    let a ← Meta.ppExpr stub.type
    let b ← Meta.ppExpr sol.type
    let same ← Meta.isDefEq stub.type sol.type
    throwError "type mismatch for QuantumParallelRepetition.fullSubsetHistory_mass_eq_postselection (defeq: {same})\nstatement: {a}\nsolution:  {b}"
