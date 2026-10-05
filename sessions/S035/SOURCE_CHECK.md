# S035 source check

Date: 2026-10-05.

S035 performs the focused source recheck required by D34-01. It does not run a new openness/novelty search and does not alter CAND-05's **SOURCE-DEFINED / CURRENT STATUS UNKNOWN** classification.

## Rechecked controlling source

ZS-56: Benjamin Girard and Wolfgang A. Schmid, *Direct zero-sum problems for certain groups of rank three*, Journal of Number Theory 197 (2019), 297--316, arXiv:1806.07636v2.

The primary PDF was rechecked at the exact theorem statements:

1. Theorem 2.1 defines `D_k(G)` as the threshold for `k` nonempty disjoint zero-sum subsequences and states the eventual progression `D_k(G)=D_0(G)+k exp(G)` for `k>=k_D(G)`.
2. Theorem 3.4 states that for `G=C_2+C_{2m}+C_{2mn}`, the case `n=1` has `D_0(G)=2m+1` and `k_D(G)=2`.

For `G_m=C_2+C_{2m}+C_{2m}`, `exp(G_m)=2m`, hence the two statements give exactly

`D_2(G_m)=6m+1`.

No Property D hypothesis is involved in this equal-factor multiwise statement.

## Boundary

ZS-56 supplies existence of a pair of disjoint zero sums at the threshold. It does not state the S035 block partition, an inverse classification, or an exclusion of simultaneous positivity. The whole-block factorisation in S035 is a programme deduction from the committed S028/S031--S034 aggregate identities.

No source non-hit is treated as openness evidence. No independent review, formal verification, novelty certification, submission or publication claim is added.
