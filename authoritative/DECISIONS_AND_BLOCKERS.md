# Decisions and owner blockers

## Binding decisions

| ID | Date | Decision | Basis |
| --- | --- | --- | --- |
| D-001 | 2026-10-02 | Root goal is a distinct contribution through journal peer review and publication | Explicit owner instruction |
| D-002 | 2026-10-02 | Explore inverse zero-sum territory; exact target still unselected | Owner agreed to field exploration |
| D-003 | 2026-10-02 | Establish target, eligible journals and external reviewer arrangements before computation | Explicit owner instruction |
| D-004 | 2026-10-02 | Initial target comparison is by name, genre and type, not difficulty/proof likelihood | Explicit owner instruction |
| D-005 | 2026-10-02 | E-JC is the leading publication candidate; prohibit irrelevant or substantive-AI-banning venues | Explicit owner preference and requirement |
| D-006 | 2026-10-02 | External support is intended as proposal and manuscript review, not planned collaboration | Explicit owner instruction |
| D-007 | 2026-10-02 | Repository carries cross-session authority; copied prompts start bounded autonomous sessions | Explicit owner instruction |
| D-008 | 2026-10-02 | On an active owner blocker, output a concrete request and NO next-session prompt of any kind | Owner correction; supersedes any resolution-prompt alternative |
| D-009 | 2026-10-02 | Automatic close reports after validated useful checkpoints; no manual finish-up required | Explicit owner instruction |

## S001 evidence findings relevant to the next decision

These are source findings, not owner decisions:

- Four unranked candidate identities are documented as CAND-01 through CAND-04.
- The older intermediate restricted-length rank-two lead is retired as solved by
  the 2024 Ebert--Grynkiewicz result.
- Rank-two inverse `D_k` is treated by Zhong (2025), and rank-two inverse
  Narkiewicz-sense `eta` is completely settled by Hui--Zhong (2026).
- The general Property-D conjecture remains an explicit literature baseline;
  Schlage-Puchta's 2025 preprint proves the rank-two prime case for all
  sufficiently large primes, not all moduli.
- A September 2026 preprint announces a disproof of Gao's long-standing
  `nu(G)` conjecture, underscoring the need for current-status checks.
- E-JC's official policy was rechecked on 2026-10-02 and explicitly permits AI
  assistance in finding proofs/arguments subject to human checking and author
  responsibility; its web submission route is active.
- Reviewer records are expertise mappings only. No outreach was sent and no
  review agreement exists.

Detailed evidence:
- [S001 field map and candidates](../sessions/S001/FIELD_MAP_AND_CANDIDATES.md)
- [target register](TARGET_REGISTER.md)
- [claims and sources](CLAIMS_AND_SOURCES.md)
- [publication register](PUBLICATION_REGISTER.md)
- [reviewer register](REVIEWER_REGISTER.md)

## Active owner blockers

### B-001 — Select the exact mathematical target

- **Activated:** 2026-10-02 in S001.
- **Required owner input:** select one of CAND-01, CAND-02, CAND-03 or CAND-04
  as the programme's exact target, **or explicitly reject all four and request
  another bounded target-discovery pass**.
- **Why this is required now:** S001 has completed the P0 orientation/comparison
  unit. The next useful target-specific literature specification and proposal
  work would otherwise assume a mathematical identity the owner has not chosen.
- **Evidence:** [S001 comparison](../sessions/S001/FIELD_MAP_AND_CANDIDATES.md)
  and [candidate register](TARGET_REGISTER.md).
- **Blocked gate/stage:** target gate remains CLOSED; publication, external
  review and computation gates remain CLOSED.
- **No implied preference:** candidates are not ranked by difficulty, proof
  likelihood or recommendation.

**NEXT-SESSION PROMPT: WITHHELD. Required owner action: select CAND-01,
CAND-02, CAND-03 or CAND-04, or explicitly reject all four and request another
bounded discovery pass.**

## Future owner requirements after B-001 is resolved

- Authorize or personally send reviewer outreach once the selected target's
  proposal package is reviewable.
- Supply the response establishing explicit proposal-review willingness and
  conditional later manuscript-review willingness.
- Resolve material external proposal feedback and confirm target-specific
  venue shortlist.
- Later: authorize submissions or other external author actions when reached.

## Blocker record and closeout behaviour

An active blocker is an actual missing owner decision/action or external result
required for the next useful authorized unit. While B-001 is active,
`STATE.json.next_prompt_status` must be
`SUPPRESSED_OWNER_BLOCKER`, `next_session` and `next_brief` must be null,
and no live `authoritative/NEXT_SESSION_PROMPT.md` may exist.

Do not clear B-001 because time passed, a new conversation started, an AI chose
a candidate, or the owner was previously willing to email. Record the owner's
actual selection/rejection before restoring a ready continuation.
