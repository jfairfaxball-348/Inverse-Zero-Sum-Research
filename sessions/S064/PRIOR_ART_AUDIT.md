# S064 prior-art audit — CAND-03G Stage 1 (Unit D63-01)

Date: 2026-10-11. Status: **COMPLETED — Claim A source-known (PA-EQUIV);
Claim B and the rank-3 case: no exact/equivalent/stronger-implying prior art
located in the documented Stage 1 audit.**

Taxonomy (S042): PA-EXACT / PA-EQUIV / PA-STRONGER / PA-INGREDIENT /
PA-MENTION / PA-NONHIT. Exactly one class per serious candidate per audit
object. Inspection levels (P-proof, P-statement, P-abstract, S-review,
Metadata) and exact source content: [SOURCE_CHECK.md](SOURCE_CHECK.md). Queries,
systems and dates: [SEARCH_LOG.md](SEARCH_LOG.md). The external candidate
argument (C-262–C-266) was **not** checked, repaired or extended.

## Audited statement (D-175, unchanged)

With `c_r` the largest cap size in `AG(r,3)`, a parameter:

- **A:** `eta^N(C_3^r)=3c_r-2` for every `r>=1`.
- **B:** for every `r>=1` and every positional sequence over `C_3^r\{0}` of
  length `3c_r-3`: avoiding iff `S=U^3` up to a bijection of all positions,
  with `U` squarefree, short-free and of length `c_r-1`. B is recorded below
  as **B-inv** (avoiding ⇒ `U^3`) and **B-con** (`U^3` ⇒ avoiding).
- **B3:** B at `r=3`, i.e. the registered CAND-03 theorem
  (PALOMAR-2026-10-09-000011 v1).

## Table A — Claim A

| Candidate | Class | Level | Exact basis |
| --- | --- | --- | --- |
| **ZS-72 Lemma 3.3(3)** (Gao, Hui, Li, Li, Qu, Zhong; Acta Arith. 212 (2024), published online 2024-01-19), with the classical identity `eta(C_3^r)=2c_r-1` (ZS-81 Lemma 2.3.2 and Lemma 5.2(2),(3), 2007; ZS-82 Prop. 4.1.2, 2011; Harborth 1973) | **PA-EQUIV** | P-proof (author manuscript); identity P-statement | **Hypotheses:** `G=C_n^r`, `n=3`, any `r in N`. **Conclusion:** `eta^N(C_3^r)=3(eta(C_3^r)-1)/2+1`. **Equivalence argument:** `eta(C_3^r)=s(C_3^r)-2` (ZS-81 Lemma 2.3.2 with the height-2 extremals of Lemma 5.2(3); also stated in the ZS-72 proof) and `s(C_3^r)=2g(C_3^r)-1=2c_r+1` (ZS-81 Lemma 5.2(2),(3); ZS-82 Prop. 4.1.2). Hence `eta(C_3^r)=2c_r-1` and `3(2c_r-2)/2+1=3c_r-2`, exactly Claim A for every `r>=1`. Definition match: ZS-72 Def. 1.1 is D5 (CAND-03 semantics; S043). |
| ZS-72 Lemma 3.1 / ZS-75 Cor. 3.11(1) / ZS-77 Thm 2.6 / ZS-79 Thm 1.1 | PA-INGREDIENT | P-statement (ZS-72, ZS-75); S-review (ZS-77, ZS-79) | Special cases `r=1,2`: values 4 and 10, which agree with `3c_r-2`. |
| ZS-72 Thm 3.6(4),(5) | PA-INGREDIENT | P-statement | Special cases `r=3,4`: values 25 and 58, which agree with `3c_r-2`. |
| ZS-81, ZS-82, ZS-86, ZS-87 (cap and zero-sum identities, cap values) | PA-INGREDIENT | P-statement / P-abstract | The identities and values used in the equivalence and in the value table. |

**Outcome A: Claim A is already known.** It is a reformulation, through
published identities, of Gao et al. 2024 Lemma 3.3(3). S039 recorded this lead.
S064 resolves it at full statement-and-proof level. **Credit:** Gao, Hui, Li,
Li, Qu and Zhong (2024), Lemma 3.3(3), together with Harborth (1973) and
Edel–Elsholtz–Geroldinger–Kubertin–Rackham (2007), Lemmas 2.3 and 5.2, for
`eta(C_3^r)=2c_r-1`. Only the `c_r` parametrization is a restatement.

## Table B — Claim B for general `r`

| Candidate | Class | Level | Exact overlap and boundary |
| --- | --- | --- | --- |
| ZS-72 Lemma 3.3(2) **proof** (construction `S=U^n` from a Property-C extremal `T=U^{n-1}`) | PA-INGREDIENT (**B-con**, in a proof, all `r`) | P-proof | At `n=3`, it asserts that `U^3` avoids when `U^2` is short-free of length `eta-1=2c_r-2`. This is B-con for every core arising this way. It is stated inside a proof and only for the lower bound. Matching it to B-con's hypothesis ("`U` squarefree, short-free, length `c_r-1`") needs the correspondence "`U` squarefree and short-free ⇔ `U^2` short-free of length `2|U|`" (cf. ZS-81 Lemma 5.2(3), converse part, for length-3 zero sums). That is a Stage 2a obligation and is not checked here. No inverse statement. |
| ZS-72 Lemma 3.3(3) **proof** (decomposition into disjoint short atoms plus representative deletion) | PA-INGREDIENT — **proof-interior overlap** | P-proof | The technique (decompose an avoiding sequence into disjoint short minimal zero-sum subsequences plus a short-free rest; delete one representative per atom; bound the remainders by `s-1` and `eta-1`) closely parallels steps of the kind sketched in C-263. The proof is an upper-bound argument. **The equality case at length `3c_r-3` is not stated**, and its displayed counting has slack 2 there, so it does not read off `U^3` ([SOURCE_CHECK](SOURCE_CHECK.md#zs-72--gao-hui-li-li-qu-zhong-on-generalized-narkiewicz-constants-of-finite-abelian-groups-acta-arith-212-2024-133172)). **Consequence:** prior art for B is not established. But a referee may judge a short equality-case extension of this published proof to have limited significance. Stage 2a must document exactly which steps coincide with the published proof (C-266 reassessment), and Stage 4 must decide the paper type on that evidence (PUBLICATION_REGISTER, S063). |
| ZS-79 Thm 1.3 (Fan–Zhong 2025, all `m>=2` except 4) and ZS-77 (Gao–Peng–Zhong 2013, `m` prime), each at `m=3` | PA-INGREDIENT (**B-inv special case `r=2`**) | S-review | At `C_3^2`, length 9: avoiding ⇒ `S=e_1^3e_2^3(a_1e_1+a_2e_2)^3`, a one-directional `U^3` form with `|U|=3=c_2-1`. A proper special case (`r=2`) of B-inv. It is **compatible** with Claim B (SOURCE_CHECK, ZS-79 row). |
| ZS-73 (Hui–Zhong 2026) | PA-INGREDIENT (scope-distinct) | S-review | `C_n+C_n` at length `3n-1=eta^N-2` (sub-extremal) and the length-`eta^N-1` inverse for `C_n+C_{nm}`, `m>=2`. Does not state Claim B at any `r`. |
| ZS-78 (Fan–Hui–Zhong 2024) | PA-INGREDIENT (scope-distinct) | S-review | Rank two, `C_n+C_{nm}`, `n in {2,3}`, `m>=2`. |
| ZS-75 Conj. 3.4, Prop. 3.10(2) (GGW 2011) | PA-INGREDIENT | P-statement | The `C_n+C_n` length-`3n` conjectured form and the lower-bound construction. Rank two only. The authors say they do not work on the inverse problem. |
| ZS-81 Lemma 5.2(3) (EEGKR 2007) and Property C/D for `C_3^r` | PA-INGREDIENT | P-proof | The analogous structure for a **different invariant**: length-`(s-1)` sequences without a length-3 zero sum are `T^2` with `supp(T)` a maximal cap (multiplicity 2). B concerns `eta^N` (short zero sums allowed, overlap condition) and multiplicity 3. No statement gives B. |
| ZS-72 Lemma 4.19 / Thm 4.21 (`s*`, `s^N`, `s**` for `C_3^r`) | PA-NONHIT | P-statement | Different invariant (length exactly 3). Direct values only. |
| ZS-90 (Wang 2026), ZS-91 (Geroldinger–Yang 2026) and other 2024–2026 items in the search log | PA-NONHIT | P-statement / title-abstract | Different problems. ZS-90 cites ZS-72 only in passing. |
| ZS-92 (Geroldinger–Grynkiewicz–Zhong monograph, 2026) | PA-MENTION | Metadata/TOC | Inaccessible. A survey monograph with an inverse-problems chapter and an open-problems appendix. **Not a high-probability lead** (reasons below). Carried as a recheck obligation. |
| Theses and institutional metadata (S042 PA-MENTION set; S064 Chinese and English thesis queries) | PA-MENTION | Metadata | No target statement surfaced. |
| Cap/multiset/weighted-cap and coding routes | PA-NONHIT | search | No theorem encoding the positional two-witness condition and forcing multiplicity 3. |

**Outcome B (both directions):** **no exact/equivalent/stronger-implying
prior art located in the documented Stage 1 audit.** The closest overlaps are
the ZS-72 Lemma 3.3(2) construction (B-con, inside a proof) and the
Lemma 3.3(3) proof technique (proof-interior overlap). The published `r=2`
instance of B-inv is GPZ13 / Fan–Zhong 2025 at `m=3`. No `r=1` inverse
statement was located; the constructions `g^n` (ZS-75 Cor. 3.11(1)) and
`U^n` (ZS-72) are consistent with B.

## Table B3 — the rank-3 case (CAND-03)

| Candidate | Class | Level | Note |
| --- | --- | --- | --- |
| S042 deep-audit set (C-192) and S062 refresh (C-259) | baseline: no EXACT/EQUIV/STRONGER | per S042/S062 | Unchanged. |
| ZS-72 Lemma 3.3(2)/(3) and Thm 3.6(4) at `r=3` | PA-INGREDIENT | P-proof | Same as the S041/S042 classification. Re-read in full in S064; no inverse statement at `r=3`. |
| General-rank sources specializing to `r=3` | none located | — | No general-`r` `eta^N`/`eta*` inverse statement exists in the checked material, so none specializes to `r=3`. |
| New 2025–2026 material (ZS-73 publication, ZS-90, ZS-91, arXiv 2609.17127, ZS-92 metadata) | PA-NONHIT / PA-MENTION | as above | No rank-3 `eta^N` inverse statement. |

**Outcome B3:** **no exact/equivalent/stronger-implying prior art located in
the documented Stage 1 audit** (S042/S062 baseline plus S064 general-rank
re-audit).

## Special-case observations (`r=1`, `r=2`) and stop rule (c)

| `r` | `c_r` | Claim A value | Published value | Claim B length | Published inverse statement at that length | Contradiction? |
| --- | --- | --- | --- | --- | --- | --- |
| 1 | 2 | 4 | `eta^N(C_3)=4` (ZS-72 Lemma 3.1; ZS-75 Cor. 3.11(1)) | 3 | none located; construction `g^3` consistent | **No** |
| 2 | 4 | 10 | `eta^N(C_3^2)=10` (ZS-72 Lemma 3.1; ZS-77 Thm 2.6; ZS-79 Thm 1.1) | 9 | ZS-77 (`p=3`) / ZS-79 Thm 1.3 (`m=3`): avoiding ⇒ `e_1^3e_2^3(a_1e_1+a_2e_2)^3` | **No**: same `U^3` shape. The theorem lists a superset family and asserts no member is avoiding. ZS-73's length-8 theorem is sub-extremal. |

No published `r<=2` statement contradicts Claim A or B. **Stop rule (c) is not
triggered.**

## Unresolved-lead assessment (stop rule (b))

No **identified high-probability** lead for A, B or B3 remains unresolved:

- **A** is resolved (known).
- **ZS-72** (the defining and only general-rank `eta^N` source): sections 1–3 were
  read in full. Section 4 (`s*`, `s^N`, `s**`) was scanned for every statement
  about `C_3^r`, `C_n^r` or caps, and every remark and conjecture in the paper was
  read. No `eta^N` inverse statement exists anywhere in it.
- **All located forward citers of ZS-72** were checked: Semantic Scholar 3,
  zbMATH 1, Crossref count 2, OpenAlex count 2 (list rate-limited). They are
  rank-two papers or a Davenport-constant paper. Their statements were read at
  P-statement or S-review level.
- **ZS-73 and ZS-79 full texts** (paywalled or blocked here) may contain
  introductory remarks on rank `>=3`. S037 recorded ZS-73 as saying only few
  larger-rank results are known. A rank-two paper's remark is not a likely home
  for a general-rank inverse theorem, and the authors' own 2026 positioning
  points the other way. These are residual surfaces, not leads.
- **ZS-92 (GGZ monograph, 2026)** is inaccessible. It is a curated survey of
  published results. `eta^N` is not a classical invariant and no chapter title
  refers to Narkiewicz constants. No citing work attributes a `C_3^r` `eta^N`
  inverse to it. Residual surface, not a lead.

The residual surfaces are listed as **recheck obligations before any
submission** (C-273). Because none is a specific open lead, the
"surface incomplete" continuation rule is not used. Another Stage 1 session
with the same access could not inspect them either. If the owner has
institutional access, inspecting ZS-73's introduction and ZS-92's
inverse-problems chapter and Appendix B would close them.

## Disposition (ROADMAP Stage 1 rules)

1. Stop rules (a)–(c): **not triggered.**
2. **Only Claim A known:** apply the pre-authorized D-174 rule. The CAND-03G
   **contribution is re-scoped to Claim B** (both directions, all `r`, with the
   `r=3` case as registered CAND-03). Claim A is credited to Gao et al. 2024
   Lemma 3.3(3) plus the classical identity (D-179). The frozen statement
   (D-175) is unchanged. Claim A stays in it as a source-known component.
3. **Clean exit for the re-scoped target:** the precise wording for B and B3 is
   "no exact/equivalent/stronger-implying prior art located in the documented
   Stage 1 audit". This is **not** a claim of novelty, openness or significance.
   `mathematical_investigation_gate` opens **for Stage 2a's bounded role only**
   (D-180), and S065 (Stage 2a) is promoted.
4. **Significance risk carried forward:** the ZS-72 proof-interior overlap
   (Table B) bears on significance, not prior art. Stage 2a records the exact
   step correspondence. Stage 4 decides positioning and paper type.
