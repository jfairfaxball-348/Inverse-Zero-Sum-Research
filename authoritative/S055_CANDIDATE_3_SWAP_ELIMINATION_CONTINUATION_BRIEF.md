# S055 CAND-03 s=9 one-block transition and contradiction continuation

Status: READY.

S054/D53-01 closed PARTIAL. The pinned Lean source proves `shortFreeOn_card_fifteen_singleton_identity` on arbitrary 15-position survivors, `s9_certificate_survivor_singleton_profile` for all `s=9` certificate transversals, plus counted/set/sum one-representative exchange lemmas and distinct values in every packed two-block. The proposition `S9PackingEliminationInput` is still unproved, as is `FrozenClassification`.

## D54-01 — exactly one bounded formal unit

Starting from the existing compiling source, prove the certificate-level **one-block swap** comparison for any valid `s=9` transversal, showing the two affected counts obey the exact one-step exchange and the hypotheses of the already checked `s9_two_fibre_count_transitions`. Use the transported unique-singleton equations to show either (0,1)->(1,0) forces the two selected values equal (contradiction), or (1,2)->(2,1) forces the fixed complement of eight selected representatives to have a fixed sum (zero after identifying the packed-block total). Vary a representative of a second nonconstant short-zero 2-block to contradict this. Stop when `S9PackingEliminationInput` has a kernel-checked proof term.

Do not prove `FrozenClassification` in D54-01, and do not perform Palomar, manuscript, arXiv, E-JC, new literature audit or outreach. On success promote ONLY final composition into `FrozenClassification`. On failure keep compiling work and close PARTIAL with one earliest exact blocker. No `sorry`, `admit`, unchecked axioms/constants, `native_decide`, hidden oracle or opaque catalogue.

Run the full pinned `lake build`, forbidden-placeholder scan, `scripts/check_authority.py` and any warranted focused checks. Synchronize authority, commit safely to main, verify outgoing SHA/tree. No active owner blocker. Owner order remains Lean -> Palomar -> paper -> arXiv -> E-JC; pre-submission external consultation skipped for CAND-03, ordinary E-JC refereeing planned, Xue Li CAND-02 message reply pending.
