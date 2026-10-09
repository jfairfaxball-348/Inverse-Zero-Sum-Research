# S062 — current primary source and official policy refresh

Date: 2026-10-09. Scope: exactly one targeted D61-01 refresh, no exhaustive literature claim.

## Target and literature test

The unchanged result covers **all** 24 original positions with nonzero values in `C_3^3`; for **every pair** of short (length 1–3) zero-sum position subsets, the intersection sum is zero **if and only if** the 24 positions are a permutation of `U^3` with squarefree short-free eight-value `U`. A source is PA-EXACT only if it classifies that full family; PA-EQUIV if a proved equivalent formulation does; PA-STRONGER if its stated theorem implies the complete positional inverse classification.

The 2024 Gao et al. official [publisher record](https://www.impan.pl/en/publishing-house/journals-and-series/acta-arithmetica/all/212/2/115416/on-generalized-narkiewicz-constants-of-finite-abelian-groups) and [full author manuscript](https://imsc.uni-graz.at/zhong/paper/generalized-narkiewicz.pdf) remain **PA-INGREDIENT** (known threshold, construction, deletion). The 2012 Fan et al. [journal article](https://www.combinatorics.org/ojs/index.php/eljc/article/view/v19i3P31) and [full PDF](https://www.combinatorics.org/ojs/index.php/eljc/article/download/v19i3P31/pdf) are **PA-INGREDIENT**, including the proof of Lemma 27(3) and Lemmas 28/29. Their relevant full proofs were inspected in S061, not independently repeated here.

Targeted current searches covered the exact `C_3^3` length-24 `U^3` iff, `innerly non-zero-sum-joint`, rank-three generalized Narkiewicz inverse, and author/latest inverse works. A close lead is Wanzhen Hui and Qinghai Zhong, [*On the inverse problem of the Narkiewicz-sense η-constant for finite abelian groups of rank 2*](https://www.sciencedirect.com/science/article/pii/S0097316526000816), *JCTA* 224 (2026), article 106238, DOI 10.1016/j.jcta.2026.106238. Its **primary publisher title/abstract** explicitly classify finite abelian groups of **rank 2**, whereas `C_3^3` has rank 3: **PA-INGREDIENT / scope-distinct**, not a rank-three exact/equivalent/stronger lead on the visible main claim. The full restricted publisher proof was not inspected. Do not infer a theorem about rank three from the paper's general introductory definitions.

**Finding:** no exact/equivalent/stronger-implying prior theorem was located within this targeted refresh. The result is a documented **non-hit only**, not evidence that the result was previously open or globally novel. The full prior-art scope and remaining risk are in [S042](../S042/DEEP_PRIOR_ART_AUDIT.md) and [S060](../S060/SOURCE_AND_NOVELTY_BOUNDARY.md). Publication may be affected by any later primary collision; stop if one emerges.

## Manuscript integrity and attribution

Inspected `paper/main.tex`, `references.bib`, `SOURCE_AND_PROOF_CHECK.md`, S039/S040 direct proof, S043 semantic correspondence and S057/S059 formal closure. The main theorem's arbitrary `P`, all-pairs positional quantifier, full permutation bijection and iff are maintained. Four signatures, both length-15 exchange cases and all examples/figures are present, without apparent mathematical or bibliographic release defect. **No speculative manuscript rewrite performed.** The core necessity/equality application remains the contribution claimed relative to inspected primary works. This is a proof-interface review; journal human-author proof certification has **not** occurred.

## Official release-policy refresh

- [arXiv submission instructions](https://info.arxiv.org/help/submit/index.html) and [TeX processing](https://info.arxiv.org/help/submit_tex.html): LaTeX-based works should provide complete compilable TeX source, not upload a precompiled PDF in place of source; root `main.tex`, `references.bib`, internal TikZ illustrations and a clean build are appropriate. Do not include auxiliary build products in upload archive.
- [arXiv categories](https://arxiv.org/category_taxonomy): primary `math.CO` fits the combinatorial zero-sum inverse theorem; secondary `math.NT` is optional, neither accepted in advance.
- [arXiv licence options](https://info.arxiv.org/help/license/index.html): choice at posting is durable; paper licence **unknown and unselected** despite repository Apache-2.0.
- [arXiv endorsement](https://info.arxiv.org/help/endorsement.html): first-time and new-category authors may require endorsement, contingent on the actual account; none checked or requested.
- [E-JC initial PDF/AI policy and submission checklist](https://www.combinatorics.org/ojs/index.php/eljc/about/submissions), [journal policy](https://www.combinatorics.org/ojs/index.php/eljc/about): E-JC is compatible in principle with substantive AI assistance **only** if the human author personally checks and rewrites AI-found proofs and vouches for them. No human signoff here. The inspected checklist excludes prior publication and parallel journal consideration, but contains **no explicit blanket statement** settling arXiv-preprint status; describe compatibility as provisional, not guaranteed. E-JC also requires author consent and checks no author submitted another E-JC paper in the previous three calendar months.

This is source/policy preparation only. No account/portal action, private correspondence, external submission, arXiv preprint or E-JC filing.
