# S008 centered-symmetry forcing investigation

## Question and status

For a CAND-02 extremal `S` over
`G_m=C_2\oplus C_{2m}\oplus C_{2m}`, `m>=2`, with
`|S|=8m` and `0 notin Sigma_{2m}(S)`, must there be
`h in supp(S)` with `kappa_h(S)>=m-1`?

S008 does **not** resolve this for arbitrary `m`. It proves a sharp quotient
reduction, proves D7-01 for every modulus satisfying rank-two Property D, and
shows that any D7-01 counterexample would force Property D to fail at the same
modulus.

## Published inputs

**SOURCE RESULT.** Use the natural subgroup
`H=2G_m ~= C_m^2` and quotient `Q=G_m/H ~= C_2^3`. The S006 source audit
records `s(H)=4m-3`.

**SOURCE RESULT.** Girard--Schmid 2019 Lemma 4.1 states, in the specialization
needed here: if `m` has Property D, two length-`s(H)-1` sequences over
`H=C_m^2` with no `m`-term zero sum and with gcd length at least
`s(H)-2` are equal. This is conditional on Property D and is not imported
unconditionally.

**PROGRAMME INPUT.** S007-P2 proves that
`kappa_h(S)>=m-1` is sufficient for the progressive-subsums bridge.

## S008-P1 — quotient parity and pair-sum extremality

**PROGRAMME LEMMA; PROVED.** Let `phi:G_m -> Q` be the quotient map. For
each `q in Q`, let `n_q` be the number of terms of `S` in the fiber
`phi^{-1}(q)`. Then:

1. every `n_q` is odd (and hence positive); and
2. for **every** choice that pairs all but one term within each quotient
   fiber, the `4m-4` pair sums form a sequence `P` over `H` with no
   zero-sum subsequence of length `m`.

Thus every such `P` is an EGZ-extremal sequence over `C_m^2`.

**Proof.** Pair terms arbitrarily inside each quotient fiber, leaving one
unpaired term precisely in each fiber of odd cardinality. Let `r` be the
number of odd fibers. Since `Q=C_2^3` has eight elements, `r<=8`. The
number of pairs is `(8m-r)/2`. Each pair has quotient sum `2q=0`, so every
pair sum lies in `H`.

If there were at least `s(H)=4m-3` pairs, their pair-sum sequence would
contain `m` terms summing to zero in `H`. The corresponding `m` disjoint
pairs would be a zero-sum subsequence of `S` of length `2m`, contrary to
extremality. Hence `(8m-r)/2 <= 4m-4`, so `r>=8`. Therefore `r=8`: all
eight fiber sizes are odd. Every maximal within-fiber pairing now has exactly
`4m-4` pairs. If its pair-sum sequence had an `m`-term zero sum, the same
lifting would again give a forbidden `2m`-term zero sum in `S`. QED.

## S008-P2 — a non-monochromatic fiber creates a one-change obstruction

**PROGRAMME LEMMA; PROVED.** If some quotient fiber contains two distinct
group elements, then there exist two distinct sequences `P_1,P_2` over
`H=C_m^2`, each of length `4m-4` and each having no `m`-term zero sum,
such that `|gcd(P_1,P_2)|=4m-5=s(H)-2`.

**Proof.** Let one odd fiber contain distinct term positions with values
`a` and `b`. Since its size is odd and at least two, it is at least three;
choose a third term position of value `c`. Pair all remaining positions in
that fiber arbitrarily, and make identical maximal pairings in every other
fiber.

For the first pairing leave `a` unpaired and pair `b` with `c`. For the
second leave `b` unpaired and pair `a` with `c`. Let `R` be the common
sequence of all other pair sums. Then
`P_1=R (b+c)` and `P_2=R (a+c)`.
Both are EGZ-extremal by S008-P1. Since `a!=b`, cancellation gives
`a+c!=b+c`, so `P_1!=P_2`; their gcd has exactly the common
`4m-5` terms. QED.

## S008-P3 — D7 dichotomy and the Property-D consequence

**PROGRAMME RESULT; PROVED, WITH A PUBLISHED CONDITIONAL INPUT FOR THE LAST
CLAUSE.** Every CAND-02 extremal satisfies at least one of:

- D7-01: `kappa_h(S)>=m-1` for some `h in supp(S)`; or
- the S008-P2 one-change obstruction exists in `C_m^2`.

Consequently:

1. if `m` has Property D, D7-01 holds; and
2. any counterexample to D7-01 would force `m` **not** to have Property D.

**Proof.** Suppose every quotient fiber is monochromatic. By S008-P1 all eight
fibers are nonempty. Thus `S` is supported on exactly eight elements, one in
each quotient class. Their positive multiplicities sum to `8m`, so one
support element `h` has multiplicity at least `m`. By the definition of
reflection-balanced capacity, `kappa_h(S) >= v_h(S) >= m > m-1`.
Hence D7-01 holds.

If D7-01 fails, therefore, some fiber is non-monochromatic, and S008-P2
produces two distinct kernel EGZ-extremals sharing `s(H)-2` terms. Published
Girard--Schmid Lemma 4.1 forbids such a pair whenever `m` has Property D.
This proves both consequences. QED.

This implication is one-way. S008 does not prove Property D, does not assume it
for every `m`, and does not infer that failure of Property D would produce a
CAND-02 or D7-01 counterexample.

**Conditional eta-core consequence only.** For every modulus where Property D
is available, S008-P3 gives D7-01; S007-P2 then supplies the progressive block,
and published Girard--Schmid Lemma 4.4(2) yields a translated length-`6m+1`
eta-extremal core. No universal eta-core reduction is claimed.

## S008-P4 — residual restricted-sum compatibility

**PROGRAMME LEMMA; PROVED.** Fix any maximal within-fiber pairing. Let `P`
be its `4m-4` pair-sum sequence in `H`, and let `R` be the eight
unpaired residual terms, one from every quotient class.

If `A|R` has even length `|A|=2t`, with `t<=m`, and
`sigma(phi(A))=0` in `Q`, then `sigma(A) in H` and
`-sigma(A) notin Sigma_{m-t}(P)`, where `Sigma_0(P)={0}`.

**Proof.** If `-sigma(A)` were a sum of `m-t` terms of `P`, choose the
corresponding `m-t` disjoint original pairs of `S`. Together with the
`2t` residual terms of `A`, they would form `2(m-t)+2t=2m` terms of
`S` with total sum zero, contradiction. QED.

This is extra structure beyond an arbitrary `C_m^2` EGZ-extremal and is the
narrower input for the next stability attempt.

## Proof and falsification outcome

The direct proof attempt reaches the unconditional dichotomy S008-P3 but does
not rule out the one-change obstruction without an additional hypothesis.
Invoking Property D universally would be circular with an unresolved
rank-two conjectural layer and is not permitted.

The falsification attempt likewise yields a strong obstruction rather than a
counterexample: a D7-01 counterexample would simultaneously force failure of
rank-two Property D at its modulus. No such target extremal is constructed.

No computation was run. Theory did not expose a precise unsettled finite case;
a generic small-`m` search would be redundant on moduli already covered by
the published Property-D implication and would not decide the all-`m`
dependency.

## Status after S008

- D7-01: **PROVED FOR PROPERTY-D MODULI; UNRESOLVED FOR ARBITRARY m**.
- D6-08: remains unresolved in general, but the centered-symmetry route now
  proves it on every Property-D modulus.
- No D7-01 counterexample and no full CAND-02 classification is claimed.
- CAND-02 literature status remains SOURCE-DEFINED / CURRENT STATUS UNKNOWN.
