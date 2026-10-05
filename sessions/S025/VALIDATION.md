# S025 validation

Date: 2026-10-05.

## Mathematical validation

1. S024 supplies a canonical ordinary-`eta` extremal kernel over `C_m^2` of
   length `3m-3=eta(C_m^2)-1`.
2. Girard--Schmid 2019 Theorem 2.4 was inspected in the primary arXiv v2 PDF
   and specialized with its parameter `n=1`; therefore `s=1` and all three
   source multiplicities are `m-1`.
3. A two-element generating set of `C_m^2` is a basis, so the specialized
   support is `h_1,h_2,h_2-a h_1` with `a` a unit modulo `m`.
4. Unit arithmetic and the basis condition make the three values distinct;
   determinant checks show every pair is a basis.
5. Comparing multiplicities in `K=product(2x_q)^{k_q}` gives the three bucket
   equations. The arithmetic identity `sum k_q=3m-3` matches their total.
6. The zero-weight case was checked separately: `k_q=0` contributes no kernel
   term and receives no bucket-membership conclusion from Theorem 2.4.

No mathematical computation or formalisation was required.

## Repository validation

The repository's exact `scripts/check_authority.py` was run locally in a
reconstructed proposed-state harness containing the S025 completed checkpoint,
the S026 ready brief/prompt, all checkpoint paths, and an exact copy of the
repository Apache-2.0 licence blob.

Checker output:

`PASS: authority state, session uniqueness, independent gate semantics, blocker/prompt consistency, 0 local links, and original licence`

The reconstructed harness does not reproduce the complete Markdown history,
so its zero local-link count is not represented as a full-tree link audit.
The proposed GitHub tree is separately checked for required authority paths,
S025 checkpoint files, S026 prompt/brief consistency and changed relative
links before `main` is advanced.

Final remote `main` SHA/tree and changed-path presence are verified after the
fast-forward checkpoint.
