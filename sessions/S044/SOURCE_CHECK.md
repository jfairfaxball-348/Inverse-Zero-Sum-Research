# S044 source-interface check

Date: 2026-10-06.

S044 introduced no new literature claim. It formalized the already-checked
S039 source interfaces.

The S039 source record attributes the needed exponent-three thresholds to the
checked 2024 direct-proof preliminaries: Property D for `C_3^r`, together
with `eta(C_3^3)=17`, yields `s(C_3^3)=19`; the same source records
`eta(C_3^3)=17`. The S039 representative-deletion implications are the
ones extracted from the proof of Gao--Hui--Li--Li--Qu--Zhong 2024 Lemma
3.3(3).

S044 checked the formal dependency boundary rather than treating those
published facts as axioms. The pinned repository/mathlib source contains no
proved declaration discharging the first exact proposition
`ThreeTerm19Input`. Consequently D43-01 stops PARTIAL there rather than
silently importing the published statement.

This source-interface result is not a novelty, openness or significance claim.
