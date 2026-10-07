# S049 validation

Date: 2026-10-07.

## Environment

The formal environment remains Lean 4.19.0 with mathlib commit
`c44e0c8ee63ca166450922a373c7409c5d26b00b`.

## Proof-head runs

An initial structural checkpoint reached the intended geometry but left three
tiny `Fin 3` modular arithmetic goals after simplification. GitHub Actions run
`37589557440` therefore failed in `lake build` only at those terminal finite
equalities. The proof architecture was unchanged; the terminal reductions were
replaced by ordinary decidable finite arithmetic.

The complete S049 proof at staging commit
`376f480cc01fba6e5613d195b21cd58e0f98c686` then passed GitHub Actions run
`37597885256` with:

- pinned dependency resolution: **success**;
- mathlib cache: **success**;
- `lake build`: **success**;
- forbidden Lean placeholder scan: **success**;
- `scripts/check_authority.py`: **success**.

This run kernel-checks `length16SumZeroInput : Length16SumZeroInput` together
with the structural maximal-cap sum proof.

## Trust boundary

The outgoing formal source contains no `sorry`, `admit`, unchecked
axiom/constant placeholder, `native_decide`, hidden oracle or opaque orbit
catalogue. The S048 global normalized completion experiment remains absent.

The synchronized authority/closeout tree must pass the same workflow before
`main` is advanced. The exact terminal run and outgoing remote SHA/tree are
verified after publication and reported in the user-facing close report.
