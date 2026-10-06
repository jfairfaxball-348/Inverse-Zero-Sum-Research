# S041 D40-01 — classification verification

Date: 2026-10-06.
Verdict: **VERIFIED; NO PROOF DEFECT FOUND IN THE CHECKED S040 CHAIN.**

This record independently rechecks the four links named in the S041 brief. It
does not assert literature novelty, previous openness, publication significance
or independent external validation.

## 1. Quantifier and positional preflight

In the proof of Gao--Hui--Li--Li--Qu--Zhong 2024 Lemma 3.3(3), after a packing
`S=B_1...B_s S_0` is chosen, the proof says for every block to choose an
element `g_i in supp(B_i)`. The subsequent avoidance conclusions are derived
from the indexed no-innerly-joint hypothesis, not from a special canonical
choice. Thus holding every other representative fixed and changing one
selected support value is licensed.

The target relation remains positional throughout: the source definition uses
distinct index sets and the indexed intersection sum. Nothing in the S040 swap
argument silently replaces positions by a support set.

## 2. The s=8 representative-swap collapse

S039 gives that for every representative transversal
`x=(x_1,...,x_8)`, the residual
`R_x=(x_1...x_8)^(-1)S` is short-free of length 16. ZS-74 Lemma 28 gives
`sigma(R_x)=0`.

Fix a packed block `B_j`, hold the other representatives fixed, and let
`a,b in supp(B_j)` be two selectable values. If their common complementary
representative sum is `t`, the two residual sum equations are

`sigma(S)-t-a=0` and `sigma(S)-t-b=0`.

Hence `a=b`. Every packed block is therefore constant. A nonzero 2-term
zero sum in exponent three is `a(-a)` with `a != -a`, so a 2-block is
necessarily nonconstant. The signatures `(6,8,2)` and `(7,8,1)` are
impossible; only `(8,8,0)` survives.

Each surviving 3-block is `u^3`, so `S=U^3` for a length-8 sequence
`U`. Deleting one representative from every block gives `U^2`, which is
short-free. If a value repeated in `U`, then `U^2` would contain at least
three copies of that value and hence a 3-term zero sum. Thus `U` is
squarefree.

## 3. Length-15 residual profile and singleton identity

Let `R` be short-free of length 15 over `C_3^3`.

Every multiplicity is at most two, because `a^3` is a short zero sum. Thus
`|supp(R)|>=8`.

If the support had at least nine values, choose nine distinct values and call
their squarefree sequence `T`. Since `T|R`, `T` is short-free. Moreover
`T^2` is short-free in exponent three:
- one-term zero sums are excluded by the nonzero alphabet;
- a two-term zero sum among distinct values would already occur in `T`,
  while a repeated pair has sum `2a !=0`;
- a three-term zero sum with three distinct values would already occur in
  `T`; with two equal values, `2a+b=0` forces `b=a`, requiring three
  copies, but `T^2` has only two.

Then `|T^2|=18`, contradicting `eta(C_3^3)=17`. Hence the support has
exactly eight values and the multiplicity profile is `2^7 1`.

Let `u` be the unique singleton. Appending one more copy of `u` preserves
short-freeness: any new witness using just the appended copy can substitute the
old copy, and a witness using both copies would need either `2u=0` or a third
`u`. The resulting length-16 sequence is short-free, so Lemma 28 gives
`sigma(R)+u=0`, i.e. `u=-sigma(R)`.

Finally `sigma(R) !=0`: if it were zero, `R` would be a length-15
zero-sum short-free sequence, contradicting ZS-74 Lemma 29(1), which places 15
in `C_0(C_3^3)`.

## 4. The s=9 two-block contradiction

The S039 signature `(6,9,0)` contains six 3-blocks and three nonconstant
2-blocks. Since all nine blocks are zero-sum, `sigma(S)=0`.

For a representative transversal `x`, the length-15 residual singleton
identity gives `u_x=-sigma(R_x)=sum_i x_i`.

Fix a nonconstant 2-block `B_j` and write `a,b` for its two distinct
values. Let `t` be the sum of the other eight representatives. Passing from
the residual using `a` to the residual using `b` increases the count of
`a` by one and decreases the count of `b` by one. Requiring both residuals
to have profile `2^7 1` leaves exactly two affected-count transitions:

- `(0,1)->(1,0)`. Then the singleton changes from `b` to `a`, so
  `b=t+a` and `a=t+b`. These equations force `a=b`, contradiction.
- `(1,2)->(2,1)`. Then the singleton changes from `a` to `b`, so
  `a=t+a` and `b=t+b`; hence `t=0`.

Thus every choice of representatives in the complement of a fixed nonconstant
2-block would have complementary sum zero. But the complement contains another
nonconstant 2-block; changing its representative changes that complementary
sum by a nonzero amount. Contradiction. The `s=9` branch is impossible.

A bounded integer check independently enumerated the profile-preserving local
count transitions and returned exactly the two cases above. This was not a
group/orbit enumeration.

## 5. Sufficiency from the 2024 proof

The statement of ZS-72 Lemma 3.3(2) is a lower bound; S040 correctly relies on
its proof, not on reading the lower-bound statement as an inverse theorem. The
proof starts with any short-free sequence `T` of length `eta(G)-1`; under
Property C it writes `T=U^(n-1)`, with `U` squarefree, and directly states
that `S=U^n` has no forbidden pair.

For an arbitrary squarefree short-free length-8 `U` over `C_3^3\{0}`,
the same exponent-three case split used above shows `U^2` is short-free.
It has length 16 = `eta(C_3^3)-1`. Substituting `T=U^2`, `n=3` into the
published proof gives that `U^3` satisfies the target avoidance condition.

Therefore necessity and sufficiency both pass the independent D40-01 check.
