# S022 structural dependency map

Date: 2026-10-05.

## Source-established inputs

- `G_m=C_2\oplus C_{2m}\oplus C_{2m}`, `exp(G_m)=2m`.
- `eta(G_m)=6m+2`.
- `H=2G_m\cong C_m^2`; `Q=G_m/H\cong C_2^3`.
- `eta(H)=3m-2`; rank-two inverse `eta` at length `3m-3` is unconditional.
- `eta(Q)=8`; the length-7 eta-extremal over `C_2^3` is the squarefree sequence of all seven nonzero elements.

## D22-01 — first missing dependency

For an actual CAND-05 extremal `S`, prove or refute the equality decomposition suggested by
`6m+1=2(3m-3)+7`:

1. no term of `S` lies in `H`;
2. `S=P_1\cdots P_{3m-3}R`, where every `P_i` has two terms and quotient sum zero, and `|R|=7`;
3. the quotient image of `R` is the unique length-7 `C_2^3` eta-extremal;
4. `K=\prod_i sigma(P_i)` is a length-`3m-3` eta-extremal over `H`, so the unconditional rank-two inverse theorem applies.

These are **S023 questions, not S022 theorems**.

## Downstream boundary

If D22-01 succeeds, D22-02 would be the lift-compatibility problem: classify original terms/pairings in the seven nonzero quotient fibres consistent with the rank-two kernel-sum form and global short-zero-sum avoidance.

Do not begin D22-02 in S023. Do not revive CAND-02 local-hole, replacement-core, progressive-block, counting, or binary-design architectures without a new exact dependency.

For later quotient normalization, verify liftability of quotient automorphisms in `Aut(G_m)`; do not silently assume uniform `GL(3,2)` lifting across odd/even `m`.

## Anti-churn rule

If any item of D22-01 fails, isolate the first failed implication and stop. If D22-01 succeeds but leaves essentially arbitrary lift data, assess the reduction's contribution value before starting another architecture.
