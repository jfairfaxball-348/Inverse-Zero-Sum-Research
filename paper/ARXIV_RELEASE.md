# S062 arXiv release-package worksheet — NOT SUBMITTED

Date: 2026-10-09. Unit D61-01. The paper remains unpublished on arXiv and unsubmitted to the Electronic Journal of Combinatorics (E-JC). The exact positional theorem and registered Lean source are unchanged.

## Exact candidate metadata (author must inspect and enter manually)

- **Title:** An inverse theorem for extremal generalized Narkiewicz sequences over $C_3^3$
- **Author:** John Fairfax-Ball. Affiliation, contact email and account profile are **NOT ASSUMED**.
- **Abstract:** See `paper/arxiv-metadata.json`, extracted verbatim (line-wrapped whitespace only) from `paper/main.tex`.
- **Primary arXiv category recommendation:** `math.CO`; optional cross-list `math.NT` where supported and substantively warranted.
- **Comments:** 9 pages, 5 figures, 6 worked examples. Formal proof: Palomar Registry PALOMAR-2026-10-09-000011 v1.
- **MSC (2020):** 11B75; 11B30.
- **Journal reference and DOI:** leave blank until one actually exists. The Palomar registration is **not** a journal DOI or journal acceptance.
- **Paper copyright licence:** **NOT SELECTED**. Recommended for the author to consider: Creative Commons Attribution 4.0 (CC BY 4.0) if the author owns the needed rights and wants broad redistribution; alternative: arXiv's nonexclusive perpetual distribution licence (with no CC reuse grant). This is a durable author-only choice and is not set by the GitHub repository's Apache-2.0 licence.
- **Endorsement:** arXiv account, category eligibility, affiliation and endorsement status **unknown**; the owner must inspect their actual arXiv account and follow official instructions if endorsement is required.
- **AI disclosure:** The PDF contains a substantive ChatGPT-assistance statement; do not remove it. Verify any current arXiv requirements when actually depositing.

## Portable source package

The existing `paper/main.tex` and `paper/references.bib` are the entire LaTeX source. All five TikZ figures are embedded; there are no external image assets or shell-escape dependencies.

On a host with `latexmk`, pdfLaTeX, BibTeX, TikZ and the packages listed in `paper/README.md`:

```sh
python3 scripts/check_paper.py
bash paper/build.sh
python3 scripts/prepare_arxiv_release.py
python3 scripts/check_authority.py
```

The preparation script deterministically creates `paper/release/arxiv-source.tar.gz` with **only** `main.tex` and `references.bib`, unpacks it into a new empty temporary directory, checks each extracted source byte-for-byte, runs `latexmk -pdf` there, verifies bibliography and TeX logs, and saves `paper/release/preview.pdf` and `paper/release/manifest.json` (digests). Generated release files can be downloaded from the successful S062 **Manuscript validation** GitHub Actions artifact. Upload the archive's **source**, not the locally generated PDF in place of TeX, if arXiv requests source.

The workflow independently recompiles `paper/main.pdf` twice with a fixed epoch and checks the package archive is reproducible; arXiv may use a different TeX stack. Its eventual build and moderation cannot be certified by local or GitHub checks.

## Primary-source and policy boundaries

- Gao–Hui–Li–Li–Qu–Zhong (2024), *Acta Arithmetica* 212(2), 133–172, DOI [10.4064/aa230118-1-10](https://doi.org/10.4064/aa230118-1-10): known `eta^N(C_3^3)=25`, triple construction and universal representative deletion.
- Fan–Gao–Wang–Zhong–Zhuang (2012), *E-JC* 19(3), P31, DOI [10.37236/2602](https://doi.org/10.37236/2602): short-free residual facts; **proof** of Lemma 27(3), Lemmas 28/29. These are not new contributions.
- Hui–Zhong (2026), *J. Combin. Theory Ser. A* 224, 106238, DOI [10.1016/j.jcta.2026.106238](https://doi.org/10.1016/j.jcta.2026.106238), posted online before this session: official publisher metadata and abstract explicitly address **rank-two groups**; not an exact or immediately stronger classification for rank-three `C_3^3` on its stated scope. Full publisher proof not inspected; no false global novelty inference.
- Current scoped semantic/source searches located **no documented PA-EXACT, PA-EQUIV or PA-STRONGER** result. This is a finite search non-hit, **not** proof of originality, historical openness or significance. See [source-policy refresh](../sessions/S062/SOURCE_POLICY_REFRESH.md).
- [arXiv submission](https://info.arxiv.org/help/submit/index.html), [TeX source preparation](https://info.arxiv.org/help/submit_tex.html), [endorsement](https://info.arxiv.org/help/endorsement.html), [licensing](https://info.arxiv.org/help/license/index.html), [categories](https://arxiv.org/category_taxonomy): consult current live instructions before actually releasing.
- [E-JC submission checklist](https://www.combinatorics.org/ojs/index.php/eljc/about/submissions) requires an initial manuscript **PDF**, not the arXiv source archive, and insists authors check, rewrite and personally vouch for AI-assisted proofs. Initial preprint posting is not explicitly prohibited in the inspected checklist; nevertheless there is no unconditional publisher guarantee of preprint eligibility, and the author must avoid concurrent journal submissions. The three-calendar-month E-JC submission-history condition also requires an author check.

## Live owner-dependent gate — B-016

Before proceeding to any arXiv account/upload session, the owner must:
1. **Select a concrete arXiv paper licence** after considering rights and compatibility (e.g. CC BY 4.0 or the nonexclusive arXiv licence).
2. **Inspect the candidate title, abstract, author metadata, source archive and PDF** and authorize the **public preprint release** (not implied by this preparation request).
3. **Check account/category eligibility and any arXiv endorsement requirement** personally; report a concrete endorsement blocker if prompted.

No endorsement request, login, upload, contact or E-JC filing was made. Until this gate is explicitly resolved, next-session prompt is withheld. Separate E-JC author obligation to personally verify and rewrite AI-derived proof steps remains mandatory **before journal submission**, not falsely attested by the present package.
