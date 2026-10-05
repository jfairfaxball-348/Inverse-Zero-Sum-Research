# S026 CAND-05 doubling-fibre geometry brief

Date prepared: 2026-10-05.
Status: READY.

## Purpose

Run exactly one bounded mathematical unit, D25-01, after S025 fixed the
canonical kernel buckets.

For a CAND-05 extremal write `S=product_{q!=0}x_q^(2k_q+1)` and
`K=product_{q!=0}(2x_q)^{k_q}`. S025 gives three positive-weight kernel
values `h_1,h_2,h_3`, each of total weight `m-1`, with the exact rank-two
basis/unit relation.

## D25-01

Analyze only the group-theoretic geometry of the doubling map
`2:G_m -> H=2G_m` relative to `pi:G_m->Q=G_m/H`.

Compute `pi(G_m[2])` exactly, split by the parity of `m`, and deduce the
exact restriction on two quotient classes `q,q'` whose positive-weight lifts
can lie in the same kernel bucket (`2x_q=2x_q'`). Record the size and shape
of the quotient-class set met by a fixed doubling fibre.

At the first failed implication, stop and record the defect.

## Anti-churn boundary

Do **not** in S026 assign all seven quotient fibres to the three buckets, solve
the weights `k_q` or odd multiplicities `r_q`, classify the seven lifts
`x_q`, use quotient automorphisms as a normalization, or claim the full
CAND-05 classification. Preserve the S025 zero-weight boundary.

No CAND-02 architecture is authorized.

Close under repository protocol, run `scripts/check_authority.py` and
warranted checks, commit safely to `main`, verify remote SHA/tree, and
automatically give the close report.
