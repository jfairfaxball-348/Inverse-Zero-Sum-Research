# S001–S010 ten-session progress and correction audit

Date: 2026-10-03. Incoming authority:
`565c51f24dff06b812ee7a45dfdc9e566d91e170` on main.

**Verdict: bounded structural progress, but no completed universal bridge and
no publication-ready contribution. Continue for one bounded assessment of the
all-pairings low-capacity obstruction, with an explicit stop against merely
renaming the same missing theorem.** S010's investigation is complete; D9-01
is not. This is the final S001–S010 audit, not a claim that ten mathematical
dependencies were solved. S000 is initialization and is excluded from the count.

## 1. Inventory of actual work

| Session | Actual durable output | Mathematical contribution / limit |
| --- | --- | --- |
| S001 | Field map, four candidate identities, retirement of solved/disproved historical leads, venue/reviewer map | Source and planning work; no programme proof |
| S002 | Full rank-two Property-D status audit, multiplicativity and sufficiently-large-prime boundary, reviewer preparation | Source and planning work; no programme proof; exceptional primes not enumerated |
| S003 | Exact CAND-02 definition, known direct threshold versus different inverse family, bounded status/overlap audit | Source and planning work; no certified openness or inverse theorem |
| S004 | Comparable CAND-03/04 audits, D0-versus-D correction, retirement of CAND-04 as a clean inverse target | Prevented a hidden direct-constant dependency; no programme proof |
| S005 | Selected-target status refresh and Xue Li Stage-1 package | Risk-control preparation; no mathematical progress; later owner-reported sending is a separate event |
| S006 | Relevant full-proof/source inspection, toolkit and D6-01–D6-14 dependency map | Identified the homocyclic restriction and conditional eta-core route; no new proof |
| S007 | Translation equivalence, reflection-balanced sufficient block, m=2 bridge, exact m=3 failure criterion | First programme mathematics; all-m D6-08 unresolved; heuristic/MILP non-hits prove nothing |
| S008 | Odd parity in all eight fibers, extremality of every maximal pair-sum sequence, one-change obstruction, Property-D-modulus D7 consequence | Main structural advance so far; universal implication remains conditional; no full classification |
| S009 | Fourteen-plane residual geometry, exact double-hole comparison and forced common-core witness | Sharper necessary conditions; D8-02 not proved or falsified |
| S010 | Fano incidence equations and freedom/collision boundary; unconditional high-multiplicity isolation; actual-CAND capacity equivalence; witness-complement obstruction | New bounded deductions, but D9-01, universal D7-01 and D6-08 remain unresolved |

There were six pre-proof numbered sessions and four mathematical-investigation
sessions. Source work was useful to avoid invalid targets and hypotheses, but
is not counted as theorem progress. Commits, note volume and validator passes
are not mathematical evidence.

## 2. Proof audit and corrections

The S007–S009 displayed programme arguments were checked against their stated
hypotheses. No false programme lemma was identified in those committed records.
That is an internal audit finding, not independent peer review or a proof of
novelty. S010 adds source-dependent deductions with their dependencies exposed.

**Current-index correction AC-010-01.** STATE's S007-P4 description and C-48
still said the universal m=3 bridge was unresolved without a temporal
qualification. That was true at S007 closeout, but S008-P3 together with the
already-recorded Property D of 3 resolves it. The live claim/index now states
that supersession. Historical S007 files remain unchanged. This is not a new
S010 theorem or a retraction of S007-P4. More generally, D7/D6-08 already hold
on every Property-D modulus, including all m<=10 recorded in authority.

**Precision correction AC-010-02.** Seven plane-indexed pairs of holes need
not give fourteen distinct missing elements, nor even seven distinct centers.
S009 did not explicitly claim distinctness; S010-P1 supplies an exact odd-m
collision example and the full incidence equations to prevent that inference.

**Hypothesis correction AC-010-03.** A witness complement of length
eta(H)-1 is not automatically eta-extremal. S010-P4 proves that, in a putative
actual nonzero-delta configuration, the relevant complement contains a short
zero sum. Direct invocation of Lemma 4.2 there would be invalid. The legitimate
use in S010-P2 first proves short-zero-sum-freeness by zero padding.

**Local/remote reconciliation.** A cached local checkout contained a different
S009 write-up and an audit-only S010 plan. It was not main. Only files whose
Git blob hashes matched the pinned remote tree were reused; all other files
were fetched at the pinned SHA. All 69 incoming files were byte-verified.
No cached unpublished claim was promoted by treating that checkout as authority.
The S010 deductions have proofs in this session and are attributed to S010.

## 3. Failed routes and retained lessons

| Route or shortcut | Disposition | What survives |
| --- | --- | --- |
| Old restricted-length / rank-two D_k / rank-two generalized eta candidates | Retired after newer literature | Field map and status discipline |
| CAND-04 as an inverse problem beside a known all-p direct value | Retired; D0 is not D | A broader direct-and-inverse programme would require a separate target decision |
| Copying the C_2^2+C_{2n} inverse proof to the equal-factor family | Not licensed: cyclic versus rank-two kernel | Quotient analogy and exact source tools with hypotheses |
| Applying GS Lemma 4.1 for every m | Conditional only on Property D | Every Property-D modulus is covered; no all-m promotion |
| Applying GS Lemma 4.3 at the homocyclic parameter | Explicitly excluded by source | Need a different restricted-sum mechanism |
| Treating S007 non-hits or MILP timeouts as nonexistence | Rejected | Diagnostic observations only; the m=3 question is now settled by S008's source-backed implication |
| Counting repeated companion exclusions twice / assuming distinct plane centers | Rejected | Exact S009 packet plus S010 incidence equations |
| Deleting the forced threshold witness to obtain an eta-free complement | Blocked by S010-P4 in the actual nonzero-delta case | A precise complement with no 1/2-zero sum but an even short zero sum |
| Finding one residual lift and claiming an actual CAND counterexample | Rejected | Must realize actual T, actual S, and all maximal pairings; D7 needs the actual domain |

**Experiment reproducibility qualification.** S007 preserved its greedy script,
seed, trial count and best output in the log. Its MILP log describes a restart
after a no-incumbent timeout, while the committed `cutting_plane` function
breaks on that event. The `--milp` entry point therefore does not reproduce the
entire described restart chronology by itself; no saved restart/cut state or
machine transcript is committed. The historical observations remain
experimental and incompletely reproducible, with no proof weight. S010 does
not fabricate missing logs or rerun a now-settled small-case diagnostic. A
future authorized solver experiment must persist the actual runner and restart
state/results as they occur. No current mathematical claim depends on this gap.

## 4. Universal dependencies still outstanding

| Dependency | Current status and significance |
| --- | --- |
| D6-04: controlled quotient decomposition | S008 gives the universal parity/maximal-pairing decomposition; it does not give a universal rigid classification |
| D6-05 / D6-06: homocyclic extremal and restricted-sum rigidity | Not supplied in the needed unconditional all-m form |
| D9-01: exact local double-hole rigidity | Unresolved after S010; only the high-multiplicity/progressive scope eliminated |
| D8-02: CAND-compatible one-change stability | Unresolved; would follow from D9-01; actual all-pairings conditions remain stronger than one footprint |
| D7-01: reflection capacity | Covered for Property-D moduli; S010 proves equivalence on actual CAND extremals with monochromatic fibers and the existence of a sufficiently repeated pair sum |
| D6-08: progressive block of size >=m-1 | Covered on the inherited scope; D7 is sufficient but is not claimed necessary for this weaker bridge |
| D6-09: universal translated eta-core | Conditional; no universal reduction has been established |
| D6-10 / D6-12: eta-core classification and full reconstruction | Untouched and unresolved; even proving the bridge would not finish CAND-02 |
| Actual-result novelty/significance and independent scrutiny | Not established; required before publication readiness |

The route has approached an obstruction which would itself force Property-D
failure at its modulus. Schlage-Puchta's sufficiently-large-prime result and
the inherited multiplicativity reduce the possible Property-D failures to an
unidentified finite set of prime factors, **not a finite list of possible
CAND moduli**: composites containing such a factor could be unbounded. No
effective cutoff or permitted exhaustive modulus sweep follows from that fact.

The succession D6-08 -> sufficient D7-01 -> one-change stability -> D9-01
contains genuine reductions but also increasingly strong sufficient obligations.
Failure to prove one must not be reported as failure of the root target.
S010's exact capacity equivalence identifies what the D7 route now asks for;
it does not make that demand automatically attainable.

## 5. Scope and protocol history

- The root remains a distinct substantial contribution reaching genuine
  journal peer review and publication. No acceptance is promised.
- The owner first chose CAND-01, requested comparison with the other targets,
  then selected CAND-02 under D-024. No target change occurs in this audit.
- D-030–D-032 decoupled mathematical investigation from pending external
  review. They did not retroactively turn S006 into a proof session.
- CAND-02 remains the exact all-m>=2 length-8m ordinary-EGZ inverse problem,
  and remains **SOURCE-DEFINED / CURRENT STATUS UNKNOWN**.
- Neither the small-case calculations nor the Property-D-conditioned reduction
  replaces the selected all-m target. No full classification is attempted here.

## 6. External review and publication credibility

Committed authority contains only the owner's report that the Xue Li Stage-1
message was sent on 2026-10-02. Reply and substantive assessment remain
pending, confirmed reviewers remain empty, and the external-review gate stays
CLOSED. No outreach was sent in S010. Silence supplies no willingness,
endorsement, approval or novelty certification. Adverse substantive feedback
must pause and reassess the affected direction.

The official E-JC About/AI-policy and Submissions pages were rechecked on
2026-10-03. They continue to support substantive AI-assisted mathematical work
subject to author checking/responsibility and substantial original content;
the web submission route remains present. URLs and inspection limits are in
SOURCE_CHECK.md. This sustains venue eligibility, not submission readiness.
The JNT backup retains its dated S003/S004 evidence; it was not freshly
re-audited in S010 and would require a current check if used.

**Publication assessment:** a full uniform classification or a genuinely
substantial uniform structural advance remains a credible subject-level route.
The present conditional consequences, necessary conditions and elementary
reductions have not been shown to be novel or sufficient for a paper. There
is no completed manuscript, formalisation, Palomar registration, independent
mathematical review, submission, acceptance or publication in this programme.
The root objective is still credible as a research aim, but this route is not
yet evidence that the objective is within reach.

## 7. Recovery decision and stop condition

Allow exactly one next bounded unit: assess whether **all maximal pairings**
and their residual lifts can coexist with the simultaneous bounds
`M_z(S)<=floor((m-1)/2)-1` for every z. Use the new exact capacity frontier
and the defect-complement obstruction; explore a concrete two-pair exchange
or residual-change mechanism, rather than assuming generic Property D.

This is an assessment task, not a promise that a new theorem exists. A mere
restatement of these equivalent conditions, more labels for the same holes,
or an unproved claim that seven holes force repetition does not count as
progress. If that unit yields no usable mechanism, record that negative
assessment and prepare a bounded repair/pivot toward the weaker D6-08 bridge
or another source-justified route. Do not start that further unit in S011.

Active owner blockers: **NONE**. Mathematical uncertainty and reviewer silence
do not create an owner-action blocker under the current protocol.
