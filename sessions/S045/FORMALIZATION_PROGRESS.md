# S045 formalization progress

Date: 2026-10-06.
Unit: D44-01.
Status: **COMPLETED — `ThreeTerm19Input` has a closed kernel-checked proof term; `Eta17Input` is the next exact formal blocker.**

## Completed formal work

`InverseZeroSum/Candidate3.lean` now proves

`threeTerm19Input : ThreeTerm19Input`.

The proof keeps the frozen positional proposition unchanged. It introduces an
additively equivalent finite tuple model of `C_3^3`, explicitly parametrizes
the 39 affine planes, and proves the finite geometry needed for the threshold:

- a five-point subset of an affine `F_3^2` plane contains a three-term zero
  sum, expressed as the four-point cap bound;
- a cap meets every affine plane in at most four points;
- the horizontal three-plane partition and the four planes through a fixed
  pair exclude a ten-point cap;
- hence every cap in `F_3^3` has cardinality at most nine.

For a hypothetical length-19 positional sequence with no three-position zero
sum, the image support is a cap and every support value has positional
multiplicity at most two, since three equal values sum to zero in exponent
three. Thus 19 positions force at least ten support values, contradicting the
nine-point cap bound.

The finite checks use ordinary kernel reduction through `decide` on sharply
bounded coordinate statements. No `native_decide`, unchecked threshold,
Property-D axiom, postulate, opaque orbit catalogue or external oracle is used.

## Next exact blocker

The S044 packing theorem remains

`s039PackingInput_of_thresholds : ThreeTerm19Input -> Eta17Input -> S039PackingInput`.

Since `ThreeTerm19Input` is now closed, the single earliest remaining formal
source interface is `Eta17Input`. S045 does not formalize it and does not
resume the S039 packing theorem.

`FrozenClassification` still has no proof term; Palomar remains blocked.
