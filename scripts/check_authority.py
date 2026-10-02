#!/usr/bin/env python3
"""Check repository authority and prompt gating, not mathematical truth."""

import hashlib
import json
import re
import sys
from pathlib import Path


ROOT = Path(__file__).resolve().parents[1]
REQUIRED = [
    "AGENTS.md", "README.md", "LICENSE",
    "authoritative/START_HERE.md", "authoritative/STATE.json",
    "authoritative/PROJECT_CHARTER.md", "authoritative/ROADMAP.md",
    "authoritative/TARGET_REGISTER.md", "authoritative/PUBLICATION_REGISTER.md",
    "authoritative/REVIEWER_REGISTER.md", "authoritative/CLAIMS_AND_SOURCES.md",
    "authoritative/DECISIONS_AND_BLOCKERS.md",
    "authoritative/FAILURE_AND_LESSON_LEDGER.md",
    "authoritative/SESSION_LEDGER.md", "docs/SESSION_PROTOCOL.md",
    "docs/CLOSEOUT_TEMPLATE.md",
]
GATES = ["target_gate", "publication_gate", "external_review_gate", "computation_gate"]
PROMPT = ROOT / "authoritative/NEXT_SESSION_PROMPT.md"


def main():
    errors = []

    def require(condition, message):
        if not condition:
            errors.append(message)

    for name in REQUIRED:
        require((ROOT / name).is_file(), f"Missing required file: {name}")
    try:
        state = json.loads((ROOT / "authoritative/STATE.json").read_text())
    except (OSError, ValueError) as error:
        print(f"FAIL: cannot read authority state: {error}")
        return 1

    require(state.get("schema_version") == 1, "Unknown state schema")
    require(isinstance(state.get("active_owner_blockers"), list), "Blockers must be a list")
    require(isinstance(state.get("confirmed_reviewers"), list), "Reviewers must be a list")
    require(re.fullmatch(r"[0-9a-f]{40}", state.get("bootstrap_predecessor", "")),
            "Bootstrap predecessor must be a full commit SHA")
    for gate in GATES:
        require(state.get(gate) in {"OPEN", "CLOSED"}, f"Invalid gate: {gate}")

    checkpoints = state.get("session_checkpoints", [])
    require(isinstance(checkpoints, list) and bool(checkpoints), "No checkpoint ledger")
    ids = [item.get("id") for item in checkpoints]
    require(len(ids) == len(set(ids)), "Duplicate session IDs")
    for item in checkpoints:
        require(re.fullmatch(r"S[0-9]{3,}", item.get("id", "")), "Invalid session ID")
        require(item.get("status") in {"COMPLETED", "PARTIAL", "BLOCKED", "RUNNING"},
                f"Invalid status for {item.get('id')}")
        require((ROOT / item.get("record", "__missing__")).is_file(),
                f"Missing checkpoint record for {item.get('id')}")
    require(sum(item.get("status") == "RUNNING" for item in checkpoints) <= 1,
            "More than one running session")
    require(any(item.get("id") == state.get("last_completed_session")
                and item.get("status") == "COMPLETED" for item in checkpoints),
            "Last completed session is not completed in checkpoint ledger")

    blockers = state.get("active_owner_blockers", [])
    if blockers:
        require(state.get("next_prompt_status") == "SUPPRESSED_OWNER_BLOCKER",
                "Owner blocker must suppress prompt status")
        require(not PROMPT.exists(), "Owner blocker exists but live prompt file remains")
        require(state.get("next_session") is None and state.get("next_brief") is None,
                "Owner blocker cannot leave a scheduled ready session/brief")
        blocker_text = (ROOT / "authoritative/DECISIONS_AND_BLOCKERS.md").read_text()
        for blocker in blockers:
            require(isinstance(blocker, str) and blocker in blocker_text,
                    f"Active blocker absent from decision record: {blocker}")
    else:
        status = state.get("next_prompt_status")
        require(status in {"READY", "NONE"}, "Invalid unblocked prompt status")
        if status == "READY":
            next_id = state.get("next_session") or ""
            brief = state.get("next_brief")
            require(re.fullmatch(r"S[0-9]{3,}", next_id), "Invalid next session")
            require(next_id not in ids, "Ready next session already appears in checkpoints")
            require(isinstance(brief, str) and (ROOT / brief).is_file(), "Missing next brief")
            require(PROMPT.is_file(), "READY status requires live prompt")
            if PROMPT.is_file():
                prompt_text = PROMPT.read_text()
                require(f"Session: {next_id}." in prompt_text, "Prompt/state session mismatch")
                require("Status: READY." in prompt_text and "```text" in prompt_text,
                        "Ready prompt lacks explicit status or copyable block")
        else:
            require(not PROMPT.exists(), "NONE status must not leave live prompt")
            require(state.get("next_session") is None and state.get("next_brief") is None,
                    "NONE status cannot imply scheduled continuation")

    if state.get("target_gate") == "OPEN":
        require(bool(state.get("exact_target")), "Open target gate needs exact target")
    if state.get("external_review_gate") == "OPEN":
        require(bool(state.get("confirmed_reviewers")), "Open review gate needs reviewer")
    if state.get("computation_gate") == "OPEN":
        require(all(state.get(gate) == "OPEN" for gate in GATES[:3]),
                "Computation gate cannot open before all three preflight gates")

    checked_links = 0
    for path in ROOT.rglob("*.md"):
        for target in re.findall(r"\[[^\]]*\]\(([^)]+)\)", path.read_text()):
            if re.match(r"(?:[a-zA-Z][a-zA-Z0-9+.-]*:|#)", target):
                continue
            target = target.split("#", 1)[0]
            if target:
                checked_links += 1
                require((path.parent / target).exists(),
                        f"Broken local link in {path.relative_to(ROOT)}: {target}")

    licence = ROOT / "LICENSE"
    if licence.is_file():
        content = licence.read_bytes()
        blob = hashlib.sha1(b"blob " + str(len(content)).encode() + b"\0" + content).hexdigest()
        require(blob == "261eeb9e9f8b2b4b0d119366dda99c6fd7d35c64",
                "Existing Apache licence changed; reconcile deliberately")

    if errors:
        for error in errors:
            print(f"FAIL: {error}")
        return 1
    print(f"PASS: authority state, session uniqueness, preflight gates, blocker/prompt "
          f"consistency, {checked_links} local links, and original licence")
    return 0


if __name__ == "__main__":
    sys.exit(main())
