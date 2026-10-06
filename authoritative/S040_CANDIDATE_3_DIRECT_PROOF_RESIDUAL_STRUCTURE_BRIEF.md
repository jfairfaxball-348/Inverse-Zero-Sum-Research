# S040 CAND-03 direct-proof residual-structure brief

Date prepared: 2026-10-06.
Status: READY.
Selected target: CAND-03.
Unit: D39-01.

## Purpose

S039 extracted the first genuinely target-wide structural constraint from the defining/direct generalized-Narkiewicz proof. Every maximal packing of position-disjoint short minimal zero sums in a length-24 CAND-03 extremal has signature `(l,s,r) in {(6,8,2),(7,8,1),(8,8,0),(6,9,0)}`, and deleting one representative from every packed block leaves a short-free residual of length `24-s`, hence 16 or 15.

Run exactly one bounded mathematical unit on those residuals. Do not revisit the source-strategy comparison.

## D39-01 — full-rank residual structure

Recheck the exact source statements before applying them, especially Fan--Gao--Wang--Zhong--Zhuang (2012) Lemmas 28--29 and Property C for `C_3^3`.

For each of the four S039 signatures, determine only the structural consequences forced on the representative-deletion residual:

- for the `s=8` branches, use the exact length-16 short-free structure and sum statement;
- for the `s=9` branch, use the exact length-15 `C_0(C_3^3)` consequence;
- carry all conclusions back only through the original positional packing data, preserving multiplicities and the arbitrary-choice quantifier on representatives.

The goal is to decide whether these full-rank source statements collapse any signatures or force a canonical support/multiplicity datum useful for the inverse classification. Stop at the first exact structural reduction or exact no-go.

## Hard stops

- Do not reopen S038 by rank-two restriction, projection, affine translation, arbitrary deletion or disguised extraction.
- Do not enumerate extremal orbits, switch to cap-set language, or replace sequences by sets.
- Do not import CAND-02/CAND-05 machinery.
- Do not assume that the published lower-bound construction classifies all extremals.
- Do not broaden from the S039 representative-deletion residuals to an unrelated zero-sum problem.
- Do not infer openness or novelty from search non-hits.

Promote at most one successor only if D39-01 produces a new target-wide structural constraint beyond the S039 four-signature statement. Otherwise stop and reassess strategy rather than iterating residual variants.

No outreach, manuscript, submission or public action is authorized. Xue Li Stage-1 remains CAND-02-specific and reply pending.

## Closeout

Synchronize authority, claims, source boundaries and session ledger. Run `scripts/check_authority.py` and warranted checks, commit safely to `main`, verify remote SHA/tree, and automatically give the close report.
