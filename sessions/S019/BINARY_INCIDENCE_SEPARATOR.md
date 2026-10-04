# S019 — binary incidence separator / design realization

Date: 2026-10-04.
Classification: internal programme mathematics with the exact primary
inclusion-rank source recorded in SOURCE_AUDIT.md. No independent review,
formalisation or novelty certification is claimed.

## 1. Domain and notation

Let n=2m be a power of two. Since m>=2, n>=4. Let X be the positional set of
the S016 threshold sequence U, so |X|=4n+1.

For a simple block family B of k-subsets of X, define its binary codegree on
D subseteq X by

    a_B(D) = #{B' in B : D subseteq B'} (mod 2).

Symmetric difference of block families is addition over GF(2).

For the actual zero-sum layers of U, S018 uses A_{rn}(D). The constructions
below use lower-case a_B deliberately: the abstract blocks need not be zero-sum.

## 2. S019-P1 — exact p-rank distinction, and why it is insufficient

**PROGRAMME SPECIALIZATION OF SOURCE RESULT; PROVED.** Let W_{n,k} be the
binary inclusion matrix with rows indexed by n-subsets of X and columns by
k-subsets. Then

    rank_2 W_{n,3n} = C(4n+1,n),

and

    rank_2 W_{n,2n} = C(4n+1,n)-1.

**Proof.** Apply the Frankl/Wilson rank formula from SOURCE_AUDIT.md.

For k=3n, the relevant coefficient is C(3n-i,n-i). At i=0 it is odd by
Lucas. For 1<=i<=n, 3n-i=2n+(n-i), so the binary digits of n-i are contained
in the upper entry and the coefficient is odd. Every rank summand occurs,
telescoping to C(4n+1,n).

For k=2n, C(2n,n) is even, while for 1<=i<=n, 2n-i=n+(n-i), so
C(2n-i,n-i) is odd. The i=0 summand is the only missing summand, leaving
C(4n+1,n)-1. QED.

The missing component has no hidden geometry. Summing all n-codegrees of a
2n-family counts each 2n-block C(2n,n) times, hence gives zero modulo two.
This supplies one nonzero functional annihilating the image; the rank formula
shows it is the whole cokernel.

Thus the exact p-rank theorem distinguishes the two matrices, but only through
an aggregate parity already compatible with S018. Rank alone does not isolate
the actual 2n layer.

## 3. S019-P2 — explicit all-codegree lifts

### Lemma A: n to 3n upper-star lift

For an n-block N subseteq X, set

    L_3(N) = {B in C(X,3n) : N subseteq B}.

**PROGRAMME LEMMA; PROVED.** For every nonempty D with |D|<=n,

    a_{L_3(N)}(D)=1  if and only if  D subseteq N.

Moreover |L_3(N)| is odd.

**Proof.** Put j=|D minus N|. Blocks containing both D and N are counted by

    C(3n+1-j,2n-j).

For j=0 this is C(3n+1,2n), odd by Lucas because the 2n-bit is disjoint
from the bits of n+1.

For 1<=j<=n, use the criterion that C(A,B) is odd iff B & (A-B)=0. Here
A-B=n+1. If j is odd, 2n-j has the 1-bit, which overlaps n+1. If j is even
and positive, n<=2n-j<2n, so its n-bit overlaps the n-bit of n+1. Hence the
coefficient is even. The cardinality assertion is the j=0 case. QED.

Therefore, for any binary n-family Y, the symmetric difference

    Z_3 = XOR_{N in Y} L_3(N)

is a simple 3n-family satisfying, for every nonempty D with |D|<=n,

    a_{Z_3}(D)=a_Y(D),                                  (S019.1a)

and

    |Z_3| = |Y| (mod 2).                               (S019.1b)

### Lemma B: 4n to 2n down-lift

For a 4n-block H subseteq X, set

    L_2(H) = C(H,2n).

**PROGRAMME LEMMA; PROVED.** For every nonempty D with |D|<=n,

    a_{L_2(H)}(D)=1  if and only if  D subseteq H,

while |L_2(H)| is even.

**Proof.** If D is contained in H and d=|D|>=1, the number of completions is

    C(4n-d,2n-d).

The difference of the upper and lower entries is 2n, while 2n-d<2n; their
binary supports are disjoint, so Lucas gives odd parity. At d=0 the central
coefficient C(4n,2n) is even because the 2n-bit appears in both the lower
entry and the difference. QED.

Hence for any binary 4n-family T,

    Z_2^0 = XOR_{H in T} L_2(H)

satisfies, for every nonempty D with |D|<=n,

    a_{Z_2^0}(D)=a_T(D),                                (S019.2a)

and

    |Z_2^0| = 0 (mod 2).                               (S019.2b)

### Lemma C: an odd 2n null family through order n

Fix any Q subseteq X with |Q|=3n and put

    K_Q = C(Q,2n).

**PROGRAMME LEMMA; PROVED.** For every nonempty D with |D|<=n,

    a_{K_Q}(D)=0,

but |K_Q| is odd.

**Proof.** If D is not contained in Q the codegree is zero. If D is contained
and d=|D|>=1, the completion count is

    C(3n-d,2n-d).

Its upper-minus-lower difference is n, while n<=2n-d<2n, so the lower entry
has the n-bit and Lucas gives even parity. On the other hand C(3n,2n) is odd
because the 2n-bit and n-bit are disjoint. QED.

Consequently the total parity of a 2n-family can be toggled without changing
any nonempty codegree through order n.

## 4. S019-P3 — realization of every S016 binary signature

Return to the actual S016 threshold sequence U. Let

- Y=Z_n(U), the actual n-zero-sum family;
- T=Z_{4n}(U), the actual 4n-zero-sum family;
- s=sigma(U) and mu=v_s(U).

S018-P1 gives

    A_{4n}(D)=mu-e_s(D)

for every nonempty D, and S018 gives the global parity

    N_{2n}(U)=1+mu (mod 2),                             (S019.3a)

    N_{3n}(U)=N_n(U) (mod 2).                          (S019.3b)

Construct Z_3 from Y by Lemma A. Construct Z_2^0 from T by Lemma B, choose one
3n-set Q, and put epsilon=1+mu (mod 2). Set Z_2=Z_2^0 if epsilon=0, and
Z_2=Z_2^0 XOR K_Q if epsilon=1.

**PROGRAMME THEOREM / DESIGN-REALIZATION NO-GO; PROVED.** The abstract simple
families Z_2 subseteq C(X,2n) and Z_3 subseteq C(X,3n) satisfy, for every
nonempty D with |D|<=n,

    a_{Z_3}(D)=A_n(D),                                  (S019.4a)

    a_{Z_2}(D)=A_{4n}(D)=mu-e_s(D),                    (S019.4b)

and

    |Z_3|=N_n(U)=N_{3n}(U) (mod 2),                    (S019.5a)

    |Z_2|=1+mu=N_{2n}(U) (mod 2).                      (S019.5b)

Therefore

    a_{Z_2}(D)+a_{Z_3}(D)=A_n(D)+mu-e_s(D) (mod 2),

which is exactly S018-P3's combined binary law. In particular the existing
singleton separation is realized in the stronger form

    a_{Z_3}(x)=A_n(x),  and  a_{Z_2}(x)=A_{4n}(x).

**Proof.** Equations (S019.4a-b) are Lemmas A-C applied by symmetric difference.
The total parities are the odd/even cardinality statements in those lemmas.
The final identity is substitution. QED.

The theorem holds for every possible n-family, not just the S016 normal forms.
It therefore applies in particular to all three S016 near-full signatures:
delta zero's unique n-block, delta one's reservoir family, and delta two's
fixed-sum edge family.

The S018 common-core double-deletion parity is also automatically compatible:
it is obtained by inclusion-exclusion from the total, singleton and pair
codegrees already matched above. Thus it supplies no additional binary
separator.

## 5. Disposition and strict boundary

S019 meets the brief's negative success mode. The exact binary inclusion/design
system itself admits every S016 delta=0,1,2 signature. The Wilson--Frankl rank
difference is real but does not become an independent layer constraint; the
explicit lifts absorb it.

This proves only a **design-space no-go**:

- the constructed 2n/3n blocks are not asserted to sum to zero in G;
- no actual CAND extremal or near-full threshold star is constructed;
- no delta stratum is excluded;
- the S017/S018 modulo-4 point relation is not realized or made free by this
  binary construction, and its remaining split bit is unresolved;
- no mixed-primary theorem is obtained.

Accordingly D18-01 is closed only as the pure binary inclusion/design route.
A successor would need genuinely additional arithmetic or non-binary
information, not another p-rank calculation of the same shadow. Per the brief,
S019 stops here and promotes no renamed incidence session. S020 remains the
required periodic audit.
