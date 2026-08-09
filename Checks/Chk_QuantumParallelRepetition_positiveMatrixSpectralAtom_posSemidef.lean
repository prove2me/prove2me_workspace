import Theorems.Thm_QuantumParallelRepetition_positiveMatrixSpectralAtom_posSemidef
import Solutions.Sol_QuantumParallelRepetition_positiveMatrixSpectralAtom_posSemidef

open Lean in
run_meta do
  let env ← getEnv
  let some stub := env.find? `QuantumParallelRepetition.positiveMatrixSpectralAtom_posSemidef | throwError "missing statement QuantumParallelRepetition.positiveMatrixSpectralAtom_posSemidef"
  let some sol := env.find? `solution | throwError "missing solution for QuantumParallelRepetition.positiveMatrixSpectralAtom_posSemidef"
  unless stub.type == sol.type do
    let a ← Meta.ppExpr stub.type
    let b ← Meta.ppExpr sol.type
    let same ← Meta.isDefEq stub.type sol.type
    throwError "type mismatch for QuantumParallelRepetition.positiveMatrixSpectralAtom_posSemidef (defeq: {same})\nstatement: {a}\nsolution:  {b}"
