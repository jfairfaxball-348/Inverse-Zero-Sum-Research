# S019 source audit — binary inclusion ranks

Date: 2026-10-04.
Purpose: exact source verification for D18-01, not an openness or novelty
certificate.

## ZS-50 — Frankl/Wilson mod-p inclusion rank

Primary source inspected in full PDF:

Peter Frankl, *Intersection theorems and mod p rank of inclusion matrices*,
Journal of Combinatorial Theory, Series A 54 (1990), 85–94,
DOI 10.1016/0097-3165(90)90007-J.

Frankl defines the ordinary inclusion matrix and on page 87 states equation
(7), attributed to Wilson. In the notation needed here: if a v-set is used,
v >= a+b, and I(a,b) is the a-set versus b-set inclusion matrix, then over
GF(p) its rank is the sum of

    C(v,i)-C(v,i-1)

over those i with 0 <= i <= b for which

    p does not divide C(a-i,b-i).

The usual convention is C(v,-1)=0. Frankl gives a short proof in Section 4.
The original diagonal-form source is R. M. Wilson,
*A diagonal form for the incidence matrices of t-subsets vs. k-subsets*,
European Journal of Combinatorics 11 (1990), 609–615,
DOI 10.1016/S0195-6698(13)80046-7.

Frankl's paper is sufficient primary support for the rank formula actually used
here; S019 does not rely on an uninspected strengthening from the Wilson paper.

## Exact specialization

Let v=4n+1 and let n be a power of two, n>=4. Transposition does not change
rank, so use rows indexed by n-sets and columns by k-sets.

For k=3n, every coefficient

    C(3n-i,n-i),  0 <= i <= n,

is odd. For i=0 this follows because the n-bit is present in 3n; for
1<=i<=n, write 3n-i=2n+(n-i) and apply Lucas' criterion. Thus

    rank_2 W_{n,3n} = C(v,n).

For k=2n, the coefficient C(2n,n) is even, while

    C(2n-i,n-i)

is odd for every 1<=i<=n, since 2n-i=n+(n-i). Hence

    rank_2 W_{n,2n} = C(v,n)-1.

Every 2n-column contains C(2n,n) n-sets, an even number, so the all-ones
functional annihilates the 2n column space. Since the corank is one, this
aggregate parity is the entire rank defect. It is not a new zero-sum layer
separator.

## Applicability boundary

The source theorem is an inclusion-matrix theorem for arbitrary block families.
It imposes no group-sum condition. S019 therefore uses it only to understand
the binary design space. The stronger realization theorem in the mathematics
file is proved directly and does not infer that its abstract blocks are actual
zero-sum blocks.

No new mixed-primary prescribed-length theorem is promoted in S019. The
S017/S018 mixed-primary source boundary remains exactly in force. No search
non-hit is converted into a claim of openness, novelty or completeness.
