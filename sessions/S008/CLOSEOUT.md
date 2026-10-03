# S008 closeout — centered-symmetry forcing

Date: 2026-10-03. Status: **COMPLETED BOUNDED INVESTIGATION; D7-01 PARTIALLY
RESOLVED, GENERAL CASE UNRESOLVED**.
Stage: P3 mathematical investigation with parallel external review.
Incoming main: `eb7b5b1426cc41c2f1c47ba1b97b09d680e0a135`.

The incoming checkpoint matched live main and S008 was unique. No newer
committed authority or substantive Xue Li reply required reconciliation. The
outgoing SHA is verified externally after commit and is not self-embedded.

## Useful results

S008 did not prove or falsify D7-01 for arbitrary `m`. It produced four
rigorous programme deductions:

- all eight natural `C_2^3` quotient fibers of every target extremal have odd
  multiplicity, and every maximal same-fiber pairing yields a
  `C_m^2` EGZ-extremal;
- a non-monochromatic quotient fiber produces two distinct kernel extremals
  sharing exactly one term fewer than their full length;
- hence every target extremal either already satisfies D7-01 or induces this
  one-change kernel obstruction. Published Girard--Schmid Lemma 4.1 rules the
  obstruction out whenever `m` has Property D, so D7-01 holds for every
  Property-D modulus and any D7-01 counterexample would force Property-D
  failure at the same modulus;
- the eight residual quotient representatives impose exact shifted
  restricted-sum exclusions on every associated kernel extremal.

For Property-D moduli only, S007-P2 plus published Girard--Schmid Lemma 4.4(2)
therefore yields a translated length-`6m+1` eta-extremal core. No universal
eta-core reduction is claimed.

## Source/proof/experiment boundary

Published inputs: the S006-recorded natural `C_m^2 -> C_2^3` architecture and
`s(C_m^2)=4m-3`; Girard--Schmid 2019 Lemma 4.1, conditional on Property D;
and Lemma 4.4(2).

Programme proofs: S008-P1 through S008-P4 in
`sessions/S008/CENTERED_SYMMETRY_FORCING.md`.

No computation or experiment was run. Theory exposed an all-`m` stability
dependency rather than a precise unsettled finite case. No source non-hit or
mathematical non-resolution is treated as an openness or novelty claim.
CAND-02 remains SOURCE-DEFINED / CURRENT STATUS UNKNOWN.

## Validation

- Pair-count and overlap arithmetic was sanity-checked for `m=2,...,100`;
  the check confirms the formulas but is not a proof.
- No session code was created, so no code compilation/test is applicable.
- `python3 scripts/check_authority.py` is run on a materialized structural
  mirror before publication of the checkpoint.
- The candidate commit is also checked against the remote repository tree for
  state/prompt/session uniqueness and local-link consistency before main moves.
- Remote main and the outgoing commit are re-fetched after publication.

These checks validate repository consistency, not mathematical truth, novelty
or external review.

## Changed evidence and authority

Created:

- `sessions/S008/INPUT_SNAPSHOT.md`
- `sessions/S008/CENTERED_SYMMETRY_FORCING.md`
- `sessions/S008/DEPENDENCY_UPDATE.md`
- `sessions/S008/CLOSEOUT.md`
- `authoritative/S009_CANDIDATE_2_PAIR_SUM_STABILITY_BRIEF.md`

No EXPERIMENT_LOG is created because no computation was run.

Updated:

- `authoritative/STATE.json`
- `authoritative/START_HERE.md`
- `authoritative/DECISIONS_AND_BLOCKERS.md`
- `authoritative/ROADMAP.md`
- `authoritative/SESSION_LEDGER.md`
- `authoritative/TARGET_REGISTER.md`
- `authoritative/CLAIMS_AND_SOURCES.md`
- `authoritative/FAILURE_AND_LESSON_LEDGER.md`
- `authoritative/NEXT_SESSION_PROMPT.md`
- `README.md`

PUBLICATION_REGISTER and REVIEWER_REGISTER were inspected and require no
substantive change: no venue fact, reviewer reply or reviewer status changed.

## Owner blockers

**Active owner blockers: NONE.**

Xue Li's Stage-1 reply remains pending under committed authority. This is a
parallel external-review requirement, not a mathematical-investigation blocker.

## Next session

S009 attacks D8-02 only: determine whether the extra residual
`C_2^3` restricted-sum constraints attached to the S008-P2 pair of
near-identical `C_m^2` extremals force equality without assuming Property D.
It must not broaden into the full Property-D conjecture or the full CAND-02
classification.
