# S019 closeout — binary incidence separator/design realization

Date: 2026-10-04.
Stage: P3 mathematical investigation with parallel external review.
Status: **COMPLETED BOUNDED INVESTIGATION; BINARY DESIGN-ONLY SEPARATOR RULED
OUT; NO DEFICIT STRATUM EXCLUDED.**

## Session and authority

Incoming branch: `main`.
Incoming SHA: `763a6daf5919268b6dea4fb8c0472822e849f658`.
The supplied checkpoint exactly matched live main; no reconciliation was
needed and S019 was unique. The outgoing checkpoint is the containing final
commit, verified externally after publication rather than embedded here.

## Useful result

S019 resolves the brief's binary-design question negatively without renaming
the S018 split bit.

- **S019-P1:** Frankl's primary proof of Wilson's mod-p inclusion-rank formula
  gives, over GF(2), full row rank for the n-versus-3n inclusion matrix and
  row corank one for n-versus-2n on 4n+1 positions. The unique 2n defect is
  only the aggregate even n-codegree relation.
- **S019-P2:** direct fixed-block-size constructions give an n-to-3n
  all-codegree lift, a 4n-to-2n all-codegree lift, and an odd 2n null family
  whose nonempty codegrees through n all vanish.
- **S019-P3:** applying those lifts to the exact S016 n-zero-sum family and
  explicit 4n layer produces separate abstract 2n and 3n block families
  matching every S018 binary codegree through n and both known global layer
  parities, for every delta=0,1,2 normal form.

Therefore unrestricted binary inclusion/design linear algebra supplies no
independent separator and cannot by itself exclude a near-full stratum.

## Boundary

This is not a zero-sum-layer realization. The abstract 2n/3n blocks need not
sum to zero. The remaining modulo-4 split is unresolved. No actual CAND
extremal, deficit exclusion, all-m classification, mixed-primary transfer,
novelty claim or publication-ready result is recorded.

D-050, D-057 and the S017/S018 source boundaries remain intact. The stopped
D7–D10 local-hole/capacity/Fano, progressive-block and S016 shifted-exchange
routes were not reopened.

## Source, computation and review

Frankl 1990 was inspected as the exact primary rank source; SOURCE_AUDIT.md
records the formula and the Wilson original reference. No source non-hit is
used as open-status evidence.

A four-parameter binomial-parity sanity check ran only after the exact finite
incidence system and symbolic proof were stated. The code, parameters and
output are preserved in `parity_sanity.py` and VALIDATION.md; it has no proof
weight.

External review remains CLOSED. Xue Li Stage-1 remains owner-reported
SENT 2026-10-02 / REPLY PENDING absent substantive committed feedback.
No reviewer willingness, endorsement, novelty certification or approval is
inferred.

## Validation and changed records

VALIDATION.md records the symbolic checks, preserved code check, exact
authority-checker pass, candidate-tree link check, final race check and remote
verification boundary.

Created:
- sessions/S019/INPUT_SNAPSHOT.md
- sessions/S019/SOURCE_AUDIT.md
- sessions/S019/BINARY_INCIDENCE_SEPARATOR.md
- sessions/S019/DEPENDENCY_UPDATE.md
- sessions/S019/parity_sanity.py
- sessions/S019/VALIDATION.md
- sessions/S019/CLOSEOUT.md
- authoritative/S020_TEN_SESSION_AUDIT_BRIEF.md

Updated:
- README.md
- authoritative/STATE.json
- authoritative/START_HERE.md
- authoritative/ROADMAP.md
- authoritative/DECISIONS_AND_BLOCKERS.md
- authoritative/CLAIMS_AND_SOURCES.md
- authoritative/FAILURE_AND_LESSON_LEDGER.md
- authoritative/SESSION_LEDGER.md
- authoritative/NEXT_SESSION_PROMPT.md

TARGET_REGISTER, PUBLICATION_REGISTER and REVIEWER_REGISTER were inspected and
require no substantive change: target scope, venue fact and reviewer status did
not change.

## Owner blockers and next unit

**Active owner blockers: NONE.**

Per D-063, S019 does not promote another incidence proof session. S020 is the
required periodic S011–S020 ten-session audit and strategy reassessment. It
must either identify one genuinely distinct, source- and hypothesis-justified
S021 dependency without executing it, or activate the appropriate owner
strategy blocker. No S021 route is preselected here.
