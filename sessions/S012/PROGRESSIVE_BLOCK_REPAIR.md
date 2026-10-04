# S012 — progressive-block repair assessment

Date: 2026-10-04. Classification: internal programme mathematics with the
published source input identified below. No independent review or formalisation.

**Outcome: D11-01 does not prove the universal D6-08 bridge.** The frozen
short-zero-sum splice is valid and yields a new exact obstruction, but the
maximal-short-zero-sum argument in Girard--Schmid Lemma 4.4(2) forces the
available zero sums outside the splice range whenever the bridge fails. This is
not a D6-08 counterexample and does not revive the stopped D7/capacity route.

## 1. Domain and maximal progressive block

Let

`G=G_m=C_2 + C_{2m} + C_{2m}`, `exp(G)=2m`, `eta(G)=6m+2`,

and let `S` be an actual CAND-02 extremal:

`|S|=8m`, `0 notin Sigma_{2m}(S)`.

Choose, over **all** centers `h in G` and all subsequences of `S`, a progressive
block `C` of maximum possible length `c=|C|`, meaning

`jh in Sigma_j(C)` for every `0<=j<=c`.

Such a block is nonempty: any single position `h|S` gives `C=h`. Translate the
entire sequence by `-h`. Because `2m h=0`, translation preserves every
2m-term sum and hence CAND extremality. Write

`D=(-h)+C`, `R=((-h)+S) D^{-1}`.

Then `D` and `R` are position-disjoint, `|D|=c`, and

`0 in Sigma_j(D)` for every `0<=j<=c`.

If D6-08 fails for `S`, maximality gives

`1<=c<=m-2`.

All statements below are made in this translated sequence. Translating back
restores the same center `h` and the original positions.

## 2. Source recheck: exactly what Lemma 4.4(2) uses

Girard--Schmid 2019 Lemma 4.4(2) applies to a sequence of length

`(eta(G)-1)+exp(G)-1`

with no `exp(G)`-term zero sum. If it contains a progressive block of size at
least `floor((exp(G)-1)/2)`, then the translated sequence contains an
`eta(G)-1` subsequence with no short zero sum.

For CAND-02 these numbers are exactly `8m`, `m-1`, and `6m+1`.

The proof translates the center to zero, chooses a **maximum-length short
zero-sum subsequence** `T` of the complement of `C`, and separates two cases.
If `|T|>exp(G)/2`, the hypothesis `|C|>=m-1` supplies a zero-sum subsequence
of `C` of the complementary cardinality `2m-|T|`; if `|T|<=m`, maximality of
`T` makes the residual complement short-zero-sum-free. The threshold `m-1`
is therefore used as an actual cardinality witness, not as a cosmetic bound.

No Property D or homocyclic Lemma 4.3 input occurs in this source argument.

## 3. S012-P1 — short-zero-sum splice augmentation

**PROGRAMME LEMMA; PROVED.** Let `A|R` be a nonempty zero-sum subsequence of
length `r`. If

`r<=c+1`,

then `D A` is a progressive zero-centered block of length `c+r`, strictly
larger than `D`.

**Proof.** For `0<=j<=c`, use the existing `j`-term zero-sum witness in `D`.
For `c<j<=c+r`, set `q=j-r`. The inequality `r<=c+1` gives
`q>=c+1-r>=0`, while `j<=c+r` gives `q<=c`. Choose a zero-sum `q`-term
subsequence of `D` and adjoin all `r` positions of `A`. The result has length
`j` and sum zero. Thus zero-sum witnesses exist for every cardinality from
`0` through `c+r`. The positions are disjoint because `A|R`. QED.

**Actual-CAND consequence.** Since `D` was chosen maximum over all centers and
positions, its translated complement satisfies

`0 notin Sigma_r(R)` for every `1<=r<=c+1`.          (S012.1)

This is the frozen repair mechanism. It requires only the total zero sum of
`A`; it does **not** require `A` itself to be progressive, reflection-paired or
eta-extremal.

### Falsification boundary: the cardinality condition is real

The statement cannot be extended to arbitrary complement zero sums. For
`m>=3`, work inside `H=C_m^2 <= G_m` with independent `e_1,e_2`. Let

`D=0`, `A=e_1 e_2 (-e_1-e_2)`.

Here `c=1`, `A` is a three-term zero sum, but `DA` has no two-term zero sum:
no pair involving `0` sums to zero, and the three pairs among the terms of
`A` sum respectively to `e_1+e_2`, `-e_2`, and `-e_1`. Hence `DA` is not
progressive. This is a local counterexample to the overbroad splice claim at
`r=c+2`; it is **not** a CAND extremal and not a D6-08 counterexample.

## 4. S012-P2 — the maximal-short-zero-sum deficit interval

**PROGRAMME LEMMA; PROVED.** Assume for contradiction-testing purposes that
D6-08 fails, so `c<=m-2`. Let `T|R` be a short zero-sum subsequence of maximum
length `t=|T|`. Then

`m+1 <= t <= 2m-c-1`.                              (S012.2)

Equivalently, with the deficit

`d=2m-t`,

one has

`c+1 <= d <= m-1`.                                 (S012.3)

Moreover, for `U=R T^{-1}`,

`0 notin Sigma_s(U)` for every `1<=s<=d`.           (S012.4)

**Proof of the lower bound.** Suppose `t<=m`. If `V|U` were a nonempty short
zero sum, maximality of `T` gives `|V|<=t`. Then `TV` would be a short zero sum
in `R` of length at most `2t<=2m` and strictly greater than `t`, contradiction.
Thus `U` has no short zero sum. But

`|U|=8m-c-t >= 8m-(m-2)-m = 6m+2 = eta(G)`,

contradicting the definition of `eta(G)`. Hence `t>=m+1`.

**Proof of the upper bound.** If `t>=2m-c`, put `q=2m-t`. Since `T` is short,
`0<=q<=c`. If `q=0`, `T` itself is a forbidden 2m-term zero sum. If `q>0`,
progressivity of `D` supplies a disjoint `q`-term zero sum `D_q|D`, and
`T D_q` is a forbidden zero sum of length `2m`. Therefore
`t<=2m-c-1`, proving (S012.2)--(S012.3).

**Proof of (S012.4).** If `V|U` is zero-sum with `s=|V|<d`, then `TV` is a
short zero sum in `R` of length `t+s<2m` and greater than `t`, contradicting
maximality. If `s=d`, then `TV` is a forbidden 2m-term zero sum. QED.

All positions used above are disjoint by construction. No pair-sum lift or
abstract kernel edge is substituted for an original position.

## 5. S012-P3 — exact stopping obstruction for the frozen repair

Set `g=d-c>=1`. From (S012.3),

`|U|=8m-c-t = 6m+d-c = 6m+g`.

There are two cases.

- If `g=1`, then `|U|=6m+1=eta(G)-1`. Equation (S012.4) only excludes
  zero sums of lengths at most `d`; it does **not** make `U` eta-extremal.
  Longer short zero sums may remain. This is exactly the type of inference
  prohibited by S010-P4 and S011-P2.
- If `g>=2`, then `|U|>=6m+2=eta(G)`, so `U` has a short zero sum `V`.
  Equation (S012.4) forces `|V|>=d+1>=c+2`. Thus the zero sum forced by eta is
  too long for S012-P1's splice condition. Maximality of `T` also gives
  `|V|<=t`, but that does not close the missing cardinality.

The original maximal `T` is likewise too long to splice: by (S012.2),
`t>=m+1`, whereas `c+1<=m-1`.

Therefore the exact maximal-short-zero-sum mechanism from Lemma 4.4(2), when
run below its published threshold, produces no zero-sum block in the
splice-eligible range `1,...,c+1`. The failure is a cardinality gap, not an
overlap defect and not an eta-core conclusion.

### Why length alone cannot repair the gap

No unrestricted length threshold can force the missing small zero sum. Let
`z` be any element of order `2m`. For every `N`, the sequence `z^N` has no
nonempty zero-sum subsequence of length below `2m`. In a putative bridge
failure `c+1<=m-1<2m`. Hence arbitrarily long sequences can avoid every
zero-sum length needed by S012-P1.

This is only a falsification of a **length-only** forcing idea. Such sequences
are not CAND extremals once `N>=2m`. Any successful continuation of this splice
route must use additional structure specific to the actual CAND extremal.

## 6. Proof/falsification assessment

The bounded repair has therefore done both requested jobs:

1. it proves one precise enlargement mechanism, with its exact positional and
   cardinality hypotheses; and
2. it falsifies the tempting extension from “a complement zero sum” to “an
   augmenting complement zero sum”, while locating the source proof's exact
   deficit interval in an actual putative CAND failure.

What remains is not a hidden reflection-pair assumption. A successful proof
through this route would need genuinely CAND-specific information forcing a
zero-sum subsequence of the translated complement in the small range
`[1,c+1]`, or a different replacement theorem with all missing cardinality
witnesses supplied. Plain sequence length cannot do this. Existing S010/S011
capacity and all-pairings machinery is not silently reintroduced to manufacture
that input.

No computation was run: the obstruction and the local falsification are
symbolic and all-m. There is no precise non-vacuous finite search question whose
answer would settle the universal deficit.

## 7. Status after S012

- D11-01: **ASSESSED; FROZEN SPLICE PROVED, UNIVERSAL REPAIR UNRESOLVED**.
- D6-08: **UNRESOLVED universally**; previously proved scopes remain intact.
- D6-09: remains source-supplied conditionally; no universal eta-core is
  recorded.
- D10-01/D9-01/D8-02/D7-01: unchanged; the stopped capacity route is not
  revived.
- No actual bridge-failing extremal, eta-core classification, full CAND-02
  classification or publication-ready theorem is claimed.
- CAND-02 remains **SOURCE-DEFINED / CURRENT STATUS UNKNOWN**.

Because the splice route now needs a genuinely new CAND-specific source or
structural input, S012 stops rather than scheduling another small variation of
the same argument. The next prepared unit is a source-based comparison of
mathematically distinct routes.
