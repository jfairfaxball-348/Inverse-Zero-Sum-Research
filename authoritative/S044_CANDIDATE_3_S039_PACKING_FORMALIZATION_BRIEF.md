# S044 CAND-03 S039 packing formalization brief

Status: READY.

S043/D42-01 is PARTIAL. It created and clean-built the pinned Lean project,
encoded the exact positional CAND-03 theorem, and isolated the first formal
proof-spine blocker as `S039PackingInput`.

## D43-01

Run exactly one Lean formalization unit. Prove `S039PackingInput` in the
existing pinned project, faithfully formalizing the checked S039/2024
packed-short-minimal-zero-sum argument.

The output must construct, for every length-24 target-avoiding positional
sequence, an `S039PackingCertificate` with one of exactly

`(6,8,2), (7,8,1), (8,8,0), (6,9,0)`

and must retain the universal quantifier that **every** selection of one
representative position from each packed block leaves a short-free residual on
the surviving positions.

Use committed S039--S043 authority and the checked proof of Gao--Hui--Li--Li--
Qu--Zhong 2024 Lemma 3.3(3) as the source architecture. Do not reopen S038,
change the target semantics, jump ahead to the S040 representative-swap
elimination, import the desired result as an assumption, or replace the proof
with an opaque orbit catalogue.

No `sorry`, `admit`, unchecked postulate or hidden external oracle is
allowed. Run `lake build`, focused checks, the forbidden-placeholder search
and `scripts/check_authority.py`.

If D43-01 succeeds, promote only the next Lean proof-spine unit; Palomar remains
blocked until `FrozenClassification` itself has a proof term and the complete
pinned build passes. If it does not succeed, preserve compiling progress and
close PARTIAL with the single earliest exact blocker.

No paper, arXiv, E-JC submission or outreach is authorized.
