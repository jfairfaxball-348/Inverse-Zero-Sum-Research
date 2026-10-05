# S025 source check

Date: 2026-10-05.

S025 did not run a new openness or novelty search. It rechecked the exact
primary-source theorem named in the committed brief.

## Girard--Schmid 2019 Theorem 2.4

Benjamin Girard and Wolfgang A. Schmid, *Direct zero-sum problems for certain
groups of rank three*, Journal of Number Theory 197 (2019), 297--316,
arXiv:1806.07636v2.

The primary PDF states Theorem 2.4 for `H\simeq C_m\oplus C_{mn}`,
`m>=2`, `n>=1`. An `eta(H)-1` sequence without a short zero sum has the
three-term normal form

`b_1^(m-1) b_2^(sm-1) (-a b_1+b_2)^((n+1-s)m-1)`,

with `{b_1,b_2}` generating, `ord(b_2)=mn`, `s in [1,n]`,
`gcd(a,m)=1`, and the theorem's stated alternative on the generating pair /
`s=n,a=1`.

For D24-01, `H=C_m^2`, so the source parameter is `n=1` and `s=1`.
Every relevant generating pair is then a basis, and the form becomes

`b_1^(m-1) b_2^(m-1) (b_2-a b_1)^(m-1)`.

Theorem 2.4 is unconditional and has no Property D hypothesis. Property D
belongs to the neighboring inverse-EGZ theorem, not this inverse-`eta` result.

## Inspection boundary

The arXiv v2 primary PDF page containing Theorem 2.4 was inspected directly.
The S025 bucket equations are programme deductions obtained by comparing the
source normal form with the canonical S024 kernel. CAND-05 remains
**SOURCE-DEFINED / CURRENT STATUS UNKNOWN**; no literature non-hit is promoted
to an openness or novelty claim.
