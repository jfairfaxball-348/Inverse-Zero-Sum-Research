# S007 — CAND-02 progressive-subsums bridge investigation

## Status and purpose

S007 is the first mathematical-investigation session under owner decisions D-030--D-032. The external-review gate remains CLOSED and Xue Li's Stage-1 reply remains pending, but this no longer blocks mathematical work.

The selected target remains the all-m ordinary inverse-EGZ classification for length-8m extremals over G_m = C_2 + C_{2m} + C_{2m}, m>=2.

CAND-02 remains **SOURCE-DEFINED / CURRENT STATUS UNKNOWN**. Proof work does not certify openness or novelty.

## Single bounded mathematical obligation

S006 identified Girard--Schmid 2019 Lemma 4.4(2) as a high-leverage published conditional reduction. For a target extremal S, the lemma applies if there exist h in G_m and C|S with |C|>=m-1 such that jh lies in Sigma_j(C) for every 1<=j<=|C|.

If this entry condition holds, the published lemma yields, after translation, a length-6m+1 = eta(G_m)-1 short-zero-sum extremal core.

S007 investigates only this programme question:

> Must every CAND-02 extremal satisfy the progressive-subsums entry condition?

This is not an established lemma.

## Authorized work

1. Normalize the condition into equivalent formulations, proving any claimed equivalence before recording it as a programme result.
2. Attempt a rigorous proof using the source-backed S006 toolkit and new deductions, clearly separating published facts from programme arguments.
3. Actively search for a rigorous obstruction or counterexample. A falsification is a useful result and must be preserved rather than patched away.
4. If theoretical analysis exposes a sharply defined finite question, run a carefully scoped small-m computation or experiment only to test that question. Preserve code, parameters and output; treat computational results as experimental evidence unless separately proved.
5. If the full bridge is false, identify the strongest precisely stated weaker condition actually supported by proof or counterexample analysis. Do not broaden into the full inverse classification in this session.
6. If the bridge is proved, apply only the already-published Lemma 4.4(2) consequence and stop at the eta-core reduction; do not continue into a full classification proof in S007.

## Parallel external-review rule

Reviewer silence is not a blocker. If committed authority at S007 entry contains a substantive Xue Li reply, incorporate it before mathematical work. If it identifies prior art, a known solution, material overlap, a mistaken premise or a serious scope/significance concern, pause the affected direction and reassess.

No outreach is authorized by this brief.

## Required outputs

Create under sessions/S007/ at least:

- INPUT_SNAPSHOT.md;
- PROGRESSIVE_SUBSUMS_BRIDGE.md;
- EXPERIMENT_LOG.md if any computation/experiment is actually run;
- DEPENDENCY_UPDATE.md;
- CLOSEOUT.md.

Update claims/sources only for source facts, and record any genuine programme lemma/counterexample in the appropriate authority records with its proof or evidentiary status explicit.

## Closeout

Run python3 scripts/check_authority.py plus checks appropriate to any new mathematics or code. Synchronize authority, commit to main, verify the remote checkpoint, and close under the repository protocol.
