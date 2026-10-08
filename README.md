# Inverse Zero-Sum Research Programme

This repository documents a source-audited inverse zero-sum classification for the group \(C_3^3\), its kernel-checked Lean formalization, and a controlled route to registration and scholarly publication. **The live source of authority is [STATE.json](authoritative/STATE.json), read with [START_HERE.md](authoritative/START_HERE.md) and [AGENTS.md](AGENTS.md).**

## Verified mathematical result

The frozen `InverseZeroSum.Candidate3.frozenClassification : FrozenClassification` proves, for every length-24 positional sequence of nonzero elements in \(C_3^3\), an exact **if and only if**: the absence of two short nonempty zero-sum positional subsequences (length at most three) whose common positions have nonzero sum is equivalent to being, after a permutation of all 24 positions, three copies of an eight-term squarefree short-free sequence.

The original Lean 4.19 proof is validated on the established main checkpoint ([CI 37800488981](https://github.com/jfairfaxball-348/Inverse-Zero-Sum-Research/actions/runs/37800488981)); the owner-approval/documentation follow-up is validated on main ([CI 37805436021](https://github.com/jfairfaxball-348/Inverse-Zero-Sum-Research/actions/runs/37805436021)). This **proves the encoded mathematical statement under Lean's trust boundary**; it does not certify historical novelty, mathematical significance, independent human review, or Palomar registration. The deep S042 prior-art audit located no equivalent or stronger-implying theorem **within its documented search**, which is not proof of priority.

## Live Palomar status — 8 October 2026

- **Exact encoded theorem proved:** The unchanged CAND-03 classification has passed Lean 4.35.0-rc2 `lake build` and repository authority checks ([final source commit CI 37811409022](https://github.com/jfairfaxball-348/Inverse-Zero-Sum-Research/actions/runs/37811409022)).
- **Independent local verification passed:** The statement-level PalomarTemplate Comparator and independent con-ron, NanoDa and standard Lean kernels passed on that identical pinned source commit ([CI 37811408881](https://github.com/jfairfaxball-348/Inverse-Zero-Sum-Research/actions/runs/37811408881)).
- **Owner submitted the fixed commit to Palomar:** On 8 October 2026 the owner supplied a private portal submission-status link for commit `c5f9e5e822020688c72b2a3bfacbf147a801e219`. **Intake is owner-reported; the Palomar portal's internal verification result has not been inspected or confirmed.** The private status-link token/fragment is intentionally *not stored* in this repository.
- **Awaiting Palomar:** Verification, any editorial outcome and any registry-registration choice are **pending/unknown**, not successful or approved. The separate repository-triggered [full PalomarSubmission workflow](https://github.com/jfairfaxball-348/Inverse-Zero-Sum-Research/actions/runs/37811409532) has a passed profile/setup step but its required Namespace-hosted `verify` job remains **QUEUED**. This is distinct from the owner's portal submission and its possible independent verification process.
- **B-015 remains open until a trusted official full verification outcome is actually known.** No Palomar registry ID or permanent registration is claimed. No manuscript, arXiv preprint or E-JC submission has begun; independent CAND-03 pre-submission consultation remains skipped, with ordinary E-JC editorial/referee review intended later.

**Provenance rule:** The owner submitted the immutable `c5f9e5e822020688c72b2a3bfacbf147a801e219` commit. Subsequent documentation-only commits on `main` do **not** replace that submitted source or imply a new Palomar submission.

**Order:** Lean and local independent kernels passed → owner portal intake reported → Palomar verification/outcome pending → owner decides on registration → paper → arXiv → E-JC.

## Navigation and reproducibility

Read [START_HERE](authoritative/START_HERE.md) and [STATE](authoritative/STATE.json) first, then the [charter](authoritative/PROJECT_CHARTER.md), [roadmap](authoritative/ROADMAP.md), [target register](authoritative/TARGET_REGISTER.md), [publication register](authoritative/PUBLICATION_REGISTER.md), [claims and sources](authoritative/CLAIMS_AND_SOURCES.md), [decisions and blockers](authoritative/DECISIONS_AND_BLOCKERS.md), and [session ledger](authoritative/SESSION_LEDGER.md). The dated [session records](sessions/) preserve historical explorations and decisions and **are not live administrative instructions**.

Original baseline is Lean 4.19.0; the S059 port uses `leanprover/lean4:v4.35.0-rc2` with Mathlib pinned in `lake-manifest.json`. On a compatible Linux host, `lake build` checks the project and `bash scripts/verify-comparator.sh` runs the bundled trusted Comparator with NanoDa and con-ron (requires bubblewrap). `python3 scripts/check_authority.py` checks repository-record consistency, not mathematical novelty. The Palomar root metadata is `formalization.yaml` and the statement configuration is `comparator.json`.

Substantive AI assistance in mathematical exploration, Lean proof production, and documentation is explicitly disclosed in `formalization.yaml`; John Fairfax-Ball retains human author and maintainer responsibility. Root code and programme text are Apache-2.0 licensed; external papers remain independently owned.

