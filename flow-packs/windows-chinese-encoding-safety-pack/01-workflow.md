# 中文 Windows 編碼安全流程

## 流程總覽

```text
確認資料來源
-> 使用 UTF-8 檔案讀寫
-> 避免 PowerShell inline 中文寫檔
-> 檢查終端顯示是否可信
-> 用檔案或結構化輸出驗證
```

## 核心規則

- 讀寫中文檔案時指定 UTF-8。
- 不把終端機顯示當成唯一真相。
- 避免用 shell heredoc 或 redirect 寫入大量中文。
- PowerShell 腳本盡量保持 ASCII，中文內容放在 UTF-8 資料檔。
- 發現亂碼時停止，不要複製亂碼回正式文件。
