# S050 validation

Date: 2026-10-07.
Unit: D49-01.

## Pinned proof-head validation

Proof head:
`f3898da7b09b2052e5ba9f9a711b2014acb62b33`.

GitHub Actions workflow: **Lean formalization**, run **158**
(run ID `37603305788`), job `112732663424`.

The clean pinned runner passed:

- Lean toolchain installation at Lean 4.19.0;
- pinned mathlib resolution;
- `lake build`;
- the formal-source forbidden-placeholder scan;
- `python scripts/check_authority.py`.

The workflow therefore kernel-checks
`s8RepresentativeSwapInput : S8RepresentativeSwapInput` on the exact pinned
project. No `sorry`, `admit`, unchecked axiom/constant, `native_decide`,
hidden oracle or opaque catalogue is introduced by S050.

## Focused checks

The proof explicitly checks the two delicate semantic boundaries of D49-01:

1. each original-position residual of cardinality 16 is reindexed through an
   injective order embedding before invoking `Length16SumZeroInput`;
2. representative comparison is performed for two valid functions differing
   in exactly one block, while the certificate retains the universal
   arbitrary-representative short-free hypothesis.

The first three clean-run attempts exposed only local Lean scalar-normalization
syntax in the constant-two-block contradiction. Those elaboration issues were
corrected without changing the mathematical proof. Run 158 is fully green.

A terminal authority-synchronization run is required after the closeout records
and S051 prompt are committed.
