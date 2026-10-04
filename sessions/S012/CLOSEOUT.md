# S012 closeout — progressive-block repair assessment

Date: 2026-10-04. Stage: P3 mathematical investigation with parallel review.
Status: **COMPLETED BOUNDED REPAIR ASSESSMENT; UNIVERSAL D6-08 UNRESOLVED.**
Incoming main: `012c9449db2b2b8f4fa488988beecb7642b74ffe`.

The supplied checkpoint exactly matched live `main`; no reconciliation commit
was needed. S012 was unique. The outgoing checkpoint is the containing commit,
whose actual SHA is verified externally after publication rather than embedded
inside itself.

## Useful result and exact obstruction

S012 returns directly to D6-08 and freezes one short-zero-sum splice mechanism.
For a maximum progressive block `C` translated to center zero, **any disjoint
complement zero sum of length at most `|C|+1` strictly enlarges the progressive
block**. Therefore a putative bridge failure has no translated-complement zero
sum in that entire small range.

Rechecking and rerunning the source mechanism in GS Lemma 4.4(2) then gives the
exact deficit obstruction. If `c=|C|<=m-2` and `T` is a maximum-length short
zero sum in the complement, then

`m+1<=|T|<=2m-c-1`.

Writing `d=2m-|T|`, the remainder after `T` has no zero sum of length at most
`d`, where `c+1<=d<=m-1`. If `d-c>=2`, eta forces another short zero sum, but
only at length at least `d+1>=c+2`, too long for the splice. If `d=c+1`, the
remainder has length `eta(G)-1` but is not shown eta-free. S010-P4 and S011-P2
are therefore preserved exactly.

A local `c=1`, three-term minimal-zero-sum example proves that a complement
zero sum of length `c+2` need not enlarge a progressive block. This falsifies
only the overbroad mechanism; it is not an actual CAND or D6-08 counterexample.
Likewise, powers of an element of order `2m` show that sequence length alone
cannot force the required zero sum below the exponent. Any completion must use
additional actual-CAND structure.

The full proof/falsification record is
[PROGRESSIVE_BLOCK_REPAIR.md](PROGRESSIVE_BLOCK_REPAIR.md), with the live
frontier in [DEPENDENCY_UPDATE.md](DEPENDENCY_UPDATE.md).

## Boundaries

D11-01 is assessed but does not prove or falsify universal D6-08. Previously
proved scopes remain intact. D10-01/D9-01/D8-02/universal D7-01 remain
unresolved, and the stopped local-hole/capacity route is not reopened. No
Property D, reflection-pair normal form or homocyclic GS Lemma 4.3 was assumed.
No universal eta-core, eta-core classification, full CAND-02 classification,
actual bridge-failing extremal, novelty claim or publication-ready theorem is
recorded.

No mathematical computation ran because the obstruction is symbolic and does
not isolate a non-vacuous finite case capable of deciding the all-m bridge.

## Source, external review and status

GS Lemma 4.4(2)'s statement/proof was rechecked in arXiv:1806.07636v2. No new
source is promoted to a target-status result and no source non-hit is treated as
openness evidence.

CAND-02 remains **SOURCE-DEFINED / CURRENT STATUS UNKNOWN**. Mathematical
investigation remains OPEN; external review remains CLOSED. No newer committed
record contains substantive Xue Li feedback, so status remains owner-reported
SENT / REPLY PENDING, confirmed reviewers NONE. No willingness, endorsement,
novelty certification or approval is inferred. No outreach was sent.

## Validation and authority

See [VALIDATION.md](VALIDATION.md). The authority checker and warranted text/
JSON checks are run on the materialized candidate structure before publication.
The candidate tree is based on the exact incoming tree; remote `main` is
rechecked before a non-force fast-forward and the final remote commit/tree are
verified afterward. Repository validation does not certify mathematical truth.

Authority records are synchronized for the S012 result, stopped routes and next
bounded unit. Historical session records are preserved.

## Owner blockers and next unit

**Active owner blockers: NONE.**

Rather than inventing another minor progressive/capacity variation, S013 is
prepared as a source-based comparison of mathematically distinct routes. It
must determine whether current restricted-length zero-sum, homocyclic
stability/equality, or equal-factor eta/equality-case literature supplies a
new applicable input. A route is promoted only on source-backed applicability;
otherwise the programme should expose the strategic gap rather than rename it.

S020 remains the next periodic ten-session audit.
