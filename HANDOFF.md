# Dingxi AI Admin Workbench Handoff

Last updated: 2026-06-02

## Project Status

This project is now the standalone public repository for the Dingxi AI Admin Workbench teaching site and flow packs.

Current instructional priority: guide users into the project through `windows-chinese-encoding-safety-pack` first as the lowest-level Windows Chinese safety setup, then move into `ai-admin-presentation-flow-pack` as the first visible outcome workflow. Presentation work remains the most familiar outcome entry point for the intended audience, while the other flow packs should be framed as support or extension flows instead of 12 equal starting points.

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

Updated on 2026-06-02 in the current local working tree. These changes are not committed yet.

Instructional direction changed from "show 12 flow packs equally" to "start with the Chinese Windows encoding safety pack as the lowest-level setup, then move into the AI admin presentation workflow as the first visible outcome."

Files already updated for that direction:

- `site/index.html`: homepage now leads with "先避開中文亂碼，再做一份簡報" and sends users first to the Chinese Windows encoding safety unit, then the presentation workflow.
- `site/roadmap.html`: learning roadmap now starts with `windows-chinese-encoding-safety-pack`, then `ai-admin-presentation-flow-pack`, then document-to-markdown, brand image, confirmation checklist, voice input, and later advanced workflows.
- `site/packs.html`: flow pack download center now highlights Chinese Windows encoding safety as the first pack and the presentation workflow as the second-stage outcome pack.
- `site/modules/admin-presentation.html`: presentation module page now explains why this is the entry workflow and shows brief, material preparation, outline generation, and review/export as the learning steps.
- `site/modules/windows-encoding.html`: encoding module now has a plain-language explanation, an AI-facing install prompt, and a copy button.
- `site/styles.css`: added featured-pack styling, fixed `figure.media` mobile overflow, and adjusted hero title wrapping.
- `site/copy-prompts.js`: new shared one-click copy behavior for prompt boxes.
- `site-plan/web-writing-sop.md`: new web writing SOP requiring a copy button for every prompt offered to users.
- `README.md` and `flow-packs/README.md`: updated recommended learning order to start with the Chinese Windows encoding safety pack.
- `site-plan/ai-workflow-core-concepts.md`: new draft document explaining three plain-language AI workflow concepts:
  1. AI is an assistant, not the responsible person.
  2. After getting a result, ask AI to write the process into a small SOP.
  3. If the result is unstable, revise the SOP/prompt to be clearer and harder.

Validation already run after these edits:

- Site local links: `SITE_LINKS_OK`
- Official Dingxi brand files absent: `NO_OFFICIAL_BRAND_FILES`
- Flow pack JSON templates parse: `FLOW_PACK_JSON_OK`
- CDP visual checks using the shared Chrome CDP instance at `127.0.0.1:9222`, following the local CDP policy. Checked desktop homepage, roadmap, packs, plus mobile homepage/packs. Homepage mobile horizontal overflow was found and fixed.

Recommended next conversation focus:

1. Keep the learning route as: encoding safety first, presentation workflow second.
2. Decide how to turn `site-plan/ai-workflow-core-concepts.md` into a user-facing site section without making it feel like technical documentation.
3. Consider adding a new module/page tentatively titled "把你的行政工作教給 AI" after the presentation workflow.

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
