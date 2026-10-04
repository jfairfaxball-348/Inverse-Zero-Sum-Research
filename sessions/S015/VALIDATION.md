# S015 validation

Date: 2026-10-04.

## Mathematical proof checks

The S015 deductions were checked symbolically for arbitrary `m>=2`, with
`n=2m`.

1. **Core transport.** If `p in K_x(S)` has value `b`, every
   `A in R_x(S)` contains `p`; replacing `p` by the new `x` changes
   the target sum from `-x` to `-b`. The reverse replacement recovers
   the original extremal, so S014-P3 forces the new `x` position into every
   `-b` representation. The two substitutions are inverse bijections.
2. **Value-class saturation.** Every surviving old `b` position in the
   replaced extremal belongs to its support core by S014-P2; transporting the
   core back therefore puts every old `b` position into the original
   `K_x`.
3. **Multiplicity bounds.** A nontrivial safe move into multiplicity `n-3`
   would create forbidden multiplicity `n-2`; a move out of multiplicity
   `n-1` would likewise create multiplicity `n-2` for the source value.
   Together with S014's existing `n-2` exclusion and `n-1` isolation,
   this yields the stated target/source bounds.
4. **Deficit descent.** After a safe `b -> a` replacement, deleting all
   `a` copies removes exactly the original `a`-positions plus the replaced
   source position. S014-P4 therefore gives the claimed exact length
   `n-v_a(S)-2` witness in the original support-deleted sequence with that
   source position removed.
5. **Two-extension witness.** From the common deletion star `T=Sp^{-1}`,
   both `Tb_*` and `Tx_*` are extremal. At length `4n+1=s(G)`, every
   forced `n`-zero sum in `Tx_*b_*` must contain both appended positions;
   removing them gives length `n-2` and sum `-(x+b)`. Core transport then
   forces every such witness to contain `K_x(S)\setminus\{p\}`.
6. **Residual factorization.** Removing the positional intersection `K_x`
   from every `-x` representation leaves a fixed-cardinality residual family
   whose positional intersection is empty by maximality of `K_x`. Deficits
   zero and one then have the claimed unique / equal-valued-reservoir forms.

No division in the group, Property D, quotient-fiber decomposition, kernel
pair-sum theorem, capacity bound, local-hole statement, progressive-block
argument or eta-freeness assumption is used.

## Source boundary

A focused check was made because the core-transport statement resembles an
exchange theorem. Girard--Schmid 2019 remains the controlling exact-threshold
source, and Gao--Hong--Peng 2022 was rechecked as the closest general inverse
fixed-length literature already indexed by the programme. Focused replacement /
exchange searches did not surface another primary theorem statement directly
matching S015-P1--P4. This is a bounded non-hit only and is not novelty,
open-status, completeness or significance evidence.

## Computation

No mathematical computation or solver experiment was run. The S015 results are
symbolic all-`m` deductions.

## Repository validation

The repository checker was run on a materialized structural mirror carrying
S015 as the unique completed checkpoint and S016 as the single ready successor:

`python3 scripts/check_authority.py`

The first mirror setup attempt created `S00`--`S15` directories instead of
`S000`--`S015`; the checker correctly failed because all checkpoint records
were therefore absent. This was a validation-mirror construction error only;
no repository file was changed by that attempt. After correcting the directory
names, the exact checker passed:

`PASS: authority state, session uniqueness, independent gate semantics, blocker/prompt consistency, 0 local links, and original licence`

A JSON parse plus explicit checks for one S015 checkpoint, completed S015 state,
ready S016 state and live-prompt status also passed. Live GitHub authority is
re-read separately after the final writes.

Repository checks establish bookkeeping consistency only; they do not certify
mathematical truth, novelty, independent review or publication readiness.
