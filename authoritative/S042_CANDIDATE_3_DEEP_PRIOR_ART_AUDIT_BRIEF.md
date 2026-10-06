# S042 CAND-03 deep prior-art audit brief

Status: READY.

## Authority and target

CAND-03 is the selected target. S040 proved and S041 independently reverified
the exact internal classification:

> A length-24 sequence `S` over `C_3^3\{0}` contains no two innerly
> non-zero-sum-joint short zero-sum subsequences, with short meaning length at
> most 3, if and only if `S=U^3` for a squarefree short-free sequence `U`
> of length 8.

S041's overlap audit was focused and bounded. It found substantial known
ingredients but no checked exact theorem. That is not sufficient for
publication positioning. The owner therefore authorizes one deeper literature
unit, D41-01. Mathematical proof work remains closed.

## D41-01 — deep systematic prior-art/status audit

Run a documented source-first search for any prior result that is:

1. the exact CAND-03 iff classification;
2. an equivalent theorem under different notation or invariant names;
3. a stronger theorem whose hypotheses/conclusion immediately specialize to
   the CAND-03 result; or
4. a structural classification that becomes the same theorem after a short,
   explicitly verified equivalence argument.

Do not count a suggestive abstract, citation, database snippet, secondary
summary, or search-engine hit as a collision until the primary statement and
its hypotheses are checked.

## Required search surface

At minimum:

- backward and forward citation tracing from Gao--Hui--Xue Li--Yuanlin
  Li--Qu--Zhong 2024 and Fan--Gao--Wang--Zhong--Zhuang 2012;
- the older Gao--Geroldinger--Wang / Gao--Li--Peng / Gao--Peng--Zhong
  Narkiewicz line and all discoverable papers citing or extending it;
- revised/generalized/Narkiewicz-sense eta constants, `eta^N`, joint short
  minimal zero-sum subsequences, innerly non-zero-sum-joint formulations,
  disjoint/overlap-restricted short zero-sum formulations, and inverse
  problems under alternate terminology;
- rank-three elementary 3-groups, `C_3^3`, length 24, extremal
  short-zero-sum and Property-C literature;
- factorization-theoretic formulations of the same constants;
- finite-geometric/cap-set literature only as a discovery route: count it as
  overlap only if an exact equivalence to the sequence theorem is proved,
  rather than replacing the target by a set problem;
- current journal papers and preprints through the session date;
- theses/dissertations, proceedings, institutional repositories, author
  publication lists, and non-English literature where discoverable;
- cited-by and related-work trails for every serious candidate source.

Use multiple bibliographic/search systems where available. Record search
strings, databases/sites, dates, and meaningful non-hits so the audit is
reproducible rather than impressionistic.

## Overlap taxonomy

Every serious candidate must be placed in exactly one class:

- **PA-EXACT** — same theorem at the same effective scope;
- **PA-EQUIV** — differently stated but proved equivalent to the target;
- **PA-STRONGER** — a checked stronger result immediately implies the target;
- **PA-INGREDIENT** — supplies only a proper ingredient or one direction;
- **PA-MENTION** — informal, inaccessible, secondary, or otherwise not
  statement-verified;
- **PA-NONHIT** — searched path produced no relevant source.

For PA-EXACT/PA-EQUIV/PA-STRONGER record exact theorem/lemma/page numbers,
hypotheses, conclusion, publication/preprint date, and the specialization or
equivalence argument.

## Stop and successor rules

- If PA-EXACT, PA-EQUIV, or PA-STRONGER is verified, stop the downstream
  publication pipeline and close S042 with an exact prior-art/status
  reassessment requirement.
- If a high-probability lead cannot be resolved because the primary source is
  genuinely inaccessible or ambiguous, promote at most one source-resolution
  successor. Do not declare the audit clean.
- If the documented search finds no PA-EXACT/PA-EQUIV/PA-STRONGER result and
  leaves no unresolved high-risk lead, close with the precise wording:
  **no exact/equivalent/stronger-implying prior art located in the documented
  deep audit**. Do not upgrade this to a logical proof of novelty or prior
  openness.

A clean D41-01 outcome promotes Lean formalization as the next stage.

## Owner-authorized downstream roadmap after a clean audit

Proceed in this order only:

1. formalize the exact theorem/proof in Lean;
2. register the pinned Lean-verified result on Palomar, subject to its current
   requirements at execution;
3. write the paper;
4. post the arXiv preprint;
5. submit to E-JC.

Independent pre-submission external reviewer/consultation is deliberately
skipped by owner decision. Do not contact reviewers or authors in S042. E-JC's
ordinary editorial/referee process is the planned journal peer-review stage.

## Required S042 records

Create at least:

- `sessions/S042/INPUT_SNAPSHOT.md`;
- `sessions/S042/SEARCH_LOG.md`;
- `sessions/S042/DEEP_PRIOR_ART_AUDIT.md`;
- `sessions/S042/SOURCE_CHECK.md`;
- `sessions/S042/VALIDATION.md`;
- `sessions/S042/CLOSEOUT.md`.

Synchronize all authority at closeout and run the repository authority checker.
