import Theorems.Thm_QuantumParallelRepetition_dSVDensityRationalHeterogeneousCommonStopSpectralAliceMass_eq_diagonalBorn
import Solutions.Sol_QuantumParallelRepetition_dSVDensityRationalHeterogeneousCommonStopSpectralAliceMass_eq_diagonalBorn

open Lean in
run_meta do
  let env ← getEnv
  let some stub := env.find? `QuantumParallelRepetition.dSVDensityRationalHeterogeneousCommonStopSpectralAliceMass_eq_diagonalBorn | throwError "missing statement QuantumParallelRepetition.dSVDensityRationalHeterogeneousCommonStopSpectralAliceMass_eq_diagonalBorn"
  let some sol := env.find? `solution | throwError "missing solution for QuantumParallelRepetition.dSVDensityRationalHeterogeneousCommonStopSpectralAliceMass_eq_diagonalBorn"
  unless stub.type == sol.type do
    let a ← Meta.ppExpr stub.type
    let b ← Meta.ppExpr sol.type
    let same ← Meta.isDefEq stub.type sol.type
    throwError "type mismatch for QuantumParallelRepetition.dSVDensityRationalHeterogeneousCommonStopSpectralAliceMass_eq_diagonalBorn (defeq: {same})\nstatement: {a}\nsolution:  {b}"
