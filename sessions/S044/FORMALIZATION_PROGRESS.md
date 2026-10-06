# S044 formalization progress

Date: 2026-10-06.
Unit: D43-01.
Status: **PARTIAL — the S039 packing construction is kernel-checked conditional on the two recorded source-threshold propositions; the first threshold still lacks a proof term.**

## Completed formal work

`InverseZeroSum/Candidate3.lean` now proves the following without unchecked
placeholders:

- transport of short zero sums along injective positional maps;
- minimality of short zero-sum blocks over the nonzero exponent-three alphabet;
- distinct short zero-sum blocks are disjoint under
  `AvoidsInnerJointPair`;
- the finite family of all short zero-sum blocks is therefore a transparent
  maximal packing, with no orbit catalogue;
- representative selections from pairwise-disjoint blocks have the expected
  cardinality;
- `ThreeTerm19Input` implies the source bound used for `l >= 6`;
- `Eta17Input` implies the source bound used for `s >= 8`;
- `s039PackingInput_of_thresholds :
    ThreeTerm19Input -> Eta17Input -> S039PackingInput`.

The last theorem constructs the exact `S039PackingCertificate`, enumerates
three-blocks before two-blocks, derives exactly the four signatures
`(6,8,2)`, `(7,8,1)`, `(8,8,0)`, `(6,9,0)`, and proves the universal
property that **every** one-representative-per-block deletion leaves a
short-free residual.

## Exact formal blocker

The closed proposition `S039PackingInput` is still not proved because its
first required source-threshold proposition has no proof term:

`ThreeTerm19Input := forall R : PosSeq 19, exists I, I.card = 3 /\ posSum R I = 0`.

This is the exact `s(C_3^3)=19` consequence used first in the checked S039
packing proof. No theorem providing this interface was located in the pinned
project/mathlib dependency, and S044 does not import it as an axiom,
postulate or hidden oracle.

`Eta17Input` remains a later source proof obligation, but it is not promoted
as the current blocker because `ThreeTerm19Input` is earlier in the proved
packing spine.

Palomar remains blocked because `FrozenClassification` still has no proof
term.
