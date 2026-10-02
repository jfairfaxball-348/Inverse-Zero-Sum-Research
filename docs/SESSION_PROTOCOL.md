# Autonomous session and authority protocol

## 1. Enter and reconcile

Use the pasted closeout prompt to locate the repository. Read live committed
authority, pin incoming branch/commit and record them with the required file
inventory in `sessions/<ID>/INPUT_SNAPSHOT.md`. Resolve any mismatch with the
prompt before consuming authority. Inspect existing branches/session records
when necessary to detect an interrupted or parallel session.

Exactly one numbered research session runs per turn. Resume an unfinished
session rather than duplicating its ID. If newer work makes the kickoff stale,
reconcile it explicitly. Do not reset or overwrite another session's changes.

## 2. Execute autonomously

Complete the bounded unit in the brief using the tools and sources actually
available. Use reasonable judgement for routine implementation and research
documentation. Do not ask the owner to repeatedly authorize work already within
scope. Remain inside the selected stage gate. Report relevant progress during
long work; user steering amends the current task unless it explicitly cancels it.

Useful checkpoints include a corrected source boundary, a rigorous falsification,
a validated partial lemma after preflight, a resolved dependency, or a concrete
candidate comparison. A large volume of notes alone is not a progress claim.

## 3. Handle blockers before prompting

Distinguish ordinary source/tool limits from owner-dependent blockers. Continue
independent useful work where it advances the agreed unit. If progress requires
the owner to decide, send a message, supply a reply/document, authorize an external
action or fulfil another requirement, prepare the concrete reviewable result
first where possible, checkpoint it, then activate and report the blocker.

**On an active owner blocker: request exactly what is needed and output NO
next-session prompt.** No resolution-only, conditional, placeholder or "run this
after doing X" prompt is allowed. Do not imply that past general willingness,
silence or elapsed time is an answer. Remove the live next-prompt file and set
the machine state to `SUPPRESSED_OWNER_BLOCKER`. Clear the next-session and
next-brief fields and update links that pointed to the removed live prompt.

Later-stage unfulfilled requirements may remain future tasks while a genuinely
independent authorized unit is runnable. Do not use this distinction to bypass
an actual dependency. Explicit owner stop conditions always apply.

## 4. Prepare the durable closeout

Synchronize at least: state, session ledger, decisions/blockers, target/venue/
reviewer registers and changed claims/sources. Update the failure ledger when a
route or claim fails. Write `sessions/<ID>/CLOSEOUT.md` following the template.
Classify results honestly and include changed files, validation, limits,
remaining obligations and the next useful unit or required owner action.

If unblocked, create the next brief and `authoritative/NEXT_SESSION_PROMPT.md`
with one ready kickoff. It must not depend on unstated approval or an assumed
reply. Do not schedule proof/computation while the preflight gate is closed.
If blocked, write the request and leave no live kickoff file. Past completed
session records remain historical records; their old prompts are never live
authority for a blocked or superseded state.

## 5. Validate and checkpoint

Run `python3 scripts/check_authority.py`, review changed content and inspect the
diff. Run checks appropriate to any mathematical or code change; documentation
checks do not validate mathematical truth. Do not add tests solely mirroring
low-impact edits. Complete checks required by the actual stage.

For this owner-authorized research repository, routine reversible documentation
checkpoints may be committed to unprotected main. Honour later repository branch
rules; use a branch/PR if necessary and never claim it is authoritative main until
actually integrated. Do not weaken protections or force-push. Use fast-forward
updates and recheck the remote head before publication to avoid stale writes.

Pin the incoming revision in the closeout. A file cannot embed the hash of its
own containing commit. Report the actual outgoing SHA after creating and
verifying the remote commit; the next session must independently pin it.
If publishing the checkpoint fails, say so and do not present an immediately
runnable continuation based on unpublished authority. Preserve work locally and
request owner action only if a safe authorized retry cannot resolve the failure.

## 6. Automatically finish

After a useful validated remote checkpoint, output the concise close report
without waiting for "finish up". Include the commit link and outcomes, not a
chronological tool log. If blocked, finish with the required owner request and
no prompt. If unblocked, finish with exactly one copyable next-session prompt.

This is a conversational handover protocol, not a scheduled background
automation. The owner starts the next session by pasting its ready prompt.
