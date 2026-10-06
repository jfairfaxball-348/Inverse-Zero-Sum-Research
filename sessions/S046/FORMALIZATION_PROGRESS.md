# S046 formalization progress

Date: 2026-10-06.
Unit: D45-01.
Status: **COMPLETED — `Eta17Input` has a closed kernel-checked proof term; `S039PackingInput` is the next exact formal obligation.**

## Completed formal work

`InverseZeroSum/Candidate3.lean` now proves

`eta17Input : Eta17Input`.

For a hypothetical short-free length-17 positional sequence, the proof transports the support to the existing finite tuple model of `F_3^3`. The support is a cap because a three-distinct-point zero sum would be a short zero sum. Short-freeness also excludes opposite pairs. Since the alphabet is nonzero, adjoining the origin therefore preserves the cap property.

S045 already kernel-checks that every cap in this model has cardinality at most nine. Hence the original support has cardinality at most eight. A support value can occur at most twice, since three equal terms sum to zero in exponent three. Seventeen positions would therefore require more than sixteen available occurrences, a contradiction.

The proof uses only the existing transparent S045 finite-geometry certificate plus a tiny ordinary `decide` check that the finite tuple group has no nonzero element satisfying `x+x=0`. It uses no `native_decide`, threshold axiom, postulate, opaque orbit catalogue or external oracle.

## Next exact blocker

The previously proved theorem remains

`s039PackingInput_of_thresholds : ThreeTerm19Input -> Eta17Input -> S039PackingInput`.

Both source interfaces now have closed proof terms, `threeTerm19Input` and `eta17Input`. D45-01 deliberately does not close `S039PackingInput`; the next exact proof-spine obligation is that closed proposition itself.

`FrozenClassification` still has no proof term. Palomar remains blocked.
