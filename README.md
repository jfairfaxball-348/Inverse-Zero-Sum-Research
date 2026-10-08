# Inverse Zero-Sum Research Programme

This repository documents a source-audited inverse zero-sum classification for the group \(C_3^3\), its kernel-checked Lean formalization, and a controlled route to registration and scholarly publication. **The live source of authority is [STATE.json](authoritative/STATE.json), read with [START_HERE.md](authoritative/START_HERE.md) and [AGENTS.md](AGENTS.md).**

## Verified mathematical result

The frozen `InverseZeroSum.Candidate3.frozenClassification : FrozenClassification` proves, for every length-24 positional sequence of nonzero elements in \(C_3^3\), an exact **if and only if**: the absence of two short nonempty zero-sum positional subsequences (length at most three) whose common positions have nonzero sum is equivalent to being, after a permutation of all 24 positions, three copies of an eight-term squarefree short-free sequence.

The original Lean 4.19 proof is validated on the established main checkpoint ([CI 37800488981](https://github.com/jfairfaxball-348/Inverse-Zero-Sum-Research/actions/runs/37800488981)); the owner-approval/documentation follow-up is validated on main ([CI 37805436021](https://github.com/jfairfaxball-348/Inverse-Zero-Sum-Research/actions/runs/37805436021)). This **proves the encoded mathematical statement under Lean's trust boundary**; it does not certify historical novelty, mathematical significance, independent human review, or Palomar registration. The deep S042 prior-art audit located no equivalent or stronger-implying theorem **within its documented search**, which is not proof of priority.

## Live Palomar compatibility and publication status — 8 October 2026

- **S058 complete:** official Palomar requirements preflight only, with no portal submission or registration.
- **Owner decision D-161 complete:** John Fairfax-Ball author and responsible-maintainer attribution confirmed; Lean/Mathlib migration and technical Palomar packaging authorised. The owner reserves actual portal registration.
- **S059 PARTIAL (technical compatibility complete; official verifier infrastructure blocked):** [draft PR #19](https://github.com/jfairfaxball-348/Inverse-Zero-Sum-Research/pull/19) ports the frozen theorem to Lean 4.35.0-rc2 with a public Challenge, Solution, Comparator and `formalization.yaml`. The upgraded `lake build`, no-placeholder scan and authority checker passed in [CI 37808305193](https://github.com/jfairfaxball-348/Inverse-Zero-Sum-Research/actions/runs/37808305193). **The upgraded Lean 4.35 build and complete local Palomar-template Comparator/NanoDa/con-ron checks PASSED** ([build/authority CI 37809075335](https://github.com/jfairfaxball-348/Inverse-Zero-Sum-Research/actions/runs/37809075335); [comparator CI 37809065386](https://github.com/jfairfaxball-348/Inverse-Zero-Sum-Research/actions/runs/37809065386)). **Official full reusable PalomarSubmission CI is still queued, NOT PASSED; the package is NOT registration-ready under the owner's specified gate.**
- **Official Palomar full mechanical preflight: not passed; infrastructure blocker B-015 active.** The pinned reusable workflow uses a Namespace-hosted runner. Its verification jobs have remained queued in this repository and **queueing is not success**. A supplementary GitHub-hosted workflow runs the official PalomarTemplate validation and bundled Comparator/NanoDa/con-ron replay; its result is separate and cannot stand in for the full official run.
- **No downstream publication action:** no Palomar submission or registration, manuscript, arXiv preprint, or E-JC submission has been performed. No independent CAND-03 pre-submission consultation is planned; E-JC's normal editorial/referee review is intended at its later submission stage.

**Gate order:** proved frozen Lean theorem → upgraded build and local independent Comparator PASSED → official Palomar full reusable CI pending a compatible Namespace runner (B-015) → owner Palomar registration → paper → arXiv preprint → E-JC submission. The present repository SHA is a technically checked **checkpoint**, not an authorized registration handoff while B-015 is active.

## Navigation and reproducibility

Read [START_HERE](authoritative/START_HERE.md) and [STATE](authoritative/STATE.json) first, then the [charter](authoritative/PROJECT_CHARTER.md), [roadmap](authoritative/ROADMAP.md), [target register](authoritative/TARGET_REGISTER.md), [publication register](authoritative/PUBLICATION_REGISTER.md), [claims and sources](authoritative/CLAIMS_AND_SOURCES.md), [decisions and blockers](authoritative/DECISIONS_AND_BLOCKERS.md), and [session ledger](authoritative/SESSION_LEDGER.md). The dated [session records](sessions/) preserve historical explorations and decisions and **are not live administrative instructions**.

Original baseline is Lean 4.19.0; the S059 port uses `leanprover/lean4:v4.35.0-rc2` with Mathlib pinned in `lake-manifest.json`. On a compatible Linux host, `lake build` checks the project and `bash scripts/verify-comparator.sh` runs the bundled trusted Comparator with NanoDa and con-ron (requires bubblewrap). `python3 scripts/check_authority.py` checks repository-record consistency, not mathematical novelty. The Palomar root metadata is `formalization.yaml` and the statement configuration is `comparator.json`.

Substantive AI assistance in mathematical exploration, Lean proof production, and documentation is explicitly disclosed in `formalization.yaml`; John Fairfax-Ball retains human author and maintainer responsibility. Root code and programme text are Apache-2.0 licensed; external papers remain independently owned.

