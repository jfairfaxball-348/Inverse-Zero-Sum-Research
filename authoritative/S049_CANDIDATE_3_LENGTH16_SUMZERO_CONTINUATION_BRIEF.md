# S049 CAND-03 length-16 sum-zero formalization continuation brief

Status: READY.

S048/D47-01 closed PARTIAL. The pinned Lean source now preserves a clean support reduction for the exact existing interface

`Length16SumZeroInput := ∀ R : PosSeq 16, ShortFree R → totalSum R = 0`.

In particular it proves that a short-free tuple support plus zero is a cap, the nonzero support has cardinality at most eight, and every support value occurs at most twice.

## D48-01

Run exactly one Lean formalization unit. Finish `Length16SumZeroInput` faithfully from the preserved S048 reduction.

First use the length-16 cardinality to force exactly eight support values, each occurring twice. The single earliest nontrivial blocker is then the maximal-support sum invariant:

`A.card = 8 -> 0 ∉ A -> IsCapT (insert 0 A) -> (∑ x ∈ A, x) = 0`.

Prove that invariant, or an equivalent source-faithful statement, by additional structure or sharply smaller transparent finite certificates. Do **not** revive the S048 global normalized five-subset completion `decide` whose clean builds exceeded the hosted runner window. Do not replace the argument with an opaque orbit catalogue, `native_decide`, unchecked postulate or hidden external oracle.

If `Length16SumZeroInput` closes, stop and promote only the next exact S040 proof-spine obligation (the representative-swap step that consumes the length-16 input). Do not also prove `Length15NonzeroInput`, `FrozenClassification`, register on Palomar or enter paper/arXiv/E-JC work.

If D48-01 still does not close, preserve compiling progress and close PARTIAL with the single earliest exact blocker.

Run `lake build`, warranted focused checks, the formal-source placeholder search and `scripts/check_authority.py`. Palomar remains blocked until `FrozenClassification` has a proof term and the complete pinned check suite passes. Owner order remains Lean -> Palomar -> paper -> arXiv -> E-JC.
