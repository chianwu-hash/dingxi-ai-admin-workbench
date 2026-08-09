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

- Rewrote `site/modules/activity-poster.html` around the agreed stance: ChatGPT can make a crest-like mark that looks fine in a single draft, but official/public posters should use the official crest file so every poster stays identical.
- Changed the learner flow to: try layout first, regenerate a clean poster base without crest or fake marks, then paste the official crest file in the right top corner.
- Shortened the Unit 8 starter prompt so it opens the conversation instead of carrying the whole workflow.
- Updated homepage, roadmap, packs page, flow-pack overview, and README wording so Unit 8 uses plain language such as `貼上去`, `留角落`, and `每張都一樣` instead of technical overlay language.

Reason:

- A ChatGPT web test showed that AI-generated crest marks may be acceptable to ordinary viewers in a single poster, so the public page should not exaggerate visible distortion. The stronger administrative reason is consistency across repeated school materials and reducing one checking task.

Validation:

- `SITE_LINKS_OK`
- `PROMPT_COPY_OK`
- `NO_LOCAL_MD_LINKS`
- `NO_OFFICIAL_BRAND_FILES` for the public/tracked tree
- `FLOW_PACK_JSON_OK`
- `git diff --check` passed with only CRLF conversion warnings.
- AI Work Browser CDP check on `http://127.0.0.1:4175/site/modules/activity-poster.html` confirmed desktop and 375px mobile views had no horizontal overflow, the Unit 8 core wording rendered, the new crest-consistency preview existed, the disabled next-unit navigation rendered, and the prompt box had one working copy button.
