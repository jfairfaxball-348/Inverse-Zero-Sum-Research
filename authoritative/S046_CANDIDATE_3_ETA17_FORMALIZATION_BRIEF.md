# S046 CAND-03 eta-17 formalization brief

Status: READY.

S045/D44-01 is completed. The pinned project now proves

`threeTerm19Input : ThreeTerm19Input`.

Together with the S044 conditional packing theorem, the single earliest exact
formal source interface is now `Eta17Input`.

## D45-01

Run exactly one Lean formalization unit. Prove the existing closed proposition

`Eta17Input := forall R : PosSeq 17,
  exists I : Finset (Fin 17), ShortZero R I`

faithfully from the checked ordinary `eta(C_3^3)=17` source architecture.
Use the committed S039/S040 source checks, which record the exact numerical
statement in the checked 2024 and 2012 sources.

Do not assume `Eta17Input`, `S039PackingInput`, the numerical eta threshold,
or an equivalent statement as an unchecked axiom/postulate. Reuse the S045
finite model/cap lemmas only when they transparently prove the same source
interface. Do not replace the proof with an opaque orbit catalogue or hidden
native oracle.

A completed unit may contain no `sorry`, `admit`, unchecked postulate,
`native_decide` or external proof oracle. Run `lake build`, focused checks,
the formal-source placeholder search and `scripts/check_authority.py`.

If D45-01 succeeds, promote only the next exact Lean proof-spine obligation.
Do not resume or close the S039 packing theorem in the same unit, enter S040,
or perform Palomar/publication actions. If it does not succeed, preserve
compiling progress and close PARTIAL with the single earliest exact blocker.

Palomar remains blocked until `FrozenClassification` itself has a proof term
and the complete pinned check suite passes. No paper, arXiv, E-JC submission or
outreach is authorized.
