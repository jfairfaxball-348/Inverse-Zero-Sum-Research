# S046 validation

Date: 2026-10-06.

## Proof-head clean run

The pinned environment remains Lean 4.19.0 plus mathlib commit
`c44e0c8ee63ca166450922a373c7409c5d26b00b`.

On staging commit `ee6584efbf4273ce03cefb6326792fde862e86ea`, GitHub Actions run
`37510620424` completed successfully:

- pinned dependency resolution: success;
- mathlib cache: success;
- `lake build`: success;
- forbidden-placeholder search: success;
- `scripts/check_authority.py`: success.

This run kernel-checks `eta17Input : Eta17Input` together with its reuse of the S045 finite-geometry support.

## Trust boundary

The formal source contains no `sorry`, `admit`, unchecked axiom/constant placeholder or `native_decide`. The only new finite reduction is an ordinary bounded `decide` fact about doubling in `F_3^3`; the cap bound itself was already proved transparently in S045.

`S039PackingInput`, the later S040 proof-spine interfaces and `FrozenClassification` remain unproved closed propositions unless separately discharged. Lean verification does not establish literature novelty, Palomar status or journal review.

The synchronized terminal authority/closeout tree must pass the same workflow before `main` is advanced; that terminal run and outgoing SHA/tree are verified after publication and reported in the user-facing close report.
