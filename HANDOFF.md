# Dingxi AI Admin Workbench Handoff

Last updated: 2026-07-21

## Project Status

This project is now the standalone public repository for the Dingxi AI Admin Workbench teaching site and flow packs.

## Pilot Status

Pilot implementation started on 2026-06-09 at 10:49 Asia/Taipei.

2026-06-10 status update: pilot is still active, and the number of installed / onboarded users is unchanged from 2026-06-09.

2026-06-11 status update: pilot is still active, and the number of installed / onboarded users remains unchanged.

2026-06-12 status update: pilot is still active. Continue using overall quota movement as the main observable signal, because per-user tasks and other staff's actual workflows are not available in real time.

2026-06-15 status update: pilot is still active after the weekend. Overall weekly quota movement over the weekend appears small, which supports interpreting this pilot by school workdays rather than by a simple seven-day average.

2026-06-16 status update: pilot remains active in the new weekly metering period. Keep detailed quota snapshots in local-private reports only; public handoff notes should stay qualitative and avoid account or quota details.

2026-06-17 status update: pilot remains active in the second weekly metering period, with observable weekday quota movement. Keep interpreting this as overall activity, not as proof of broad adoption.

2026-06-18 status update: pilot remains active. The quota UI appears to show a possible weekly metering reset or reset-date change earlier than expected; keep this as an observation to verify with the next few snapshots rather than treating it as a confirmed rule.

2026-06-22 status update: pilot remains active after the Dragon Boat Festival long weekend. This week has one fewer school workday, so quota movement should be compared cautiously against ordinary full workweeks. The reset-date observation remains relevant.

2026-06-23 status update: pilot remains active during the shortened workweek, with continued observable quota movement. Keep interpreting this week cautiously because of the holiday-shortened schedule and previously observed reset-date variability.

2026-06-24 status update: pilot remains active during the shortened workweek. Quota movement continues, and the previously observed reset-date variability should be checked against the next reset display.

2026-06-25 status update: pilot remains active on the previously displayed reset date. The quota UI now shows time-based reset information instead of the prior date display, so keep treating weekly metering as not fully predictable and continue daily snapshots.

2026-06-26 status update: pilot remains active after the previously observed reset-date transition. The quota UI now shows the next weekly reset date, supporting the interpretation that a new weekly metering window is active, while the exact reset behavior should still be treated cautiously.

2026-06-29 status update: pilot remains active, and the quota UI again appears to have moved into a new weekly window earlier than the previously displayed reset date. Treat Codex weekly metering as a displayed rolling/variable window rather than a simple fixed school-week or calendar-week rule; continue using daily snapshots and keep a buffer when planning trial expansion.

2026-06-30 status update: pilot remains active. The quota UI continues to show the same next weekly reset date as the prior snapshot, while usage has moved within that displayed window. This supports treating the panel as a current availability indicator, not a reliable calendar schedule.

2026-07-01 status update: pilot remains active. The weekly quota does not appear to have reset again, but the displayed next reset date moved forward compared with the prior snapshot. This further supports treating the reset display as variable and the Usage panel as a current availability indicator rather than a reliable schedule.

2026-07-02 status update: pilot remains active. The weekly quota shows only small additional movement compared with the prior snapshot, so this does not appear to be another weekly reset. However, the available manual reset count increased, which should be tracked separately from weekly quota reset behavior.

2026-07-03 status update: pilot remains active. The weekly quota again shows only small additional movement, with the same displayed reset date and unchanged manual reset count. This continues to support treating the Usage panel as a current availability indicator rather than a predictable reset schedule.

2026-07-03 adoption update: the Student Affairs Director started using the trial environment. This is a meaningful expansion signal because it adds another administrative office context beyond the original installed / onboarded roles.

2026-07-06 status update: pilot remains active after the weekend. The weekly quota shows additional movement while the displayed reset date remains unchanged, so this snapshot still does not indicate a fresh weekly reset. Continue watching whether the new user role leads to sustained use across actual administrative tasks.

2026-07-07 status update: pilot remains active on the previously displayed reset date. The quota UI changed from a date display to time-based weekly information again, but this snapshot does not show the weekly quota returning to full. Keep treating the weekly reset display as ambiguous and continue daily snapshots.

2026-07-08 status update: pilot remains active. The quota UI now appears to show a new weekly metering window after the prior date/time transition, but the exact reset behavior should still be treated cautiously. The observation period is now during summer break, so lower usage may reflect administrative handlers taking leave or having fewer immediate school-year tasks rather than low interest alone.

2026-07-15 status update: pilot remains active. The Usage panel no longer shows the previous 5-hour usage limit, and now presents the weekly usage limit plus available manual resets. Manual resets have their own expiration dates, so they should be tracked separately from weekly quota behavior and reminders should be used before each reset expires.

2026-07-16 status update: pilot remains active under the new Usage panel layout. The weekly usage limit remains the only quota percentage shown, with the same next weekly reset date and the same available manual reset count. Treat the larger one-day movement as activity within the current weekly window, not as a reset event.

2026-07-20 status update: pilot remains active under the new Usage panel layout. The weekly reset display moved again, and the available manual reset count decreased after the first recorded full-reset expiry date. Continue tracking weekly quota movement and manual reset availability as separate signals.

2026-07-21 status update: pilot remains active under the new Usage panel layout. The weekly reset date and available manual reset count are unchanged from the prior snapshot, while weekly quota continues to move within the same displayed window. This remains ordinary activity within the current weekly window, not a reset signal.

Installed / onboarded roles so far:

- 文書組
- 出納幹事
- 會計主任
- 輔導主任
- 學務主任

Pilot interpretation note: current usage data should be treated mainly as overall activity, not as proof of broad daily adoption. The main user may still be the project owner while building teaching units, testing workflows, and validating the site. The next meaningful signal is whether more staff join and continue using it over the next month. If usage remains limited to only a few people after about one month, interpret that as evidence that this may not be a current need for most school administrative staff, and consider other implementation or support options. During summer break, usage may also decrease because administrative handlers take leave or have fewer immediate school-year tasks, so summer snapshots should be interpreted with that seasonal context. Starting 2026-07-15, the UI no longer shows the previous 5-hour limit and instead emphasizes weekly usage plus expiring manual resets. Manual reset availability should be interpreted separately from weekly remaining quota.

Privacy note: keep the trial record role-based. Do not commit screenshots, account identifiers, usage-quota details, browser sessions, or any personal data from the pilot environment.

## Next Conversation Brief

The next conversation should continue from the newly opened Unit 6 direction: use the AI work browser to produce a small, concrete artifact, starting with a meeting notice card.

Current priority for the next conversation:

- Review `site/modules/meeting-notice-card.html` visually on desktop and mobile.
- Keep Unit 6 as the first small output after Unit 5: a meeting notice card, not a broad brand-design theory page.
- The learner outcome is: open the AI work browser, ask AI to organize existing meeting data into visible card text, generate a first draft in ChatGPT, then check text, date, privacy, layout, and publishing channel.
- Keep brand identity topics such as official crest, mascot, or fixed overlay out of Unit 6; reserve them for a later unit.
- If expanding this unit later, add more small card variants only after the meeting notice card flow is stable.

Key writing decision from the Unit 4 discussion:

- If a point can be said clearly in one sentence, do not repeat it in multiple sections, cards, or reminder boxes.
- Avoid using different headings to restate the same safety principle.
- The page should feel like a colleague giving a clear next step, not like repeated warnings.

2026-06-12 update: the anti-repetition rule is now a hard rule in `site-plan/web-writing-sop.md` ("重複內容硬規則"), with a single deletion-test criterion, five named violation patterns, a one-note-per-page cap, a one-meta-sentence-per-page cap, and a mandatory pre-delivery gist-list self-check. Units 0-4 were all audited and deduplicated against it on 2026-06-12. Any future page work must run that self-check before delivering.

Current public status:

- Confirmed public website content is Unit 0 through Unit 6.
- Unit 0: `site/modules/codex-install.html`
- Unit 1: `site/modules/windows-encoding.html`
- Unit 2: `site/modules/doc2md.html`
- Unit 3: `site/modules/case-routing.html`
- Unit 4: `site/modules/cdp-tools.html`, shown publicly as "讓 AI 使用瀏覽器前，先確認五件事"
- Unit 5: `site/modules/work-browser.html`, shown publicly as "建立 AI 工作瀏覽器"
- Unit 6: `site/modules/meeting-notice-card.html`, shown publicly as "做一張會議通知小卡"
- Unit 7 and later currently stay as `製作中......` until the user explicitly approves content.

Latest deployed state:

- Latest pushed commit: see `git log --oneline -1` — pushed 2026-06-15
- Production URL: `https://dingxi-ai-admin-workbench.vercel.app`
- The production alias was manually reset to the latest `dingxi-ai-admin-workbench-*` deployment after Vercel initially pointed `dingxi-ai-admin-workbench.vercel.app` at an older `_public-template` deployment. This may need to be re-pointed after each deploy.

2026-06-15 session work (committed in one batch after `baf06ba`):

- Hardened `site-plan/web-writing-sop.md` with anti-repetition hard rules: single deletion-test criterion, five named violation patterns, one `.note` box per page cap, one meta-sentence per page cap, mandatory pre-delivery gist-list self-check. AI must fix duplicates before delivering, not ask the user.
- Audited and deduplicated all Units 0-4 against the new SOP rules.
- Added `nav.unit-nav` (prev / home / next) to all 5 public unit pages and `site/styles.css`.
- Added hero visual refresh to `site/index.html` and `site/styles.css` (light green gradient replacing dark image hero).
- Generated 4 WebP illustrations with contextual Chinese text labels via ChatGPT CDP batch:
  - `assets/illustrations/unit0-codex-install.webp` — progress bar "70%" + "安裝中", 1400×787, 44KB
  - `assets/illustrations/unit1-encoding-safety.webp` — "亂碼" → 防護盾"編碼檢查" → "中文正常", 1400×787, 32KB
  - `assets/illustrations/unit2-doc-to-text.webp` — "PDF""簡報""表格""掃描" → "文字檔""自己確認", 1400×787, 33KB
  - `assets/illustrations/unit3-admin-workbench.webp` — 日曆格"運動會""校慶""期末", 資料夾"去年資料"→"今年活動", 1400×787, 44KB
- Illustration prompts saved in `site-plan/illustration-prompts/` (01–04).
- Local preview server config saved in `.claude/launch.json` (Python http.server on port 4174).

Read before continuing design work:

- `AGENTS.md`
- `HANDOFF.md`
- `site-plan/web-writing-sop.md`
- `site/index.html`
- `site/roadmap.html`
- `site/packs.html`
- `site/styles.css`
- `site/modules/cdp-tools.html`
- `site/modules/codex-install.html`
- `site/modules/windows-encoding.html`
- `site/modules/doc2md.html`
- `site/modules/case-routing.html`

Unit 4 final direction:

- The learner-facing title is "讓 AI 使用瀏覽器前，先確認五件事".
- Unit 4 is not an installation page and should not ask general administrative users to install repos.
- The core explanation is now: one browser is for the user’s daily work, and one is the AI work browser. Separating them makes the workflow easier to trust.
- GitHub, CDP, repo names, commands, session, cookie, profile, and similar maintenance terms should stay out of the main Unit 4 page.
- Repo installation belongs later in a maintainer / advanced setup page, after the general user has learned the browser-use safety concept.
- The public page currently has four sections:
  - why the user’s daily browser and the AI work browser should be separated
  - five things to confirm
  - a short reminder about misleading webpage content
  - what to do when unsure
- The CDP safety flow pack can still preserve technical and maintainer details.

Unit 3 current concept:

- Website name: "我的 AI 行政工作台"
- It replaces the unfriendly public-facing term "行政案件類型路由".
- It should teach administrative staff how to judge whether a task belongs in their AI admin workbench.
- It is not only about repeatable workflows. It should cover:
  - repeatable work with prior materials and fixed procedures, such as planning this year's school activity from last year's files;
  - one-off or low-frequency but structured batch work, such as turning school calendar data into an `.ics` import file, with API writing reserved for advanced/dry-run-confirmed flows.
- Core sentence: "這件事能不能放進我的 AI 行政工作台，變成 AI 可整理、人可確認、輸出可檢查的任務？"

Important Unit 3 direction from the user:

- Unit 3 was fine-tuned in the current conversation and should not regress.
- The strongest current example is no longer "研習來文" or vague "一批行政通知"; it is "用去年資料籌辦今年的學校活動".
- The example should emphasize that AI is not good because it invents from nothing. AI is useful because administrative staff already have prior-year files, templates, schedules, lists, and notes, and AI can extract structure from those existing materials.
- Another important example is Google Calendar data entry:
  - beginner path: organize events into an `.ics` file for manual import;
  - API writing should not be inside the beginner copyable prompt; mention it only as a later advanced topic, if needed.

Latest Unit 3 edits made on 2026-06-09:

- In `site/modules/case-routing.html`, removed the two hero action buttons "複製行事曆提示詞" and "複製判斷提示詞".
- Renamed the first example and main case wording from "校務日期" toward "活動行事曆" where the user requested it.
- In the `.ics` copyable prompt, added a requirement to tell the user how to import the generated `.ics` into Google Calendar: Google Calendar web -> settings -> import/export -> choose `.ics` file -> choose target calendar -> import.
- Removed the Google Calendar API instruction block from the beginner `.ics` prompt.
- Changed the "進階做法" card to say users should first become familiar with beginner AI operation, then study API writing, backups, dry-run, and operation-result later.
- Replaced the old "paste this to AI to judge suitability" prompt box with a user-facing concept section: "哪些是適合交給 AI 協助的工作呢？" with two categories, "資料量大且複雜的文件" and "具備重複性的工作".
- Removed the "可以先從這兩種工作開始" repeated card section.
- Removed the "補充：查看完整判斷材料" button from the bottom of the judgment principles section.
- After these edits, `site/modules/case-routing.html` should have only one `data-copy-prompt` button: the main `.ics` prompt.

Do not regress these decisions:

- Do not restore public content for Unit 7 or later unless explicitly asked.
- Do not expose unconfirmed later-unit flow-pack GitHub links from the public website pages.
- Do not put Unit 3 into the homepage integrated install prompt; it is not an install-only tool.
- Keep copy buttons on every website prompt.
- Website pages must not link to local `.md` files; use GitHub-rendered links only when materials are intentionally exposed.
- `.codex-http-4174.err` is a local server log and should not be committed.

Current instructional priority: guide users into the project through Unit 0, `site/modules/codex-install.html`, so they first install Codex and can work with local folders. After that, move through `windows-chinese-encoding-safety-pack`, `document-to-markdown-flow-pack`, the renamed website-facing Unit 3 "我的 AI 行政工作台", Unit 4 browser-use safety, Unit 5 AI work browser setup, and Unit 6 meeting notice card production.

Current development focus: Unit 6 should prove that the AI work browser leads to a small, useful output. Keep it practical: confirm visible text first, generate a 16:9 meeting notice card draft, inspect errors, and avoid fake school identity. The previous draft `ai-admin-presentation-flow-pack` exists but is not currently the user's next priority.

- Local project: `C:\Users\user\projects\dingxi-ai-admin-workbench`
- GitHub repo: `https://github.com/chianwu-hash/dingxi-ai-admin-workbench`
- Production site: `https://dingxi-ai-admin-workbench.vercel.app`
- Vercel project: `dingxi-ai-admin-workbench`
- Vercel account/scope: `chianwu-4755s-projects`
- Branch: `main`

The old working/planning source folder is still retained at:

```text
D:\文書組\AI行政工作臺教學網站
```

Do not treat that old folder as the primary project anymore. Use this repo under `C:\Users\user\projects`.

## What Was Done

1. Selected shareable AI administration workflow items from local projects, AGENTS files, and skills.
2. Removed the `admin-workflow-automation` public-document routing case because it is currently only useful to the document team.
3. Planned the teaching model as:
   - 看成果
   - 學方法
   - 拿流程包
4. Built a static teaching site under `site/`.
5. Built the current flow packs under `flow-packs/`; older browser setup packs are archived under `legacy/flow-packs-archive/`.
6. Created public placeholder brand assets under `assets/brand/`.
7. Kept the internal Dingxi brand asset source as a school-network UNC path, but did not include official crest/mascot/banner files in this public repo.
8. Exported the public template, pushed it to GitHub, deployed it to Vercel, then moved it into this standalone project folder.

## Flow Packs

There are 11 current flow packs:

1. `obsidian-confirmation-flow-pack`
2. `document-to-markdown-flow-pack`
3. `admin-case-routing-template-pack`
4. `google-calendar-safe-ops-pack`
5. `windows-chinese-encoding-safety-pack`
6. `ai-admin-presentation-flow-pack`
7. `meeting-notice-card-flow-pack`
8. `gmail-label-cleanup-flow-pack`
9. `browser-session-foundation-pack`
10. `browser-ai-workflow-pack`
11. `voice-input-workflow-pack`

Archived legacy browser setup materials:

- `legacy/flow-packs-archive/2026-07-before-work-browser-rewrite/cdp-safety-foundation-pack`
- `legacy/flow-packs-archive/2026-07-before-work-browser-rewrite/browser-session-init-pack`

These archived packs describe the older CDP / three-repo setup route. They should not be linked from the public website or treated as the current Unit 4 or Unit 5 flow. Current Unit 4 is a browser-use safety concept page, and current Unit 5 uses `browser-automation-workflow` as the single setup entrypoint.

Each pack should keep this shape where possible:

```text
README.md
01-workflow.md
02-template/
03-demo-data/
04-checklist.md
05-safety-notes.md
```

Some packs do not need every folder yet, but new additions should follow the pattern.

## Website Structure

Important pages:

- `index.html`: root redirect to `site/index.html`, so Vercel can serve the site from repo root.
- `site/index.html`: homepage.
- `site/roadmap.html`: 12-item learning roadmap.
- `site/packs.html`: flow pack download center.
- `site/safety.html`: safety and public-sharing rules.
- `site/modules/*.html`: 12 teaching unit pages.

The site is static HTML/CSS. No build step is currently required.

Vercel settings:

- Framework: Other
- Root directory: `.`
- Output directory: `.`
- Build command: none

## Brand And Public Sharing Rules

This public repo must not contain official Dingxi crest, mascot reference, or internal banner image files.

Do not commit files named:

```text
dingxi-crest.png
four-mascots-reference.png
admin-workbench-banner.webp
admin-action-banner.webp
```

The public repo may keep the internal brand source pointer:

```text
\\10.235.72.5\0-1學校共用資料--行政資料區\00學校徽圖、校歌、校旗、獎狀
```

That path is only useful from the school network. It is intentionally a pointer, not a public asset distribution method.

Use these files for brand handling:

- `brand/brand-source.json`
- `brand/README.md`
- `assets/brand/placeholder-school-crest.svg`
- `assets/brand/placeholder-hero-banner.svg`
- `assets/brand/placeholder-action-banner.svg`
- `public-template-policy.md`

If an internal school version is needed later, fetch/copy official assets only inside a private/internal workspace.

## Deployment

Vercel CLI is installed globally on this machine.

Useful commands:

```powershell
cd C:\Users\user\projects\dingxi-ai-admin-workbench
vercel whoami
vercel deploy --prod
vercel ls dingxi-ai-admin-workbench
vercel project inspect dingxi-ai-admin-workbench
```

Production URL:

```text
https://dingxi-ai-admin-workbench.vercel.app
```

Deployment protection note:

- Vercel SSO protection was disabled for this project so the public site can open without login.
- `vercel project protection dingxi-ai-admin-workbench --format json` should show no SSO protection blocking public access.

## Git Workflow

Normal update flow:

```powershell
cd C:\Users\user\projects\dingxi-ai-admin-workbench
git status
git add .
git commit -m "Describe the update"
git push
vercel deploy --prod
```

Before committing, run the safety checks below.

## Safety Checks

Run these before pushing public changes:

```powershell
# Check site local links
$ErrorActionPreference='Stop'
$missing=@()
Get-ChildItem -Path site -Recurse -Filter *.html | ForEach-Object {
  $file=$_.FullName
  $text=Get-Content -Raw -Encoding UTF8 $file
  [regex]::Matches($text,'(?:href|src)="([^"]+)"') | ForEach-Object {
    $link=$_.Groups[1].Value
    if ($link -match '^(https?:|mailto:|#)' -or $link -eq '') { return }
    $target=$link.Split('#')[0]
    if ($target -eq '') { return }
    $full=[System.IO.Path]::GetFullPath((Join-Path (Split-Path $file) $target))
    if (-not (Test-Path -LiteralPath $full)) { $missing += "$file -> $link" }
  }
}
if ($missing.Count -gt 0) { $missing; throw 'MISSING_SITE_LINKS' }
'SITE_LINKS_OK'
```

```powershell
# Check official brand files are absent
$ErrorActionPreference='Stop'
$official=@(
  'dingxi-crest.png',
  'four-mascots-reference.png',
  'admin-workbench-banner.webp',
  'admin-action-banner.webp'
)
$hits=@()
foreach ($name in $official) {
  $found=Get-ChildItem -Path . -Recurse -File -Filter $name -ErrorAction SilentlyContinue
  if ($found) { $hits += $found.FullName }
}
if ($hits.Count -gt 0) { $hits; throw 'OFFICIAL_BRAND_FILES_FOUND' }
'NO_OFFICIAL_BRAND_FILES'
```

```powershell
# Check JSON templates
Get-ChildItem -Path flow-packs -Recurse -Filter *.json |
  ForEach-Object { $null = Get-Content -Raw -Encoding UTF8 $_.FullName | ConvertFrom-Json }
'FLOW_PACK_JSON_OK'
```

## Important Encoding Rule

This is a Windows + Chinese/CJK project. When using PowerShell:

- Treat terminal-rendered Chinese as potentially unreliable.
- Read/write text with explicit UTF-8.
- Keep `.ps1` scripts ASCII-only when practical.
- Do not paste terminal-mojibake back into source files.
- Prefer direct file inspection, browser rendering, screenshots, and structured parser output for validation.

## Current Working Notes

Updated on 2026-06-03 in the current local working tree. Some changes were committed and pushed as `5888698 Prioritize encoding safety in learning route`; later refinements are still uncommitted.

Instructional direction changed from "show 12 flow packs equally" to "start with the Chinese Windows encoding safety pack as the lowest-level setup, then move into the AI admin presentation workflow as the first visible outcome."

Files already updated for that direction:

- `site/modules/codex-install.html`: new Unit 0 page. It points users to official OpenAI Codex Windows, Quickstart, and Auth docs, provides a copyable install request, and keeps the user-facing goal to installing Codex, logging in, opening a local folder, and moving to Unit 1.
- `site/roadmap.html`: learning roadmap now starts with Unit 0 install Codex, then Chinese Windows encoding safety, document-to-Markdown, "我的 AI 行政工作台", and AI admin presentation.
- `site/modules/case-routing.html`: reframed from "行政案件類型路由" to "我的 AI 行政工作台", with a copyable suitability prompt and two examples: recurring school activity planning from last year's files, and Google Calendar `.ics` / API batch calendar work.
- `site-plan/unit-00-codex-install-development-log.md`: new development log for Unit 0, including official Codex documentation basis and page-writing boundaries.
- `site/modules/admin-presentation.html`: later reverted to a `製作中......` placeholder because confirmed public content currently stops at Unit 3.
- `site/index.html`: homepage now leads with "先避開中文亂碼，再做一份簡報" and sends users first to the Chinese Windows encoding safety unit, then the presentation workflow.
- `site/index.html`: later reframed to lead with installing Codex first, then Chinese safety, document-to-Markdown, and the AI admin workbench.
- `site/index.html`: later added a homepage-level integrated install prompt for foundational repo tools. It currently installs/applies `windows-powershell-encoding-skill` and `doc2md-toolkit` in one copyable prompt; future install-only repo tools should be added there first.
- `site/roadmap.html`: learning roadmap now starts with `windows-chinese-encoding-safety-pack`, then `ai-admin-presentation-flow-pack`, then document-to-markdown, brand image, confirmation checklist, voice input, and later advanced workflows.
- `site/packs.html`: flow pack download center now highlights Chinese Windows encoding safety as the first pack and the presentation workflow as the second-stage outcome pack.
- `site/modules/admin-presentation.html`: presentation module page now explains why this is the entry workflow and shows brief, material preparation, outline generation, and review/export as the learning steps.
- `site/modules/admin-presentation.html`: later reframed as an outcome-workflow page. Its main action is now a copyable prompt that asks AI to use the GitHub flow-pack materials and follow repo rules, while the flow-pack links are advanced references.
- `site/packs.html`: the AI admin presentation row now sends users to the module page first, not directly to the flow-pack folder.
- `flow-packs/ai-admin-presentation-flow-pack/02-template/presentation-outline-prompt.md`: added because the intended maintenance checklist referenced this material but it was missing from the repo.
- `flow-packs/ai-admin-presentation-flow-pack/README.md`, `01-workflow.md`, `02-template/brief-template.md`, `04-checklist.md`, and `05-safety-notes.md`: expanded to support the outcome-workflow page pattern, with clearer brief fields, human/AI responsibility split, fixed overlay guidance, safety checks, and SOP retrospective reminders.
- `site-plan/unit-04-admin-presentation-development-log.md`: development log for the fourth unit and reusable outcome-workflow page pattern.
- `site/modules/windows-encoding.html`: encoding module now has a plain-language explanation, an AI-facing install prompt, and a copy button.
- `site/modules/windows-encoding.html`: later refined so the main user action is copying the prompt; flow-pack/repo links are only low-priority advanced references.
- `site/modules/windows-encoding.html`: later simplified the prompt so it asks AI to install/apply the repo and follow README/SKILL.md/diagnostic scripts, instead of duplicating the full encoding rules in the website prompt.
- `site/modules/doc2md.html`: document-to-Markdown module now follows the same user/AI split. The page explains the minimal use in plain language, makes the copyable AI prompt the main action, includes the required tool-install fallback sentence, and links flow-pack materials only as GitHub advanced references.
- `site/modules/doc2md.html`: later simplified the prompt so it asks AI to install/use doc2md-toolkit and follow README/SKILL.md/workflow/checklist, instead of duplicating the full engine/OCR/checklist rules in the website prompt. The prompt no longer asks AI to convert a file immediately; actual conversion happens in the next user step after the skill/repo is installed.
- `site/modules/doc2md.html`: later refined so the AI prompt checks whether doc2md-toolkit or the `doc2md` command is available on the user's machine, then installs from GitHub if needed. General documents use MarkItDown, Chinese/vertical PDFs use pdf2txt, and heavy OCR tools are not installed or used by default. Do not put fixed local paths like `D:\projects\doc2md-toolkit` in public copyable prompts.
- `site/modules/doc2md.html`: later added a small-OCR exception. For scanned/image-only files up to 10 pages, AI may convert pages to images and use small-batch OCR or AI vision as a rescue path; over 10 pages or complex layouts should be marked as needing formal OCR or human confirmation.
- `site/modules/doc2md.html`: later added NotebookLM as an advanced cloud reading-comprehension route for large or complex documents that are safe to upload. It is not the local default path and should stay in the note section below the main prompt, not inside the copyable conversion prompt. Future CDP-assisted NotebookLM automation should only paste prompts, wait for responses, extract Markdown, and write confirmation checklists after the user has logged in, uploaded sources, and explicitly approved the action.
- `site/packs.html`: the document-to-Markdown row now sends users to the module page first, not directly to the flow-pack folder.
- `site/styles.css`: added featured-pack styling, fixed `figure.media` mobile overflow, and adjusted hero title wrapping.
- `site/copy-prompts.js`: new shared one-click copy behavior for prompt boxes.
- `site-plan/web-writing-sop.md`: new web writing SOP requiring a copy button for every prompt offered to users; it also records that tool-install prompts need the standard "AI installs if it has permission, otherwise guides the user" sentence, and that site pages must not link directly to local `.md` files.
- `site-plan/web-writing-sop.md`: later extended with tool-type flow page rules, including document conversion warnings about sensitive data, scanned PDFs, OCR, tables, Chinese encoding, and quality checks after conversion.
- `site-plan/web-writing-sop.md`: later extended with outcome-workflow page rules. Outcome pages such as the AI admin presentation unit should start from the visible deliverable, provide a copyable prompt that points AI to the flow-pack, keep human confirmation explicit, and stay out of the homepage integrated install prompt.
- `README.md` and `flow-packs/README.md`: updated recommended learning order to start with the Chinese Windows encoding safety pack.
- `flow-packs/document-to-markdown-flow-pack/README.md`: reframed so the website prompt is the general-user entry, while the flow-pack is AI/maintainer reference material.
- `site-plan/ai-workflow-core-concepts.md`: new draft document explaining three plain-language AI workflow concepts:
  1. AI is an assistant, not the responsible person.
  2. After getting a result, ask AI to write the process into a small SOP.
  3. If the result is unstable, revise the SOP/prompt to be clearer and harder.
- `site-plan/windows-chinese-encoding-research-notes.md`: research notes from local tests, web search, and Claude CLI discussion.
- `site-plan/unit-01-windows-encoding-development-log.md`: development log for the first completed unit, including reusable rules for future units.
- `site-plan/unit-02-document-to-markdown-development-log.md`: development log for the second completed unit, including the minimal-use decision and support-flow page pattern.
- `D:\projects\doc2md-toolkit`: MinerU was removed from the toolkit repo. The CLI now supports only `auto`, `markitdown`, and `pdf2txt`; scanned/image-only files should be marked as needing OCR or human confirmation rather than pushed through a heavy default path.
- `D:\projects\doc2md-toolkit`: README and SKILL now record the 10-page small-OCR rescue rule while keeping heavy OCR out of the core CLI.
- `flow-packs/document-to-markdown-flow-pack/05-safety-notes.md`: now records NotebookLM upload boundaries and CDP-assisted automation guardrails.

Important UX decisions from Unit 1:

- The website module page is the user-facing entry.
- The prompt is the main action.
- Flow-pack materials are advanced references for AI/maintainers, not the main user path.
- Do not link site pages directly to local `.md` files; use HTML pages for users or GitHub `tree/blob` links for materials.
- Any prompt that needs a missing tool must include this standard sentence:

```text
如果你有本機操作或安裝權限，請代我檢查並完成必要安裝；如果你沒有權限，請用我看得懂的步驟帶我完成，不要只丟技術文件連結給我。
```

Validation already run after these edits:

- Site local links: `SITE_LINKS_OK`
- Prompt copy rules: `PROMPT_COPY_OK`
- No local Markdown links in site HTML: `NO_LOCAL_MD_LINKS`
- Official Dingxi brand files absent: `NO_OFFICIAL_BRAND_FILES`
- Flow pack JSON templates parse: `FLOW_PACK_JSON_OK`
- In-app Browser visual check for `http://127.0.0.1:4174/site/modules/doc2md.html`: title and main sentence render, one prompt box and one copy button are present, `copy-prompts.js` is loaded, GitHub advanced links are used, no horizontal overflow was detected, and clicking the copy button placed the prompt text on the clipboard.
- 2026-06-03 Unit 4 checks after the AI admin presentation update:
  - Site local links: `SITE_LINKS_OK`
  - Prompt copy rules: `PROMPT_COPY_OK`
  - No local Markdown links in site HTML: `NO_LOCAL_MD_LINKS`
  - Official Dingxi brand files absent: `NO_OFFICIAL_BRAND_FILES`
  - Flow pack JSON templates parse: `FLOW_PACK_JSON_OK`
  - Homepage integrated install prompt does not include the presentation flow: `HOME_INSTALL_PROMPT_NO_PRESENTATION_FLOW`
  - In-app Browser visual check for `http://127.0.0.1:4174/site/modules/admin-presentation.html`: title and main sentence render, two prompt boxes and two copy buttons are present, `copy-prompts.js` is loaded, no local Markdown links are present, no horizontal overflow was detected, and clicking the first copy button changed its label to `已複製`. Clipboard readback was blocked by the browser test environment, so the label change was used as the interaction signal.
- 2026-06-07 Unit 0 / reordered roadmap checks:
  - Site local links: `SITE_LINKS_OK`
  - Prompt copy rules: `PROMPT_COPY_OK`
  - No local Markdown links in site HTML: `NO_LOCAL_MD_LINKS`
  - Official Dingxi brand files absent: `NO_OFFICIAL_BRAND_FILES`
  - Flow pack JSON templates parse: `FLOW_PACK_JSON_OK`
  - In-app Browser visual checks for `http://127.0.0.1:4174/site/modules/codex-install.html`, `http://127.0.0.1:4174/site/roadmap.html`, and `http://127.0.0.1:4174/site/modules/case-routing.html`: titles render, roadmap first steps show `0,1,2,3,4`, prompt boxes and copy buttons are present where expected, `copy-prompts.js` is loaded where needed, no horizontal overflow was detected, and clicking the new copy buttons changed their labels to `已複製`.
- Earlier CDP visual checks using the shared Chrome CDP instance at `127.0.0.1:9222`, following the local CDP policy, checked desktop homepage, roadmap, packs, plus mobile homepage/packs. Homepage mobile horizontal overflow was found and fixed.

Recommended next conversation focus:

1. Visually review `site/modules/meeting-notice-card.html`, especially the prompt box and meeting-card preview.
2. Decide whether Unit 6 should stay limited to one meeting notice card or add one more variant such as an administrative announcement card.
3. If generating a real sample image, use the AI work browser / ChatGPT image route and keep it as a plain meeting notice card without brand identity elements.
4. After visual review, rerun safety checks and deploy if the public sequence feels stable.
5. Keep unapproved Unit 7 and later pages as `製作中......`.

Current local caveat:

- `.codex-http-4174.err` is an untracked local HTTP server log and should not be committed.
- Current local edits include Unit 6 meeting-card updates and this `HANDOFF.md` update.
- Before committing the next batch, rerun site link checks, prompt-copy checks, official brand file checks, and flow-pack JSON parsing.

## Current Open Decisions

These are the next human decisions before a polished public launch:

- Whether to add real workshop date/time.
- Whether to add target audience wording.
- Whether to add a public-facing introduction for non-Dingxi users.
- Whether to rename the Vercel project or add a custom domain later.
- Whether to produce short demo videos or screenshots for each module.

## Good Next Tasks

High-value follow-ups:

1. Update `README.md` to be friendlier for outside users.
2. Add a short "How to use this repo with an AI assistant" section.
3. Add module screenshots or short demo videos.
4. Add a `site/modules/index.html` page if direct module browsing becomes important.
5. Add lightweight link/safety check scripts so checks are one command instead of pasted PowerShell snippets.
