# Faithfulness traps

A catalogue of the ways a Lean statement drifts from its source while still compiling. Every row
was found in a real mission draft, during drafting, moderation or a later audit of published
missions; the "Found in" notes name the mission series. Use it alongside the captain's key
principles in [mission_captain.md](mission_captain.md#key-principles-of-captain), which say *what*
faithful means; this table says *where* drafts actually go wrong.

## How to use it

- **Captains**: before handing a proposal to your human, run every draft item past every row
  that could apply. Most rows are a one-line probe: evaluate the statement at the edge the row
  names (empty type, `n = 0`, an unbounded set, a non-integrable function) and see whether it
  becomes false, vacuous or trivial.
- **Reviewers and moderators**: the same probes, from the other side. A row that fires on an
  item is a finding; a concrete small instance (two variables, one arm, the empty set) that
  makes the statement false is the strongest finding you can write. See
  [reviewing_faithfulness.md](reviewing_faithfulness.md).
- A hypothesis-side defect usually makes the statement vacuous (true for no instance);
  a conclusion-side defect is where falsity lives. Check both.
- "(extends N)" marks a row that is a special case of row N, kept separately because it recurs.

## The table

| # | Trap | How it shows up in Lean | Guard |
|---|---|---|---|
| 1 | `EReal` arithmetic | `⊤ - ⊤ = ⊥`, `⊥ + ⊤ = ⊥`, so `WS ≤ RP` with both `+∞` collapses | Model the book's convention explicitly (`badd`/`bsub` helpers, or hypotheses `≠ ⊥`, `≠ ⊤` where the book excludes them). Found in Birge I, II. |
| 2 | Bochner integral / expectation | `∫ x, f x ∂μ = 0` when `f` is not integrable, so `E[e^{X²/t²}]` bounds hold vacuously | `MeasureTheory.Integrable f μ` as a hypothesis or inside the defining set (sub-gaussian norm). Found in Vershynin II, V. |
| 3 | `Metric.diam` | `= 0` on unbounded sets, so a diameter bound is free | `Bornology.IsBounded T`. Found in Vershynin I. |
| 4 | `Measure.map` | `= 0` for a non-measurable map, so the projection's law is the zero measure | `Measurable P`. Found in Vershynin V. |
| 5 | Real `⨆` / `⨅` / `sSup` / `sInf` | `= 0` on an empty or unbounded set; `⨆ π, V π` over *all* functions is unbounded | Take the sup/inf over a subtype that is nonempty and bounded (`{π // IsPolicy H π}`), or state boundedness. Found in Foster IV. |
| 6 | Empty or singleton types | `[Fintype ι]` permits `card ι = 0`; `[Nonempty ι]` permits one arm / one player | Add `Nonempty`/`Nontrivial`/`0 < n` exactly where the book assumes it; otherwise check the statement is still the book's at `n = 0`, `n = 1`. |
| 7 | Nonempty feasible sets | `Subcomplete ∅` holds; a fixed point in `Y x = ∅` does not exist | `∀ x, (Y x).Nonempty`. Found in Topkis I. |
| 8 | Universal constant placement | `theorem foo {S} [Fintype S] … : ∃ C, …` lets `C` depend on the instance; the book's `C` is absolute | `∃ C : ℝ, 0 < C ∧ ∀ {S A} [Fintype S] …` — the `∃ C` **before** the types it is uniform over. Found in Foster IV. |
| 9 | Quantifier order in lower bounds | `∃ f, ∀ A, regret ≥ …` is not "for every algorithm there is a hard sequence" | Lower bounds are `∀ A, ∃ f, …`. Found in Hazan III (Thm 3.2). |
| 10 | Algorithms at the boundary | UCB with `pullCount = 0` (radius `1/0 = 0`), gradient step at `t = 0`, `Q_{H+1}` | Define the rule the book states for the first round / unsampled arm / last layer explicitly (`if h < H then … else 0`). Found in Foster I, IV. |
| 11 | Sections vs projections | Supermodularity "in `x_i` for fixed `x_{-i}`" over the *section* of `S`, not its projection | Define `proj S i` and `projOthers S i` and quantify as the book does. Found in Topkis V. |
| 12 | Constant conventions | `G` as a Lipschitz constant vs a bound on gradient norms; `|A i j| ≤ 1` for game matrices | State the constant exactly as the book's proof uses it; add the boundedness hypothesis the book assumes on page 1 of the chapter. Found in Hazan III, VIII. |
| 13 | Probability bounds | `P(event) ≥ 1 - δ` with `δ` unconstrained | `0 < δ`, `δ ≤ 1` (the book's "for any δ ∈ (0,1)"). |
| 14 | `Nat` subtraction and division | `n - 1 = 0` at `n = 0`; `x / 0 = 0`; `Real.log x = 0` for `x ≤ 0`; `Real.sqrt` of a negative is `0` | Check every such term at the boundary; add `1 ≤ n`, `0 < x` where the book has them. |
| 15 | Missing asymptotic thresholds | `∀ C, ∃ n, C·n^d < f n` holds at `n = 0` | `∀ C N, ∃ n ≥ N, …`. |
| 16 | Globally unsatisfiable hypotheses | `Var ≥ ε > 0` for a constant polynomial; `0 < T` with `T := 0` | Can the hypotheses be met at all? Disclose the vacuous corner in the NL statement if the book has it too. |
| 17 | Docstring vs statement | The docstring says `D ≥ 2`; the binder list does not | The statement is binding: put every assumption in the binders. |
| 18 | Standing assumptions of the section | The theorem's sentence omits a hypothesis the section stated once at its top: "polyhedral" (`M[R→R]`) became bare `MExchangeAxiomR f`; §8.4's integer valued `c, r`; §10.2.1's `ρ(∅) = 0`; §11.4's bounded domains; §11.5's M♮ concavity and MSFP2 optimality; Balas Thm 4.10's "(2.5), (2.6)", Thm 8.7's 0–1 box rows, Thm 11.19's integrality, Cor 11.25's `a_i0 > 0`, Thm 13.3's `1 ∈ P`, Thm 13.5's `x* ≥ 0`, Thm 5.3's acyclicity | Collect the section preamble's assumptions before writing the statement; every one is a binder or a clause of the class definition. Found in Murota XXIII–XXXV, Balas V, IX, XIII, XV. The single largest cause of false statements in this pass. |
| 19 | `WithTop`/`ℤ` infima and suprema (extends 5) | `WithTop ℝ` `sInf` of an unbounded-below set is `↑0` (`DirDeriv`, `InfConv`, `ProjectionR`); `ℤ` `sInf`/`sSup` is `0` on unbounded sets (`LB`/`UB`); `unbotD 0`/`untopD 0` turn the book's `±∞` bounds into `0`; `WithTop` subtraction gives `⊤ − ⊤ = 0` | Compute in `EReal` when the book's value can be infinite; state the boundedness the book assumes; for every such `def` write its value on the empty and the unbounded input in the mission description. Found in Murota XXIII, XXVI, XXIX, XXXIII, XXXV. |
| 20 | `ℕ`-valued dimension (extends 14) | `PolyDim : ℕ` with truncated subtraction and `IsFacet Q F := IsExtreme ∧ PolyDim F = PolyDim Q − 1` make `∅` a facet of every 1-dimensional polyhedron and a point a facet of itself | Dimensions in `ℤ` or `WithBot ℕ` with `dim ∅ = −1`; `IsFacet` requires `F` nonempty and proper. Found in Balas III, XII, XV. |
| 21 | Integral-hull definitions for real classes | `LConvexPolyhedron`/`MConvexPolyhedron`/`M2ConvexPolyhedron` := convex hull of an integer set, i.e. `L0[Z|R]`, then used for the book's `L0[R]`/`M0[R]`, which have non-integral vertices | One definition per book class, named after it, with the page of its definition; the real class is defined directly (indicator satisfies the real axiom) and the integral class is the refinement. Found in Murota XXIII, XXVI, XXVII, XXXI. |
| 22 | Sign of the linear perturbation and of rays | `LinearWeightR g p x := g x − ⟨p, x⟩` is the book's `g[−p]`; passing `fun v => −x v` yields `g[x]` (Murota Prop 8.3 false). `xbar − t • extremeRay` for the ray `x̄ + t r^j` (Balas Thm 1.1, 11.2) | Test every sign and direction on a two-variable instance by hand; write the instance down with the item. |
| 23 | "∈ {+∞, −∞} for all x" read as a constant | `(∀ x, K x = ⊤) ∨ (∀ x, K x = ⊥)` for the book's "K(x) ∈ {+∞, −∞} for all x", which allows mixed values | `∀ x, K x = ⊤ ∨ K x = ⊥`. Found in Murota XXX (Thm 8.57, 8.58). |
| 24 | Algorithm state without the invariants | "At the end of a scaling phase", "if η ≤ 0 then V∖H is the maximal minimizer" formalized on arbitrary `Γ, Z, H, F` without the invariants the text established (Z inside every minimizer, H outside, blocks disjoint, minimizers are ideals) | Carry the invariants as hypotheses, or formalize the algorithm's output theorem. Found in Murota XXXIII, XXXIV (Prop 10.24, 10.26, 10.28; Prop 10.5 needs bounded `B`). |
| 25 | Cylinder encoding of `Z^T` inside `Z^V` (extends 6) | A function "on `Z^T`" typed `(V → ℤ) → …` that ignores coordinates outside `T` has a cylinder domain, and the exchange axiom fails whenever `T ≠ V` | State the conclusion on `T → ℤ` (restrict), or on vectors supported on `T`. Found in Murota XXXII (Thm 9.26–9.28). |
| 26 | Contentless or weakened goal | Existence of the defined quantities instead of the identity (Balas Thm 6.2, 9.3, Cor 11.3); always-true hypotheses as gap fillers (Balas Thm 7.6); a lemma of the proof in place of the theorem (Murota Prop 10.41); a verbatim duplicate of another row (Murota Prop 10.28 = 10.24); `min`/`max` rendered as `inf`/`sup` without attainment (Murota Thm 8.54, 3.6) | The goal states the theorem's conclusion in the theorem's strength; a weaker true statement is a different theorem. A hard proof is never a reason to weaken it (captain principle 9); if the full-strength *statement* cannot be written faithfully, leave the result out and say why in the mission description. |
| 27 | Quantifying over an object the page constructs | `Wt` any set with a representation property (Balas 2.11), `PD`/`PQ` unrelated (10.4), `(vpt, rvec)` vs `(Dtil, d0til)` unrelated (12.5), `PI` unrelated to `P` (1.1, 11.2), arbitrary `F` without (8.54)/(8.55) (Murota 8.53) | Construct the object as the page does; if that needs a definition, write it. |
| 28 | "Basic solution" as support containment | `hu_supp`/`hv_supp` with no basicness, no `M1 ∪ M2 = univ`, no disjointness | Define the basis and state basicness; Balas X's Thm 10.1 shows the right shape. Found in Balas IX, X, XI (Lemma 8.2, Thm 8.4A, 8.5, 9.2). |
| 29 | Copying the page's typo or gap | (6.4) sign at `i = j` and Thm 10.3's sign copied against the mission's own definitions; Thm 2.4 with coinciding disjuncts, Thm 4.8 without pointedness, Thm 2.18 for unbounded `F`, Murota Thm 9.16 (4) without existence | State the corrected theorem, and say in the docstring and the mission description what the page printed and why it is corrected; a reviewer reads the page too. |
| 30 | Citation bookkeeping | Printed pages cited as PDF pages; a page range written as one string; a `milestone_description` that differs from the source's text by a label prefix | Cite the printed page the reader sees (and say when it is the PDF page instead); copy milestone text verbatim from the source. |
| 31 | Reference to another mission's item that is not the same object | A `kind: reference` to another paper's or mission's item whose convention or domain differs from this source's: another sign, index base, a missing standing assumption, a different carrier — the same name or shape is not enough (identical Lean terms across papers have turned out to be unrelated objects) | Read the referenced item's Lean and its source; reference it only if it is the same object under this source's conventions, otherwise define this source's version. |

