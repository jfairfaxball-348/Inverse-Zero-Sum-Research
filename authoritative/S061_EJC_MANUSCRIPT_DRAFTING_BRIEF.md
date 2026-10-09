# S061 — Electronic Journal of Combinatorics manuscript writing

**Status:** COMPLETED in S061; historical input brief. **Single bounded unit:** D60-01, E-JC-targeted article writing. S061 delivery and validation are recorded in `sessions/S061/CLOSEOUT.md`. This brief supersedes previous S061 preparation variants.

## Authority and frozen result

Repository: https://github.com/jfairfaxball-348/Inverse-Zero-Sum-Research. Pin live `main`, reconcile the incoming checkpoint, verify S061 is unique. Read `AGENTS.md`, `authoritative/START_HERE.md`, `authoritative/STATE.json`, project charter, session protocol, current target/publication/claims/decisions/roadmap registers, all seven S060 records, S039/S040 proofs and sources, S041/S042 prior-art audits, S043 semantic correspondence, S057 theorem completion, S059 verification and the current Lean file `InverseZeroSum/Candidate3.lean`.

The precise frozen result `InverseZeroSum.Candidate3.frozenClassification : FrozenClassification` is proved in Lean 4.35 and permanently registered at **[PALOMAR-2026-10-09-000011, version 1](https://palomar-registry.org/entry.html?id=PALOMAR-2026-10-09-000011&version=1)**, with immutable source `c5f9e5e822020688c72b2a3bfacbf147a801e219` and official full mechanical workflow `37813245157`. Do not change the formalized theorem or its exact mathematical semantics.

For indexed nonzero terms of `C_3^3`, length `24`, let a *short zero-sum witness* be a nonempty subset of original positions with at most `3` terms and zero group sum. The statement to explain and prove in prose is:

> Every pair of short zero-sum witnesses has zero sum on its positional intersection **if and only if** the original multisequence, up to permutation of all 24 positions, equals `U^3` for some squarefree, short-free multisequence `U` of length 8.

Do not convert the pairwise indexed witness hypothesis to ordinary short-freeness or to a support-only finite-geometric statement.

## Writing objective and deliverables

Produce an E-JC-oriented **complete first research-paper manuscript**. Deliver a coherent standalone article, not only a proposed outline, checklist, collection of notes or proof sketch. Source files and a rendered PDF must be reproducible if the repository's tooling supports compilation; note any build limitation honestly.

1. Create organized manuscript source (e.g. `paper/main.tex`, `paper/references.bib`, build instructions and resulting `paper/main.pdf` where supported). Use ordinary article LaTeX suitable for initial E-JC PDF submission; do not pretend final accepted-version `e-jc.sty` is required or that acceptance is assured.
2. Draft an informative standalone abstract, introduction and context, definitions/notation, exact preliminary input statements with citations, complete new inverse proof, theorem conclusion, concise discussion/limitations, and complete bibliography. Write for a combinatorics referee, in precise mathematics and clear English.
3. Position the new contribution as **necessity and equality rigidity** at the established generalized Narkiewicz extremal threshold `η^N(C_3^3)=25`. **Already published:** Gao–Hui–Li–Li–Qu–Zhong (2024) supplies the threshold, `U^3` construction, and packing/deletion argument; Fan–Gao–Wang–Zhong–Zhuang (2012) supplies `η(C_3^3)=17`, Property C, length-16 short-free sum-zero and length-15 residual results. Cite correct statements/proofs and avoid claiming the direct direction, threshold or core cap-geometry as original.
4. Write the full dependency chain in comprehensible mathematical exposition: indexed atom-packing and **all** representative transversals; four signatures `(6,8,2),(7,8,1),(8,8,0),(6,9,0)`; `s=8` length-16 sum-zero representative swaps forcing eight constant 3-atoms; short-free length-15 multiplicity pattern `2^7 1` and singleton identity `u=-σ(R)`; both `s=9` exchange profiles and the contradiction from another nonconstant 2-atom; squarefree short-free core, positional permutation necessity and directly checked sufficiency. If a cited lemma or inference is unclear, resolve it from the primary source rather than hide a gap.
5. Prefer the S060-ranked narrative **inverse extremal rigidity**. Use positional/multiplicity-three rigidity as the central proof theme. The known `U ∪ {0}` nine-cap interpretation is at most a concise explanatory remark, never a substitute for the 24-position theorem.
6. Provide a compact technical `paper/SOURCE_AND_PROOF_CHECK.md` mapping each claim and external lemma to precise sources and corresponding repository proof records/Lean declarations, and document any mathematical or citation corrections. This is a normal mathematical consistency document, not a separate personal-process report.
7. Add an appropriate and accurate Palomar registration/provenance citation in the manuscript or its references only where informative; distinguish formal registration from journal publication. Make no prediction of E-JC acceptance and no claim of globally certified novelty from S042's bounded non-hit.
8. Follow E-JC's actual originality, PDF, abstract and bibliographic requirements; ensure any required AI-use disclosure is accurate and complies with the venue's current policy. Do not include private process/status reports in the article.

## Technical validation and closeout

- Validate all TeX sources and bibliography, attempt the reproducible PDF build, inspect the resulting PDF for overfull equations and reference/rendering errors, and run `python3 scripts/check_authority.py` with applicable GitHub Actions checks.
- Record genuine source gaps or proof ambiguities; do not invent intermediate theorems or silently change the frozen target.
- Update authority, publication/claims/decisions and the session ledger; commit and push; confirm exact remote main and CI status.
- Provide at most one following ready session prompt if unblocked, otherwise apply the repository's owner-blocker rule.

**No arXiv posting, E-JC filing, correspondence, reviewer outreach or other external action in S061.** The owner-approved order remains **Palomar registered → paper → arXiv preprint → E-JC submission**. This unit creates the manuscript, not a journal acceptance or submission.
