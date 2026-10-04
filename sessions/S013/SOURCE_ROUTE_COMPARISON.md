# S013 — source-based route comparison

Date: 2026-10-04.
Outcome: **NO ROUTE CLEARS THE PROMOTION BAR; STRATEGIC GAP RECORDED.**

This is a bounded source audit, not an openness certificate and not a proof
attempt. Source non-hits are recorded only as non-hits. CAND-02 remains
**SOURCE-DEFINED / CURRENT STATUS UNKNOWN**.

## 1. Mathematical interface that a source must actually meet

For an actual CAND-02 extremal
`S` over `G_m=C_2+C_{2m}+C_{2m}`, S012 fixes a maximum progressive block
of size `c`. Under a putative universal D6-08 failure, `1<=c<=m-2` and the
translated complement has no zero sum of any length `1,...,c+1`. A new Route
A theorem must therefore use actual-CAND structure to force a zero sum in a
**strictly sub-exponent** interval, since `c+1<=m-1<exp(G_m)=2m`.
Unrestricted sequence length cannot do this.

Route B must supply genuinely new unconditional structure for the kernel
`H=C_m^2` at the EGZ `s(H)-1=4m-4` / `s(H)-2=4m-5` layers, or an
equality-rigid subgroup/quotient theorem. It cannot merely restate Property D
or the inapplicable homocyclic use of GS Lemma 4.3.

Route C must produce or classify a controlled `eta(G_m)-1=6m+1` ordinary
short-zero-sum-free core without first proving D6-08. A theorem for another
rank-three family or another zero-sum invariant is analogy only unless its
hypotheses transfer.

## 2. Route A — restricted-length and local zero-sum input

### A1. Wang--Zhao rank-two exact restricted-length constants

Chunlin Wang and Kevin Zhao, *On zero-sum subsequences of length not exceeding
a given number*, Journal of Number Theory 176 (2017), 365--374,
DOI 10.1016/j.jnt.2016.12.019. The statement is reproduced as Theorem 1.1 of
Ebert--Grynkiewicz 2024:

for `G=C_a+C_b`, `a|b`, and `0<=k<=a-1`,
`s_{<=D(G)-k}(G)=D(G)+k=a+b-1+k`.

For `C_m^2`, all finite cutoffs in this line begin at the exponent `m`.
This cannot force a kernel zero sum of length at most `c+1<=m-1`.
More generally, the definition itself has no finite universal threshold when
the cutoff is below the exponent (a constant sequence on an element of full
order is the obstruction).

### A2. Ebert--Grynkiewicz rank-two extremal structure

John J. Ebert and David J. Grynkiewicz,
*Structure of a sequence with prescribed zero-sum subsequences: Rank two
p-groups*, European Journal of Combinatorics 118 (2024), 103888,
DOI 10.1016/j.ejc.2023.103888. Theorem 1.4 proves for prime `p` and
`2<=k<=p-2` that a length `2p-2+k` sequence over `C_p^2` with no zero
sum of length at most `2p-1-k` has the displayed three-block basis form.
Together with the multiplicative reduction summarized in its introduction,
this completes the rank-two extremal structure for that restricted-length
invariant.

This is strong unconditional homocyclic structure, but its hypothesis excludes
all zero sums up to a cutoff at least `p=exp(C_p^2)`; an S008 pair-sum EGZ
extremal is only known to avoid `m`-term zero sums and may have shorter zero
sums. It therefore does not apply to the S008/S009 common cores or S012's
strictly sub-exponent splice range.

### A3. Zhang rank-three prescribed-length line

Shiwen Zhang, *On some zero-sum invariants for abelian groups of rank three*,
Publicationes Mathematicae Debrecen 106 (2025), 225--240,
DOI 10.5486/PMD.2025.9991, arXiv:2310.05458v1.

The paper defines `s_{<=t}` only for the nontrivial finite regime
`exp(G)<=t<=D(G)` and explicitly notes that for `t<exp(G)` the invariant
does not exist. Its Theorems 1.3--1.8 concern prescribed lengths / short-zero-
sum constants for groups such as `C_{3^n}^3`, `C_p^r` and
`C_{p^n}^r` in stated prime/rank ranges. These are not `G_m`, and the
cutoffs do not enter S012's `[1,c+1]` interval.

### A4. Zhao--Hong current 2026 restricted-length theorem

Kevin Zhao and Siao Hong,
*On zero-sum subsequences over finite abelian groups of length not exceeding a
given number*, Colloquium Mathematicum, online first 1 September 2026,
DOI 10.4064/cm9599-7-2026.

Their main current statement gives
`s_{<=D(G)-2}(G)<=D(G)+2` for finite noncyclic abelian groups except
`C_2^3`, `C_2^4`, and `C_2+C_{2n}`, with further bounds for specified
p-groups and cutoffs `k>= (D(G)+1)/2`. The equal-factor CAND ambient group is
not one of the named exceptions, but the theorem's permitted cutoff is still
at least the exponent; for `G_m`, `D(G_m)=4m`, so the generic conclusion
only forces a zero sum of length at most `4m-2`. S012 requires at most
`m-1`. The theorem is therefore directly about the correct general invariant
but has the wrong length scale for the splice.

### A5. Current local/modular variants

Two 2026 lines were also checked:

- Weidong Gao, Xiao Jiang, Yuanlin Li and Huijuan Qi,
  *On the existence of zero-sum subsequences with length not divided by a given
  number*, Journal of Number Theory 284 (2026), 15--37,
  DOI 10.1016/j.jnt.2025.12.002. Its main results concern the modular property
  "length not divisible by k", primarily for cyclic groups.
- Weidong Gao, Xiao Jiang and Yucen Mu, *Two local zero-sum problems*,
  arXiv:2607.11313v1 (13 July 2026), defines local divisibility invariants for
  integer sequences; the required conclusion is divisibility by `n` but not
  `nk`, not a zero sum in `G_m` or `C_m^2`.

Neither controls a zero sum in the S012 upper-bounded length interval.

### A6. Same ambient group, wrong invariant

Xue Li and Qiuyu Yin,
*On the existence of zero-sum subsequences of distinct lengths over certain
groups of rank three*, Acta Mathematica Hungarica 174 (2024), 323--340,
DOI 10.1007/s10474-024-01482-3, determines `disc(G)` for
`C_2+C_{n_1}+C_{n_2}` with `2|n_1|n_2`, which includes every `G_m`,
and studies the associated inverse problem. The invariant forces two zero-sum
subsequences of distinct lengths; it does not bound either length by `c+1`
and does not produce a zero sum disjoint from a chosen maximum progressive
block. Exact ambient-group overlap therefore does not supply the splice input.

**Route A disposition:** the literature contains genuine restricted-length and
same-group structure, including a September 2026 result, but no checked theorem
has a conclusion in the required strictly sub-exponent interval under actual
CAND hypotheses. Route A avoids the stopped D7/capacity mechanism in principle,
but no source-backed applicable input was found.

## 3. Route B — homocyclic C_m^2 stability/equality

### B1. Existing Property-D route remains exactly the stopped conditional input

Jan-Christoph Schlage-Puchta, *All large primes have Property D*,
arXiv:2509.02436v1 (2 September 2025), proves that for sufficiently large
primes `p`, every length `4p-4` sequence over `C_p^2` with no
`p`-term zero sum has exactly four distinct elements. This is a major
unconditional arithmetic subfamily result, but it is precisely Property D
structure already incorporated by S008, not a new all-`m` stability theorem
at the `4m-5` common-core layer. It does not justify reopening D8/D9/D10.

### B2. Restricted-length rank-two structure has stronger, non-inherited hypotheses

Ebert--Grynkiewicz Theorem 1.4 and the completed rank-two
`s_{<=t}` structure are not EGZ one-change stability theorems. Their
extremals avoid **every** zero sum up to a specified cutoff, whereas the
S008 pair-sum sequences are only constrained at exact length `m`.
Thus this source cannot be applied to the S008 `4m-4` extremals or the
S009 `4m-5` common core.

### B3. New 2025--2026 rank-two inverse work is on different invariants

Qinghai Zhong, *On the Inverse Problem of the k-th Davenport Constants for
Groups of Rank 2*, Combinatorica 45 (2025), article 31,
DOI 10.1007/s00493-025-00153-3, concerns the multiwise Davenport invariant
`D_k` and sequences not decomposable into sufficiently many zero sums. It is
not an `s(C_m^2)-2` EGZ stability theorem.

Wanzhen Hui and Qinghai Zhong,
*On the inverse problem of the Narkiewicz-sense eta-constant for finite abelian
groups of rank 2*, Journal of Combinatorial Theory A 224 (November 2026),
106238, DOI 10.1016/j.jcta.2026.106238, Theorem 1.1 classifies length
`3n-1=eta^N(C_n^2)-2` sequences over `C_n^2\{0}` with no two
innerly non-zero-sum-joint short zero-sum subsequences; Theorem 1.2 extends the
rank-two classification. The numerical near-extremality is superficially
tempting, but the forbidden configuration is a pair of overlapping short zero
sums, not absence of an `n`-term zero sum. The S008 kernel extremals do not
satisfy this hypothesis.

Wanzhen Hui and Xue Li,
*The structure of sequences with zero-sum subsequences of the same length on
finite abelian groups of rank two*, Acta Arithmetica 224 (2026), 221--231,
DOI 10.4064/aa251008-9-4, treats the inverse `disc(G)` problem for
`C_n+C_{nm}` with `m>=2`; the homocyclic case is not its new scope and
the invariant again differs from ordinary EGZ.

### B4. Direct EGZ progress does not provide the missing inverse equality case

Benjamin Girard and Sofia Zotova,
*The Erdős--Ginzburg--Ziv constant of rank-two-like p-groups*,
arXiv:2510.23543v1 (27 October 2025), proves improved direct EGZ bounds/exact
values for rank-two-like p-groups and coprime cyclic products. It supplies no
checked `s(C_m^2)-1` / `s(C_m^2)-2` inverse stability theorem and no
equality classification for the subgroup/quotient bound used in S006.

The bounded current search did not identify a later primary theorem giving
unconditional all-`m` one-change stability at `4m-5` or equality rigidity
for the relevant inductive bound. This is a **source non-hit**, not an openness
claim.

**Route B disposition:** no new applicable unconditional kernel input was
located. The one directly relevant new homocyclic EGZ result is Property D for
sufficiently large primes, already absorbed by the programme; other near-
extremal structure concerns different invariants. Reopening D7--D10 would
therefore violate D-047.

## 4. Route C — eta-core/equality reduction without D6-08

### C1. Controlling equal-factor direct theorem supplies values, not inverse core structure

Benjamin Girard and Wolfgang A. Schmid,
*Direct zero-sum problems for certain groups of rank three*, JNT 197 (2019),
297--316, DOI 10.1016/j.jnt.2018.08.016, arXiv:1806.07636v2:
Theorem 3.1 gives `eta(G_m)=6m+2`; Theorem 3.2 gives
`s(G_m)=8m+1`; Lemma 4.4(2) is the conditional progressive-block route
rechecked in S012. The source does not state that every `6m+1` subsequence
arising at equality is eta-extremal, nor an equality classification that
removes the progressive hypothesis.

### C2. Published inverse rank-three theorem is a different family

Girard--Schmid,
*Inverse zero-sum problems for certain groups of rank three*, Acta Math.
Hungar. 160 (2020), 229--247, DOI 10.1007/s10474-019-00983-w,
arXiv:1809.03178v2, classifies the eta/EGZ inverse problems for
`C_2+C_2+C_{2n}`. For `m>=2`, this is not
`C_2+C_{2m}+C_{2m}`. Its kernel/quotient architecture does not transfer as
an equality theorem for the equal-factor family.

### C3. Same-group disc and Narkiewicz-sense eta results do not create an ordinary eta core

Li--Yin's same-ambient `disc(G)` theorem, and Hui--Zhong's 2026
`eta^N` inverse classification, impose different zero-sum conditions. Neither
shows that a length-`6m+1` block in an actual CAND extremal is free of all
short zero sums, nor supplies an equality-rigid form of the subgroup/quotient
eta bound.

The bounded current search did not identify a primary equal-factor ordinary
eta-extremal classification or equality-case theorem that yields the required
core without D6-08. Again this is a **source non-hit**, not evidence that no
such theorem exists.

**Route C disposition:** mathematically distinct from D7/capacity and still a
conceptually viable architecture, but no checked source supplies its missing
entry theorem.

## 5. Comparison matrix

| Route / source input | Exact scope | Applicability | Dependency impact if applicable | Avoids stopped D7/capacity? | Remaining obligation |
| --- | --- | --- | --- | --- | --- |
| A1 Wang--Zhao Thm 2 / Ebert--Grynkiewicz Thm 1.1 | rank two, cutoff `D-k>=exp` | **Inapplicable length range** | Could replace S012 small-zero-sum forcing | Yes | Need actual-CAND theorem forcing length `<=c+1<m` |
| A2 Ebert--Grynkiewicz Thm 1.4 + rank-two completion | `C_p^2`, avoids all zero sums through `2p-1-k>=p` | **Hypothesis not inherited** | Could structure kernel if its stronger avoidance held | Yes | Derive its avoidance hypothesis from CAND without using stopped route |
| A3 Zhang Thms 1.3--1.8 | selected homocyclic p-groups of rank >=3; prescribed/short lengths | **Analogy only** | None directly | Yes | New theorem for `G_m` or forced object at sub-exponent cutoff |
| A4 Zhao--Hong 2026 | broad noncyclic groups, cutoff at least exponent | **Direct invariant, wrong scale** | Could force a bounded zero sum, but far above splice range | Yes | Sharpen using CAND structure from >=2m down to <=m-1 |
| A5 modular/local 2026 lines | cyclic/integer divisibility variants | **Wrong invariant/group** | None | Yes | Transfer theorem with exact group-valued zero-sum conclusion |
| A6 Li--Yin disc | includes exact `G_m` ambient family | **Exact group, wrong conclusion** | Potential same-group structure only | Yes | Bound a disjoint zero-sum length by `c+1` |
| B1 Schlage-Puchta Property D | `C_p^2`, sufficiently large primes | **Applicable only to already-covered Property-D subfamily** | D7 on that subfamily, already recorded | No, it is the existing D7 route | New all-`m` input not equivalent to Property D |
| B2 restricted-length rank-two structure | `C_m^2` with stronger no-short-zero-sum hypothesis | **Not inherited** | Would rigidify kernel cores | Not by itself | Prove stronger hypothesis without circularity |
| B3 `D_k`, `eta^N`, `disc` inverse results | rank two, different invariants | **Analogy only** | None directly | Yes as mathematics, no as current dependency | Bridge invariant mismatch |
| B4 Girard--Zotova direct EGZ | rank-two-like p-groups | **Direct values/bounds only** | No s-1/s-2 stability | Yes | Equality/inverse theorem still missing |
| B-source gap | current bounded search | **No qualifying source identified** | D6-05 / D8 stability remains missing | — | Source or new theorem must be supplied |
| C1 GS 2019 | exact `G_m`; eta/s values + conditional Lemma 4.4(2) | **Already used; conditional** | D6-09 conditional only | Yes | Produce eta-free `6m+1` core without D6-08 |
| C2 GS 2020 inverse | `C_2+C_2+C_{2n}` | **Different family** | Analogy for D6-10 | Yes | Equal-factor transfer theorem absent |
| C3 Li--Yin / Hui--Zhong | same group with disc, or rank-two `eta^N` | **Wrong invariant** | None directly | Yes | Ordinary eta equality/core theorem |
| C-source gap | current bounded search | **No qualifying source identified** | D6-10 remains missing | — | Equal-factor eta-extremal/equality input |

## 6. Promotion decision

**No route is promoted.**

Route A is genuinely different and now has fresher source coverage than S006,
including the September 2026 Zhao--Hong result, but the fundamental scale
mismatch remains: universal restricted-length constants become finite only at
or above the exponent, while the S012 splice needs a zero sum no longer than
`m-1`. The exact same-group `disc` result does not repair that length or
disjointness requirement.

Route B has no newly identified unconditional all-`m` EGZ stability/equality
input. Promoting it would simply rename the stopped D7/D8/D9/D10 route.

Route C is structurally different, but the checked literature still supplies
only the known conditional GS mechanism or inverse theorems for different
families/invariants. No equality theorem was found that yields an ordinary
eta-extremal `6m+1` core.

Under D-047 and the S013 brief, this is the trigger for an owner
target/strategy reassessment blocker rather than another numbered proof
variant.

## 7. Search/certainty boundary

Searches included the exact group in multiple notations; ordinary EGZ/eta
inverse terminology; `s(G)-1`, `s(G)-2`, equality/stability; restricted
length `s_L` / `s_{<=t}`; local/modular zero-sum variants; rank-two
homocyclic inverse work; 2024--2026 forward/current-author paths; and the
same-ambient `disc(G)` line.

Primary/publisher/arXiv statement pages were used where accessible. No source
non-hit is treated as proof of openness, completeness of the literature, or
novelty certification. No external reviewer feedback was received or inferred.
