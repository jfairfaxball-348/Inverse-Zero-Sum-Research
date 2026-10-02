# Closeout template

Use this structure for committed session reports. Adapt detail to the actual
work; never fill unknown fields with invented completion claims.

## Session and authority

- Session ID, date, stage and completion/partial/blocked status.
- Incoming branch and SHA; authority mismatch and reconciliation if any.
- Outgoing checkpoint: containing commit, with actual SHA verified and linked
  in the user-facing close report (no self-hash fiction).
- Bounded objective and what was actually completed.

## Useful results and validation

- Concrete findings and their classifications.
- Source/proof/formalisation/review boundaries, as applicable.
- Required checks run, results and material unrun checks.
- Changed authority and evidence files.
- New lessons, unresolved obligations and exact next frontier.

## Owner blockers — MUST precede any next-session material

If any active owner blocker exists, list its ID, what the owner must do, why it
is needed and the linked draft/evidence. State:

**NEXT-SESSION PROMPT: WITHHELD. Required owner action: <concrete request>.**

Do not include a kickoff code block, conditional continuation, resolution-only
prompt or a live `authoritative/NEXT_SESSION_PROMPT.md`. The final response ends
with the request, not a new research prompt.

If no active owner blocker exists, state **Active owner blockers: NONE**.
List future stage requirements separately so they cannot be mistaken for
completed consent or review.

## Next session — unblocked form only

- Exactly one next ID and bounded brief.
- Why that unit advances the root goal and does not require missing owner input.
- Required authority, incoming checkpoint reference and validation/closeout rule.
- One immediately runnable copyable prompt, also in the live prompt file.

When providing the user-facing final response, include the verified outgoing
commit SHA in the copied prompt when practical. Current repository authority
and explicit owner instructions still govern if the prompt becomes stale.
