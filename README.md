# Inverse Zero-Sum Research Programme

A distinct research programme in combinatorial number theory, aiming for an
original mathematical contribution and genuine peer-reviewed journal
publication.

**Current stage: P3 mathematical investigation, with parallel external review.
S012 is complete. Its short-zero-sum splice is valid, but below the published
m-1 threshold the GS maximal-zero-sum argument leaves an exact cardinality gap
rather than a universal eta-core. Universal D6-08 remains unresolved; S013 is a
source-based comparison before any new proof route is chosen.**

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

S010's exact capacity equivalence and witness-complement obstruction remain
intact, and S011's two-pair route remains stopped at its original-position
lifting defect. S012 returns to the weaker progressive-block bridge. It proves
that a complement zero sum of length at most |C|+1 would enlarge a maximum
progressive block, then shows that the maximal-short-zero-sum argument from GS
Lemma 4.4(2) forces only longer witnesses when the bridge threshold is missed.

The resulting cardinality gap does not prove a bridge failure, and an
eta(G)-1-length remainder is not automatically eta-free. A local mechanism
counterexample and an arbitrary-length order-2m power sequence only falsify
overbroad splice/length-only shortcuts; neither is CAND-extremal. No computation
ran in S012. S013 will compare source-backed routes before another mathematical
variant is attempted. See [the S012 assessment](sessions/S012/PROGRESSIVE_BLOCK_REPAIR.md).

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
