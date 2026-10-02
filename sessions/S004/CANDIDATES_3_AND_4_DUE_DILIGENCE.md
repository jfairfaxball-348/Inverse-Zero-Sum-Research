# S004 CAND-03 and CAND-04 due-diligence audit

Date of bounded source search: 2026-10-02.

This is a pre-proof literature/status record. It distinguishes source results
from bounded search observations. Search failure is never treated as evidence
that a question is open or novel. No source proof was independently verified,
and the programme performed no mathematical computation, enumeration,
counterexample search, proof attempt or formalisation.

CAND-01 remained the selected incumbent during this audit.

# Part I — CAND-03: inverse Narkiewicz-sense eta for C_3^3

## 1. Exact object and source-defined inverse problem

The controlling modern definition is Gao--Hui--X. Li--Y. Li--Qu--Zhong,
"On generalized Narkiewicz constants of finite abelian groups", Acta
Arithmetica 212 (2024), 133--172, DOI 10.4064/aa230118-1-10.

For a finite abelian group G, write G^bullet = G minus {0}. A sequence over
G^bullet is an unordered finite sequence with repetitions allowed. A short
sequence has length between 1 and exp(G). For two subsequences T_1,T_2 of a
ground sequence S, the relevant relation is indexed: they are innerly
non-zero-sum-joint when they can be represented by distinct index sets with
nonempty intersection whose intersection sum is nonzero.

eta^N(G) is the least t such that every sequence over G^bullet of length at
least t has two innerly non-zero-sum-joint short zero-sum subsequences.
The same source explains that the older Narkiewicz-sense invariant eta*(G)
from the Gao--Geroldinger--Wang line is equal to eta^N(G). Consequently both
notations and both the "innerly non-zero-sum-joint zero sums" and equivalent
"innerly joint short minimal zero-sums" formulations belong in prior-art
searches.

The inverse problem is stated explicitly in the modern rank-two literature:
classify sequences over G^bullet of length eta^N(G)-1 which do not have the
defining pair. Thus for G=C_3^3, where exp(G)=3, the exact CAND-03 object is

- S is a sequence over C_3^3 minus {0}; repetition is allowed;
- |S|=24;
- there do not exist two short zero-sum subsequences, each of length at most
  3, that are innerly non-zero-sum-joint in S.

This is not a squarefree-set or cap-set problem. Zero is excluded from the
ground alphabet but multiplicities are part of the sequence model.

## 2. Direct theorem provenance

Gao et al. (2024), Theorem 3.6, gives the generalized eta values used here.
Its rank-three odd-order clause yields

eta^N(C_{3^a 5^b}^3) = 8(3^a 5^b)+1,

and therefore eta^N(C_3^3)=25.

The paper also relates the generalized constants to classical eta/Property C
and D machinery. For C_3^3 the ordinary eta and s landscape and classical
Property D are known. That relationship supplies constructions and bounds in
the direct generalized problem; it is not an inverse classification theorem
for all length-24 eta^N-extremal sequences.

In particular, no transfer from ordinary Property D or an ordinary EGZ
classification to the CAND-03 inverse statement is licensed by the inspected
sources.

## 3. Earlier Narkiewicz line and factorization meaning

Gao--Geroldinger--Wang, "A Quantitative Aspect of Non-Unique Factorizations:
The Narkiewicz Constants", International Journal of Number Theory 7 (2011),
1463--1502, DOI 10.1142/S1793042111004721, is part of the older factorization
line. The eta* notation and associated inverse questions arise there in the
study of non-unique factorization invariants. The 2024 paper's eta^N
formulation therefore does not define an unrelated new invariant; it gives a
modern sequence-language formulation of the same Narkiewicz-sense eta
constant.

This alias matters for novelty searching. Searching only eta^N would miss the
eta* / Narkiewicz terminology and factorization literature.

## 4. Rank-two completion chain

Yushuang Fan and Qinghai Zhong,
"On joint short minimal zero-sum subsequences over finite abelian groups of
rank two", Journal of Combinatorial Theory, Series A 212 (2025), 105984,
DOI 10.1016/j.jcta.2024.105984, uses the equivalent language of innerly joint
short minimal zero-sum subsequences, determines the rank-two direct eta^N
constant and resolves a substantial homocyclic rank-two inverse case.

Wanzhen Hui and Qinghai Zhong,
"On the inverse problem of the Narkiewicz-sense eta-constant for finite
abelian groups of rank 2", Journal of Combinatorial Theory, Series A 224
(2026), 106238, DOI 10.1016/j.jcta.2026.106238, explicitly defines the inverse
problem at eta^N(G)-1 and completely settles it for finite abelian groups of
rank two.

The latter paper is therefore the nearest completed inverse theory, but its
theorems are rank two. No inspected theorem says that its structural
classification extends to C_3^3 or reduces the rank-three case to rank two.

## 5. Current-status and overlap audit

The bounded audit searched, through 2026-10-02:

- eta^N, eta*, revised/generalized Narkiewicz, Narkiewicz-sense eta, and the
  factorization terminology;
- innerly non-zero-sum-joint and innerly joint short minimal zero-sum
  subsequences;
- C_3^3, elementary 3-groups, rank three, higher rank, extremal length 24 and
  eta^N(G)-1 formulations;
- forward/backward citation trails around the 2011, 2024, 2025 and 2026 papers;
- recent publication lists, factorization-project records, preprints,
  theses/dissertations, surveys/books and conference records;
- adjacent inverse invariants such as disc(G), D_k(G), restricted-length
  zero sums and ordinary Property C/D.

Current bibliographic signals include Qinghai Zhong's current publication list,
the 2026 AMS monograph "Combinatorial Factorization Theory" by Geroldinger,
Grynkiewicz and Zhong, and the University of Graz factorization project records.
They confirm active work in the exact surrounding research ecosystem.

No inspected source supplied a complete inverse eta^N classification for
C_3^3, a theorem subsuming it through a wider rank-three family, or an explicit
statement declaring this exact C_3^3 inverse problem open. Those are bounded
search observations only.

Accordingly CAND-03 is not upgraded to EXPLICIT_OPEN_QUESTION.

## 6. Small-parameter, equivalence and degeneracy audit

- The ground set is C_3^3 minus {0}; repetitions are allowed. Any squarefree
  or cap-set result addresses a different object unless a source proves a
  reduction.
- The forbidden zero sums are short, so mixed lengths up to 3 matter. Unlike
  the exact p-term EGZ condition, the inspected sources do not authorize
  quotienting CAND-03 by arbitrary translation. A classification may safely
  use group automorphisms; it should not silently impose translation
  normalization.
- The known classical Property D of C_3^3 and associated Property C structure
  enter the 2024 direct argument, but source-level construction of generalized
  extremals does not imply that all generalized extremals have that form.
- The rank-two inverse theorem is a methodological and status baseline, not a
  structural theorem in rank three.
- The audit did not find a source establishing that C_3^3 is literally the
  unique "first unresolved higher-rank case" under every ordering of groups.
  The safe claim is narrower: it is a natural smallest-exponent rank-three
  case with a known direct eta^N threshold immediately beyond a completed
  rank-two inverse theory.

## 7. CAND-03 novelty/status matrix

| Scope | S004 classification | Programme consequence |
| --- | --- | --- |
| Definition of eta^N and sequence conventions | ESTABLISHED | Baseline |
| Equality eta^N=eta* / alternate Narkiewicz notation | ESTABLISHED | Search-equivalence key |
| eta^N(C_3^3)=25 | ESTABLISHED | Exact direct threshold |
| Rank-two eta^N inverse problem | ESTABLISHED / COMPLETED | Closest completed theory |
| Classical Property D/Property C input for C_3^3 | ESTABLISHED, DISTINCT STRUCTURAL INPUT | Does not classify eta^N extremals |
| Full length-24 C_3^3 eta^N inverse classification | SOURCE-DEFINED / CURRENT STATUS UNKNOWN | Survives; no openness certificate |
| Explicit source stating exact CAND-03 is open | NOT LOCATED | External status review remains material |
| Broader theorem already subsuming CAND-03 | NOT LOCATED IN BOUNDED AUDIT | Would retire/narrow if found |

## 8. Exact surviving CAND-03 contribution scope

The surviving full target is:

Classify all S in F(C_3^3 minus {0}) with |S|=24 having no two innerly
non-zero-sum-joint short zero-sum subsequences, equivalently under the
source-established minimal-zero-sum formulation, with all multiplicities,
support restrictions and exceptional forms explicit.

A natural presentation may identify forms up to automorphism of C_3^3. It
must not assume a translation equivalence that the mixed short-length
condition does not supply.

A substantial journal-level result would be a complete structural
classification, or a theorem reducing all extremals to a small
source-checkable structural family and thereby materially resolving the
rank-three inverse problem. An isolated orbit, a finite list produced only by
computation, or a catalogue without a structural necessity-and-sufficiency
theorem would not meet the programme's intended contribution bar.

CAND-03 therefore SURVIVES S004 as a coherent candidate, with status
SOURCE-DEFINED / CURRENT STATUS UNKNOWN.

## 9. CAND-03 publication fit

Electronic Journal of Combinatorics was rechecked on 2026-10-02. Its official
pages describe a fully refereed journal for substantial work throughout
discrete mathematics. Its AI policy explicitly permits assistance in
researching and writing mathematics, including help finding a proof or
argument, while assigning authors responsibility for checking proofs, details
and citations. New submissions use the web system, initially with a PDF plus
HTML abstract; the checklist requires AI-policy compliance. Its referee
conflict rules require disclosure of close personal relationships, joint
grants, closely related collaboration, student/supervisor relationships and
same-department relationships.

CAND-03 is a credible E-JC subject fit: it is an inverse sequence-structure
problem in additive/combinatorial number theory. Zeng--Yuan (E-JC 30(4),
2023, P4.21) supplies a recent inverse short-zero-sum precedent. The exact
generalized-Narkiewicz baseline has instead appeared in Acta Arithmetica and
JCTA, so venue choice should follow the eventual theorem's mathematical
emphasis rather than publication-history imitation.

Journal of Combinatorial Theory, Series A is a credible backup for CAND-03
because it published both the 2025 and 2026 nearest rank-two generalized
Narkiewicz inverse papers. Elsevier's journal-wide generative-AI policy,
updated June 2026, expressly allows responsible AI use in the research process
and formal research methods with human oversight and disclosure. Any
journal-specific exception must still be rechecked at submission.

No acceptance prediction is made.

## 10. CAND-03 reviewer reassessment

Exact source-line experts include Qinghai Zhong, Wanzhen Hui, Xue Li, Yushuang
Fan and Alfred Geroldinger, but each is an author of the defining, predecessor
or nearest-completion Narkiewicz literature. They are exceptionally useful
status experts; that proximity makes them less clean as the first independent
reviewer of a proposed extension.

Two independent leads stood out:

- David J. Grynkiewicz: broad inverse zero-sum expertise, author of major
  structural zero-sum work, and 2026 coauthor of the AMS monograph
  "Combinatorial Factorization Theory". He is not an author of the 2024
  defining generalized-Narkiewicz paper or the 2025/2026 rank-two eta^N
  completion papers.
- Pingzhi Yuan: substantial inverse and short-zero-sum expertise, including
  Zeng--Yuan's 2023 E-JC inverse paper and current 2026 zero-sum work, without
  authorship of the controlling Narkiewicz papers.

The bounded audit selects David J. Grynkiewicz as the strongest independent
first CAND-03 proposal/status-review lead found, with Pingzhi Yuan as a strong
alternative. Actual conflicts, affiliation/contact route, availability and
willingness remain unverified and must be refreshed before any authorized
contact.

An unsent Stage-1 package is recorded separately. No outreach occurred.

# Part II — CAND-04: Property D for C_p^3, p>=7

## 11. Exact Property-D definition

Gao--Geroldinger--Schmid, "Inverse zero-sum problems", Acta Arithmetica
128.3 (2007), defines Property D for C_n^r by requiring

s(C_n^r)=c(n-1)+1

for some positive integer c and requiring every sequence S of length
c(n-1)=s(C_n^r)-1 with no zero-sum subsequence of length n to have the
repeated-support form T^(n-1) (equivalently c distinct support elements, each
with multiplicity n-1 in the standard formulation).

The same source conjectures Property D for every C_n^r.

Thus Property D remains a meaningful named conjectural property even when the
numeric value of s(C_n^r) is not independently known. But a clean explicit
inverse classification at a displayed length requires the direct EGZ
threshold to be known.

## 12. Direct rank-three EGZ dependency

For odd n the classical lower construction gives

s(C_n^3) >= 9n-8.

Edel--Elsholtz--Geroldinger--Kubertin--Rackham and subsequent higher-rank
literature record the conjecture that equality holds for every odd n. Fan,
Gao and Zhong, "On the Erdos--Ginzburg--Ziv constant of finite abelian groups
of high rank", Journal of Number Theory 131 (2011), 1864--1874,
DOI 10.1016/j.jnt.2011.02.017, explicitly treats higher-rank direct and
inverse methods and retains the odd-rank-three 9n-8 formula as a conjectural
direct frontier outside known families.

Recent field material located in the audit continues to present

s(C_p^3)=9p-8

for odd primes as a problem/conjectural formula rather than a general theorem.

The bounded current-status search did not locate a 2024--2026 theorem proving
s(C_p^3)=9p-8 for every prime p>=7 or an exact theorem isolating all those
prime cases. This non-hit is not an openness certificate. It does mean the
required direct baseline was not established by the inspected literature.

## 13. Property D versus Property D0

This distinction is decisive.

Property D0 with respect to c is weaker: it only asserts the existence of an
n-term zero sum in sequences already presented in the special form
g T^(n-1) with |T|=c. It is a tool for proving direct constants under lifting
hypotheses; it is not the extremal classification demanded by Property D.

Fan--Gao--Zhong (2011) record Property D0 with respect to 9 for the prime
rank-three cases p=7,11,13, with those cases verified computationally in the
cited earlier work. That statement must not be upgraded to Property D.

By contrast, genuine Property-D families recorded in the literature include
C_3^r and rank-three C_{3^a5^b}^3 (including the established p=3 and p=5
rank-three cases), along with separate 2-power families. Those results do not
cover primes p>=7.

## 14. Multiplicativity/lifting boundary in rank three

The general 2007 multiplicativity theorem for Property D is conditional on
compatible normalized direct constants for the factors and product. It is not
the unconditional rank-two prime-reduction statement used in CAND-01.

Consequently the known p=3 and p=5 Property-D cases do not reduce the proposed
all-prime p>=7 family to a settled residue. Likewise, the D0 information for
7,11,13 supports some direct lifting arguments but does not classify
s(C_p^3)-1 extremal sequences for those primes.

## 15. CAND-04 current-status search

The audit searched:

- Property D, Property D0, Gao's Property-D conjecture and repeated-support
  extremal formulations;
- C_p^3, elementary abelian rank three, 9p-8, 9p-9 and s(C_p^3);
- p=7,11,13 and prime/power/arithmetic-family formulations;
- higher-rank EGZ constants, affine-cap/finite-geometry connections where
  sources explicitly connect them, and inverse-EGZ terminology;
- forward/backward citations of Gao--Geroldinger--Schmid (2007) and
  Fan--Gao--Zhong (2011), recent papers/preprints, surveys, theses and
  conference material through 2026-10-02.

No inspected source establishes the full direct formula for all p>=7, full
Property D for those primes, or a source-certified list of unresolved primes.
These remain bounded search observations.

## 16. CAND-04 novelty/status matrix

| Scope | S004 classification | Programme consequence |
| --- | --- | --- |
| General definition/conjecture for Property D | ESTABLISHED CONJECTURAL FRAMEWORK | Baseline |
| Lower bound s(C_p^3)>=9p-8 for odd p | ESTABLISHED | Baseline |
| Exact formula s(C_p^3)=9p-8 for all p>=7 | SOURCE-CONJECTURAL / CURRENT GENERAL THEOREM NOT LOCATED | Unresolved direct dependency |
| Property D for p=3,5 and C_{3^a5^b}^3 | ESTABLISHED | Already covered families |
| Property D0 w.r.t. 9 for p=7,11,13 | ESTABLISHED, WEAKER PROPERTY | Does not settle Property D |
| Property D for all primes p>=7 | SPECIALIZATION OF NAMED CONJECTURE; DIRECT DEPENDENCY UNRESOLVED | Not retained as a clean standalone inverse target |
| Explicit current source declaring exact all-p>=7 Property-D specialization open | NOT LOCATED | No openness certificate |

## 17. CAND-04 disposition and surviving broader frontier

CAND-04 is RETIRED AS A CLEAN STANDALONE INVERSE TARGET in its S001 form.

Reason: the proposed family does not sit beside a uniformly known explicit
direct EGZ threshold. The expected rank-three value 9p-8 is itself part of the
higher-rank direct frontier for general p>=7. Calling the task simply an
inverse classification would conceal a material direct theorem dependency.

The named Property-D specialization remains mathematically meaningful, but a
source-honest journal project for general p>=7 would be a materially broader
combined direct-and-inverse programme: establish the exact direct threshold
where needed and then establish/classify Property D extremals. That is a
different target identity and is not silently substituted for CAND-04.

A result for an isolated prime would need separate novelty/significance review;
the S004 project does not preserve a finite collection of small-prime checks
merely to keep the candidate alive.

## 18. CAND-04 publication and reviewer refresh

If the broader combined direct/inverse rank-three frontier were explicitly
selected in a later owner decision, E-JC has clear subject/workflow fit under
the same current official scope and substantive-AI policy. Journal of Number
Theory would be a credible backup because the controlling 2011 higher-rank EGZ
paper and other rank-three direct work appeared there, and Elsevier's June
2026 policy explicitly permits AI use in research methods with disclosure.

Because the clean CAND-04 target is retired, S004 prepares no reviewer package
for it. For any later deliberately broadened rank-three Property-D programme,
Jan-Christoph Schlage-Puchta is the strongest conflict-appropriate first
Property-D lead found in the bounded audit: his 2025 work is the current
rank-two Property-D advance and he is not an author of the controlling 2007
general framework or 2011 rank-three direct paper. Wolfgang A. Schmid,
Benjamin Girard and the Fan--Gao--Zhong authors are especially strong exact
status experts but are closer to the controlling framework/direct literature;
David J. Grynkiewicz is a strong broader independent inverse specialist.
Pingzhi Yuan remains a credible broader zero-sum expert but was not the most
rank-three-Property-D-specific lead located.

No willingness or conflict status is inferred.

# Part III — four-candidate comparison

## 19. Comparable research-space matrix

This matrix compares mathematical identity and source position only. It does
not rank proof difficulty, computational cost or probability of success.

| Dimension | CAND-01 | CAND-02 | CAND-03 | CAND-04 |
| --- | --- | --- | --- | --- |
| Identity | Rank-two Property D for C_n^2 | Ordinary inverse EGZ for C_2+C_{2m}^2, m>=2 | Narkiewicz-sense eta^N inverse for C_3^3 | Rank-three Property D for prime C_p^3, p>=7 |
| Direct threshold | Known: s(C_n^2)=4n-3 | Known: s=8m+1 | Known: eta^N=25 | Not known uniformly in proposed prime range; 9p-8 remains a direct dependency |
| Surviving breadth after audit | Full named conjecture identity, but operative unknown residue compressed to finitely many primes below an unspecified large-prime cutoff | Infinite-family structural classification remains source-defined | Fixed rank-three group, complete extremal structural classification remains source-defined | Clean inverse version retired; broader joint direct/inverse programme would be a different target |
| Proximity to prior completion | Sufficiently large primes settled; multiplicativity reduces all n to primes | Direct theorem complete; nearest ordinary inverse theorem is a non-isomorphic rank-three family | Rank-two generalized inverse theory complete; no rank-three completion located | Direct constant itself incomplete in general; D0 known for some primes is weaker than D |
| Main overlap/status risk | Hidden effective cutoff or exceptional-prime/all-prime cleanup | Hidden thesis/preprint/equivalent formulation; no explicit open declaration | eta*/eta^N alternate terminology, factorization literature or hidden higher-rank theorem; no explicit open declaration | Mistaking D0 for D or treating conjectural 9p-8 as established |
| Source support for unresolved frontier | Strongest provenance: named conjecture plus dated partial theorem; exact residual list still unknown | Sharp source gap beside solved direct threshold, but status remains search-defined | Exact direct threshold plus complete rank-two predecessor; rank-three status remains search-defined | Source evidence shows an unresolved direct dependency, defeating the intended clean-target premise |
| Contribution type if completed | Named-conjecture completion or structural/effective elimination of finite residual layer | Infinite-family classical inverse structural theorem | Complete first-natural rank-three generalized-Narkiewicz structural theorem / factorization-linked inverse result | If deliberately broadened: combined higher-rank direct and inverse theorem |
| Significance character | Closes a classical Property-D programme in rank two | Supplies a missing structural inverse companion for a natural rank-three EGZ family | Extends a newly completed rank-two Narkiewicz inverse theory into a concrete rank-three case with factorization meaning | Broader frontier would address both a major direct constant and structural conjecture, but is not the audited clean target |
| Current programme disposition | SURVIVES; incumbent | SURVIVES | SURVIVES | RETIRED AS CLEAN TARGET |

No "best" target is selected here. The three survivors represent genuinely
different research identities:

- CAND-01: strongest named-conjecture provenance, but a logically compressed
  finite residual layer after the sufficiently-large-prime theorem;
- CAND-02: broadest surviving classical infinite-family inverse
  classification, with weaker source-level certification of current openness;
- CAND-03: a fixed-group generalized inverse classification with an exact
  threshold, complete rank-two predecessor and a factorization-theoretic
  identity, but again without an explicit source declaring the case open.

These differences are not reducible to a source-dictated automatic choice.

## 20. Decision frontier

S004 retires CAND-04 as a clean standalone inverse target and leaves CAND-01,
CAND-02 and CAND-03 as credible audited candidates.

CAND-01 remains the incumbent because the owner has not authorized a switch.
The completed comparison leaves a genuine owner research-identity choice among
the three survivors. Under the repository protocol this activates an owner
selection blocker and suppresses any next-session prompt.

No reviewer package has been sent. No proof/computation gate is opened.
