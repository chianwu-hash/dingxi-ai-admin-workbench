# AGENTS.md

## Read This First

Before making changes, read:

- `HANDOFF.md`
- `README.md`
- `public-template-policy.md`

This project is the standalone public repo for the Dingxi AI Admin Workbench teaching site and flow packs.

## Project Identity

- GitHub: `https://github.com/chianwu-hash/dingxi-ai-admin-workbench`
- Production: `https://dingxi-ai-admin-workbench.vercel.app`
- Vercel project: `dingxi-ai-admin-workbench`
- Main local path: `C:\Users\user\projects\dingxi-ai-admin-workbench`

The old planning workspace `D:\文書組\AI行政工作臺教學網站` is not the primary repo anymore.

## Hard Rules

- Do not commit official Dingxi crest, mascot reference, or internal banner image files.
- Do not commit OAuth tokens, client secrets, API keys, cookies, sessions, real Gmail data, real Calendar IDs, public-document case details, or personal data.
- Keep public examples fake, generic, and reusable.
- Maintain the "看成果 -> 學方法 -> 拿流程包" teaching model.
- This is a static site; avoid adding a build system unless there is a clear need.

## Windows And Chinese Encoding

Use explicit UTF-8 when reading or writing text files through PowerShell.

Keep PowerShell scripts ASCII-only when practical. Treat terminal-rendered Chinese as an unreliable display layer; verify through files, browser rendering, or structured parser output.

## Common Commands

```powershell
git status
vercel deploy --prod
vercel ls dingxi-ai-admin-workbench
vercel project protection dingxi-ai-admin-workbench --format json
```

Before pushing, run the safety checks documented in `HANDOFF.md`.

