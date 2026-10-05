# S031 — even remaining-Fano-line compatibility

Date: 2026-10-05.
Classification: **PROGRAMME-PROVED BOUNDED MATHEMATICS / EXACT SEVEN-LINE
NONEXCLUSION / NOT INDEPENDENTLY REVIEWED.**

Assume even `m>=4`. Keep the S025--S030 notation
`H=2G_m ~= C_m^2`, `Q=G_m/H ~= C_2^3`,
`L={0,ell}`, and

`K=h_1^(m-1) h_2^(m-1) h_3^(m-1)`,

where `(h_1,h_2)` is a basis,
`h_3=h_2-a h_1`, and `a` is a unit modulo `m`.
The three nonzero `L`-cosets are `C_i`, indexed so bucket `h_i`
lies over `C_i). Continue to condition on the S028 hypothesis that one
fixed `C_i` has both members of positive weight. Let `u=x_ell`.

S030 already proves that the three Fano residual lines through `ell` have
lift-sums in the exact S029 shell `E(K)`.

## S031-P1 — the four remaining Fano triples also lie in the shell

Choose one quotient representative `q_i in C_i` for each `i=1,2,3`.
Since the three `C_i` are the three nonzero elements of `Q/L ~= C_2^2`,
their sum is zero in `Q/L`. Hence

`rho:=q_1+q_2+q_3`

lies in `L`. Write `rho=epsilon ell`, with
`epsilon in {0,1}`.

The four Fano lines not containing `ell` are exactly

`T_e={q_1+e_1 ell,q_2+e_2 ell,q_3+e_3 ell}`

for `e=(e_1,e_2,e_3) in {0,1}^3` satisfying

`e_1+e_2+e_3 = epsilon (mod 2)`.  (1)

Indeed (1) is precisely the condition that the three quotient classes sum to
zero, and it gives four triples. Each chooses one member of each nonzero
`L`-coset, so none contains `ell`.

For such an `e`, let

`v_e=x_{q_1+e_1 ell}+x_{q_2+e_2 ell}+x_{q_3+e_3 ell} in H`.

Use the canonical maximal same-fibre pairing that leaves one residual
occurrence in every nonzero quotient class. The three terms defining `v_e`
are disjoint residual terms, and the paired kernel is exactly `K`.

Since `|K|=eta(H)-1`, the sequence `K v_e` has a nonempty zero-sum
subsequence of length at most `m`. It must contain `v_e`, so some
`V_e|K` has `sigma(V_e)=-v_e` and `|V_e|<=m-1`.
If `|V_e|<=m-2`, lifting its paired terms and adjoining the residual triple
gives a zero sum in the original sequence of length

`2|V_e|+3 <= 2m-1`,

contrary to CAND-05 extremality. Therefore the completion depth is exactly
`m-1`, and

`v_e in E(K)`  (2)

for all four remaining Fano lines.

Together with S030, all seven quotient-zero Fano residual triples therefore
have lift-sums in `E(K)`.

## S031-P2 — exact form of the new lift data

Put

`x_i=x_{q_i}`, `y_i=x_{q_i+ell}`, and
`tau_i=y_i-x_i`.

Then `pi(tau_i)=ell`, and the four new shell points are

`v_e=X+e_1 tau_1+e_2 tau_2+e_3 tau_3`,  (3)

where `X=x_1+x_2+x_3` and `e` obeys (1).

For the fixed simultaneous-positive coset, S028 forces the corresponding
`tau_i=t` to lie in `G_m[2]`. For either non-fixed coset, however, a
zero-weight member is invisible to the S025 kernel and the existing authority
does not force its `tau_i` to be two-torsion. Thus (3) exposes the same
member-level lift defect from a new coordinate: the four shell memberships
constrain an affine four-point family, but S025--S030 do not determine the two
non-fixed lift differences.

In the S030 pair-sum coordinates, if `q_i` is chosen as a positive-weight
member so `2x_i=h_i`, then `p_i=h_i+tau_i`. Hence the unresolved
`d_2,d_3` are precisely the corresponding relative `tau_i)-offsets
up to the known bucket differences.

## S031-P3 — all seven shell constraints remain compatible

Use the fixed S028 two-torsion difference
`t in G_m[2]` with `pi(t)=ell`. Take the surviving S030 boundary
`u=t`. For every bucket `h_i`, choose a lift `x_i` over `q_i`
with `2x_i=h_i`, and put

`y_i=x_i+t`.

S026 guarantees that `y_i` lies over the other member of `C_i` and has
the same double. The three through-`ell` residual sums are then

`x_i+y_i+u=2x_i+2t=h_i in E(K)`.

For a remaining line indexed by (1), its lift-sum is

`x_1+x_2+x_3+(e_1+e_2+e_3)t
 =x_1+x_2+x_3+epsilon t=:v`.  (4)

Thus all four remaining Fano lines collapse to the same `v in H`, and

`2v=h_1+h_2+h_3`.  (5)

The half-sum condition (5) is never an obstruction. Since `m` is even and
`a` is a unit, `a` is odd, so choose `c mod m` satisfying

`2c=1-a (mod m)`.

Then

`v_0=c h_1+h_2`

satisfies

`2v_0=(1-a)h_1+2h_2=h_1+h_2+h_3`.

Moreover S029 proves, for every unit `a`, that the full affine line

`h_2+<h_1>`

is contained in `E(K)`. Hence `v_0 in E(K)`.

Starting from any choices in the common-`t` assignment, (4)--(5) give some
half `v_*` of `h_1+h_2+h_3`. Therefore
`delta=v_0-v_* in H[2]`. Translating one base lift, say
`x_2 -> x_2+delta`, and simultaneously
`y_2 -> y_2+delta`, preserves its quotient classes and doubles, preserves
all three through-`ell` sums, and changes every value in (4) to `v_0`.
Consequently all seven Fano shell memberships hold simultaneously.

This is a compatibility assignment for the proved necessary constraints, not
a construction of a CAND-05 extremal. It does not assert positive weight on
both members of the two non-fixed cosets.

## Exact residual-lift defect after all seven Fano lines

The full seven-line shell system does **not** exclude the original
simultaneous-positive fixed coset.

The surviving defect can be stated exactly inside the common-torsion
compatibility family:

1. take `u=t` and the same two-torsion translation `t` in all three
   bucket fibres;
2. the three lines through `ell` become the fixed shell points
   `h_1,h_2,h_3`;
3. the four other lines collapse to one half-sum variable
   `v` satisfying `2v=h_1+h_2+h_3`;
4. the allowed base lifts retain an `H[2]` translation freedom, so `v`
   ranges over the four-point half-fibre of (5); and
5. that half-fibre always meets `E(K)`, explicitly at
   `v_0=c h_1+h_2` with `2c=1-a`.

Thus the seven triple-shell tests cannot see the remaining two-bit
`H[2]` half-lift coordinate. In the same surviving assignment
`d_2=h_2-h_1` and `d_3=h_3-h_1`, so the S030 translated-shell defects
are not contradicted by the four new lines.

## D30-01 verdict and stop boundary

**SUCCEEDS as a complete seven-Fano-line necessary shell analysis, but does not
exclude the fixed simultaneous-positive target.**

S031 stops here. It does not solve the global `k_q/r_q` vector, classify
all seven lifts, treat odd `m`, normalize quotient automorphisms, construct
an extremal, or claim the full CAND-05 classification.
