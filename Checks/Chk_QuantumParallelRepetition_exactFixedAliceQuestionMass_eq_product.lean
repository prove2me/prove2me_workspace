import Theorems.Thm_QuantumParallelRepetition_exactFixedAliceQuestionMass_eq_product
import Solutions.Sol_QuantumParallelRepetition_exactFixedAliceQuestionMass_eq_product

open Lean in
run_meta do
  let env ← getEnv
  let some stub := env.find? `QuantumParallelRepetition.exactFixedAliceQuestionMass_eq_product | throwError "missing statement QuantumParallelRepetition.exactFixedAliceQuestionMass_eq_product"
  let some sol := env.find? `solution | throwError "missing solution for QuantumParallelRepetition.exactFixedAliceQuestionMass_eq_product"
  unless stub.type == sol.type do
    let a ← Meta.ppExpr stub.type
    let b ← Meta.ppExpr sol.type
    let same ← Meta.isDefEq stub.type sol.type
    throwError "type mismatch for QuantumParallelRepetition.exactFixedAliceQuestionMass_eq_product (defeq: {same})\nstatement: {a}\nsolution:  {b}"
