# Windows 中文編碼安全研究備忘錄

Last updated: 2026-06-02

## 目的

這份備忘錄整理目前針對「中文 Windows 編碼安全包」的本機實測、外部資料搜尋、以及 Claude CLI 討論結果。

這不是流程包的最終教學稿，而是後續升級 `windows-chinese-encoding-safety-pack` 前的決策依據。

## 總結判斷

中文 Windows 編碼安全包仍然需要保留，但定位應該更新。

舊說法容易讓人以為「Windows + PowerShell 處理中文一定到處亂碼」。更精準的說法是：

- PowerShell 7.x 已經大幅改善預設 UTF-8 行為。
- Windows PowerShell 5.1 仍然是高風險環境。
- AI CLI 會跨越 shell、外部工具、stdio、檔案讀寫、終端顯示與模型推理，任何一層亂碼都可能被模型誤當成真資料。
- 因此安全包的核心價值不是恐嚇使用者，而是教使用者先判斷環境，再套用對應規則，最後用檔案或結構化資料驗證。

建議未來將安全包改為「Windows 中文編碼版本分流指南」。

## 對使用者的第一建議

拿到中文 Windows 編碼安全包的使用者，應強烈建議先安裝並使用 PowerShell 7.x。

建議措辭：

> 若你會在 Windows 上處理中文檔案、執行 AI 產生的 PowerShell 指令，請優先安裝並使用 PowerShell 7.x。Windows 內建的 Windows PowerShell 5.1 仍可用，但中文檔案讀寫、redirect、外部工具輸出較容易出現編碼不一致，需套用額外安全規則。

建議分級：

1. 推薦環境：PowerShell 7.x (`pwsh`)。
2. 可用但需小心：Windows PowerShell 5.1。
3. 進階穩定環境：WSL 或 Git Bash。

## 本機實測結果

目前 Codex 執行環境：

- OS: Windows 10.0.26200
- Shell: PowerShell 7.6.2 (`pwsh`)
- Culture: `zh-TW`
- `[Console]::OutputEncoding`: `utf-8`
- `[Console]::InputEncoding`: `big5`

使用中文字串「中文測試」測試寫檔 bytes。

PowerShell 7.6.2 結果：

| 操作 | 寫出結果 |
| --- | --- |
| `Set-Content` default | UTF-8 |
| `Set-Content -Encoding UTF8` | UTF-8 |
| `>` redirect | UTF-8 |

Windows PowerShell 5.1 結果：

| 操作 | 寫出結果 |
| --- | --- |
| `Set-Content` default | Big5 / ANSI code page |
| `Set-Content -Encoding UTF8` | UTF-8 with BOM |
| `>` redirect | UTF-16LE |

判斷：

- PowerShell 7.x 的預設寫檔已明顯改善。
- 但 `InputEncoding` 仍可能是 Big5，表示外部工具 pipe、stdin/stdout 邊界仍需小心。
- Windows PowerShell 5.1 不適合作為中文 AI 工作流的主環境。

## 外部資料結論

Microsoft 官方文件與本機實測一致：

- Windows PowerShell 5.1 的 cmdlet 與 redirect 編碼預設不一致。
- PowerShell 6+ 預設使用 `utf8NoBOM`。
- `$OutputEncoding` 主要影響 PowerShell 與 native application 溝通，不等於全面改變所有讀寫檔規則。
- PowerShell 7.4 起，native command stdout redirection 會保留 byte-stream data；PowerShell redirection 則使用 `UTF8NoBOM`。
- `chcp 65001` 可改變 active console code page，但只是一層設定，不是完整解法。

參考資料：

- Microsoft Learn: [about_Character_Encoding](https://learn.microsoft.com/en-us/powershell/module/microsoft.powershell.core/about/about_character_encoding)
- Microsoft Learn: [about_Redirection](https://learn.microsoft.com/en-us/powershell/module/microsoft.powershell.core/about/about_redirection)
- Microsoft Learn: [about_Preference_Variables](https://learn.microsoft.com/en-us/powershell/module/microsoft.powershell.core/about/about_preference_variables)
- Microsoft Learn: [`chcp`](https://learn.microsoft.com/en-us/windows-server/administration/windows-commands/chcp)

## 其他 AI CLI 的相同問題

外部搜尋與 Claude CLI 討論顯示，這不是單一使用者或單一工具問題。

OpenAI Codex 相關 issue 指出：若 CLI wrapper 在 Windows CJK locale 下使用 `powershell.exe -Command "Get-Content ..."`，Windows PowerShell 5.1 可能用 ANSI code page 讀 UTF-8 檔案，導致模型拿到 mojibake，並可能自信地基於錯誤內容回答。

Anthropic Claude Code 也有 Windows Terminal、Git Bash、中文輸出亂碼相關 issue。根因同樣是 Git Bash、PowerShell、cmd、Windows code page、外部工具 stdout 之間的編碼不一致。

參考資料：

- OpenAI Codex GitHub issue: [Windows CJK locale encoding issue](https://github.com/openai/codex/issues/23044)
- Anthropic Claude Code GitHub issue: [Windows / Git Bash Chinese output issue](https://github.com/anthropics/claude-code/issues/7332)
- Claude Code Docs: [Windows setup](https://code.claude.com/docs/en/setup)

## Claude CLI 討論摘要

本機 Claude CLI 的回覆重點：

- WSL 是最乾淨的 UTF-8 環境，但跨 WSL / Windows 邊界仍需小心。
- Git Bash 通常比 Windows PowerShell 5.1 友善，但呼叫 Windows native tools 時仍可能回到 Windows code page 問題。
- PowerShell 7.x 大致安全，但仍需確認 `[Console]::InputEncoding` 與 `[Console]::OutputEncoding`。
- Windows PowerShell 5.1 是最大雷區，特別是 `Set-Content`、`Out-File`、redirect、`$OutputEncoding`。
- Claude Code / Claude CLI 在 Windows 上應優先使用 `pwsh` 或 WSL，並在 PowerShell wrapper 中注入 UTF-8 初始化。

需要校正的一點：

- Claude CLI 曾把 Codex 描述成「跑在 Linux 容器」，但本專案目前的 Codex thread 實際是在 Windows + PowerShell 7.6.2 中操作，因此本機 shell 編碼風險仍與 Codex 直接相關。

## 建議升級方向

後續討論升級 `windows-chinese-encoding-safety-pack` 時，可優先處理以下事項。

### 1. 加入環境分流

在 `01-workflow.md` 開頭加入：

```powershell
$PSVersionTable.PSVersion
[Console]::InputEncoding
[Console]::OutputEncoding
```

並把流程分成：

- PowerShell 7.x: 推薦路線。
- Windows PowerShell 5.1: 相容但高風險路線。
- Git Bash: 可用，但注意 Windows native tools。
- WSL: 最乾淨，但注意跨邊界。

### 2. 更新安全指令樣式

在 `safe-command-patterns.md` 補充：

```powershell
[System.IO.File]::WriteAllText($path, $text, [System.Text.UTF8Encoding]::new($false))
```

用途：

- 跨版本寫出 UTF-8 no BOM。
- 避免 Windows PowerShell 5.1 的 `Set-Content -Encoding UTF8` 寫出 BOM。

### 3. 補充 profile / wrapper 初始化

可提供使用者版與 AI CLI 版兩種初始化。

使用者互動 shell 可考慮：

```powershell
[Console]::InputEncoding = [System.Text.UTF8Encoding]::new()
[Console]::OutputEncoding = [System.Text.UTF8Encoding]::new()
$OutputEncoding = [Console]::OutputEncoding
```

AI CLI / no-profile wrapper 則不應依賴使用者 profile，應在每次 PowerShell wrapper 中明確設定。

### 4. 強化驗證清單

`04-checklist.md` 建議新增：

- 已確認使用的是 PowerShell 7.x、Windows PowerShell 5.1、Git Bash 或 WSL。
- 若使用 Windows PowerShell 5.1，已避免使用預設 `Set-Content`、`Out-File` 與 `>` 寫中文正式內容。
- 若使用外部工具 pipe 中文資料，已確認 input/output encoding。
- 正式內容已用 UTF-8 檔案、structured output、browser rendering、`git diff` 或 byte-level 檢查驗證。

## 暫定結論

中文 Windows 編碼安全包不應移除。

更好的升級方向是：

> 從「中文 Windows 可能亂碼，所以全部小心」改為「先判斷 shell 與 PowerShell 版本，再使用對應的 UTF-8 安全做法」。

這樣既能承認 PowerShell 7.x 的改善，也能保留對 Windows PowerShell 5.1、Big5 舊資料、外部工具與 AI CLI stdout/stderr 解析的防護。
