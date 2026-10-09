# S061 validation

Date: 2026-10-09. Full paper-writing unit D60-01.

## Mathematics and sources

The full argument was checked against S039/S040/S041 and the current Lean
interfaces. All four signatures, every representative choice, both exchange
profiles, the second-block contradiction, full position bijection and direct
sufficiency are present. No altered quantifier or unproved new theorem was
introduced. Source-to-proof details and the corrected Lemma 27(3) attribution
are in [the consistency record](../../paper/SOURCE_AND_PROOF_CHECK.md).

The primary 2024 author PDF and 2012 official PDF were inspected in full at
the needed statements/proofs. Publisher metadata matches the bibliography.
Palomar's public data confirms registration v1 on the immutable source.

## Local checks

- `python3 scripts/check_paper.py`: PASS. Checks the explicit eight-point core,
  all short positional witnesses in its square, cube and illustrated
  extensions, the singleton residual and sum, all four packing budgets, the
  two possible count exchanges, citation keys and labels. This validates
  examples only, not a computational classification.
- `bash paper/build.sh`: PASS, pdfLaTeX/BibTeX/latexmk, no unresolved references,
  duplicate labels, bibliography errors or overfull boxes in the final log.
- Two clean builds with the same installed TeX stack are compared by SHA-256.
  Reproducibility uses a fixed epoch, no variable PDF metadata, embedded vector
  figures and no external image assets or shell escape. Cross-toolchain
  byte identity is not promised.
- Final PDF pages rendered and inspected, with full-size checks of the
  figures, equations, complete main theorem, references and page transitions.
- `python3 scripts/check_authority.py`: required on the synchronized closeout.
- `python3 scripts/check-lean-sources.py`: source-layout validation; proof
  files, Challenge, Solution, comparator and pinned toolchain are unchanged.
- `git diff --check`: required before the outgoing checkpoint.

Local toolchain: pdfTeX 1.40.25 (TeX Live 2023/Debian), latexmk 4.83,
Python 3.12.14. Exact source/PDF digests and the successful local outcomes
are recorded in `BUILD_MANIFEST.json`.

## Hosted checks and outgoing checkpoint

The outgoing main commit must be independently observed before final closeout.
Its actual GitHub Actions outcomes are verified after pushing; a commit cannot
include its own hash or an observation made after its creation. The final
user-facing close report supplies the exact outgoing SHA and run URLs.

- Existing **Lean formalization** workflow: pinned `lake build`, forbidden
  placeholders/native_decide scan, authority checker. S061 adds an explicit
  `#print axioms` audit for the frozen theorem, accepting only the standard
  Lean axioms `propext`, `Classical.choice`, `Quot.sound`.
- New **Manuscript validation** workflow: exact examples, PDF compilation,
  clean log gate, two clean build hash comparison, authority consistency and
  uploaded PDF/source/log artifact.
- No new Palomar intake or reusable provider verification is needed: its
  immutable proof source has not changed and registration is complete.

No local Lean build is represented as run. Hosted outcomes must be observed,
not inferred from the older Palomar pass or the local paper build.
