# S006 published toolkit

Classification is relative to CAND-02.

| Tool | Exact role/hypothesis | Inspection | Classification | Limitation |
| --- | --- | --- | --- | --- |
| Exact `eta(C_m^2)`, `s(C_m^2)`, `eta(C_2^3)`, `s(C_2^3)` | Component thresholds in the natural kernel/quotient | Controlling proof checked | **DIRECTLY APPLICABLE** | Values only |
| Geroldinger--Halter-Koch Prop. 5.7.11 | If `exp(G)=exp(H)exp(G/H)`, gives standard `eta` and `s` subgroup/quotient upper bounds | Statement cross-checked; original proof not re-audited | **DIRECTLY APPLICABLE** | No equality classification |
| Edel et al. Prop. 3.1(3) | Lower-bound construction giving `eta(G_m)>=6m+2` | Relevant proposition/proof inspected | **DIRECTLY APPLICABLE** | Construction, not uniqueness |
| `s>=eta+exp-1` | Converts exact eta into EGZ lower bound | Controlling proof checked | **APPLICABLE AFTER A PUBLISHED REDUCTION** | Value only |
| GS 2019 Lemma 4.2 | Eta-extremal overlap rigidity in rank-two kernel | Full relevant proof inspected | **DIRECTLY APPLICABLE LOCALLY** | Needs legitimate kernel eta-extremals |
| GS 2019 Lemma 4.4(2) | Conditional translated eta-core reduction | Full proof inspected | **DIRECTLY APPLICABLE, CONDITIONAL ENTRY** | Need progressive-subsums `C`; not forced by source |
| GS 2019 Lemma 4.1 / Property-D s-extremal input | Property-D-sensitive rank-two rigidity | Full relevant proof inspected | **ANALOGY ONLY / DIFFERENT HYPOTHESIS** | Not unconditional in all `m` |
| GS 2019 Lemma 4.3 | Unequal-factor restricted-sum rigidity, `n>=2` | Full proof inspected | **ANALOGY ONLY / DIFFERENT PARAMETER REGIME** | Source explicitly says homocyclic analogue fails |
| GS 2020 Theorem 3.2 | Explicit `s(C_n)-2` cyclic near-extremal structure; restricted-sum complement <=1 | Full relevant proof inspected | **ANALOGY ONLY / DIFFERENT KERNEL** | CAND kernel is `C_m^2` |
| GS 2020 Lemmas 3.3--3.4 | Local `C_2^3` zero-sum/squarefree facts | Full proofs inspected | **DIRECTLY APPLICABLE LOCALLY** | Need CAND reduction producing the configuration |
| GS 2020 Theorem 4.1 | Eta-extremal classification for `C_2^2\oplus C_{2n}` | Full relevant proof inspected | **ANALOGY ONLY / DIFFERENT FAMILY** | Not equal-factor family |
| GS 2020 Theorem 5.1 / Cor. 5.3 | Complete inverse/core decomposition for `C_2^2\oplus C_{2n}` | Full relevant proof inspected | **ANALOGY ONLY / DIFFERENT FAMILY** | Decisive cyclic-kernel step does not transfer |
| Li--Yin 2024 `disc(G)` | Same broad group architecture, different invariant | Official abstract/metadata only | **SOURCE GAP / PROOF NOT YET INSPECTED** and **DIFFERENT INVARIANT** | No ordinary-EGZ lemma inferred |

## Closest inverse architecture

For `C_2^2\oplus C_{2n}`, the 2020 proof uses the unique cyclic kernel
`C_n` and quotient `C_2^3`. It extracts `2n-3` kernel-sum pairs and an
eight-term residue; the kernel sums form a length-`s(C_n)-2` cyclic
near-extremal. The cyclic theorem makes the relevant restricted-sum complement
at most one point. Only then do the `C_2^3` support arguments reduce to an
eta-extremal core classified by Theorem 4.1.

The common quotient is useful precedent, but the cyclic restricted-sum step is
structurally decisive. No inspected published theorem supplies its all-`m`
homocyclic replacement.

## Access boundary

Full relevant proofs: GS 2019, GS 2020, Edel et al. 2007 proposition.
Exact statement but original proof not separately audited: GH-K Prop. 5.7.11.
Statement/abstract only: Li--Yin 2024 in S006. No access/search gap is treated
as evidence of openness.
