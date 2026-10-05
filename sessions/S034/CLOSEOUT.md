# S034 closeout

## Session and authority

- Session: S034.
- Date: 2026-10-05.
- Stage: CAND-05 bounded route reassessment.
- Status: **COMPLETED — D33-01 MECHANISM REASSESSMENT / ONE GLOBAL SUCCESSOR PROMOTED.**
- Incoming `main`: `32254190e90f166defd5d1247d78156ce20d0066`.
- Reconciliation: S033 was completed, S034 was READY and unique, and no active owner blocker was present.
- Outgoing SHA is verified externally after publication and is not self-embedded here.

## Useful result

S034 does not reopen the stopped residual-shell route. For the three nonzero `L`-cosets, the bucket equations give `k_{q_i}+k_{q_i+ell}=m-1`, hence each complete coset block `B_i` has length `2m`, while the `ell` fibre is the singleton `u`. Thus `S=B_1B_2B_3u`.

Choosing a positive-weight member `x_i` of each coset, its partner `y_i`, and `tau_i=y_i-x_i`, one has `sigma(B_i)=tau_i` even when `y_i` has zero kernel weight. Consequently `sigma(S)=u+tau_1+tau_2+tau_3=zeta`.

The focused source recheck supplies the materially different global input `D_2(G_m)=6m+1`. Every candidate therefore has two disjoint nonempty zero sums, each of length at least `2m+1`. If `zeta=0` they must partition the whole sequence; if `zeta!=0` they leave a nonempty complement of length at most `2m-1` whose sum is `zeta`.

This full-sequence factorisation and zero-weight-fibre aggregate data are not encoded by the S029 completion-depth function, so the mechanism clears the anti-churn bar.

## Mechanism comparison and route decision

- Global weight arithmetic: exact and runnable, but the three split equations are independent; not promoted alone.
- Zero-weight lift constraints: aggregate block sums are exact, but classifying individual invisible lifts would violate scope; not promoted alone.
- Global/source mechanism: the exact two-wise Davenport threshold consumes the block data without first classifying all lifts; promoted.

Exactly one successor is selected: D34-01, the even multiwise block-factorisation test. No owner blocker is activated.

## Boundary

S034 does not prove D34-01, solve the global `k_q/r_q` vector, classify all seven lifts, inspect another residual subset or translated shell, treat odd `m`, normalize quotient automorphisms, construct a simultaneous-positive extremal, or claim full CAND-05 classification.

CAND-05 remains **SOURCE-DEFINED / CURRENT STATUS UNKNOWN**. The new identities and route choice are internal and not independently reviewed, formally verified, novelty-certified, or publication-ready.

## Gates and review

- target gate: OPEN
- publication gate: OPEN
- mathematical-investigation gate: OPEN
- external-review gate: CLOSED
- active owner blockers: NONE

No outreach occurred. Xue Li's pending message remains CAND-02-specific.

## Validation

See `VALIDATION.md`. The exact authority checker passed in the reconstructed proposed-state harness; proposed `STATE.json` is JSON-valid; primary source statements were rechecked. Final remote SHA/tree and S035 prompt/brief are verified after publication.

## Next session

S035 runs D34-01 only: the even multiwise block-factorisation test using the three length-`2m` coset blocks, their aggregate lift sums, the fixed split-coset torsion, and `D_2(G_m)=6m+1`. It must stop before global weight/lift classification or any return to the S029--S033 residual-shell family.
