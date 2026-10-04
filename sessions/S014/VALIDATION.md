# S014 validation

Date: 2026-10-04.

## Mathematical proof checks

The following were checked symbolically for arbitrary (mge2), with
(n=2m):

1. threshold arithmetic:
   (|S|+1=8m+1=s(G_m)), and the forced zero sum has length (n=2m);
2. removing the appended position gives length (n-1) and sum (-x);
3. complement length is (4n-(n-1)=3n+1=6m+1);
4. support-clone swapping preserves both length and sum while replacing only
   equal-valued positions;
5. the remainder after all (r) old copies of (a) has
   (ell=n-r-1) terms and sum
   (-(r+1)a=ell a), using only (na=0);
6. (r=n-2) gives (ell=1), forcing the sole non-(a) term to equal (a),
   a contradiction;
7. the replacement-core equivalence was checked in both directions and uses
   original positions, not values.

No division in (G_m), Property D, quotient-pairing hypothesis, capacity
bound, progressive-block input or eta-freeness assumption is used.

## Source checks

- Girard--Schmid 2019 Theorem 3.2 equal-factor proof statement was rechecked;
  it gives (s(G_m)=8m+1).
- Gao--Hong--Peng 2022 was checked as a directly relevant general inverse
  fixed-length source; no inspected theorem statement was imported into the
  programme proof.
- Focused terminology searches produced only non-hit evidence for an exact
  prior support-clone/replacement-core statement; no novelty conclusion was
  drawn.

## Computation

No mathematical computation was run. The S014 deductions are all-m symbolic
arguments; no finite case was needed to establish them.

## Repository validation

Before publication, the exact repository checker was exercised on a
materialized candidate authority mirror carrying S014 as the unique completed
checkpoint and S015 as the ready successor:

`python3 scripts/check_authority.py`

Result:

`PASS: authority state, session uniqueness, independent gate semantics, blocker/prompt consistency, 0 local links, and original licence`

A JSON parse check also passed, and the candidate checkpoint count for S014 was
exactly one. The mirror is a structural validation surface; after repository
writes, live GitHub authority and the remote tip are re-read separately.

## Scope boundary

Validation establishes internal proof bookkeeping and authority consistency,
not mathematical novelty, external review, formal verification or publication
readiness.
