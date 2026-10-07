# S051 closeout — Length15NonzeroInput partial formalization

Date: 2026-10-07.
Status: **PARTIAL D50-01; EXACT `2^7 1` LENGTH-15 STRUCTURE KERNEL-CHECKED; FINAL POSITIONAL NONZERO-SUM BRIDGE REMAINS.**
Incoming `main`: `bf9270fd197d0891bea35fd6e09ca55d9e6e88ca`.

The containing commit cannot record its own hash. The actual outgoing remote
SHA/tree are verified after publication and reported in the user-facing close
report.

D50-01 attempted only `Length15NonzeroInput`. The outgoing source proves the
exact source-faithful length-15 support profile: eight support values, one
singleton fibre and seven double fibres, plus generic fibrewise sum algebra.
It does **not** prove `Length15NonzeroInput`.

The single earliest exact blocker is a clean-buildable bridge from that
`2^7 1` profile and the existing eight-support sum-zero theorem to the
positional total being the negative of the nonzero singleton. Direct
specializations repeatedly timed out during `whnf` and were removed rather
than weakening the reproducible-build standard.

The retained proof-head passes `lake build`, the placeholder scan and
`scripts/check_authority.py`. No `s=9` elimination,
`FrozenClassification`, Palomar, manuscript, arXiv, E-JC or outreach work
occurred.

**Active owner blockers: NONE.**

S052/D51-01 continues only `Length15NonzeroInput`. It must stop as soon as
`length15NonzeroInput : Length15NonzeroInput` is kernel-checked and must not
enter the `s=9` branch in the same unit.

Owner order remains Lean -> Palomar -> paper -> arXiv -> E-JC. Independent
pre-submission external review remains skipped for CAND-03; E-JC's ordinary
editorial/referee process remains planned.
