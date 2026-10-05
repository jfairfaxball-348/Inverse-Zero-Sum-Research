# S028 CAND-05 even-bucket member brief

Date prepared: 2026-10-05.
Status: READY.

## Purpose

Run exactly one bounded mathematical unit, D27-01, after S027 fixed the three
even-modulus positive-weight bucket cosets.

Restrict D27-01 to **even `m`**. Let `ell` denote the unique nonzero
element of `L=pi(G_m[2])`. Each positive-weight kernel bucket corresponds
to one nonzero two-class coset `C={q,q+ell}`.

## D27-01

Fix one such coset and its corresponding kernel value `h`. Determine only
whether both quotient classes in `C` can carry positive kernel weight in an
actual CAND-05 extremal.

Use only already-authoritative CAND-05 structure, including:
- S024 monochromatic quotient fibres;
- S025 canonical positive-weight kernel buckets;
- S026 equal-double/two-torsion compatibility; and
- S027 exact coset placement.

If simultaneous positivity is excluded, prove the exclusion. If the available
structure does not exclude it, identify the first exact compatibility gap and
stop.

## Anti-churn boundary

Do **not** solve the global `k_q` or `r_q` vector, classify all seven
lifts, analyze odd `m`, normalize quotient automorphisms, or claim the full
CAND-05 classification.

No CAND-02 architecture is authorized.

Close under repository protocol, run `scripts/check_authority.py` and
warranted checks, commit safely to `main`, verify remote SHA/tree, and
automatically give the close report.
