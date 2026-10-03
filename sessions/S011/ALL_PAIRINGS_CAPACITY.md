# S011 — all-pairings capacity: exchange assessment and stopping obstruction

Date: 2026-10-03. **D10-01 remains UNRESOLVED.**

The assessed two-pair/threshold mechanism does not prove that the simultaneous
low-capacity bounds are impossible, and no actual extremal satisfying them is
constructed. The exact reason the mechanism stops is recorded below: the
threshold forces an overlapping collection of original pairs, whose lift lacks
one or two positions. Neither an unused completing term/pair nor a progressive
block follows. This is a negative assessment of this mechanism, not a theorem
that every possible exchange argument must fail.

All deductions are internal programme mathematics. They are not independently
reviewed, formally verified or claimed novel. No mathematical computation ran.

## 1. Domain, inherited equivalence and source boundary

Let `G=G_m=C_2+C_{2m}+C_{2m}`, `H=2G ~= C_m^2`, and
`Q=G/H ~= C_2^3`. An actual CAND extremal is a sequence S with
`|S|=8m` and `0 notin Sigma_{2m}(S)`. Positions, including equal-valued
positions, are distinguished whenever disjointness is used.

S008-P1 supplies odd positive fiber sizes and extremality of every maximal
within-fiber pairing. Set `k=floor((m-1)/2)` for m>=3. Use S010-P3 exactly:

`D7-01 <=> all quotient fibers monochromatic`
`      <=> some maximal pair-sum sequence has multiplicity >=k`,

and, on this actual domain,

`not D7-01 <=> M_z(S)<=k-1 for every z in H`.

Here M_z is the maximum number of disjoint original-term pairs with sum z,
with the reflection-orbit formula from S010-P3. It is an invariant of S,
not a quantity changed by choosing a different pairing. A pairing can only
realize or fail to realize that fixed maximum.

The m=2 case and the inherited Property-D moduli are already covered. The
following conditional exchange concerns a putative failure, not a new search
over those covered cases. For m>=5, the average fiber size is m, so some odd
fiber has at least five positions; smaller moduli are already covered.

Published input rechecked: Girard–Schmid, *Direct zero-sum problems for certain
groups of rank three*, JNT 197 (2019), arXiv:1806.07636v2,
https://arxiv.org/html/1806.07636v2 . Theorem 2.3 gives the rank-two threshold.
Theorem 2.4 and Lemmas 4.2/4.4(2) underlie the inherited eta arguments;
Lemma 4.1 needs Property D and Lemma 4.3 excludes the homocyclic case.
Neither of the latter two is used as an unconditional input here.

## 2. S011-P1 — what the complete all-pairings restrictions encode

**PROGRAMME LEMMA; PROVED.** On the domain of length-8m sequences whose eight
fiber sizes are odd, the following complete system is equivalent to absence
of a 2m-term zero sum:

1. every maximal pair-sum sequence P has no m-term zero sum;
2. for every such pairing and its residual R, each quotient-zero residual
   subset A of even size 2t<=2m satisfies
   `-sigma(A) notin Sigma_{m-t}(P)`.

The nonempty residual subsets in (2) are precisely the fourteen planes and,
when m>=4, the full eight-set. This uses S009-P1.

**Proof.** Forward is S008-P1/P4. For reverse, suppose Z is a 2m-term zero
sum. Let O be the set of fibers in which Z uses an odd number of positions.
Then `|O|` is even and its quotient sum is zero. In each fiber in O, choose
one of Z's positions as residual; pair its remaining Z positions. In each
fiber outside O, pair all of Z's positions and choose a residual outside Z.
The latter choice exists because the full fiber size is odd while the number
used by Z is even. Pair all remaining outside-Z positions. This yields a
maximal pairing in which Z is the disjoint union of its `|O|=2t` residual
positions and `m-t` original pairs. If O is empty, (1) fails. Otherwise (2)
fails. QED.

This is a diagnostic exactness result, not a solution or a stronger sufficient
condition. Merely imposing the complete restrictions for all pairings encodes
the original extremality condition. To advance D10-01 one still needs an
argument linking that condition to a lower bound on some M_z.

## 3. Freeze one concrete two-pair exchange

Choose five distinct positions `a,b,c,d,r` in one fiber; letters also denote
their group values, which need not be distinct. Leave r residual. Pair the
remaining positions in that fiber and all other fibers, keeping those choices
fixed. Let U be the common positional sequence of their sums and R the eight
residual positions. Then

`|U|=4m-6`, `|R|=8`,

and U uses `8m-12` original positions disjoint from `a,b,c,d` and R.
The three completions on the four displayed endpoints are

| Completion | Two sums | Pair-sum sequence |
| --- | --- | --- |
| ab, cd | `A=a+b`, `B=c+d` | `P_0=U A B` |
| ac, bd | `C=a+c`, `D=b+d` | `P_1=U C D` |
| ad, bc | `E=a+d`, `F=b+c` | `P_2=U E F` |

All sums lie in H and all three P_i are extremal by S008-P1. The common
positional sequence is U; numerical coincidences can increase their sequence
gcd, so an exact gcd length is not asserted. Crucially,

`A+B=C+D=E+F=lambda=a+b+c+d`.

For any integer l and a row with sums e,f,

`Sigma_l(U e f) = Sigma_l(U)`
` union (e+Sigma_{l-1}(U)) union (f+Sigma_{l-1}(U))`
` union (lambda+Sigma_{l-2}(U))`.

Take `Sigma_0(U)={0}` and negative-index sets empty. For a quotient-zero
residual subset J of size 2t, write `s_J=sigma(J)` and `l=m-t`.
The restrictions from all three completions are exactly

- `-s_J notin Sigma_l(U)`;
- `-s_J-e notin Sigma_{l-1}(U)` for each of the six labelled edge sums;
- `-s_J-lambda notin Sigma_{l-2}(U)`.

The same formula with J empty, s_J=0 and l=m describes extremality of the
three P_i. It retains every plane/full-set label, disjointness and restricted
length. The two-edge contribution is unchanged under exchange; equal numerical
holes must not be counted twice. No hole-cardinality or periodicity conclusion
is asserted.

## 4. S011-P2 — the forced threshold witness has an exact lifting defect

**PROGRAMME LEMMA / FAILED-MECHANISM CERTIFICATE; PROVED.** Adjoin C to P_0,
forming the *auxiliary* H-sequence

`K=U A B C`, `|K|=4m-3=s(H)`.

K has an m-term zero sum. Every such zero sum uses C and at least one of A,B.
Indeed omitting C puts it in P_0; using C but neither A nor B puts it in
`U C`, a subsequence of P_1. Both are impossible. Thus a labelled witness has
one of precisely three forms, with W a positional subsequence of U:

| Exceptional sums used | W length and sum | Actual distinct-position lift V | Exact missing completion |
| --- | --- | --- | --- |
| A,C | `m-2`, `sigma(W)=-(2a+b+c)` | W's pairs together with a,b,c: length `2m-1`, sum `-a` | An unused original term of value a |
| B,C | `m-2`, `sigma(W)=-(a+2c+d)` | W's pairs together with a,c,d: length `2m-1`, sum `-c` | An unused original term of value c |
| A,B,C | `m-3`, `sigma(W)=-(2a+b+2c+d)` | W's pairs together with a,b,c,d: length `2m-2`, sum `-(a+c)` | An unused original pair of sum C=a+c |

The table follows by counting endpoint incidences. For example A and C share
the position a, so their sum counts a twice, whereas V can use it only once.
In the third row both a and c are counted twice in K. W's pairs are disjoint
from each other, the four endpoints and all residual positions by construction.

Consequently an actual extremal forces the indicated completion to be absent
from `S V^{-1}` in each realized row. An algebraic zero sum in K is not itself
a forbidden original subsequence: K's three exceptional edges cannot coexist
as three disjoint pairs. In the first row using d to replace the extra a gives
sum `d-a`, and using r gives `r-a`; neither is forced to vanish. The second
row is analogous. The third row requires a pair in the *unused complement*;
the edge ac already used by V is unavailable.

The simultaneous upper bounds M_z<=k-1 do not provide that completing pair.
They give no lower bound on its unused-complement capacity. Optimizing a
pairing does not change M_z(S), and a new realization of an existing pair sum
cannot be counted in addition to pairs with which it shares positions.

### Why the eta shortcut remains invalid

The first two rows can be realized as S009-type one-change witnesses using
the retained residual r. For the first, pair d with r and use the common
core `U (d+r)`; its extensions by A and C leave c and b residual,
respectively. For the second, pair b with r and use the common core
`U (b+r)`; its extensions by B and C leave a and d residual, respectively.
These are actual disjoint pairings. The old edge B in the first row (or A
in the second) cannot be used as an extra unused pair: it meets V.
If the two exceptional values are distinct,
S010-P4 applies verbatim to the corresponding witness and proves a short even
zero sum remains in the translated complement. Even when the values coincide,
the following low-capacity argument gives the same obstruction.

In the first row translate by -a; in the second by -c. The resulting V has
length 2m-1, sum zero and a displayed zero term. Its complement cannot contain
a zero term or zero pair, because those could complete V or V with that zero
removed to length 2m. Its unused common pairs number 3m-3: take U minus W
and the newly paired d,r in the first row, or b,r in the second.
Their translated sums are a subsequence of a
translated maximal pair-sum extremal. If these 3m-3 sums were eta-free, the
published eta structure would give multiplicity m-1, contradicting S010-P3's
low-capacity hypothesis. Thus they have a short zero sum. Kernel length m
and length 1 are excluded by extremality and the absent zero pair, respectively,
so it lifts to an even zero sum of length 4 through 2m-2 in the complement.

The third row has an equally concrete defect. Since C is in 2G, choose h with
`2h=C` and translate by -h. V then has sum zero and length 2m-2, and its
displayed positions a,c form a zero pair. Its complement has length 6m+2;
it has no zero pair (which would complete V) and no four-term zero sum
(which would complete V with the a,c pair removed). The unused U pairs again
number `3m-3`. They cannot be eta-free under the low-capacity hypothesis, by
the same multiplicity argument. Their short zero sum has kernel length j
with `3<=j<=m-1`: j=1,2 would lift to the excluded lengths 2,4, and j=m
would violate extremality. Thus the complement contains an even zero sum of
length 6 through 2m-2, not the required completing pair.

Translation in these arguments subtracts 2h from every pair sum in H and
preserves m-term zero sums and multiplicities. No division by 2 within H is
assumed; h exists in G by C in 2G. Empty small-case intervals signify a
contradiction in that case, but all such small moduli were already covered.

These complements therefore do not repair the lifting defect by supplying an
eta-free core. A zero-sum block of length 2m-1 or 2m-2 is also not automatically
progressive: knowing its total sum and one short zero sum does not establish
zero subsums at every cardinality. No universal eta-core follows.

## 5. S011-P3 — falsify the capacity-and-parity relaxation explicitly

**PROGRAMME COUNTEREXAMPLE TO A RELAXED IMPLICATION; PROVED SYMBOLICALLY.**
The length, odd-fiber parity and simultaneous low-capacity bounds alone are
consistent, for infinitely many moduli. They cannot supply the missing
completion without using extremality.

For any odd prime p>=19, use the splitting `G_p ~= Q direct-sum F_p^2` and
put one copy of `(q,t,t^2)` in S_p for every q in Q and t in F_p. Each fiber
has p positions, `|S_p|=8p`, and S_p is squarefree. For fixed z=(u,v) in H,
an original pair of sum z must lie in one quotient fiber and satisfies

`t+t'=u`, `t^2+(t')^2=v`, hence `tt'=(u^2-v)/2`.

The roots of the resulting quadratic determine at most one unordered pair
with t!=t' per fiber. A repeated root cannot be paired because S_p is
squarefree. Therefore

`M_z(S_p)<=8<=(p-3)/2=floor((p-1)/2)-1` for every z.

Nevertheless S_p has an explicit 2p-term zero sum. The full parabola has
`sum_t t=sum_t t^2=0` for p>=5. Take all p terms of fiber 0. For a second
p-term block choose independent q_1,q_2 in Q, place the t=0 term in q_1,
the t=1 term in q_2, and all other t terms in q_1+q_2. Its H-sum is again
zero and its quotient sum is
`q_1+q_2+(p-2)(q_1+q_2)=0`.
The two blocks are position-disjoint, so their union is the asserted zero sum.

This zero sum has odd counts exactly in the plane
`{0,q_1,q_2,q_1+q_2}`. The construction in S011-P1 gives a maximal pairing
and that residual plane for which the plane exclusion fails. Thus S_p fails
the full all-pairings system, exactly as it must.

This is not an actual CAND extremal, not a local D9 packet, not experimental
evidence for failure, and not a D7 or Property-D counterexample. It only
falsifies a proposed shortcut from parity/length/capacity to a contradiction.
No finite search, prime sweep or computation was used; the symbolic family is
valid irrespective of which primes have Property D.

## 6. Disposition and repair boundary

The bounded mechanism is now fully assessed:

- the true common-position exchange was frozen and all residual restrictions
  retained;
- the threshold forces a witness but only through overlapping edges;
- its exact one-term or two-term completion obligation is not discharged;
- the eta-complement shortcut fails, consistently with S010-P4;
- the simple capacity/parity relaxation has explicit false positives;
- no actual length-8m extremal with the low bounds was produced or excluded.

The surviving obstruction is still an actual CAND extremal satisfying the
simultaneous M_z bounds and all maximal-pairing restrictions. S011 neither
establishes its existence nor proves its impossibility. D10-01, D9-01,
D8-02, universal D7-01 and universal D6-08/D6-09 remain unresolved. No new
modulus, full classification or publication-ready result is claimed.

No forcing mechanism survives this particular assessment. Under D-043 and the
S010 audit, stop the local-hole/capacity refinement route at this checkpoint.
Prepare one bounded repair toward the weaker D6-08 condition: test maximal
progressive blocks using the maximal-short-zero-sum argument of published
Lemma 4.4(2), without demanding reflection-pair decomposition or monochromatic
fibers. That further unit is prepared, not executed, in S011.
