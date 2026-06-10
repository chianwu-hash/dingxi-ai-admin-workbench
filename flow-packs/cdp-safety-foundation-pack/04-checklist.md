# 瀏覽器自動化安全檢查清單

這份清單不是要一般同仁學會 CDP，而是要在「讓 AI 操作瀏覽器」之前，把帳號、資料、網站與高風險動作確認清楚。

## 一般同仁

- [ ] 已說清楚為什麼這件事需要 AI 使用瀏覽器，而不是只用文字回答。
- [ ] 已確認要使用的網站或網頁版 AI 工具。
- [ ] 已確認目前登入的是正確帳號。
- [ ] 已確認要貼上、上傳、截圖或複製的資料可以用在這項任務。
- [ ] 已標出必須停下來等我確認的動作，例如送出、刪除、寄信、公告、匯入、寫入系統。
- [ ] AI 已先輸出「瀏覽器操作前安全確認表」，而不是直接開始操作。

## AI 助手

- [ ] 操作瀏覽器前，已先完成安全確認表。
- [ ] 需要開新的工作瀏覽器時，優先使用 `D:\projects\cbs-workflows` 的 `npm run guided:cdp-tools`。
- [ ] 已確認 `cdpUrl` 是本機 URL，例如 `http://127.0.0.1:9222`。
- [ ] 已確認 target page 是正確網站；找不到正確頁面時停止，不自動改連其他頁。
- [ ] 不公開 profile、cookie、session、登入畫面或含個資的截圖。
- [ ] 遇到送出、刪除、寄信、公告、匯入、寫入系統等正式動作時，停止並等待使用者確認。

## 維護者

- [ ] `D:\projects\cdp-tools` 已更新到目前專案採用的版本。
- [ ] 啟動 Chrome 時使用 `cdp-launch`，不直接 raw launch Chrome。
- [ ] CDP profile root 使用 `D:\chrome-cdp-profiles`。
- [ ] `cdp-status` 預設不印出完整 command line；需要診斷時才使用顯示完整資訊的選項。
- [ ] polling 間隔維持在 5000-8000 ms。
- [ ] screenshot 節流至少 10000 ms。
- [ ] 不在 polling loop 裡反覆列舉所有 browser pages 或 CDP targets。
- [ ] batch logs 寫到檔案，避免把大量或敏感 log 貼進對話。
