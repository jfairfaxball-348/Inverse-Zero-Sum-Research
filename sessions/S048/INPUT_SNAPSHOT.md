# S048 input snapshot

Date: 2026-10-06.
Session: S048.
Unit: D47-01.
Incoming authority: `main` at `7b1a1a8b252d6dd97a836002a99e2af80c58dbc4`.

## Reconciliation

Live `main` was pinned before work. The committed entry point, machine state,
S047 closeout and S048 brief agree with the owner kickoff: S047 is COMPLETED,
S048 is READY, and `Length16SumZeroInput` is the single earliest exact formal
obligation. `sessions/S048` did not exist at the incoming checkpoint and
branch search found no pre-existing S048 branch, so S048 is unique before the
dedicated validation branch was created.

## Required authority read

S048 read `AGENTS.md`, `authoritative/START_HERE.md`,
`authoritative/STATE.json`, the project charter, session protocol and closeout
template, current decisions/blockers, roadmap, session ledger, target,
publication and reviewer registers, claims/sources and failure/lesson ledger.
It also read the owner-named S039/S040 records, S043 semantic/formalization
records, S044--S046 formalization/validation/closeout records, all named S047
records, and
`authoritative/S048_CANDIDATE_3_LENGTH16_SUMZERO_FORMALIZATION_BRIEF.md`.

## Frozen scope

D47-01 is restricted to proving the existing proposition

`Length16SumZeroInput := ∀ R : PosSeq 16, ShortFree R → totalSum R = 0`

faithfully in the pinned Lean project. It must preserve the frozen positional
semantics and stop before the S040 representative-swap elimination. It must not
also close `Length15NonzeroInput`, prove `FrozenClassification`, enter
Palomar, or begin paper/arXiv/E-JC/outreach work.

## Trust and validation boundary

No unchecked proof placeholder, postulate, `native_decide`, hidden external
oracle or opaque orbit catalogue is permitted. Transparent bounded finite
checks may be used only with their finite domain made explicit. Validation uses
the repository-connected clean GitHub Actions runner because the local sandbox
does not contain the pinned Lean toolchain. The terminal checkpoint must pass
`lake build`, the formal-source placeholder scan and
`scripts/check_authority.py`.
