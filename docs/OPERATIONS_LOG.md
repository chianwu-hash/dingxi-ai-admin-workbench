# Operations Log

This file records dated changes that future AI assistants and maintainers may need before modifying the public teaching site or flow packs.

Do not record secrets, official brand files, real school records, account identifiers, browser sessions, logged-in screenshots, usage-quota details, or personal data.

## 2026-08-09 — Add repo-local AI memory layer

Changed:

- Updated `AGENTS.md` to include repo-local memory docs in required startup reading.
- Added `CLAUDE.md`.
- Added `docs/PROJECT_MEMORY.md`.
- Added `docs/RUNBOOK.md`.
- Added this operations log.
- Updated `README.md` to point to memory docs.

Reason:

- `dingxi-ai-admin-workbench` is a public teaching site and flow-pack repo with strict public/private boundaries.
- Future agents need clear source hierarchy, public-template safety, writing SOP, deployment, and brand-asset rules before changing it.

Validation:

- Docs-only change.
- No deployment was run.
- No official brand file, account data, real Gmail/Calendar data, real official-document case, browser session, screenshot, or personal data was read or copied into memory docs.

Next-time warnings:

- Run public safety checks before pushing website or flow-pack changes.
- Do not commit official Dingxi brand assets or internal school records.
- Keep Unit 4/5 aligned with the current `browser-automation-workflow` route, not archived CDP packs.

## 2026-08-09 — Clarify Unit 7 mascot derivative policy

Changed:

- Updated `public-template-policy.md`, `AGENTS.md`, `README.md`, and `docs/PROJECT_MEMORY.md` to record the user's decision that authorized internal mascot and brand-style references may be uploaded to ChatGPT for derivative generation.
- Clarified that reviewed derivative mascot or brand-style examples may be public, while original official crest files, mascot reference files, internal banners, logged-in screenshots, and personal data remain forbidden in the public repo.
- Polished Unit 7 so the sample card is visibly marked as a mock example and the dialogue consistently uses the light mascot for the school affairs meeting card.

Reason:

- Unit 7 needs to teach the real Dingxi brand-image workflow without committing source mascot assets or confusing sample cards with official notices.

Validation:

- `SITE_LINKS_OK`
- `NO_OFFICIAL_BRAND_FILES`
- `FLOW_PACK_JSON_OK`
- `PROMPT_COPY_OK`
- `NO_LOCAL_MD_LINKS`
- `git diff --check` passed with only CRLF conversion warnings.
- AI Work Browser CDP check confirmed desktop and 375px mobile views have no horizontal overflow, the sample badge and caption are visible, the generated image loads, and Unit 7 has one prompt box with one copy button.

## 2026-08-09 — Add chat-mode review to unit completion SOP

Changed:

- Updated `site-plan/web-writing-sop.md` so every completed website unit should go through a `$chat-mode` Claude Desktop read-only review before being treated as final.
- Updated `docs/RUNBOOK.md` and `docs/PROJECT_MEMORY.md` to make the review gate part of the routine maintenance workflow.

Reason:

- The project now intentionally uses Claude as a second reviewer for completed units, while Codex remains the only writer and final evaluator.

Validation:

- `SITE_LINKS_OK`
- `NO_OFFICIAL_BRAND_FILES`
- `FLOW_PACK_JSON_OK`
- `PROMPT_COPY_OK`
- `NO_LOCAL_MD_LINKS`
- `git diff --check` passed with only CRLF conversion warnings.

## 2026-08-09 — Rework Unit 8 crest teaching stance

Changed:

- Rewrote `site/modules/activity-poster.html` from the Unit 6 and Unit 7 context into an activity-poster workflow.
- Updated the learner flow to: provide activity data, ask AI to organize poster text, choose or ask AI to suggest a style, generate the poster base with a clean reserved crest area, then place the official crest there for school identity.
- Removed the large Unit 8 copyable prompt and shifted the page to a dialogue-led flow that starts with `請啟動頂溪國小品牌識別生圖流程`.
- Updated homepage, roadmap, packs page, flow-pack overview, and README wording so Unit 8 focuses on activity data, poster style, and school identity instead of crest precision.
- Preserved the earlier testing conclusion in project history: a ChatGPT-generated crest can look acceptable to ordinary viewers in one poster, but the public teaching page does not need to explain that internal decision process.
- Added `.gitignore` entries for official Dingxi brand source filenames as a second public-repo safety guard.
- Ran a `$chat-mode` Claude Desktop read-only prepublish review. Claude reported no blocking public-safety issue, then Codex fixed its actionable findings: removed stale prompt-box log claims, hid remaining base-image implementation wording from public copy, aligned the publishing-check intro with the actual three cards, and removed the unused `next-unit-preview` hook.

Reason:

- The learner's first concern is making a usable school-branded poster: give AI the right activity information, settle the visual style, and add the crest so the result has school identity.

Validation:

- `SITE_LINKS_OK` for 22 site HTML entry points
- `NO_UNIT8_PROMPT_BOX`
- `NO_LOCAL_MD_LINKS` in site HTML
- `NO_OFFICIAL_BRAND_FILES` for the public/tracked tree
- `FLOW_PACK_JSON_OK`
- `git diff --check` passed with only CRLF conversion warnings.
- AI Work Browser CDP check on `http://127.0.0.1:4190/site/modules/activity-poster.html` confirmed desktop and 375px mobile views had no horizontal overflow, the Unit 8 workflow wording rendered, the page had no Unit 8 prompt box, the preview text was not clipped, two matching section dividers rendered, and the route now points to Unit 9 as `認識 skill`.

## 2026-08-11 — Prepare Unit 9 skill lesson for publication

Changed:

- Added `site/modules/skills.html` as Unit 9, teaching skill as a stabilized SOP for AI rather than a technical starting point.
- Added Unit 9 navigation from homepage, roadmap, packs page, and Unit 8 next-link context.
- Added `assets/illustrations/unit9-skill-sop.webp`, a public-safe no-text/no-logo WebP illustration showing work materials becoming a reusable workflow.
- Ran a `$chat-mode` Claude Desktop read-only prepublish review. Claude concluded `publish after fixes`; Codex accepted the blocking findings and fixed repeated concepts, clarified that some skill names worked in the background, verified `ai-work-browser` and `chatgpt-image-batch` against `browser-automation-workflow`, restored the "ask AI what skills are available" guidance, added a data-boundary note for web search, moved Unit 9 out of the roadmap's later-units section, and updated memory docs.

Reason:

- Unit 9 should help school administrative colleagues recognize when a repeated AI workflow is worth preserving, without asking them to begin from engineering details.

Validation:

- `SITE_LINKS_OK` for site HTML links.
- `PROMPT_COPY_OK`; Unit 9 intentionally has no prompt box and does not load `copy-prompts.js`.
- `NO_LOCAL_MD_LINKS`; the only `.md` site link remains the allowed GitHub `blob/main` safety checklist link.
- `NO_OFFICIAL_BRAND_FILES`; public assets still contain placeholders only, and no official crest or source mascot image was added.
- `FLOW_PACK_JSON_OK`, excluding local-private machine logs.
- `git diff --check` passed with only CRLF conversion warnings.
- AI Work Browser CDP check on `http://127.0.0.1:4194/site/modules/skills.html` confirmed desktop 1365x900 and mobile 390x844 had no horizontal overflow, Unit 9 title rendered, placeholder crest and `unit9-skill-sop.webp` loaded, and the revised background-skill, data-boundary, and available-skill guidance appeared.
