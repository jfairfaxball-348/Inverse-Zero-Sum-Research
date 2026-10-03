# S010 — double-hole rigidity: partial results and exact obstruction

Date: 2026-10-03. Classification: internal programme mathematics, with the
published inputs identified below; no independent review or formalisation.

**D9-01 remains UNRESOLVED.** Neither a proof that delta must vanish nor a
realizable nonzero-delta package is obtained. The results below restrict a
possible failure; they do not solve Property D or CAND-02. In particular, the
affine-plane calculation is not a counterexample to D9-01.

## 1. Input and quantifiers

Keep the complete S009-P2/P4 system, including its single companion exclusions,
not just the double holes mentioned in the brief. Write

`H=2G_m ~= C_m^2`, `Q=G_m/H ~= C_2^3`, `|T|=4m-5`,
`P_a=T x`, `P_b=T y`, `x=b+c`, `y=a+c`, `delta=b-a=x-y!=0`.

Both extensions have no m-term zero sum. The eight residual representatives
come from the same quotient lift; changing residual a to b changes only that
representative. The threshold supplies a witness
`B|T`, `|B|=m-2`, `sigma(B)=-(x+y)`.

There are three distinct logical questions:

1. An arbitrary one-change pair over H, without residual labels.
2. The local D9 footprint: an actual sequence T and one residual lift satisfying
   every S009 exclusion and incidence relation for the two choices.
3. A length-8m CAND extremal producing that footprint and satisfying the
   restrictions for **every** maximal within-fiber pairing.

An example for (2) would refute local footprint sufficiency, but would not by
itself refute D7-01. An actual example for (3) would be needed for that purpose.
S009-P4 includes the necessary all-pairings compatibility inherited from (3).
No reverse realization implication from (2) to (3) is assumed here.

Published input: Girard--Schmid, *Direct zero-sum problems for certain groups
of rank three*, JNT 197 (2019), arXiv:1806.07636v2,
https://arxiv.org/html/1806.07636v2 . The relevant source hypotheses were
rechecked: Theorems 2.3/2.4, Lemmas 4.1/4.2/4.4(2), and the warning after
Lemma 4.3. In H, an eta-extremal has three support elements each of
multiplicity m-1, unconditionally (Theorem 2.4). Lemma 4.2 is unconditional
eta-overlap rigidity. Lemma 4.1 requires Property D. No homocyclic use of
Lemma 4.3 is made. Theorem 2.4 is used as a source theorem, not re-proved here.

## 2. S010-P1 — the incidence equations and their freedom

**PROGRAMME LEMMA; PROVED.** Translate the original labels by -a and relabel
the quotient so that the changed representative is `r_0=0`. Rename the
translated objects. Thus `b=delta`, `c=y`, `x=y+delta`. Translation preserves
the exact 2m-term condition; pair sums translate by -2a in H, so all the S009
restricted-sum constraints remain valid in the new coordinates.

The seven planes through 0 correspond to the seven lines L of the Fano plane
on `Q\{0}`. Set

`w_L=sum_{q in L} r_q`, `t=sum_{q!=0} r_q`.

All these sums lie in H. The seven complementary affine planes have sums
`t-w_L`. The following identities hold in G, and both sides lie in H:

`sum_L w_L = 3t`,

`sum_{L containing q} w_L = 2r_q+t`  for each nonzero q.

**Proof.** Each nonzero point belongs to three Fano lines; each pair of
distinct nonzero points belongs to one line. Count the coefficient of each
representative in either displayed sum. In the second sum r_q has coefficient
3 and every other representative coefficient 1. QED.

In these variables the full local footprint is exactly:

| Residual subset | Exclusions on T |
| --- | --- |
| Plane through 0, sum w_L | `-w_L,-w_L-delta` absent from `Sigma_{m-2}(T)`; `-w_L-x` absent from `Sigma_{m-3}(T)` |
| Complementary plane, sum t-w_L | `-t+w_L` absent from `Sigma_{m-2}(T)`; `-t+w_L-x,-t+w_L-y` absent from `Sigma_{m-3}(T)` |
| Full set, sum t | For m>=4, `-t,-t-delta` absent from `Sigma_{m-4}(T)`; for m>=5, `-t-x` absent from `Sigma_{m-5}(T)` |

Here `Sigma_0(T)={0}` and negative-index sets are empty. The threshold witness
remains `-(x+y) in Sigma_{m-2}(T)`.

**Freedom when gcd(m,6)=1.** In this case `G_m ~= Q direct-sum H`. Given
arbitrary seven values `w_L in H`, define

`t=(1/3) sum_L w_L`,

`h_q=(1/2)(sum_{L containing q} w_L-t)`.

The fractions mean inverses of 2 and 3 modulo m. Taking `r_q=(q,h_q)` and
`r_0=0` realizes these seven plane sums and total t. Indeed,

`sum_{q in L} sum_{M containing q} w_M = 2w_L+sum_M w_M`,

so summing the h_q on L gives w_L; summing all h_q gives t. Therefore the
seven through-plane centers can be chosen freely in this coprime regime;
the complementary centers and total are then determined. This concerns
residual lifts only, not simultaneous realization by a core T or a CAND S.

**Collision boundary.** For every odd m, use the split lift `r_q=(q,0)`.
All fourteen plane sums and t are then 0. Choose any nonzero delta in H and
let `a=0`, `b=c=delta` as three labelled positions; then `x=2delta`,
`y=delta` are distinct. This is legitimate residual/triple label data with
all seven through-plane centers coincident. It does **not** supply T or its
restricted sumsets, and does not claim EGZ extremality. It falsifies only the
shortcut that seven plane labels necessarily give seven different centers.

For even m, all seven w_L cannot coincide. The incidence identities would
give `2(r_q-r_p)=0` for every nonzero p,q. The image of `G_m[2]` in
`G_m/2G_m` has size 2 when m is even: in the last two coordinates the
2-torsion values 0 and m are even. Seven different nonzero quotient classes
cannot all lie in one coset of this size-2 image. This prevents complete
collapse in the even case, but gives no contradiction for nonzero delta.

## 3. S010-P2 — isolation from an eta-core or moderate multiplicity

**PROGRAMME LEMMA; PROVED using the published eta inputs.** Let m>=3 and set
`k=floor((m-1)/2)`. A length-4m-4 m-zero-sum-free sequence P over H is
isolated among one-term changes if its maximum multiplicity is at least k.
More generally it is isolated if it has a progressive block meeting Lemma
4.4(2)'s H-threshold k. No Property-D assumption is used.

First suppose `g^(m-1)|P`, and translate g to 0. Write `P=0^(m-1) V`, with
`|V|=3m-3=eta(H)-1`. V has no short zero sum: any such sum of length j<=m
could be padded with m-j of the m-1 zeros to contradict the hypothesis.

Consider any one-term change giving another m-zero-sum-free sequence P'.

- If a nonzero term is changed to 0, P' has m zeros, impossible.
- If a nonzero term is changed to a nonzero term, write
  `P'=0^(m-1) V'`. The same padding argument makes V' eta-extremal.
  V and V' share at least `eta(H)-2` terms, so Lemma 4.2 makes them equal.
- If a zero is changed to a nonzero u, the sequence Vu has length eta(H).
  It has a short zero sum, necessarily using u because V has none. Its length
  j is at least 2, since u!=0. Padding it with m-j<=m-2 zeros in P' gives
  a forbidden m-term zero sum.

Thus P admits no distinct one-term extremal neighbor whenever it has a term
of multiplicity m-1.

Now suppose P has a term g of multiplicity at least k. The block g^k meets
Lemma 4.4(2), applied in **H**, since
`4m-4=(eta(H)-1)+(m-1)`. Hence -g+P contains an eta-extremal U of length
3m-3. By Theorem 2.4, U contains a term of multiplicity m-1. So does P,
and the preceding argument applies. The same reasoning works for any
progressive block meeting that lemma's hypothesis. QED.

For m=2 an extremal over C_2^2 consists of all four group elements once, so
there are no distinct one-change extremals. This case does not require using
the zero value of k in the preceding proof.

**Consequences for D9.** A nonzero-delta package for m>=3 must satisfy

`max multiplicity(Tx), max multiplicity(Ty) <= k-1`,

and in particular `v_x(T),v_y(T)<=k-2`. Neither extension can contain any
progressive block of size at least k or, after any translation, an eta-extremal
subsequence of length 3m-3. The latter would contain an (m-1)-fold term and
again make the extension isolated. Thus no package exists for m=3,4 either.
These small cases add no new modulus beyond the inherited Property-D scope.

## 4. S010-P3 — exact actual-CAND capacity frontier

**PROGRAMME RESULT; PROVED.** For an actual CAND extremal S and m>=3, the
following conditions are equivalent:

1. D7-01 holds: `kappa_h(S)>=m-1` for some h in its support.
2. All eight quotient fibers are monochromatic.
3. Some maximal within-fiber pair-sum extremal P has maximum multiplicity
   at least `k=floor((m-1)/2)`.

**(3) implies (2).** P is isolated by S010-P2. In any fiber let r be its
residual term and uv one of its pairs. Replacing that pair by rv and leaving
u residual changes one term of P. S008-P1 says the new sequence is again
extremal, so isolation gives `u+v=r+v`, hence u=r. Swapping the other
endpoint likewise gives v=r. Every term of every fiber therefore equals its
residual. Fibers of size one already satisfy this assertion.

**(2) implies (1).** S has exactly eight support elements and length 8m, so
some h has multiplicity at least m. Then `kappa_h(S)>=m`.

**(1) implies (3).** In the definition of kappa_h, choose all the available
disjoint reflection pairs of sum 2h, including pairs of copies of h. Their
number is `floor(kappa_h(S)/2)>=k`. Every such pair is within one quotient
fiber. Since each fiber of S has odd size (S008-P1), removing these pairs
leaves a positive odd number of positions in every fiber. Complete to a
maximal within-fiber pairing. Its pair-sum sequence contains at least k
copies of 2h. QED.

This equivalence is a strengthening of the **one-way** S008-P3 dichotomy;
it must not be retrospectively attributed to S008 or uncommitted local files.
For m=2 all fibers are monochromatic by the m=2 isolation argument, so D7-01
also holds there.

For a precise formulation independent of a chosen pairing, define, for z in H,

`M_z(S) = sum_{two-element orbits {u,z-u}} min(v_u(S),v_{z-u}(S))`
`          + sum_{2u=z} floor(v_u(S)/2)`.

This is the maximum number of disjoint pairs of sum z in S. All these pairs
lie inside quotient fibers and can be extended as above. Consequently

`M_z(S) = max_{maximal pairings P} v_z(P)`.

Thus an actual non-monochromatic CAND extremal must satisfy the **simultaneous**
bound `M_z(S)<=k-1` for every z in H. Conversely, those simultaneous bounds
exclude (3), hence are equivalent to D7-01 failure for actual CAND extremals.
In that case, for each h in supp(S),

`kappa_h(S)=2 M_{2h}(S)+(v_h(S) mod 2)<=2k-1`.

This is at most m-2 for odd m and m-3 for even m. It is a necessary and
sufficient description **on the actual CAND domain**, not an existence theorem
for sequences satisfying the bounds. Property-D moduli remain excluded by
S008-P3; the all-m existence/nonexistence question is unchanged.

## 5. S010-P4 — the forced witness does not give an eta-free complement

**PROGRAMME OBSTRUCTION; PROVED.** Suppose an actual nonzero-delta CAND
configuration exists. Choose **any** threshold witness B from S009-P3 and
take the original disjoint pairs whose sums form B. Together with the three
positions a,b,c they form a subsequence Z of S of length 2m-1, with

`sigma(Z)=sigma(B)+a+b+c=-c`.

Translate all of S by -c. Let Z' and W' be the translates of Z and its
complement, respectively. Then

`|Z'|=2m-1`, `sigma(Z')=0`, `0|Z'`, `|W'|=6m+1`.

W' has no zero-sum subsequence of length 1 or 2. A zero term of W' would
complete Z' to a forbidden 2m-zero sum. A zero pair of W' would complete
Z' with its displayed zero term removed, again to length 2m.

Nevertheless W' **does** have an even short zero sum, of length in
`{4,6,...,2m-2}`. To see this, translate each common pair sum by -2c and
remove the translated B. The remaining sequence U has length
`(4m-5)-(m-2)=3m-3`, and its terms correspond to disjoint pairs in W'.
If U had no short zero sum, Theorem 2.4 would give a term of multiplicity
m-1, contradicting S010-P2 for the translated one-change extension containing
U. Thus U has a zero sum of length j<=m. Here j=m contradicts the kernel
extremality, and j=1 gives a forbidden zero pair in W'. Hence
`2<=j<=m-1`, and lifting those j pairs gives the asserted 2j-zero sum. QED.

Equivalently, the rank-two complement of a forced (m-2)-witness has exactly
eta(H)-1 terms but is not eta-extremal, even after choosing the translation
required above. Length alone does not justify applying eta-overlap rigidity.
The associated length-6m+1 complement in G is also not an eta-extremal core.
This rules out a specific tempting proof step: obtaining the desired eta-core
merely by deleting a threshold witness block from a nonzero-delta configuration.
It does not rule out other progressive blocks or other eta-core constructions.

## 6. Proof and falsification assessment

The high-multiplicity/progressive cases of the local footprint are impossible
by S010-P2. The witness-complement eta shortcut is blocked exactly by S010-P4.
The incidence equations retain the full complementary-plane and total-sum
information, but do not imply distinct centers, a small sumset complement,
periodicity, or the existence of a large progressive block. The coprime
realization calculation and odd-m collision example show precisely why a
pure plane-counting argument cannot supply those conclusions on its own.

The falsification attempt has not produced an actual T with two distinct
extremal extensions, let alone one with the incidence-linked holes or an
actual CAND lift. Such a T already lies outside every known Property-D scope.
The explicit residual-label example above is only a counterexample to a
counting shortcut; it is not experimental evidence for D9 failure.

No mathematical computation was run. No precise finite unsettled question
was isolated; repeating the already-covered small-modulus searches would be
vacuous for this obstruction. All results above are symbolic arguments.

The surviving actual-CAND frontier is now explicit: a non-monochromatic
extremal outside the established Property-D scope, with every M_z below k,
all S009 restrictions valid for every maximal pairing, low multiplicity in
every pair-sum extremal, and the S010-P4 obstruction for every forced witness.
It remains unknown whether such an object exists. A local footprint theorem
would still suffice, but only an actual lift could refute D7-01.

No universal eta-core reduction, full CAND-02 classification, novelty claim,
Property-D theorem, or counterexample is recorded.
