# S053 CAND-03 s=9 elimination formalization brief

Status: READY.

S052/D51-01 is COMPLETED. The pinned Lean project now proves
`length15NonzeroInput : Length15NonzeroInput` in addition to
`s039PackingInput`, `length16SumZeroInput`, and
`s8RepresentativeSwapInput`.

## D52-01

Run exactly one Lean formalization unit. Formalize only the remaining S040
`s=9` packing elimination. Work certificate-level from an
`S039PackingCertificate S` with `c.s = 9`, use the universal
representative-deletion residual property and the closed
`length15NonzeroInput`, and encode the already-verified S040 singleton
transition argument.

The mathematical transition boundary is fixed by S040/S041: every short-free
length-15 residual has multiplicity profile `2^7 1`, the singleton is the
negative of the residual total, and changing one representative in a
nonconstant block leaves only the two affected-count transitions
`(0,1)->(1,0)` and `(1,2)->(2,1)`. The first forces the two selected
values to agree; the second forces the complementary representative sum to
vanish, which is contradicted by varying a second nonconstant two-block.
Therefore the `s=9` signature is impossible.

Prefer the smallest transparent certificate interface, for example a proposition
asserting that every S039 certificate with `s=9` is impossible. Stop as soon
as that `s=9` elimination theorem is kernel-checked.

Do not prove `FrozenClassification` in D52-01, do not recheck or register on
Palomar, and do not begin manuscript/preprint/submission work. If D52-01
succeeds, promote only the final composition of the already-closed packing,
`s=8`, and `s=9` branches into `FrozenClassification`. If it does not,
preserve compiling progress and close PARTIAL with the single earliest exact
blocker.

No unchecked proof placeholder, `native_decide`, hidden oracle or opaque
catalogue is permitted. Run `lake build`, warranted focused checks, the
formal-source placeholder search and `scripts/check_authority.py`.

Palomar remains blocked until `FrozenClassification` itself has a proof term
and the complete pinned check suite passes. Owner order remains
Lean -> Palomar -> paper -> arXiv -> E-JC. Independent pre-submission external
review/consultation remains skipped for CAND-03; E-JC's ordinary
editorial/referee process remains planned. Xue Li Stage-1 remains
CAND-02-specific and reply pending.
