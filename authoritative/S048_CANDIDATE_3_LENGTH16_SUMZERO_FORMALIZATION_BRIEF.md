# S048 CAND-03 length-16 sum-zero formalization brief

Status: READY.

S047/D46-01 is completed. The pinned Lean project now proves

`s039PackingInput : S039PackingInput`.

The next exact source interface on the recorded S040 proof spine is

`Length16SumZeroInput := ∀ R : PosSeq 16, ShortFree R → totalSum R = 0`.

This corresponds to the length-16 short-free residual input already source-checked in S039/S040.

## D47-01

Run exactly one Lean formalization unit. Prove the existing proposition `Length16SumZeroInput` faithfully in the pinned Lean 4.19.0 + mathlib project. Preserve the frozen theorem and positional semantics.

Do not formalize the S040 representative-swap elimination in the same unit. Do not also close `Length15NonzeroInput`, prove `FrozenClassification`, recheck/register on Palomar, or begin paper/arXiv/E-JC/outreach work.

A completed unit may contain no `sorry`, `admit`, unchecked postulate, `native_decide` oracle or hidden external oracle. Transparent bounded finite checks are permitted only with a clear trust boundary; do not replace the proof by an opaque orbit catalogue.

Run `lake build`, warranted focused checks, the formal-source placeholder search and `scripts/check_authority.py`.

If D47-01 succeeds, promote only the next exact Lean proof-spine obligation. If it does not succeed, preserve compiling progress and close PARTIAL with the single earliest exact blocker.

Palomar remains blocked until `FrozenClassification` itself has a proof term and the complete pinned check suite passes. Owner order remains Lean -> Palomar -> paper -> arXiv -> E-JC.
