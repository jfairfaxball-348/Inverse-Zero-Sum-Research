# S050 CAND-03 s=8 representative-swap formalization brief

Status: READY.

S049/D48-01 closes the exact length-16 source interface in the pinned Lean
project:

`length16SumZeroInput : Length16SumZeroInput`.

The S039 packed-atom interface is already closed by
`s039PackingInput : S039PackingInput`. The next exact obligation on the
recorded S040 proof spine is the `s=8` representative-swap elimination.

## D49-01

Run exactly one Lean formalization unit. Formalize only the S040 `s=8`
branch from the existing S039 packing certificate and
`length16SumZeroInput`.

Preserve the universal arbitrary-representative quantifier. For a packing
certificate with `s = 8`, reindex each 16-position representative-deletion
residual as a `PosSeq 16`, apply the closed length-16 sum-zero theorem, and
compare two representative choices that differ in one packed block. Deduce
that every selectable value in each packed block is equal. Therefore no
two-term zero-sum packed block can occur, so the only `s=8` signature is
`(l,s,r)=(8,8,0)`.

Package exactly the resulting structural output needed downstream: the
`s=8` branch has the `U^3` form with a squarefree short-free length-8
core, or an equivalent bounded proposition that can be consumed by the final
classification proof. Do not enter the `s=9` branch.

Do **not** prove `Length15NonzeroInput`, do not formalize the length-15
`2^7 1` singleton argument, do not close `FrozenClassification`, and do
not recheck or register on Palomar. If D49-01 succeeds, promote only
`Length15NonzeroInput`, the next exact source interface on the recorded S040
spine. If it does not, preserve compiling progress and close PARTIAL with the
single earliest exact blocker.

No unchecked proof placeholder, `native_decide`, hidden oracle or opaque
catalogue is permitted. Run `lake build`, warranted focused checks, the
formal-source placeholder search and `scripts/check_authority.py`.

Palomar remains blocked until `FrozenClassification` itself has a proof term
and the complete pinned check suite passes. Owner order remains Lean -> Palomar
-> paper -> arXiv -> E-JC. Independent pre-submission external
review/consultation remains skipped for CAND-03; E-JC's ordinary
editorial/referee process remains planned.
