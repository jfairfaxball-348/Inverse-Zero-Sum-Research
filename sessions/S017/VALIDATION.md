# S017 validation

Date: 2026-10-04.

## Mathematical/source checks

1. **Source hypothesis.** Gao--Geroldinger 2007 Theorem 1.1 and its proof recurrence were inspected in the full paper. It applies only to finite abelian p-groups.
2. **2-primary invariant.** If `n` is a power of two, `G=C_2+C_n+C_n` is a 2-group with `exp(G)=n` and `d*(G)=2n-1`.
3. **Length inequality.** With source parameter `kappa=2`, the required strict bound is `|T|>4n-1`. Both `U` (`4n+1`) and every deletion `W_tau` (`4n`) satisfy it.
4. **Recurrence index.** `w=ceil((1+d*)/n)=2`; `r=4,j=0` is admissible because `r=kappa+w`.
5. **U coefficients.** For `n` a power of two with `n>=4`, the four nontrivial binomial coefficients are `n+1,2n+1,3n+1,4n+1`, all `1 mod 4`; recurrence signs are positive because `n` is even.
6. **Deletion coefficients.** At length `4n`, all five recurrence coefficients at lengths `0,n,2n,3n,4n` are exactly one; S016 independently supplies `N_n(W_tau)=0`.
7. **Incidence subtraction.** `N_r(W_tau)=N_r(U)-A_r(tau)`, and every `n`-zero sum contains `M`, so `A_n(tau)=N_n(U)`. This gives S017.3.
8. **Top-length term.** A `4n`-term subsequence of `U` omits exactly one token; it is zero-sum iff the omitted value is `sigma(U)`. Hence the S017.4 expression for `A_{4n}` is exact.
9. **Aggregate relation.** Summing over `M` gives `|M|N_n+I_2+I_3+I_4=0 mod 4`; because `|M|=n-delta` and `n=0 mod 4`, this is `I_2+I_3+I_4=delta N_n mod 4`.
10. **Modulo-eight total count.** Theorem 1.1(2) gives total prescribed-zero counts divisible by `2^(kappa+1)=8` for both `U` and each deletion; subtraction counts exactly the zero-sum subsequences containing the deleted token.
11. **Mixed-primary stop.** A Sylow projection zero-sum condition is weaker than a full-group zero-sum condition, so no p-group theorem was transferred to arbitrary mixed-primary `n`.

No mathematical computation or experiment was run; all new deductions are symbolic. No quotient fibers, rank-two one-change stability, Fano incidence, capacities or progressive blocks are used.

## Repository checks

`python3 scripts/check_authority.py` is run on a materialized structural mirror of the synchronized candidate state before `main` is moved. JSON/session/prompt consistency, unique S017 checkpoint status, next S018 brief/prompt consistency and unchanged Apache licence are also checked. Remote `main` is re-read immediately before the fast-forward and the final remote SHA/tree are verified after publication.

These checks validate source/application arithmetic and repository bookkeeping only. They do not establish novelty, full literature coverage, independent mathematical review or the correctness of the full CAND-02 classification.