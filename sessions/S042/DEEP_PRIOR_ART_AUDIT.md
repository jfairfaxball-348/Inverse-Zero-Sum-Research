# S042 deep prior-art audit

Date: 2026-10-06.
Unit: D41-01.
Status: COMPLETED — clean deep-search non-hit under the authorized taxonomy.

## Audited theorem

> A length-24 sequence `S` over `C_3^3\{0}` contains no two innerly
> non-zero-sum-joint short zero-sum subsequences, short meaning length at most
> 3, iff `S=U^3` for a squarefree short-free length-8 sequence `U`.

The audit required the same theorem, a proved equivalent formulation, or a
stronger theorem immediately implying it. Direct threshold values,
constructions, ordinary-`eta` inverse results and cap classifications were
not conflated with that full sequence theorem.

## Outcome

**no exact/equivalent/stronger-implying prior art located in the documented
deep audit.**

This is intentionally narrower than “novel” or “previously open”.

| Candidate / route | Class | Checked boundary |
| --- | --- | --- |
| Gao--Hui--Li--Li--Qu--Zhong 2024 | PA-INGREDIENT | Defines `eta^N`, direct value, `U^3` construction and deletion machinery; no converse classification of all length-24 extremals. |
| Fan--Gao--Wang--Zhong--Zhuang 2012 | PA-INGREDIENT | Full-rank ordinary short-zero-sum facts used in necessity. |
| Gao--Geroldinger--Wang 2011 | PA-INGREDIENT | Original Narkiewicz/`eta^*` framework and rank-two inverse conjecture. |
| Gao--Li--Peng 2011; Gao--Peng--Zhong 2013 | PA-INGREDIENT | Rank-two Narkiewicz/`N_1` line. |
| Fan--Hui--Zhong 2024 | PA-INGREDIENT | Rank-two revised-Narkiewicz inverse structure. |
| Fan--Zhong 2025 | PA-INGREDIENT | Joint short minimal zero-sum theory, rank two. |
| Hui--Zhong 2026 | PA-INGREDIENT | Complete rank-two inverse theory; current larger-rank status control. |
| Gao--Thangadurai 2003 | PA-INGREDIENT | Ordinary rank-three short-zero-sum-free extremal structure; different invariant/length. |
| Edel et al. 2007 affine-cap line | PA-INGREDIENT | Exact squarefree-core geometry only; no length-24 multiplicity-three necessity. |
| Other cap/multiple-cap/coding routes | PA-NONHIT | No primary theorem encoded the target positional hypothesis and forced `S=U^3`. |
| Factorization/proceedings/current bibliography routes | PA-NONHIT | No stronger target inverse theorem located. |
| Rank-three adjacent invariants | PA-NONHIT | Different forbidden configurations; no immediate specialization. |
| Thesis/dissertation/institutional leads | PA-MENTION | Metadata only; no primary target statement located. |
| Current preprint/author-bibliography sweep | PA-NONHIT | No additional serious rank-three `eta^N` inverse candidate located. |

There is no PA-EXACT, PA-EQUIV or PA-STRONGER entry.

## Finite-geometric equivalence boundary

In characteristic 3, a squarefree short-free length-8 core
`U\subset C_3^3\setminus{0}` corresponds, after adjoining 0, to a 9-cap
`U\cup{0}` in `AG(3,3)`: a line through 0 encodes a pair `x,-x`, and
an affine line of three nonzero distinct points encodes a zero-sum triple.

That is an exact equivalence at the **core** level. CAND-03 begins instead
with an arbitrary length-24 multisequence under a positional two-witness
avoidance hypothesis and must force multiplicity three on such a core.
Known cap uniqueness assumes a cap/set already exists and does not supply that
multiplicity/sequence rigidity. Hence the cap result is PA-INGREDIENT, not
PA-EQUIV or PA-STRONGER.

## Ordinary inverse boundary

Gao--Thangadurai classifies longest sequences with no short zero sum for the
ordinary invariant. CAND-03 permits short zero sums and forbids a particular
pair of overlapping short zero sums. The ordinary theorem therefore does not
immediately specialize to the target; it is structural input only.

## Current-status and grey-literature boundary

Hui--Zhong 2026 is the strongest temporal control because it uses the exact
Narkiewicz-sense `eta` inverse language, completely settles rank two, and
still describes larger-rank knowledge in terms of a few direct results. This
strongly supports the documented non-hit within the published lineage without
proving global novelty.

Thesis/dissertation and institutional searches found adjacent metadata but no
target primary statement. None is target-specific/high-probability enough to
trigger the unresolved-lead stop rule. Those leads remain PA-MENTION.

## Disposition

Neither the collision stop rule nor the unresolved-high-probability-lead stop
rule is triggered. The clean-audit successor rule applies: exact Lean
formalization is next.

Owner order remains Lean formalization -> Palomar registration (after
then-current requirement check) -> paper -> arXiv -> E-JC. Lean/Palomar
verification will not convert this search non-hit into a novelty proof.
