# S023 CAND-05 equality-decomposition brief

Date prepared: 2026-10-05.  
Status: READY.

## Purpose

Run one bounded mathematical unit on CAND-05 after S022's due-diligence gate reopening.

Let `G_m=C_2\oplus C_{2m}\oplus C_{2m}`, `H=2G_m\cong C_m^2`, `Q=G_m/H\cong C_2^3`, and `pi:G_m->Q`.

For an actual length-`6m+1` CAND-05 extremal `S`, prove or refute D22-01:

1. `S` has no term in `H`.
2. There are disjoint two-term blocks `P_1,...,P_{3m-3}` with quotient sum zero and a residual `R` of length 7 such that `S=P_1...P_{3m-3}R`.
3. `pi(R)` is the unique length-7 eta-extremal of `C_2^3`: all seven nonzero quotient elements once.
4. The kernel-sum sequence `K=prod_i sigma(P_i)` is a length-`3m-3=eta(C_m^2)-1` ordinary-eta extremal over `H`, so the unconditional rank-two inverse-eta theorem applies.

Use the exact extraction logic behind the standard inductive inequality. Recheck every length conversion: a zero sum of at most `m` pair sums lifts to a zero sum of at most `2m` original terms.

## Required authority

Read S022 `CANDIDATE_5_DUE_DILIGENCE.md`, `SOURCE_AUDIT.md`, `STRUCTURAL_DEPENDENCY_MAP.md`, and closeout; then inspect the relevant Girard--Schmid 2019 direct/rank-two inverse material and Girard--Schmid 2020 inverse-`eta` extraction proof.

S022 search non-hits remain non-evidence of openness or novelty.

## Anti-churn stop rule

At the **first failed implication** among items 1--4, record the exact defect and stop. Do not repair it by launching CAND-02 local-hole, replacement-core, progressive-block, counting, or binary-design routes.

If D22-01 succeeds, record whether the decomposition/kernel sequence depends materially on the pair extraction, but **do not** start the downstream lift classification in S023. At close, identify at most one next exact lift dependency if justified.

No computation is required. Any tiny sanity check must have a stated evidentiary role and cannot replace the all-`m` argument.

Close under repository protocol, run `scripts/check_authority.py` and warranted checks, commit safely to `main`, and verify remote SHA/tree.
