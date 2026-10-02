# S001 closeout — field orientation and target discovery

Date: 2026-10-02. Status: **COMPLETED; owner target-selection blocker active**.
Stage: P0 preflight discovery.
Incoming main: `9d40874b65753e48dc82d975e4e9110e5ffe1250`.

The owner-supplied bootstrap checkpoint exactly matched live `main` at entry,
so no intervening authority changes required reconciliation. The executing
GitHub identity was the repository-owner profile `jfairfaxball-348`. No prior
S001 branch or session record existed before the input snapshot was committed.

Outgoing authority is the committed revision containing this closeout and the
synchronized records. Its actual SHA must be verified remotely and reported
externally rather than embedded as a fictitious self-hash.

## Bounded objective and completion

S001 performed one literature-only field-orientation and target-discovery unit.
It produced a primary-source field map, four precisely scoped candidate
questions, a current-status correction pass, an E-JC policy/submission refresh
and a reviewer-expertise map.

No mathematical computation, enumeration/search over examples, proof attempt,
formalisation, outreach, message or submission was performed.

Primary report:
[FIELD_MAP_AND_CANDIDATES.md](FIELD_MAP_AND_CANDIDATES.md).

## Useful results

### Field and target map

The field map distinguishes direct/inverse problems, sequences/sets,
repetition/squarefree restrictions, cyclic/rank-two/higher-rank settings,
exact/bounded zero-sum length, extremal/near-extremal classification and
generalized Narkiewicz-sense invariants.

Four unranked candidate identities were retained:

1. **CAND-01:** complete rank-two Property D for every `C_n^2`.
2. **CAND-02:** classify length-`8m` EGZ-extremal sequences over
   `C_2+C_{2m}+C_{2m}`, `m>=2`.
3. **CAND-03:** classify length-`24` extremal sequences for
   `eta^N(C_3^3)`.
4. **CAND-04:** Property D for `C_p^3` for every prime `p>=7`.

They are compared by name, genre, contribution type, relevance, known baseline,
status boundary and publication fit, **not** by difficulty or probability of
proof.

### Current-status corrections

- The older intermediate restricted-length rank-two conjectural lead is
  **retired as solved** by the 2024 Ebert--Grynkiewicz completion.
- Rank-two inverse `D_k` is treated by Zhong (2025).
- Rank-two inverse Narkiewicz-sense `eta` is completely settled by
  Hui--Zhong (2026).
- Property B/C are classical baseline, not a fresh target.
- Schlage-Puchta's 2025 Property-D preprint covers all sufficiently large primes
  in rank two, not the full all-modulus conjecture.
- A September 2026 preprint announces a disproof of Gao's long-standing
  `nu(G)` conjecture; only abstract-level scope was inspected.
- A later 2024 source contains a compressed rank-three EGZ formula that conflicts
  with the original Girard--Schmid theorem in the equal-factor `n=1` case.
  CAND-02 is anchored to the original source and the discrepancy is preserved.

CAND-02 and CAND-03 remain **UNKNOWN** as to current openness: they are precise,
source-defined extensions, but S001 found no primary source explicitly
certifying those exact cases as open. CAND-01 and CAND-04 are specializations
of an explicit Property-D conjecture but still require a fresh target-specific
status audit after selection.

### Publication route

The official Electronic Journal of Combinatorics pages were rechecked on
2026-10-02. E-JC remains the leading workflow-eligible venue candidate:

- fully refereed discrete-mathematics scope;
- explicit AI policy permitting assistance in mathematical research and in
  finding proofs/arguments, with human checking and author responsibility;
- human publication decision;
- active web submission route using a manuscript PDF and HTML abstract;
- author checklist requires AI-policy compliance;
- journal states it is free for authors and readers.

Zero-sum E-JC precedents include Grynkiewicz--Liu (2022) and Zeng--Yuan (2023).
The publication gate remains CLOSED because the exact target and target-specific
shortlist are unselected.

### Reviewer expertise

No reviewer is confirmed and no outreach was sent. Public evidence supports:

- Pingzhi Yuan for inverse/short-zero-sum structural work;
- David J. Grynkiewicz for rank-two inverse structure;
- Benjamin Girard and Wolfgang A. Schmid for rank-three EGZ/direct-inverse work;
- Qinghai Zhong and Wanzhen Hui for generalized Narkiewicz-sense inverse work;
- Jan-Christoph Schlage-Puchta for current Property-D work.

Authorship of the closest baseline is an expertise signal, not automatic
independence. Any later reviewer choice must assess conflicts and preserve the
two-stage proposal/manuscript review role. Earlier private correspondence is
not treated as a review agreement.

## Source and proof boundaries

The bounded core corpus comprised ten original papers/preprints or original
theorem/conjecture statements, plus a very recent status side-check and official
journal/reviewer-expertise sources. Exact inspection levels are recorded in
`authoritative/CLAIMS_AND_SOURCES.md`.

No source proof was independently audited for correctness. No failed search was
converted into an openness or novelty claim. No programme mathematical result
exists.

## Authority synchronization

Changed or created during S001:

- `sessions/S001/INPUT_SNAPSHOT.md`
- `sessions/S001/FIELD_MAP_AND_CANDIDATES.md`
- `sessions/S001/CLOSEOUT.md`
- `authoritative/STATE.json`
- `authoritative/ROADMAP.md`
- `authoritative/SESSION_LEDGER.md`
- `authoritative/TARGET_REGISTER.md`
- `authoritative/PUBLICATION_REGISTER.md`
- `authoritative/REVIEWER_REGISTER.md`
- `authoritative/CLAIMS_AND_SOURCES.md`
- `authoritative/DECISIONS_AND_BLOCKERS.md`
- `authoritative/FAILURE_AND_LESSON_LEDGER.md`

The live `authoritative/NEXT_SESSION_PROMPT.md` was removed because B-001 is
active.

## Validation

Validation completed on 2026-10-02.

- The repository's `scripts/check_authority.py` was executed against a
  materialized structural mirror of the final authority state and S001 local-link
  topology. It passed session uniqueness, preflight gates, blocker/prompt
  consistency, represented local links and licence preservation.
- The live GitHub state was checked separately: required S001 records and linked
  authority registers exist on `main`; `authoritative/NEXT_SESSION_PROMPT.md`
  is absent while B-001 is active; and the remote `LICENSE` blob SHA is exactly
  `261eeb9e9f8b2b4b0d119366dda99c6fd7d35c64`, matching the validator's
  required Apache-2.0 blob.
- Direct network cloning was unavailable in the execution container, so
  validation combined connector-backed live-tree checks with the materialized
  checker run rather than claiming a local clone of GitHub.
- The actual outgoing `main` SHA is verified after this closeout update and
  reported externally, because a commit cannot contain its own hash.

These checks validate repository authority consistency, not mathematical truth,
proof correctness, novelty or current openness.

## Active owner blocker

### B-001 — Select the exact mathematical target

The P0 comparison is complete enough that the next useful target-specific unit
depends on the owner's mathematical-identity choice.

**NEXT-SESSION PROMPT: WITHHELD. Required owner action: select CAND-01,
CAND-02, CAND-03 or CAND-04, or explicitly reject all four and request another
bounded discovery pass.**

Target, publication, external-review and computation gates remain CLOSED until
their recorded requirements are met.
