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

## Active owner blockers

**NONE for S001.** Source-based orientation and candidate comparison are ready.

An active blocker is a missing owner decision/action or external result required
to perform the next useful authorized unit, or an explicit owner stop condition.
The trigger is actual dependency, not the mere presence of a later stage gate.
Do not conceal a dependency by relabelling it a future requirement.

## Future owner requirements (not yet active)

- Select an exact target after receiving the source-based candidate comparison.
- Send or authorize verified outreach once the proposal is reviewable.
- Supply the response establishing reviewer willingness for both stages.
- Resolve material external proposal feedback and confirm final scope/venues.
- Later: approve appropriate external submissions or other author actions.

## Blocker record and closeout behaviour

Each active blocker receives an ID, activation date/session, required input,
why it matters, evidence/draft links, and the stage it blocks. State the exact
request plainly in the final close report. Checkpoint useful independent work
first where possible; do not keep executing speculative dependent work.

Set `STATE.json.active_owner_blockers` to the active IDs and
`next_prompt_status` to `SUPPRESSED_OWNER_BLOCKER`. Clear `next_session` and
`next_brief` if they would imply a scheduled ready continuation. Remove the
live `authoritative/NEXT_SESSION_PROMPT.md` file; it must not contain a conditional
or resolution-only kickoff. Historical prompts remain historical only.

**The final response ends with the request. No next-session prompt appears.**
Do not clear a blocker because time passed, a new session started, an AI agrees,
or the owner was previously generally willing to email. Record the actual
answer/action and scope change before restoring a ready prompt.
