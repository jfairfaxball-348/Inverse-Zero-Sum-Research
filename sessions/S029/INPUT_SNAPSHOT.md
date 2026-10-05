# S029 input snapshot

Date: 2026-10-05.

## Incoming authority

- Repository: `jfairfaxball-348/Inverse-Zero-Sum-Research`.
- Authority branch: `main`.
- Incoming SHA: `538399fba38ae5ef424a59520fc6b19a31e6faa8`.
- Incoming tree: `593a6d92a777d19715244c97c7d5a51eb16a7106`.
- Reconciliation: live `main` exactly matched the supplied checkpoint; no intervening commits were present.
- Session uniqueness: `sessions/S029` did not exist and S029 did not appear in the checkpoint ledger. S029 is unique.

## Required authority read

Read before mathematics:

- `AGENTS.md`;
- `authoritative/START_HERE.md`;
- `authoritative/STATE.json`, `PROJECT_CHARTER.md`, `DECISIONS_AND_BLOCKERS.md`,
  `ROADMAP.md`, `SESSION_LEDGER.md`, `TARGET_REGISTER.md`,
  `PUBLICATION_REGISTER.md`, `REVIEWER_REGISTER.md`,
  `CLAIMS_AND_SOURCES.md`, and `FAILURE_AND_LESSON_LEDGER.md`;
- `docs/SESSION_PROTOCOL.md` and `docs/CLOSEOUT_TEMPLATE.md`;
- `sessions/S028/EVEN_BUCKET_MEMBER_COMPATIBILITY.md`,
  `sessions/S028/SOURCE_CHECK.md`, `sessions/S028/CLOSEOUT.md`;
- `sessions/S027/EVEN_BUCKET_COSETS.md`;
- `sessions/S026/DOUBLING_FIBRE_GEOMETRY.md`;
- `sessions/S025/CANONICAL_KERNEL_BUCKETS.md`;
- `authoritative/S029_CANDIDATE_5_EVEN_COMPLETION_SHELL_BRIEF.md`.

CAND-05 is the selected target. CAND-02 remains historical and paused.
Target and publication gates are OPEN; mathematical investigation is OPEN;
external review is CLOSED; active owner blockers are NONE.

## Bounded unit

Run D28-01 only, for even `m>=4`. Condition on one fixed nonzero
`L`-coset `C={q,q+ell}` whose two members both have positive weight.
With bucket value `h`, put
`t=x_{q+ell}-x_q`, `u=x_ell`, and
`w=h+t+u`.

S028 proves that an actual extremal in this local configuration requires

`min{|V|: V|K, sigma(V)=-w}=m-1`

for
`K=h_1^(m-1) h_2^(m-1) h_3^(m-1)`,
where `(h_1,h_2)` is a basis and
`h_3=h_2-a h_1` with `a` a unit modulo `m`.

S029 is restricted to classifying this depth-`m-1` completion shell and
applying it to the one target `w=h+t+u`. No global weight vector, other
residual quotient-zero subsets, seven-lift classification, odd-modulus branch,
quotient normalization, CAND-02 route, or existence/full-classification claim
is authorized.
