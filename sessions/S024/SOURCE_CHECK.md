# S024 source check

Date: 2026-10-05.

S024 did not run a new openness or novelty search. It rechecked the exact
primary-source tool named in the committed brief.

## Girard--Schmid 2019 Lemma 4.2

Benjamin Girard and Wolfgang A. Schmid, *Direct zero-sum problems for certain
groups of rank three*, Journal of Number Theory 197 (2019), 297--316,
arXiv:1806.07636.

Lemma 4.2 states that for
`H\simeq C_u\oplus C_{uv}`, two sequences `S_1,S_2` of length
`eta(H)-1` with no short zero-sum subsequence satisfy `S_1=S_2` whenever
`|gcd(S_1,S_2)|>=eta(H)-2`.

For D23-01 the specialization is `u=m`, `v=1`, hence
`H\simeq C_m^2`. The target range `m>=2` lies inside the lemma's
hypotheses. S023 proves that every maximal-pairing kernel has the required
length and ordinary-`eta` extremality. The synchronized pairings in S024
share `3m-4=eta(H)-2` pair sums, so the overlap hypothesis is met.

The lemma has no Property D assumption. Property D belongs to the neighboring
inverse-EGZ result, not this ordinary-`eta` stability lemma.

## Boundary

The paper supplies the one-change rigidity theorem; the quotient-fibre
monochromaticity deduction is programme mathematics. CAND-05 remains
**SOURCE-DEFINED / CURRENT STATUS UNKNOWN**. No literature non-hit is upgraded
to an openness or novelty claim.
