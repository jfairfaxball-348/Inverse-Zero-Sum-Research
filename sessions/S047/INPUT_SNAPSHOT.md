# S047 input snapshot

Date: 2026-10-06.
Session: S047.
Unit: D46-01.
Incoming authority: `main` at `6390ed51d2b268555a90076844c8ba5e5cf5d31d`.

## Reconciliation

Live `main` was pinned before work. The committed entry point, machine state and S047 brief agree with the owner kickoff: S046 is COMPLETED, S047 is READY, and `S039PackingInput` is the single earliest exact formal obligation. Default-branch search found no committed S047 session record and branch search found no pre-existing S047 branch before staging, so S047 is unique at the incoming checkpoint.

## Required authority read

S047 read `AGENTS.md`, `authoritative/START_HERE.md`, the project authority required by the entry point and session protocol, the S039/S040 records named in the owner kickoff, the S043--S046 formalization records named there, and `authoritative/S047_CANDIDATE_3_S039_PACKING_CLOSURE_BRIEF.md`.

## Frozen scope

D46-01 is restricted to closing the existing proposition `S039PackingInput` from `s039PackingInput_of_thresholds`, `threeTerm19Input` and `eta17Input`. It must not reprove the packing architecture, change the frozen positional theorem, enter the S040 representative-swap/residual spine, or perform Palomar/publication/outreach work.

## Validation staging

A dedicated `s047-d46-01` branch and draft PR are used for clean-run validation before any fast-forward publication to `main`.
