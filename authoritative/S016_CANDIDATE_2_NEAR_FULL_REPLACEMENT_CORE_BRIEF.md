# S016 CAND-02 near-full replacement-core brief

Status: **READY** after completed S015.
Target: CAND-02 unchanged, all `m>=2`.
Dependency: D15-01.
Periodic audit: S020 remains next.

## Purpose

Run one bounded mathematical-investigation session on the first unresolved
strata created by S015's ambient core-transport theorem.

Put `n=2m`. For every CAND-02 extremal S, S015 proves that each replacement
core `K_x(S)` is a union of complete support value classes. If
`p in K_x` has value `b`, replacing `p` by `x` transports
`R_x` bijectively to `R_b` and transports the whole core exactly. For a
support target `a`, a nontrivial safe incidence `b -> a` can occur only
with `v_a<=n-4`, `v_b<=n-3`, and it forces an exact one-step
multiplicity-deficit witness after deleting every source occurrence.

Let
\[
\delta_a=n-1-|K_a(S)|.
\]
S015 also proves exact core factorization. At `delta_a=0` the
`-a` representation is unique. At `delta_a=1`, all representations are
`K_a` plus one occurrence from a single equal-valued reservoir of size at
least two, disjoint from the core. At `delta_a=2`, the residual
representations are fixed-sum pairs with empty positional intersection.

## Bounded question

Determine whether an actual CAND-02 extremal can have a nontrivial support
incidence
\[
K_a(S)\setminus P_a\ne\varnothing
\]
with
\[
\delta_a\le2.
\]

Use the **simultaneous ambient** system: core transport, augmented-core
invariance, weighted support classes, exact deficit descent, the S015-P3
common-deletion `(n-2)` witness, and the residual representation families.

A satisfactory outcome is one of:

1. prove that every nontrivial support core has `delta_a>=3`;
2. classify all possible near-full nontrivial cores sharply enough to create a
   new reconstruction step; or
3. give a rigorous obstruction showing that even the near-full ambient core
   system has no further classification leverage, and stop the route.

## Prohibitions / stop rule

- Do **not** translate the problem to `C_m^2` one-change stability,
  double holes, Fano incidence or capacities.
- Do **not** reopen the progressive-block splice.
- Do not count the already-proved value-class saturation or transport identity
  as new S016 progress.
- If the analysis only rephrases S015-P1--P4, record the stop and do not
  schedule a cosmetic S017.

## Sources / computation

No broad source audit is requested. Perform a focused source check only if a
new near-full exchange theorem looks standard. Search non-hits are not
novelty/open-status evidence.

Small computation is allowed only for a precise finite incidence question and
must preserve code, parameters and results. Experimental evidence is not proof.

## Closeout

Create normal S016 records, synchronize authority, run
`scripts/check_authority.py` and warranted checks, commit to `main`, verify
the remote checkpoint and close under repository protocol. No outreach.
External review remains CLOSED absent newer committed substantive feedback.
