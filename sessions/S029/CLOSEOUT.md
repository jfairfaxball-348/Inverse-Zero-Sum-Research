# S029 closeout

## Session and authority

- Session: S029.
- Date: 2026-10-05.
- Stage: CAND-05 bounded mathematical investigation.
- Status: **COMPLETED — D28-01 EXACT COMPLETION-SHELL CLASSIFICATION / TARGET RESTRICTED, NOT EXCLUDED.**
- Incoming `main`: `538399fba38ae5ef424a59520fc6b19a31e6faa8`.
- Incoming tree: `593a6d92a777d19715244c97c7d5a51eb16a7106`.
- Reconciliation: live authority exactly matched the supplied S028 checkpoint;
  S029 was unique.
- Outgoing SHA is verified externally after publication and is not self-embedded
  here.

## Useful results

For the canonical kernel

`K=h_1^(m-1) h_2^(m-1) (h_2-a h_1)^(m-1)`

over `H=C_m^2`, S029 gives an exact formula for completion depth and therefore
classifies the full depth-`m-1` shell.

Writing `h_3=h_2-a h_1`:

- if `a=1`,
  `E(K)=(h_2+<h_1>) union (h_1+<h_3>)`;
- if `a=-1`,
  `E(K)=(h_2+<h_1>) union (h_1+<h_2>)`;
- for every other unit `a`,
  `E(K)=(h_2+<h_1>) union {h_1,h_2+h_3}`.

Thus the exceptional units `+-1` have shell size `2m-1`, while the generic
unit shell has size `m+2`.

For the one fixed simultaneous-positive S028 coset, with
`z=u+t` and `w=h+z`, actual extremality requires
`z in E(K)-h`, with the translated sets written explicitly in
`EVEN_COMPLETION_SHELL.md`.

This is restrictive but not an exclusion: every kernel support value `h_i`
lies in `E(K)`, so `z=0` remains allowed for every possible bucket.
The S028 boundary `u=t` therefore survives.

No actual simultaneous-positive extremal is constructed or claimed.

## Boundary and next frontier

S029 does not solve the global `k_q/r_q` vector, inspect other residual
quotient-zero subsets, classify seven lifts, analyze odd `m`, normalize
quotient automorphisms, or claim the full CAND-05 classification.

The next bounded dependency is D29-01: use the already-classified shell on the
other quotient-zero residual triples through the common class `ell`, and test
only whether their simultaneous shell memberships create a cross-coset
compatibility obstruction for the same lift `u=x_ell`.

CAND-05 remains **SOURCE-DEFINED / CURRENT STATUS UNKNOWN**. The S029 theorem is
internal programme mathematics, not independently reviewed, formally verified,
novelty-certified or publication-ready.

## Gates and review

- target gate: OPEN
- publication gate: OPEN
- mathematical-investigation gate: OPEN
- external-review gate: CLOSED
- active owner blockers: NONE

No outreach occurred. Xue Li's pending message remains CAND-02-specific.

## Validation

The exact shell formula was independently enumerated for every even
`4<=m<=40` and every unit `a mod m`, with zero discrepancies.
The exact repository authority checker passed in the reconstructed proposed-state
harness used by recent sessions, and its JSON parse passed. The actual proposed
state blob was separately parsed before storage. Final remote tree and branch SHA
are verified after the fast-forward checkpoint.

## Changed files

S029 adds its input, mathematics, source-check, validation and closeout records;
updates the live state, roadmap, target, claims, decisions, failure lesson,
session, publication and reviewer registers; updates the entry point; and
prepares the S030 brief and live prompt.

## Next session

S030 is one bounded unit on D29-01 only: test the simultaneous completion-shell
constraints on the three quotient-zero residual lines through `ell`, using
the same `u=x_ell`. It may not solve global weights/lifts, inspect the other
Fano lines, treat odd `m`, normalize quotient automorphisms, or claim
existence/full classification.
