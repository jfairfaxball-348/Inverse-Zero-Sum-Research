# S030 validation

Date: 2026-10-05.

## Mathematical validation

1. For every nonzero `L`-coset `C_i`, the residual triple through `ell`
   is quotient-zero. Applying `eta(H)` to `K w_i` gives a completion using
   at most `m-1` kernel terms.
2. A completion of size at most `m-2` lifts, with that residual triple, to a
   zero sum of length at most `2m-1` in the original sequence. Hence every
   `w_i` has completion depth exactly `m-1` and belongs to `E(K)`.
3. Writing `p_i=x_{q_i}+x_{q_i+ell}` gives the exact shared-lift condition
   `u in cap_i(E(K)-p_i)`; subtracting `p_1` gives the equivalent
   `E(K) cap (E(K)-d_2) cap (E(K)-d_3)` formulation.
4. Orienting each coset from a positive-weight member gives
   `p_i=h_i+t_i` and `z_i=u+t_i`. Only in a simultaneous-positive coset
   does existing authority force `t_i` to be two-torsion; zero-weight members
   remain outside the S025 bucket constraints.
5. The nonexclusion assignment uses the fixed S028 torsion `t`, takes `u=t`,
   and uses the same translation `x_i -> x_i+t` in each doubling fibre.
   Its three residual sums are exactly `h_1,h_2,h_3`, all in the S029 shell.
   This is compatibility of the authorized necessary conditions only, not an
   extremal construction.

## Computational sanity check

A bounded independent enumeration rechecked the S029 shell formula for every
even `m` with `4<=m<=40` and every unit `a mod m`, and separately verified
that `h_1,h_2,h_3` all belong to the computed depth-`m-1` shell.

Result: **0 discrepancies**.

## Repository validation

The exact repository `scripts/check_authority.py` was run in a reconstructed
proposed-state harness containing S030 as the completed checkpoint, S031 as the
ready successor, checkpoint record paths through S030, the live next-session
prompt and the exact Apache-2.0 licence blob. Its output was:

`PASS: authority state, session uniqueness, independent gate semantics, blocker/prompt consistency, 0 local links, and original licence`

`python3 -m json.tool authoritative/STATE.json` also passed on the proposed
state representation.

As in recent sessions, the reconstructed harness is not represented as a
full-tree Markdown link audit. The final GitHub tree is separately checked for
S030 uniqueness, intended changed paths, S031 brief/prompt consistency and the
verified remote branch/tree after publication.
