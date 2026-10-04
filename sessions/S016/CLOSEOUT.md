# S016 closeout — near-full replacement-core threshold stars

Date: 2026-10-04.
Stage: P3 mathematical investigation with parallel external review.
Status: **COMPLETED BOUNDED INVESTIGATION; NEAR-FULL NORMAL FORM PROVED;
EXISTENCE UNRESOLVED; AMBIENT ROUTE STOPPED PENDING STRATEGY REASSESSMENT.**

## Session and authority

Incoming `main`: `51b4173dcc26eed2361f670c31d77cc00311cefd`.
The supplied checkpoint exactly matched live `main`; no reconciliation was
needed. S016 was unique on entry. The outgoing checkpoint is the containing
final commit, verified externally after publication rather than embedded here.

## Mathematical outcome

S016 does not prove `delta_a>=3` and does not construct an actual near-full
nontrivial core. It proves four new ambient deductions in
[NEAR_FULL_REPLACEMENT_CORE.md](NEAR_FULL_REPLACEMENT_CORE.md):

- **S016-P1:** adjoining the target produces a threshold deletion star
  `U=MO`. Every deletion of a token of `M` is extremal, every transported
  target has core `M` minus that token, one residual family is shared by the
  whole orbit, and `M` is exactly the intersection of all `n)-zero sums
  in `U`.
- **S016-P2:** deficits zero, one and two have exact threshold-zero-sum normal
  forms. Deficit two is a fixed-sum positional graph whose value-class
  components and empty-intersection cases are classified exactly.
- **S016-P3:** the S015 common-deletion witness is exactly the same residual
  family after the two core tokens are removed; it supplies no independent
  near-full constraint.
- **S016-P4:** deficit descent yields the exact shifted exchange equation
  `|Y|=delta+|X|`,
  `sigma(Y)-sigma(X)=q+u-t`. The remaining escape is either a shifted
  outside residual or a cross-boundary exchange, neither controlled by the
  current ambient theorems.

This meets the S016 brief's sharp-classification criterion and also identifies
the exact stopping obstruction. It uses no quotient/kernel one-change,
double-hole, Fano, capacity or progressive-block machinery.

## Source / computation / review boundary

A focused check was made only after the threshold-star formulation appeared.
It found adjacent fixed-length/generalized EGZ literature, including the
already-recorded Gao--Hong--Peng 2022 line, but no checked statement directly
matching the large common-intersection/deletion-star theorem needed here.
That non-hit is not novelty or openness evidence.

No mathematical computation, solver, formalisation or outreach ran.

CAND-02 remains **SOURCE-DEFINED / CURRENT STATUS UNKNOWN**. Mathematical
investigation remains OPEN and external review CLOSED. No newer committed
record contains substantive Xue Li feedback; status remains owner-reported
SENT 2026-10-02 / REPLY PENDING, confirmed reviewers NONE. No willingness,
endorsement, novelty certification or approval is inferred.

## Validation and repository boundary

Symbolic checks and repository validation are recorded in
[VALIDATION.md](VALIDATION.md). The execution container could not resolve
`github.com`, so direct cloning was unavailable. As in S015, the exact
`scripts/check_authority.py` was run on a materialized structural mirror of
the synchronized candidate authority, followed by live remote rechecks.
Repository checks do not certify mathematical truth or novelty.

## Strategy disposition

D15-01 is structurally sharpened but its existence/exclusion question remains
unresolved. The present ambient system has no further non-cosmetic forcing step:
the threshold-star restatement is equivalent to the remaining problem and the
shifted exchange is uncontrolled.

Accordingly no cosmetic S017 is scheduled. **B-007 is activated** for owner
strategy reassessment: choose a genuinely new theorem/mechanism or source
acquisition direction for the full target, deliberately narrow/re-audit a
contribution, or reassess the target. This blocker does not close the target,
publication or mathematical-investigation gates.

S020 remains the next periodic audit if the programme later reaches it.
