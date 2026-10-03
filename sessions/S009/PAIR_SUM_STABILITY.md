# S009 CAND-compatible pair-sum stability

## Question and outcome

Let `S` be a CAND-02 extremal and suppose a non-monochromatic quotient fiber
produces the S008-P2 one-change pair. Does the additional residual compatibility
from S008-P4 force the two kernel extremals to coincide without assuming
Property D?

**Outcome: D8-02 remains unresolved.** S009 proves a sharper common-core
reduction and an exact residual "double-hole" footprint. No proof of equality
and no local compatible pair, much less a lifted CAND-02 counterexample, is
obtained.

Throughout let

`H=2G_m ~= C_m^2`, `Q=G_m/H ~= C_2^3`.

Choose three term positions `a,b,c` in one quotient fiber `q_*`, with `a!=b`,
and pair all other positions identically. The two S008 pairings are

- leave `a` residual and pair `b,c`, giving `P_a=T x` with `x=b+c`;
- leave `b` residual and pair `a,c`, giving `P_b=T y` with `y=a+c`.

Here `|T|=4m-5`, both `T x` and `T y` have length `4m-4=s(H)-1` and have no
`m`-term zero sum, and `x!=y`. Set

`delta=x-y=b-a in H`, so `delta!=0`.

Let `R_a` and `R_b` be the corresponding eight residual terms. They agree
outside `q_*`; `R_b` replaces `a` by `b`. Hence for corresponding residual
subsequences the sum changes by `delta` exactly when the quotient subset
contains `q_*`.

## Published boundary: what Property D did in Lemma 4.1

Girard--Schmid 2019 Lemma 4.1 proves one-change stability under Property D.
For the homocyclic specialization and `m>=3`, the proof uses Property D through
one local consequence: every support multiplicity in an EGZ-extremal is
`m-1 mod m`. Applied to `T x` and `T y`, that congruence forces `x=y`.

S009 does not import that congruence. Thus the present question is narrower
than Property D: it asks whether the CAND residual footprint can replace the
multiplicity-congruence input for this specific pair.

The unconditional eta-overlap Lemma 4.2 does not apply directly: `T` has length
`4m-5=s(H)-2`, not `eta(H)-1=3m-3`, and S009 does not produce two overlapping
eta-extremals from it. Lemma 4.3 also cannot supply the missing restricted-sum
bound because the source explicitly states that its corresponding conclusion
fails for homocyclic `C_m^2`.

## S009-P1 — exact quotient-zero residual subsets

**PROGRAMME LEMMA; PROVED.** For a maximal S008 pairing, the residual quotient
sequence is the squarefree sequence of all eight elements of `Q=C_2^3`.
Its nonempty even-cardinality zero-sum subsets are exactly:

1. the fourteen affine planes of `Q`, each of size four; and
2. the full eight-element set.

There are seven affine planes containing any prescribed `q_*` and seven not
containing it.

**Proof.** A two-element squarefree subset of an elementary 2-group cannot sum
to zero, since that would require equal elements. The sum of all eight elements
of `C_2^3` is zero. Therefore a six-element subset sums to zero iff its
complementary two-element subset does, which is impossible. A four-element set
`{u_0,u_1,u_2,u_3}` has sum zero iff, after translating by `u_0`, it has the
form `{0,r,s,r+s}` with distinct nonzero `r,s`; this is a two-dimensional
subspace and the original set is its affine translate. `C_2^3` has seven
2-dimensional subspaces and two cosets of each, hence fourteen affine planes;
by translation symmetry each point lies in seven. The full set has sum zero.
QED.

Consequently the genuinely active S008-P4 restrictions are the size-four
plane restrictions at level `m-2`, together with the full-set restriction at
level `m-4` when `m>=4`.

## S009-P2 — comparison formula and double-hole footprint

**PROGRAMME LEMMA; PROVED.** Let `Pi` be an affine plane in `Q`, and let
`A_Pi|R_a` be its four residual representatives. Put

`s_Pi=sigma(A_Pi) in H`.

The corresponding residual plane for `R_b` has sum

- `s_Pi+delta` if `q_* in Pi`;
- `s_Pi` if `q_* notin Pi`.

Then S008-P4 for the two pairings is equivalent to the following exact
comparison statements (with `Sigma_{-1}(T)=empty` by convention).

### Planes through `q_*`

For each of the seven planes with `q_* in Pi`,

`{-s_Pi, -s_Pi-delta} subset H \ Sigma_{m-2}(T)`

and the lower-level exclusion contributed by using the exceptional term is the
same for both pairings:

`-s_Pi-x notin Sigma_{m-3}(T)`.

### Planes avoiding `q_*`

For each of the seven planes with `q_* notin Pi`,

`-s_Pi notin Sigma_{m-2}(T)`

and

`{-s_Pi-x, -s_Pi-y} subset H \ Sigma_{m-3}(T)`.

Thus these planes give a pair of `delta`-separated holes one level lower.

### Full residual set

Let `s_Q=sigma(R_a)`. Since the full quotient set contains `q_*`, for `m>=4`
S008-P4 similarly gives

`{-s_Q, -s_Q-delta} subset H \ Sigma_{m-4}(T)`.

If `m>=5`, the exceptional-term component at level `m-5` is again duplicated,
not strengthened:

`-s_Q-x notin Sigma_{m-5}(T)`.

**Proof.** For every `k`, a `k`-term subsum of `T x` either omits or uses the
single term `x`, hence

`Sigma_k(T x)=Sigma_k(T) union (x+Sigma_{k-1}(T))`,

and likewise for `T y`. Apply S008-P4 to the two corresponding residual
subsets. If the quotient subset contains `q_*`, its residual sum changes by
`delta`, while `y=x-delta`; therefore

`-(s+delta)-y=-s-x`,

so the lower-level exclusions coincide and the upper-level exclusion shifts by
`delta`. If the quotient subset avoids `q_*`, the residual sum is unchanged,
so the upper-level exclusions coincide while the lower-level exclusions are
`-s-x` and `-s-y`, separated by `delta`. The full-set case is identical to the
through-`q_*` case with `k=m-4`. QED.

This is the exact information gained by comparing the two CAND residual
systems. Counting both copies of a duplicated exclusion as independent would
overstate the compatibility input.

## S009-P3 — threshold overlap witness

**PROGRAMME LEMMA; PROVED.** For any two distinct near-identical kernel
extremals `T x` and `T y` as above,

`-(x+y) in Sigma_{m-2}(T)`.

**Proof.** The sequence `T x y` has length

`4m-3=s(C_m^2)`.

Therefore it has an `m`-term zero-sum subsequence. Such a zero sum cannot lie
in `T`, cannot use `x` but not `y` (it would lie in `T x`), and cannot use `y`
but not `x` (it would lie in `T y`), because both one-term extensions are
EGZ-extremal. Hence it uses both `x` and `y`, and its other `m-2` terms form a
subsequence `B|T` with `sigma(B)=-(x+y)`. QED.

A direct CAND consequence is that no affine-plane residual sum in either
residual system can equal `x+y`, because S009-P2/S008-P4 excludes the negative
of every such plane sum from `Sigma_{m-2}(T)`, while S009-P3 places
`-(x+y)` inside that restricted sumset.

For `m=2`, S009-P3 alone gives `x+y=0`; in `C_2^2` this implies `x=y`, agreeing
with the already resolved small case. The all-`m` issue remains for larger
moduli.

## S009-P4 — exact obstruction package for any D8-02 failure

**PROGRAMME REDUCTION; PROVED.** If D8-02 fails, then for the same modulus
there exist

- an `m`-zero-sum-free sequence `T` over `C_m^2` of length `4m-5`;
- distinct `x,y in C_m^2`, with `delta=x-y!=0`, such that both `T x` and
  `T y` are length-`4m-4` EGZ-extremals;
- a CAND residual lift of all eight quotient classes whose fourteen affine-plane
  sums satisfy the S009-P2 incidence-dependent hole pattern;
- the forced witness `-(x+y) in Sigma_{m-2}(T)` from S009-P3;
- and, because the pair arises from an actual CAND-02 extremal, all the original
  S008-P4 restrictions for every relevant maximal pairing, not merely a formal
  rank-two pair.

In particular, the obstruction is stronger than arbitrary one-change
instability in `C_m^2`, but S009 does not prove that this package is impossible.

## Proof attempt: where the argument stops

The comparison exposes the precise missing kernel statement. To force
`delta=0`, one needs a theorem showing that an `m`-zero-sum-free common core
`T` of length `s(C_m^2)-2` cannot simultaneously have the CAND affine-plane
`delta`-paired holes in `Sigma_{m-2}(T)` and `Sigma_{m-3}(T)` while also
containing the forced point `-(x+y)` in `Sigma_{m-2}(T)`.

No inspected published theorem supplies that statement:

- Lemma 4.1 gets equality only after importing Property D;
- Lemma 4.2 is eta-extremal overlap rigidity and its hypotheses are not met;
- Lemma 4.3's strong restricted-sum complement statement explicitly excludes
  the homocyclic regime.

S009 therefore does not replace Property D by an unproved generic stability
claim. The new target is a CAND-labelled restricted-sum hole theorem for the
`s(H)-2` common core.

## Falsification attempt

A negative answer to D8-02 would require an actual package from S009-P4. No
such package was constructed. In particular, merely writing down a formal
rank-two one-change pair or arbitrary residual representatives would not be a
D7-01 counterexample; the configuration must arise from a genuine length-`8m`
CAND-02 extremal.

No computation was run. The theory did not isolate a justified finite unknown
modulus: small moduli already covered by the existing Property-D implication
would not test the all-`m` frontier, while the current all-`m` obstruction is a
structural restricted-sum statement.

## Status after S009

- D8-02: **UNRESOLVED**, but reduced to the exact S009-P4 double-hole package.
- D7-01: **unchanged** — proved for Property-D moduli, unresolved for arbitrary
  `m`.
- D6-08 and the universal eta-core reduction: **unchanged**; the universal
  reduction is not recorded because D8-02 was not proved.
- No local compatible pair and no CAND-02 counterexample is claimed.
- CAND-02 remains **SOURCE-DEFINED / CURRENT STATUS UNKNOWN**.
