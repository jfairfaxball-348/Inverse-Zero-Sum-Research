# S038 D37-01 — rank-two slice/hyperplane preflight

Date: 2026-10-06
Classification: programme mathematics plus source-applicability boundary
Target: CAND-03 only

Let (V=C_3^3) and let (S) be a hypothetical CAND-03 extremal:
(|S|=24), every term lies in (V\setminus\{0\}), and (S) has no two
innerly non-zero-sum-joint short zero-sum subsequences, with short meaning
length at most 3. All subsequences below retain their original position
indices.

## 1. Honest subgroup restriction

For a rank-two subgroup (H\le V), write (S_H) for the restriction of
(S) to positions whose values lie in (H).

This interface preserves the two hypotheses needed before any inverse theorem
can be invoked:

- (S_H) is over (H\setminus\{0\}), because (S) has no zero term;
- any forbidden indexed pair inside (S_H) is the same pair of index sets
  inside (S), with the same intersection sum. Hence avoidance is inherited.

The published rank-two direct value is
(eta^N(C_3^2)=3\cdot3+1=10). Therefore
[
|S_H|\le 9                                                     \tag{1}
]
for every rank-two subgroup (H).

There are 13 rank-two subgroups of (C_3^3). Every nonzero vector belongs to
exactly four of them: after fixing its one-dimensional span, the containing
two-dimensional subgroups correspond to the four one-dimensional subspaces of
the two-dimensional quotient. Counting positions of (S) with multiplicity,
[
\sum_{\dim H=2}|S_H|=4|S|=96.
]
Thus some (H) satisfies (|S_H|\ge\lceil96/13\rceil=8).
Together with (1),
[
\boxed{\max_{\dim H=2}|S_H|\in\{8,9\}.}                    \tag{2}
]

This is a target-wide structural constraint.

## 2. Exact Hui--Zhong hypothesis

Hui--Zhong 2026 Theorem 1.1 is not a length-(eta^N-1) theorem for the
homocyclic group. It treats (C_n^2) sequences over the nonzero alphabet of
exact length
[
3n-1=\eta^N(C_n^2)-2.
]
For (n=3), the theorem therefore requires **exactly eight terms**. In this
case its normal forms reduce to the (n=3) instances of cases (a) and (b).

Consequently (2) is not enough: the size-9 branch must be excluded
target-wide before the theorem can serve as the proposed canonical interface.

## 3. The published extremal realizes the size-9 branch

Gao--Hui--Li--Li--Qu--Zhong prove the lower bound in Theorem 3.6(4) by
choosing a length-9 sequence (T), a term (g|T), and setting
[
S_0=(0^{-1}(-g+T))^n.
]
For (n=3), (S_0=U^3) has length 24, lies over
(C_3^3\setminus\{0\}), and the source proves that it has no forbidden
innerly non-zero-sum-joint short zero-sum pair. It is therefore an actual
CAND-03 extremal because (eta^N(C_3^3)=25).

Every value multiplicity in (S_0) is divisible by 3. Hence every subgroup
restriction ((S_0)_H) has length divisible by 3. By (2), a densest
rank-two subgroup restriction has length 8 or 9, so for (S_0) it must have
length 9. In particular,
[
\boxed{S_0\text{ has no rank-two subgroup restriction of length }8.}
]

This single source-backed extremal is decisive against a universal
exact-length-8 subgroup-restriction interface.

## 4. Other tested interfaces do not repair the mismatch

**Projection.** For a quotient homomorphism (\pi:V\to C_3^2), kernel
terms map to zero and violate the theorem's nonzero alphabet unless removed.
More importantly, a zero sum after projection need only have original sum in
the kernel, not zero in (V). Thus CAND-03 avoidance is not inherited by the
projected sequence.

**Affine slice.** A nonzero affine coset of a rank-two subgroup is not itself
a subgroup. Translating (a+H) to (H) changes a two-term sum by (-2a=a)
in exponent three, although it leaves a three-term sum unchanged. Therefore
the mixed length-2/3 short-zero-sum condition is not translation invariant.
Translation can also send the value (a) to zero.

**Extraction from a 9-term restriction.** Deleting any one position produces
an 8-term sequence whose nonzero alphabet and avoidance are inherited, but the
CAND-03 hypotheses supply no distinguished deletion. Calling such a choice
canonical would add an unproved normalization. D37-01 expressly forbids that.

## 5. Decisive outcome

D37-01 **fails as a universal theorem-transfer interface**. The useful
target-wide consequence (2) survives, but every CAND-03 extremal does not
force a canonical rank-two sequence satisfying Hui--Zhong Theorem 1.1's exact
length-8 hypothesis. Projection and affine normalization do not preserve the
remaining exact hypotheses, and arbitrary extraction is noncanonical.

Per the brief, the session stops here. No enumeration, cap-set language,
translation normalization, imported CAND-02/CAND-05 machinery, or second
architecture is launched. No S039 mathematical successor is promoted.
