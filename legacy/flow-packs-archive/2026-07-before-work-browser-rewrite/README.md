# Legacy Flow Packs Archive

Archived on 2026-07-24.

This folder keeps older browser-automation flow-pack materials that no longer
match the current public learning route.

Archived items:

- `cdp-safety-foundation-pack`
- `browser-session-init-pack`

Why archived:

- Unit 4 is now a learner-facing concept page: "讓 AI 使用瀏覽器前，先確認五件事".
- Unit 4 should not ask general users to install repos, run CDP commands, or
  understand browser automation internals.
- Unit 5 now uses `browser-automation-workflow` as the single setup entrypoint.
  Its `npm install` brings in `cbs-workflows` and `cdp-tools`, so users should
  not be asked to clone or install those two repos separately.

Keep these materials only for historical reference or migration checks. Do not
link them from the public website or present them as the current setup flow.
