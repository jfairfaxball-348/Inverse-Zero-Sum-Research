# S046 input snapshot

Date: 2026-10-06.
Session: S046.
Unit: D45-01.
Incoming authority: `main` at `a9d8834dbae96901b42da20b743a25d67f0bce9e`.

## Reconciliation

Live `main` was pinned before work. The committed entry point and S046 brief agree with the owner kickoff: S045 is COMPLETED, S046 is READY, and `Eta17Input` is the single earliest exact formal blocker. Default-branch search found no committed S046 record, so S046 is unique at the incoming checkpoint.

## Required authority read

S046 read `AGENTS.md`, `authoritative/START_HERE.md`, the project authority required by the entry point and session protocol, all S039--S045 records named in the owner kickoff, and `authoritative/S046_CANDIDATE_3_ETA17_FORMALIZATION_BRIEF.md`.

## Frozen scope

D45-01 is restricted to proving the existing closed proposition `Eta17Input` in the pinned Lean 4.19.0 + mathlib project. It may reuse S045 finite geometry only transparently. It must not assume the numerical eta threshold, close `S039PackingInput`, enter the S040 proof spine, or perform Palomar/publication/outreach work.

## Validation staging

A dedicated `s046-d45-01` branch and draft PR are used for clean-run validation before any fast-forward publication to `main`.
