import Theorems.Thm_QuantumParallelRepetition_finiteTensorLocalUnitaryMatrix_gram
import Solutions.Sol_QuantumParallelRepetition_finiteTensorLocalUnitaryMatrix_gram

open Lean in
run_meta do
  let env ← getEnv
  let some stub := env.find? `QuantumParallelRepetition.finiteTensorLocalUnitaryMatrix_gram | throwError "missing statement QuantumParallelRepetition.finiteTensorLocalUnitaryMatrix_gram"
  let some sol := env.find? `solution | throwError "missing solution for QuantumParallelRepetition.finiteTensorLocalUnitaryMatrix_gram"
  unless stub.type == sol.type do
    let a ← Meta.ppExpr stub.type
    let b ← Meta.ppExpr sol.type
    let same ← Meta.isDefEq stub.type sol.type
    throwError "type mismatch for QuantumParallelRepetition.finiteTensorLocalUnitaryMatrix_gram (defeq: {same})\nstatement: {a}\nsolution:  {b}"
