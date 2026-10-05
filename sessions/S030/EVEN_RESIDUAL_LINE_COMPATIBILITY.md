# S030 — even residual-line compatibility through `ell`

Date: 2026-10-05.
Classification: **PROGRAMME-PROVED BOUNDED MATHEMATICS / EXACT NECESSARY INTERSECTION / NOT INDEPENDENTLY REVIEWED.**

Assume even `m>=4`. Keep the S025--S029 notation
`H=2G_m ~= C_m^2`, `Q=G_m/H ~= C_2^3`,
`L={0,ell}`, and the canonical kernel

`K=h_1^(m-1) h_2^(m-1) h_3^(m-1)`,

where `(h_1,h_2)` is a basis,
`h_3=h_2-a h_1`, and `a` is a unit modulo `m`.
By S027 the three nonzero `L`-cosets correspond bijectively to
`h_1,h_2,h_3`. Relabel those cosets as

`C_i={q_i,q_i+ell}`

so that bucket `h_i` lies over `C_i`. This is only indexing by the already
proved `delta:Q/L -> H/2H` correspondence, not a normalization of quotient
automorphisms.

Continue to condition on the S028 hypothesis that one fixed `C_i` has both
members of positive weight. Write `u=x_ell` for the unique residual lift over
the zero-weight quotient class `ell`.

## S030-P1 — every residual line through `ell` lies in the shell

For each `i=1,2,3`, put
`p_i=x_{q_i}+x_{q_i+ell}` and
`w_i=p_i+u=x_{q_i}+x_{q_i+ell}+u`.

Because `q_i+(q_i+ell)+ell=0` in `Q`, one has `w_i in H`.
Use the canonical maximal same-fibre pairing that leaves one residual
occurrence of every nonzero quotient class. Its pair-sum sequence is exactly
`K`, and the three displayed terms are disjoint residual terms.

Now `|K|=eta(H)-1`. Therefore `K w_i` has a nonempty zero-sum subsequence
of length at most `m`. Since `K` itself is ordinary-`eta` extremal, this
zero sum must contain the added term `w_i`. Hence there is
`V_i|K` with `sigma(V_i)=-w_i` and `|V_i|<=m-1`.

If `|V_i|<=m-2`, lift the terms of `V_i` to their disjoint paired
two-term blocks in the original sequence and adjoin the residual triple.
The result is a zero-sum subsequence of length
`2|V_i|+3 <= 2m-1`, contrary to CAND-05 extremality.
Thus `lambda(w_i)=m-1`, so `w_i in E(K)` for all three `i`.

## S030-P2 — exact common-`u` coupling

The three shell conditions are exactly

`u in (E(K)-p_1) cap (E(K)-p_2) cap (E(K)-p_3)`.  (1)

Put `d_2=p_2-p_1`, `d_3=p_3-p_1` in `H`, and let `w=w_1`.
Then (1) is equivalent to

`w in E(K) cap (E(K)-d_2) cap (E(K)-d_3)`.  (2)

In each `C_i`, choose `q_i` to be a positive-weight member and set
`t_i=x_{q_i+ell}-x_{q_i}`. Then
`2x_{q_i}=h_i`, `pi(t_i)=ell`,
`p_i=h_i+t_i`, `z_i:=u+t_i in H`, and `w_i=h_i+z_i`.
Thus

`z_i in E(K)-h_i`,  `i=1,2,3`,  (3)

with `z_i-z_j=t_i-t_j`.

For the fixed simultaneous-positive coset, S028 proves
`t_i in G_m[2]`. For either other coset the second member may have zero
kernel weight, and S025 leaves such a doubled lift uncontrolled. Hence
S025--S029 do not in general imply `2x_{q_i+ell}=h_i`,
`t_i in G_m[2]`, or a value for `t_i-t_j`.

The exact cross-coset defect is therefore the two relative residual pair-sums
`d_2,d_3`, equivalently the two lift-difference offsets relative to the
fixed coset.

## S030-P3 — the three constraints remain compatible

Let the fixed simultaneous-positive coset have torsion difference
`t in G_m[2]`, `pi(t)=ell`, and take the surviving boundary value
`u=t`.

For each bucket value `h_i`, choose a lift `x_i` with `2x_i=h_i` over one
member of `C_i`. S026 says translation by the same `t` stays in the same
doubling fibre and moves the quotient class by `ell`; hence `x_i+t` is an
allowed lift over the other member. At the level of the present necessary
constraints take the residual pair on each `C_i` to be `x_i,x_i+t`.
Then

`x_i+(x_i+t)+u=2x_i+2t=h_i`.

S029 proves `h_i in E(K)` for all three `i`. Hence all three shell
memberships can hold simultaneously with common `u=t`.

This is **not** a construction of a CAND-05 extremal and does not assert that
both members of all three cosets have positive weight. It demonstrates only
that the S025--S029 geometry plus the three through-`ell` shell conditions
are algebraically compatible. In (2), this assignment has
`d_2=h_2-h_1`, `d_3=h_3-h_1`, and the intersection contains
`w=h_1`.

## D29-01 verdict and stop boundary

**SUCCEEDS as an exact three-line shell coupling, but does not exclude the
fixed simultaneous-positive target.**

Every residual quotient-zero line through `ell` has its lift-sum in `E(K)`.
Their common lift is equivalent to (1), or to the translated-shell
intersection (2). The unresolved data are precisely `d_2,d_3`.
S025--S029 do not control them when a non-fixed coset may contain a zero-weight
member, and the common-torsion assignment simultaneously satisfies all three
shell constraints.

S030 stops here. It does not solve the global `k_q/r_q` vector, classify the
seven lifts, inspect the other four Fano residual lines, treat odd `m`,
normalize quotient automorphisms, construct an extremal, or claim the full
CAND-05 classification.
