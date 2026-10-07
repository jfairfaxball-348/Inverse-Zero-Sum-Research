# Authoritative entry point

Repository: https://github.com/jfairfaxball-348/Inverse-Zero-Sum-Research

## Read in this order

1. AGENTS.md.
2. authoritative/STATE.json and authoritative/PROJECT_CHARTER.md.
3. docs/SESSION_PROTOCOL.md and docs/CLOSEOUT_TEMPLATE.md.
4. authoritative/DECISIONS_AND_BLOCKERS.md.
5. authoritative/ROADMAP.md and authoritative/SESSION_LEDGER.md.
6. authoritative/TARGET_REGISTER.md, authoritative/PUBLICATION_REGISTER.md, authoritative/REVIEWER_REGISTER.md, authoritative/CLAIMS_AND_SOURCES.md, and authoritative/FAILURE_AND_LESSON_LEDGER.md.
7. The completed S002–S037 records before later target-specific work, with
   particular attention to the S010 and S020 audits, S011 exchange obstruction,
   S012 progressive-block repair, S013 source-route comparison, and S014–S019
   ambient/counting/incidence chain.

## Current state

**S049 is COMPLETED and S050 is READY. CAND-03 remains selected. The exact
classification is internally proved and independently reverified. S042 found
no exact/equivalent/stronger-implying prior art in the documented deep audit.
The pinned Lean project now kernel-checks the S039 packing input and the
length-16 source interface
`length16SumZeroInput : Length16SumZeroInput`.
The single earliest formal obligation is now the S040 `s=8`
representative-swap elimination. `FrozenClassification` still has no proof
term, so Palomar remains blocked.**

Selected target:

> Classify all sequences `S` over `C_3^3\{0}` with `|S|=24` that
> contain no two innerly non-zero-sum-joint short zero-sum subsequences, where
> short means length at most `3`, by a structural necessity-and-sufficiency
> theorem.

Frozen classification: exactly `S=U^3` with `U` squarefree short-free of
length 8.

- Target gate: OPEN.
- Publication gate: OPEN as workflow eligibility; E-JC remains intended after
  the ordered verification/preprint stages.
- Mathematical-investigation gate: OPEN for S050/D49-01 formalization only.
- External-review gate: CLOSED and not a CAND-03 pre-submission blocker.
- Active owner blockers: NONE.
- Next session: S050 / D49-01 s=8 representative-swap formalization.
- Live next-session prompt: `authoritative/NEXT_SESSION_PROMPT.md`.
- S042 status: **no exact/equivalent/stronger-implying prior art located in the
  documented deep audit**; this is not a proof of novelty or prior openness.
- Ordered route: **Lean formalization -> Palomar registration -> paper ->
  arXiv -> E-JC submission**.
- Xue Li Stage-1 remains CAND-02-specific, reply pending, with no transfer.

CAND-05 and CAND-02 remain historical/paused; CAND-04 remains retired;
CAND-06 and CAND-01 remain unselected alternatives.

## Historical CAND-05 mathematical frontier (proof paused)

S023 gives the exact equality decomposition through `H=2G_m\cong C_m^2` and
`Q\cong C_2^3`; S024 proves every nonzero quotient fibre is monochromatic.
Writing the seven support values as `x_q` with `r_q=2k_q+1`, the induced
kernel is canonical:

`K=product_{q!=0}(2x_q)^{k_q}`.

S025 specializes Girard--Schmid 2019 Theorem 2.4 to `H=C_m^2`. There are
exactly three positive-weight kernel values `h_1,h_2,h_3`, each occurring
`m-1` times. They can be ordered so that `(h_1,h_2)` is a basis and
`h_3=h_2-a h_1` for a unit `a mod m`; every pair among the three is a basis.

The exact bucket equations are
`sum_{q:2x_q=h_i} k_q=m-1` for `i=1,2,3`. Fibres with `k_q=0` do not occur
in `K`, so S025 does not assign their doubled lifts to any bucket.

S026 proved the exact doubling-fibre geometry. For odd `m`, every fixed
doubling fibre meets all eight quotient classes once. For even `m`, writing
`L=pi(G_m[2])`, every fixed doubling fibre meets exactly one two-class coset of
`L`, with four points over each class; therefore two distinct positive-weight
classes in one bucket must differ by the unique nonzero element of `L`.

S027 proves the even-modulus induced map `delta:Q/L -> H/2H` is an
isomorphism. Since a unit modulo even `m` is odd, the S025 relation gives
`h_3+2H=(h_1+2H)+(h_2+2H)`, so the three kernel values represent the
three nonzero elements of `H/2H`. Consequently their bucket cosets are exactly
the three nonzero cosets of `L`, and the unique nonzero quotient class in `L`
has `k_q=0`.

S028 resolves the first member-level test only partially. If both members
`q,q+ell` of one nonzero `L`-coset are positive in bucket `h`, then
`k_q+k_{q+ell}=m-1`. This excludes `m=2`. For even `m>=4`, let
`t=x_{q+ell}-x_q`; then `t in G_m[2]`, `pi(t)=ell`, and the full
two-fibre block has length `2m` but sum `t!=0`. Writing `u=x_ell`,
the quotient-zero triple has sum `w=h+t+u in H`. Extremality forces the
minimum kernel-completion length of `-w` to be exactly `m-1`, but
S025--S027 do not control the offset `u+t`. The boundary case `u=t`
gives `w=h` and satisfies that exact pair budget, so simultaneous positivity
is not excluded for even `m>=4`.

S029 resolves D28-01 exactly. In the S025 basis/unit normal form the shell is
`(h_2+<h_1>) union (h_1+<h_3>)` for `a=1`,
`(h_2+<h_1>) union (h_1+<h_2>)` for `a=-1`, and
`(h_2+<h_1>) union {h_1,h_2+h_3}` otherwise. Thus the fixed S028
offset satisfies `z=u+t in E(K)-h`. Since every `h_i` lies in the shell,
`z=0` survives and there is no local exclusion.

S030 resolves D29-01 as an exact three-line shell coupling. All three
through-`ell` residual sums lie in `E(K)`, and their common lift is
equivalent to an intersection of three translated shells. The target is not
excluded because the pair-sum translations remain uncontrolled and a common
torsion assignment realizes the three shell points `h_1,h_2,h_3`.

S031 resolves D30-01 completely at the Fano-triple level. The four
non-`ell` line sums are an affine parity family
`X+sum e_i tau_i`, and the full seven-line shell system remains compatible
because a common two-torsion translation reduces the new four lines to an
`H[2]`-movable half of `h_1+h_2+h_3`; an explicit half always lies on
`h_2+<h_1> subset E(K)`.

S032 resolves D31-01 completely at the Fano line/complement level. All
seven complementary four-term residual sums lie in `E(K)`. If `r` is
the total residual sum and `w_F` is a line sum, the exact coupling is
`w_F in E(K) cap (r-E(K))` for all seven lines. Relative to
`s=h_1+h_2+h_3`, the remaining translation is
`zeta=r-s=u+tau_1+tau_2+tau_3 in H`. The common-torsion family has
`zeta=0` and satisfies all fourteen line/complement shell memberships, so
the fixed simultaneous-positive coset is still not excluded.

S033 resolves D32-01 at the full-residual level. For
`w=xi h_1+nu h_2`, `P=[-xi]_m`, `Q=[-nu]_m`, the S029 formula gives
`lambda(w)>=m-3` exactly when
`min_{0<=gamma<=Q}[P+a gamma]_m>=m-3-Q`. Hence all points with
`Q in {m-3,m-2,m-1}` are automatically in the deep layer. The
common-torsion total `s=h_1+h_2+h_3` lies in the `Q=m-2` line and
has exact depth `m-2`, while S032 already places it in every required
translate `w_F+E(K)`. Thus the exact surviving defect is
`zeta=0`, `lambda(r)=m-2`.

The Fano-line, complementary-four-set and full-seven-term completion-depth
tests have therefore all left the same common-torsion compatibility family
intact. No further proper residual-subset variant is promoted. S034 is a
bounded mechanism reassessment: it must identify a genuinely different source
of rigidity, or stop with an owner strategy blocker if none clears the
anti-churn bar.

Search non-hits remain non-evidence of openness or novelty.

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

## Frontier after S023

D22-01 succeeds for every `m>=2`. The equality decomposition is now durable
programme mathematics: no `H`-term; exactly `3m-3` same-fibre quotient-zero
pairs in a maximal extraction; residual quotient image equal to all seven
nonzero elements of `C_2^3`; and an ordinary-`eta` extremal pair-sum
sequence over `C_m^2` for every maximal pairing.

The unresolved issue is now extraction-choice rigidity, not existence of the
decomposition. S024 is limited to D23-01 and may use the already-cited
rank-two one-change rigidity lemma after rechecking its hypotheses. It must
not proceed to a full lift classification.


## Frontier after S024

D23-01 succeeds for every `m>=2`. If a nonzero quotient fibre has at least
three occurrences `a,b,c`, two synchronized maximal pairings give kernel
eta-extremals `T(a+b)` and `T(a+c)` sharing `eta(H)-2` terms.
Girard--Schmid 2019 Lemma 4.2 forces them equal, hence `b=c`. Odd fibre
multiplicity handles the remaining cases and yields monochromaticity.

Consequently the extremal support has exactly seven values, one in each
nonzero quotient class, with positive odd multiplicities summing to `6m+1`.
Pairing/residual choice no longer changes the kernel sequence.

S025 is restricted to D24-01: apply the already-cited rank-two inverse-`eta`
normal form to that canonical kernel and record only the induced three-value
bucket equations. No lift, multiplicity-vector or quotient-normalization
classification is pre-authorized.

## Frontier after S025

D24-01 succeeds for every `m>=2`. The canonical kernel is

`K=h_1^(m-1) h_2^(m-1) h_3^(m-1)`,

where the values can be ordered with `(h_1,h_2)` a basis of `C_m^2` and
`h_3=h_2-a h_1` for a unit `a mod m`. Hence the three values are distinct,
all have order `m`, and every pair is a basis.

Equivalently, the S024 weights satisfy
`sum_{q:2x_q=h_i} k_q=m-1` for each `i=1,2,3`, counting only positive
weights. A fibre with `r_q=1` has `k_q=0` and is invisible to the kernel
normal form.

S026 is restricted to D25-01: determine the exact quotient geometry of a fixed
doubling fibre and the resulting same-bucket collision restriction, split by
the parity of `m`. No global bucket assignment, multiplicity-vector solution,
seven-lift classification or quotient normalization is pre-authorized.


## Frontier after S026

D25-01 succeeds for every `m>=2`. In coordinates
`G_m=<e_0>_2 + <e_1>_{2m} + <e_2>_{2m}`,

`G_m[2]=<e_0,m e_1,m e_2>`.

Modulo `H=2G_m`, the last two generators survive exactly when `m` is
odd. Hence `pi(G_m[2])=Q` for odd `m`; for even `m` it is the
canonical order-two subgroup `L=<pi(e_0)>`.

A fixed nonempty doubling fibre is a coset of `G_m[2]`. Its quotient image
is therefore a coset of `pi(G_m[2])`: all eight quotient classes, once each,
when `m` is odd; exactly two classes forming one `L`-coset, with four
preimages over each, when `m` is even. Thus even-modulus same-bucket
collisions of distinct positive-weight fibres can occur only across the two
members of one `L`-coset. The statement is deliberately silent about
`k_q=0` fibres.

S027 is restricted to D26-01: for even `m`, identify the induced quotient
map `Q/L -> H/2H` and combine it only with the three S025 kernel values.
No weight-vector, lift, odd-modulus or quotient-normalization classification is
pre-authorized.

## Frontier after S027

D26-01 succeeds for even `m`. The homomorphism `x |-> 2x+2H` descends
through `Q=G_m/H`; its kernel in `Q` is exactly
`L=pi(G_m[2])`. Hence

`delta:Q/L -> H/2H`,  `delta(pi(x)+L)=2x+2H`

is injective, and both sides have order four, so it is an isomorphism.

Because `m` is even, every unit `a mod m` is odd. Reducing the S025
relation `h_3=h_2-a h_1` modulo `2H` gives
`h_3+2H=(h_1+2H)+(h_2+2H)`. Since `(h_1,h_2)` is a basis of
`H=C_m^2`, their images form a basis of `H/2H ~= C_2^2`. Thus the
three `h_i+2H` are exactly its three nonzero elements.

Under `delta^{-1}`, the three positive-weight kernel buckets occupy exactly
the three nonzero `L`-cosets of `Q`. The coset `L` itself corresponds
to zero in `H/2H`; hence its unique nonzero quotient class has `k_q=0`.

No choice is made between the two members of any nonzero `L`-coset, and no
weight vector, lift classification, odd-modulus analysis or quotient
normalization is obtained. S028 is restricted to that member-level occupancy
question.

## Frontier after S028

D27-01 gives a sharp local boundary rather than a full exclusion. For a fixed
nonzero `L`-coset `C={q,q+ell}` with bucket value `h`, simultaneous
positivity forces `k_q+k_{q+ell}=m-1`. Thus it is impossible when `m=2`.

For even `m>=4`, put `x=x_q`, `y=x_{q+ell}` and
`t=y-x`. Equal doubles give `t in G_m[2]`, while
`pi(t)=ell`, so `t!=0`. The complete two-fibre block has length
`2m` and sum exactly `t`, not zero.

Let `u=x_ell`; S027 gives `k_ell=0`, hence this is the unique term in
the `ell`-fibre. The residual triple `xyu` is quotient-zero and has sum
`w=h+t+u in H`. Since the canonical kernel `K` has length
`eta(H)-1`, `Kw` has a zero sum of length at most `m`; because
`K` itself is eta-free, this supplies a kernel completion of `-w` using
at most `m-1` terms. Any completion using at most `m-2` terms would lift,
together with the three residual terms, to a forbidden zero sum in `S` of
length at most `2m-1`. Hence an actual simultaneous-positive case must place
`w` exactly in the depth-`m-1` completion shell of `K`.

The currently proved structure does not determine `u+t`. In particular
`u=t` is compatible with all S023--S027 constraints; then `w=h`, and
`m-1` copies of `h` are an exact completion while no shorter one can
exist without creating a short zero sum inside `K`. Therefore S028 does not
exclude simultaneous positivity for even `m>=4` and makes no existence
claim. S029 is restricted to the completion-shell classification just exposed.


## Frontier after S029

D28-01 is now programme-proved for even `m>=4`. If
`K=h_1^(m-1) h_2^(m-1) h_3^(m-1)` with
`h_3=h_2-a h_1`, then the completion depth of
`w=xi h_1+nu h_2` is

`lambda(w)=Q+min_{0<=gamma<=Q}[P+a gamma]_m`,

where `P=[-xi]_m` and `Q=[-nu]_m`. Equality
`lambda(w)=m-1` is equivalent to the corresponding modular arithmetic
progression being exactly the terminal interval
`{m-Q-1,...,m-1}`.

This yields the exact shell:
two affine lines for `a=1`, two affine lines for `a=-1`, and otherwise
the line `h_2+<h_1>` plus `h_1` and `h_2+h_3`.

For the fixed simultaneous-positive S028 coset, `z=u+t` must lie in
`E(K)-h`. The condition is nontrivial but not contradictory: `z=0`
remains allowed for every bucket. No existence claim is made.

S030 is restricted to D29-01: test only the three residual quotient-zero
triples through `ell` against the exact S029 shell and the common
`u=x_ell`. No global multiplicity/lift classification, other Fano lines,
odd-modulus branch or quotient normalization is authorized.


## Frontier after S030

D29-01 is programme-proved for even `m>=4`. For the three nonzero
`L`-cosets `C_i={q_i,q_i+ell}`, put
`p_i=x_{q_i}+x_{q_i+ell}` and `w_i=p_i+u`.
Each `w_i` lies in the exact S029 shell `E(K)`: the `eta(H)`
threshold supplies a completion using at most `m-1` kernel terms, while a
completion using at most `m-2` would lift with the residual triple to a
forbidden zero sum of length at most `2m-1`.

The shared `u=x_ell` gives exactly
`u in (E(K)-p_1) cap (E(K)-p_2) cap (E(K)-p_3)`.
Equivalently, with `d_2=p_2-p_1`, `d_3=p_3-p_1`, and `w=w_1`,
`w in E(K) cap (E(K)-d_2) cap (E(K)-d_3)`.

This does not exclude the fixed simultaneous-positive coset. S025--S029 do not
control `d_2,d_3` when the other member of a non-fixed coset may have zero
kernel weight. Moreover the fixed S028 torsion `t`, together with
`u=t` and the same `t`-translation in each bucket doubling fibre,
makes the three residual sums exactly `h_1,h_2,h_3`, all in `E(K)`.
This is a compatibility assignment for the proved necessary constraints, not an
extremal construction. The promoted successor is D30-01/S031 on the remaining
four Fano residual lines only.

## S034 route-reassessment frontier

S034 compares the three required mechanism classes. Pure global weight arithmetic gives `k_{q_i}+k_{q_i+ell}=m-1` independently in each nonzero `L`-coset and does not exclude a split. Aggregate lift information is stronger: the complete block sum is `tau_i=y_i-x_i`, so the S032 defect `zeta` is the actual total sum of `S`. The source-based global input `D_2(G_m)=6m+1` then forces two disjoint zero sums at exactly the candidate length.

If `zeta=0`, the two forced zero sums must partition all of `S`; if `zeta!=0`, they leave a nonempty complement of length at most `2m-1` and sum `zeta`. S035 tests this factorisation relative to the three `2m` blocks and the fixed simultaneous-positive torsion datum. No global weight vector, seven-lift classification, odd-modulus branch, quotient normalization, or residual-shell revival is pre-authorized.

## S035 multiwise block-factorisation checkpoint

S035 resolves D34-01 at the first exact outcome and stops. Re-index the three nonzero `L`-coset blocks so the fixed simultaneous-positive coset is `B_1`. Its S028 torsion difference is `tau_1=t`, where `t in G_m[2]`, `t!=0`, `pi(t)=ell`.

The S031--S033 common-torsion compatibility family already takes `u=t` and `tau_1=tau_2=tau_3=t`. Since `2t=0`, the S034 total is `zeta=4t=0`. More importantly, the whole-block partition `A_0=B_1u`, `B_0=B_2B_3` has `sigma(A_0)=sigma(B_0)=0`, with lengths `2m+1` and `4m`. Thus it realizes precisely the two disjoint nonempty zero sums required by `D_2(G_m)=6m+1`, while both lengths exceed the forbidden threshold `2m`.

This is an exact surviving factorisation type at the level of proved necessary constraints, not an actual extremal construction. The `zeta!=0` branch is not pursued because the brief requires stopping at the first exact outcome.

The S030--S033 shell route remains stopped and D34-01 is now stopped as an exclusion route. B-010 is active; no S036 prompt or brief is scheduled pending the owner's strategy disposition.

## Post-S035 owner strategy resolution

B-010 is resolved by explicit owner choice of option 1. Full CAND-05 remains
selected. S036 is one bounded source-first mechanism reassessment, D35-01.

The following remain hard route stops: the S030--S033
residual-shell/proper-subset/completion-depth family; D34-01's `D_2)
two-zero-sum block factorisation, including merely continuing its other
total-sum branch; pure uncoupled weight bookkeeping; and direct seven-lift or
kernel-invisible-partner classification.

S036 may promote at most one genuinely new theorem-backed mathematical
dependency and must not prove it. If no new mechanism clears the bar, it must
activate a new owner blocker rather than schedule cosmetic continuation.



## S036 fresh-mechanism source-reassessment frontier

D35-01 compared three source-backed mechanisms and promoted none. Schmid 2011 Theorem 3.1 Step 1 transfers quotient factorisations of a minimal zero-sum sequence to a minimal zero-sum block-sum sequence over the kernel, but in the common-torsion family the resulting four-term C_2^3 circuit is already automatic from h_2,h_3 and t. Hui--Zhong 2026 Theorem 1.1 has stronger rank-two joint-short inverse structure, but the common-torsion quotient already has the forbidden joint short pairs. Girard--Schmid 2020 Theorem 4.1 exactly classifies eta-extremals over C_2+C_2+C_{2m}, but CAND-05 short-zero-sum avoidance does not transfer to that quotient and no checked source forces an extremal quotient core.

Both prior stopped architectures remain stopped. B-011 is active; no S037 prompt or brief exists.


## Post-S036 owner strategy resolution

D-107 resolves B-011 by choosing option 2: reassess/switch target. No new
CAND-05 proof architecture is authorized. S037 is READY for bounded source-first
target selection using CAND-03 and CAND-01 as refreshed prior alternatives,
CAND-05 as the stalled-incumbent comparator, and at most two genuinely new
source-defined candidates. S037 must return a recommendation to the owner and
must not silently select the replacement or begin proof work.


## S037 target-reassessment checkpoint

S037 refreshed CAND-03 and CAND-01, found no positive source change reviving
CAND-04 or materially changing CAND-05's S036 route status, and admitted one
new source-defined candidate: inverse `D_4(C_5^3)` at length 30, based on
Yiu's September 2026 direct preprint plus the standard inverse `D_k` framework.

The recommendation is CAND-03. B-012 is active and next-session material is
suppressed until the owner explicitly chooses CAND-03, CAND-06, or CAND-01.


## Post-S037 owner CAND-03 selection checkpoint

On 2026-10-06 the owner chose S037 shortlist option 1, CAND-03. This resolves
B-012 and supersedes CAND-05 as the live selected target. The choice changes
target identity only; it does not certify openness, novelty, proof feasibility,
reviewer willingness, or publication significance.

Because CAND-03 already received full target-specific due diligence in S004 and
fresh status reassessments in S021 and S037, S038 may begin one bounded
mathematical/source preflight rather than repeating broad discovery. D37-01
asks whether the exact rank-two Hui--Zhong inverse hypotheses arise on any
canonical rank-two slice/hyperplane object forced by a CAND-03 extremal. If no
such canonical transfer exists, stop and reassess before creating another
proof architecture.


## Frontier after S038 — D37-01 rank-two transfer preflight

For a CAND-03 extremal (S), restriction to a rank-two subgroup (Hcong
C_3^2) is the one tested interface that honestly inherits both the nonzero
alphabet and the positional innerly non-zero-sum-joint avoidance condition.
Since (eta^N(C_3^2)=10), every such restriction has length at most (9).
There are (13) rank-two subgroups of (C_3^3), every nonzero element lies
in exactly (4) of them, and therefore the restriction lengths sum to
(4|S|=96). Hence some restriction has length at least (8), so the maximum
rank-two subgroup-restriction length is (8) or (9).

Hui--Zhong 2026 Theorem 1.1 requires length (3n-1), hence exactly (8)
when (n=3). The published Gao--Hui--Li--Li--Qu--Zhong lower-bound
construction at (n=3) gives an actual length-24 extremal (S_0=U^3).
Every value multiplicity in (S_0) is divisible by (3), so every subgroup
restriction has length divisible by (3). The preceding target-wide bound then
forces its densest rank-two restriction to have length (9), and it has no
rank-two restriction of length (8).

Projection does not inherit the original zero-sum avoidance, affine translation
does not preserve the mixed length-(2/3) condition, and deleting one position
from a (9)-term restriction is an arbitrary extraction rather than a
target-forced canonical object. D37-01 therefore stops: the proposed exact
Hui--Zhong interface is not target-wide. No enumeration, cap-set replacement,
translation normalization, CAND-02/CAND-05 machinery, or second proof
architecture was launched.

CAND-03 remains **SOURCE-DEFINED / CURRENT STATUS UNKNOWN**. B-013 is active
for owner strategy disposition. External review remains CLOSED; Xue Li
Stage-1 remains CAND-02-specific and reply pending.


## Post-S038 owner strategy resolution

The owner chose B-013 option 1: retain CAND-03 and authorize exactly one fresh
source-first strategy reassessment outside the failed S038 rank-two
restriction/projection/extraction transfer.

S039 is D38-01 only. It may compare at most three genuinely different
source-backed mechanism classes capable in principle of constraining **every**
length-24 CAND-03 extremal. It must recheck exact theorem statements and
hypotheses before promoting anything. The stopped S038 architecture may be
used only as negative evidence: no repair by arbitrary deletion, projection,
affine translation or another disguised rank-two slice is allowed.

A route clears S039 only if a checked primary theorem or source-defined
mechanism has a plausible exact-hypothesis path to a target-wide structural
datum. At most one bounded mathematical successor may be promoted, and S039
must not prove it. If none clears the bar, activate a new owner strategy blocker
rather than schedule cosmetic proof work.

CAND-03 remains **SOURCE-DEFINED / CURRENT STATUS UNKNOWN**. No openness,
novelty, reviewer or publication inference is authorized. External review
remains CLOSED; Xue Li Stage-1 remains CAND-02-specific and reply pending.


## S039 completed — direct-proof near-equality structure

D38-01 compared exactly three source-backed mechanism classes. The full-rank
direct generalized-Narkiewicz proof survives as a useful near-equality
mechanism at length 24.

For every CAND-03 extremal, any maximal packing of position-disjoint short
minimal zero sums has signature

`(l,s,r) in {(6,8,2),(7,8,1),(8,8,0),(6,9,0)}`,

where `l` is the number of 3-term atoms, `s-l` the number of 2-term atoms,
and `r` the short-free remainder length. Deleting one arbitrary
representative from every packed atom leaves a short-free residual of length
16 for `s=8` and 15 for `s=9`.

The `eta*` type formulation is exact but contributes no new structural
normal form, and Gao et al. Lemma 3.13 has stronger whole-product and
unrestricted-inner-joint hypotheses not forced by CAND-03.

S040/D39-01 is the sole promoted successor. It may apply the exact full-rank
`C_3^3` short-free results checked in Fan--Gao--Wang--Zhong--Zhuang 2012
to these residuals, but may not reopen the S038 rank-two architecture.
CAND-03 remains **SOURCE-DEFINED / CURRENT STATUS UNKNOWN**. External review
remains CLOSED and no outreach is authorized.


## S040 completed — exact internal CAND-03 classification

D39-01 applied only the full-rank residual statements authorized by S039.

For `s=8`, every arbitrary representative-deletion residual is short-free of
length 16 and hence has sum zero by Fan--Gao--Wang--Zhong--Zhuang 2012 Lemma
28. Comparing two representative choices inside one packed block forces the
two selected values to agree. Therefore every packed block is constant, no
2-block can occur, and the signatures `(6,8,2)` and `(7,8,1)` are
excluded. The sole `s=8` branch is `(8,8,0)`, giving `S=U^3` with
`U^2` short-free; Property C makes the eight values of `U` distinct.

For a short-free length-15 sequence, D39-01 proves support size exactly 8 with
multiplicity profile `2^7 1`. If `u` is the unique singleton, then
duplicating `u` preserves short-freeness, so Lemma 28 gives
`u=-sigma(R)`; Lemma 29 also gives `sigma(R)!=0`. Applying this singleton
identity to every representative transversal in the `(6,9,0)` branch shows
that any nonconstant packed block forces every complementary representative
sum to vanish. A second nonconstant 2-block contradicts that requirement, so
`(6,9,0)` is impossible.

Thus every target sequence is exactly

`S=U^3`

for a squarefree short-free length-8 sequence `U`. The converse is supplied
by the separately rechecked Gao--Hui--Li--Li--Qu--Zhong 2024 Lemma 3.3(2).
The source construction is used only for sufficiency after necessity has been
proved internally; it is not treated as an inverse theorem.

S041/D40-01 is the sole promoted successor. It must independently verify this
proof chain and audit exact literature overlap/current status before any
publication or outreach decision. No further residual variant is authorized.


## S043 partial Lean checkpoint

D42-01 created a minimal reproducible Lean project pinned to Lean 4.19.0
(release commit `6caaee842e94`) and mathlib commit
`c44e0c8ee63ca166450922a373c7409c5d26b00b`. The exact positional target
statement is encoded as `FrozenClassification`, together with the nonzero
alphabet, positional subsequences, short zero sums, short-freeness,
squarefreeness, indexed intersection-sum avoidance and positional triple
repetition.

The current source clean-builds, and no unchecked proof placeholder is used.
However `FrozenClassification` is only a proposition, not yet a proved
theorem. The earliest exact proof-spine blocker is `S039PackingInput`: prove
the S039 packed short-zero-sum certificate with one of the four verified
signatures and retain the universal arbitrary-representative short-free
residual property.

S044/D43-01 is restricted to that blocker. Palomar registration, paper
drafting, arXiv and E-JC remain downstream and unavailable until the complete
Lean theorem is proved and the pinned checks pass.


## S044 partial Lean packing checkpoint

S044/D43-01 kernel-checks the S039 packing architecture through
`s039PackingInput_of_thresholds : ThreeTerm19Input -> Eta17Input -> S039PackingInput`.
The proof constructs exactly the four S039 signatures and proves the universal
arbitrary-representative residual property. The first closed proof term still
missing is `ThreeTerm19Input`; S045 is restricted to that source threshold.
No Palomar or publication-stage action is authorized.


## S045 completed — ThreeTerm19Input formalization

S045/D44-01 proves the existing closed proposition
`threeTerm19Input : ThreeTerm19Input` in the pinned Lean project. The proof
uses an explicit finite tuple model of `C_3^3`, transparent affine-plane
checks, a structural proof that every cap has at most nine points, and the
fact that a three-term-zero-sum-free length-19 sequence would have every value
with multiplicity at most two. Hence its support would have at least ten
points, contradicting the cap bound.

No `s(C_3^3)=19` axiom, Property-D axiom, `native_decide`, opaque orbit
catalogue or unchecked theorem is introduced. The next and only promoted
formal unit is S046/D45-01 on `Eta17Input`. Palomar and all publication stages
remain blocked until the complete frozen classification has a proof term.

## S046 completed — Eta17Input formalization

S046/D45-01 proves `eta17Input : Eta17Input` in the pinned Lean project.
For a hypothetical short-free length-17 sequence, adjoining zero to its
nonzero support preserves the cap property; S045's nine-point cap bound then
forces at most eight support values, while exponent three permits at most two
copies of each. This contradiction closes the eta-17 source interface without
an unchecked numerical threshold.

Both threshold inputs to `s039PackingInput_of_thresholds` are now closed.
S047/D46-01 is restricted to closing `S039PackingInput` and must stop before
the S040 proof spine. Palomar and publication stages remain blocked on the full
`FrozenClassification` proof.


## S047 completed — S039PackingInput closure

S047/D46-01 proves `s039PackingInput : S039PackingInput` in the pinned Lean
4.19.0 + mathlib environment by direct application of
`s039PackingInput_of_thresholds threeTerm19Input eta17Input`. No packing
architecture is reproved and no S040 representative-swap argument is entered.

The next exact formal obligation is `Length16SumZeroInput`, the recorded
length-16 short-free residual sum-zero interface used first by S040. S048/D47-01
is restricted to that proposition. `FrozenClassification` remains unproved,
so Palomar and all publication stages remain blocked.

## S048 partial — length-16 support reduction

D47-01 preserves a clean Lean reduction of the published length-16 input. For a
short-free positional sequence `R`, `tupleSupportT R` is a cap away from
zero, adjoining zero remains a cap, each support value occurs at most twice,
and the support has cardinality at most eight.

The unit does **not** yet prove `Length16SumZeroInput`. The single earliest
exact blocker is the maximal-support sum invariant: an eight-point nonzero
support `A` with `IsCapT (insert 0 A)` must have
`(∑ x ∈ A, x) = 0`. A transparent normalization to the origin plus a basis
was explored, but the resulting finite completion check exceeded the hosted
runner execution window and was removed from the live checkpoint.

S049/D48-01 is the sole promoted continuation. It must finish
`Length16SumZeroInput` without reviving the timed-out global completion
enumeration or introducing an opaque catalogue/oracle. Palomar and all later
publication stages remain blocked on the complete `FrozenClassification`
proof.

## S049 completed — Length16SumZeroInput closure

S049/D48-01 proves `length16SumZeroInput : Length16SumZeroInput` in the
pinned Lean project. The proof is structural rather than an orbit/completion
enumeration: a nine-point cap cannot meet an affine plane in exactly two
points; consequently every three-plane parallel class has slice sizes
`3,3,3` or a permutation of `1,4,4`, which forces every directional
value-sum to vanish. The three coordinate directions give zero total cap sum.

Together with the S048 support reduction, length 16 forces exactly eight
support values with multiplicity two, closing the source interface. S050/D49-01
is restricted to the `s=8` representative-swap elimination. It must stop
before `Length15NonzeroInput`, the `s=9` branch and
`FrozenClassification`. Palomar and publication stages remain blocked on the
complete frozen Lean proof.
