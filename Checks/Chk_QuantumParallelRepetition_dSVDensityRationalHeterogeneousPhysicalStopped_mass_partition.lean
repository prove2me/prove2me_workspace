import Theorems.Thm_QuantumParallelRepetition_dSVDensityRationalHeterogeneousPhysicalStopped_mass_partition
import Solutions.Sol_QuantumParallelRepetition_dSVDensityRationalHeterogeneousPhysicalStopped_mass_partition

open Lean in
run_meta do
  let env ← getEnv
  let some stub := env.find? `QuantumParallelRepetition.dSVDensityRationalHeterogeneousPhysicalStopped_mass_partition | throwError "missing statement QuantumParallelRepetition.dSVDensityRationalHeterogeneousPhysicalStopped_mass_partition"
  let some sol := env.find? `solution | throwError "missing solution for QuantumParallelRepetition.dSVDensityRationalHeterogeneousPhysicalStopped_mass_partition"
  unless stub.type == sol.type do
    let a ← Meta.ppExpr stub.type
    let b ← Meta.ppExpr sol.type
    let same ← Meta.isDefEq stub.type sol.type
    throwError "type mismatch for QuantumParallelRepetition.dSVDensityRationalHeterogeneousPhysicalStopped_mass_partition (defeq: {same})\nstatement: {a}\nsolution:  {b}"
