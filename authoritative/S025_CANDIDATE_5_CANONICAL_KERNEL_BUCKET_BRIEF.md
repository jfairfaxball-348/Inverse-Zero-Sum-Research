# S025 CAND-05 canonical-kernel bucket brief

Date prepared: 2026-10-05.
Status: READY.

## Purpose

Run exactly one bounded mathematical unit, D24-01, after S024 proved
pairing-choice rigidity.

Let `S` be a CAND-05 extremal. By S024 there are unique support values
`x_q` above the seven nonzero `q in Q=C_2^3`, with
`r_q=2k_q+1` positive odd multiplicities. The canonical maximal-pairing
kernel is

`K=product_{q!=0}(2x_q)^{k_q}`

over `H=C_m^2`, with `|K|=3m-3=eta(H)-1`, and is an ordinary-`eta`
extremal.

## D24-01

Recheck Girard--Schmid 2019 Theorem 2.4 and specialize its exact normal form to
`H=C_m^2` (the theorem's parameter `n=1`).

Prove or refute only the following canonical-kernel consequence:

> The nonempty part of the multiset `{2x_q}`, weighted by `k_q`, splits
> into exactly three kernel values, each occurring with total multiplicity
> `m-1`, in the rank-two inverse-`eta` normal form.

Write the result as explicit bucket equations
`sum_{q:2x_q=h_i} k_q=m-1` for the three kernel support values `h_i`,
with the exact source restrictions on the triple `h_i`.

At the first failed source specialization or implication, stop and record the
defect.

## Anti-churn boundary

Do **not** in S025 classify which quotient fibres lie in which bucket, solve
for the odd multiplicities `r_q`, classify the seven lifts `x_q`, normalize
the quotient by automorphisms, or claim the full CAND-05 classification.

No CAND-02 architecture is authorized.

Close under repository protocol, run `scripts/check_authority.py` and
warranted checks, commit safely to `main`, verify remote SHA/tree, and
automatically give the close report.
