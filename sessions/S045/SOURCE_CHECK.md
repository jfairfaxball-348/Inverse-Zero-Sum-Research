# S045 source-interface check

Date: 2026-10-06.

S045 introduced no new literature-status claim. It used the committed S039
source check as the authority for the intended interface.

The checked Gao--Hui--Li--Li--Qu--Zhong 2024 preliminaries record Property D
for `C_3^r`, `eta(C_3^3)=17`, and the exponent-three consequence
`s(G)=eta(G)+2`; hence the published architecture gives
`s(C_3^3)=19`. S045 formalizes only the exact positional consequence needed
by S039:

> every length-19 `PosSeq` has a three-position zero sum.

Rather than import Property D or the numerical threshold as an unchecked
source theorem, the Lean proof establishes this interface directly from
transparent finite affine geometry in the same group. This is compatible with
the checked source statement and narrows the trust boundary; it does not claim
to formalize the published Property-D proof itself.

The next recorded source interface, `Eta17Input`, remains unproved and is not
silently inherited from the same literature statement.

This source-interface check does not establish novelty, previous openness,
publication significance or external review.
