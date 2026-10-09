# S062 closeout — arXiv source package prepared, owner release gate

Date: 2026-10-09. Unit D61-01. **Status: COMPLETED PREPARATION / NEXT STAGE OWNER BLOCKED.**

## Authority and scope

Incoming live `main`: `e908dc2d67363909ccaa4b4b68c7ae5ebfc0c2b6`, consistent with S061 outgoing checkpoint. S062 was absent from the committed session ledger/checkpoints and is unique; historical S051 draft PR #12 does not alter current `main`. Committed proof and nine-page PDF have not been changed. The exact 24-position iff, `S=U^3` with squarefree short-free 8-core and full position permutation, and Palomar `PALOMAR-2026-10-09-000011` v1 on `c5f9e5e822020688c72b2a3bfacbf147a801e219` remain unchanged.

## D61-01 deliverables

- One targeted current primary-source audit and arXiv/E-JC policy refresh: [SOURCE_POLICY_REFRESH.md](SOURCE_POLICY_REFRESH.md).
- Exact manuscript-synchronized [arXiv metadata](../../paper/arxiv-metadata.json), complete [owner release worksheet](../../paper/ARXIV_RELEASE.md), and a new reproducible [pack-and-clean-build script](../../scripts/prepare_arxiv_release.py).
- Extended [Manuscript validation workflow](../../.github/workflows/paper.yml): uploads actual source archive, clean-unpack PDF, JSON SHA-256 manifest and metadata, with source checksum reproducibility, initial PDF build checks, examples, logs and authority consistency.
- The manuscript `paper/main.tex`, `paper/references.bib`, `paper/main.pdf`, registered Lean source and theorem are **unchanged**. No justified textual correction was identified; credit to 2024 Gao et al. and 2012 Fan et al. proof of Lemma 27(3)/Lemmas 28/29 is preserved.
- Exact policy/collision observations classified; no priority, acceptance, account status or E-JC preprint permission invented.

## Verification

[VALIDATION.md](VALIDATION.md) specifies code checks, source integrity, the clean unpacked build and the post-push CI observation boundary. The containing commit cannot assert its own outgoing SHA; actual remote head and GitHub Actions statuses must be independently checked and reported in the final response.

## Owner block B-016 — active

This request authorizes **preparation only**, not a public arXiv release. The author has not chosen the paper's arXiv licence, approved the final manuscript/metadata/source for public preprint posting, or provided actual arXiv account/category/endorsement status. All are author-controlled; repository Apache-2.0 does not select the paper licence. E-JC's separate human-author AI-proof rewrite, checking and attestation also remain **unperformed** before eventual journal submission.

**NEXT-SESSION PROMPT: WITHHELD. Required owner action:** inspect `paper/ARXIV_RELEASE.md` and downloaded release artifact, choose **CC BY 4.0 or arXiv's nonexclusive distribution licence (or another official permissible option)**, confirm intended author metadata and approve/delay the public preprint release, and check the actual arXiv account for endorsement/eligibility. Once the concrete release decision is provided, the blocker may be resolved in a separately authorized session. No S063 work is performed here.

No arXiv login, upload, journal filing, external contact, additional Lean run or Palomar resubmission was made. Preserve **Palomar → paper → arXiv → E-JC**.
