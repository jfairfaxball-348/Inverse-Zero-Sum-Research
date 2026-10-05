# S024 — pairing-choice rigidity for CAND-05

Date: 2026-10-05.
Classification: **PROGRAMME-PROVED BOUNDED MATHEMATICS / NOT INDEPENDENTLY REVIEWED.**

Let `S` be a CAND-05 extremal over
`G=G_m=C_2+C_{2m}+C_{2m}`, `m>=2`. Put
`H=2G\simeq C_m^2`, `Q=G/H\simeq C_2^3`, and let
`pi:G->Q`.

S023 proved that no term lies in `H`; every nonzero quotient fibre has
positive odd multiplicity; every maximal same-fibre pairing has exactly
`3m-3` pairs and leaves one residual term in each nonzero fibre; and every
induced pair-sum sequence is a length-`3m-3=eta(H)-1`
ordinary-`eta` extremal over `H`.

## Source tool: Girard--Schmid 2019 Lemma 4.2

The lemma applies to `H\simeq C_u\oplus C_{uv}` for integers
`u,v>=1`. If two sequences over `H` have length `eta(H)-1`, contain no
short zero-sum subsequence, and have sequence gcd of length at least
`eta(H)-2`, then the two sequences are equal.

For the present kernel, take `u=m` and `v=1`, so
`H\simeq C_m^2`. S023 supplies the length and short-zero-sum-free
hypotheses for every maximal pairing. No Property D hypothesis is involved.

## S024-P1 — every nonzero quotient fibre is monochromatic

Fix a nonzero quotient class `q in Q`, and let its multiplicity in `S`
be `r_q`. S023 gives that `r_q` is positive and odd.

If `r_q=1`, the fibre is trivially monochromatic. Assume `r_q>=3`.
Choose any three distinct occurrences `a,b,c` from this fibre. Pair the
remaining `r_q-3` occurrences inside the fibre in an arbitrary fixed way.
In every other quotient fibre, also fix a pairing of all but one occurrence.

Now form two maximal pairings:

- `M_1` uses the pair `ab` and leaves `c` as the residual occurrence
  in the `q`-fibre;
- `M_2` uses the pair `ac` and leaves `b` as the residual occurrence
  in the `q`-fibre.

All other pairs are identical in `M_1` and `M_2`. Since
`pi(a)=pi(b)=pi(c)=q` and `2q=0`, both `a+b` and `a+c` lie in
`H`.

Let `T` be the sequence of all common pair sums. There are `3m-3` pair
sums in total, hence
`|T|=3m-4=eta(H)-2`. The two induced kernel sequences are

`K_1=T(a+b)` and `K_2=T(a+c)`.

By S023, both have length `eta(H)-1` and contain no short zero-sum
subsequence. Their sequence gcd contains `T`, so its length is at least
`eta(H)-2`. Girard--Schmid Lemma 4.2 therefore gives `K_1=K_2`.

Cancellation in the free abelian monoid of sequences over `H` yields
`a+b=a+c`, and group cancellation gives `b=c`.

The choice of the three occurrences was arbitrary. Given any two occurrences
`x,y` in a fibre with `r_q>=3`, choose a third occurrence `z` and
apply the preceding argument with `a=z,b=x,c=y`. Thus `x=y`.
Therefore every nonzero quotient fibre is monochromatic.

## S024-P2 — seven-support and pairing-canonicity consequence

There are exactly seven nonzero quotient classes, all occupied. By S024-P1
there is a unique support value `x_q in G` above each
`q in Q\setminus{0}`. Hence

`S=product_{q != 0} x_q^{r_q}`

with all `r_q` positive odd integers and
`sum_{q != 0} r_q=6m+1`. In particular, `|supp(S)|=7`.

Pairing choice is now canonical at the kernel level: in the `q`-fibre every
pair has sum `2x_q`, so every maximal pairing induces the same kernel
sequence

`K=product_{q != 0} (2x_q)^((r_q-1)/2)`.

This formula is recorded only as the pairing-choice consequence. S024 does not
classify the seven lifts `x_q`, the odd multiplicity vector `(r_q)`, the
relations among the doubled lifts, or quotient normalizations.

## D23-01 verdict

**SUCCEEDS in full.** Every nonzero quotient fibre of every CAND-05 extremal is
monochromatic for every `m>=2`.

No CAND-02 architecture, computation, formalisation or quotient automorphism
normalization was used.
