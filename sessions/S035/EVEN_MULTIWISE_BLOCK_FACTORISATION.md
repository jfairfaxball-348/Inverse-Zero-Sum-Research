# S035 — even multiwise block factorisation

Date: 2026-10-05.
Classification: **BOUNDED MATHEMATICS / EXACT BLOCK-LEVEL NONEXCLUSION / ROUTE NO-GO / NOT INDEPENDENTLY REVIEWED.**

Assume even `m>=4` and the unresolved hypothesis that one nonzero `L`-coset is simultaneous-positive. Retain the S034 decomposition

`S=B_1B_2B_3u`,  `|B_i|=2m`,  `|u|=1`,
`sigma(B_i)=tau_i`,
`sigma(S)=u+tau_1+tau_2+tau_3=zeta`.

Index the fixed simultaneous-positive coset as `B_1`. This is only a relabelling of the three already-indexed blocks; no quotient automorphism is normalized. By S028, its two support values differ by a nonzero `t in G_m[2]` with `pi(t)=ell`. Hence

`tau_1=t`,  `2t=0`.  (1)

## S035-P1 — source-forced pair and the surviving whole-block type

Girard--Schmid 2019 Theorem 2.1 states that for `k>=k_D(G)`,

`D_k(G)=D_0(G)+k exp(G)`.

Theorem 3.4 gives, in the equal-factor case
`G_m=C_2+C_{2m}+C_{2m}`,

`D_0(G_m)=2m+1`,  `k_D(G_m)=2`.

Since `exp(G_m)=2m`,

`D_2(G_m)=2m+1+2(2m)=6m+1`.  (2)

Thus an actual CAND-05 extremal of length `6m+1` has two disjoint nonempty zero-sum subsequences. Because it has no nonempty zero sum of length at most `2m`, each such factor has length at least `2m+1`.

Now test the already-authoritative common-torsion compatibility family from S031--S033. It takes

`u=t`,  `tau_1=tau_2=tau_3=t`.  (3)

Then `zeta=4t=0`, so a `D_2`-pair in an actual realization would have to partition `S`. But (3) supplies an exact partition at the aggregate block level:

`A_0=B_1u`,  `B_0=B_2B_3`.  (4)

Indeed,

`sigma(A_0)=sigma(B_1)+u=t+t=0`,  (5)

and

`sigma(B_0)=sigma(B_2)+sigma(B_3)=t+t=0`.  (6)

The factors are disjoint and cover `S`, with

`|A_0|=2m+1`,  `|B_0|=4m`.  (7)

Both lengths are strictly greater than `2m`. Therefore the exact multiwise requirement is compatible with the same common-torsion aggregate assignment that survived S030--S033. At this level it does not force a forbidden short zero sum.

The same statement can be written with any block index in the common-torsion family; (4) uses `B_1` only to keep the fixed simultaneous-positive coset explicit.

## Exact interpretation

Equations (4)--(7) are **not** a construction of an actual CAND-05 extremal. S031--S033 established the common-torsion data only as a compatibility assignment for necessary constraints. S035 proves that the new aggregate `D_2` constraint also fails to eliminate that assignment.

Any attempt to decide whether the internal terms of `A_0` or `B_0` necessarily contain a shorter zero sum would require additional information not supplied by the D34-01 block data. Pursuing individual invisible lifts, the global split vector, or a new completion-depth test would violate the session boundary.

Because the brief requires stopping at the first exact outcome, the `zeta!=0` branch is not analyzed.

## D34-01 verdict and route boundary

D34-01 **does not exclude** the fixed simultaneous-positive target. It leaves the exact surviving whole-block factorisation type

`S=(B_1u)(B_2B_3)`

with zero-sum factor lengths `(2m+1,4m)` in the common-torsion compatibility family.

This falsifies the S034 multiwise mechanism as an exclusion route at the aggregate block level. D34-01 is stopped. The S030--S033 residual-shell family remains stopped as well.

S035 does not solve the global `k_q/r_q` vector, classify zero-weight lifts or all seven lifts, reopen a residual subset/depth variant, treat odd `m`, normalize quotient automorphisms, construct a simultaneous-positive extremal, or claim the full CAND-05 classification.

No successor proof dependency is promoted. B-010 is activated for an owner strategy disposition.
