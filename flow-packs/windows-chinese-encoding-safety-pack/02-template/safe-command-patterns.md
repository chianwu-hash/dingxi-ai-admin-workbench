# 安全指令樣式

## 讀取 UTF-8 Markdown

```powershell
Get-Content -LiteralPath "D:\demo\file.md" -Raw -Encoding UTF8
```

## 寫入 UTF-8 檔案

```powershell
Set-Content -LiteralPath "D:\demo\out.md" -Value $text -Encoding UTF8
```

## 驗證 JSON

```powershell
Get-Content -LiteralPath "D:\demo\data.json" -Raw -Encoding UTF8 | ConvertFrom-Json
```

## 建議

中文正式內容優先存在 `.md`、`.txt`、`.json` 等 UTF-8 檔案中，不要只依賴終端畫面。
