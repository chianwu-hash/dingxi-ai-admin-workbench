# 中文 Windows 編碼安全流程包

## 這是什麼？

這個流程包整理 Windows、PowerShell、中文檔名與 UTF-8 檔案在 AI 行政工作臺中的基本安全規則。

## 適合誰？

- 需要在 Windows 上使用 AI 助手處理中文行政資料的人
- 需要寫或執行 PowerShell 腳本的人
- 需要避免中文亂碼造成正式資料錯誤的人

## 你會做出什麼成果？

- 一份中文檔案處理安全規則
- 一份安全指令樣式
- 一份亂碼檢查清單

## 最快開始方式

1. 先讀 [01-workflow.md](01-workflow.md)。
2. 複製 [safe-command-patterns.md](02-template/safe-command-patterns.md)。
3. 每次處理中文輸出前跑一次 [04-checklist.md](04-checklist.md)。

## 安全限制

終端機顯示不是中文內容的唯一可信來源。正式輸出前，要用 UTF-8 檔案、diff、瀏覽器畫面或結構化資料再次驗證。
