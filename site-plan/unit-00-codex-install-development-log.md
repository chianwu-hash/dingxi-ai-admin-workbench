# 第 0 單元發展紀錄：安裝 Codex

Last updated: 2026-06-07

## 單元定位

「安裝 Codex」是第 0 單元。

它不是成果型工作流，也不是流程包，而是所有後續單元的入口準備。

對一般承辦人來說，這個單元的核心用途是：

> 先讓自己的電腦有一個可以讀本機資料夾、跑檢查、協助整理檔案的 AI 工作環境。

因此學習順序建議改為：

0. 安裝 Codex
1. 中文 Windows 編碼安全
2. 文件轉 Markdown
3. 我的 AI 行政工作台
4. AI 行政簡報

## 官方文件依據

2026-06-07 依 openai-docs skill 重新讀取 Codex manual，並確認官方文件：

- `https://developers.openai.com/codex/app/windows`
- `https://developers.openai.com/codex/quickstart`
- `https://developers.openai.com/codex/auth`

目前官方方向：

- Windows 使用者可安裝 Codex app。
- Windows app 可從 Microsoft Store 安裝，也可依官方文件使用 `winget install Codex -s msstore`。
- Codex 可用 ChatGPT 帳號登入，也可用 API key，但兩者的資料政策與可用功能可能不同。
- Codex app 可在 Windows native / PowerShell 環境工作，也可視需要設定 WSL2。
- Git、Node.js、Python 等工具是後續工作會常用的輔助工具，但不應在第 0 單元一口氣要求承辦人理解全部。

## 寫作原則

第 0 單元要避免把承辦人嚇跑。

給人看的說明先講：

- 為什麼要先裝 Codex。
- 裝完後能做什麼。
- 下一站接中文安全與文件轉文字。

不要一開始塞：

- CLI 參數
- MCP
- API key 細節
- sandbox 細節
- WSL 與 native agent 的完整差異
- Git / Node / Python / GitHub CLI 的完整安裝教學

這些可留到進階或由 Codex 在後續單元依任務需要檢查。

## 本次網站調整

- 新增 `site/modules/codex-install.html`。
- 首頁 hero 改成從「先安裝 Codex」開始。
- `site/roadmap.html` 新增第 0 單元，並把前段調整為：
  - 0 安裝 Codex
  - 1 中文 Windows 編碼安全
  - 2 文件轉 Markdown
  - 3 我的 AI 行政工作台
  - 4 AI 行政簡報
- `site/packs.html` 新增第 0 站，並把第二、第三、第四站調整到新順序。
- `site/modules/case-routing.html` 從「行政案件類型路由」改寫為「我的 AI 行政工作台」，讓第三單元不再只被工程詞綁住。

## 第 0 單元完成狀態

目前第 0 單元有：

- 白話說明。
- 官方安裝文件連結。
- 可複製的安裝請求提示詞。
- 安裝後檢查重點。
- 下一站導向第 1、2、3 單元。

後續若 Codex 官方安裝方式改變，應優先更新第 0 單元頁與本筆記。
