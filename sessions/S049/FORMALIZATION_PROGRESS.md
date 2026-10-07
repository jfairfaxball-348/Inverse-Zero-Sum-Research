# S049 formalization progress

Date: 2026-10-07.
Unit: D48-01.
Status: **COMPLETED — `Length16SumZeroInput` has a closed kernel-checked proof term.**

## Structural maximal-cap proof

S049 replaces the timed-out S048 global normalized completion enumeration with
a structural affine-plane argument.

The new Lean proof establishes:

- `nine_cap_plane_card_ne_two`: a nine-point cap in the tuple model cannot
  meet an affine plane in exactly two points;
- `directionSliceT` and the parallel-plane fibre decomposition for an
  arbitrary affine direction;
- `nine_cap_direction_slice_pattern`: in every direction the three parallel
  plane slice sizes are either `(3,3,3)` or a permutation of `(1,4,4)`;
- therefore every affine direction has zero value-sum on a nine-point cap;
- using the three coordinate directions, `nine_cap_sum_zero`: every
  nine-point cap in `F_3^3` has total point-sum zero;
- `eight_nonzero_cap_sum_zero`: if `A.card = 8`, `0 ∉ A`, and
  `IsCapT (insert 0 A)`, then `∑ x ∈ A, x = 0`.

The key no-two-plane argument reuses the already formalized incidence fact that
the four affine planes through two distinct points cover the ambient space.
If one of those four planes contained exactly the chosen two cap points, the
remaining three planes could contain at most two additional cap points each,
giving at most eight cap points in total.

## Length-16 closure

The S048 support reduction is then completed transparently:

- `tupleSupportT_card_eq_eight_length16` forces exactly eight support values;
- `tupleFiberT_card_eq_two_length16` forces every support fibre to have
  cardinality two;
- the eight support values sum to zero by
  `eight_nonzero_cap_sum_zero`;
- grouping the sixteen positional terms by support value gives twice the
  support sum, hence zero;
- transport through `finiteModelEquiv` proves

`length16SumZeroInput : Length16SumZeroInput`.

No representative-swap elimination or length-15 argument is included.

## Trust boundary

The proof uses ordinary structural Lean reasoning and the already-authorized
small finite-coordinate checks from the S045/S046 infrastructure. It does not
revive the S048 global five-subset completion `decide`, and introduces no
`native_decide`, unchecked postulate, hidden external oracle or opaque orbit
catalogue.

`FrozenClassification` remains unproved, so Palomar remains blocked.
