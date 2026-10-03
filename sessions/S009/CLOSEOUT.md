# S009 closeout — CAND-compatible pair-sum stability

Date: 2026-10-03. Status: **COMPLETED BOUNDED INVESTIGATION; D8-02 UNRESOLVED,
SHARPLY REDUCED**.
Stage: P3 mathematical investigation with parallel external review.
Incoming main: `6dc917970b03bd87be3f73adfb72babbfb96c6c2`.

The incoming checkpoint matched live main and S009 was unique. No newer
committed authority or substantive Xue Li reply required reconciliation. The
outgoing SHA is verified externally after commit and is not self-embedded.

## Useful results

S009 does not prove or falsify D8-02. It proves four rigorous programme
reductions:

- the only nonempty even zero-sum subsets of the squarefree residual
  `C_2^3` quotient are the fourteen affine planes and the full eight-set;
- comparing the two residual choices gives an exact double-hole footprint on
  the common kernel core `T`: seven `delta`-paired holes in
  `Sigma_{m-2}(T)`, seven in `Sigma_{m-3}(T)`, and for `m>=4` one additional
  pair in `Sigma_{m-4}(T)`; the companion exclusions that algebraically
  cancel are identified explicitly and are not double-counted;
- the rank-two threshold alone forces `-(x+y) in Sigma_{m-2}(T)` for the two
  exceptional terms of every distinct one-change pair `T x`, `T y`;
- hence any D8-02 failure must realize one exact CAND-labelled restricted-sum
  obstruction package on a length-`4m-5=s(C_m^2)-2` common core.

The original Girard--Schmid Lemma 4.1 boundary was rechecked: for `m>=3` its
one-change proof uses the Property-D extremal multiplicity congruence. S009 does
not import that congruence. Lemma 4.2 does not apply to the present common-core
length, and Lemma 4.3 explicitly does not provide its strong restricted-sum
conclusion in homocyclic `C_m^2`.

## Proof/falsification boundary

No proof that the double-hole package is impossible was obtained. No local
compatible package was constructed either. Even such a local package would not
by itself be a D7-01 counterexample unless it lifted to an actual length-`8m`
CAND-02 extremal.

No computation was run. The theory exposed an all-`m` restricted-sum rigidity
question rather than a justified finite unsettled modulus. CAND-02 remains
SOURCE-DEFINED / CURRENT STATUS UNKNOWN.

## Validation

- The finite `C_2^3` residual classification was proved directly; no numerical
  experiment is used as evidence.
- The identities in S009-P2 were checked algebraically from
  `Sigma_k(Tx)=Sigma_k(T) union (x+Sigma_{k-1}(T))` and `y=x-delta`.
- The S009-P3 threshold count is exact:
  `|Txy|=4m-3=s(C_m^2)` and any forced `m`-zero sum must use both exceptional
  terms.
- `python3 scripts/check_authority.py` is run on a materialized structural
  mirror before publication of the checkpoint. The local container cannot
  resolve github.com, so direct `git clone` is unavailable; this network
  limitation is recorded rather than treated as a failed authority check.
- The candidate remote tree and final `main` SHA are rechecked after
  publication. These repository checks do not certify mathematical truth,
  novelty or external review.

## Changed evidence and authority

Created:

- `sessions/S009/INPUT_SNAPSHOT.md`
- `sessions/S009/PAIR_SUM_STABILITY.md`
- `sessions/S009/DEPENDENCY_UPDATE.md`
- `sessions/S009/CLOSEOUT.md`
- `authoritative/S010_CANDIDATE_2_DOUBLE_HOLE_RIGIDITY_AND_AUDIT_BRIEF.md`

No `EXPERIMENT_LOG.md` is created because no computation was run.

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

`PUBLICATION_REGISTER.md` and `REVIEWER_REGISTER.md` were inspected and require
no substantive change: no venue fact, reviewer reply or reviewer status changed.

## Owner blockers

**Active owner blockers: NONE.**

Xue Li's Stage-1 reply remains pending under committed authority. This is a
parallel external-review requirement, not a mathematical-investigation blocker.

## Next session

S010 attacks D9-01 only: determine whether the exact S009 CAND double-hole
footprint is impossible in the `C_m^2` common core without assuming Property D.
Because S010 is the tenth numbered research session after S000, it also performs
the protocol-mandated S001--S010 ten-session audit and records it without
replacing the bounded mathematical obligation.
