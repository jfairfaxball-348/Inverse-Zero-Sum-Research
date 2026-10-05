# S032 — even complementary-Fano-plane compatibility

Date: 2026-10-05.
Classification: **PROGRAMME-PROVED BOUNDED MATHEMATICS / EXACT
LINE-COMPLEMENT NONEXCLUSION / NOT INDEPENDENTLY REVIEWED.**

Assume even `m>=4`. Keep the S025--S031 notation
`H=2G_m ~= C_m^2`, `Q=G_m/H ~= C_2^3`,
`L={0,ell}`, and

`K=h_1^(m-1) h_2^(m-1) h_3^(m-1)`,

where `(h_1,h_2)` is a basis,
`h_3=h_2-a h_1`, and `a` is a unit modulo `m`.
Continue to condition on the same hypothetical simultaneous-positive nonzero
`L`-coset and the same canonical seven-term residual.

S030--S031 prove that the lift-sum of every quotient-zero Fano residual line
lies in the exact S029 shell `E(K)`.

## S032-P1 — every complementary four-set also lies in the shell

Let `R` denote the canonical seven-term residual, one lift over each nonzero
class of `Q`. The sum of all seven nonzero elements of `C_2^3` is zero:
each coordinate is nonzero on exactly four of the seven elements.

Hence, if `F` is any Fano line, then both `F` and its four-point
complement `F^c` are quotient-zero.

Let `c_F in H` be the lift-sum of the four residual terms indexed by
`F^c`. Use the same canonical maximal same-fibre pairing that produces
`K`. The four residual terms are disjoint from those pairs.

Because `|K|=eta(H)-1`, the sequence `K c_F` has a nonempty zero-sum
subsequence of length at most `m`. It must contain `c_F`, so there is
`V_F|K` with

`sigma(V_F)=-c_F`,  `|V_F|<=m-1`.

If `|V_F|<=m-2`, lifting the kernel terms to their disjoint two-term
blocks and adjoining the four residual terms gives a zero sum in the original
sequence of length

`2|V_F|+4 <= 2m`,

contrary to CAND-05 extremality. Therefore the completion depth is exactly
`m-1), and

`c_F in E(K)`

for all seven Fano-line complements.

## S032-P2 — exact line/complement coupling

Write

`r:=sigma(R) in H`.

For a Fano line `F), let `w_F` be its three-term lift-sum. Since the
line and complement partition the seven residual terms,

`c_F=r-w_F`.  (1)

Combining S030--S031 with S032-P1 gives, for every one of the seven Fano
lines,

`w_F in E(K)` and `r-w_F in E(K)`.  (2)

Equivalently,

`w_F in E(K) cap (r-E(K))`,  (3)

or, in total-residual form,

`r in cap_F (w_F+E(K))`.  (4)

Thus the seven complementary four-set tests add exactly one common
translation variable: the total residual sum `r).

Choose, in each nonzero `L`-coset, a positive-weight representative with
lift `x_i`, let the other residual lift be `y_i), and put

`tau_i=y_i-x_i`,  `u=x_ell`.

Since `2x_i=h_i`,

`x_i+y_i=h_i+tau_i`.

Therefore, with

`s:=h_1+h_2+h_3`,

one has

`r=s+zeta`,  where
`zeta:=u+tau_1+tau_2+tau_3 in H`.  (5)

The inclusion `zeta in H` is exact because all four displayed summands
have quotient image `ell`. Existing S025--S031 authority controls the fixed
simultaneous-positive difference but does not in general control both
non-fixed `tau_i) when a zero-weight member is present. Equation (5) is the
exact total-residual translation defect exposed by D31-01.

## S032-P3 — the common-torsion family survives all seven complements

Use the S031 compatibility family. Take the fixed two-torsion element
`t in G_m[2]` with `pi(t)=ell` and set

`u=t`,  `tau_1=tau_2=tau_3=t`.

Then `2t=0`, so (5) gives

`zeta=4t=0`,  `r=s=h_1+h_2+h_3`.  (6)

The three Fano lines through `ell` have lift-sums
`h_1,h_2,h_3`. Their complementary four-set sums are therefore

`s-h_1=h_2+h_3`,  (7)

`s-h_2=h_1+h_3=(1-a)h_1+h_2`,  (8)

`s-h_3=h_1+h_2`.  (9)

S029 places `h_2+h_3` in `E(K)` for every unit `a`, and the full
affine line `h_2+<h_1>` is always contained in `E(K)`. Hence all
three values (7)--(9) lie in the shell.

The four Fano lines not containing `ell` collapse, after the S031
`H[2]` adjustment, to one value `v in E(K)` with

`2v=s`.

For each such line, its complementary four-set sum is

`s-v=v in E(K)`.  (10)

The same `H[2]` adjustment used in S031 does not change the total residual
sum: shifting both lifts in one `L`-coset by `delta in H[2]` changes
their pair sum by `2delta=0`.

Thus all seven line memberships and all seven complementary four-set
memberships hold simultaneously in the common-torsion family.

This is compatibility of proved necessary constraints only. It is not a
construction of an actual CAND-05 extremal.

## Exact total-residual defect and D31-01 verdict

**D31-01 does not exclude the fixed simultaneous-positive target.**

The new information is exactly the common translate (2)--(5):

- every Fano line sum `w_F` lies in `E(K) cap (r-E(K))`;
- equivalently the total residual sum lies in
  `cap_F(w_F+E(K))`;
- relative to the S025 bucket sum `s=h_1+h_2+h_3`, the uncontrolled
  translation is
  `zeta=r-s=u+tau_1+tau_2+tau_3 in H`;
- the S031 common-torsion family has `zeta=0`, hence `r=s`, and all
  seven complementary shell tests are satisfied explicitly.

S032 stops here. It does not inspect arbitrary residual subsets beyond the
seven line complements, solve the global `k_q/r_q` vector, classify all
seven lifts, treat odd `m`, normalize quotient automorphisms, construct an
extremal, or claim the full CAND-05 classification.
