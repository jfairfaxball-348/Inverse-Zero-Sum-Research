# S032 validation

Date: 2026-10-05.

## Mathematical validation

1. The sum of all seven nonzero elements of `C_2^3` is zero, so the
   complement of every quotient-zero Fano line is also quotient-zero.
2. For each complementary four-set, the `eta(H)` threshold gives a kernel
   completion of size at most `m-1`. A completion of size at most
   `m-2` would lift to a forbidden zero sum of length
   `2(m-2)+4=2m`. Hence every complementary lift-sum lies in `E(K)`.
3. If `r` is the total seven-term residual sum and `w_F` is a line
   sum, the complementary sum is exactly `r-w_F`. The fourteen shell
   memberships are therefore equivalent to
   `w_F in E(K) cap (r-E(K))` for all seven lines.
4. Choosing one positive representative in each nonzero `L`-coset gives
   the exact translation
   `r-(h_1+h_2+h_3)=u+tau_1+tau_2+tau_3 in H`.
5. In the common-torsion family this translation is zero. The three
   complements of the through-`ell` lines are
   `h_2+h_3`, `h_1+h_3`, `h_1+h_2`, all in `E(K)`.
   Each of the other four complements has the same sum `v` as its line,
   because `2v=h_1+h_2+h_3`.

## Computational sanity check

A direct evaluation of the S029 completion-depth formula was run for every
even `m` with `4<=m<=40` and every unit `a mod m` (172 parameter
pairs). For each pair it verified:

- the three values
  `h_2+h_3`, `h_1+h_3`, `h_1+h_2` have completion depth exactly
  `m-1`; and
- the half-fibre `2v=h_1+h_2+h_3` has four elements and contains at least
  one depth-`m-1` shell point.

Result: **0 discrepancies**.

The enumeration is a sanity check only and carries no proof weight.

## Repository validation

Direct container access to `github.com` was unavailable by DNS, so a native
clone could not be used. The exact repository `scripts/check_authority.py`
is therefore run in the same reconstructed proposed-state style used by S031,
with S032 as the completed checkpoint and S033 as the ready successor.
`python3 -m json.tool authoritative/STATE.json` is also run on the proposed
state representation.

Final GitHub-side verification separately re-reads the remote `main` head,
the S032 records, live prompt/brief consistency and the intended authority
updates. Repository checks validate state consistency, not mathematical truth,
novelty or publication readiness.
