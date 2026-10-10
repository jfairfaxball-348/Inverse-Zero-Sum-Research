# S063 entry snapshot

Date: 2026-10-10. Unit: D62-01 (setup/planning only).

## Pinned authority

- Incoming live `main`: `496cefb8e0672d069991f759adbfbc954b70f471`
  (`S062: prepare clean arXiv source release package and record owner
  publication gate`). This equals the S062 outgoing checkpoint and the SHA
  named in the S063 kickoff. No intervening commits.
- Working branch: `claude/general-rank-extension-setup-ve7yg2`, created by
  the session environment at the same SHA (zero commits ahead of `main` at
  entry).
- `python3 scripts/check_authority.py` at entry: PASS (153 local links).

## Reconciliation with the S062 closeout

S062 closed COMPLETED (preparation) with owner blocker **B-016** active,
`next_prompt_status=SUPPRESSED_OWNER_BLOCKER`, `next_session=null`,
`next_brief=null` and no live `authoritative/NEXT_SESSION_PROMPT.md`. The
S063 kickoff is not an S062 prompt. It is a new explicit owner direction
(John, 2026-10-10) that resolves B-016 by owner decision and opens a new
staged route. Because no ready prompt existed, nothing stale had to be
superseded. The owner direction is recorded as **D-174** before anything
relies on it.

## Uniqueness

- `STATE.json` session checkpoints end at S062. There is no S063 ledger row and
  no `sessions/S063/` record before this session.
- The remote branch list has no S063 branch other than this session's
  designated branch, which was identical to `main` at entry.
- No parallel or interrupted S063 was found.

## Authority read

`AGENTS.md`; `authoritative/START_HERE.md`; `STATE.json`;
`PROJECT_CHARTER.md`; `docs/SESSION_PROTOCOL.md`;
`docs/CLOSEOUT_TEMPLATE.md`; `DECISIONS_AND_BLOCKERS.md` (including D-117–D-131,
D-157–D-173 and B-016); `ROADMAP.md`; `SESSION_LEDGER.md`; `TARGET_REGISTER.md`;
`PUBLICATION_REGISTER.md`; `REVIEWER_REGISTER.md`; `CLAIMS_AND_SOURCES.md`
(including C-190–C-199, C-254–C-261 and ZS-71–ZS-81);
`FAILURE_AND_LESSON_LEDGER.md` (through FL-122); the S039 source check and
reassessment; the S040 proof; the S041 verification and literature audit; the
S042 audit, search log and brief (PA taxonomy); the S043 semantic
correspondence; the S057/S059 formal records; `Challenge.lean`,
`comparator.json` and `formalization.yaml`; the S061 manuscript
(`paper/main.tex`); the S062 brief, closeout and snapshot.

## Facts carried into S063 from committed records

- `sessions/S039/SOURCE_CHECK.md` records that Gao et al. 2024 (ZS-72)
  Lemma 3.3(3) gives `eta^N(C_3^r)=3(eta(C_3^r)-1)/2+1` for general `r`, and
  Lemma 2.4 gives `eta*=eta^N`. This is a **prior-art lead** for Claim A in
  Stage 1. S063 does not inspect it further.
- ZS-73 (Hui–Zhong 2026) is recorded as treating `C_n^2` sequences of length
  `3n-1=eta^N(C_n^2)-2`. Stage 1 must reconcile this exact length with the
  candidate claims at `r=2` (see the S064 brief).
- C-193 / D-129 record that affine-cap *classification* does not imply
  sequence-level necessity. The owner says the candidate argument contradicts
  C-193, so C-193 is flagged for Stage 2a reassessment and is not edited.

## Scope of S063

Setup and planning only: record the owner decision, the CAND-03G target change
and frozen statement, the staged roadmap, the unverified external candidate,
the AI-use record, the S064 brief and the prompt; synchronize authority. No proof
work, Lean edits, computation, literature search beyond freezing the
statement, posting, Palomar action or contact. The exact entry prompt is
archived in [INPUT_PROMPT.md](INPUT_PROMPT.md).
