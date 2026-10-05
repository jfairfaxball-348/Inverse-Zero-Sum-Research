# S025 — canonical kernel buckets for CAND-05

Date: 2026-10-05.
Classification: **PROGRAMME-PROVED BOUNDED MATHEMATICS / NOT INDEPENDENTLY REVIEWED.**

Let `S` be a CAND-05 extremal over
`G=G_m=C_2+C_{2m}+C_{2m}`, `m>=2`. Put
`H=2G\simeq C_m^2`, `Q=G/H\simeq C_2^3`.

By S024 there is one support value `x_q` above each nonzero `q in Q`, with
`r_q=2k_q+1` positive odd multiplicity, and every maximal pairing induces the
same kernel

`K=product_{q!=0}(2x_q)^{k_q}`

over `H`. S023/S024 give `|K|=3m-3=eta(H)-1` and no short zero-sum
subsequence.

## Source specialization: Girard--Schmid 2019 Theorem 2.4

Theorem 2.4 states that for `C_m+C_{mn}`, `m>=2`, `n>=1`, every
`eta-1` extremal has the form

`b_1^(m-1) b_2^(sm-1) (-a b_1+b_2)^((n+1-s)m-1)`,

where `s in [1,n]`, `gcd(a,m)=1`, `{b_1,b_2}` generates the group,
`ord(b_2)=mn`, and the source's stated alternative is satisfied.

For `H=C_m^2` the source parameter is `n=1`, hence necessarily `s=1`.
Moreover a two-element generating set of `C_m^2` with `ord(b_2)=m` is a
basis: the induced homomorphism `C_m^2 -> H` is a surjection between groups
of the same finite order, hence an isomorphism. Thus the source alternative
is automatic here and

`K=b_1^(m-1) b_2^(m-1) (b_2-a b_1)^(m-1)`

for an ordered basis `(b_1,b_2)` and a unit `a mod m`.

Set `h_1=b_1`, `h_2=b_2`, `h_3=b_2-a b_1`.

## S025-P1 — exact rank-two support restrictions

The three values are distinct. Clearly `h_1!=h_2`. If `h_3=h_2`, then
`a h_1=0`, impossible because `a` is a unit and `ord(h_1)=m`. If
`h_3=h_1`, then `h_2=(a+1)h_1`, contradicting that `(h_1,h_2)` is a basis.

Each `h_i` has order `m`. In addition, every pair is a basis:
`(h_1,h_3)` differs from `(h_1,h_2)` by a determinant-one change of basis,
and `(h_2,h_3)` has determinant `a`, a unit modulo `m`.

Hence `supp(K)={h_1,h_2,h_3}` and each support value occurs exactly `m-1`
times.

## S025-P2 — canonical bucket equations

For any `h in H`, its multiplicity in the canonical kernel is

`v_h(K)=sum_{q!=0, 2x_q=h} k_q`.

Comparing with S025-P1 yields exactly three positive-weight buckets:

`sum_{q:2x_q=h_1} k_q=m-1`,
`sum_{q:2x_q=h_2} k_q=m-1`,
`sum_{q:2x_q=h_3} k_q=m-1`.

All other kernel values have total weight zero. The total weight is
`sum_q k_q=((6m+1)-7)/2=3m-3`, agreeing with the three bucket totals.

The word `weighted` is essential. If `k_q=0` (equivalently `r_q=1`), then
the fibre contributes no term to `K`; Theorem 2.4 does not imply that its
doubled lift `2x_q` equals one of the `h_i`. S025 therefore does not assign
all seven quotient fibres to buckets.

## D24-01 verdict

**SUCCEEDS in full.** The positive-weight doubled lifts occupy exactly three
kernel values, each with total multiplicity `m-1`, with the exact source
restriction that after ordering `(h_1,h_2)` is a basis and
`h_3=h_2-a h_1` for a unit `a mod m`. In particular every pair among the
three values is a basis.

No quotient-fibre assignment, odd-multiplicity-vector classification, seven-lift
classification, quotient automorphism normalization, CAND-02 architecture,
computation or formalisation was used.
