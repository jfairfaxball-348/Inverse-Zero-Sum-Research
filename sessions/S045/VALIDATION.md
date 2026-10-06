# S045 validation

Date: 2026-10-06.

## Formal checks

The pinned environment remains Lean 4.19.0 plus mathlib commit
`c44e0c8ee63ca166450922a373c7409c5d26b00b`.

On staging commit `af82e8a315c6dde2941c1e355d7d4d63c75cc465`, GitHub Actions run
`37503363600` completed successfully:

- pinned dependency resolution: success;
- mathlib cache: success;
- `lake build`: success;
- forbidden-placeholder search: success;
- `scripts/check_authority.py`: success.

This run kernel-checks `threeTerm19Input : ThreeTerm19Input` and its finite
geometry support. The synchronized authority/closeout commit containing this
record is required to pass the same workflow before `main` is advanced; its
actual run and outgoing SHA/tree are verified after publication and reported
in the user-facing close report.

## Trust boundary

The formal source contains no `sorry`, `admit`, unchecked axiom/constant
placeholder or `native_decide`. The bounded finite checks use ordinary
`decide` and are combined with explicit Lean proofs of the cap-counting and
positional multiplicity steps.

`Eta17Input`, `S039PackingInput`, the later S040 proof-spine interfaces and
`FrozenClassification` remain unproved closed propositions unless separately
discharged by existing proof terms. Lean verification does not establish
literature novelty, prior openness, Palomar status or journal review.
