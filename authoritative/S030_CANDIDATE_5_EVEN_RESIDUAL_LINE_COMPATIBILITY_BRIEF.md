# S030 CAND-05 even residual-line compatibility brief

Date prepared: 2026-10-05.
Status: READY.

## Purpose

Run exactly one bounded mathematical unit, D29-01, after S029 classified the
canonical-kernel depth-`m-1` completion shell exactly and showed that the
single S028 target remains compatible at `u=t`.

Restrict to **even `m>=4`**. Continue to condition on the same hypothetical
simultaneous-positive nonzero `L`-coset and the same unique zero-weight
`ell`-class lift `u=x_ell`.

## D29-01

Let the three nonzero `L`-cosets be
`C_i={q_i,q_i+ell}`. In the canonical seven-term quotient residual, each
triple

`x_{q_i} x_{q_i+ell} u`

is quotient-zero.

First recheck, without importing any new global classification, that the S028
lifting argument places the sum of **each** of these three residual triples in
the S029 shell `E(K)`: a completion using at most `m-2` kernel terms would
lift to a forbidden zero sum of length at most `2m-1`, while the
`eta(H)` threshold supplies a completion using at most `m-1` terms.

Then use only:

- the three simultaneous shell memberships;
- the S025 basis/unit normal form;
- the S026--S029 even-modulus bucket/coset geometry; and
- the fact that all three triples share the same lift `u=x_ell`,

to test whether the common `u` creates a cross-coset incompatibility.

If these three constraints exclude the original simultaneous-positive fixed
coset, prove the exclusion. If they remain compatible, record the exact
cross-coset lift defect and stop.

## Anti-churn boundary

Do **not** solve the global `k_q` or `r_q` vector, classify all seven
lifts, analyze the other four Fano residual lines, treat odd `m`, normalize
quotient automorphisms, or claim existence/full CAND-05 classification.

No CAND-02 architecture is authorized.

Close under repository protocol, run `scripts/check_authority.py` and
warranted checks, commit safely to `main`, verify remote SHA/tree, and
automatically give the close report.
