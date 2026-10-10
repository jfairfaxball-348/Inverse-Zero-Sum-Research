# S064 — CAND-03G Stage 1: prior-art/novelty audit

**Status: READY. Unit D63-01.** Exactly one bounded numbered session. This is
Stage 1 of the D-174 route and nothing else: **no proof work, no computation,
no Lean, no Stage 2a**. Do not post, file, submit or contact anyone. That
includes authors, even to ask about prior art.

## Authority and target

Owner direction D-174 (2026-10-10) resolved B-016 by withdrawing the CAND-03
release and opened the staged CAND-03G route. The exact frozen statement
(D-175) is in the
[target register](TARGET_REGISTER.md#d-174--s063-target-change--cand-03g-general-rank-extension-of-cand-03-2026-10-10).
In summary, with `c_r` the largest cap size in `AG(r,3)` (a parameter):

- **Claim A:** `eta^N(C_3^r)=3c_r-2` for every `r>=1`.
- **Claim B:** a positional sequence over `C_3^r\{0}` of length `3c_r-3` is
  avoiding (every two short zero-sum witnesses have zero intersection sum)
  iff `S=U^3` up to a bijection of all positions, with `U` squarefree,
  short-free and of length `c_r-1`. Cap form: `U∪{0}` is a maximum cap.
- **Rank-3 case:** Claim B at `r=3` is exactly the registered CAND-03
  theorem (PALOMAR-2026-10-09-000011 v1, source
  `c5f9e5e822020688c72b2a3bfacbf147a801e219`).

`mathematical_investigation_gate` is **CLOSED** for CAND-03G (D-176). The
candidate argument and computations (C-262–C-266) are unverified external AI
input. Do not use them as evidence, and do not check, repair or extend them in
S064.

## Execute exactly D63-01

### 1. Entry

Pin the S063 checkpoint named in the prompt, reconcile it and confirm S064 is
unique. Read AGENTS.md, START_HERE, STATE, the charter, protocol and closeout
template, D-174–D-178, all registers (especially the CAND-03G section of the
target register, the ROADMAP Stage 1 row, C-190–C-194, C-259, C-262–C-266 and
ZS-71–ZS-81), the [AI-use record](AI_USE_RECORD.md),
`sessions/S039/SOURCE_CHECK.md`, the S041 literature audit, the S042 audit,
search log and brief (taxonomy and search surface), the S062 source refresh
and `sessions/S063/`.

### 2. Audit objects

Classify **separately**:

- **A** — Claim A, the direct value for all `r`.
- **B** — Claim B for general `r`, both directions. Record the inverse
  direction (avoiding ⇒ `U^3`) and the construction direction separately.
- **B3** — the rank-3 case. The S042 deep audit and the S062 refresh are the
  baseline. Re-audit only for new material, in particular general-rank sources
  that specialize to `r=3`.
- Record `r=1` and `r=2` instances of Claim B as special-case observations.
  A source proving only a proper special case is PA-INGREDIENT for **B**.

### 3. Required trace surface (owner list, made specific)

1. **Gao–Hui–Li–Li–Qu–Zhong 2024 (ZS-72).** Use the full primary text. Cover
   every statement about `C_3^r`, elementary 3-groups, exponent 3, general
   rank or caps. This includes Definition 1.1; Lemma 2.1; Definition 2.3 and
   Lemma 2.4 (`eta^N=eta*`, and what that equivalence means for searching the
   `eta*` literature); Lemma 2.6(4); Lemma 3.3(1)–(3); Theorem 3.6; and all
   remarks, open problems and conjectures. Read the **proofs** of
   Lemma 3.3(2) and (3), not just the statements (FL-121): check whether the
   equality case, or the multiplicity-three structure, is stated or is
   immediate there. `sessions/S039/SOURCE_CHECK.md` records Lemma 3.3(3) as
   `eta^N(C_3^r)=3(eta(C_3^r)-1)/2+1`. That is the **Claim A lead**; resolve it.
   Then trace all forward citations, using at least two independent citation
   indexes plus the publisher page.
2. **Hui–Zhong 2026 (ZS-73) and Fan–Zhong 2025 (ZS-79).** Also check
   Fan–Hui–Zhong 2024 (ZS-78). Record the exact theorem statements, the values
   of `eta^N(C_n^2)` and the exact length classified. The repository records
   ZS-73 Theorem 1.1 at length `3n-1=eta^N(C_n^2)-2`. Reconcile this with
   Claims A and B at `r=2` (`c_2=4`: `eta^N(C_3^2)=10`, extremal length 9).
   Determine whether the record, the convention or the claims are off, and
   whether the `n=3` case states Claim B at `r=2`. Note every remark or
   conjecture about rank `>=3`. Trace their citers.
3. **The Gao–Geroldinger–Wang `eta*` line** (ZS-75–ZS-77) and its citers.
   Look for `eta*`/Narkiewicz values or structure for `C_3^r`, and for
   factorization-theoretic formulations of the same constant. Check the 2026
   Geroldinger–Grynkiewicz–Zhong monograph *Combinatorial Factorization
   Theory* where it is accessible.
4. **Edel–Elsholtz–Geroldinger–Kubertin–Rackham 2007 (ZS-81) and later
   zero-sum/cap literature.** Find exact primary statements, with their
   scope, of `eta(C_3^r)=2c_r-1` and `s(C_3^r)=2c_r+1` (or equivalent
   `g(C_3^r)` forms). Look for any theorem on sequences with bounded
   multiplicity, "multiple caps" or weighted caps that could encode Claim B.
   Cover cap/zero-sum surveys.
5. **Cap values.** Verify `c_1..c_6=2,4,9,20,45,112` from primary sources and
   record the current status for `r>=7`. These are recall-based leads that S063
   did **not** check: the classical small cases; Pellegrino (1970) for
   `AG(4,3)`; Edel–Ferret–Landjev–Storme (2002) for `AG(5,3)`; Potechin (2008)
   for `AG(6,3)`. Record bibliographic data, theorem numbers and inspection
   level, or record the value as unverified.
6. **Current literature through the session date.** Search with combinations
   of `eta^N`, `eta*`, Narkiewicz (revised, generalized or Narkiewicz-sense),
   "innerly non-zero-sum-joint", "joint short minimal zero-sum" and "short
   zero-sum", together with `C_3^r`, "elementary abelian 3-group", "rank r",
   "cap" and "inverse". Cover arXiv, journals, theses and the bibliographies of
   Zhong, Hui, Fan, Gao, Geroldinger and Grynkiewicz. Use multiple search
   systems and log every query, database and date.

### 4. Classification discipline

Use exactly one of PA-EXACT, PA-EQUIV, PA-STRONGER, PA-INGREDIENT, PA-MENTION
or PA-NONHIT for each serious candidate, per audit object. Separate abstract-only,
full-statement and proof inspection. For EXACT/EQUIV/STRONGER record the
theorem/lemma/page, hypotheses, conclusion, date and the exact specialization
or equivalence argument. A reformulation (via `eta*`, minimal-zero-sum
language or caps) counts only after the equivalence is checked exactly.
If a source *proof* contains Claim B's argument but its *statement* does not,
classify it PA-INGREDIENT and record it explicitly as a **proof-interior
overlap**, with its consequence for novelty and significance. If an equality
case is stated in a source, that is EXACT or STRONGER.

Comparing published numbers (for example, Lemma 3.3(3) against the cap
identity) is permitted arithmetic. Enumerating sequences, writing proofs,
repairing the sketch and running code on the mathematics are **not**
permitted.

### 5. Stop and successor rules (ROADMAP Stage 1)

- **Stop, record, raise an owner blocker, no prompt** if any of these holds:
  (a) PA-EXACT/EQUIV/STRONGER for **B** or **B3**, whatever the outcome for
  A; (b) an identified high-probability lead for A, B or B3 that cannot be
  resolved (inaccessible or ambiguous primary source); (c) a published
  `r=1`/`r=2` statement contradicting Claim A or B, which is a
  mistaken-premise signal (also record it in the failure ledger).
- **Only Claim A known** (A is EXACT/EQUIV/STRONGER, B and B3 are clean): this
  is **not** a blocker. Under D-174, record the re-scope of the CAND-03G
  contribution to Claim B, credit Claim A to its source, and continue.
- **Surface incomplete, no specific open lead:** close with an exact
  remaining-surface list and promote one S065 Stage 1 continuation.
- **Clean exit:** state the precise result as "no exact/equivalent/
  stronger-implying prior art located in the documented Stage 1 audit" for
  B and B3, plus the A outcome. Do not call it novelty or openness. Set
  `mathematical_investigation_gate` OPEN for Stage 2a's bounded role only,
  write the S065 Stage 2a brief from the ROADMAP row, and give one ready
  prompt. Do not start Stage 2a.

### 6. Required records

`sessions/S064/INPUT_SNAPSHOT.md`, `SEARCH_LOG.md`, `PRIOR_ART_AUDIT.md`
(A, B and B3 tables), `SOURCE_CHECK.md` (including the cap-value/identity
table), `VALIDATION.md` and `CLOSEOUT.md`. Give new sources ZS IDs in the
claims register. Synchronize STATE, the ledger, decisions/blockers, the
target/publication/reviewer registers, claims/sources and the failure ledger.
Name the AI tool that ran S064 in the closeout and the AI-use record. Run
`python3 scripts/check_authority.py`, commit, push and verify the remote SHA.
Stop after S064.

Preserve PALOMAR v1, the frozen CAND-03 theorem, the unchanged S061
manuscript and S062 package, all attribution and disclosure duties, and the
owner's E-JC personal proof check/rewrite requirement.
