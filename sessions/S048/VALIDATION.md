# S048 validation

Date: 2026-10-07.

## Environment and trust boundary

The formal environment remains Lean 4.19.0 with mathlib commit `c44e0c8ee63ca166450922a373c7409c5d26b00b`.

D47-01 introduces no `native_decide` oracle, unchecked postulate, hidden external oracle or opaque orbit catalogue in the outgoing Lean source. The preserved support lemmas are ordinary theorem proofs plus the already-authorized small finite facts inherited from the S045/S046 infrastructure.

## Failed proof-head experiments

Several staging commits explored a basis-normalized maximal-cap certificate. The decisive failure mode was reproducibility/runtime rather than a mathematical counterexample: GitHub Actions runs including `37526517439` and `37534402620` were terminated with exit 143 while `lake build` was still evaluating the global normalized completion theorem. Those expensive declarations are not present in the outgoing checkpoint.

## Outgoing-check requirement

The final synchronized S048 PARTIAL tree must pass `lake build`, the formal-source placeholder scan and `scripts/check_authority.py` before `main` is advanced. The exact terminal run and outgoing remote SHA/tree are verified after publication and reported in the user-facing close report.

## Recorded clean staging checks

Code-only checkpoint commit `367f3c44181cfd140208fd67b680022cdcb20993` passed GitHub Actions run `37583445410` after the expensive experimental proof was removed.

The synchronized authority/closeout staging commit `100bfcc38b224de729c362ce8048285ce230850a` then passed GitHub Actions run `37583918808` with:

- pinned Lean/mathlib dependency resolution: **success**;
- `lake build`: **success**;
- forbidden Lean placeholder scan: **success**;
- `scripts/check_authority.py`: **success**.

This validation-only commit must itself pass the same workflow before `main` is advanced.
