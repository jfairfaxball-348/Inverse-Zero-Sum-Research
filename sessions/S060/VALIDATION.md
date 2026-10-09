# S060 validation and evidence separation

Date 2026-10-09. D59-01 is **documentation/source/policy discovery only**; no Lean/mathlib/toolchain/theorem or comparator source was modified.

## Independent source inspections actually performed
- E-JC official About/policy: https://www.combinatorics.org/ojs/index.php/eljc/about/index (focus, refereeing, editorial process, AI rules); official Submission Checklist and Author Guidelines https://www.combinatorics.org/ojs/index.php/eljc/about/submissions (author personally rewrites/checks AI proof, PDF submission, accepted-stage e-jc.sty, three-calendar-month rule).
- 2024 Gao et al. author primary PDF https://imsc.uni-graz.at/zhong/paper/generalized-narkiewicz.pdf, full relevant excerpt of Lemma 3.3 proof, including source-defined direct construction and arbitrary representative-deletion machinery.
- 2012 Fan et al. official PDF https://www.combinatorics.org/ojs/index.php/eljc/article/download/v19i3P31/pdf, p.15 Lemmas 28 and 29; official E-JC article metadata.
- Zeng–Yuan 2023 official article and PDF at https://www.combinatorics.org/ojs/index.php/eljc/article/download/v30i4p21/pdf and Li–Zhang 2024 official E-JC article abstract https://www.combinatorics.org/ojs/index.php/eljc/article/view/v31i4p44 . First two detailed relevant proofs inspected; other genre comparator depth distinguished in source dossier.
- Official arXiv category taxonomy, endorsement, moderation, licenses and submission overview at https://arxiv.org/category_taxonomy, https://info.arxiv.org/help/endorsement.html, https://info.arxiv.org/help/moderation/index.html, https://info.arxiv.org/help/license/index.html and https://info.arxiv.org/help/submit/index.html .
- Cross-reconciled S039/S040/S041/S042/S043/S057/S059 committed records and live proof-bearing Lean file. S042 was a prior bounded audit; S060 does not pretend to independently exhaust all grey literature.

## State/contents integrity assertions to be checked after checkpoint
- Seven and only seven S060 session files; stage status D59-01 completed GO-WITH-CONDITIONS; frozen theorem unchanged.
- `STATE.json` unique S060 COMPLETED checkpoint, next S061 READY, no active owner blocker, `authoritative/NEXT_SESSION_PROMPT.md` and S061 brief match state.
- Updates to roadmap, publication/claims/decisions/reviewer/failure/ledger entries preserve historical outcomes, distinguish past Palomar partial closeout from D-165 success, and keep secret portal capability out of public record.
- Local Markdown links resolve; existing Apache-2.0 license untouched.
- Required GitHub Actions step: `python3 scripts/check_authority.py`; pinned `lake build` and forbidden-placeholder scan as configured by CI, although no mathematical files changed. **An action is not PASS merely because a workflow was triggered.** The commit cannot name its own exact SHA. The final user-facing closeout must cite the actual post-push remote SHA and run after those are independently observed.

## Unperformed/unsupported checks
No human independent rederivation, AI-proof rewrite or signed author attestation; no new Lean mathematical validation was performed in this documentation-only unit. No journal-fit referee review, exhaustive global novelty certification, accepted arXiv endorsement, definite E-JC preprint policy ruling, permanent Palomar registry merge or publication acceptance. These limits are explicit conditions, not hidden success claims.
