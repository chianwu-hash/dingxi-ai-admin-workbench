# Dingxi AI Admin Workbench Handoff

Last updated: 2026-06-03

## Project Status

This project is now the standalone public repository for the Dingxi AI Admin Workbench teaching site and flow packs.

Current instructional priority: guide users into the project through `windows-chinese-encoding-safety-pack` first as the lowest-level Windows Chinese safety setup, then move into `ai-admin-presentation-flow-pack` as the first visible outcome workflow. Presentation work remains the most familiar outcome entry point for the intended audience, while the other flow packs should be framed as support or extension flows instead of 12 equal starting points.

Current development focus: Unit 1 (`windows-chinese-encoding-safety-pack`) and Unit 2 (`document-to-markdown-flow-pack`) have both been developed into reusable patterns. Unit 1 is the safety/setup pattern; Unit 2 is the support-flow pattern for turning raw materials into AI-readable text before a visible outcome workflow.

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
5. Built 12 flow packs under `flow-packs/`.
6. Created public placeholder brand assets under `assets/brand/`.
7. Kept the internal Dingxi brand asset source as a school-network UNC path, but did not include official crest/mascot/banner files in this public repo.
8. Exported the public template, pushed it to GitHub, deployed it to Vercel, then moved it into this standalone project folder.

## Flow Packs

There are 12 current flow packs:

1. `obsidian-confirmation-flow-pack`
2. `document-to-markdown-flow-pack`
3. `admin-case-routing-template-pack`
4. `google-calendar-safe-ops-pack`
5. `windows-chinese-encoding-safety-pack`
6. `ai-admin-presentation-flow-pack`
7. `admin-brand-image-flow-pack`
8. `gmail-label-cleanup-flow-pack`
9. `cdp-safety-foundation-pack`
10. `browser-session-foundation-pack`
11. `browser-ai-workflow-pack`
12. `voice-input-workflow-pack`

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

- `site/index.html`: homepage now leads with "先避開中文亂碼，再做一份簡報" and sends users first to the Chinese Windows encoding safety unit, then the presentation workflow.
- `site/roadmap.html`: learning roadmap now starts with `windows-chinese-encoding-safety-pack`, then `ai-admin-presentation-flow-pack`, then document-to-markdown, brand image, confirmation checklist, voice input, and later advanced workflows.
- `site/packs.html`: flow pack download center now highlights Chinese Windows encoding safety as the first pack and the presentation workflow as the second-stage outcome pack.
- `site/modules/admin-presentation.html`: presentation module page now explains why this is the entry workflow and shows brief, material preparation, outline generation, and review/export as the learning steps.
- `site/modules/windows-encoding.html`: encoding module now has a plain-language explanation, an AI-facing install prompt, and a copy button.
- `site/modules/windows-encoding.html`: later refined so the main user action is copying the prompt; flow-pack/repo links are only low-priority advanced references.
- `site/modules/windows-encoding.html`: later simplified the prompt so it asks AI to install/apply the repo and follow README/SKILL.md/diagnostic scripts, instead of duplicating the full encoding rules in the website prompt.
- `site/modules/doc2md.html`: document-to-Markdown module now follows the same user/AI split. The page explains the minimal use in plain language, makes the copyable AI prompt the main action, includes the required tool-install fallback sentence, and links flow-pack materials only as GitHub advanced references.
- `site/modules/doc2md.html`: later simplified the prompt so it asks AI to install/use doc2md-toolkit and follow README/SKILL.md/workflow/checklist, instead of duplicating the full engine/OCR/checklist rules in the website prompt.
- `site/modules/doc2md.html`: later refined so the AI prompt checks whether doc2md-toolkit or the `doc2md` command is available on the user's machine, then installs from GitHub if needed. General documents use MarkItDown, Chinese/vertical PDFs use pdf2txt, and heavy OCR tools are not installed or used by default. Do not put fixed local paths like `D:\projects\doc2md-toolkit` in public copyable prompts.
- `site/modules/doc2md.html`: later added a small-OCR exception. For scanned/image-only files up to 10 pages, AI may convert pages to images and use small-batch OCR or AI vision as a rescue path; over 10 pages or complex layouts should be marked as needing formal OCR or human confirmation.
- `site/modules/doc2md.html`: later added NotebookLM as an advanced cloud reading-comprehension route for large or complex documents that are safe to upload. It is not the local default path and should stay in the note section below the main prompt, not inside the copyable conversion prompt. Future CDP-assisted NotebookLM automation should only paste prompts, wait for responses, extract Markdown, and write confirmation checklists after the user has logged in, uploaded sources, and explicitly approved the action.
- `site/packs.html`: the document-to-Markdown row now sends users to the module page first, not directly to the flow-pack folder.
- `site/styles.css`: added featured-pack styling, fixed `figure.media` mobile overflow, and adjusted hero title wrapping.
- `site/copy-prompts.js`: new shared one-click copy behavior for prompt boxes.
- `site-plan/web-writing-sop.md`: new web writing SOP requiring a copy button for every prompt offered to users; it also records that tool-install prompts need the standard "AI installs if it has permission, otherwise guides the user" sentence, and that site pages must not link directly to local `.md` files.
- `site-plan/web-writing-sop.md`: later extended with tool-type flow page rules, including document conversion warnings about sensitive data, scanned PDFs, OCR, tables, Chinese encoding, and quality checks after conversion.
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
- Earlier CDP visual checks using the shared Chrome CDP instance at `127.0.0.1:9222`, following the local CDP policy, checked desktop homepage, roadmap, packs, plus mobile homepage/packs. Homepage mobile horizontal overflow was found and fixed.

Recommended next conversation focus:

1. Continue with Unit 3 or another near-term support flow, using `site-plan/unit-01-windows-encoding-development-log.md` and `site-plan/unit-02-document-to-markdown-development-log.md` as reference patterns.
2. For each new unit, first decide the general user's minimal purpose, then move tool names and command details into AI-facing prompts or advanced references.
3. Consider making the public README friendlier for outside users now that the first two reusable unit patterns exist.

Current local caveat:

- `.codex-http-4174.err` is an untracked local HTTP server log and should not be committed.
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
