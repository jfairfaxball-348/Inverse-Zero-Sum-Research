# S051 CAND-03 length-15 nonzero-total-sum formalization brief

Status: READY.

S050/D49-01 closes the complete S040 `s=8` representative-swap branch in the
pinned Lean project:

`s8RepresentativeSwapInput : S8RepresentativeSwapInput`.

The next exact source interface on the recorded S040 proof spine is
`Length15NonzeroInput`.

## D50-01

Run exactly one Lean formalization unit. Formalize only
`Length15NonzeroInput`: every short-free positional sequence of length 15
over the frozen nonzero alphabet has nonzero total sum.

Use the source-faithful S040/2012 residual structure already recorded in
repository authority. It is acceptable to prove the stronger exact
length-15 support/multiplicity statement needed for this proposition, but the
unit must terminate once `length15NonzeroInput : Length15NonzeroInput` is
kernel-checked. Reuse existing transparent finite-group/cap infrastructure
where it materially reduces the trust surface; do not replace the source
interface by an opaque enumeration or catalogue.

Do **not** apply the new theorem to the S039 `s=9` certificate branch, do not
formalize the singleton-transition representative comparison, do not prove
`FrozenClassification`, and do not recheck or register on Palomar. If D50-01
succeeds, the next exact formalization unit may be only the S040 `s=9`
elimination consuming `s039PackingInput` and `length15NonzeroInput`. If it
does not succeed, preserve compiling progress and close PARTIAL with the single
earliest exact blocker.

No unchecked proof placeholder, `native_decide`, hidden oracle or opaque
catalogue is permitted. Run `lake build`, warranted focused checks, the
formal-source placeholder search and `scripts/check_authority.py`.

Palomar remains blocked until `FrozenClassification` itself has a proof term
and the complete pinned check suite passes. Owner order remains
Lean -> Palomar -> paper -> arXiv -> E-JC. Independent pre-submission external
review/consultation remains skipped for CAND-03; E-JC's ordinary
editorial/referee process remains planned. Xue Li Stage-1 remains
CAND-02-specific and reply pending.
