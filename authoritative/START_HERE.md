# Authoritative entry point

Repository: https://github.com/jfairfaxball-348/Inverse-Zero-Sum-Research

## Read in this order

1. `AGENTS.md`.
2. `authoritative/STATE.json` and `authoritative/PROJECT_CHARTER.md`.
3. `docs/SESSION_PROTOCOL.md` and `docs/CLOSEOUT_TEMPLATE.md`.
4. `authoritative/DECISIONS_AND_BLOCKERS.md`.
5. `authoritative/ROADMAP.md` and `authoritative/SESSION_LEDGER.md`.
6. `authoritative/TARGET_REGISTER.md`, `authoritative/PUBLICATION_REGISTER.md`,
   `authoritative/REVIEWER_REGISTER.md`, `authoritative/CLAIMS_AND_SOURCES.md`,
   and `authoritative/FAILURE_AND_LESSON_LEDGER.md`.
7. The session brief named in `STATE.json` and its required source records.

Current incoming session: **S001, field orientation and target discovery**.
S000 is initialization, not a mathematical research session.

Pin live `main` before reading its authority. The bootstrap predecessor is
`32b9f63c393995de5dddf7e8367d42e339816c24`; the authoritative bootstrap checkpoint
is the committed revision containing this file and the S000 closeout. A commit
cannot include its own hash: pin the actual live hash and record it in the next
session's incoming snapshot, rather than inventing a self-reference.

If a pasted prompt names an older revision, inspect intervening changes and
reconcile session identity, scope and blockers before proceeding. Do not
overwrite new authority or blindly resume an obsolete target.

## Present boundary

- Exact target: UNSELECTED.
- Mathematical results by this programme: NONE.
- Leading journal candidate: Electronic Journal of Combinatorics.
- Confirmed external reviewer: NONE.
- Computation/proof gate: CLOSED.
- Active owner blockers to S001: NONE.
- Future decisions/outreach: required before later gates can open.

`STATE.json` is the machine-readable index. Detailed linked records carry the
supporting evidence. Any conflict is an integrity problem to reconcile, not an
invitation to choose the convenient version. New explicit owner instructions
must be written into the records; transcripts and model memory do not silently
change committed research claims.
