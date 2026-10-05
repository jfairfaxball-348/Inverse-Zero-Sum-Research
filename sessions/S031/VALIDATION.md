# S031 validation

Date: 2026-10-05.

## Mathematical validation

1. The three nonzero `L`-cosets are the three nonzero elements of
   `Q/L ~= C_2^2`. Therefore, after choosing representatives `q_i`,
   their sum is `epsilon ell`, and the four non-`ell` Fano lines are
   exactly the parity class `e_1+e_2+e_3=epsilon`.
2. For each of those four residual triples, the same `eta(H)` threshold
   argument as S030 gives a completion in `K` of size at most `m-1`.
   A completion of size at most `m-2` would lift to a forbidden zero sum
   of length at most `2m-1`. Hence all four lift-sums lie in `E(K)`.
3. Writing `tau_i=x_{q_i+ell}-x_{q_i}`, the four new shell points are
   `X+sum e_i tau_i` on the parity class above. Only the fixed
   simultaneous-positive coset forces its `tau_i` to be two-torsion.
4. In the common-torsion compatibility family, take `u=t` and
   `tau_1=tau_2=tau_3=t`. The three through-`ell` sums are
   `h_1,h_2,h_3`, while all four remaining line sums collapse to one
   `v` satisfying `2v=h_1+h_2+h_3`.
5. Since `a` is odd, `2c=1-a mod m` is solvable. The point
   `v_0=c h_1+h_2` satisfies `2v_0=h_1+h_2+h_3` and belongs to the
   universal shell line `h_2+<h_1>`. The difference between any two such
   halves lies in `H[2]`, and shifting one base lift by that difference
   preserves quotient class, double and all through-`ell` sums. Thus all
   seven triple-shell constraints are simultaneously compatible.

## Computational sanity check

An independent enumeration re-evaluated the S029 completion depth directly
from the canonical kernel for every even `m` with `4<=m<=40` and every
unit `a mod m`. For each of the 172 `(m,a)` cases it verified that the
explicit half

`v_0=c h_1+h_2`, with `2c=1-a`,

satisfies `2v_0=h_1+h_2+h_3` and lies in the computed depth-`m-1`
shell.

Result: **0 discrepancies**.

## Repository validation

The exact repository `scripts/check_authority.py` was run in the same
reconstructed proposed-state style used by S030, with S031 as the completed
checkpoint, S032 as the ready successor, the live prompt/brief consistency,
and the exact Apache-2.0 licence blob. Its output was:

`PASS: authority state, session uniqueness, independent gate semantics, blocker/prompt consistency, 0 local links, and original licence`

`python3 -m json.tool authoritative/STATE.json` also passed on the proposed
state representation.

As in S030, this reconstructed harness is not represented as a full-tree
Markdown-link audit. Final GitHub verification separately checks session
uniqueness, intended changed paths, S032 prompt/brief consistency, and the
published remote branch SHA/content.
