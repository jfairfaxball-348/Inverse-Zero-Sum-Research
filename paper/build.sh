#!/usr/bin/env bash
set -euo pipefail
cd "$(dirname "$0")"
export SOURCE_DATE_EPOCH=1791507600
export FORCE_SOURCE_DATE=1
export TZ=UTC
export LC_ALL=C
latexmk -pdf -outdir=build -interaction=nonstopmode -halt-on-error -file-line-error main.tex
python3 ../scripts/check_paper.py --log build/main.log --blg build/main.blg
cp build/main.pdf main.pdf
printf 'Built paper/main.pdf\n'
