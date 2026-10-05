# S028 — even-bucket member compatibility for CAND-05

Date: 2026-10-05.
Classification: **PROGRAMME-PROVED PARTIAL STRUCTURAL RESOLUTION / NOT INDEPENDENTLY REVIEWED.**

Let `m` be even. Use the S023--S027 notation
`H=2G_m ~= C_m^2`, `Q=G_m/H ~= C_2^3`,
`L=pi(G_m[2])={0,ell}`, and
`S=product_{q!=0} x_q^(2k_q+1)`.
Fix one nonzero `L`-coset `C={q,q+ell}` and its S027 kernel bucket
`h`.

## S028-P1 — local weight and torsion calculation

Assume both members of `C` have positive kernel weight. Put
`k=k_q>0`, `k'=k_{q+ell}>0`,
`x=x_q`, and `y=x_{q+ell}`.

S027 places the bucket `h` on exactly the coset `C`, while S025 gives
total bucket weight `m-1`. Hence

`k+k'=m-1`.

For `m=2` this is impossible because two positive integers cannot sum to
one. Thus simultaneous positivity is excluded at `m=2`.

Now assume even `m>=4`. S026/S027 give
`2x=2y=h`. Set `t=y-x`.

Then `t in G_m[2]`, and
`pi(t)=pi(y)-pi(x)=ell`. In particular `t!=0`.

The two full quotient fibres form the block

`B=x^(2k+1) y^(2k'+1)`.

Its length is `2(k+k')+2=2m`. Since `h` has order `m`,

`sigma(B)=k h+k' h+x+y=(m-1)h+(2x+t)=m h+t=t != 0`.

So the natural `2m`-term candidate is not a forbidden zero sum: it misses
zero by exactly the nonzero two-torsion element `t`.

## S028-P2 — exact residual completion condition

S027 gives `k_ell=0`; because every quotient-fibre multiplicity is
`2k_q+1`, the `ell`-fibre consists of one term. Write `u=x_ell`.

Choose the canonical maximal same-fibre pairing leaving one residual occurrence
of `x`, one of `y`, and `u`. Its pair-sum sequence is the canonical
kernel `K`.

The residual triple `xyu` is quotient-zero because
`q+(q+ell)+ell=0`. Its sum is `w=x+y+u=h+t+u in H`.

Now `|K|=eta(H)-1=3m-3`. Hence the sequence `Kw` over `H` has
length `eta(H)` and contains a nonempty zero-sum subsequence of length at
most `m`. Since `K` itself is an ordinary-`eta` extremal, this zero
sum must contain the added term `w`. Therefore there is a subsequence
`V|K` with `sigma(V)=-w` and `|V|<=m-1`.

Each term of `V` lifts to its disjoint paired two-term block in `S`.
If `|V|<=m-2`, those lifted pairs together with the residual triple
`xyu` give a zero-sum subsequence of `S` of length
`2|V|+3 <= 2m-1`, contradicting CAND-05 extremality. Consequently every
completion of `-w` inside `K` has length at least `m-1`, while the
threshold argument gives one of length at most `m-1`. Thus

`min{|V| : V|K, sigma(V)=-w}=m-1`.

This is the exact compatibility condition left by simultaneous positivity.

## S028-P3 — why the current structure does not exclude it

The point `u` has zero kernel weight. S025--S027 therefore impose no
condition on its double and no lift-level relation between `u` and the
two-torsion difference `t`. Their quotient images are both `ell`, so
`z:=u+t in H` is presently uncontrolled, and `w=h+z`.

The gap is genuine at the level of the available structure. The allowed
boundary case `u=t` gives `z=0` and `w=h`. Then the `m-1` copies
of `h` in `K` sum to `-h`, so a completion of length `m-1`
exists. No shorter completion can exist: if `V|K` had
`|V|<=m-2` and `sigma(V)=-h`, at least one of the `m-1` copies of
`h` would remain outside `V`, and adjoining that copy would create a
zero-sum subsequence of `K` of length at most `m-1`, contradicting the
eta-freeness of `K`.

Thus the S023--S027 structure plus the present local eta test is compatible
with the exact boundary `u=t`. This does **not** construct an actual
CAND-05 extremal with simultaneous positivity; other lift relations may still
exclude it.

## D27-01 verdict and stop boundary

- For `m=2`: **simultaneous positivity is impossible**.
- For even `m>=4`: **not excluded by the currently proved structure**.
  Any actual case must satisfy the exact depth-`m-1` kernel-completion
  condition above.
- The first unresolved compatibility defect is the uncontrolled
  `H`-offset `z=x_ell+t`, equivalently the location of
  `w=h+z` in the canonical kernel's completion shell.

S028 stops here. It does not solve the global `k_q/r_q` vector, classify
the seven lifts, analyze odd `m`, normalize quotient automorphisms, construct
an extremal with simultaneous positivity, or claim the full CAND-05
classification.
