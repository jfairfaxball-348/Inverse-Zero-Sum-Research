# S028 closeout

## Session and authority

- Session: S028.
- Date: 2026-10-05.
- Stage: CAND-05 bounded mathematical investigation.
- Status: **COMPLETED — D27-01 PARTIAL STRUCTURAL RESOLUTION.**
- Incoming `main`: `b00613e1ae59904a65a65706728e6de5bd0176b6`.
- Incoming tree: `909a48768ae1cb55b36b318f340f8a48bc64e090`.
- Reconciliation: live authority exactly matched the supplied S027 checkpoint;
  S028 was unique.
- Outgoing SHA is verified externally after publication and is not self-embedded
  here.

## Useful results

For even `m`, fix a nonzero `L`-coset `{q,q+ell}` with bucket value
`h`.

- If both members are positive, their weights satisfy
  `k_q+k_{q+ell}=m-1`. Thus simultaneous positivity is impossible for
  `m=2`.
- For even `m>=4`, with `t=x_{q+ell}-x_q`, one has
  `t in G_m[2]`, `pi(t)=ell`, and the full two-fibre block has length
  `2m` but sum `t!=0`.
- Let `u=x_ell` and `w=x_q+x_{q+ell}+u=h+t+u in H`. Any actual
  simultaneous-positive extremal forces the minimum number of terms of the
  canonical kernel needed to sum to `-w` to be exactly `m-1`.
- S025--S027 do not control `u+t`. The boundary case `u=t` gives
  `w=h` and satisfies the exact completion budget, so simultaneous
  positivity is not excluded for even `m>=4`.

No actual extremal with simultaneous positivity is constructed or claimed.

## Boundary and next frontier

S028 does not solve the global `k_q/r_q` vector, classify the seven lifts,
analyze odd `m`, normalize quotient automorphisms, or claim the full CAND-05
classification.

The single next dependency is D28-01: classify the depth-`m-1` completion
shell of the canonical kernel
`K=h_1^(m-1) h_2^(m-1) h_3^(m-1)` and apply it only to the fixed-coset
target `w=h+x_ell+t`.

CAND-05 remains **SOURCE-DEFINED / CURRENT STATUS UNKNOWN**. The result is
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

The exact authority checker passed in the reconstructed proposed-state harness;
the exact output and limitation are recorded in `VALIDATION.md`.
`python3 -m json.tool authoritative/STATE.json` also passed. No mathematical
computation or formalisation was required. The final remote tree and branch SHA
are verified after the fast-forward checkpoint.

## Changed files

S028 adds its input, mathematics, source-check, validation and closeout records;
updates the live state, roadmap, target, claims, decisions, failure lesson,
session, publication and reviewer registers; and prepares the S029 brief and
live prompt.

## Next session

S029 is one bounded unit on D28-01 only: classify the canonical-kernel
depth-`m-1` completion shell and apply it to the single S028 target. It may
not continue into global weights, seven-lift classification, the odd-modulus
branch, quotient normalization or an existence claim.
