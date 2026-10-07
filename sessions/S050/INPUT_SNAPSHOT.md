# S050 input snapshot

Date: 2026-10-07.
Session: S050.
Unit: D49-01.
Incoming authority: `main` at `f8740ddd498baedd2df5b4c9261cf0e16542ed80`.

## Reconciliation

Live `main` was pinned before work and exactly matches the previous verified
checkpoint supplied for S050. There are no intervening commits to reconcile.
The recursive tree contains no `sessions/S050` record at the incoming
checkpoint; only the authoritative S050 brief exists, so S050 is unique.

The committed machine state, start-here record, S049 closeout and S050 brief
agree that S049 is COMPLETED and D49-01 is the sole authorized continuation.
CAND-03 remains frozen at the internally proved and independently reverified
classification; formalization is still partial because `FrozenClassification`
has no proof term.

## Required authority read

S050 read `AGENTS.md`, `authoritative/START_HERE.md`, the machine state,
project charter, session protocol and closeout template, current
decisions/blockers, roadmap, session ledger, target/publication/reviewer
registers, claims/sources and failure/lesson ledger. It also read all
owner-named S039/S040 and S043--S049 records and
`authoritative/S050_CANDIDATE_3_S8_REPRESENTATIVE_SWAP_FORMALIZATION_BRIEF.md`.

The pinned formal source `InverseZeroSum/Candidate3.lean` was read through
`s039PackingInput : S039PackingInput` and
`length16SumZeroInput : Length16SumZeroInput`, including the exact
`S039PackingCertificate` universal arbitrary-representative residual
quantifier.

## Frozen scope

D49-01 is restricted to the S040 `s=8` representative-swap elimination.
It must faithfully reindex each 16-position representative-deletion residual,
apply `length16SumZeroInput`, compare choices differing in one block, force
every packed block to be constant, exclude 2-blocks, and package the
`(8,8,0)` structural output needed downstream.

The accepted bounded packaging may retain the existing packing certificate and
record the equivalent certificate-level normal form (`l=8`, `r=0`, every
packed block constant), because the certificate already carries the universal
short-free residual property needed to recover the `U^3` branch downstream.

D49-01 must not enter the `s=9` argument, prove
`Length15NonzeroInput`, prove `FrozenClassification`, recheck/register on
Palomar, or begin publication-stage work.

## Trust and validation boundary

No unchecked proof placeholder, `native_decide`, hidden oracle or opaque
catalogue is permitted. The stopped S048 global normalized completion
enumeration remains absent. Validation must use the pinned Lean 4.19.0 /
mathlib clean runner and pass `lake build`, the formal-source placeholder
search and `scripts/check_authority.py`.
