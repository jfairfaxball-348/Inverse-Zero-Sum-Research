# S008 dependency update

## D7-01 — reflection-balanced capacity forcing

Status after S008: **PARTIALLY RESOLVED / GENERAL ALL-m CASE UNRESOLVED.**

Rigorous progress:

- S008-P1 forces odd multiplicity in all eight natural `C_2^3` quotient
  fibers and makes every maximal same-fiber pair-sum sequence a
  `C_m^2` EGZ-extremal of length `4m-4`.
- S008-P2 shows that any non-monochromatic fiber creates two distinct kernel
  extremals sharing `4m-5=s(C_m^2)-2` terms.
- S008-P3 gives an unconditional dichotomy: either D7-01 already holds, or the
  one-change obstruction exists. Published Girard--Schmid 2019 Lemma 4.1
  excludes the obstruction whenever `m` has Property D.
- Therefore D7-01 holds for every Property-D modulus. Any D7-01 counterexample
  would force Property D to fail at its modulus.
- S008-P4 records the additional shifted restricted-sum exclusions imposed by
  the eight residual quotient representatives.

No universal Property-D assumption is made, so D7-01 remains unresolved for
arbitrary `m`.

## D6-08 — progressive-subsums bridge

Status: **PARTIALLY RESOLVED / GENERAL CASE OPEN AS A PROGRAMME DEPENDENCY.**

S007 already proved `m=2`. S008 now proves D6-08 for every modulus satisfying
Property D, via S008-P3 followed by S007-P2. No all-`m` conclusion is made.

## D6-09 — eta-core reduction

Status: **SOURCE-SUPPLIED CONDITIONALLY; ACTIVATED ON THE S008 PROPERTY-D
SCOPE.**

For every Property-D modulus, S008-P3 and S007-P2 meet the entry condition of
Girard--Schmid 2019 Lemma 4.4(2), yielding a translated length-`6m+1`
eta-extremal core. The universal reduction remains conditional on D6-08.

## New bounded dependency

**D8-02 — CAND-compatible one-change pair-sum stability.** Suppose the two
near-identical kernel extremals of S008-P2 arise from one CAND-02 extremal and
therefore each comes with the eight residual quotient representatives and the
S008-P4 shifted restricted-sum exclusions. Determine whether those extra
constraints force the two kernel extremals to be equal **without assuming
Property D**.

This is strictly narrower than proving Property D for `C_m^2` or proving
one-change stability for all arbitrary kernel extremals.

No change is made to D6-10 or later full-classification dependencies.
