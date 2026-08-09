import Theorems.Thm_QuantumParallelRepetition_pdf_distributionUniformExponential_of_uniform_source_rounding
import Solutions.Sol_QuantumParallelRepetition_pdf_distributionUniformExponential_of_uniform_source_rounding

open Lean in
run_meta do
  let env ← getEnv
  let some stub := env.find? `QuantumParallelRepetition.pdf_distributionUniformExponential_of_uniform_source_rounding | throwError "missing statement QuantumParallelRepetition.pdf_distributionUniformExponential_of_uniform_source_rounding"
  let some sol := env.find? `solution | throwError "missing solution for QuantumParallelRepetition.pdf_distributionUniformExponential_of_uniform_source_rounding"
  unless stub.type == sol.type do
    let a ← Meta.ppExpr stub.type
    let b ← Meta.ppExpr sol.type
    let same ← Meta.isDefEq stub.type sol.type
    throwError "type mismatch for QuantumParallelRepetition.pdf_distributionUniformExponential_of_uniform_source_rounding (defeq: {same})\nstatement: {a}\nsolution:  {b}"
