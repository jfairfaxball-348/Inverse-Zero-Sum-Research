# Authoritative entry point

Repository: https://github.com/jfairfaxball-348/Inverse-Zero-Sum-Research

## Read in this order

1. AGENTS.md.
2. authoritative/STATE.json and authoritative/PROJECT_CHARTER.md.
3. docs/SESSION_PROTOCOL.md and docs/CLOSEOUT_TEMPLATE.md.
4. authoritative/DECISIONS_AND_BLOCKERS.md.
5. authoritative/ROADMAP.md and authoritative/SESSION_LEDGER.md.
6. authoritative/TARGET_REGISTER.md, authoritative/PUBLICATION_REGISTER.md, authoritative/REVIEWER_REGISTER.md, authoritative/CLAIMS_AND_SOURCES.md, and authoritative/FAILURE_AND_LESSON_LEDGER.md.
7. The completed S002–S032 records before later target-specific work, with
   particular attention to the S010 and S020 audits, S011 exchange obstruction,
   S012 progressive-block repair, S013 source-route comparison, and S014–S019
   ambient/counting/incidence chain.

## Current state

**S032 is completed. D31-01 proves that all seven quotient-zero four-term
residual subsets complementary to the Fano lines also have lift-sums in the
exact S029 shell `E(K)`. If `r` is the total seven-term residual sum
and `w_F` a Fano-line lift-sum, then every line/complement pair satisfies
`w_F in E(K) cap (r-E(K))`. Writing
`s=h_1+h_2+h_3`, the exact remaining translation defect is
`zeta=r-s=u+tau_1+tau_2+tau_3 in H`. The common-torsion assignment has
`zeta=0`, so `r=s`; its three through-`ell` complements are
`h_2+h_3,h_1+h_3,h_1+h_2`, and its other four complements equal the same
half-sum `v` as their lines. All are in `E(K)`, so the full fourteen
line/complement shell system still does not exclude the fixed
simultaneous-positive coset. CAND-05 remains SOURCE-DEFINED / CURRENT STATUS
UNKNOWN. S033 is READY for one bounded unit on the full seven-term residual
sum only.**

Selected target:

> For every `m>=2`, classify every sequence over
> `G_m=C_2\oplus C_{2m}\oplus C_{2m}` of length
> `eta(G_m)-1=6m+1` having no nonempty zero-sum subsequence of length at
> most `exp(G_m)=2m`.

- Target gate: OPEN.
- Publication gate: OPEN; E-JC remains lead and JNT a natural backup.
- Mathematical-investigation gate: **OPEN** for the bounded S032 brief.
- External-review gate: CLOSED; confirmed reviewers: NONE.
- Active owner blockers: NONE.
- Next session: S033.
- Xue Li Stage-1 remains CAND-02-specific, owner-reported SENT 2026-10-02 /
  REPLY PENDING.

CAND-02 remains historical/paused. Its S006--S020 mathematics is durable
programme evidence but does not automatically constrain CAND-05.

## Current mathematical frontier

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

S033 addresses D32-01 only: analyze the completion depth of the full canonical
seven-term residual sum `r`. Extremality gives
`m-3<=lambda(r)<=m-1`; classify that deep layer using the S029 distance
formula and intersect it with the S032 total-translation condition. No further
proper residual-subset family is pre-authorized.

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
