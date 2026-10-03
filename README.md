# Inverse Zero-Sum Research Programme

A distinct research programme in combinatorial number theory, aiming for an
original mathematical contribution and genuine peer-reviewed journal
publication.

**Current stage: P3 mathematical investigation, with external review continuing
in parallel. CAND-02 is selected. S009 sharpened the CAND-compatible one-change
obstruction to an exact affine-plane double-hole pattern on a
`C_m^2` common core and proved a forced `(m-2)`-subsum witness. D8-02 and
universal D7-01 remain unresolved; S010 is ready on the resulting double-hole
rigidity problem and the required ten-session audit.**

Start every session at [authoritative/START_HERE.md](authoritative/START_HERE.md)
and follow [AGENTS.md](AGENTS.md). Committed records are the source of research
authority; conversation history is not the project state.

A numbered session runs one bounded task autonomously, validates and
checkpoints useful work, then automatically provides a close report.

**A next-session prompt appears only when it is immediately runnable. If an
active blocker requires the owner, the session ends with the specific request
and no next-session prompt.** There is currently no active owner blocker.

## Current readiness dimensions

1. Target gate — OPEN: CAND-02 is exactly specified; novelty/open-status claims remain conservative.
2. Publication gate — OPEN: E-JC is the leading eligible route, with JNT as a policy-qualified backup.
3. Mathematical-investigation gate — OPEN: bounded proof/counterexample search, structural derivation and scoped computation/experiments may run under session briefs.
4. External-review gate — CLOSED and parallel: no reviewer is confirmed. This does not block mathematics, but appropriate independent scrutiny remains required before journal submission.

S009 proved that the eight residual quotient classes contribute exactly fourteen
affine-plane restrictions and that comparing the two one-change pairings gives
seven `delta`-paired holes in `Sigma_{m-2}(T)`, seven in
`Sigma_{m-3}(T)`, plus a full-set pair one level lower when available. The
sharp rank-two EGZ threshold also forces `-(x+y) in Sigma_{m-2}(T)`. This
strictly narrows the CAND obstruction beyond arbitrary one-change stability,
but it does not yet force `delta=0`; no counterexample or computation is
claimed.

Beginning proof work does not certify that the target is open or novel. If
later external feedback reveals prior art, a known solution, material overlap,
a mistaken premise, or a serious significance/scope concern, pause the affected
direction and reassess it.

## Main records

- [Project charter](authoritative/PROJECT_CHARTER.md)
- [Current state](authoritative/STATE.json)
- [Roadmap and stage gates](authoritative/ROADMAP.md)
- [Target register](authoritative/TARGET_REGISTER.md)
- [Publication register](authoritative/PUBLICATION_REGISTER.md)
- [Reviewer register](authoritative/REVIEWER_REGISTER.md)
- [Claims and sources](authoritative/CLAIMS_AND_SOURCES.md)
- [Decisions and blockers](authoritative/DECISIONS_AND_BLOCKERS.md)
- [Failure and lesson ledger](authoritative/FAILURE_AND_LESSON_LEDGER.md)
- [Session ledger](authoritative/SESSION_LEDGER.md)
- [Live next-session prompt](authoritative/NEXT_SESSION_PROMPT.md)
- [Autonomous session protocol](docs/SESSION_PROTOCOL.md)

Validate the records with `python3 scripts/check_authority.py`. This checks
documentation consistency, not mathematical truth. Existing code is licensed
under Apache-2.0; external papers retain their own licences.
