# S046 closeout — Eta17Input formalization

Date: 2026-10-06.
Status: **COMPLETED D45-01; `Eta17Input` KERNEL-CHECKED; `S039PackingInput` PROMOTED AS THE SINGLE NEXT FORMAL OBLIGATION.**
Incoming `main`: `a9d8834dbae96901b42da20b743a25d67f0bce9e`.

The containing commit cannot record its own hash. The actual outgoing remote SHA/tree are verified after publication and reported in the user-facing close report.

## Bounded objective and outcome

D45-01 proves the existing closed proposition
`eta17Input : Eta17Input` in the pinned Lean project without changing the frozen theorem or positional semantics.

The proof does not assume `eta(C_3^3)=17`. It shows that a hypothetical short-free length-17 sequence has nonzero support of size at most eight: short-freeness makes the support plus the origin a cap, and S045's transparent cap theorem bounds that cap by nine points. Every support value has multiplicity at most two, so 17 positions are impossible.

This closes the second source-threshold obligation exposed by S044. D45-01 does not close `S039PackingInput`, enter S040, or prove `FrozenClassification`.

## Validation and trust boundary

The proof-head clean run recorded in `VALIDATION.md` passes `lake build`, the formal placeholder scan and `scripts/check_authority.py`. The synchronized terminal tree is required to pass the same suite before `main` is advanced.

No `native_decide`, opaque orbit catalogue, unchecked threshold, Palomar, manuscript, arXiv, E-JC or outreach action occurred. Lean checks only encoded declarations with proof terms and does not establish literature novelty or journal review.

**Active owner blockers: NONE.**

## Next frontier

S047/D46-01 is restricted to closing the existing proposition `S039PackingInput` from the already kernel-checked theorem `s039PackingInput_of_thresholds` and the now-closed proofs `threeTerm19Input` and `eta17Input`. It must not enter the S040 representative-swap/residual proof spine in the same unit.

Owner order remains Lean -> Palomar -> paper -> arXiv -> E-JC. Independent pre-submission external review/consultation remains skipped for CAND-03 by owner decision; E-JC's ordinary editorial/referee process remains planned.
