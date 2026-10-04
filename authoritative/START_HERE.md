# Authoritative entry point

Repository: https://github.com/jfairfaxball-348/Inverse-Zero-Sum-Research

## Read in this order

1. AGENTS.md.
2. authoritative/STATE.json and authoritative/PROJECT_CHARTER.md.
3. docs/SESSION_PROTOCOL.md and docs/CLOSEOUT_TEMPLATE.md.
4. authoritative/DECISIONS_AND_BLOCKERS.md.
5. authoritative/ROADMAP.md and authoritative/SESSION_LEDGER.md.
6. authoritative/TARGET_REGISTER.md, authoritative/PUBLICATION_REGISTER.md, authoritative/REVIEWER_REGISTER.md, authoritative/CLAIMS_AND_SOURCES.md, and authoritative/FAILURE_AND_LESSON_LEDGER.md.
7. The completed S002–S012 records before later target-specific work, with
   particular attention to the S010 audit, S011 exchange obstruction and S012
   progressive-block repair.

## Current state

**S012 is completed. D11-01 proves a bounded short-zero-sum splice and
isolates an exact cardinality-gap obstruction, but universal D6-08 remains
unresolved. S013 is a source-based comparison of genuinely distinct routes;
the stopped D7/capacity mechanism remains stopped.**

CAND-02 remains selected: for every integer m>=2, classify every length-8m
sequence in `G_m=C_2+C_{2m}+C_{2m}` with no 2m-term zero sum.
Status remains **SOURCE-DEFINED / CURRENT STATUS UNKNOWN**.

- Target, publication-eligibility and mathematical-investigation gates: OPEN.
- External-review gate: CLOSED; confirmed reviewers: NONE.
- Active owner blockers: NONE.
- Xue Li Stage-1 status: owner-reported SENT 2026-10-02 / REPLY PENDING.

No willingness, endorsement, novelty certification or approval follows from
transmission or silence. Substantive adverse feedback must pause and reassess
its affected direction. Independent scrutiny remains required before submission.

## Current mathematical frontier

Preserve S008's odd-fiber decomposition and Property-D scope, S009's labelled
footprint, S010-P3/P4 and S011's original-position lifting defect. The
local-hole/capacity exchange route remains stopped.

S012 returns to a maximum progressive block C over all centers. After translating
its center to zero, S012-P1 proves that every disjoint complement zero sum of
length at most |C|+1 would splice onto C and make a larger progressive block.
Thus a putative D6-08 failure contains no complement zero sum in that small
range.

Re-running the maximal-short-zero-sum step from GS Lemma 4.4(2) below its
published threshold gives an exact deficit instead of a contradiction. If
c=|C|<=m-2 and T is a maximum complement short zero sum of length t, then
m+1<=t<=2m-c-1. With d=2m-t, the remainder has no zero sum of length at most d,
where c+1<=d<=m-1. When d-c>=2, eta forces only a longer zero sum of length
at least d+1>=c+2, outside the proved splice range. When d=c+1, the remainder
has eta(G)-1 terms but is not shown eta-free.

A local c=1 minimal three-term zero sum shows the splice cannot simply be
extended to length c+2, and powers of an element of order 2m show that length
alone cannot force the missing small zero sum. Neither is an actual CAND or
D6-08 counterexample. Universal D6-08/D6-09 and the earlier D7--D10 chain
remain unresolved. No computation ran in S012.

See [S012 repair](../sessions/S012/PROGRESSIVE_BLOCK_REPAIR.md) and
[dependency update](../sessions/S012/DEPENDENCY_UPDATE.md).

## Recovery and next unit

S012 does not schedule another progressive/capacity variation. The proved
splice now needs genuinely CAND-specific information forcing a sufficiently
small complement zero sum, or a different replacement theorem with all
cardinality witnesses.

S013 is therefore a source-based route comparison. It will compare
restricted-length/local zero-sum input, genuinely new unconditional homocyclic
kernel stability/equality input, and eta-core/equality-case reductions that do
not presuppose D6-08. A mathematical route is promoted only if a new applicable
source input or clearly different mechanism is found; otherwise S013 must
surface the strategic gap and activate an owner reassessment blocker.

Live brief:
`authoritative/S013_CANDIDATE_2_SOURCE_ROUTE_COMPARISON_BRIEF.md`.
Live prompt: `authoritative/NEXT_SESSION_PROMPT.md`.
S020 remains the next periodic audit, covering S011–S020.

## Authority and reconciliation rule

Pin live main before reading its authority. The bootstrap predecessor remains 32b9f63c393995de5dddf7e8367d42e339816c24. A commit cannot include its own hash: each session records the actual incoming live hash and the close report externally verifies the outgoing remote hash.

If a pasted prompt names an older revision, inspect intervening changes and reconcile session identity, scope and blockers before proceeding. Historical records may describe earlier gate rules; D-030--D-032 supersede any statement that made external-review completion a prerequisite for mathematical investigation. Do not rewrite historical facts as though the later rule applied at the time.

STATE.json is the machine-readable index. Detailed linked records carry supporting evidence. Any conflict is an integrity problem to reconcile, not an invitation to choose the convenient version.
