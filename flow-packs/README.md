# 流程包總覽

網站第 0 單元是「安裝 ChatGPT 桌面版並開啟 Codex」，不是流程包。完成第 0 單元後，建議先從「中文 Windows 編碼安全包」開始，再做文件轉 Markdown，接著建立「我的 AI 行政工作台」，學會讓 AI 使用瀏覽器前先確認五件事，設定 AI 工作瀏覽器，用它做出第一張會議通知小卡，在第 7 單元加入頂溪四精靈，並於第 8 單元製作含校徽的活動海報。目前網站確認內容到第 8 單元；第 9 單元之後先標示為製作中。

第 4、5、7、8 單元是網站教學頁，不一定各自對應一個正式流程包。舊版瀏覽器技術流程包已封存到 `legacy/flow-packs-archive/2026-07-before-work-browser-rewrite/`，避免和目前網站路線混淆。

## 第一站：底層安全

| 流程包 | 目的 |
| --- | --- |
| [windows-chinese-encoding-safety-pack](windows-chinese-encoding-safety-pack/README.md) | 給 AI 避開中文亂碼用，適合所有 Windows 中文行政資料處理 |

## 第二站：文件整理

| 流程包 | 目的 |
| --- | --- |
| [document-to-markdown-flow-pack](document-to-markdown-flow-pack/README.md) | 把行政文件轉成 AI 可讀的 Markdown / Text |

## 第三站：我的 AI 行政工作台

| 流程包 | 目的 |
| --- | --- |
| [admin-case-routing-template-pack](admin-case-routing-template-pack/README.md) | 建立行政案件分類、規則、輸出格式與人工確認界線；網站以「我的 AI 行政工作台」呈現 |

## 第四站：瀏覽器使用前安全確認

網站第 4 單元是概念頁，教使用者在讓 AI 使用瀏覽器前先確認瀏覽器、帳號、網站、資料與正式動作。這一站不要求一般使用者安裝 repo 或執行 npm 指令。

## 第五站：建立 AI 工作瀏覽器

網站第 5 單元只要求安裝 `browser-automation-workflow` 來建立可重用的 AI 工作瀏覽器；`cbs-workflows` 與 `cdp-tools` 會由 `npm install` 自動帶入，不需要使用者另外 clone。

## 第六站：入門成果流程

| 流程包 | 目的 |
| --- | --- |
| [meeting-notice-card-flow-pack](meeting-notice-card-flow-pack/README.md) | 網站顯示為「做一張會議通知小卡」，把現有會議資料整理成可檢查的小卡並用工作瀏覽器產出草稿 |

## 第七站：加入頂溪四精靈

網站第 7 單元使用 `dingxi-brand-image` skill 啟動「頂溪國小品牌識別生圖」流程，讓 AI 取得校內素材、讀取四精靈意涵，再依通知主題選擇合適精靈製作 LINE 直式小卡。

## 第八站：製作活動海報並加入校徽

網站第 8 單元使用 `dingxi-brand-image` skill 與 AI 工作瀏覽器，試版面時可以讓 AI 先畫出整體感覺；正式版重做不含校徽的底圖，再使用校內 `dingxi-crest.png` 官方素材貼上去，讓每張海報的校徽都一致。

## 支援簡報與工作台的近身流程

| 流程包 | 目的 |
| --- | --- |
| [ai-admin-presentation-flow-pack](ai-admin-presentation-flow-pack/README.md) | 行政簡報流程，網站單元尚未正式公開 |
| [obsidian-confirmation-flow-pack](obsidian-confirmation-flow-pack/README.md) | 把 AI 整理出的待確認事項變成可勾選清單 |
| [voice-input-workflow-pack](voice-input-workflow-pack/README.md) | 把口述初稿整理成 brief、重點或待辦 |

## 行政任務延伸流程

| 流程包 | 目的 |
| --- | --- |
| [google-calendar-safe-ops-pack](google-calendar-safe-ops-pack/README.md) | 用假資料理解 Google Calendar 批次操作安全流程 |
| [gmail-label-cleanup-flow-pack](gmail-label-cleanup-flow-pack/README.md) | 用假資料示範 Gmail 規則設計、dry-run 與人工確認 |

## 技術底座與進階流程

| 流程包 | 目的 |
| --- | --- |
| [browser-session-foundation-pack](browser-session-foundation-pack/README.md) | 準備已登入但不外流的瀏覽器 session |
| [browser-ai-workflow-pack](browser-ai-workflow-pack/README.md) | 整理跨 AI 工具的瀏覽器操作、截圖驗證與 log |
