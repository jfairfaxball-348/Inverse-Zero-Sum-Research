# Authoritative entry point

Repository: https://github.com/jfairfaxball-348/Inverse-Zero-Sum-Research

## Read in this order

1. AGENTS.md.
2. authoritative/STATE.json and authoritative/PROJECT_CHARTER.md.
3. docs/SESSION_PROTOCOL.md and docs/CLOSEOUT_TEMPLATE.md.
4. authoritative/DECISIONS_AND_BLOCKERS.md.
5. authoritative/ROADMAP.md and authoritative/SESSION_LEDGER.md.
6. authoritative/TARGET_REGISTER.md, authoritative/PUBLICATION_REGISTER.md, authoritative/REVIEWER_REGISTER.md, authoritative/CLAIMS_AND_SOURCES.md, and authoritative/FAILURE_AND_LESSON_LEDGER.md.
7. The completed S002–S020 records before later target-specific work, with
   particular attention to the S010 and S020 audits, S011 exchange obstruction,
   S012 progressive-block repair, S013 source-route comparison, and S014–S019
   ambient/counting/incidence chain.

## Current state

**S021 is completed and the owner has selected shortlist option 3:
CAND-05. B-009 is resolved. CAND-05 is now the programme's exact selected
target. S022 is READY as a full CAND-05 due-diligence and proof-readiness
session before mathematical investigation resumes.**

Selected target:

> For every `m>=2`, classify every sequence over
> `G_m=C_2\oplus C_{2m}\oplus C_{2m}` of length
> `eta(G_m)-1=6m+1` having no nonempty zero-sum subsequence of length at
> most `exp(G_m)=2m`.

- Target gate: OPEN — the owner selected an exact theorem identity.
- Publication gate: OPEN — E-JC remains the leading eligible route, subject to
  S022's CAND-05-specific significance/fit refresh.
- Mathematical-investigation gate: **CLOSED temporarily** — CAND-05 has not yet
  received the full target-specific due-diligence/source-baseline audit.
- External-review gate: CLOSED; confirmed reviewers: NONE.
- Active owner blockers: NONE.
- Next session: S022.
- Xue Li Stage-1 remains CAND-02-specific, owner-reported SENT 2026-10-02 /
  REPLY PENDING, and does not transfer to CAND-05.

CAND-02 is now a historical, paused target. Its S006--S020 mathematics remains
durable programme evidence. CAND-02-specific route-stop decisions do not
silently become theorem-level restrictions on CAND-05; any reused statement or
mechanism must be justified for the stronger ordinary-`eta` hypothesis.

## Current mathematical frontier

Preserve S008's odd-fiber decomposition and Property-D scope, S009's labelled
footprint, S010-P3/P4, S011's original-position lifting defect and S012's exact
progressive-splice cardinality gap. The local-hole/capacity route remains
stopped.

S013 compared three distinct source routes against those exact hypotheses:

- restricted-length/local zero-sum results: current universal cutoffs operate
  at or above the exponent, while S012 needs a zero sum of length at most
  `c+1<=m-1`;
- homocyclic `C_m^2` stability/equality: no new checked all-`m`
  ordinary-EGZ stability/equality input was identified beyond the already-used
  Property-D route; current `D_k`, `eta^N` and `disc` results impose
  different forbidden configurations;
- eta-core/equality reduction: Girard--Schmid 2019 remains conditional at the
  exact D6-08 point, while the 2020 inverse theorem covers a different family
  and adjacent invariants do not produce an ordinary eta-free `6m+1` core.

No source non-hit is an openness or novelty claim. Full details:
[S013 source-route comparison](../sessions/S013/SOURCE_ROUTE_COMPARISON.md).

## Post-S013 owner strategy resolution

D-050 records the owner's choice of B-006 option 1: retain the full CAND-02
target and authorize a materially new strategy rather than narrowing or
switching targets.

S014 is prepared on a global **one-term extension saturation / support-cloning**
mechanism. It starts from the exact direct threshold, not from D6-08 or the
stopped kernel-capacity route: for an extremal length-`8m` sequence, adjoining
one term produces a length-`8m+1` sequence and therefore forces a
`2m`-term zero sum. S014 must rigorously test what additional rigidity follows
when the adjoined term duplicates a support value, including the positional
swap argument and simultaneous constraints across all support values.

No consequence of that mechanism is authoritative until proved in S014.
If it yields only the generic saturation identity or collapses back to a
stopped route, S014 must record that failure and not schedule a cosmetic
follow-up. If it yields a genuinely new structural obligation, the next
session may pursue that obligation under a fresh brief.

The target remains SOURCE-DEFINED / CURRENT STATUS UNKNOWN. External review is
still CLOSED and parallel; Xue Li's reply remains pending absent substantive
committed feedback. S020 remains the next periodic audit if the programme
reaches it.

## Frontier after S014

S014 rechecked the published equal-factor threshold
`s(G_m)=8m+1` and used it globally, before any quotient reduction. For
`n=2m` every CAND-02 extremal satisfies
`Sigma_{n-1}(S)=G_m=Sigma_{3n+1}(S)`.

The support-clone positional swap is valid: every `(n-1)`-term
representation of `-a` contains all old copies of the support value `a`.
This yields the exact ambient replacement core
`K_x(S)`: replacing old position `p` by `x` preserves extremality iff
`p in K_x(S)`. Each core has size at most `n-1`.

New all-m consequences include `v_a(S) != n-2`; at multiplicity `n-3`
a non-`a` pair summing to `2a` is forced, and at multiplicity `n-1`
the target representation is unique. These are internal programme deductions,
not novelty-certified results.

S015 is prepared on D14-01: determine whether a support core can contain a
different-valued position, `K_a(S)\P_a != empty`, using the simultaneous
ambient core system. It must not collapse into the stopped kernel
one-change/local-hole/capacity route.

The target remains SOURCE-DEFINED / CURRENT STATUS UNKNOWN. External review is
CLOSED and parallel; Xue Li's reply remains pending absent substantive
committed feedback. S020 remains the next periodic audit.

## Authority and reconciliation rule

Pin live main before reading its authority. The bootstrap predecessor remains 32b9f63c393995de5dddf7e8367d42e339816c24. A commit cannot include its own hash: each session records the actual incoming live hash and the close report externally verifies the outgoing remote hash.

If a pasted prompt names an older revision, inspect intervening changes and reconcile session identity, scope and blockers before proceeding. Historical records may describe earlier gate rules; D-030--D-032 supersede any statement that made external-review completion a prerequisite for mathematical investigation. Do not rewrite historical facts as though the later rule applied at the time.

STATE.json is the machine-readable index. Detailed linked records carry supporting evidence. Any conflict is an integrity problem to reconcile, not an invitation to choose the convenient version.

## Frontier after S015

S015 stayed entirely in the ambient group. If a safe replacement deletes a
position of value `b` and inserts `x`, the full family
`R_x(S)` transports bijectively to the reverse target family in the replaced
extremal, and the core transports exactly. Therefore every `K_x(S)` is a
union of complete support value classes; safe replacement is all-or-nothing on
copies of the deleted value.

For a nontrivial support incidence `b -> a`, S015 proves
`v_a<=n-4`, `v_b<=n-3`, and `v_a+v_b<=n-1`. In particular
multiplicity `n-3` is isolated, while `n-2` remains forbidden and
`n-1` was already isolated. Each source occurrence forces an exact
one-step deficit descent after deletion.

The same safe move yields an ambient `(n-2)` common-deletion witness
containing the transported core. Every representation family also factors into
its fixed core and a residual family with empty positional intersection:
deficit zero is unique, deficit one is an equal-valued reservoir of at least
two outside positions, and deficit two is the first unresolved near-full
stratum.

S015 does not prove `K_a=P_a` for all support values. D14-01 is partially
resolved by the global reconstruction theorem. S016 is prepared on D15-01:
determine whether a nontrivial support core can have
`delta_a=n-1-|K_a|<=2`, using only the new ambient system. It must stop
rather than re-enter the old kernel/capacity/progressive architectures.

CAND-02 remains SOURCE-DEFINED / CURRENT STATUS UNKNOWN. External review is
CLOSED and parallel; Xue Li's reply remains pending absent substantive
committed feedback. S020 remains the next periodic audit.


## Frontier after S016

S016 derives an exact **threshold deletion-star** normal form for near-full
ambient cores. If `K_a` has deficit `delta`, adjoining a fresh target
token gives `U=MO` with `M=K_a a_*`. Every deletion of a token of `M`
is extremal, every corresponding core is `M` minus that token, and the same
outside residual family reconstructs all representations. Thus `M` is
exactly the positional intersection of every `n)-term zero sum in `U`.

For `delta=0` there is a unique `n)-zero sum. For `delta=1` the zero
sums are `M` plus one term from one equal-valued reservoir. For
`delta=2` they are `M` plus an edge of a completely classified fixed-sum
value-class graph.

The S015 common-deletion witness is not independent in this normalization. The
remaining deficit-descent input gives the exact shifted exchange
`|Y|=delta+|X|`,
`sigma(Y)-sigma(X)=q+u-t`. The present ambient theorems do not exclude the
shifted-residual or cross-boundary escape modes. Therefore S016 does not prove
or construct a nontrivial near-full core.

Per D-050's anti-churn rule, no cosmetic S017 is scheduled. **B-007 is active**
for owner strategy reassessment. While it is active there is no live next-
session prompt. The owner must choose a materially new full-target mechanism or
source-acquisition direction, a deliberate narrowing/re-audit, or target
reassessment.

CAND-02 remains SOURCE-DEFINED / CURRENT STATUS UNKNOWN. Target, publication
and mathematical-investigation gates remain OPEN; external review remains
CLOSED. Xue Li's reply remains pending. S020 remains the next periodic audit if
the programme later reaches it.


## Owner resolution after S016

D-057 resolves B-007 by retaining full CAND-02 and authorizing a materially new
zero-sum counting/congruence route. S017 is READY and is source-first: it must
verify exact primary-source counting identities for exponent-length zero sums
and test them against S016's exact threshold-family cardinalities. It must not
repackage replacement-core transport, shifted exchanges, the stopped
D7--D10/capacity/Fano architecture or the progressive-block route.

CAND-02 remains SOURCE-DEFINED / CURRENT STATUS UNKNOWN. Mathematical
investigation remains OPEN and external review CLOSED. Xue Li's reply remains
pending absent substantive committed feedback. S020 remains the next periodic
audit.

## Frontier after S017

S017's source-first count audit found one exact transfer. When `n=2m` is a
power of two, Gao--Geroldinger 2007 applies to `G=C_2+C_n+C_n` at both
`|U|=4n+1` and every length-`4n` deletion-star extremal. Its proof recurrence
with source parameter `kappa=2` yields

`1+N_n(U)+N_{2n}(U)+N_{3n}(U)+N_{4n}(U)=0 (mod 4)`.

Subtracting the congruence for a deletion `U tau^{-1}` gives

`N_n(U)+A_{2n}(tau)+A_{3n}(tau)+A_{4n}(tau)=0 (mod 4)`

for every `tau` in the common core, and summing gives

`I_{2n}+I_{3n}+I_{4n}=delta N_n(U) (mod 4)`.

The same source also makes all-length zero-sum incidence through each core
token divisible by eight. This is a genuine new counting dependency but not
yet an exclusion: the `2n`/`3n` incidences remain uncontrolled.

For mixed-primary `n`, no p-group theorem is imported. A Sylow projection
forgets the complementary-primary sum and therefore does not preserve `N_n`.
S018 is prepared on D17-01: close the higher-length incidence terms on the
verified 2-primary class, or rigorously stop if they remain free. A mixed-
primary transfer is admissible only from an exact full-group prescribed-sum
theorem. S020 remains the next periodic audit.


## Frontier after S018 — n-wise binary incidence shadow

S018 proves `A_3n(x)=A_n(x) mod 2`, `A_2n(x)=A_4n(x) mod 2`, and for every nonempty `D` with `|D|<=n`, `A_n(D)+A_2n(D)+A_3n(D)+A_4n(D)=0 mod 2`. The n-layer is the exact S016 residual family and the 4n layer is explicit, so the combined 2n/3n codegrees recover the reservoir/edge graph. The strict source length bound blocks mod-4 double deletion and all kappa=3 use. S019 is READY on the genuinely narrower binary layer-separator/design problem and must stop if it only renames the remaining bit. Mixed-primary status is unchanged. S020 remains the next periodic audit.


## Frontier after S019 — binary design realization is non-separating

Let X be the 4n+1 positions of the S016 threshold sequence, with n a power of
two. The Frankl/Wilson mod-2 rank formula gives

- rank W_{n,3n} = C(4n+1,n);
- rank W_{n,2n} = C(4n+1,n)-1.

The one missing 2n row component is only the even total n-codegree condition.
It does not isolate the 2n layer from the 3n layer.

S019 proves a stronger direct realization statement. For every n-block N,
the family of all 3n-blocks containing N has, modulo two, exactly the same
nonempty codegrees through order n as N itself. For every 4n-block H, all
2n-subblocks of H have the same nonempty codegrees through order n as H, while
their total number is even. Finally, all 2n-subsets of any fixed 3n-set form
an odd family whose nonempty codegrees through order n are all even.

Taking symmetric differences therefore builds abstract 3n and 2n block
families with A_3n(D)=A_n(D) and A_2n(D)=A_4n(D) for every nonempty
|D|<=n, while also matching the known global layer parities. Hence every S016
delta=0/1/2 n-layer signature satisfies the complete binary inclusion/design
constraints currently available.

This does not show that the abstract blocks are zero-sum blocks, does not
resolve the modulo-4 singleton split, and supplies no mixed-primary theorem.
Accordingly D18-01 is closed only as a **pure binary-design route no-go**.
Per D-063, no equivalent incidence continuation is scheduled. S020 is the
periodic S011–S020 audit and strategy reassessment.

## Frontier after S020 audit

S020 treats the S014–S019 chain as one dependency history. The ambient
replacement-core route generated real all-m structure, then stopped at S016's
shifted-residual/cross-boundary escape. The distinct D-057 counting route
generated real 2-primary congruence/incidence constraints, then S019 proved
that every current binary shadow is realizable in unrestricted design space.

The remaining modulo-4/actual-zero-sum arithmetic is not thereby solved, but it
does not by itself justify another incidence session. A genuine successor needs
a source- and hypothesis-justified arithmetic or otherwise non-equivalent input.
For mixed-primary n, the exact missing source remains a theorem preserving the
full-group prescribed sum at the required fixed lengths.

No such immediately runnable dependency is present in committed authority.
B-008 therefore suppresses S021. Required owner action is to choose one of:
retain full CAND-02 with a genuinely new strategy/source-acquisition direction;
deliberately narrow/reframe to a source-justified contribution and re-audit
that exact result; or reassess/switch target. Until that choice, there is no
live next-session prompt.

## Post-S020 owner disposition

D-066 records the owner's choice of B-008 option 3. S021 is a bounded
target-reassessment session, not another mathematical investigation of
CAND-02. The S006–S020 CAND-02 record remains durable evidence and should be
used to assess strategic risk, but not as a reason to manufacture a supposedly
easier problem.

The final target change remains an owner decision after S021's refreshed
source/status comparison.

## S021 target reassessment outcome

S021 freshly re-audited CAND-01 and CAND-03, checked the CAND-04 retirement
condition, and ran the bounded replacement discovery pass. It recommends
CAND-03 because the exact direct threshold is settled, the rank-two inverse
Narkiewicz-sense eta theory is now complete, the target is a fixed rank-three
structural theorem, and its milestone/partial-contribution geometry is clearer
than CAND-02's demonstrated long all-parameter architecture.

CAND-01 remains viable but its sufficiently-large-prime theorem leaves the
operational residual layer finite yet non-explicit. CAND-05 is admitted as a
new viable alternative: classify ordinary eta-extremal length-`6m+1`
sequences over `C_2+C_{2m}+C_{2m}`, `m>=2`. Its direct threshold is known,
but its all-m rank-three scope still carries substantial recurrence risk.

CAND-04 remains retired: no positive primary evidence was found removing the
unresolved direct `s(C_p^3)=9p-8` dependency. Full CAND-02 remains durable
historical work but is not shortlisted after the S020 strategic audit.

B-009 is active. No S022 brief or live prompt exists until the owner selects
CAND-03, CAND-01 or CAND-05.

## Post-S021 owner target selection — CAND-05

The owner resolved B-009 by choosing **option 3: CAND-05**. This is an explicit
target switch from historical CAND-02.

CAND-05 is the ordinary inverse `eta` problem for
`C_2+C_{2m}+C_{2m}`, `m>=2`, at length `6m+1`. S021 established only
a bounded discovery-level status boundary. S022 therefore performs the
S002/S003-style full target audit before any proof programme begins.

The mathematical-investigation gate is temporarily CLOSED for that reason.
S022 must reconstruct the exact direct theorem, search current prior art and
small/arithmetic cases, inspect the closest genuine inverse-`eta` machinery,
check for hidden Property-D/direct-constant dependencies, define meaningful
partial-contribution standards, and refresh publication/reviewer routes. If the
target survives with mature due diligence, S022 may reopen the gate and prepare
one bounded S023 dependency; it may not begin S023 mathematics itself.

B-009 is resolved. No reviewer status transfers from CAND-02.
