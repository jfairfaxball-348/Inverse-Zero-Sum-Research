# S044 validation

Date: 2026-10-06.

## Formal checks

The pinned environment remains Lean 4.19.0 plus mathlib commit
`c44e0c8ee63ca166450922a373c7409c5d26b00b`.

On the synchronized staging tree at commit
`36370629eb0da51e7b89e1cd3e8444f2fb39b905`, GitHub Actions run
`37477654305` completed successfully:

- pinned dependency resolution: success;
- mathlib cache: success;
- `lake build`: success;
- forbidden-placeholder search: success;
- `scripts/check_authority.py`: success.

This run kernel-checks `s039PackingInput_of_thresholds` and all supporting
lemmas on the synchronized authority tree. The validation-record commit itself
is workflow-covered and must pass the same suite before `main` is advanced.

## Trust boundary

The green build proves only the declarations that have proof terms.
`ThreeTerm19Input`, `Eta17Input`, `S039PackingInput`, and
`FrozenClassification` remain propositions without closed proof terms.
No `sorry`, `admit`, unchecked axiom/constant placeholder, opaque orbit
catalogue or hidden external oracle is used.

Lean verification does not establish literature novelty, previous openness,
significance, Palomar status or journal review.
