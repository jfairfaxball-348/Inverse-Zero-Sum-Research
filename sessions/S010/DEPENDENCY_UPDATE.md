# S010 dependency update

## D9-01 / D8-02

**UNRESOLVED.** No nonzero-delta footprint with an actual core T was
constructed, and no theorem rules out the full footprint unconditionally.

S010-P1 writes its complete Fano incidence system. It also proves that seven
plane labels need not give seven distinct centers: complete collapse is
possible for odd-m residual lifts. For gcd(m,6)=1 the seven through-plane
centers are arbitrary before restricted-sum/actual-lift compatibility is imposed.

S010-P2 eliminates any distinct one-change pair whose extension has maximum
multiplicity at least `k=floor((m-1)/2)` (m>=3), using the unconditional
rank-two eta inputs. A surviving local footprint must have both maxima <=k-1,
exceptional-term multiplicities in T <=k-2, and no qualifying progressive block.

S010-P4 shows that the forced witness does not automatically create an
eta-free complement. In an actual nonzero-delta CAND configuration, translating
by the shared term c produces a zero-sum block Z' of length 2m-1 containing
0, while its complement W' has length 6m+1, no 1/2-term zero sum, and an
even zero sum of length between 4 and 2m-2.

## D7-01

**PROVED ON THE INHERITED PROPERTY-D SCOPE; ALL-m CASE UNRESOLVED.**

S010-P3 proves, on actual CAND extremals and without assuming Property D:

`D7-01 <=> all fibers monochromatic <=> some maximal P has multiplicity >=k`.

Equivalently failure means `M_z(S)<=k-1` for every z in H, where M_z is the
maximum number of disjoint pairs summing to z. This is an equivalence of
conditions on actual extremals, not a realization theorem for abstract packets.
The m=2 case is separately resolved. No known Property-D modulus is a useful
finite falsification test for this frontier.

## D6-08 / D6-09 and later dependencies

No universal change. The permitted implication through S007-P2 and
Girard--Schmid Lemma 4.4(2) remains available on the previously established
scope. D9-01 has not been proved, so the universal eta-core reduction is not
activated. D6-10 and D6-12 are not attempted.

The current S007-P4 index is corrected: the universal m=3 bridge was unresolved
at S007, but is covered after S008 because 3 has Property D. Historical S007
records and the exact criterion remain intact.

## Next bounded frontier D10-01

**All-pairings low-capacity compatibility assessment.** Determine whether a
concrete two-pair exchange or variation of residual representatives forces a
contradiction to the simultaneous M_z bounds for an actual CAND extremal, using
the S009 restrictions for all maximal pairings and S010's witness-complement
obstruction. Do not treat a local residual lift as an actual counterexample.

This returns to the global compatibility not supplied by the local incidence
calculation. If no new mechanism is obtained in the next bounded unit, record
that limit and prepare a repair/pivot rather than another equivalent reformulation.
