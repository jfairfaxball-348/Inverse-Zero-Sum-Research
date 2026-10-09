# S060 D59-01 — E-JC fit, ranked narratives and non-manuscript packaging

Checked 2026-10-09 against E-JC primary pages and published articles. **Decision for future E-JC-targeted drafting: GO-WITH-CONDITIONS; NO authorization to start drafting in S060.** E-JC acceptance and global originality are not predicted.

## Venue selection criteria, not a numerical acceptance probability
E-JC calls itself a fully refereed venue for substantial results of interest in discrete mathematics, demands original/correct/substantial work, and uses an editor, one or more referees, and a final collective editorial decision. The editorial process can reject mathematically correct but insufficiently interesting work. Its AI policy permits research/writing assistance only with human responsibility for all details; its checklist prohibits submission of an AI-derived proof until rewritten by the author, checked and vouched for step by step. See https://www.combinatorics.org/ojs/index.php/eljc/about/index and https://www.combinatorics.org/ojs/index.php/eljc/about/submissions .

| Criterion/risk now | Level | Evidence and required response |
| --- | --- | --- |
| Subject/genre fit | LOW risk | Inverse zero-sum and extremal combinatorics lie in discrete mathematics; Fan et al. 2012 and Zeng–Yuan 2023 are direct E-JC genre precedents. **Venue fit is not acceptance.** |
| Rank-specific scope/impact | MEDIUM-HIGH | Exactly one small group `C_3^3` at one length; a referee may see an isolated equality case. Explain why the full structural converse at a sharp generalized threshold has content, and do not manufacture generalizations. |
| Known-construction/source overlap | MEDIUM-HIGH | Gao et al. 2024 already prove `eta^N(C_3^3)=25`, give `U^3` avoiding examples and the representative-deletion machinery. Lead with the *new necessity* and the nontrivial elimination of all competing packing signatures. |
| Precise originality/status | MEDIUM | S042 classified no exact/equivalent/stronger prior art found in a deep, bounded audit; recent rank-two work is not rank-three. Non-hit does not prove novelty or historical openness. Perform a final targeted refresh prior to arXiv/journal release. |
| Exposition/proof self-containment | MEDIUM | Short elementary proof architecture exists; it requires complete human-readable positional quantifiers and the 15-term swap case, plus precise attribution for external lemmas. Do not submit a proof-by-Lean assertion. |
| Independent human author verification and rewriting | HIGH, unmet | No evidence owner personally verified every step or rewrote the proof in own words. Mandatory future E-JC checklist gate; no AI or Palomar result discharges it. |
| Relevance of cap geometry | MEDIUM if overemphasized | `U∪{0}` is a 9-cap only *after* the rigidity conclusion. Geometry can explain cores, not prove multiplicity-three necessity. |

## Three alternative honest narratives, rated 1–5 for expected E-JC presentation strength
The rankings are editorial **judgments**, not journal scores or acceptance odds. Scores combine subject interest, originality distinctness, readability and robustness against referee objections.

| Rank | Narrative | Suitability | Mathematical interest | Proof clarity | Originality risk | Likely referee question |
| --- | --- | ---: | ---: | ---: | --- | --- |
| **1 (recommended)** | **A. Sharp inverse extremal rigidity for the generalized Narkiewicz short-zero-sum intersection condition** | **4/5** | 4/5 | 4/5 | MEDIUM, manageable with clear attribution | Does the new converse genuinely strengthen the 2024 sharpness proof, and why should the fixed-rank rigidity matter? |
| 2 | B. Positional intersection-witness rigidity and forced multiplicity-three equality | 3.5/5 | 4/5 | 3/5 | MEDIUM | Are positional indexing and witness intersection presented accessibly rather than as jargon; is the packing source already enough? |
| 3 | C. An affine-cap interpretation of extremal witnesses | 2.5/5 | 3/5 | 3.5/5 | HIGH if sold as new cap theory | Is this merely a known 9-cap restatement that loses 24-position multiplicities? |

**Recommended synthesis:** adopt A as theorem and title narrative, place B at the heart of the proof (universal representatives / multiplicity-three rigidity), and include C only as an optional short explanatory remark on 8-point squarefree cores. Do not claim new cap classification or a universal rank-`r` theorem.

## E-JC comparison from primary articles
1. **Fan–Gao–Wang–Zhong–Zhuang (2012), E-JC 19(3) #P31:** Full 23-page PDF examined, especially Lemmas 7, 28, 29. The paper treats `C_0(G)` across groups and has a dedicated preliminary-lemma chain with full proofs. It supplies *our* exact length-16 and 15 inputs, not the inverse indexed theorem. Model self-contained lemma statement/accurate citation, not a target page count. https://www.combinatorics.org/ojs/index.php/eljc/article/download/v19i3P31/pdf
2. **Zeng–Yuan (2023), E-JC 30(4) #P4.21:** Full 14-page PDF first pages and scope examined. It characterizes ordinary short-zero-sum-free sequences in a particular subsum-cardinality regime `|Σ(S)|=2|S|-1<|G|`, not a pairwise indexed witness condition. It demonstrates that a precise inverse classification can be a substantial genre when explanatory hypotheses and consequences are convincing. https://www.combinatorics.org/ojs/index.php/eljc/article/download/v30i4p21/pdf
3. **Li–Zhang (2024), E-JC 31(4) #P4.44:** Official published theorem/abstract inspected: group permanent determines finite abelian group, via zero-sum methods. This is a broader-interest comparator and cautions against assuming every rank-specific structural consequence is comparable in reach. No equivalent CAND-03 result claimed. https://www.combinatorics.org/ojs/index.php/eljc/article/view/v31i4p44

## Prospective title directions — headings only, not manuscript
Preferred: **“An inverse theorem for extremal generalized Narkiewicz sequences over `C_3^3`”**.
Alternative precise direction: “Multiplicity-three rigidity at the generalized Narkiewicz threshold in `C_3^3`”.
Avoid: “A new sharp threshold”, “Classification of maximal caps”, “The inverse Narkiewicz theorem” without group/condition qualifiers.

## Exact theorem presentation specification
Let `G=(Z/3Z)^3`, and let `S=(a_p)_{p∈P}` be a family of **24 indexed nonzero terms**, `|P|=24`. A *short zero-sum witness* is `∅≠I⊆P` with `|I|≤3` and `Σ_{p∈I}a_p=0`. Then

`[For every short zero-sum witness pair I,J: Σ_{p∈I∩J} a_p=0] ⇔ [there exist eight distinct nonzero u_1,…,u_8 with U=(u_i) short-zero-sum-free and a permutation of P under which S=U^3].`

Allow `I=J` (then the intersection is itself zero sum, harmless), or explicitly require distinct pairs with equivalence justified. The direct 2024 source uses *existence* of a non-zero-sum indexed intersection as the forbidden event; this universally quantified formulation is the faithful negation. “`S=U^3`” is equality of multisequences, not fixed-order termwise equality. Do NOT replace condition by ordinary short-freeness of `S`.

## Prospective section-level skeleton ONLY — not drafted sections
1. **Problem statement and attribution:** define nonzero indexed sequence, short zero sum, indexed intersection; cite 2024 definition/direct `25`; position new converse accurately.
2. **Exact published tools:** quote with correct hypotheses `η(C_3^3)=17`, `s(C_3^3)=19`, length-16 sum-zero (2012 Lemma 28), length-15 nonzero total (2012 Lemma 29); explain usable packing-deletion claim from the **proof** of 2024 Lemma 3.3(3).
3. **Packing and the four signatures:** maximal pairwise-disjoint short minimal zero-sum atoms; universal transversal deletion; numerical four-case reduction.
4. **16-position residual equality:** prove representative-swap implies constant blocks, forces eight distinct triple fibres.
5. **15-position residual obstruction:** support profile `2^7 1`, singleton `u=-σ(R)`, exchange case split, second nonconstant 2-atom contradiction.
6. **Proof of exact iff:** necessity plus separately justified converse (can use source and give an easy positional check), permutation semantics.
7. **Discussion/limitations:** relation to the known threshold/construction, optional exact 9-cap core equivalence, and no extrapolation to other ranks; provenance note if appropriate.

Notation glossary to settle BEFORE drafting: `G^•=G\{0}`; `S=∏g^{v_g}` as a multisequence; indexed positions `P`; `σ(S)`; short witness `1≤|I|≤3`; `σ(I∩J)`; `η` ordinary; `η^N` generalized; `s(G)` EGZ; `l` 3-atom count, `s` total atom count, `r` unused count (avoid symbol conflict with EGZ function); `R_x` transversal survivor; `U^2,U^3` multiplicities.

## Abstract-content map (NOT an abstract)
- Define the exact indexed generalized-Narkiewicz setting in `C_3^3`.
- State the **known** direct threshold `η^N=25` and known 24-term example family.
- State the **new programme-proved** converse equality characterization `S=U^3`.
- Signal the novel necessity technique: equality in atom packing, 16/15 short-free residuals and transversal swaps.
- Distinguish full positional rigidity from known cap-core geometry and formal-verification provenance as appropriate.

Optional illustration: one small dependency-flow diagram `four signatures → s=8 residual sum zero / s=9 singleton-profile contradiction → eight triple fibres`. A cap picture is optional explanatory decoration only if mathematically exact; no figure is essential.

## Referee concerns and required substantive answers
- “Already implicit in 2024?” Explicitly identify every source Lemma 3.3 component and write the *new* equality extraction/15-term contradiction; don't claim first construction or threshold.
- “Too narrow?” Clearly explain the genuine inverse conclusion for **all** 24-position extremals and why the positional condition is more delicate than ordinary short-freeness; acknowledge rank specificity.
- “Is the short lemma chain self-contained?” Print all intermediate arguments, give proofs for new transitions, cite published tools at exact lemma numbers.
- “Does Lean replace a human proof?” No: author independently audits and personally rewrites; state formalization separately, after human prose exists.
- “Any prior result stronger in another guise?” Refresh search by exact quantifiers, rank-three inverse line, cap/multiplicity and recent preprints; S042 non-hit is not a novelty certificate.
