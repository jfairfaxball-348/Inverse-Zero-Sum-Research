# S043 CAND-03 Lean formalization brief

Status: READY.

S042 closed D41-01 with: **no exact/equivalent/stronger-implying prior art
located in the documented deep audit.** This is a documented non-hit, not a
novelty/open-problem proof.

Frozen theorem:

> A length-24 sequence `S` over `C_3^3\{0}` contains no two innerly
> non-zero-sum-joint short zero-sum subsequences, short meaning length at most
> 3, iff `S=U^3` for a squarefree short-free length-8 sequence `U`.

## D42-01

Run one exact Lean formalization unit. Inspect first for existing Lean
infrastructure; if absent, create a minimal pinned Lean 4 + mathlib project and
record exact versions/build commands.

Formalize the sequence/position semantics: `C_3^3`, nonzero alphabet,
finite positional subsequences, zero-sum, short, short-free, squarefree, the
two distinct short zero-sum witnesses with nonzero-sum intersection, and
triple repetition `U^3`.

Mirror the verified S039--S041 proof architecture. Do not strengthen/weaken the
theorem, reopen S038/proof search, or replace it with an opaque brute-force
orbit catalogue. Transparent finite supporting lemmas/decidable checks are
allowed only when they verify the same frozen statement.

A completed proof may contain no `sorry`, `admit`, unsound `axiom`
placeholder or hidden external oracle assumption. If full formalization cannot
be completed, preserve compiling progress and close PARTIAL with the exact
formal blocker; do not proceed to Palomar.

Create a semantic-correspondence note mapping the repository theorem and major
S040/S041 steps to Lean definitions/lemmas. Record the trust boundary: Lean
verifies the encoded theorem under the pinned toolchain; it does not establish
literature novelty, significance or journal review.

Run `lake build`, warranted focused checks, forbidden-placeholder search and
`scripts/check_authority.py`.

If the exact theorem fully formalizes and the pinned build passes, promote only
the Palomar requirements/registration stage. Do not register early, draft the
paper, post arXiv, submit to E-JC or contact reviewers/authors. Xue Li
Stage-1 remains CAND-02-specific.
