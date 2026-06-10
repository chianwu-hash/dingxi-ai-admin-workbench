# Unit 4 CDP / Browser Safety Positioning Notes

Last updated: 2026-06-10

## Working Direction

The flow-pack name "CDP 安全底座" is accurate for maintainers, but it should not be the main learner-facing title.

For administrative staff, this unit should be framed as:

```text
當你準備讓 AI 幫你開瀏覽器、看網頁、點按鈕、截圖或整理網頁資料前，要先把瀏覽器安全邊界設好。
```

The unit is not primarily about teaching Chrome DevTools Protocol. It is about helping users understand safe habits before AI or scripts operate a browser that may contain logged-in accounts, sessions, screenshots, or sensitive page content.

## Convenience And Safety Balance

This topic sits directly on the tension between convenience and safety.

If the goal is:

```text
讓一般行政同仁自己理解 CDP，然後安全操作瀏覽器自動化。
```

then the unit is probably not worth doing in that form. CDP, profile, session, port, cookie, target, and remote debugging are too close to the engineering layer. Even if the wording is simplified, when something goes wrong, most administrative users cannot reasonably diagnose the risk.

The better goal is:

```text
行政同仁不學 CDP。行政同仁只學「什麼時候可以讓 AI 借用瀏覽器，以及借用前要確認哪些事」。CDP 操作由工具和 AI 助手承擔。
```

This unit should therefore not become a "browser CDP operation guide." It should become:

```text
讓 AI 使用瀏覽器前的安全確認課。
```

The balance is not achieved by asking users to understand the full technical stack. It is achieved by hiding the technical stack behind tools and AI-assistant procedures, while shrinking the user-facing surface to a few answerable questions:

- Why does AI need to open a browser for this task?
- Which website will be used?
- Which account is currently logged in?
- What data will be seen, uploaded, copied, or screenshotted?
- Is AI only reading and organizing, or will it submit, delete, import, publish, send, or write to a formal system?
- Which step must stop and wait for the user to confirm?
- If AI says it needs browser access, can it first produce a safety confirmation table?

Layering rule:

```text
給行政同仁：學會確認網站、帳號、資料、動作。
給 AI 助手：先建立安全確認表，不要直接操作；需要瀏覽器時使用既定安全工具。
給維護者：處理 CDP launcher、profile 位置、session、polling、screenshot、log、target selection。
```

This is the key design boundary:

```text
如果把三層都塞給一般同仁，就會兩邊都輸：不夠方便，也不夠安全。
```

The practical learner outcome should be:

```text
當 AI 想操作瀏覽器時，我知道要先問什麼、確認什麼、拒絕什麼。
```

Future page revisions should keep this lowered scope. The public lesson can mention that technical safety tools exist, but should not make users responsible for understanding CDP internals.

## What This Unit Teaches

The learner-facing version should teach:

- Do not let AI casually use the user's everyday Chrome profile.
- Confirm which browser window, account, and website AI is operating.
- Browser automation is not permission for AI to click, submit, delete, publish, send mail, or import data without confirmation.
- Screenshots, login state, cookies, browser profiles, and sessions may contain sensitive data.
- Do not commit or publicly share profiles, cookies, sessions, screenshots of logged-in pages, or browser logs containing personal data.
- Automated waiting or checking should be slow and controlled, not constant rapid polling, screenshots, or target scanning.
- Logs should be written to files when practical instead of flooding the AI conversation with sensitive or oversized browser output.

Technical flow-pack concepts can be translated for general users as:

```text
讓 AI 使用指定的安全瀏覽器、指定的登入環境、指定的網頁，而且慢慢操作、有紀錄、可停止、可確認。
```

## Why This Could Be Unit 4

This topic fits after the confirmed Units 0-3 because it becomes important once users move from "AI reads and organizes materials" into "AI operates a browser or logged-in web service."

Current learning sequence:

- Unit 0: Install Codex and learn to work in a local folder.
- Unit 1: Avoid Windows Chinese encoding problems.
- Unit 2: Convert documents into AI-readable text.
- Unit 3: Decide which administrative work belongs in the user's AI admin workbench.
- Candidate Unit 4: Before AI operates browser pages, define browser safety boundaries.

This unit can act as a safety gate before workflows involving NotebookLM, Google Calendar, Gmail, browser-based research, web-app data entry, or any logged-in page.

The reason for placing it at Unit 4 is risk order, not technical order:

```text
在讓 AI 操作瀏覽器之前，先學會安全設定與確認習慣。
```

## General User Scope

Suitable for the public teaching page:

- When this unit is needed: AI opens a browser, handles a logged-in page, takes screenshots, clicks buttons, copies web content, or helps with web-app data entry.
- Three checks before starting:
  - Confirm the browser.
  - Confirm the account.
  - Confirm the website.
- Three cautions:
  - Do not use the wrong account.
  - Do not expose login state or sensitive screenshots.
  - Do not let AI automatically perform high-risk actions.
- A copyable prompt that asks AI to inspect or set up a safe browser automation environment, and to explain what site, account, data, and actions are involved before operating.
- A clear reminder that the user must confirm before formal submission, deletion, publishing, sending, importing, or system-writing actions.

The page should keep the tone close to:

```text
AI 可以協助操作，但正式送出前自己要確認。
```

## Advanced / Supplemental Scope

The following belong in advanced references, flow-pack materials, or maintainer notes rather than the main user explanation:

- CDP as Chrome DevTools Protocol.
- `cdp-launch`, `cdp-status`, and `CDP_URL`.
- Shared launcher implementation details.
- Fixed browser profile paths.
- Browser WebSocket target selection.
- Polling intervals such as 5000-8000 ms.
- Screenshot throttling such as at least 10000 ms.
- Avoiding repeated target enumeration inside polling loops.
- Avoiding `Network`, `Performance`, `Log`, or `Debugger` domains unless required.
- Node scripts using `@local/cdp-safe-client`.
- Reconnect backoff.
- File-based logging.
- Cookie, session, and profile file handling rules.

Summary:

```text
一般頁面教安全習慣，流程包教技術規格。
```

## Why Let AI Operate A Browser

Before explaining browser automation safety, the teaching page should first explain why a user would want AI to operate a browser at all.

The main point:

```text
我們不是為了炫技才讓 AI 操作瀏覽器，而是因為很多行政工作本來就卡在瀏覽器裡。
```

Administrative work often happens across web tools and logged-in systems:

- Google Calendar, Gmail, Google Drive, Google Docs, Google Sheets, NotebookLM.
- School administration systems, reporting systems, registration systems, and form backends.
- Web pages that require login before the user can see data or complete a task.
- Pages where the user must copy, compare, check, screenshot, import, or export information.

The learner-facing explanation can be:

```text
讓 AI 操作瀏覽器，是把「人已經決定好的工作」裡面，那些重複、繁瑣、容易漏看的網頁操作，交給 AI 協助處理。
```

Important reasons:

- Many tools do not have a simple export function or beginner-friendly API.
- Some work can only be done naturally through the website: open the page, log in, read, copy, compare, download, import, or check.
- Web operations are often repetitive and attention-heavy, such as checking fields one by one or moving information between pages.
- AI sometimes needs to see the actual screen to understand buttons, error messages, layout, or the current state.
- Many administrative workflows cross several web tools, and the browser is the shared entry point.

Core boundary:

```text
讓 AI 操作瀏覽器，不是把責任交給 AI，而是讓 AI 幫忙操作，人負責決定與確認。
```

Possible page wording:

```text
很多行政工作不是只在一份文件裡完成，而是在登入後的網頁系統中完成。AI 如果只能回答文字，就只能停在「給建議」；當 AI 可以在我們確認範圍後協助操作瀏覽器，它就能幫忙看畫面、整理資料、處理重複步驟，讓承辦人把力氣留在判斷、確認與正式送出。
```

## Browser As A Gateway To Web AI Tools

Another practical reason for opening the browser is that the local AI admin workbench does not contain every AI capability by itself.

The working concept:

```text
目前的 AI 行政工作台能力有限；但只要打開瀏覽器這扇門，就可以在安全界線內使用各種網頁版 AI 工具。
```

Examples:

- NotebookLM can help read, compare, and summarize uploaded source materials when the materials are safe to upload and the user has approved the upload boundary.
- ChatGPT web can provide image-generation workflows, including poster, card, banner, and visual draft generation, when the user confirms brand, privacy, and publication limits.
- Google web tools can handle documents, spreadsheets, calendar import/export, forms, and shared files that already live in the browser.
- Other approved web services can be used when they match school policy, account boundaries, and data-safety rules.

This changes the teaching framing:

```text
瀏覽器不是只拿來讓 AI 點按鈕；它也是把本機 AI 行政工作台連到各種網頁版 AI 能力的橋。
```

The safety unit should therefore avoid sounding like "CDP for engineers." It should sound like:

```text
如果我們要讓 AI 借用瀏覽器去使用 NotebookLM、ChatGPT 生圖、Google 工具或其他網頁服務，就要先知道它用哪個瀏覽器、哪個帳號、哪個網站，哪些資料可以放進去，哪些動作要等自己確認。
```

Important caution:

```text
打開瀏覽器的大門，不代表所有網站、所有帳號、所有資料都可以交給 AI。它代表我們多了一條通往網頁工具的路，但這條路要有帳號邊界、資料邊界和確認節點。
```

## Title Candidates

Preferred learner-facing title:

```text
讓 AI 操作瀏覽器前的安全設定
```

Why: it directly tells administrative users when they need the unit.

Good subtitle or roadmap short name:

```text
瀏覽器自動化安全基礎
```

Good informal section/card title:

```text
AI 開瀏覽器前，先確認這些事
```

Good concise alternative:

```text
讓 AI 安全地使用瀏覽器
```

Maintainer / advanced reference title:

```text
CDP 安全底座
```

Suggested title structure:

```text
單元標題：讓 AI 操作瀏覽器前的安全設定
副標：瀏覽器自動化安全基礎
進階備查：CDP 安全底座
```

## Current Recommendation

Use:

```text
讓 AI 操作瀏覽器前的安全設定
```

as the public unit title.

Use:

```text
瀏覽器自動化安全基礎
```

as a subtitle or short roadmap label.

Keep:

```text
CDP 安全底座
```

inside the flow pack and advanced reference area.

## Positioning Sentence

Candidate sentence for future page writing:

```text
這一單元不是要大家學寫瀏覽器自動化程式，而是讓大家知道，在 AI 進入登入網頁、幫忙點選、擷取、貼上或整理資料之前，要先把帳號、視窗、資料和確認責任分清楚。
```
