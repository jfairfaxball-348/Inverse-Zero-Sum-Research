# S064 reproducible search log — CAND-03G Stage 1

Date of every query: **2026-10-11** (UTC, session S064). Target: prior art
for Claim A, Claim B (general `r`, both directions) and the rank-3 case, as
frozen by D-175. Search hits were used for discovery only. Classification
rests on the source inspections in [SOURCE_CHECK.md](SOURCE_CHECK.md).

## Systems used

| System | Access | Used for |
| --- | --- | --- |
| Author/publisher primary texts | `imsc.uni-graz.at/zhong` (ZS-72), `geroldinger-0836a9.gitlab.io` (ZS-75), `yvesedel.de` (ZS-81), `cfc.nankai.edu.cn` (ZS-82), `arxiv.org` PDFs | full-text inspection |
| Publisher pages | IMPAN (ZS-72), ScienceDirect (ZS-79, ZS-86; HTTP 403 for PDFs), Springer (ZS-87), ACM DL (ZS-79 abstract), AMS bookstore (ZS-92) | records, abstracts |
| **Semantic Scholar Graph API** | citations endpoint OK; keyword search endpoint rate-limited (429) after one query | forward citations; one keyword query |
| **zbMATH Open API** | OK | reviews (S-review level), `ci:` cited-by queries, keyword queries |
| **Crossref REST API** | OK | `is-referenced-by-count`, abstracts, bibliographic queries |
| OpenAlex API | work record and `cited_by_count` OK; citing-works list refused (shared daily budget exhausted) | citation count only |
| **arXiv API** (`export.arxiv.org`) | OK (one 429, retried with back-off) | keyword and author sweeps, preprint metadata and versions |
| Parallel web search / fetch | OK | general web, Chinese-language and thesis queries, page extraction |
| Claude Code WebSearch | OK | independent general web search |
| OEIS JSON | OK | A090245 (cap values) |
| Author/project bibliographies | Zhong (Graz, last changed Sept. 2025), Y. Li (Brock, current to Sept. 2026), FWF P36852 (last changed 2025-12-01), Geroldinger (GitHub pages) | author-bibliography sweep |
| Not available | Google Scholar, MathSciNet, institutional thesis databases (CNKI) | — |

## 1. Primary-source retrieval (owner trace items 1–5)

| Item | Retrieval | Result |
| --- | --- | --- |
| ZS-72 full text | author PDF (39 pp.) | Read in full, including the proofs of Lemma 3.3(2),(3). |
| ZS-72 publisher | IMPAN page | Published online 2024-01-19; paywalled. |
| ZS-79 (Fan–Zhong 2025) | ScienceDirect HTML/PDF (403), ACM DL, zbMATH Zbl 1564.11020 | Abstract with formulas (ACM) and full review (Ribas): Thm 1.1, Conj. 1.2, Thm 1.3. |
| ZS-73 (Hui–Zhong 2026) | ScienceDirect (paywalled), zbMATH record 8239174 | Review (Bettio, 2026-08-13): `C_n+C_n` at length `3n-1`; `C_n+C_{nm}` (`m>=2`) inverse at `eta^N-1`. |
| ZS-78 (Fan–Hui–Zhong 2024) | zbMATH Zbl 1565.20063, web search summary | `C_2+C_m`, `C_3+C_m` (`C_n+C_{nm}`, `m>=2`). |
| ZS-75 (GGW 2011) | author-hosted offprint | Conj. 3.4, Lemma 3.7, p. 1473 cap remark, Prop. 3.10, Cor. 3.11 read. |
| ZS-76, ZS-77 | zbMATH Zbl 1246.11173, 1290.11149; the ZS-79 review | Rank-two `N_1`; GPZ13 Thm 2.6 and GGW Conj. 3.4 for prime `m`. |
| ZS-92 GGZ monograph | AMS bookstore (direct fetch blocked by Cloudflare; extracted via Parallel fetch); Google Books API by ISBN (0 items); Crossref title query (no DOI) | TOC only. |
| ZS-81 EEGKR 2007 | author preprint | Lemmas 2.3, 5.2, 5.4, Remarks 4.7, p. 20 history. |
| ZS-82 FGZ 2011 | Nankai-hosted preprint | Prop. 4.1, Lemma 2.4, p. 2 remark. |
| ZS-86, ZS-87 | ScienceDirect abstract page (via Parallel fetch), Springer page | Abstracts: 45 for `AG(5,3)`; 112 for `AG(6,3)`. |
| ZS-84, ZS-85 (Bose, Pellegrino), ZS-83 (Harborth) | zbMATH metadata | Bibliographic data only (Zbl 0038.09601, Zbl 0223.50020). |
| `r>=7` status | OEIS A090245 JSON (rev. 128, 2026-08-12); arXiv API (Thackeray); web search | Values only through dimension 6; Thackeray: no 289-cap in `AG(7,3)`; one unrefereed ResearchGate claim (Sept. 2025). |

## 2. Forward-citation tracing

| Cited work | Semantic Scholar citations | zbMATH `ci:` | Crossref count | OpenAlex count | Citers found and classification |
| --- | --- | --- | --- | --- | --- |
| ZS-72 (10.4064/aa230118-1-10) | 3 | 1 | 2 | 2 (list refused) | ZS-79 (PA-INGREDIENT, rank 2); ZS-73 (PA-INGREDIENT, rank 2); ZS-90 Wang arXiv:2609.29878 (PA-NONHIT; v1 2026-09-24 has no citation, v3 2026-10-05 cites ZS-72 as "related inverse problems") |
| ZS-75 GGW 2011 | 3 | 2 | 6 | — | GLP11, GPZ13, ZS-90; zbMATH adds ZS-79 |
| ZS-76 GLP 2011 | 13 | — | — | — | ZS-73, ZS-79, ZS-90, Ebert–Grynkiewicz 2024 (rank-2 `p`-groups), additive-bases and cross-number papers: none on `C_3^r` `eta^N` |
| ZS-77 GPZ 2013 | 6 | 2 | — | — | ZS-72, ZS-79, ZS-73, ZS-90, additive bases (`C_3+C_{3q}`), minimal distances: none on `C_3^r` `eta^N` |
| ZS-78 FHZ 2024 | 3 | 0 | 1 | — | ZS-73, ZS-90, ZS-91 Geroldinger–Yang arXiv:2608.19090 (PA-NONHIT) |
| ZS-79 FZ 2025 | 2 | 0 | 1 | — | ZS-73, ZS-90 |
| ZS-73 HZ 2026 | 0 | — | 0 | — | none |

Requirement "at least two independent citation indexes plus the publisher
page" for ZS-72: met (Semantic Scholar, zbMATH Open, Crossref and OpenAlex
counts, IMPAN page). The counts agree with the citers found.

## 3. Keyword sweeps

### arXiv API (`search_query`, sorted by submission date, up to 100 results)

| Query | Total | Meaningful hits |
| --- | --- | --- |
| `abs:"Narkiewicz"` | 21 | only ZS-90 is zero-sum related; the rest are number-field/dynamics papers |
| `abs:"innerly"` | 1 | unrelated (Hopf algebras) |
| `abs:"joint short"` | 3 | unrelated (physics) |
| `abs:"short zero-sum" AND abs:"elementary abelian 3-group"` | 0 | — |
| `abs:"short zero-sum" AND abs:cap` | 0 | — |
| `abs:"zero-sum" AND abs:"affine cap"` | 0 | — |
| `abs:"zero-sum" AND abs:"cap set"` | 2 | 2211.03682 (higher-degree EGZ), 1407.1966 (weighted Davenport): PA-NONHIT |
| `abs:"zero-sum" AND abs:"C_3^r"` | 3 | Volkmann 2609.19810, 2609.22972 (small Davenport constant of non-abelian `H x C_3^r`), Godinho et al. 1201.0276 (weighted): PA-NONHIT |
| `abs:"zero-sum" AND abs:"inverse" AND abs:"rank three"` | 0 | — |
| `abs:"eta-constant" AND abs:inverse` | 0 | — |
| `abs:"Erdos-Ginzburg-Ziv" AND abs:"cap"` | 0 | — |
| `abs:"Property D" AND abs:"zero-sum"` | 1 | Naslund 1701.04942: PA-NONHIT |
| `abs:"unique factorization" AND abs:"zero-sum" AND abs:"Narkiewicz"` | 1 | ZS-90 |
| `abs:"two zero-sum subsequences" AND abs:"intersection"` | 0 | — |
| `abs:"joint short minimal"`, `abs:"Narkiewicz-sense"`, `abs:"generalized Narkiewicz"` | 0 each | ZS-73, ZS-78, ZS-79 are not on arXiv |
| `au:Zhong_Qinghai` (36), `au:Fan_Yushuang` (10), `au:Gao_Weidong` (17), `au:Geroldinger` (64), `au:Grynkiewicz` (41), `au:Hui_Wanzhen` (2); `ti:"cap set" AND ti:dimension` (1: Thackeray 2206.09804) | — | 2024–2026 items: metacyclic, separating invariants, `k`-th Davenport rank 2, conductor submonoids, ZS-91, Geroldinger–Wang–Yang 2609.17127 (`nu(G)` conjecture disproof), Gao–Jiang–Mu 2607.11313 (local problems), Hui–Li 2510.14215 (disc, rank 2), Grynkiewicz 2601.17922, 2402.15028: all PA-NONHIT |

### zbMATH Open API

| Query | Total | Meaningful hits |
| --- | --- | --- |
| `Narkiewicz py:2023-2026` | 108 | ZS-72, ZS-78, ZS-79, ZS-73 only (zero-sum related) |
| `ti:Narkiewicz` | 25 | ZS-75, ZS-76, ZS-77, ZS-72, ZS-78, ZS-73; the rest are other Narkiewicz topics |
| `ab:"innerly"` | 13 | ZS-79, ZS-73; the rest unrelated |
| `ab:"innerly joint"`, `ab:"joint short minimal"` | 1 each | ZS-79 |
| `ab:"Narkiewicz-sense"` | 1 | ZS-73 |
| `ab:"generalized Narkiewicz"`, `ab:"revised Narkiewicz"`, `ti:"zero-sum" & ab:"elementary abelian 3-group"` | 0 each | — |
| `ti:"zero-sum" & ab:cap py:2008-2026` | 3 | Balandraud 2012, arXiv 2606.11005 (zero-sum polytopes), ZS-79: PA-NONHIT |
| `ab:"short zero-sum" & ab:"multiplicity"` | 1 | Gao–Geroldinger–Schmid 2007 (*Inverse zero-sum problems*): classical inverse problems, PA-INGREDIENT-level background |
| `ab:"short zero-sum" & py:2024-2026` | 1 | ZS-73 |
| `ti:inverse & ti:"zero-sum" & py:2024-2026` | 5 | Hui–Huang–Li 2024 (rank 2), metacyclic, arXiv 2610.06445, 2608.10661: PA-NONHIT |
| `ci:1547.11125` (cites ZS-72) | 1 | ZS-79 |
| `ci:1290.11149`, `ci:1230.20023` | 2, 2 | ZS-72, ZS-79, GLP11 |

### Semantic Scholar keyword search

| Query | Result |
| --- | --- |
| `generalized Narkiewicz constants finite abelian groups` | 40 of 3736 relevance-ranked: ZS-72, ZS-78; the rest unrelated |
| `Narkiewicz-sense eta constant inverse problem`, `innerly non-zero-sum-joint short zero-sum subsequences`, and seven further queries | **HTTP 429 (rate limit)**, retried with back-off and again later: not executed. Recorded as a tool limit. Coverage is supplied by zbMATH, Crossref, arXiv and two web engines. |

### Crossref bibliographic queries (from 2011)

| Query | Meaningful hits in top 20 |
| --- | --- |
| `generalized Narkiewicz constants` | ZS-72, ZS-77, ZS-76, ZS-75 |
| `Narkiewicz-sense eta-constant` | ZS-73, ZS-78 |
| `joint short minimal zero-sum` | ZS-79, ZS-74, minimal-zero-sum papers, E-JC 2023 short zero-sum: PA-NONHIT |
| `innerly joint zero-sum` | none (game-theory noise) |
| `zero-sum affine caps elementary abelian 3-group` | Zhang, Publ. Math. Debrecen 2025 (`s_{[1,t]}`, `s_{k exp}` for rank three: PA-NONHIT); others unrelated |

### General web (two engines) and grey literature

| Engine | Objective / queries | Result |
| --- | --- | --- |
| Parallel | Citers of ZS-72; `"generalized Narkiewicz constants"`, `"innerly non-zero-sum-joint"`, `"Narkiewicz-sense" eta elementary abelian 3-group`, `eta^N(C_3^r)` | Y. Li bibliography (current to Sept. 2026), Zhong page, FWF page, ZS-79: no target statement |
| Parallel | `eta^N C_3^r inverse problem cap U^3`, `generalized Narkiewicz constant elementary abelian 3-group maximal cap`, `"C_3^r" Narkiewicz constant extremal sequences`, `Narkiewicz eta* C_3^r 3(eta-1)/2+1`, `inverse problem eta^N higher rank elementary 3-group` | no target statement |
| Parallel | Theses, Chinese: `惠婉珍 博士论文 零和`, `广义 Narkiewicz 常数 有限交换群 零和序列`, `Narkiewicz 常数 零和 短 极小 论文 南开`; English: `Wanzhen Hui dissertation zero-sum Nankai`, `thesis generalized Narkiewicz constants zero-sum sequences` | no thesis text surfaced (PA-MENTION set unchanged from S042) |
| Parallel | multisets/multiple caps: `multiset no three collinear points AG(r,3) multiplicity maximal cap`, `"multiple cap" affine space F_3 zero-sum`, `sequences F_3^r no zero-sum subsequence length 3 multiplicity two maximal cap Property D`, `weighted cap set multiplicity three extremal structure` | cap-set literature (2-caps, complete caps, algebraic capsets): no multiplicity-3 / positional-overlap theorem |
| Claude WebSearch | `"Narkiewicz" eta constant "C_3^r" OR "elementary abelian 3-group" inverse cap` | ZS-78, ZS-72 records, Harborth-constant paper: no target statement |
| Parallel | GGZ monograph TOC/preview/open problems | AMS record only |
| Parallel | `r=7` cap status | Thackeray 2022; Tyrrell 2022 (lower bounds); Jiang 2021 (upper bounds); Karapetyan 2024 (lower bound 236); unrefereed ResearchGate claim |

## 4. Meaningful non-hits

- No source after ZS-72 states any `eta^N` or `eta*` result for `C_3^r` with
  `r>=3` beyond ZS-72 itself.
- No source states an inverse (structural) theorem for `eta^N(C_3^r)` at length
  `eta^N-1` for any `r>=3`, or for general `r`.
- No source in the cap/multiset literature encodes the positional two-witness
  overlap condition.

Non-hits have only this force: within the documented Stage 1 audit, no
exact/equivalent/stronger-implying prior art for Claim B or the rank-3 case
was located. They do not prove novelty, openness or significance.

## 5. Tool limits encountered (not owner blockers)

ScienceDirect PDF/HTML refused automated access (403), including for the CC-BY
ZS-79. OpenAlex refused the citing-works list (daily budget). Semantic Scholar
keyword search returned 429. Google Scholar, MathSciNet and CNKI were not
reachable. The AMS bookstore needed an extraction service. These limits shape
the residual-surface list in [PRIOR_ART_AUDIT.md](PRIOR_ART_AUDIT.md).
