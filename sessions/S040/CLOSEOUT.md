# S040 closeout

Date: 2026-10-06.
Status: **COMPLETED D39-01; ALL S039 SIGNATURES COLLAPSE; EXACT INTERNAL CLASSIFICATION PROVED.**
Incoming branch/SHA: `main` at `5434c9b2add8762d45c03712948ad3ca75b4a773`.

## Bounded objective and outcome

D39-01 applied only the exact full-rank `C_3^3` residual statements authorized by S039.

For every `s=8` packing, every representative-deletion residual has length 16 and sum zero. Comparing two representative choices in one packed block forces that block to be constant. Hence no 2-block can occur, eliminating `(6,8,2)` and `(7,8,1)`; the surviving branch is `(8,8,0)), with

`S=U^3`

and `U` squarefree short-free of length 8.

For a length-15 short-free residual, D39-01 proves the exact multiplicity profile `2^7 1` on eight support values and identifies the singleton as `-sigma(R)`. Applying that identity to every representative transversal in the `(6,9,0)` packing shows that a nonconstant packed block forces every complementary representative sum to vanish. The existence of a second nonconstant 2-block contradicts this. Thus `(6,9,0)` is impossible.

Combining this necessity with the separately rechecked sufficiency construction in Gao--Hui--Li--Li--Qu--Zhong 2024 Lemma 3.3(2) yields the internal target classification:

> `S` is CAND-03 extremal if and only if `S=U^3` for a squarefree short-free length-8 sequence `U`.

The source lower-bound construction is not used as an inverse theorem; necessity was proved independently first.

## Status boundary

The mathematical classification is **PROGRAMME-PROVED FROM CHECKED SOURCE INPUTS**. S040 does not establish that the classification is new in the literature, that the inverse problem was previously open, that the result is publication-significant, or that it has passed independent review. Those questions remain separate.

No orbit enumeration, cap-set reformulation, S038 repair, CAND-02/CAND-05 machinery, outreach, manuscript or submission action occurred.

## Continuation

D39-01 produces a genuinely new target-wide constraint beyond S039 and in fact closes the selected mathematical classification. Exactly one successor is promoted: **S041 / D40-01**, independent proof-chain verification plus a focused primary-source/current-status overlap audit. It must not iterate residual variants or start a new proof architecture.

Active owner blockers: **NONE**. External review remains CLOSED. Xue Li Stage-1 remains CAND-02-specific and reply pending.

## Repository close

State, start-here, roadmap, target/publication/reviewer registers, claims/sources, decisions/blockers, failure lessons, session ledger, README, S041 brief and live next-session prompt are synchronized. Validation is recorded in `sessions/S040/VALIDATION.md`. Final remote SHA/tree verification follows the atomic publication from the staging branch.
