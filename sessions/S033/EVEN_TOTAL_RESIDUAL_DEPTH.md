# S033 — even full-residual completion depth

Date: 2026-10-05.
Classification: **PROGRAMME-PROVED BOUNDED MATHEMATICS / EXACT FULL-RESIDUAL
NONEXCLUSION / NOT INDEPENDENTLY REVIEWED.**

Assume even `m>=4`. Keep the S025--S032 notation
`H=2G_m ~= C_m^2`, the canonical kernel

`K=h_1^(m-1) h_2^(m-1) h_3^(m-1)`,

where `(h_1,h_2)` is a basis and
`h_3=h_2-a h_1` for a unit `a mod m`. Continue to condition on
the same hypothetical simultaneous-positive nonzero `L`-coset and the same
canonical seven-term residual `R`. Let

`r=sigma(R) in H`.

By S032, if `w_F` is the lift-sum of any Fano residual line, then

`w_F in E(K) cap (r-E(K))`,

and with `s=h_1+h_2+h_3` the remaining total translation is
`zeta=r-s`.

## S033-P1 — exact extremality depth window for the full residual

Since `|K|=eta(H)-1=3m-3`, the sequence `Kr` over `H` has
length `eta(H)`. Hence it has a nonempty zero-sum subsequence of length at
most `m`. The kernel `K` itself is ordinary-`eta` extremal, so this
zero sum must contain the added term `r`. Therefore some `V|K` satisfies

`sigma(V)=-r`,  `|V|<=m-1`,

and consequently

`lambda(r)<=m-1`.  (1)

If instead `lambda(r)<=m-4`, choose such a completion `V`. Every term
of `V` lifts to its disjoint two-term paired block in the original CAND-05
sequence, while the seven terms of `R` are the residual terms outside all
those pairs. Their union is a zero-sum subsequence of length

`2|V|+7 <= 2(m-4)+7 = 2m-1`,

contrary to CAND-05 extremality. Hence

`lambda(r)>=m-3`.  (2)

Combining (1) and (2),

`m-3 <= lambda(r) <= m-1`.  (3)

This is the exact extremality window supplied by the full residual.

## S033-P2 — the deep layer from the S029 distance formula

For arbitrary `w=xi h_1+nu h_2 in H`, put

`P=[-xi]_m`,  `Q=[-nu]_m`.

S029 proves

`lambda(w)=Q+min_{0<=gamma<=Q}[P+a gamma]_m`.  (4)

Let

`A_Q(P)={ [P+a gamma]_m : 0<=gamma<=Q }`.

Because `a` is a unit modulo `m`, its `Q+1` entries are distinct.
Equation (4) gives the exact deep-layer test

`lambda(w)>=m-3`

if and only if

`min A_Q(P) >= m-3-Q`.  (5)

For `Q>=m-3`, the right side of (5) is nonpositive, so (5) is automatic.
Thus the three complete affine `h_1)-lines

`h_2+<h_1>`,  `2h_2+<h_1>`,  `3h_2+<h_1>`  (6)

all lie in `D_{>=m-3}(K)`; these correspond respectively to
`Q=m-1,m-2,m-3`.

For `0<=Q<=m-4`, condition (5) is equivalently the exact containment

`A_Q(P) subset {m-3-Q,m-2-Q,...,m-1}`.  (7)

Therefore

`D_{>=m-3}(K)`

is exactly the union of the three full lines in (6) and the points satisfying
(7) for `0<=Q<=m-4`. This is as far as D32-01 needs the deep-layer
classification; no additional residual subset is introduced.

One top slice will be used below. When `Q=m-2`, the progression has
`m-1` entries. Extending it by `gamma=m-1` gives all residues, so
the unique omitted residue is

`[P+a(m-1)]_m=[P-a]_m`.  (8)

Hence on the `Q=m-2` line the depth is `m-1` exactly when
`P=a`; otherwise residue zero occurs and the depth is exactly `m-2`.

## S033-P3 — intersection with S032 and the surviving exact defect

S032's total-translation condition says an actual residual total must lie in

`T:=cap_F (w_F+E(K))`.  (9)

The common-torsion compatibility family already constructed in S031--S032 has

`zeta=0`,  `r=s=h_1+h_2+h_3`,  (10)

and S032 proves that this `s` lies in `T`.

Now

`s=h_1+h_2+(h_2-a h_1)=(1-a)h_1+2h_2`.

Thus for `w=s`,

`P=a-1`,  `Q=m-2`.  (11)

By (8), the omitted residue is

`P-a=-1=m-1 mod m`.

Therefore the `m-1` progression values are exactly

`{0,1,...,m-2}`,

their minimum is zero, and (4) gives the exact value

`lambda(s)=m-2`.  (12)

In particular `s in D_{>=m-3}(K)`. Combining this with S032's
`s in T` gives

`s in D_{>=m-3}(K) cap cap_F(w_F+E(K))`.  (13)

So the full-residual depth test does **not** exclude the S032 common-torsion
family. Its exact surviving signature is

`zeta=0`,  `lambda(r)=m-2`.  (14)

The total residual is one completion level shallower than the depth-`m-1`
shell occupied by every Fano line and every complementary four-set, but this
is fully allowed by the full-residual extremality budget.

## D32-01 verdict and route boundary

**SUCCEEDS as an exact full-residual deep-layer analysis, but does not exclude
the fixed simultaneous-positive target.**

The S030--S033 hierarchy has now tested all seven Fano triples, all seven
complementary four-sets, and the full seven-term residual sum. The same
common-torsion compatibility family survives every authorized test, with the
full-residual defect sharpened to (14).

Per the S033 anti-churn boundary, no additional proper residual-subset variant
is promoted. Any successor must use a genuinely different source of rigidity
rather than another completion-shell membership test.

S033 does not solve the global `k_q/r_q` vector, classify the seven lifts,
treat odd `m`, normalize quotient automorphisms, construct an extremal, or
claim the full CAND-05 classification.
