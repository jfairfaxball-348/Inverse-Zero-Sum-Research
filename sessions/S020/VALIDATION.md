# S020 validation

Date: 2026-10-04.

This file is finalized after candidate authority validation and remote
publication. S020 uses the established structural-mirror fallback because the
execution container cannot resolve github.com directly.

Validation must include the exact `scripts/check_authority.py`, changed-record
consistency checks, a pre-publication live-main race check, fast-forward
publication to main, and post-publication SHA/content verification. Repository
checks validate authority consistency only, not mathematical truth, novelty or
publication significance.
