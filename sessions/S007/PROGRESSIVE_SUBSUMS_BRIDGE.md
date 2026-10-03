# S007 progressive-subsums bridge investigation

## Question

Let S be a CAND-02 extremal over
G_m=C_2 + C_{2m} + C_{2m}, with |S|=8m and
0 not in Sigma_{2m}(S). Must there exist h and C|S with |C|>=m-1 such that

jh in Sigma_j(C) for every 1<=j<=|C|?

A positive answer activates Girard--Schmid 2019 Lemma 4.4(2). The universal
question remains unresolved after S007.

## Published input

**SOURCE RESULT (C-40 / ZS-10).** Girard--Schmid 2019 Lemma 4.4(2) says that
for a sequence of length (eta(G)-1)+exp(G)-1 with no zero-sum subsequence of
length exp(G), the progressive-subsums condition above, with
|C|>=floor((exp(G)-1)/2), yields after translation a subsequence of length
eta(G)-1 containing no short zero-sum subsequence.

For G_m, exp(G_m)=2m and eta(G_m)=6m+2, so the threshold is m-1 and the
conclusion is a translated length-6m+1 eta-extremal core.

## S007-P1 — translation normalization

**PROGRAMME LEMMA; PROVED.** For fixed h and C, define D=(-h)+C by translating
each term of C by -h. Then

jh in Sigma_j(C) for every j=1,...,|C|

if and only if

0 in Sigma_j(D) for every j=1,...,|D|.

**Proof.** A j-term subsequence of C with sum jh translates termwise to a
j-term subsequence of D with sum 0, and conversely translating back adds jh.
The correspondence preserves multiplicity and cardinality. QED.

Thus the problem asks for a translated subsequence having zero-sum
subsequences of every cardinality.

## S007-P2 — centered-symmetry sufficient condition

**PROGRAMME LEMMA; PROVED.** Fix h in supp(S). Suppose S contains a subsequence
C such that, after translation by -h,

D = 0^r product_{i=1}^t a_i(-a_i)

for some r>=1. Repeated pairs are allowed; if a_i=-a_i, the displayed pair
means two copies of that self-inverse element. Then D has a zero-sum
subsequence of every cardinality 0,...,|D|. Hence C satisfies the
progressive-subsums condition.

**Proof.** Every displayed pair has sum zero, as does every selected zero.
For any j between 0 and r+2t, choose q pairs and z zeros with
j=2q+z, 0<=q<=t and 0<=z<=r. Such q,z always exist: use as many pairs as
needed to reduce j into the interval [0,r], adjusting parity by one zero when
necessary; r>=1 supplies both parities. The chosen terms have sum zero.
Apply S007-P1. QED.

Equivalently, let rho_h(x)=2h-x. Define the reflection-balanced capacity

kappa_h(S) =
  v_h(S)
  + sum over two-element rho_h-orbits {x,rho_h(x)}
      2 min(v_x(S),v_{rho_h(x)}(S))
  + sum over fixed x!=h
      2 floor(v_x(S)/2).

If kappa_h(S)>=m-1 for some h in supp(S), the bridge holds. This is a
sufficient condition, not claimed necessary for m>=4.

## S007-P3 — the m=2 case

**PROGRAMME RESULT; PROVED.** D6-08 holds for m=2.

**Proof.** The threshold m-1 equals 1. Choose any term h|S and C=h. Then
h is in Sigma_1(C), so the progressive condition holds. QED.

**Published consequence only.** Applying Girard--Schmid 2019 Lemma 4.4(2),
a translated S contains a length 6m+1=13 subsequence with no short zero-sum
subsequence. S007 stops at this eta-core consequence and does not attempt the
m=2 classification.

## S007-P4 — exact m=3 criterion

**PROGRAMME LEMMA; PROVED.** For m=3, a sequence S satisfies the bridge entry
condition if and only if S contains at least one of:

1. a repeated term x^2; or
2. a centered three-term progression (h-a) h (h+a) with three distinct terms.

**Proof, forward direction.** Here the threshold is m-1=2. Let C be any
progressive block of size at least 2 and translate by -h to D. By S007-P1,
D has a zero-sum one-term subsequence, so 0 occurs in D, and it has a
zero-sum two-term subsequence. If that pair uses 0, it is 0^2 and S has a
repeated term. If it is a pair a,-a with a=-a, D has a repeated nonzero term,
again giving a repeated term of S. Otherwise 0,a,-a are three distinct terms
of D, so h,h+a,h-a form a centered three-term progression in S.

**Proof, reverse direction.** If x^2|S, take h=x and C=x^2. Then
h in Sigma_1(C) and 2h in Sigma_2(C). If S contains
(h-a) h (h+a), take those three terms as C: h is a one-term subsum,
(h-a)+(h+a)=2h, and the total sum is 3h. Thus all required j occur. QED.

Therefore a bridge-failing m=3 extremal would have to be a squarefree
24-element subset of G_3 with no centered three-term progression and no
zero-sum six-subset.

## General status after S007

The all-m dependency D6-08 is **UNRESOLVED**. S007 supplies:

- an exact translated formulation;
- a general reflection-balanced sufficient criterion;
- a complete proof of the bridge for m=2;
- an exact structural obstruction criterion for m=3.

No all-m theorem, no m=3 nonexistence theorem, and no counterexample is claimed.
