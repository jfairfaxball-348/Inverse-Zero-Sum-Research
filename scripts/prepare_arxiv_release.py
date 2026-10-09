#!/usr/bin/env python3
"""Deterministically pack arXiv LaTeX sources and test a clean unpacked build.

Local release artifacts under paper/release are generated, not published.
The author must select a paper licence and authorize any actual arXiv deposit.
"""
import gzip
import hashlib
import io
import json
import os
from pathlib import Path
import re
import shutil
import subprocess
import tarfile
import tempfile

ROOT = Path(__file__).resolve().parents[1]
PAPER = ROOT / "paper"
OUTPUT = PAPER / "release"
FILES = ("main.tex", "references.bib")
EPOCH = "1791507600"


def digest(data):
    return hashlib.sha256(data).hexdigest()


def main():
    OUTPUT.mkdir(parents=True, exist_ok=True)
    source = {name: (PAPER / name).read_bytes() for name in FILES}
    assert b"\x00" not in b"".join(source.values()), "Not text sources"
    assert b"\\begin{document}" in source["main.tex"]
    assert b"\\bibliography{references}" in source["main.tex"]
    archive = OUTPUT / "arxiv-source.tar.gz"
    with archive.open("wb") as raw:
        with gzip.GzipFile(fileobj=raw, mode="wb", mtime=0, filename="") as compressed:
            with tarfile.open(fileobj=compressed, mode="w") as tar:
                for name in FILES:
                    data = source[name]
                    item = tarfile.TarInfo(name)
                    item.size = len(data)
                    item.mode = 0o644
                    item.mtime = 0
                    item.uid = item.gid = 0
                    item.uname = item.gname = ""
                    tar.addfile(item, io.BytesIO(data))
    with tempfile.TemporaryDirectory(prefix="arxiv-clean-") as tmp:
        work = Path(tmp)
        with tarfile.open(archive, mode="r:gz") as tar:
            members = tar.getmembers()
            assert tuple(item.name for item in members) == FILES
            for item in members:
                assert item.isfile()
                data = tar.extractfile(item).read()
                assert data == source[item.name]
                (work / item.name).write_bytes(data)
        env = dict(os.environ, SOURCE_DATE_EPOCH=EPOCH, FORCE_SOURCE_DATE="1", TZ="UTC", LC_ALL="C")
        build = subprocess.run(
            ["latexmk", "-pdf", "-interaction=nonstopmode", "-halt-on-error",
             "-file-line-error", "main.tex"],
            cwd=work, env=env, capture_output=True, text=True
        )
        if build.returncode:
            raise RuntimeError("Unpacked source failed to build:\n" + (build.stdout + build.stderr)[-6500:])
        pdf, log, blg, bbl = (work / n for n in ("main.pdf", "main.log", "main.blg", "main.bbl"))
        assert pdf.is_file() and pdf.stat().st_size > 10000
        assert all(p.is_file() for p in (log, blg, bbl))
        problems = re.findall(r"^.*(?:Overfull|undefined|multiply defined|LaTeX Error|^!|Rerun to get|Label\(s\) may have changed).*$", log.read_text(errors="replace"), re.M)
        assert not problems, problems
        assert not re.search(r"Warning--|I couldn.t open|error message", blg.read_text(errors="replace"))
        bbl_text = bbl.read_text()
        for key in ("Fan2012", "Gao2024", "Palomar2026"):
            assert r"\bibitem{" + key + "}" in bbl_text, "Unresolved bibliography: " + key
        assert b"\\end{document}" in source["main.tex"]
        shutil.copyfile(pdf, OUTPUT / "preview.pdf")
        manifest = {
            "purpose": "S062 author-review source package; NOT an arXiv submission",
            "archive": archive.name,
            "archive_sha256": digest(archive.read_bytes()),
            "source_entries": {name: {"size": len(data), "sha256": digest(data)} for name, data in source.items()},
            "clean_unpacked_build": "PASS",
            "clean_bibliography": "PASS",
            "clean_log": "PASS",
            "preview_pdf_sha256": digest(pdf.read_bytes()),
            "preview_pdf_size_bytes": pdf.stat().st_size,
            "external_actions": "NONE"
        }
    (OUTPUT / "manifest.json").write_text(json.dumps(manifest, indent=2, sort_keys=True) + "\n")
    print("PASS: deterministic minimal arXiv archive, byte-identical source roundtrip, clean unpacked LaTeX/BibTeX build")
    print("Archive sha256:", manifest["archive_sha256"])
    print("Preview sha256:", manifest["preview_pdf_sha256"])


if __name__ == "__main__":
    main()
