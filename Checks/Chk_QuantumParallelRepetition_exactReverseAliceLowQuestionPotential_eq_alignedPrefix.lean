import Theorems.Thm_QuantumParallelRepetition_exactReverseAliceLowQuestionPotential_eq_alignedPrefix
import Solutions.Sol_QuantumParallelRepetition_exactReverseAliceLowQuestionPotential_eq_alignedPrefix

open Lean in
run_meta do
  let env ← getEnv
  let some stub := env.find? `QuantumParallelRepetition.exactReverseAliceLowQuestionPotential_eq_alignedPrefix | throwError "missing statement QuantumParallelRepetition.exactReverseAliceLowQuestionPotential_eq_alignedPrefix"
  let some sol := env.find? `solution | throwError "missing solution for QuantumParallelRepetition.exactReverseAliceLowQuestionPotential_eq_alignedPrefix"
  unless stub.type == sol.type do
    let a ← Meta.ppExpr stub.type
    let b ← Meta.ppExpr sol.type
    let same ← Meta.isDefEq stub.type sol.type
    throwError "type mismatch for QuantumParallelRepetition.exactReverseAliceLowQuestionPotential_eq_alignedPrefix (defeq: {same})\nstatement: {a}\nsolution:  {b}"
