# S027 — even-modulus bucket cosets for CAND-05

Date: 2026-10-05.
Classification: **PROGRAMME-PROVED BOUNDED MATHEMATICS / NOT INDEPENDENTLY REVIEWED.**

Let
`G=G_m=C_2 e_0 + C_{2m}e_1 + C_{2m}e_2` with even `m`,
`H=2G`, `Q=G/H`, and `pi:G->Q`.
By S026, `L=pi(G[2])=<pi(e_0)>` has order two.

S025 gives three positive-weight kernel values `h_1,h_2,h_3 in H`, ordered
so that `(h_1,h_2)` is a basis of `H=C_m^2` and
`h_3=h_2-a h_1` for a unit `a mod m`.

## S027-P1 — the induced map

Define `d:Q -> H/2H` by `d(pi(x))=2x+2H`. It is well-defined: changing
`x` by an element of `H` changes `2x` by an element of `2H`.

Its kernel is exactly `L`. If `2x in 2H`, choose `h in H` with
`2x=2h`; then `x-h in G[2]`, so `pi(x) in L`. Conversely, if
`pi(x) in L=pi(G[2])`, choose `t in G[2]` with
`pi(t)=pi(x)`; then `x-t in H` and `2x in 2H`.

Thus `d` induces an injective homomorphism
`delta:Q/L -> H/2H`, `delta(pi(x)+L)=2x+2H`.
Now `|Q/L|=4`, while even `m` gives `H/2H ~= C_2^2`, also of
order four. Therefore `delta` is an isomorphism.

## S027-P2 — placement of the three kernel buckets

Because `m` is even, every unit `a mod m` is odd. Modulo `2H`,
`h_3=h_2-a h_1` becomes
`h_3+2H=(h_2+2H)+(h_1+2H)`.
Since `(h_1,h_2)` is a basis of `H=C_m^2`, their images form a basis
of `H/2H ~= C_2^2`. Hence `h_1+2H,h_2+2H,h_3+2H` are exactly
the three nonzero elements of `H/2H`.

If a positive-weight quotient class `q` lies in bucket `h_i`, then
`2x_q=h_i`, so `delta(q+L)=h_i+2H`. Therefore the three positive-weight
kernel buckets correspond bijectively to the three nonzero cosets of `L` in
`Q`.

Let `ell` be the unique nonzero quotient class in `L`. If `k_ell>0`,
then `ell` lies in some bucket `h_i`, but `delta(L)=0` while every
`h_i+2H` is nonzero, a contradiction. Hence `k_ell=0`.

## D26-01 verdict and boundary

**SUCCEEDS for every even `m>=2`.** The induced map is an isomorphism; the
three positive-weight buckets occupy exactly the three nonzero `L`-cosets;
and the unique nonzero quotient class in `L` has zero kernel weight.

This is a coset-level conclusion only. It does not choose which member or
members of a nonzero `L`-coset have positive weight, solve any `k_q` or
`r_q` values, classify the seven lifts, analyze odd `m`, normalize
quotient automorphisms, or claim the full CAND-05 classification.
