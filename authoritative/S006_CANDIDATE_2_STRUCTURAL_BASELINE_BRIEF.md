**Closeout protocol note (D-030--D-032):** S006 itself remains governed by this brief's no-proof boundary and performed no new mathematics. The owner changed the cross-session gate rule at closeout: external-review completion is no longer a prerequisite for mathematical investigation in S007 and later work. Any forward-looking gate language in this historical S006 brief is superseded accordingly.

# S006 — CAND-02 structural baseline and dependency-map brief

## Status and purpose

CAND-02 is selected:

> For every integer `m>=2`, classify all length-`8m` sequences over
> `G_m=C_2\oplus C_{2m}\oplus C_{2m}` having no zero-sum subsequence of
> length `2m`.

The owner reports that the S005 Xue Li Stage-1 status/proposal message was sent
on 2026-10-02. A reply is pending. **At S006 entry under the then-current
schema**, the external-review and legacy computation gates were CLOSED. D-030
later supersedes that forward-looking coupling for S007 and later work.

S006 is an independently runnable **pre-proof** unit. Its purpose is to make the
eventual mathematical investigation efficient and auditable without crossing
the gate into new proof search.

## Required entry work

1. Pin live `main`, reconcile intervening changes, and confirm S006 is unique.
2. Read `AGENTS.md`, `authoritative/START_HERE.md`, all authority files it
   requires, S003 and S005 CAND-02 records, and this brief.
3. Preserve the exact CAND-02 quantifiers and ordinary-EGZ invariant. Do not
   silently replace the target with `disc(G)`, a different rank-three family,
   a small-`m` catalogue, or another zero-sum invariant.
4. Treat the owner-reported Xue Li send only as transmission. Do not assume a
   reply, willingness, proposal approval, novelty certification or manuscript
   review agreement.

## Bounded research tasks

### 1. Inspect the controlling direct proof, not only its theorem statement

Obtain and inspect the full primary-source proof of Girard--Schmid's result
`s(C_2\oplus C_{2m}\oplus C_{2m})=8m+1`. Record the theorem exactly,
including conventions and any auxiliary constants, subgroup/quotient setup,
parity arguments, inductive steps, projection devices or structural lemmas that
actually enter the proof.

Separate:
- statements proved for the exact equal-factor family;
- statements imported from earlier literature;
- arguments that are merely existential and do not classify extremals;
- places where an inverse classification would require strictly stronger
  information.

### 2. Inspect the closest inverse machinery

Read the full relevant parts of the Girard--Schmid inverse paper for
`C_2\oplus C_2\oplus C_{2n}` and the closest source-backed inverse/rank-three
work already identified in S003/S005. Extract only results whose hypotheses,
conclusions and proof roles are understood well enough to cite accurately.

For every candidate tool, classify it as:
- **DIRECTLY APPLICABLE** to CAND-02 as stated;
- **APPLICABLE AFTER A PUBLISHED REDUCTION**, naming the reduction;
- **ANALOGY ONLY / DIFFERENT FAMILY OR INVARIANT**;
- **SOURCE GAP / PROOF NOT YET INSPECTED**.

Do not convert analogy into a lemma for the selected target.

### 3. Normalize the mathematical language

Create a compact notation/convention sheet for the later proof phase:
sequence notation, multiplicities, subsequence relation, sum map, exponent,
EGZ constant, the exact extremal length, natural subgroup/quotient maps and any
coordinate conventions used by the controlling sources.

Where sources use incompatible notation, record a translation table rather than
silently harmonizing them.

### 4. Build the dependency and proof-readiness map

Without attempting new proofs, identify the structural obligations a complete
CAND-02 classification would have to discharge. Tie each obligation to one of:
- already proved by a cited source;
- follows from a cited source after an explicit published reduction;
- genuinely unprovided by the inspected literature;
- status uncertain because a source/proof remains uninspected.

Make the map fine-grained enough that a later mathematical session can choose
one bounded lemma/reduction without rediscovering the literature architecture.

### 5. Focused literature maintenance

Search only as needed to resolve dependencies exposed by the proof inspection:
earlier lemmas cited by Girard--Schmid, later refinements, alternate statements,
or exact structural results that the due-diligence searches may not have exposed
from titles/abstracts. Prefer primary sources and record access boundaries
(full proof inspected versus statement/abstract only).

A non-hit is not evidence of openness.

## Required outputs

Create under `sessions/S006/` at least:

- `INPUT_SNAPSHOT.md`;
- `CONTROLLING_PROOF_MAP.md`;
- `PUBLISHED_TOOLKIT.md`;
- `DEPENDENCY_AND_GAP_MAP.md`;
- `CLOSEOUT.md`.

Update authority registers/claims/sources only where S006 actually changes the
supported record.

## Prohibited work

S006 must not:
- attempt a new proof or formulate programme lemmas as if proved;
- enumerate or compute small cases;
- run experiments, searches over examples or formalisation;
- use LLM agreement as mathematical evidence;
- contact Xue Li again or approach another reviewer;
- infer that CAND-02 is open from search failure;
- alter the then-current gate state during S006. The owner later changed the
  cross-session gate architecture at closeout through D-030--D-032.

## Closeout

Validate with `python3 scripts/check_authority.py`, synchronize all changed
authority records, commit the useful checkpoint to `main`, and verify the
remote SHA. If an owner blocker becomes active, suppress the next-session prompt
as required. If no blocker is active and another independent pre-proof unit
remains useful while the reply is pending, prepare exactly one ready prompt;
otherwise record the true dependency rather than inventing progress.
