# Project Runbook

Last reviewed: 2026-08-09
Owner: project maintainers and authorized AI assistants

## Scope

This runbook covers repeatable operations for the public Dingxi AI Admin Workbench repo: static-site editing, flow-pack editing, website writing checks, public-template safety checks, Vercel deployment verification, and repo-local memory updates.

It does not authorize exposing internal school records, official brand image files, logged-in browser state, real Gmail/Calendar data, account usage records, or personal data.

## Safety rules

- Do not commit official Dingxi crest files, mascot reference files, internal banner files, OAuth tokens, client secrets, API keys, `.env.local`, cookies, sessions, real Gmail data, real Calendar IDs, real official-document cases, personal data, browser profiles, or logged-in screenshots.
- Keep public examples fake, generic, and reusable.
- Preserve the public-template boundary described in `public-template-policy.md`.
- Before committing public changes, run the safety checks from `HANDOFF.md`.
- Do not deploy or change Vercel project protection unless the user explicitly authorizes it.

## Routine procedures

### Start a maintenance task

1. Read `AGENTS.md`.
2. Read `HANDOFF.md`.
3. Read `README.md`.
4. Read `public-template-policy.md`.
5. Read `docs/PROJECT_MEMORY.md`.
6. Read `docs/RUNBOOK.md`.
7. If editing site copy, read `site-plan/web-writing-sop.md`.
8. Run `git status --short --branch`.

### Edit a website page

Rules:

- Speak to school administrative colleagues.
- Use action-oriented headings.
- Keep engineering details out of the main user path.
- Provide copy buttons for all prompt boxes.
- Avoid repeating the same concept on the same page.

Validation:

- Run the gist-list anti-repetition self-check from `site-plan/web-writing-sop.md`.
- Confirm every `.prompt-box` has `button[data-copy-prompt]`.
- Confirm pages with copy buttons load `copy-prompts.js`.
- Confirm site HTML does not link to local `.md` files.

### Run public safety checks

Use the checks documented in `HANDOFF.md`:

- site local links
- official brand files absent
- flow-pack JSON templates parse
- prompt-copy rules when prompt boxes change
- no local Markdown links in site HTML

Do not push public changes until relevant checks pass or known pre-existing failures are documented.

### Prepare public template export

```powershell
.\scripts\prepare-public-template.ps1
```

Validation:

- `_public-template/` contains only allowed public materials.
- Official brand files and internal records are absent.

### Deploy to Vercel

Only when explicitly authorized.

```powershell
vercel deploy --prod
vercel ls dingxi-ai-admin-workbench
vercel project protection dingxi-ai-admin-workbench --format json
```

Validation:

- Production URL opens publicly when that is intended.
- Production alias points to the latest intended deployment.
- SSO/project protection state matches the user-approved public/private intent.

## Incident diagnosis

| Symptom | First checks | Next action |
|---|---|---|
| Official brand file found | Filename and path | Remove before commit; use placeholders in public repo. |
| Public page feels repetitive | Gist-list self-check | Merge or delete duplicate concepts before delivery. |
| Copy button missing or broken | Prompt-box markup and `copy-prompts.js` | Fix markup and rerun prompt-copy check. |
| Broken static link | Site link checker | Fix relative path or replace with GitHub rendered link. |
| Public Vercel URL shows stale content | `vercel ls`, alias target | Repoint/deploy only with explicit authorization. |
| Flow-pack JSON fails parsing | Changed JSON template | Fix JSON syntax before push. |

## Maintenance

Update this runbook when the teaching sequence, public-template policy, flow-pack inventory, safety checks, Vercel deployment path, or writing SOP changes. Record major dated changes in `docs/OPERATIONS_LOG.md` and durable decisions in `docs/PROJECT_MEMORY.md`.
