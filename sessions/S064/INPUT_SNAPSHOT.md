# S064 entry snapshot

Date: 2026-10-11. Unit D63-01: CAND-03G Stage 1 prior-art/novelty audit only.

## Pinned authority and reconciliation

- Live `main` at entry: `496cefb8e0672d069991f759adbfbc954b70f471`, the S062
  close. `main` does **not** contain `sessions/S063/CLOSEOUT.md`.
- S063 is published on branch `claude/general-rank-extension-setup-ve7yg2` at
  **`f5b054468c93d8ca2e24f05dd8ff3f614af84756`**. This is the SHA named in the
  S064 kickoff. `git merge-base --is-ancestor` confirms it is a pure
  fast-forward of `main` `496cefb8` with one commit (`f5b0544 S063: record
  D-174 owner redirect, freeze CAND-03G and stage the general-rank route`).
- Under the kickoff's entry rule, **S064 pins `f5b0544` as the incoming
  authority**. The session's designated branch
  `claude/cand-03g-stage-1-audit-18s10o` was created by the environment at
  `496cefb8` and was fast-forwarded locally to `f5b0544` before any S064 edit.
  That branch did not yet exist on the remote at entry.
- `python3 scripts/check_authority.py` at the pinned checkpoint: PASS
  (181 local links).
- The kickoff text equals the live prompt in
  `authoritative/NEXT_SESSION_PROMPT.md` at `f5b0544`, apart from the pinned
  SHA added by the owner. No mismatch needs resolving.

## Uniqueness

- `STATE.json` checkpoints end at S063 (COMPLETED); `next_session=S064`,
  `next_prompt_status=READY`, no active owner blockers.
- No `sessions/S064/` directory, no S064 ledger row and no remote branch or
  commit naming S064 existed at entry. No parallel or interrupted S064 found.

## Authority read

`AGENTS.md`; `authoritative/START_HERE.md`; `STATE.json`;
`PROJECT_CHARTER.md`; `docs/SESSION_PROTOCOL.md`; `docs/CLOSEOUT_TEMPLATE.md`;
`DECISIONS_AND_BLOCKERS.md` (D-174–D-178, B-016 resolution);
`TARGET_REGISTER.md` (CAND-03G section, D1–D8, Claims A/B, status at
freeze); `ROADMAP.md` (CAND-03G staged route, Stage 1 row);
`SESSION_LEDGER.md`; `PUBLICATION_REGISTER.md`; `REVIEWER_REGISTER.md`;
`CLAIMS_AND_SOURCES.md` (C-170–C-194, C-259, C-262–C-267, ZS-71–ZS-81);
`FAILURE_AND_LESSON_LEDGER.md` (through FL-123); `AI_USE_RECORD.md`;
`sessions/S039/SOURCE_CHECK.md`; `sessions/S041/LITERATURE_STATUS_AUDIT.md`;
`sessions/S042/` (audit, search log, source check) and its brief (taxonomy and
search surface); `sessions/S062/SOURCE_POLICY_REFRESH.md`; `sessions/S063/`
(snapshot, archived prompt, validation, closeout);
`authoritative/S064_CAND03G_STAGE1_PRIOR_ART_AUDIT_BRIEF.md`;
`scripts/check_authority.py`.

## Register observation carried into the audit

`CLAIMS_AND_SOURCES.md` lists Hui–Zhong, JCTA 224 (2026) 106238 twice, as
ZS-71 (S037 refresh) and ZS-73 (S038). S064 treats them as one source and
records the duplication without renumbering.

## Scope of S064

Stage 1 only: literature and primary-source audit, permitted arithmetic on
published numbers, records and register synchronization. No proof work, no
computation on the mathematics, no Lean, no Stage 2a, and no check, repair or
extension of the external candidate argument (C-262–C-266). No posting,
filing, Palomar action or contact with anyone, including authors.
