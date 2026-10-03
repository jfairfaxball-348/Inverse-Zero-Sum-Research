# S008 — CAND-02 centered-symmetry forcing investigation

## Status and purpose

S007 left the universal progressive-subsums bridge D6-08 unresolved but proved
a useful sufficient criterion. For h in supp(S), define kappa_h(S) as the
maximum size of a reflection-balanced subsequence about h, equivalently a block
which after translation by -h factors as zeros and zero-sum pairs a(-a).

If kappa_h(S)>=m-1 for some h, S007-P2 activates Girard--Schmid 2019
Lemma 4.4(2).

CAND-02 remains SOURCE-DEFINED / CURRENT STATUS UNKNOWN. External review remains
parallel and CLOSED unless newer committed authority says otherwise.

## Single bounded mathematical obligation

Determine whether every length-8m CAND-02 extremal S necessarily has

kappa_h(S) >= m-1

for some h in supp(S).

This is a stronger sufficient condition than D6-08, not an equivalent
reformulation for general m.

## Authorized work

1. Recheck the S007 definition and proof of the reflection-balanced capacity.
2. Attempt a general proof using extremality, additive energy, reflection
   orbits, the C_m^2 -> C_2^3 architecture, or other source-backed tools.
3. Actively attempt falsification. If a sequence violates the capacity bound,
   distinguish carefully between:
   - a counterexample to D7-01 only; and
   - a genuine counterexample to the full progressive-subsums bridge D6-08.
4. Use bounded computation only when theory exposes a precise finite structural
   question. Preserve code, parameters and results and classify them as
   experimental unless separately proved.
5. If D7-01 is proved, apply S007-P2 and the published Lemma 4.4(2) to record
   the universal eta-core reduction, then stop.
6. If D7-01 is false, record the strongest valid replacement and the exact
   surviving D6-08 frontier; do not broaden into the full classification.

## External-review rule

Do not send outreach. Reviewer silence is not a blocker. If newer committed
authority contains substantive external feedback identifying prior art, a known
solution, material overlap, a mistaken premise or a serious scope/significance
concern, pause the affected direction and reassess before proceeding.

## Required outputs

Create under sessions/S008/ at least:

- INPUT_SNAPSHOT.md;
- CENTERED_SYMMETRY_FORCING.md;
- EXPERIMENT_LOG.md if computation is run;
- DEPENDENCY_UPDATE.md;
- CLOSEOUT.md.

Synchronize authority, run scripts/check_authority.py and any mathematical/code
checks warranted by the work, commit to main, verify the remote checkpoint and
close under the repository protocol.
