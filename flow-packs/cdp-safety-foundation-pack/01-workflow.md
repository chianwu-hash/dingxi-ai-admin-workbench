# 瀏覽器自動化安全流程

## 一句話

```text
AI 可以借用瀏覽器，但先確認網站、帳號、資料、動作；底層操作交給 cdp-tools 與 cbs-workflows。
```

## 建議流程

```text
確認為什麼需要瀏覽器
-> 產生瀏覽器操作前安全確認表
-> 確認網站、帳號、資料、動作
-> 若需要開工作瀏覽器，優先使用 cbs-workflows guided:cdp-tools
-> cbs-workflows 呼叫 cdp-tools 開啟共用安全瀏覽器
-> 使用者在工作瀏覽器中登入
-> AI 驗證本機 CDP session
-> AI 只做整理、檢查、草稿或預覽
-> 正式送出、刪除、匯入、寄信、公告或寫入系統前停下來等使用者確認
```

## 為什麼需要這個流程？

瀏覽器自動化常見風險不是程式寫不出來，而是：

- 開到錯誤瀏覽器。
- 用錯登入帳號。
- 看錯網站或分頁。
- 把個資、登入狀態、cookie、session 或 screenshot 外流。
- AI 被網頁內容誤導，跨網站執行不該做的動作。
- 輪詢太密集或截圖太頻繁。
- 跳過使用者確認，直接送出、刪除、寄信、匯入或寫入正式系統。

## 一般同仁只需要做什麼？

一般同仁不需要懂 CDP、port、profile 或 session。

一般同仁只要能回答：

- 這次為什麼需要 AI 使用瀏覽器？
- 要使用哪個網站或網頁版 AI 工具？
- 目前登入哪個帳號？
- 會看到、上傳、複製或截圖哪些資料？
- AI 只是閱讀整理，還是會碰到正式動作？
- 哪一步必須停下來等自己確認？

## AI 助手要怎麼做？

AI 助手應先輸出「瀏覽器操作前安全確認表」，不要直接開瀏覽器或操作網頁。

需要開工作瀏覽器時，優先使用：

```powershell
cd D:\projects\cbs-workflows
npm run guided:cdp-tools
```

若已經有可用 session，可以讀取 `.browser-sessions` 中的設定，但仍要確認：

- `cdpUrl` 是本機 URL。
- profile 由 `cdp-tools` 管理。
- target page 是正確網站。
- 找不到目標頁時要停下來，不可自動使用第一個分頁。

## 維護者要怎麼做？

維護者負責確保：

- `D:\projects\cdp-tools` 已安裝並更新。
- `cdp-launch` 可用。
- profile root 維持在 `D:\chrome-cdp-profiles`。
- `cdp-status` 預設不輸出完整 command line。
- Node 腳本優先使用 `@local/cdp-safe-client`。
- polling 與 screenshot 節流符合安全規則。
