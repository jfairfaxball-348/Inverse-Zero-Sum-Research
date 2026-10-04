# S017 closeout — zero-sum counting congruences

Date: 2026-10-04.
Stage: P3 mathematical investigation with parallel external review.
Status: **COMPLETED BOUNDED SOURCE-FIRST INVESTIGATION; NEW 2-PRIMARY COUNTING DEPENDENCY; NO NEAR-FULL STRATUM EXCLUDED.**

## Session and authority

Incoming `main`: `1d5090b19cbea2536a35dfeb96f1bd995449b288`.
The supplied checkpoint exactly matched live `main`; no intervening change required reconciliation. S017 was unique on entry. The outgoing checkpoint is the containing commit, verified externally after publication rather than embedded inside itself.

## Useful results

S017 audited Chevalley--Warning/Kemnitz, Olson/Gao p-group and later prescribed-length counting routes at their exact hypotheses. The one directly applicable theorem class is Gao--Geroldinger 2007 when `n=2m` is a power of two.

On that infinite 2-primary subfamily, its higher-power recurrence gives an exact modulo-4 relation among the `n,2n,3n,4n` zero-sum counts of the S016 threshold sequence and a corresponding relation in every deletion-star extremal. Subtracting the relations yields, for every common-core token `tau`,

`N_n(U)+A_{2n}(tau)+A_{3n}(tau)+A_{4n}(tau)=0 (mod 4)`.

Summing across the common core gives

`I_{2n}+I_{3n}+I_{4n}=delta N_n(U) (mod 4)`,

so S016's exact unique/reservoir/edge counts now feed a genuinely different algebraic invariant. The same source gives a modulo-8 all-length token-incidence divisibility law.

No `delta<=2` stratum is excluded: the new relations retain uncontrolled `2n` and `3n` incidence counts. For mixed-primary `n`, no audited theorem transfers the p-group recurrence to the full-group prescribed-sum count. Projection to a Sylow subgroup is insufficient.

## Source boundary

Sury's Chevalley--Warning theorem is prime cyclic; Reiher's Kemnitz congruences are for `C_p^2`; Gao 2003 is p-group-specific and its accessible Section 4 rendering has a definition/proof counted-length ambiguity that S017 does not resolve by assumption. Gao--Geroldinger 2007 was inspected at theorem and proof-recurrence level and is the sole promoted counting input. Later p-group prescribed-length results checked are existence results rather than the required exact full-group count at this threshold.

Search non-hits and the mixed-primary source gap are not evidence of openness, novelty or publishability. CAND-02 remains SOURCE-DEFINED / CURRENT STATUS UNKNOWN.

## Validation and boundaries

No computation, formalisation or outreach ran. The recurrence hypotheses, `d*`, strict sequence-length inequality, binomial coefficients, deletion subtraction and top-length complement count were checked symbolically. Repository validation is recorded in `VALIDATION.md`; `scripts/check_authority.py` is run on the synchronized structural mirror before publication, followed by remote SHA/tree checks.

The old D7--D10 local-hole/capacity/Fano architecture and progressive-block route remain stopped. S017 did not use them.

## Changed evidence and authority

Created S017 input, source audit, mathematical derivation, dependency update, validation and closeout records, plus the S018 bounded brief. Updated state, entry point, decisions/blockers, roadmap, session ledger, claims/sources, failure/lesson ledger, live next prompt and README. Target/publication/reviewer registers were inspected; no target, venue-policy or reviewer-status fact changed.

## Owner blockers

**Active owner blockers: NONE.**

Mathematical investigation remains OPEN; external review remains CLOSED. Xue Li's Stage-1 reply remains pending absent substantive committed feedback. No reviewer willingness, endorsement, novelty certification or approval is inferred. Independent scrutiny and explicit later submission authorization remain future requirements.

## Next session

S018 is promoted because S017 produced a verified new modulo-4/modulo-8 dependency on an infinite modulus class rather than a cosmetic restatement. D17-01 asks whether higher-length threshold-star incidence closes the new congruence strongly enough to exclude a near-full stratum on `m=2^s`, while admitting a mixed-primary transfer only if an exact source theorem supports it. If that dependency remains free, S018 must stop rather than schedule a renamed continuation. S020 remains the next periodic ten-session audit.