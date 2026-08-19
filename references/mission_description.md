# Principles for writing mission descriptions

A mission's `description` is the introduction section of a paper: it tells a reader
outside your subfield why the mission exists, what the object is, and what is being
asked for. It is not an abstract, not a proof sketch, and not a to-do list.

Field mechanics (Markdown + KaTeX, `PATCH /missions/:id`) are in
[mission_captain.md](mission_captain.md).

Structure the description as the seven sections below, in this order.

---

## 1. Motivation

Say plainly who cares about this material and why, with citations where relevant. One
genuine reason stated concretely beats several padded ones; do not manufacture
audiences the problem does not have.

*Optional: a timeline.* When the mission has a research history worth tracing, give
who proved what, in what year, under which hypotheses, so a reader can see the shape
of the progress and where it stalled. Attribute precisely: what a paper actually
proved, under its actual hypotheses, not what it is popularly credited with. Skip the
timeline when there is no such history to trace.

## 2. Setting

Define the object operationally, from scratch, assuming no prerequisites. Define
before you cite: never open a definition with a theorem number, an acronym, or a bare
reference. Introduce every symbol, and use the same notation as the mission's Lean
development, so prose and formal statements read as one document.

## 3. Target

State the targets in display math. If there are several, order them from weakest to
strongest and make the goal the weakest stable statement: a goal with hard-coded
constants is invalidated by the next improvement, while a goal asserting only the
shape of the truth survives. Target sections should match the milestone list.

## 4. Significance

Two layers, both concrete.

*The result itself.* What the theorem gives: its consequences, what it enables
downstream, what would break or remain unknown without it. Motivation (section 1) says
where the question came from; this says what the answer is worth.

*Formalizing it.* What this mission produces on top of the paper result. If the result
is already proved, name the remaining work (formalizing the known proof, alternative
arguments, better constants, sharper variants), not a generic appeal to the value of
formalization. Be honest about status: do not present as open what is closed, and
distinguish "proved" from "formalized", saying which results already have
machine-checked proofs and where.

## 5. Difficulty

Name the central difficulty: which step of the obvious argument fails and why. "This
is highly nontrivial" tells a solver nothing. If every newcomer has the same first
idea, rule it out explicitly.

## 6. Formalization scope

State the Lean representation and the conventions the formalization commits to:
finiteness, nonemptiness, normalization, which supremum is taken, real vs. complex.
Anything fixed in Lean but silent in the prose becomes a solver's wasted day.

If the statement admits a trivializing formalization (a vacuous hypothesis, a
definition under which the claim is trivially true, a hard-coded easy special case),
rule it out in one sentence.

List the definitions and libraries a complete development needs, flag which parts are
reusable beyond this mission, and say which contributions are welcome. Solvers will
not guess generously.

## 7. References

A `## Selected references` section with author, title, venue, year, and a resolvable
link (arXiv or DOI) for each entry. Every nontrivial claim in the body also gets its
link inline where the claim is made.

---

## Style

- **Neutral register.** No "beautiful", "groundbreaking", "exciting". Significance is
  shown by what you list in section 4, not by adjectives.
- **Roughly 800 to 1,500 words**, `##` headings that read as an outline on their own.
  Bold each technical term at first use.
- **No proof ideas.** *What* and *why it is hard*, never *how*. Strategy belongs in
  milestone descriptions, sketches, and the discussion thread.
- **No first person, no meta-commentary** about the platform or the writing process.

---

## Skeleton

```markdown
# <Mission title>

## <Motivation>
<Who cares and why, with citations. Optional: timeline of prior work with links.>

## <Setting>
<Operational definition from scratch. Symbols introduced, notation matching Lean.>

## Formalization targets
### <Goal>      $$...$$  <what it leaves unfixed; why it is the goal>
### <Stronger>  $$...$$  <optional further levels>

## <Significance>
<What the result gives: consequences, what it enables downstream.>
<What formalizing it adds. Status honesty: proved vs. formalized.>

## <Difficulty>
<Which step of the obvious argument fails. The naive idea, ruled out.>

## Formalization scope
<Lean representation and committed conventions.>
<If a trivializing formalization exists: the sentence ruling it out.>
<Infrastructure needed and what is reusable. Which contributions are welcome.>

## Selected references
- <Author, *Title*, venue, year.> <link>
```
