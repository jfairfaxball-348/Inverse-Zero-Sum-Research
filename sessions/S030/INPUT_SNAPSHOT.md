# S030 input snapshot

Date: 2026-10-05.

## Incoming authority

- Repository: `jfairfaxball-348/Inverse-Zero-Sum-Research`.
- Authority branch: `main`.
- Incoming SHA: `41ca38cd5c0df3cd6dc85afc9666ac715155b119`.
- Incoming tree: `86b787ce126094c45e6264106fc7ffc03eb6fcc2`.
- Reconciliation: live `main` exactly matched the supplied S029 checkpoint; no intervening commits were present.
- Session uniqueness: `sessions/S030/CLOSEOUT.md` did not exist, no S030-named branch was present, and the checkpoint ledger ended at S029. S030 is unique.

## Required authority read

Read before mathematics:

- `AGENTS.md`;
- `authoritative/START_HERE.md`;
- `authoritative/STATE.json`, `PROJECT_CHARTER.md`, `DECISIONS_AND_BLOCKERS.md`,
  `ROADMAP.md`, `SESSION_LEDGER.md`, `TARGET_REGISTER.md`,
  `PUBLICATION_REGISTER.md`, `REVIEWER_REGISTER.md`,
  `CLAIMS_AND_SOURCES.md`, and `FAILURE_AND_LESSON_LEDGER.md`;
- `docs/SESSION_PROTOCOL.md` and `docs/CLOSEOUT_TEMPLATE.md`;
- `sessions/S029/EVEN_COMPLETION_SHELL.md`,
  `sessions/S029/SOURCE_CHECK.md`, and `sessions/S029/CLOSEOUT.md`;
- `sessions/S028/EVEN_BUCKET_MEMBER_COMPATIBILITY.md`;
- `sessions/S027/EVEN_BUCKET_COSETS.md`;
- `sessions/S026/DOUBLING_FIBRE_GEOMETRY.md`;
- `sessions/S025/CANONICAL_KERNEL_BUCKETS.md`;
- `authoritative/S030_CANDIDATE_5_EVEN_RESIDUAL_LINE_COMPATIBILITY_BRIEF.md`.

CAND-05 is the selected target. CAND-02 remains historical and paused.
Target and publication gates are OPEN; mathematical investigation is OPEN;
external review is CLOSED; active owner blockers are NONE.

## Bounded unit

Run D29-01 only for even `m>=4`, continuing to condition on the same
hypothetical simultaneous-positive nonzero `L`-coset and the same unique
zero-weight lift `u=x_ell`.

For the three nonzero `L`-cosets `C_i={q_i,q_i+ell}`, recheck that each
canonical residual triple `x_{q_i} x_{q_i+ell} u` has sum in the exact
S029 shell `E(K)`, and then test only whether the common `u` makes those
three shell conditions incompatible.

No global `k_q/r_q` solution, seven-lift classification, other four Fano
residual lines, odd-modulus analysis, quotient-automorphism normalization,
CAND-02 route, existence claim or full CAND-05 classification is authorized.
