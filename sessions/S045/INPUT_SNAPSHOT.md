# S045 input snapshot

Date: 2026-10-06.
Session: S045.
Unit: D44-01.
Incoming authority: `main` at `446ac0d1830691cd0ea27d8fd39c48a35bb789fa`.

## Reconciliation

Live `main` was pinned before work. The committed entry point and S045 brief agree with the owner kickoff: S044 is PARTIAL, S045 is READY, and `ThreeTerm19Input` is the single earliest exact formal blocker. Code search found no existing S045 record, and branch search found no S045 branch, so S045 is unique at the incoming checkpoint.

## Required authority read

S045 read `AGENTS.md`, `authoritative/START_HERE.md`, the current project authority required by the entry point and session protocol, the specified S039--S044 proof/source/validation/closeout records, and `authoritative/S045_CANDIDATE_3_THREE_TERM_19_FORMALIZATION_BRIEF.md`.

## Frozen scope

D44-01 is restricted to proving the existing closed proposition `ThreeTerm19Input` in the pinned Lean 4.19.0 + mathlib project. The proof must not assume `ThreeTerm19Input`, `S039PackingInput`, Property D, or the numerical threshold as an unchecked proposition. Transparent finite supporting checks are permitted only inside the same kernel-checked trust boundary.

`Eta17Input`, the S039 packing resumption, S040, Palomar, manuscript, arXiv, E-JC submission and outreach remain outside this unit.
