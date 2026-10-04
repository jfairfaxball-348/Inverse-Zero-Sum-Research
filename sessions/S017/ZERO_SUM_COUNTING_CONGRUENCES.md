# S017 — zero-sum counting congruences at the threshold deletion star

Date: 2026-10-04. Classification: internal programme mathematics derived from the published Gao--Geroldinger 2007 p-group counting theorem and the already-proved S016 deletion-star normal form. No independent review, formalisation or novelty certification.

## 1. Notation and S016 input

Put

`G=C_2+C_n+C_n`, `n=2m`, `m>=2`.

Assume the hypothetical S016 near-full nontrivial support core and write its threshold sequence as

`U=MO`, `|U|=4n+1`, `|M|=n-delta`, `delta in {0,1,2}`.

For a sequence `T`, let `N_r(T)` be the number of positional zero-sum subsequences of length `r`. For `tau in M`, set

`W_tau=U tau^{-1}`.

S016-P1 gives `|W_tau|=4n` and `N_n(W_tau)=0` for every `tau in M`. It also gives the exact common-core normal form for `N_n(U)`:

- `delta=0`: `N_n(U)=1`;
- `delta=1`: `N_n(U)` is the size of the single equal-valued outside reservoir;
- `delta=2`: `N_n(U)` is the number of edges in the fixed-sum residual graph.

No other S016 exchange equation is used below.

## 2. Published p-group recurrence specialized exactly

Assume first that `n` is a power of two. Then `G` is a finite abelian 2-group with

`exp(G)=n`, `d*(G)=1+(n-1)+(n-1)=2n-1`.

Gao--Geroldinger 2007 Theorem 1.1(3), through its displayed proof recurrence, applies with source parameter `kappa=2`. Here

`w=ceil((1+d*(G))/n)=2`

and both `4n` and `4n+1` are strictly greater than

`2n+d*(G)=4n-1`.

Take recurrence index `r=4` and residue `j=0`. Since `m>=2`, a power-of-two `n=2m` is divisible by four. Hence every sign `(-1)^(in)` is positive and, modulo four, the coefficients for `U` are

`C(n+1,n)=n+1=1`,
`C(2n+1,2n)=2n+1=1`,
`C(3n+1,3n)=3n+1=1`,
`C(4n+1,4n)=4n+1=1`.

For `W_tau`, all corresponding binomial coefficients are exactly one. Therefore:

### S017-P1 — fixed-length modulo-4 threshold/deletion congruences

**PROGRAMME RESULT; PROVED FROM ZS-46.** If `n` is a power of two, then

`1 + N_n(U) + N_{2n}(U) + N_{3n}(U) + N_{4n}(U) = 0 (mod 4)`.  (S017.1)

For every `tau in M`,

`1 + N_{2n}(W_tau) + N_{3n}(W_tau) + N_{4n}(W_tau) = 0 (mod 4)`.  (S017.2)

The missing `N_n(W_tau)` term is zero by S016 extremality, not by the counting theorem.

## 3. A new pointwise deletion-star incidence dependency

For `r in {n,2n,3n,4n}` define

`A_r(tau) = #{ Z subset U : |Z|=r, sigma(Z)=0, tau in Z }`.

Deleting `tau` gives

`N_r(W_tau)=N_r(U)-A_r(tau)`

whenever `r<=4n`. Every `n`-zero sum of `U` contains all of `M`, so

`A_n(tau)=N_n(U)`.

Subtract (S017.2) from (S017.1).

### S017-P2 — pointwise and summed star congruence

**PROGRAMME COROLLARY; PROVED.** For every `tau in M`,

`N_n(U)+A_{2n}(tau)+A_{3n}(tau)+A_{4n}(tau)=0 (mod 4)`.  (S017.3)

A `4n`-term zero sum of `U` is obtained by omitting one token whose value equals `sigma(U)`. Thus

`N_{4n}(U)=v_{sigma(U)}(U)`

and, writing `t=v(tau)`,

`A_{4n}(tau)=v_{sigma(U)}(U)-1_{t=sigma(U)}`.

Hence the pointwise dependency can be written

`N_n(U)+A_{2n}(tau)+A_{3n}(tau)+v_{sigma(U)}(U)-1_{t=sigma(U)}=0 (mod 4)`.  (S017.4)

In particular, subtracting (S017.4) for two core tokens `tau,tau'` gives

`(A_{2n}+A_{3n})(tau)-(A_{2n}+A_{3n})(tau')`
`= 1_{v(tau)=sigma(U)}-1_{v(tau')=sigma(U)} (mod 4)`.  (S017.5)

So the higher-length incidence is congruence-uniform across all common-core tokens except for the exact one-unit jump forced by the value class `sigma(U)`.

Define the aggregate common-core incidence

`I_r = sum_{Z: |Z|=r, sigma(Z)=0} |pos(Z) intersect M| = sum_{tau in M} A_r(tau)`.

Summing (S017.3) over `M` yields

`|M| N_n(U) + I_{2n}+I_{3n}+I_{4n}=0 (mod 4)`.

Since `|M|=n-delta` and `n=0 (mod 4)`,

`I_{2n}+I_{3n}+I_{4n} = delta N_n(U) (mod 4)`.  (S017.6)

Thus the three S016 near-full strata impose respectively:

- `delta=0`: `I_{2n}+I_{3n}+I_{4n}=0 (mod 4)`;
- `delta=1`: the same incidence sum is congruent to the outside-reservoir size `N_n(U)` modulo four;
- `delta=2`: the incidence sum is congruent to twice the fixed-sum residual-graph edge count modulo four.

This is a new dependency between the exact S016 `n`-zero-sum count and genuinely different higher-length zero-sum incidence data. It does not restate the shifted-residual/cross-boundary exchange system.

## 4. Total zero-sum incidence modulo eight

Gao--Geroldinger Theorem 1.1(2), under the same `kappa=2` length hypothesis and `p=2`, gives for the total number `N_0^all(T)` of zero-sum subsequences of all lengths (including the empty subsequence)

`N_0^all(U)=0 (mod 8)`, `N_0^all(W_tau)=0 (mod 8)`.

Subtracting gives:

### S017-P3 — all-length token-incidence divisibility

**PROGRAMME COROLLARY; PROVED.** For every `tau in M`, the number of all zero-sum subsequences of `U` containing `tau` is divisible by eight. Since all `n`-zero sums contain `tau`,

`sum_{r != n} A_r(tau) = -N_n(U) (mod 8)`.  (S017.7)

This is secondary to the fixed-length relation because the other lengths are presently uncontrolled, but it is independent p-adic information supplied by the same source theorem.

## 5. Why this does not yet exclude a near-full stratum

Equations (S017.3)--(S017.7) constrain `N_n(U)` only together with higher-length incidence counts. S016 does not control `A_{2n}`, `A_{3n}` or the all-length remainder, and no audited theorem expresses them solely in terms of the `n`-zero-sum family. Therefore none of `delta=0,1,2` is excluded in S017.

The result is nevertheless not generic threshold existence: it is a genuine modulo-4/modulo-8 dependency that holds simultaneously for every member of the deletion star on the infinite 2-primary modulus class.

## 6. Mixed-primary boundary and exact missing theorem

If `n` is not a power of two, the ambient group is mixed-primary and ZS-46 does not apply. Projection to a Sylow p-subgroup counts subsequences whose sum is zero only after projection and therefore aggregates all complementary-primary sums; it is not `N_n^G`.

### S017-P4 — applicability boundary

**PROGRAMME BOUNDARY.** The verified counting route currently reaches exactly the 2-primary subfamily `m` a power of two. An all-`m` continuation needs either:

1. a mixed-primary analogue of the Gao--Geroldinger fixed-length recurrence that remains sensitive to the full-group prescribed sum at lengths `n,2n,3n,4n`; or
2. a new theorem/identity controlling the higher-length incidences in (S017.3) on the 2-primary threshold deletion star strongly enough to eliminate a near-full stratum.

No checked source supplies either statement. This is a minimal theorem dependency, not an openness or novelty claim.

## 7. Outcome

D16-01 is **PARTIALLY RESOLVED BY A NEW COUNTING DEPENDENCY**. There is no all-`m` exclusion and no near-full counterexample. The route has genuinely changed the dependency structure on an infinite modulus class, so one bounded successor on the new higher-length incidence terms is warranted. No computation was used.