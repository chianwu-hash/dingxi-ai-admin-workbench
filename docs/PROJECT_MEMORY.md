# Project Memory

Last reviewed: 2026-08-09

## Project identity

- Project name: `dingxi-ai-admin-workbench`
- Repository: `https://github.com/chianwu-hash/dingxi-ai-admin-workbench`
- Production URL: `https://dingxi-ai-admin-workbench.vercel.app`
- Main branch: `main`
- Project type: public static teaching website and downloadable flow-pack repo for Dingxi AI administrative workflows.

## Source-of-truth order

1. Current repo files and Git state.
2. `AGENTS.md`, `HANDOFF.md`, `README.md`, and `public-template-policy.md`.
3. `site-plan/web-writing-sop.md` for website writing, prompt boxes, and public-page style.
4. `docs/PROJECT_MEMORY.md`, `docs/RUNBOOK.md`, and `docs/OPERATIONS_LOG.md` for orientation.
5. Nowledge Memory for cross-tool recall only.
6. Raw Threads as unverified evidence only.

## Current project shape

This repo is the standalone public repo for the Dingxi AI Admin Workbench teaching site and flow packs. It is not the internal school working copy and must not contain real operational data or official internal brand image files.

Core teaching model:

```text
看成果 -> 學方法 -> 拿流程包
```

Current public content is a static HTML/CSS site plus flow-pack materials. The site is intentionally low technical threshold and should speak like a colleague guiding school administrative staff, not like engineering documentation.

## Public content boundaries

Allowed:

- static HTML/CSS teaching pages
- fake demo data
- flow-pack templates
- checklists
- generic reusable examples
- placeholder brand assets
- reviewed generated Dingxi mascot or brand-style derivative examples
- internal brand-source pointer files such as `brand/brand-source.json`

Not allowed:

- official Dingxi crest image files
- official mascot source files
- internal banner images
- OAuth tokens, client secrets, API keys, `.env.local`
- real Gmail data, Calendar IDs, backups, or event data
- real public-document case details
- personal data
- browser profiles, cookies, sessions, or screenshots containing logged-in accounts
- account identifiers, usage-quota details, or pilot screenshots

## Active decisions

### 2026-08-09 Public repo must remain sanitized and template-oriented

Status: active
Scope: all public repo content
Source: `AGENTS.md`, `README.md`, `public-template-policy.md`

Decision:

- Keep public examples fake, generic, and reusable.
- Keep official Dingxi brand files and internal operational data out of the public repo.
- The internal UNC path may be kept as a pointer, but it is not a public asset distribution mechanism.

Reason:

- This repo is public teaching material, not the internal school working copy.

### 2026-08-09 Authorized mascot references may be used for derivative examples

Status: active
Scope: Dingxi mascot and brand-style teaching examples
Source: user decision, `public-template-policy.md`

Decision:

- Authorized internal Dingxi mascot and brand-style reference images may be uploaded to ChatGPT for derivative image generation.
- Reviewed derivative mascot or brand-style examples may be committed and published in the public repo.
- Original official crest files, original mascot references, internal banners, logged-in screenshots, and personal data still must not be committed.
- Public derivative examples should be visibly marked as samples when they could be mistaken for real notices.

Reason:

- Unit 7 teaches a real school workflow that depends on mascot identity, while the public repo still needs to avoid publishing source assets or internal records.

### 2026-08-09 Static site remains the default architecture

Status: active
Scope: website implementation
Source: `AGENTS.md`, `HANDOFF.md`

Decision:

- Keep the site as static HTML/CSS.
- Avoid adding a build system unless there is a clear need.
- Vercel settings are Framework: Other, root `.`, output `.`, no build command.

Reason:

- The repo serves a teaching site and downloadable flow-pack materials.

### 2026-08-09 Website writing favors colleague-style action guidance

Status: active
Scope: public website pages
Source: `site-plan/web-writing-sop.md`

Decision:

- Write for school administrative colleagues, not maintainers.
- Use short action-oriented headings and plain language.
- Prompt boxes must be self-contained and include one-click copy buttons.
- Do not repeat the same concept across multiple sections on the same page.

Reason:

- The target reader needs the next safe action, not the underlying tool architecture.

### 2026-08-09 Completed units require chat-mode Claude review

Status: active
Scope: website unit completion workflow
Source: user decision, `site-plan/web-writing-sop.md`

Decision:

- When a website unit reaches completion quality, Codex should run a `$chat-mode` Claude Desktop read-only review before treating the unit as final.
- Use a clean Git baseline and guarded `review-readonly` Bypass when possible.
- If the worktree is dirty, unversioned, detached, or unusually sensitive, use Manual read-only fallback rather than forcing Bypass.
- Codex remains the sole writer and decides which Claude findings to accept.
- Record the review summary in `docs/OPERATIONS_LOG.md`; store durable policy decisions in Nowledge Memory.

Reason:

- Claude review is now part of the project quality gate for completed teaching units, especially for public-safety, copy clarity, layout, and SOP compliance.

### 2026-08-09 Current browser setup route is `browser-automation-workflow`

Status: active
Scope: Unit 4/5 and browser flow packs
Source: `README.md`, `HANDOFF.md`

Decision:

- Archived legacy `cdp-safety-foundation-pack` and `browser-session-init-pack` are historical references only.
- Current Unit 4 is a browser-use safety concept page.
- Current Unit 5 uses `browser-automation-workflow` as the single setup entrypoint.

Reason:

- The public learning route should not expose users to older three-repo setup details.

## Deployment

Production URL:

```text
https://dingxi-ai-admin-workbench.vercel.app
```

Deployment note:

- The production alias previously needed manual reset after Vercel pointed it at an older `_public-template` deployment.
- Verify the current production alias after each deploy.

## Known failure modes

| Issue | Root cause | Fix or first response |
|---|---|---|
| Official brand assets accidentally committed | Internal/public copy boundary ignored | Run official-brand-file safety check and remove before commit. |
| Public page becomes too technical | Maintainer details leak into user-facing copy | Rewrite according to `site-plan/web-writing-sop.md`. |
| Prompt box lacks copy behavior | HTML pattern incomplete | Use `.prompt-box`, `button[data-copy-prompt]`, and load `copy-prompts.js`. |
| Static site local link broken | Moved page or relative path mismatch | Run site link safety check before push. |
| Markdown linked directly from public HTML | Local `.md` linked instead of GitHub-rendered URL | Replace with GitHub `tree/main` or `blob/main` links. |
| Production alias points to old deployment | Vercel alias state drift | Inspect Vercel project/deployments and repoint if authorized. |

## User preferences for this project

- Use Traditional Chinese when communicating.
- Keep public content practical, low-jargon, and directly usable by school administrative colleagues.
- Keep official brand assets and real operational data out of public commits.
