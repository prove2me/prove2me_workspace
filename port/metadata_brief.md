# Phase 6 brief: node metadata for the Prove2me mission "Parallel repetition for quantum games"

You are writing human-facing metadata for theorems being published to the Prove2me platform.
Each theorem is lifted verbatim from OpenAI's Lean development `openai/ten-proofs`,
`QuantumParallelRepetition.lean`, which proves that the entangled value of a finite two-player
one-round game decays exponentially under parallel repetition.

Background you can rely on:

- A `Game X Y A B` has a question distribution `questionWeight : X -> Y -> R` (nonnegative,
  summing to 1) and a Boolean `predicate : X -> Y -> A -> B -> Bool` (the verifier).
- A `Strategy G` is a pair of finite-dimensional local systems, a shared bipartite state, and
  POVM families for Alice and Bob indexed by their questions.
- `outcomeProbability` is the Born rule `Re tr(rho * (A^x_a kron B^y_b))`.
- `winProbability S = sum_{x,y} mu(x,y) * sum_{a,b} [V(x,y,a,b)] * Pr[a,b | x,y]`.
- `entangledValue G` (written `omega^*(G)`) is the supremum of `winProbability` over strategies.
- `G.repeat n` is the n-fold parallel repetition; `repeatedEntangledValue G n = omega^*(G^n)`.

## What to produce

For every node in your input file, produce exactly three fields.

1. `theorem_title` -- a short human-facing display label, max 200 characters. Sentence case,
   no trailing period. It is NOT the Lean identifier and need not be unique. Inline KaTeX with
   `$...$` is allowed. Example: "Trace of a product of positive semidefinite matrices is
   nonnegative".

2. `natural_language_statement` -- the important one. Precisely and accurately state what the
   theorem asserts, written as prose from an academic paper or lecture note. Markdown with
   KaTeX: `$...$` inline, `$$...$$` display. Requirements:
   - State the actual mathematical content, including the hypotheses. A reader who does not
     read Lean must learn exactly what is being claimed.
   - Do NOT paste or transliterate the Lean statement, and do not use Lean identifiers as if
     they were mathematical notation. Introduce real notation instead.
   - Where the lemma is a technical step in a larger argument, say in one sentence what role it
     plays, but never at the expense of stating the claim itself.
   - Typically 2-6 sentences. Be accurate rather than long. Do not invent content that is not
     in the statement: if you are unsure what a construction means, describe it in terms of the
     statement's own structure rather than guessing at its purpose.

3. `explanation` -- how the proof goes, for the submission record. A short proof sketch in the
   same Markdown/KaTeX style, 2-6 sentences. Mention the key Mathlib lemmas or tactics only
   where they carry mathematical content. If `imports_theorems` is non-empty, say that the
   proof is a reduction and name what it reduces to.

## Input and output

Your input JSON is a list of objects with `name`, `upstream_lines`, `docstring` (often empty),
`statement` (the Lean statement), `proof` (the Lean proof, possibly truncated), and
`imports_theorems` (names of the platform theorems this proof imports).

Write your output to the given output path as a JSON list of objects with exactly the keys
`name`, `theorem_title`, `natural_language_statement`, `explanation`. `name` must be copied
verbatim from the input. Cover EVERY node in your input file, in the same order. Valid JSON,
UTF-8. Escape nothing beyond what JSON requires -- write `\\omega` in the JSON source so the
rendered text reads `\omega`.

Do not modify any other file, do not run builds, and do not call any network or upload tools.
