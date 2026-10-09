# Inverse Zero-Sum Research Programme

This repository documents a source-audited inverse zero-sum classification for the group \(C_3^3\), its kernel-checked Lean formalization, and a controlled route to registration and scholarly publication. **The live source of authority is [STATE.json](authoritative/STATE.json), read with [START_HERE.md](authoritative/START_HERE.md) and [AGENTS.md](AGENTS.md).**

## Verified mathematical result

The frozen `InverseZeroSum.Candidate3.frozenClassification : FrozenClassification` proves, for every length-24 positional sequence of nonzero elements in \(C_3^3\), an exact **if and only if**: the absence of two short nonempty zero-sum positional subsequences (length at most three) whose common positions have nonzero sum is equivalent to being, after a permutation of all 24 positions, three copies of an eight-term squarefree short-free sequence.

The original Lean 4.19 proof is validated on the established main checkpoint ([CI 37800488981](https://github.com/jfairfaxball-348/Inverse-Zero-Sum-Research/actions/runs/37800488981)); the owner-approval/documentation follow-up is validated on main ([CI 37805436021](https://github.com/jfairfaxball-348/Inverse-Zero-Sum-Research/actions/runs/37805436021)). This **proves the encoded mathematical statement under Lean's trust boundary**; it does not certify historical novelty, mathematical significance, or journal acceptance. The deep S042 prior-art audit located no equivalent or stronger-implying theorem **within its documented search**, which is not proof of priority.

## Paper and publication status - 2026-10-09

**S061 complete:** [read the paper](paper/main.pdf), edit [the LaTeX](paper/main.tex)
and [bibliography](paper/references.bib), or consult [build instructions](paper/README.md)
and [source-to-proof consistency](paper/SOURCE_AND_PROOF_CHECK.md). The manuscript
contains the full inverse proof, six worked examples and five vector figures.
It credits the 2024 threshold/construction/deletion method and the 2012 residual
results, including the proof of Lemma 27(3).

**Palomar registered:** [PALOMAR-2026-10-09-000011 v1](https://palomar-registry.org/entry.html?id=PALOMAR-2026-10-09-000011&version=1),
immutable source `c5f9e5e822020688c72b2a3bfacbf147a801e219`,
[official full mechanical verification 37813245157](https://github.com/PalomarRegistry/PalomarSubmission/actions/runs/37813245157) PASS.
The proof files are unchanged by S061.

**S062 release package PREPARED:** [arXiv author worksheet](paper/ARXIV_RELEASE.md), [exact metadata](paper/arxiv-metadata.json), and [S062 source-policy/validation records](sessions/S062/CLOSEOUT.md). The hosted Manuscript validation workflow creates a minimal LaTeX archive and compiles it in a clean directory. **No arXiv posting or E-JC submission**. Author-only release decision **B-016 ACTIVE**: choose the paper's arXiv licence, approve final public posting, and check actual account/endorsement requirements. No next-session prompt while that action is pending. Preserve **Palomar registration → paper → arXiv preprint → E-JC**. A source search non-hit does not certify global novelty; substantive AI assistance is disclosed in the paper.

## Navigation and reproducibility

Read [START_HERE](authoritative/START_HERE.md) and [STATE](authoritative/STATE.json) first, then the [charter](authoritative/PROJECT_CHARTER.md), [roadmap](authoritative/ROADMAP.md), [target register](authoritative/TARGET_REGISTER.md), [publication register](authoritative/PUBLICATION_REGISTER.md), [claims and sources](authoritative/CLAIMS_AND_SOURCES.md), [decisions and blockers](authoritative/DECISIONS_AND_BLOCKERS.md), and [session ledger](authoritative/SESSION_LEDGER.md). The dated [session records](sessions/) preserve historical explorations and decisions and **are not live administrative instructions**.

Original baseline is Lean 4.19.0; the S059 port uses `leanprover/lean4:v4.35.0-rc2` with Mathlib pinned in `lake-manifest.json`. On a compatible Linux host, `lake build` checks the project and `bash scripts/verify-comparator.sh` runs the bundled trusted Comparator with NanoDa and con-ron (requires bubblewrap). `python3 scripts/check_authority.py` checks repository-record consistency, not mathematical novelty. The Palomar root metadata is `formalization.yaml` and the statement configuration is `comparator.json`.

Substantive AI assistance in mathematical exploration, Lean proof production, and documentation is explicitly disclosed in `formalization.yaml`; John Fairfax-Ball retains human author and maintainer responsibility. Root code and programme text are Apache-2.0 licensed; external papers remain independently owned.

