# S059 source and provenance check

1. Governing frozen theorem: unchanged exact `FrozenClassification` iff and positional semantics from S057. Main baseline green CI 37805436021 and original immutable proof checkpoint 0d828d51264e11ca372830722726a836035a4b21. Compiler/Mathlib migration is proof-preserving in mathematical content; no new original research statement.
2. Official PalomarSubmission main pinned `d4e41c1d5b0d114c4859e6e5831dc6d3ad1d0d44`; minimum toolchain `leanprover/lean4:v4.35.0-rc2`; reusable workflow `.github/workflows/submission.yml`. Its default execution profile requires a Namespace-hosted 16x32 runner not available to this repository's observed verification jobs.
3. Official PalomarTemplate pinned `2891de4c48955af824969a263d31b25e7a9a1406`; copied validator and Comparator shell scripts are unmodified, Apache-2.0, provenance also recorded in `sessions/S059/TEMPLATE_PROVENANCE.md`.
4. Mathlib tag `v4.35.0-rc2` pinned to commit `065356127b1dc0016f66b7283ce0ce2c4055aa55` in `lake-manifest.json`.
5. Human author and responsible maintainer: John Fairfax-Ball, explicit D-161 owner confirmation. Substantive generative AI involvement disclosed in metadata. No independent human peer review claimed. S042 prior-art non-hit is not a novelty or priority certificate.
6. No Palomar submission, registration, external outreach, paper writing, arXiv or E-JC submission was authorized in this technical port.

## Verified machine-proof and official-runner-source boundary

GitHub Actions run 37809065386 confirms Challenge and Solution definitions match; con-ron (8731 accepted declarations), NanoDa and default Lean kernel accepted the complete `frozenClassification` solution. Separate main GitHub Actions 37809075335 confirms the pinned compiler build and authority checker pass. The two are both on commit `7b4648b81278655409a43e847e7f384daed32872`.

Official PalomarSubmission `execution-profiles.json` at d4e41c1d5b0d114c4859e6e5831dc6d3ad1d0d44 lists the mandatory Namespace profile `palomar-namespace-16x32-v1` selecting `nscloud-ubuntu-24.04-amd64-16x32-with-features`. The official reusable full verifier's jobs remain QUEUED, hence **no official completed full preflight**. Any owner-side provision or third-party billing/change requires an explicit action; none attempted. Local acceptance is not an official final registry event.
