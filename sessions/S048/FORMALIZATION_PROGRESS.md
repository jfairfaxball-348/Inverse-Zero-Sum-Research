# S048 formalization progress

Date: 2026-10-07.
Unit: D47-01.
Status: **PARTIAL — compiling support reduction preserved; `Length16SumZeroInput` remains unproved.**

## Completed formal work

`InverseZeroSum/Candidate3.lean` now retains kernel-checked reusable lemmas for the exact length-16 source interface:

- `tupleValueT` and `tupleSupportT`, connecting positional sequences to the finite tuple model;
- `zero_not_mem_tupleSupportT`;
- `tupleSupportT_isCap`: three distinct support values cannot sum to zero under short-freeness;
- `tupleSupportT_no_pair`: two support values cannot sum to zero;
- `insert_zero_tupleSupportT_isCap`: adjoining the origin preserves the cap condition;
- `tupleFiberT_card_le_two`: every support value occurs at most twice;
- `tupleSupportT_card_le_eight`: every short-free nonzero support has at most eight values.

For a length-16 short-free sequence, these facts force the expected eight-value/two-copy regime after routine cardinality bookkeeping. The remaining nontrivial step is the support-sum invariant.

## Exact blocker

The single earliest exact blocker is to prove, transparently and within the pinned reproducible build boundary, the equivalent maximal-support statement

`A.card = 8 -> 0 ∉ A -> IsCapT (insert 0 A) -> (∑ x ∈ A, x) = 0`.

Once that invariant is available, `Length16SumZeroInput` follows by grouping the 16 positional terms into the eight support fibers, each of multiplicity two.

## Explored but not retained

S048 explored an explicit basis normalization and a finite completion certificate. The normalized seed leaves 17 candidate points and five further choices, so the trust boundary was finite and visible rather than an opaque orbit catalogue. Nevertheless ordinary kernel evaluation of the global completion check exceeded the clean hosted runner window; representative runs were terminated with exit 143 while `lake build` was still evaluating the theorem.

Because a reproducible clean build is mandatory, the expensive certificate and downstream unfinished proof were removed from the live Lean checkpoint. The git history preserves the experiment; the outgoing source preserves only the compiling structural progress.

`FrozenClassification` remains unproved. Palomar remains blocked.
