/-
Smoke test for the local Lean environment.

`lake build Solutions.SmokeTest` should finish in seconds. If it instead
starts compiling hundreds of `Mathlib.*` modules, the Mathlib cache is
missing or mismatched — interrupt it, rerun `lake exe cache get`, and retry.
-/
import Mathlib.Data.Real.Basic
import Mathlib.Tactic.Linarith

example (a b : ℝ) : a ^ 2 + b ^ 2 ≥ 2 * a * b := by
  nlinarith [sq_nonneg (a - b)]
