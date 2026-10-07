# S048 closeout — length-16 sum-zero formalization

Date: 2026-10-07.
Status: **PARTIAL D47-01; COMPILING SUPPORT REDUCTION PRESERVED; `Length16SumZeroInput` REMAINS THE SINGLE EARLIEST FORMAL OBLIGATION.**
Incoming `main`: `7b1a1a8b252d6dd97a836002a99e2af80c58dbc4`.

The containing commit cannot record its own hash. The actual outgoing remote SHA/tree are verified after publication and reported in the user-facing close report.

## Bounded objective and outcome

S048 attempted only the existing proposition `Length16SumZeroInput`. It did not enter the S040 representative-swap elimination, `Length15NonzeroInput`, `FrozenClassification`, Palomar or publication stages.

The unit did not close the proposition. It does preserve a clean reusable reduction in Lean: short-free tuple support together with zero is a cap, support cardinality is at most eight, and each support value has multiplicity at most two.

The single earliest exact blocker is the maximal-support sum invariant for an eight-point nonzero support whose union with zero is a nine-point cap. A transparent normalized-completion proof was explored, but ordinary kernel evaluation exceeded the hosted clean-run window and was terminated with exit 143. That expensive theorem was removed from the outgoing source rather than weakening the validation standard.

## Scope and trust compliance

No unchecked proof assumption, hidden oracle, `native_decide` proof, opaque orbit catalogue, Palomar action, manuscript, arXiv posting, E-JC submission or reviewer/author outreach occurred. The frozen theorem and positional semantics are unchanged.

**Active owner blockers: NONE.**

## Next frontier

S049/D48-01 is restricted to the same exact source interface, `Length16SumZeroInput`, starting from the preserved support reduction. It should prove the maximal nine-cap sum invariant structurally or with substantially smaller transparent finite certificates, then close the existing proposition. It must still stop before representative-swap elimination, `Length15NonzeroInput` and `FrozenClassification`.

Owner order remains Lean -> Palomar -> paper -> arXiv -> E-JC. Independent pre-submission external review/consultation remains skipped for CAND-03; E-JC's ordinary editorial/referee process remains planned.
