# S009 dependency update

## D8-02 — CAND-compatible one-change pair-sum stability

Status after S009: **UNRESOLVED / SHARPLY REDUCED.**

S009 proves four bounded programme facts:

- S009-P1 classifies the even quotient-zero subsets of the eight residual
  `C_2^3` classes: fourteen affine planes of size four, plus the full set.
- S009-P2 compares the two residual systems exactly. Seven planes through the
  changed quotient class produce `delta`-paired holes in `Sigma_{m-2}(T)`;
  seven planes avoiding it produce `delta`-paired holes in
  `Sigma_{m-3}(T)`. The full residual set gives a further pair in
  `Sigma_{m-4}(T)` for `m>=4`. The companion exclusions one level lower/upper
  respectively cancel rather than supplying independent information.
- S009-P3 uses only the sharp rank-two EGZ threshold to force
  `-(x+y) in Sigma_{m-2}(T)` for the two exceptional terms of any distinct
  one-change pair `T x`, `T y`.
- S009-P4 packages every possible D8-02 failure as one `s(C_m^2)-2` common
  core with the above CAND-labelled restricted-sum footprint.

No theorem forcing `delta=0` from that footprint was obtained, and no
compatible package was constructed.

## D7-01 — reflection-balanced capacity forcing

Status unchanged:
**PROVED FOR PROPERTY-D MODULI; UNRESOLVED FOR ARBITRARY `m`.**

S009 neither assumes Property D nor constructs a D7-01 counterexample.

## D6-08 / D6-09

No universal change. S007-P2 and Girard--Schmid 2019 Lemma 4.4(2) still give
the eta-core reduction on every scope where D7-01 is known. Because D8-02
remains unresolved, S009 does not record a universal eta-core reduction.

## New bounded frontier — D9-01

**D9-01: CAND double-hole rigidity for the `s(H)-2` common core.**

Starting from the exact S009-P4 package, determine whether the affine-plane
incidence relations among the fourteen residual sums, together with

- `delta!=0`;
- `T x` and `T y` both EGZ-extremal;
- `-(x+y) in Sigma_{m-2}(T)`;
- seven `delta`-paired holes at restricted-sum level `m-2`;
- seven `delta`-paired holes at level `m-3`; and
- the full-set pair at level `m-4` when available,

are impossible in `C_m^2` without assuming Property D.

This is strictly narrower than arbitrary one-change stability and than the
full Property-D conjecture. It is the next mathematical obligation if work
continues on this route.
