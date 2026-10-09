# S062 / D61-01 validation report

Date: 2026-10-09. Incoming main: `e908dc2d67363909ccaa4b4b68c7ae5ebfc0c2b6`. S062 unique on incoming `STATE.json`; inherited S061 manuscript/PDF is unchanged.

## Source and mathematics

- Exact target, source truth boundary, original-position permutation and both directions compared against `paper/SOURCE_AND_PROOF_CHECK.md`, S039/S040, S043, S057/S059; no theorem or Lean files changed.
- Earlier S061 source examples validator checks 8-point cap/core, U²/U³ fibres, the singleton residual, forbidden positional overlaps, four signatures, the two s=9 exchanges, 5 figures, 6 examples and references. Run afresh in hosted manuscript workflow.
- S062 scoped primary search found no exact/equivalent/stronger collision; Hui–Zhong 2026 is explicitly rank-two according to its publisher, whereas the target is rank three. No priority certification.
- S061 nine-page PDF and detailed visual inspection remain provenance for the unchanged `paper/main.pdf`. No claim of newly completed manual page-by-page visual inspection.

## Reproducible release checks

`scripts/prepare_arxiv_release.py` is the bounded new validation tool:
1. Build a deterministic `arxiv-source.tar.gz` with exactly `main.tex`, `references.bib`.
2. Re-open archive, require exactly those two paths and byte-identical contents.
3. Compile from a brand-new extracted directory with `latexmk -pdf`, BibTeX and fixed source-date metadata.
4. Assert nonempty resulting PDF, all three bibliography entries in the `.bbl`, clean TeX/BibTeX logs; preserve preview PDF and JSON SHA-256 manifest.
5. Rerun and compare the source-archive SHA-256 in hosted CI.

`paper.yml` is extended to run these checks alongside the existing finite examples, two clean whole-manuscript builds, and `scripts/check_authority.py`, and to upload the release archive, metadata, preview and manifests as a real workflow artifact.

**Hosted status at record authoring:** PENDING actual post-commit GitHub Actions observation. Do not infer PASS merely from adding the workflow. The final session response must state the actual run ID and conclusion or explicitly report incomplete CI. An immutable commit cannot record its own outgoing SHA.

## Remaining author-only checks

B-016: release licence selection, author acceptance/authorization of metadata/PDF/public arXiv posting and real arXiv account/category/endorsement status. Before E-JC submission: personal proof checking, own-word rewriting and stepwise accountability, and journal author-form attestations. These are unperformed, not fabricated as test results.
