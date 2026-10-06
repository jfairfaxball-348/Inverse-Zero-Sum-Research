# S045 CAND-03 three-term length-19 formalization brief

Status: READY.

S044/D43-01 is PARTIAL. It kernel-checks the complete S039 packing construction
conditional on the two recorded source thresholds:

`s039PackingInput_of_thresholds :
  ThreeTerm19Input -> Eta17Input -> S039PackingInput`.

The single earliest exact blocker is `ThreeTerm19Input`.

## D44-01

Run exactly one Lean formalization unit. Prove the existing closed proposition

`ThreeTerm19Input := forall R : PosSeq 19,
  exists I : Finset (Fin 19), I.card = 3 /\ posSum R I = 0`

faithfully from the checked exponent-three source architecture for
`s(C_3^3)=19`.

Use the committed S039 source check: Gao--Hui--Li--Li--Qu--Zhong 2024 records
Property D for `C_3^r`, `eta(C_3^3)=17`, and the exponent-three consequence
`s(G)=eta(G)+2`. Formalize only what is needed to obtain the exact positional
length-19 three-term-zero-sum interface.

Do not assume `ThreeTerm19Input`, `S039PackingInput`, Property D, or the
numerical threshold as an unchecked axiom/postulate. Do not replace the proof
with an opaque orbit catalogue. Transparent finite supporting checks are
allowed only when they prove the same source interface under the recorded
trust boundary.

A completed unit may contain no `sorry`, `admit`, unchecked postulate or
hidden external oracle. Run `lake build`, focused checks, the
formal-source placeholder search and `scripts/check_authority.py`.

If D44-01 succeeds, promote only the next Lean proof-spine obligation
(`Eta17Input`); do not resume S040 or Palomar in the same session. If it does
not succeed, preserve compiling progress and close PARTIAL with the single
earliest exact formal blocker.

No paper, arXiv, E-JC submission or outreach is authorized. Palomar remains
blocked until `FrozenClassification` itself has a proof term and the full
pinned check suite passes.
