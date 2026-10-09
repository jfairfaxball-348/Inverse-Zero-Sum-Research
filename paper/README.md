# CAND-03 manuscript

**An inverse theorem for extremal generalized Narkiewicz sequences over C₃³**

John Fairfax-Ball. Complete first manuscript from S061, intended for the
Electronic Journal of Combinatorics. No arXiv or journal submission has occurred.

- [Compiled paper](main.pdf): complete proof, six worked examples and five vector figures.
- [Editable LaTeX](main.tex) and [bibliography](references.bib).
- [Source and proof consistency](SOURCE_AND_PROOF_CHECK.md).
- [Build and validation record](../sessions/S061/VALIDATION.md).

## Rebuild

From the repository root:

```sh
bash paper/build.sh
python3 scripts/check_authority.py
```

Dependencies: Python 3, pdfLaTeX, BibTeX, latexmk, Latin Modern fonts, TikZ,
AMS packages, microtype, caption, placeins, needspace and hyperref. On
Debian/Ubuntu these are provided by `latexmk texlive-latex-base
texlive-latex-recommended texlive-latex-extra texlive-pictures
texlive-fonts-recommended lmodern`.

The build fixes `SOURCE_DATE_EPOCH`, omits variable PDF metadata and uses no
external assets or shell escape. Figures are editable TikZ in `main.tex`.
Auxiliary files go in ignored `paper/build/`; the validated PDF is copied to
`paper/main.pdf`. Two clean builds must produce the same SHA-256 **with the
same TeX installation**. Cross-version bitwise equivalence is not assumed.
The GitHub Manuscript validation workflow installs the documented toolchain,
builds twice, compares hashes and uploads the PDF, sources and logs.

`python3 scripts/check_paper.py` validates all explicit finite examples,
the displayed arithmetic cases, citation keys and internal references.
It is not a search through extremal sequences and does not replace the proof.
`build.sh` additionally rejects overfull boxes and unresolved references.

The ordinary `article` class is for an initial E-JC PDF. The journal's final
accepted-version style is a later typesetting step, not a claim of acceptance.
The inherited repository licence remains Apache-2.0.
