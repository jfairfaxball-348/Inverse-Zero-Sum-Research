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

Current incoming session: **S004, full due-diligence audits of CAND-03 and
CAND-04 before final target selection.**

## Present boundary

- Incumbent exact target: CAND-01, rank-two Property D for `C_n^2`.
- CAND-01 has completed S002 due diligence.
- CAND-02 has completed S003 due diligence and survives as a
  source-defined/current-status-unknown challenger.
- CAND-03 and CAND-04 are the two remaining S001 candidates and will receive
  equivalent audits together in S004.
- No target switch has occurred.
- Owner decision D-019 deliberately postpones the target choice until all four
  candidates have comparable due-diligence records.
- Mathematical results by this programme: NONE.
- Leading journal: Electronic Journal of Combinatorics.
- Confirmed external reviewer: NONE.
- CAND-01 Pingzhi Yuan outreach: PREPARED BUT ON HOLD; NOT AUTHORIZED OR SENT.
- CAND-02 Xue Li Stage-1 package: PREPARED; NOT AUTHORIZED OR SENT.
- No CAND-03/CAND-04 outreach is authorized; S004 may prepare unsent packages
  where justified.
- External-review gate: CLOSED.
- Computation/proof gate: CLOSED.
- Active owner blockers to S004: NONE.

B-003 is superseded as the immediate blocker by D-019. The owner did not resolve
the CAND-01-versus-CAND-02 choice; instead the owner explicitly requested that
CAND-03 and CAND-04 be audited first. If S004 leaves two or more credible
candidates, activate a new owner target-selection blocker covering the full
surviving audited set and issue no next-session prompt.

## Authority and reconciliation rule

Pin live `main` before reading its authority. The bootstrap predecessor remains
`32b9f63c393995de5dddf7e8367d42e339816c24`. A commit cannot include its own
hash: each session records the actual incoming live hash and the close report
externally verifies the outgoing remote hash.

If a pasted prompt names an older revision, inspect intervening changes and
reconcile session identity, scope and blockers before proceeding. Do not
overwrite new authority or blindly resume an obsolete target.

`STATE.json` is the machine-readable index. Detailed linked records carry the
supporting evidence. Any conflict is an integrity problem to reconcile, not an
invitation to choose the convenient version. New explicit owner instructions
must be written into the records; transcripts and model memory do not silently
change committed research claims.
