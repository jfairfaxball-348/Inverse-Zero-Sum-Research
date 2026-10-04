# S016 — near-full replacement-core threshold stars

Date: 2026-10-04. Classification: internal programme mathematics. The only
published threshold input is the Girard--Schmid 2019 value already rechecked in
S014. No independent review, formalisation or novelty certification is claimed.

## 1. Domain and notation

Let
[
G=G_m=C_2\oplus C_{2m}\oplus C_{2m},\qquad n=2m,\qquad m\ge2,
]
and let `S` be a CAND-02 extremal:
[
|S|=4n,\qquad 0\notin\Sigma_n(S).
]

Fix a support value `a` with a genuinely nontrivial core
[
K=K_a(S),\qquad K\setminus P_a\ne\varnothing,
]
and put
[
\delta=n-1-|K|.
]
S015 already proves that `K` is a union of complete support value classes,
that `P_a\subseteq K`, and that a nontrivial source class has the
multiplicity bounds recorded there.

Adjoin one fresh occurrence `a_*` and define the positional sequences
[
U=S a_*,\qquad M=K a_*,\qquad O=S K^{-1}.
]
Thus
[
U=M O,quad |U|=4n+1=s(G),quad |M|=n-\delta,quad
|O|=3n+1+\delta.
]
Write
[
H=\sigma(M),\qquad q=-H.
]

Because `K` is a union of complete old value classes and contains every old
`a)-position, no value occurring in `M` occurs in `O):
[
\operatorname{supp}(M)\cap\operatorname{supp}(O)=\varnothing. \tag{S016.1}
]
Nontriviality means `M` has at least two distinct values, and the value
`a` occurs at least twice in `M` (one old occurrence plus `a_*`).

## 2. S016-P1 — deletion-star reconstruction

**PROGRAMME THEOREM; PROVED.** Every position `tau in M` is a critical
deletion of the threshold sequence `U). If `t=v(tau)`, then
[
U\tau^{-1}\text{ is CAND-extremal},\qquad
K_t(U\tau^{-1})=M\tau^{-1}. \tag{S016.2}
]

Moreover the residual representation family is independent of `tau):
[
\mathcal F=
\{D\mid O: |D|=\delta,\ \sigma(D)=q\}. \tag{S016.3}
]
For every `tau in M` of value `t`,
[
\mathcal R_t(U\tau^{-1})
=
\{(M\tau^{-1})D:D\in\mathcal F\}. \tag{S016.4}
]

Finally the complete family of `n)-term zero sums in `U` is
[
\mathcal Z_n(U)=\{MD:D\in\mathcal F\}. \tag{S016.5}
]
Hence `M` is exactly the positional intersection of all `n)-zero sums in
`U`.

**Proof.** If `tau=a_*`, then `U tau^{-1}=S` and (S016.2) is the
definition of `K_a(S)`. If `tau` is an old core position of value `t`,
then `U tau^{-1}` is exactly the safe replacement of that old position by
the fresh `a_*`. S014-P3 makes it extremal and S015-P1 gives
[
K_t(U\tau^{-1})=(K\setminus\{\tau\})\cup\{a_*\}=M\tau^{-1}.
]

The complement of this transported core in `U tau^{-1}` is always the same
positional sequence `O`. S015-P4 therefore says every representation is the
transported core plus a `delta)-term subsequence of `O`. Its required sum is
[
-t-\sigma(M\tau^{-1})
=-t-(H-t)=-H=q,
]
which proves (S016.3)--(S016.4).

Let `Z|U` be an `n)-term zero sum. Since `U tau^{-1}` is extremal for
every `tau in M`, `Z` must contain every position of `M`. Its remaining
`delta` positions form a `D|O` with sum `q`. Conversely every such
`MD` has length `n` and sum `H+q=0`. This proves (S016.5). S015-P4
gives empty positional intersection of the residual family when `delta>0`;
when `delta=0` the sole zero sum is `M`. Thus the intersection of all
members of `Z_n(U)` is exactly `M`. QED.

This is stronger than merely transporting one core: the whole safe-exchange
orbit is reconstructed as the set of single deletions of one threshold
sequence, with one common outside reservoir and one common residual family.

## 3. S016-P2 — exact near-full normal forms

**PROGRAMME COROLLARY; PROVED.** Under the nontrivial-incidence hypothesis,
the three near-full deficits have the following exact threshold-star forms.

### Deficit zero

If `delta=0`, then `|M|=n`, `H=0`, and `U` has a **unique**
positional `n)-term zero sum, namely `M`. Deleting any one position of
that zero sum leaves a length-`4n` extremal, and the corresponding replacement
core is the remaining `n-1` positions.

### Deficit one

If `delta=1`, then `|M|=n-1`. There is a unique residual value
[
c=q=-H
]
with at least two occurrences in `O`, and
[
\mathcal Z_n(U)=\{M c_i:c_i\text{ is an occurrence of }c\text{ in }O\}.
\tag{S016.6}
]
No value of `M` occurs in `O`.

### Deficit two

If `delta=2`, then `|M|=n-2` and
[
\mathcal Z_n(U)=\{M p r:
p,r\in O,\ p\ne r,\ v(p)+v(r)=q\}. \tag{S016.7}
]
The residual pairs are exactly the edges of the fixed-sum positional graph
`Gamma_q(O)`, and that edge family has empty vertex intersection.

The graph has an exact value-class decomposition. For each value `x` with
`x!=q-x`, the positions of values `x` and `q-x` form a complete
bipartite component whenever both classes are nonempty. For each fixed value
`x` with `2x=q`, its positions form a complete graph. These are all
components.

The empty-intersection condition is therefore equivalent to one of:

1. at least two nonempty components;
2. exactly one bipartite component, with both sides of size at least two; or
3. exactly one fixed-value complete-graph component, on at least three
   positions.

**Proof.** The first two cases are S016-P1 together with the S015-P4 residual
classification. For `delta=0`, the only zero-term residual has sum zero, so
`q=0` and `H=0`.

For `delta=2`, by definition every pair of outside positions whose values
sum to `q` is a residual representation, and no other pair is. The involution
`x mapsto q-x` partitions value classes into two-class or fixed-class
orbits, giving precisely the complete bipartite and complete-graph components.
If there are two components, no position lies in every edge. For a single
`K_{r,s}` component, a position lies in every edge exactly when one side has
size one; hence empty intersection means `r,s>=2`. For a single clique, two
vertices give one edge with nonempty intersection, while at least three vertices
have empty total edge intersection. QED.

### Weighted-core consequence

Let `w_x=v_x(M)`. Since the original target value has
`w_a=v_a(S)+1` and every other value of `M` is a complete source class
inside `K_a(S)`, S015-P2 gives
[
2\le w_a\le n-3,\qquad
w_x\le n-3\quad(x\in\operatorname{supp}(M),\ x\ne a), \tag{S016.8}
]
and
[
w_a+w_x\le n\quad(x\ne a). \tag{S016.9}
]
Thus a near-full nontrivial star cannot hide a forbidden high-multiplicity
source class.

## 4. S016-P3 — the common-deletion witness is exactly the same residual family

**PROGRAMME LEMMA; PROVED.** Let `tau in M` have value `t`, let
`p in M tau^{-1}` have a different value `u`, and consider the extremal
`U tau^{-1}`. S015-P3's common-deletion family is not an additional family:
it is exactly
[
\mathcal Q_{p;t,u}
=
\{(M\{tau,p\}^{-1})D:D\in\mathcal F\}. \tag{S016.10}
]

**Proof.** S015-P3 forces every member of `Q` to contain the transported core
`M\{tau,p\}^{-1}`. That core has size `n-delta-2`, while a common-deletion
witness has size `n-2`, so exactly `delta` outside positions remain.
For `D in F`,
[
\sigma((M\{tau,p\}^{-1})D)
=H-t-u+q=-(t+u),
]
so every `D` gives a witness. Conversely any witness's remaining
`delta` positions lie in `O` and must sum to `q`. QED.

Thus, in the near-full regime, counting the S015-P3 witness as independent of
S015-P4 would double-count the same residual freedom.

## 5. S016-P4 — exact deficit-descent escape equation

The only remaining simultaneous input is the one-step deficit descent. It gives
a genuinely different sum condition, but not a contradiction.

**PROGRAMME THEOREM / STOPPING OBSTRUCTION; PROVED.** Let `tau in M` have
value `t` with `w_t>=2`, so `t` remains a support value of
`U tau^{-1}`. Let `p in M` have value `u!=t`. Define
[
N_{t,p}
=
M\, (t^{w_t})^{-1}p^{-1},
]
meaning: remove all `w_t` positional occurrences of value `t` from `M`
and also remove the source position `p`. Then
[
|N_{t,p}|=n-\delta-w_t-1.
]

S015-P2 applied in the deletion-star state `U tau^{-1}` forces a subsequence
`E|N_{t,p}O` with
[
|E|=n-w_t-1,\qquad
\sigma(E)=(n-w_t-1)t. \tag{S016.11}
]
Write uniquely
[
E=(N_{t,p}X^{-1})Y
]
with `X|N_{t,p}` and `Y|O`. Then
[
|Y|=\delta+|X|, \tag{S016.12}
]
and
[
\sigma(Y)-\sigma(X)=q+u-t. \tag{S016.13}
]

**Proof.** In `U tau^{-1}`, the target multiplicity is `w_t-1`, hence the
S015 target deficit is `n-w_t` and its one-step descent length is
`n-w_t-1`. Removing all target-`t` positions and the source `p` leaves
exactly `N_{t,p}O`, proving (S016.11).

Since `|E|-|N_{t,p}|=delta`, positional comparison gives (S016.12). Also
[
\sigma(N_{t,p})=H-w_t t-u.
]
Therefore
[
\sigma(Y)-\sigma(X)
=(n-w_t-1)t-(H-w_t t-u).
]
Using `nt=0` and `q=-H` gives (S016.13). QED.

Compare this with the common-deletion residual `D in F`:
[
|D|=\delta,\qquad \sigma(D)=q.
]
The descent condition is shifted by exactly the nonzero value `u-t`.

Consequences:

- If `X` is empty, `O` contains a `delta)-term subsequence of sum
  `q+u-t`, which is **not** a member of `F`.
- If no such shifted `delta)-subsequence exists, the descent witness escapes
  by a cross-boundary exchange with `X!=empty`: it deletes internal
  non-`t` augmented-core positions and uses `delta+|X|` outside positions.
- For `delta=0`, the pure outside case is impossible, because it would require
  the empty sequence to have sum `u-t!=0`. Hence every deficit-zero
  nontrivial star necessarily has `X!=empty`.
- For `delta=1`, the pure case is one outside position of value
  `q+u-t`; otherwise a cross-boundary exchange occurs.
- For `delta=2`, the pure case is an outside pair with sum `q+u-t`;
  otherwise a cross-boundary exchange occurs.

The S015 ambient system contains no theorem excluding these shifted outside
subsum targets or the cross-boundary exchanges. S016-P3 shows the
common-deletion theorem supplies only the unshifted family `F`, so it cannot
close this gap by a second independent residual condition.

## 6. D15-01 disposition

S016 does **not** prove that every nontrivial support core has
`delta>=3`, and it does not construct an actual extremal with
`delta<=2`.

It does establish the brief's second success mode and an exact version of the
third:

1. every near-full nontrivial core extends to a **threshold deletion star**
   `U=MO`; every deletion of a token of `M` is extremal, `M` is the
   exact intersection of all `n)-term zero sums in `U`, and one common
   residual family reconstructs all target representations across the exchange
   orbit;
2. deficits zero, one and two have the exact zero-sum-family normal forms in
   S016-P2, including a complete value-class graph classification at deficit
   two;
3. the common-deletion witness is exactly the same residual family, not an
   additional constraint;
4. deficit descent forces the shifted exchange equation
   (S016.12)--(S016.13), whose two escape modes are not controlled by the
   present ambient theorems.

Thus the remaining existence question is the existence of a threshold sequence
with a large multivalued common intersection and the shifted-exchange system.
Merely renaming that same question as a threshold-star problem would be a
cosmetic S017. A further mathematical session requires a genuinely new theorem
or mechanism controlling shifted residual sums or cross-boundary exchanges.

The stopped quotient/kernel/capacity/Fano/progressive architectures were not
used. No mathematical computation was run.

## 7. Focused source boundary

After the threshold-star normal form emerged, a narrowly targeted check used
terms such as unique EGZ zero-sum, common intersection of fixed-length zero
sums, critical deletion sequence and threshold zero-sum family. It surfaced
the already adjacent generalized/fixed-length EGZ literature, including the
Gao--Hong--Peng 2022 line already recorded as ZS-42, but no checked primary
statement directly supplied a theorem about a multivalued common intersection
of size `n-2` or larger in the present equal-factor threshold sequence.

This is only a focused search non-hit. It is not evidence of novelty, openness,
literature completeness, significance or publishability.
