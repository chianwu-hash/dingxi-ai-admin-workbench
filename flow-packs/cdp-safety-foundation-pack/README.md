# 瀏覽器自動化安全底座流程包

## 這是什麼？

這個流程包不是給一般行政同仁學 CDP 指令用的。

它記錄的是：當 AI 需要借用瀏覽器、使用登入後網頁、NotebookLM、ChatGPT 生圖、Google 工具或其他網頁服務時，應該怎麼把安全責任分層。

```text
一般同仁：確認網站、帳號、資料、動作。
AI 助手：先做安全確認表，需要瀏覽器時走引導流程。
維護者：維護 cdp-tools、profile、polling、screenshot、log 等底層規則。
```

## 現在的工具分層

1. `cdp-tools`
   - GitHub: <https://github.com/chianwu-hash/cdp-tools>
   - 本機位置：`D:\projects\cdp-tools`
   - 角色：最底層安全工具。
   - 負責：`cdp-launch`、`cdp-status`、`D:\chrome-cdp-profiles`、local-only CDP URL、目標頁檢查、polling 與 screenshot 節流。

2. `cbs-workflows`
   - GitHub: <https://github.com/chianwu-hash/cbs-workflows>
   - 本機位置：`D:\projects\cbs-workflows`
   - 角色：引導層。
   - 負責：用白話問問題、啟動共用安全瀏覽器、讓使用者登入、驗證 session、保存可重用設定。
   - 新流程入口：

```powershell
npm run guided:cdp-tools
```

3. 教學網站第 4 單元
   - 角色：使用者確認課。
   - 重點：為什麼要讓 AI 使用瀏覽器，以及借用前要確認什麼。
   - 不要求一般同仁理解 CDP、port、profile、session 或 target。

## 適合誰？

- 網站維護者
- AI 助手
- 需要設計瀏覽器自動化流程的人
- 需要教一般同仁安全使用網頁版 AI 工具的人

一般行政同仁只需要看網站第 4 單元，不需要直接閱讀本流程包。

## 核心原則

- 行政同仁不學 CDP；行政同仁只確認網站、帳號、資料、動作。
- 新瀏覽器工作優先使用 `cbs-workflows` 的 `npm run guided:cdp-tools`。
- 底層啟動與 profile 管理交給 `cdp-tools`。
- 不手動用 raw `chrome.exe --remote-debugging-port`。
- profile 放在 `D:\chrome-cdp-profiles`，不要放進公開 repo 或專案資料夾。
- CDP URL 預設只允許本機：`127.0.0.1`、`localhost`、`::1`。
- 找不到正確 target page 時要停下來，不要自動操作第一個分頁。
- polling 保持 5000-8000 ms。
- screenshot 至少節流 10000 ms。
- 不公開 profile、cookie、session、登入畫面、使用者資料或截圖。

## 最快開始方式

如果是一般同仁：

1. 先看網站第 4 單元。
2. 請 AI 先產生「瀏覽器操作前安全確認表」。
3. 確認網站、帳號、資料、動作後，再讓 AI 協助。

如果是 AI 助手或維護者：

1. 讀 [01-workflow.md](01-workflow.md)。
2. 依照 [04-checklist.md](04-checklist.md) 檢查。
3. 需要環境設定時參考 [02-template/env-template.env](02-template/env-template.env)。
4. 需要 policy 文字時參考 [02-template/cdp-policy.md](02-template/cdp-policy.md)。
