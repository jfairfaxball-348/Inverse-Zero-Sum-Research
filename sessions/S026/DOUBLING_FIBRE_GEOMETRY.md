# S026 — doubling-fibre geometry for CAND-05

Date: 2026-10-05.
Classification: **PROGRAMME-PROVED BOUNDED MATHEMATICS / NOT INDEPENDENTLY REVIEWED.**

Let
`G=G_m=C_2 e_0 + C_{2m}e_1 + C_{2m}e_2`, `m>=2`,
`H=2G`, `Q=G/H`, and `pi:G->Q`.
Write `bar e_i=pi(e_i)`. Then `Q=<bar e_0,bar e_1,bar e_2> ~= C_2^3`.

S024/S025 give one support value `x_q` over each nonzero `q in Q`,
weights `k_q=(r_q-1)/2`, and three positive-weight kernel buckets
`h_1,h_2,h_3`. D25-01 asks only what the doubling map itself permits.

## S026-P1 — exact image of the two-torsion

The kernel of doubling is

`G[2]=<e_0,m e_1,m e_2> ~= C_2^3`.

Modulo `H=2G`, the coefficient of either `e_1` or `e_2` is remembered
only modulo two. Therefore

`pi(m e_1)=(m mod 2) bar e_1`,
`pi(m e_2)=(m mod 2) bar e_2`,
and `pi(e_0)=bar e_0`.

Hence:

- if `m` is odd, `pi(G[2])=Q`;
- if `m` is even, `pi(G[2])=L:=<bar e_0>`, the distinguished subgroup
  of order two coming from the direct `C_2` factor.

Equivalently, `G[2] cap H` is trivial for odd `m`, while for even `m`
it is `<m e_1,m e_2>` of order four.

## S026-P2 — quotient geometry of a fixed doubling fibre

Fix `h in H` and choose one `x in G` with `2x=h`. The full doubling
fibre is the coset

`D_h={y in G:2y=h}=x+G[2]`.

Applying `pi` gives

`pi(D_h)=pi(x)+pi(G[2])`.

Moreover each quotient class in this image has exactly
`|G[2] cap H|` points of `D_h` above it.

Thus:

- if `m` is odd, `pi(D_h)=Q` and the eight points of `D_h` occupy the
  eight quotient classes exactly once each;
- if `m` is even, `pi(D_h)` is one coset of `L`, hence exactly two
  quotient classes, and four points of `D_h` lie over each class.

This is the exact size and shape requested in D25-01.

## S026-P3 — exact same-bucket collision criterion

For quotient classes `q,q' in Q`, there exist lifts `x,y` with
`pi(x)=q`, `pi(y)=q'` and `2x=2y` if and only if

`q-q' in pi(G[2])`.

The forward implication follows from `x-y in G[2]`. Conversely, if
`q'-q=pi(t)` for some `t in G[2]`, then for any lift `x` of `q`,
the element `y=x+t` lifts `q'` and has `2y=2x`.

Apply this only to actual **positive-weight** support lifts. If
`k_q,k_q'>0` and `2x_q=2x_q'=h_i`, then:

- for odd `m`, the quotient geometry imposes no restriction on the pair
  `q,q'`, because `pi(G[2])=Q`;
- for even `m`, both classes lie in one coset of `L`. If they are
  distinct, then `q-q'` is the unique nonzero element `bar e_0` of
  `L`.

Equivalently, for even `m` the positive-weight quotient support of a single
kernel bucket is contained in a two-class `L`-coset. It therefore has at
most two quotient classes; if it has two, they are the two members of that
coset. If the fibre coset is `L` itself, only its nonzero member can belong
to the seven nonzero quotient fibres of S.

No statement here says which `L`-coset any of the three S025 values
`h_i` has, or which allowed quotient classes actually occur with positive
weight.

## Zero-weight boundary

If `k_q=0` (equivalently `r_q=1`), then `x_q` contributes no term to
the canonical kernel. D25-01 therefore does not place `q` in any of the
three positive-weight buckets and does not constrain `2x_q` to equal an
`h_i`.

The fixed-fibre geometry is a statement about possible/equal doubles, not a
global assignment of all seven support fibres.

## D25-01 verdict

**SUCCEEDS in full.** The parity split, fixed-fibre quotient occupancy and
same-bucket collision criterion are exact for every `m>=2`.

No global bucket assignment, weight or multiplicity-vector solution, seven-lift
classification, quotient automorphism normalization, CAND-02 architecture,
external source theorem, computation or formalisation was used.
