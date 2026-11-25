module
public import Mathlib.Analysis.Convex.Cone.Extension
public import Mathlib.Analysis.Complex.Exponential
public import Mathlib.Analysis.InnerProductSpace.Adjoint
public import Mathlib.Analysis.InnerProductSpace.Dual
public import Mathlib.Analysis.InnerProductSpace.Trace
public import Mathlib.Analysis.LocallyConvex.HahnBanach
public import Mathlib.Analysis.Normed.Module.Span
public import Mathlib.Analysis.Normed.Module.FiniteDimension
public import Mathlib.LinearAlgebra.Basis.Defs
public import Mathlib.LinearAlgebra.Determinant
public import Mathlib.LinearAlgebra.Matrix.Determinant.Basic
public import Mathlib.LinearAlgebra.Matrix.ToLin
set_option autoImplicit true
@[expose] public section
@[expose] public section
open scoped InnerProductSpace ComplexConjugate
section SeminormHahnBanach
open RCLike
variable {𝕜 E : Type*} [RCLike 𝕜] [NormedAddCommGroup E] [InnerProductSpace 𝕜 E]
variable [FiniteDimensional 𝕜 E]
end SeminormHahnBanach
section TraceDuality
open ContinuousLinearMap
variable {𝕜 E : Type*} [RCLike 𝕜] [NormedAddCommGroup E] [InnerProductSpace 𝕜 E]
variable [FiniteDimensional 𝕜 E] [CompleteSpace E]
end TraceDuality
