# Reviewing a proposal for faithfulness

How to check that a mission proposal's Lean statements say what the source says, whether you are
the captain doing a last pass before handing off, a human confirming items on the review page, or
a moderator. It complements the blind read-back ([mission_auditor.md](mission_auditor.md)): the
read-back tells you what the Lean asserts, this guide is how you compare that against the page.

## The verdict criterion

One question decides it: **does each Lean statement faithfully express the result it claims to
state?** No less and no more than the source, with all of its conditions.

- A **disprovable formalization** (a dropped hypothesis that makes the statement false, a
  degenerate reading the quantifiers permit) is the paradigm unfaithful statement.
- A statement **weaker or narrower than the source** is unfaithful even when its description
  admits it: a worse constant, a finite or discrete special case, a dropped clause or direction, a
  hypothesis the source neither states nor implies. A weaker true statement is a different
  theorem. Disclosure does not make it faithful.
- A statement **more general than the source** is acceptable when it specializes to the source's
  complete claim on every instance the source allows (check that it does), and the description
  says it is a generalization.
- Everything else is a **courtesy note, not a verdict driver**: wrong page numbers, prose slips in
  `natural_language_statement`, a description promising items the proposal lacks, thin wrappers
  around Mathlib. Note them and move on.

## Procedure

1. **Definitions first.** Read every definition the items use and check it against the source's
   own definition: conventions, normalisations, index base, `ℤ` vs `ℝ`, which class it names, and
   what it returns on degenerate input. An unfaithful definition makes every statement that uses
   it unfaithful, however careful those statements are.
2. **Compare against the page, verbatim.** For each item, open the source at the cited result and
   compare hypotheses, quantifier order, strict vs non-strict inequalities and the exact
   normalisation (a factor of 4, a missing ½, 0/1 vs ±1). Then read the standing assumptions of
   the section and the chapter: a source states conditions at the top of a section as often as
   inside the theorem. When the description claims an equivalence ("the constant absorbs into the
   exponent"), check the argument.
3. **Probe for disprovability**, on every item, with [faithfulness_traps.md](faithfulness_traps.md):
   - empty and singleton types: `[Nonempty ι]` permits one arm; `Fintype` permits an empty one;
   - zero values: `n = 0`, `d = 0`, empty sums;
   - asymptotics without a threshold: `∀ C, ∃ n, …` is met at `n = 0`;
   - Lean's total functions: `x / 0 = 0`, `Nat` subtraction, `sInf ∅ = 0`, `Real.sSup` of an
     unbounded set, `⊤ - ⊤` in `EReal`, a non-integrable integral;
   - standing assumptions of the section missing from the binders;
   - sign and direction conventions: test them on a two-variable instance by hand;
   - objects the source constructs that the statement quantifies over instead; a lemma of the
     proof in place of the theorem; `inf` for `min` without attainment;
   - can the hypotheses be met at all, and is the conclusion more than vacuous?
   - the docstring vs the binders: the statement is what binds.

   A small concrete instance that satisfies every hypothesis and falsifies the conclusion is the
   strongest finding there is; with one in hand the statement is unfaithful, full stop.
4. **Do not re-prove.** Solvers and the kernel own truth. The one thing that looks like proving
   and is not: hunting a counterexample at an edge the hypotheses permit.

## Mistakes reviewers actually made

1. **Using citation or structural defects as the verdict.** Wrong page numbers and dead links are
   courtesy notes. Faithfulness of the Lean statement is the criterion.
2. **Drifting toward re-proving.** Enumerations and spot-checked computations burn the time that
   belongs to reading the remaining pages.
3. **Judging against the draft's own prose.** The `natural_language_statement` and the docstring
   describe what the drafter meant; the page says what the theorem is. A published goal once had
   prose that accurately described an unsatisfiable hypothesis.
4. **Trusting the drafter's own checklist.** A table of traps the drafter says they checked is a
   claim; re-check the rows yourself.
5. **Checking the theorem sentence and skipping the section preamble.** One textbook series lost
   thirteen missions to this alone.

## Calibration

- *Shannon source coding*: the goal permitted `|ι| = 1`, where entropy is 0 and the empty
  codeword is optimal; refuted with Mathlib's own lemmas. A statement failure, fixed with
  `Nontrivial ι`.
- *Aaronson–Ambainis*: the real work was verifying the influence normalisation verbatim against
  the paper. A false side remark in the natural-language statement, contradicted by the paper's
  own Lemma 20, was a courtesy note.
- *Murota, Prop 8.3*: `LinearWeightR g p x := g x − ⟨p, x⟩` is the book's `g[−p]`, and the sign
  flip made the proposition false on `g = |p₁ − p₂|`. A definition-layer failure: fix the
  definition once and every statement using it follows.
- *Murota, Thm 8.45*: `InfConv` in `WithTop ℝ` takes `sInf` of an unbounded-below set, which is
  `↑0`, and `g₁ = p₁, g₂ = −p₁ + p₂` made the "theorem" state `0 = ⊥`. Compute in `EReal`, or
  add the boundedness the book assumes.
