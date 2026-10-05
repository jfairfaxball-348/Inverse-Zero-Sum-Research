# S033 CAND-05 even total-residual depth brief

Date prepared: 2026-10-05.
Status: READY.

## Purpose

Run exactly one bounded mathematical unit, D32-01, after S032 proves that all
seven Fano lines and all seven complementary four-term residual subsets land in
the exact S029 shell, but their line/complement coupling still does not exclude
the fixed simultaneous-positive coset.

Restrict to **even `m>=4`**. Continue to condition on the same hypothetical
simultaneous-positive nonzero `L`-coset and the same canonical seven-term
residual.

## D32-01

Let `r` be the lift-sum of the full canonical seven-term residual and
`lambda` the S029 completion-depth function for the canonical kernel.

Analyze **only the full seven-term residual sum**. First prove the exact
extremality depth window: `lambda(r)<=m-1` by the `eta(H)` threshold,
while `lambda(r)<=m-4` would lift with the seven residual terms to a
forbidden zero sum of length at most `2m-1`; hence
`m-3<=lambda(r)<=m-1`.

Then use only the existing S029 distance formula to classify the deep layer

`D_{>=m-3}(K)={w in H:lambda(w)>=m-3}`

far enough to intersect it with the S032 condition

`r in cap_F(w_F+E(K))`.

Test whether this constrains the exact translation
`zeta=r-(h_1+h_2+h_3)` enough to exclude the surviving S032
common-torsion case `zeta=0`. If it does, prove the exclusion. If it does
not, record the exact surviving depth/translation defect and stop.

## Anti-churn boundary

Do **not** inspect any additional proper residual subset family, solve the
global `k_q` or `r_q` vector, classify all seven lifts, treat odd `m`,
normalize quotient automorphisms, or claim existence/full CAND-05
classification.

If the full-residual depth test also leaves the common-torsion family intact,
do not automatically promote another residual-subset variant; the closeout
must reassess whether a genuinely different mechanism is needed.

Close under repository protocol, run `scripts/check_authority.py` and
warranted checks, commit safely to `main`, verify remote SHA/tree as far as
the available repository interface permits, and automatically give the close
report.
