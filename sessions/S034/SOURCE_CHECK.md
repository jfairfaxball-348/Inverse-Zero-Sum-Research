# S034 source check

Date: 2026-10-05.

S034 performs a focused source recheck for the new global mechanism. It does not conduct a new openness/novelty search and does not alter CAND-05's **SOURCE-DEFINED / CURRENT STATUS UNKNOWN** classification.

## Rechecked controlling source

ZS-56: Benjamin Girard and Wolfgang A. Schmid, *Direct zero-sum problems for certain groups of rank three*, Journal of Number Theory 197 (2019), 297--316, arXiv:1806.07636.

Two points were rechecked in the primary text:

1. Theorem 2.1 defines the eventual progression `D_k(G)=D_0(G)+k exp(G)` for `k>=k_D(G)`. Theorem 3.4 gives `D_0(G)=2m+1` and `k_D(G)=2` when `G=C_2+C_{2m}+C_{2m}`. Hence `D_2(G)=6m+1`.
2. The proof of Theorem 3.1 obtains the lower bound `eta(G)>=6m+2` from Edel--Elsholtz--Geroldinger--Kubertin--Rackham, Proposition 3.1. This is a lower-bound construction, not an inverse classification theorem.

The multiwise theorem is the source input promoted by S034. It applies to the same group for all `m>=1`; no Property D hypothesis is involved in this equal-factor case.

## Freshly inspected lower-bound source

ZS-66: Yves Edel, Christian Elsholtz, Alfred Geroldinger, Silke Kubertin and Laurence Rackham, *Zero-sum problems in finite abelian groups and affine caps*, Quarterly Journal of Mathematics 58 (2007), 159--186, Proposition 3.1.

Specializing Proposition 3.1(1) to invariant factors `2,2m,2m` gives the standard seven-support eta lower-bound example. For even `m`, in the S023--S027 quotient language each nonzero `L`-coset has one multiplicity-`2m-1` member and one singleton member, while `ell` is also singleton. Thus it is a concrete one-sided-occupancy benchmark; it neither constructs nor excludes the simultaneous-positive case.

No theorem in either checked source is read as an inverse classification of CAND-05. No source non-hit is promoted to openness evidence. No external review, formal verification, novelty certification, submission, or publication claim is added.
