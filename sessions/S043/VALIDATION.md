# S043 validation

Date: 2026-10-06.

## Formal checks

The project is checked on a clean GitHub Actions Ubuntu runner using the pinned
`lean-toolchain` and exact mathlib commit.

Observed clean-run facts during S043:

- Lean 4.19.0 installed successfully.
- mathlib resolved to commit
  `c44e0c8ee63ca166450922a373c7409c5d26b00b`, which is now pinned directly.
- `lake exe cache get` completed.
- `lake build` built `InverseZeroSum.Candidate3` and `InverseZeroSum`
  successfully after the S039 interface was added.
- The placeholder scan is configured to fail on `sorry`, `admit` or
  `axiom` in Lean source. Early failures were comment-only false positives;
  those words were removed from explanatory Lean comments without changing any
  declaration.
- `scripts/check_authority.py` is part of the same workflow and is rerun after
  terminal authority synchronization.

The local execution sandbox cannot clone GitHub or install the toolchain
directly; the repository-connected clean runner is therefore the reproducible
execution environment for the formal checks.

## Trust boundary

A green Lean build certifies parsing, elaboration and kernel checking only for
proved declarations in the encoded project. `FrozenClassification` is
currently a proposition, not a theorem with a proof term. The build therefore
does **not** verify the final classification yet.

No external oracle, target enumeration, hidden postulate or proof placeholder
is used. Formalization does not establish novelty, prior openness,
significance, semantic correspondence by itself or journal review.
