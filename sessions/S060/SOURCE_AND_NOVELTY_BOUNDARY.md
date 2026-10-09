# S060 — source attribution, exact novelty boundary and overlap audit

Date: 2026-10-09. Only a bounded evidence-backed novelty *position* is claimed, not an exhaustive nonexistence theorem about literature.

## Exact question and genuinely new component
`G=C_3^3`, 24 nonzero indexed positions, exponent-three short zero-sum witnesses `I,J` of cardinalities 1–3. **Avoidance** is `σ(S|_{I∩J})=0` for all such pairs. The programme's proved iff says this holds exactly for permutations of `U^3`, where `U` is squarefree, 8 terms and short-free. The **new asserted contribution** relative to the checked prior statements is the *necessity* “every avoiding length-24 multisequence is of this form,” and thus the complete equality classification. The converse/existence, the threshold `η^N(C_3^3)=25`, and cap-core equivalence are NOT new claims.

## Primary-source attribution matrix
| Result or interface | Prior source / programme | Audit verdict |
| --- | --- | --- |
| Indexed `η^N` concept, distinct occurrences and nonzero inner-intersection sum | Gao–Hui–Li–Li–Qu–Zhong 2024, Definitions 1.1 and Lemma 2.1 | PUBLISHED, exact semantic source. |
| Sharp `η^N(C_3^3)=25` and avoiding `U^3` from Property-C `U^2` | Gao et al. 2024, Lemma 3.3(2)–(3), Theorem 3.6(4) | PUBLISHED direct threshold and sufficiency; never market as new. |
| Maximal short minimal zero-sum packing; arbitrary representative deletion yields short-free residuals and 3-term-free residual | Gao et al. 2024, **proof** of Lemma 3.3(3), plus programme S039 extraction | Source *argument*, with new length-24 specialization and arithmetic; reproduce its quantifiers. |
| `s(G)=19`, `η(G)=17`, Property C | Gao et al. 2024 Lemmas 2.6, 2.10; Fan et al. 2012 Lemma 7 | PUBLISHED inputs. |
| For `C_3^3`, short-free length 16 has total sum 0 | Fan–Gao–Wang–Zhong–Zhuang 2012 Lemma 28, proven via Property C and their Lemma 9 | PUBLISHED crucial `s=8` input. |
| `15∈C_0(C_3^3)`, i.e. no length-15 zero-sum short-free sequence | Fan et al. 2012 Lemma 29(1) | PUBLISHED auxiliary consistency/nonzero total check, not necessity engine on its own. |
| The four length-24 packing signatures `(6,8,2),(7,8,1),(8,8,0),(6,9,0)` | Programme S039 based on published inequalities | **PROGRAMME DEDUCTION** in the extremal equality case. |
| `s=8` constant-block elimination, collapse to eight triple fibres | Programme S040/S041, formal S043–S057 | **PROGRAMME NEW NECESSITY ARGUMENT**, published Lemma 28 is input. |
| Short-free length-15 `2^7 1` profile and `u=-σ(R)`, one-/two-block transversal swap contradiction excluding `s=9` | Programme S040/S041, formal S043–S057 | **PROGRAMME NEW EQUALITY-CASE ARGUMENT** derived from published ordinary bounds. |
| Exact iff as position-permutation `IsTriplePower` | Programme S040/S041, Lean `frozenClassification` S057, Lean 4.35 S059 | **PROGRAMME PROVED** for encoded theorem, not external novelty certification. |
| 8-point short-free squarefree `U` corresponds to `U∪{0}` a 9-cap in `AG(3,3)` | Classical finite geometry, recorded S042 | EXISTING geometric interpretation at the core level ONLY, not 24-position inverse. |

## Primary bibliographic anchors and inspection depth
1. W. Gao, W. Hui, X. Li, Y. Li, Y. Qu, Q. Zhong, *On generalized Narkiewicz constants of finite abelian groups*, **Acta Arith. 212** (2024), 133–172, DOI https://doi.org/10.4064/aa230118-1-10 . Primary author-hosted full PDF https://imsc.uni-graz.at/zhong/paper/generalized-narkiewicz.pdf inspected at Definition 1.1, exponent-three argument and Lemma 3.3 proof (particularly p. 11). **Full relevant mathematical proof interface**, not only abstract.
2. Y. Fan, W. Gao, G. Wang, Q. Zhong, J. Zhuang, *On short zero-sum subsequences of zero-sum sequences*, **Electron. J. Combin. 19** (2012), #P31, DOI https://doi.org/10.37236/2602 . Official full PDF https://www.combinatorics.org/ojs/index.php/eljc/article/download/v19i3P31/pdf inspected especially p. 15, Lemmas 28–29; paper also records Property C and `η=17`. **Full relevant statements and their immediate proofs**.
3. X. Zeng, P. Yuan, *On sequences without short zero-sum subsequences*, **Electron. J. Combin. 30** (2023), #P4.21, DOI https://doi.org/10.37236/11963 . Official full PDF https://www.combinatorics.org/ojs/index.php/eljc/article/download/v30i4p21/pdf inspected for scope and introduction; different *ordinary short-free* invariant with `|Σ(S)|=2|S|-1<|G|`. **Direct journal statement/intro; not proof-by-proof comparison**.
4. M.-s. Li, H. Zhang, *The group permanent determines the finite abelian group*, **Electron. J. Combin. 31** (2024), #P4.44, DOI https://doi.org/10.37236/13332 . Official article https://www.combinatorics.org/ojs/index.php/eljc/article/view/v31i4p44 . **Journal theorem/abstract checked, not full proof audited**. Genre comparator, not same theorem.
5. Adjacent post-2024 inverses as classified in S041–S042: Fan–Hui–Zhong 2024, Fan–Zhong 2025, Hui–Zhong 2026 are **rank-two** groups/problems, not an immediate proof for rank-three `C_3^3`. The primary full S042 taxonomy also considered Gao–Geroldinger–Wang 2011, Gao–Peng–Zhong 2013, ordinary Gao–Thangadurai rank-three results and cap classification. Refer to `sessions/S042/DEEP_PRIOR_ART_AUDIT.md` for their exact access levels and PA-INGREDIENT / PA-NONHIT / PA-MENTION status; do not upgrade an abstract to full-proof inspection.

## Explicit no-collision/no-certification boundary
S042 found **no PA-EXACT, PA-EQUIV or PA-STRONGER** entry in its checked published/preprint/thesis/citation search. The 2026 rank-two line remains rank two. This justifies conditional drafting preparation, not a proof that the theorem is globally novel or was previously open. An undiscovered proof, different-language formulation, thesis or later preprint remains possible. Re-run targeted latest-source/author/citation-chain and exact semantic searches before a public preprint and again when E-JC filing is contemplated. If exact/equivalent/stronger-implying work is located, halt publication route and record the collision.

## Specific originality hazards for human author
- The 2024 *upper-bound* proof uses the packing and universal representative deletion; its machinery is not novel. Explain the strict additional `24`-length **equality bookkeeping**, Lemma 28 swap, length-15 singleton and second-two-block contradiction as new.
- The 2012 paper has more structure about short-free cores than just Lemma 28: cite it before mentioning 8-element cores, avoid “discovering” Property C anew.
- Indexed intersection means actual positions, not gcd of support sets. A cap theorem alone does not imply triples of every original value; no shortcut to necessity.
- No claim that the target was a named conjecture, open problem, previously unsolved, or of general group rank is warranted by current evidence.
- Lean/Palomar proof quality is distinct from historical novelty and E-JC significance.
