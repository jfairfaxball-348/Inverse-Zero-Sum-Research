# S050 formalization progress

Date: 2026-10-07.
Unit: D49-01.
Status: COMPLETED.

## Closed interface

The pinned Lean source now proves

`s8RepresentativeSwapInput : S8RepresentativeSwapInput`.

The bounded output is certificate-level:

- assume an existing `S039PackingCertificate S` with `c.s = 8`;
- conclude `c.l = 8` and `c.r = 0`;
- conclude that every two selectable positions in every packed block carry the same value.

Because the certificate itself retains
`every_representative_residual_shortFree` universally over all representative
functions, this is the exact bounded `(8,8,0)` structural normal form needed
downstream. It does not prematurely formalize the global position permutation
or the next `s=9` branch.

## Proof structure

1. `shortFreeOn_card_sixteen_sum_zero` reindexes any 16-position survivor set
   by `Finset.orderEmbOfCardLe`, transports short zero sums through the
   embedding, applies the already closed `Length16SumZeroInput`, and
   transports the total sum back to the original positions.
2. `posSum_representativeSet_eq_sum` uses pairwise disjointness of packed
   blocks to prove injectivity of every valid representative function and
   identifies the deleted-position sum with the sum over block indices.
3. `representative_sum_eq_total_of_residual_zero` splits the full length-24
   sum into representatives plus residual.
4. `s8_packed_blocks_constant` fixes arbitrary `x,y` in one packed block,
   chooses representatives elsewhere, and compares the two one-block updates.
   Both residuals have cardinality 16 and are short-free by the certificate's
   universal quantifier; both therefore sum to zero. The representative sums
   agree and cancellation gives `S x = S y`.
5. `constant_shortZero_block_ne_two` shows a constant nonzero short-zero block
   cannot have cardinality two.
6. `s8RepresentativeSwapInput` eliminates signatures `(6,8,2)` and
   `(7,8,1)`; the `s=9` signature contradicts the branch assumption; hence
   only `(8,8,0)` remains.

## Scope boundary

No proof of `Length15NonzeroInput`, no `s=9` representative/singleton
argument, and no proof term for `FrozenClassification` is included.
Palomar and publication-stage work were not entered.
