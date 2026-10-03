# S007 closeout — progressive-subsums bridge

Date: 2026-10-03. Status: **COMPLETED BOUNDED INVESTIGATION; UNIVERSAL BRIDGE
UNRESOLVED**.
Stage: P3 mathematical investigation with parallel external review.
Incoming main: `1f71645064208be363515edf7e40db3552a7f144`.

The incoming checkpoint matched live main and S007 was unique. The outgoing SHA
is verified externally after commit and is not self-embedded.

## Useful results

S007 did not prove or falsify D6-08 for all m. It did produce four rigorous
programme deductions:

- translation by -h converts the progressive-subsums hypothesis into
  zero-sum subsequences of every cardinality;
- reflection-balanced centered blocks are sufficient, yielding the explicit
  capacity kappa_h(S);
- the bridge is automatic for m=2, and the published Lemma 4.4(2) therefore
  gives a translated length-13 eta-extremal core;
- for m=3 the bridge holds exactly when the sequence has a repeated term or a
  centered three-term progression.

The exact m=3 bridge-failure obstruction was then tested computationally. A
deterministic 250-trial centered-3AP-free search found 91 size-24 candidates;
the best still had 1596 zero-sum six-subsets. An exploratory cutting-plane MILP
also found no counterexample but did not prove infeasibility. Both are
experimental evidence only.

## Source/proof boundary

Published input: Girard--Schmid 2019 Lemma 4.4(2), already recorded as C-40 /
ZS-10 after S006 full-proof inspection.

Programme proofs: S007-P1 through S007-P4, all proved directly in
sessions/S007/PROGRESSIVE_SUBSUMS_BRIDGE.md.

Experimental evidence: sessions/S007/EXPERIMENT_LOG.md and
sessions/S007/m3_bridge_search.py.

No source non-hit, computation non-hit or solver timeout is treated as an
openness, novelty or theorem claim. CAND-02 remains SOURCE-DEFINED / CURRENT
STATUS UNKNOWN.

## Validation

- Deterministic search script executed with seed 20261003 and 250 trials.
- python3 -m py_compile sessions/S007/m3_bridge_search.py: PASS on the
  materialized session script.
- scripts/check_authority.py is run on the materialized repository mirror
  before publication of the checkpoint; it checks repository integrity, not
  mathematical truth.
- Remote main and the outgoing commit are re-fetched after publication.

## Changed evidence and authority

Created:
- sessions/S007/INPUT_SNAPSHOT.md
- sessions/S007/PROGRESSIVE_SUBSUMS_BRIDGE.md
- sessions/S007/EXPERIMENT_LOG.md
- sessions/S007/DEPENDENCY_UPDATE.md
- sessions/S007/m3_bridge_search.py
- sessions/S007/CLOSEOUT.md
- authoritative/S008_CANDIDATE_2_CENTERED_SYMMETRY_FORCING_BRIEF.md

Updated:
- authoritative/STATE.json
- authoritative/START_HERE.md
- authoritative/DECISIONS_AND_BLOCKERS.md
- authoritative/ROADMAP.md
- authoritative/SESSION_LEDGER.md
- authoritative/TARGET_REGISTER.md
- authoritative/FAILURE_AND_LESSON_LEDGER.md
- authoritative/NEXT_SESSION_PROMPT.md
- README.md

CLAIMS_AND_SOURCES, PUBLICATION_REGISTER and REVIEWER_REGISTER require no
substantive change: no new source claim, venue fact, reviewer reply or reviewer
status was established.

## Owner blockers

**Active owner blockers: NONE.**

Xue Li's Stage-1 reply remains pending under committed authority. This is a
parallel external-review requirement, not a mathematical-investigation blocker.

## Next session

S008 attacks D7-01 only: determine whether the reflection-balanced capacity
criterion proved in S007 can be forced for every CAND-02 extremal. This is an
all-m route; a proof would settle D6-08, while a falsification would retire only
the stronger centered-symmetry route unless it also fails the full progressive
condition.
