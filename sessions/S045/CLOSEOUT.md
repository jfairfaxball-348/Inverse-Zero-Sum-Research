# S045 closeout — ThreeTerm19Input formalization

Date: 2026-10-06.
Status: **COMPLETED D44-01; `ThreeTerm19Input` KERNEL-CHECKED; `Eta17Input` PROMOTED AS THE SINGLE NEXT FORMAL BLOCKER.**
Incoming `main`: `446ac0d1830691cd0ea27d8fd39c48a35bb789fa`.

The containing commit cannot record its own hash. The actual outgoing remote
SHA/tree are verified after publication and reported in the user-facing close
report.

## Bounded objective and outcome

D44-01 proves the existing closed proposition
`threeTerm19Input : ThreeTerm19Input` in the pinned Lean project without
changing the frozen theorem or positional semantics.

The proof does not assume Property D or `s(C_3^3)=19`. It gives a transparent
finite-geometric proof of the exact source interface: explicit affine-plane
lemmas imply every cap in `F_3^3` has at most nine points; absence of a
three-position zero sum bounds every value multiplicity by two; length 19 would
therefore force at least ten support values, a contradiction.

This closes the first threshold obligation exposed by S044. It does not prove
`Eta17Input`, resume the packing constructor, enter the S040 elimination, or
prove `FrozenClassification`.

## Validation and trust boundary

The proof-head staging run recorded in `VALIDATION.md` passes `lake build`,
the formal placeholder scan and `scripts/check_authority.py`. The synchronized
terminal tree must pass the same suite before `main` is advanced.

No `native_decide`, opaque orbit catalogue, unchecked threshold, Palomar,
manuscript, arXiv, E-JC or outreach action occurred. Lean checks only the
encoded declarations with proof terms and does not establish literature
novelty or journal review.

**Active owner blockers: NONE.**

## Next frontier

S046/D45-01 is restricted to proving `Eta17Input`, the ordinary
`eta(C_3^3)=17` positional source interface already recorded in the checked
S039/S040 literature authority. It must not also close `S039PackingInput` or
advance to S040/Palomar in the same unit.

Owner order remains Lean -> Palomar -> paper -> arXiv -> E-JC. Independent
pre-submission external review/consultation remains skipped for CAND-03 by
owner decision; E-JC's ordinary editorial/referee process remains planned.
