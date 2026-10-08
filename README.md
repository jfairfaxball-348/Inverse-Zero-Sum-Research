# Inverse Zero-Sum Research Programme

This repository documents a source-audited inverse zero-sum classification for the group \(C_3^3\), its kernel-checked Lean formalization, and a controlled route to registration and scholarly publication. **The live source of authority is [STATE.json](authoritative/STATE.json), read with [START_HERE.md](authoritative/START_HERE.md) and [AGENTS.md](AGENTS.md).**

## Verified mathematical result

The frozen `InverseZeroSum.Candidate3.frozenClassification : FrozenClassification` proves, for every length-24 positional sequence of nonzero elements in \(C_3^3\), an exact **if and only if**: the absence of two short nonempty zero-sum positional subsequences (length at most three) whose common positions have nonzero sum is equivalent to being, after a permutation of all 24 positions, three copies of an eight-term squarefree short-free sequence.

The original Lean 4.19 proof is validated on the established main checkpoint ([CI 37800488981](https://github.com/jfairfaxball-348/Inverse-Zero-Sum-Research/actions/runs/37800488981)); the owner-approval/documentation follow-up is validated on main ([CI 37805436021](https://github.com/jfairfaxball-348/Inverse-Zero-Sum-Research/actions/runs/37805436021)). This **proves the encoded mathematical statement under Lean's trust boundary**; it does not certify historical novelty, mathematical significance, independent human review, or Palomar registration. The deep S042 prior-art audit located no equivalent or stronger-implying theorem **within its documented search**, which is not proof of priority.

## Current Palomar and publication status — 2026-10-08

**Palomar formal verification passed.** The exact owner-submitted immutable CAND-03 source `c5f9e5e822020688c72b2a3bfacbf147a801e219` passed [official full mechanical verification 37813245157](https://github.com/PalomarRegistry/PalomarSubmission/actions/runs/37813245157), Lean 4.35, local Comparator, con-ron and NanoDa checks.

**Owner-reported next milestones:** Palomar automated editorial reviewer `codex:gpt-6-sol` found **no problems** (2026-10-08T17:55:22Z); its report explicitly says **no human read it**. At `2026-10-08T18:29:46Z` the owner requested permanent registration. **Registration is under way, not yet known merged; no permanent registry ID is claimed.** The private capability-bearing submission link is never reproduced here.

**S060 READY:** The next authorized task is [E-JC-first prewriting and publication-fit discovery](authoritative/S060_EJC_PUBLICATION_FIT_PREWRITING_DISCOVERY_BRIEF.md); the [copyable prompt](authoritative/NEXT_SESSION_PROMPT.md) is prepared. This is not manuscript drafting, arXiv posting or E-JC submission. E-JC requires an original, self-contained, substantial theorem and, where AI contributed to a proof, **human author checking, rewriting in their own words, and vouching for every step** before journal submission ([AI policy](https://www.combinatorics.org/ojs/index.php/eljc/about/index), [submission checklist](https://www.combinatorics.org/ojs/index.php/eljc/about/submissions)). Lean and Palomar machine checks do not replace the journal's human-proof condition. Nor does the bounded S042 prior-art search prove global originality.

**Owner-approved sequence:** Palomar registration → paper → arXiv preprint → Electronic Journal of Combinatorics. No permanent registration, paper, preprint, journal filing or human referee endorsement is presumed.

## Navigation and reproducibility

Read [START_HERE](authoritative/START_HERE.md) and [STATE](authoritative/STATE.json) first, then the [charter](authoritative/PROJECT_CHARTER.md), [roadmap](authoritative/ROADMAP.md), [target register](authoritative/TARGET_REGISTER.md), [publication register](authoritative/PUBLICATION_REGISTER.md), [claims and sources](authoritative/CLAIMS_AND_SOURCES.md), [decisions and blockers](authoritative/DECISIONS_AND_BLOCKERS.md), and [session ledger](authoritative/SESSION_LEDGER.md). The dated [session records](sessions/) preserve historical explorations and decisions and **are not live administrative instructions**.

Original baseline is Lean 4.19.0; the S059 port uses `leanprover/lean4:v4.35.0-rc2` with Mathlib pinned in `lake-manifest.json`. On a compatible Linux host, `lake build` checks the project and `bash scripts/verify-comparator.sh` runs the bundled trusted Comparator with NanoDa and con-ron (requires bubblewrap). `python3 scripts/check_authority.py` checks repository-record consistency, not mathematical novelty. The Palomar root metadata is `formalization.yaml` and the statement configuration is `comparator.json`.

Substantive AI assistance in mathematical exploration, Lean proof production, and documentation is explicitly disclosed in `formalization.yaml`; John Fairfax-Ball retains human author and maintainer responsibility. Root code and programme text are Apache-2.0 licensed; external papers remain independently owned.

