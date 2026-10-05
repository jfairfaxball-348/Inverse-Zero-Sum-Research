# S036 fresh mechanism source reassessment

Session: S036
Unit: D35-01
Date: 2026-10-05
Scope: source-first route reassessment only; no new CAND-05 proof unit

## Verdict

No checked mechanism clears the S036 anti-churn bar. Exactly three source-backed mechanisms were compared. Each fails an explicit applicability or falsification test before a new mathematical dependency is justified. S036 therefore promotes no S037 proof unit and activates owner blocker B-011.

This is a route-reassessment result only. It neither constructs nor excludes a CAND-05 extremal and does not classify the unresolved simultaneous-positive coset.

## Committed baseline

For even m>=4 the S023--S035 chain supplies H=2G_m=C_m^2, Q=G_m/H=C_2^3, the canonical three-bucket kernel, L=pi(G_m[2]), three length-2m nonzero-L-coset blocks B_1,B_2,B_3, and the singleton u=x_ell. It also supplies sigma(B_i)=tau_i and the surviving common-torsion compatibility assignment u=t and tau_1=tau_2=tau_3=t, where t is nonzero 2-torsion with pi(t)=ell. In that assignment B_1u and B_2B_3 are zero sums of lengths 2m+1 and 4m. This is compatibility of necessary constraints, not an extremal construction.

## Comparison

| Mechanism | Exact source / hypotheses | Boundary at CAND-05 | New datum sought | Falsification test | Runnable? |
| --- | --- | --- | --- | --- | --- |
| A. Reverse through E=G_m[2] and transfer maximal atoms | Schmid 2011, Theorem 3.1 proof Step 1: if A is minimal zero-sum and A=F_1...F_k lifts a factorisation of phi(A), then product sigma(F_i) is minimal zero-sum over the kernel. The source also gives the elementary-2-group atom form. | In a genuine extremal realising the common-torsion block data, B_2B_3 would be a length-4m minimal zero sum, so the transfer applies with E and quotient C_m^2. | A C_2^3 circuit tying hidden lift parities across B_2,B_3. | Reject if the circuit is automatic from h_2,h_3 and t. | NO: automatic. |
| B. Apply 2026 rank-two inverse Narkiewicz-sense eta structure to G_m/E | Hui--Zhong 2026, Theorem 1.1: for C_n^2, a length-3n-1 nonzero sequence with no innerly non-zero-sum-joint short zero sums has explicit basis normal form. | The common-torsion quotient after removing u is a_1^(2m)a_2^(2m)a_3^(2m), and already has the forbidden joint-short configuration. | A support/multiplicity normal form stronger than S035 two-factor existence. | Reject if the inverse avoidance hypothesis visibly fails and no theorem extracts an extremal core. | NO: hypothesis fails. |
| C. Different order-m quotient plus rank-three inverse eta | Girard--Schmid 2020, Theorem 4.1: length eta(C_2+C_2+C_{2n})-1=2n+3 and no short zero sum implies one of three explicit structures. | Quotienting one C_{2m} factor by its order-m subgroup gives C_2+C_2+C_{2m}, but quotient zero sums may lift to nonzero kernel sums; the projected sequence also has length 6m+1. | Direct rank-three support/multiplicity control of the seven-support architecture. | Reject unless a source-backed theorem extracts a length-2m+3 quotient extremal satisfying the avoidance hypothesis. | NO: no such transfer/extraction. |

## A. Torsion-kernel atom transfer

Assume only for the applicability test that an actual CAND-05 extremal realises the authoritative common-torsion aggregate assignment. Then B_2B_3 is a zero sum of length 4m. If it had a proper nonempty zero-sum subsequence U, its complement would also be zero sum and one of the two would have length at most 2m, contradicting CAND-05. Thus B_2B_3 would be a maximal-length atom.

Let E=G_m[2] and psi:G_m->G_m/E. The map x+E -> 2x identifies G_m/E with H=C_m^2. Under common torsion psi(B_i)=a_i^(2m), where a_i corresponds to h_i. Split psi(B_2B_3) into four quotient atoms of length m. Schmid's Step 1 forces the four lifted sums to be a minimal zero-sum sequence over E=C_2^3.

But the output is automatic. Put c_i=m x_i=(m/2)h_i in H[2]. Complementary m-block sums in B_i are c_i and c_i+t. Since h_2,h_3 are a basis, c_2,c_3 are independent nonzero H[2] elements; since pi(t)=ell!=0, t is not in H. Hence {c_2,c_2+t,c_3,c_3+t} is automatically a four-term C_2^3 circuit. Schmid also explicitly notes the low rigidity of elementary-2-group kernels for this method.

So A adds no invariant beyond the surviving compatibility data.

## B. 2026 Narkiewicz-sense inverse structure

Hui--Zhong 2026 is genuinely stronger than mere existence of two disjoint zero sums. Yet the current quotient does not satisfy its avoidance hypothesis. Among the 2m copies of an order-m basis element a_1, choose two distinct m-term zero-sum subsequences sharing m-1 copies. Their intersection sums to (m-1)a_1=-a_1!=0. Thus innerly non-zero-sum-joint short zero sums already occur in the simplest possible way.

The inverse theorem cannot constrain this quotient. Producing a canonical length-3m-1 subconfiguration avoiding the joint property would be a new unsupported extraction problem, not a source-backed successor.

## C. Rank-three inverse eta on another quotient

Girard--Schmid 2020 exactly classifies eta-extremals over C_2+C_2+C_{2m}. A quotient of G_m by an order-m subgroup can have this isomorphism type. But CAND-05 forbids genuine short zero sums in G_m; it does not forbid quotient-zero subsequences whose lift sum is a nonzero kernel element. Therefore the projected sequence is not known to satisfy Theorem 4.1's hypothesis, and it is much longer than the theorem's extremal length.

No checked induction theorem canonically extracts the required quotient extremal. Turning that missing extraction into a new proof problem would manufacture a route.

## Anti-churn decision

The reversed atom transfer is applicable but non-new; the freshest rank-two joint-short theorem has a visibly false hypothesis; and the closest rank-three inverse eta theorem has no valid hypothesis transfer. None distinguishes the common-torsion compatibility assignment from an actual extremal.

D35-01 promotes no successor. B-011 is activated. No S037 brief or prompt is created.
