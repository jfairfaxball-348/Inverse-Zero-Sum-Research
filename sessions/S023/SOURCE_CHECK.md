# S023 source check

Date: 2026-10-05.

S023 used the source baseline already audited in S022; it did not run a new
openness/novelty search.

## Girard--Schmid 2019

Benjamin Girard and Wolfgang A. Schmid, *Direct zero-sum problems for certain
groups of rank three*, Journal of Number Theory 197 (2019), 297--316,
arXiv:1806.07636.

Relevant checked inputs were the definition of ordinary `eta`; the rank-two
value `eta(C_m+C_{mn})`; Theorem 2.4, the unconditional rank-two
inverse-`eta` classification; and the equal-factor direct proof through a
rank-two kernel and `C_2^3` quotient, giving
`eta(C_2+C_{2m}+C_{2m})=6m+2`.

S023 does not attribute the new equality decomposition to this paper. The paper
supplies the direct threshold and rank-two endpoint; the equality-case argument
in S023 is a programme deduction.

## Girard--Schmid 2020

Benjamin Girard and Wolfgang A. Schmid, *Inverse zero-sum problems for certain
groups of rank three*, Acta Mathematica Hungarica 160 (2020), 229--247,
arXiv:1809.03178.

The proof of inverse `eta` for the different family
`C_2+C_2+C_{2n}` was rechecked as a methodological precedent: it uses a
singleton-in-kernel contradiction followed by quotient-zero pair extraction
and equality arithmetic. It does not state CAND-05.

## Boundary

CAND-05 remains **SOURCE-DEFINED / CURRENT STATUS UNKNOWN**. S023 proves an
internal structural reduction; it does not turn the S022 literature non-hit
into an openness or novelty claim. No computation, formalisation, or external
review was used to validate the mathematics.
