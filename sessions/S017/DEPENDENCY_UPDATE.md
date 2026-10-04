# S017 dependency update

Date: 2026-10-04.

## D16-01

Status: **PARTIALLY RESOLVED — NEW 2-PRIMARY COUNTING DEPENDENCY; NO STRATUM EXCLUDED.**

For `n=2m` a power of two, Gao--Geroldinger 2007 applies directly to the full CAND group `C_2+C_n+C_n`. With source parameter `kappa=2`, the exact proof recurrence yields modulo four

`1+N_n(U)+N_{2n}(U)+N_{3n}(U)+N_{4n}(U)=0`

and, for every common-core token `tau`,

`1+N_{2n}(U tau^{-1})+N_{3n}(U tau^{-1})+N_{4n}(U tau^{-1})=0`.

Combining these with S016's deletion-star extremality gives the new pointwise relation

`N_n(U)+A_{2n}(tau)+A_{3n}(tau)+A_{4n}(tau)=0 (mod 4)`.

Summed over `M`,

`I_{2n}+I_{3n}+I_{4n}=delta N_n(U) (mod 4)`.

Gao--Geroldinger's p=2 total-count theorem also makes the number of all zero-sum subsequences containing each `tau` divisible by eight.

These are genuine counting dependencies on the infinite subfamily `m=2^s`. They do not yet exclude `delta=0,1,2` because the `2n`/`3n` incidence terms are uncontrolled.

## Source-transfer boundary

Chevalley--Warning/Sury and Reiher/Kemnitz congruences have prime cyclic or `C_p^2` hypotheses. Gao 2003 remains p-group-specific and its accessible Section 4 rendering has a definition/proof length ambiguity; under the conservative exponent-length specialization its size hypothesis fails for the CAND 2-group. No such result is transferred to arbitrary composite `n`.

When `n` has an odd factor, projection to a Sylow p-subgroup does not preserve the full-group zero-sum count. No inspected theorem supplies a mixed-primary fixed-length recurrence at the required threshold. Search non-hits are not novelty evidence.

## D17-01

New dependency: **2-primary higher-length threshold-star incidence closure.** Determine whether the CAND threshold/deletion structure forces enough information about `A_{2n}` and `A_{3n}` (with `A_{4n}` already explicit) to make the S017 modulo-4 relation exclude any `delta<=2` stratum on `m=2^s`; in parallel only source-backed mixed-primary transfers may be admitted.

This is materially different from S016's residual exchange system and from the stopped D7--D10/progressive routes. If the higher-length counts remain free and no exact transfer theorem is found, stop rather than rename the same dependency.