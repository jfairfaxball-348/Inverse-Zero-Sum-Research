# S022 — CAND-05 due diligence and proof readiness

Date: 2026-10-05.  
Verdict: **SURVIVES / SOURCE-DEFINED / CURRENT STATUS UNKNOWN.**

## Exact theorem identity

For `G_m=C_2\oplus C_{2m}\oplus C_{2m}`, `exp(G_m)=2m`. A sequence is an unordered finite sequence in the free abelian monoid over the group, so repetitions are allowed. The ordinary constant `eta(G)` is the least length forcing a nonempty zero-sum subsequence of length at most `exp(G)`.

Girard--Schmid (2019) proves
`eta(G_m)=6m+2`
for every `m>=1`. Hence CAND-05 is exactly the classification of length-`6m+1` ordinary-`eta` extremals for `m>=2`.

Automorphisms preserve the condition. Arbitrary translation does **not**: translating a `k`-term subsequence by `h` changes its sum by `kh`, while CAND-05 forbids all lengths `1<=k<=2m`. This is materially different from CAND-02's exact-`2m` EGZ condition.

The `m=1` endpoint is `C_2^3`; the closest inverse source records the unique length-7 eta-extremal as the squarefree sequence of all seven nonzero elements. The live target therefore correctly begins at `m=2`.

## Direct-proof baseline

The controlling equal-factor proof uses the sharp subgroup/quotient inequality with
`H=2G_m\cong C_m^2` and `Q=G_m/H\cong C_2^3`:
`eta(G_m)<=2(eta(H)-1)+eta(Q)=2(3m-3)+8=6m+2`.

The proof establishes the value. It does **not** state an equality-case decomposition or classify all length-`6m+1` extremals. Equality rigidity is therefore a separate research dependency, not a published conclusion silently available from the direct theorem.

## Rank-two input and hidden prerequisites

The same primary source recalls an unconditional inverse-`eta` theorem for every rank-two `C_m\oplus C_{mn}`; specializing to `C_m^2` gives a rigid classification of every length-`3m-3=eta(C_m^2)-1` eta-extremal.

Property D belongs to the neighboring inverse-EGZ theorem, not this inverse-`eta` input. S022 therefore found **no hidden Property-D prerequisite** for CAND-05, and no unresolved direct-constant prerequisite.

## Closest rank-three inverse theorem

Girard--Schmid (2020) solves ordinary inverse `eta` for the distinct family `C_2\oplus C_2\oplus C_{2n}`. Its proof is relevant precedent for equality-style quotient extraction, but it uses a cyclic kernel and family-specific structure. It does not specialize to CAND-05 for `m>=2`.

## Current-status and prior-art audit

Searches through 2026-10-05 used:
- inverse `eta`, `eta(G)-1`, short-zero-sum and zero-sum-free-up-to-exponent terminology;
- `C_2+C_{2m}+C_{2m}`, `C_2+C_{2m}^2`, invariant-factor and product notations;
- `6m+1`, `C_2+C_4+C_4`, `C_2+C_6+C_6`, `C_2+C_8+C_8`;
- prime, prime-power, power-of-two and odd-`m` formulations;
- recent papers/preprints, citation neighborhoods, author lists, theses/repositories and alternate invariant terminology.

No checked source supplied the requested all-`m` inverse-`eta` classification or a small/arithmetic subfamily theorem visibly subsuming a meaningful part of it. This is a **bounded search non-hit only** and is not evidence of openness or novelty.

Neighboring results were separated carefully:
- `s(G)` / EGZ forbids an exact exponent-length zero sum, not all short zero sums;
- `disc(G)` controls zero sums of distinct lengths and has same-ambient-group work, but is a different invariant;
- Narkiewicz-sense `eta` / `eta^N` is a different invariant;
- `D_k` concerns several disjoint zero sums, without CAND-05's length cutoff;
- restricted `s_{<=k}` results use different cutoff/length regimes.

## Small and arithmetic subfamilies

No target-specific classification was located for `m=2`, `m=3`, powers of two, primes, prime powers, or odd `m`; again these are non-hits, not openness claims.

There is a genuine arithmetic structural distinction for later work. For odd `m`, CRT gives `G_m\cong C_2^3\oplus C_m^2`. For even `m`, the extension through `2G_m` need not split in that form. If `m` is a power of two then `G_m` is a 2-group. S022 found no source-based reason to narrow before testing the uniform equality mechanism.

## Structural dependency map

Source-established:
`CAND-05 extremal -> H=2G_m\cong C_m^2, Q\cong C_2^3 -> sharp eta inequality`.

First missing dependency:
**D22-01 equality decomposition.**

If D22-01 succeeds, the induced kernel-sum sequence should lie exactly at the unconditional rank-two inverse-`eta` threshold. A later lift-compatibility problem would still remain and may be substantial. S022 does not assume that later step is easy.

## Contribution and anti-churn assessment

- Full all-`m` structural classification: strong programme-level contribution if correct and genuinely new.
- Broad theorem-driven arithmetic subfamily: potentially meaningful if structurally uniform.
- Reusable all-`m` reduction: potentially meaningful if it materially narrows lift compatibility rather than restating the standard inequality.
- Isolated small-`m` catalogue: below the programme bar unless it exposes a reusable theorem.

Do not launch multiple lift architectures. Settle D22-01 first. If it fails, stop at the first exact failed implication. If it succeeds, select at most one next lift bottleneck.

## Publication and reviewer implications

E-JC remains the leading eligible venue and JNT a natural comparable/backup; this is fit/eligibility, not an acceptance prediction.

David J. Grynkiewicz is the strongest provisional independent CAND-05 status/proposal lead surfaced by the audit, with Pingzhi Yuan a strong alternative. Girard and Schmid are exact controlling-source experts but are not treated as the default independent route. No one was contacted.

## Proof-readiness verdict

No known completion, material overlap, hidden major prerequisite, or significance problem was identified in the bounded S022 audit. Therefore no owner blocker is activated. The mathematical-investigation gate is reopened for **one bounded S023 unit only: D22-01**.

CAND-05 remains CURRENT STATUS UNKNOWN. S022 does not certify openness, novelty, proof feasibility, or publishability.
