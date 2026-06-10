# AI 行政工作臺教學網站

這個工作區用來製作「AI 行政工作臺」教學網站與流程包。

核心目標不是公開原始工作 repo，也不是讓使用者一次理解 12 個流程包。

目前第一目標是先讓使用者完成「安裝 Codex」這個第 0 單元，再做「中文 Windows 編碼安全」與「文件轉 Markdown」這兩個底層準備，接著建立「我的 AI 行政工作台」，並學會讓 AI 使用瀏覽器前先確認五件事。目前網站確認內容到第 4 單元；第 5 單元之後先標示為製作中。

整體教學模式仍維持：

1. 看成果：知道 AI 行政工作臺能做到什麼。
2. 學方法：理解每個流程如何拆解。
3. 拿流程包：下載模板、假資料與檢查清單，回去照著做。

## 目前內容

目前包含 12 個流程包與對應網站單元頁。建議學習順序如下：

0. 安裝 Codex（網站第 0 單元，不是流程包）
1. `windows-chinese-encoding-safety-pack`
2. `document-to-markdown-flow-pack`
3. `admin-case-routing-template-pack`（網站顯示為「我的 AI 行政工作台」）
4. `cdp-safety-foundation-pack`（網站顯示為「讓 AI 使用瀏覽器前，先確認五件事」）
5. `ai-admin-presentation-flow-pack`（網站第 5 單元製作中）
6. `admin-brand-image-flow-pack`
7. `obsidian-confirmation-flow-pack`
8. `voice-input-workflow-pack`
9. `google-calendar-safe-ops-pack`
10. `gmail-label-cleanup-flow-pack`
11. `browser-session-foundation-pack`
12. `browser-ai-workflow-pack`

## 專案交接

後續維護前請先閱讀：

- [HANDOFF.md](HANDOFF.md)
- [AGENTS.md](AGENTS.md)

## 重要原則

- 對外只使用模板、假資料、檢查清單與去識別化範例。
- 不放 OAuth token、client secret、API key、`.env.local`。
- 不放真實 Gmail、Google Calendar、公文、個資、校長行程或內部未公開資料。
- 原始 repo 只作為內部製作來源，不直接提供給一般使用者。
- 頂溪正式品牌素材由校內區網來源提供；公開 repo 可保留區網來源設定，但不直接放官方校徽原始檔。

## 頂溪校內品牌素材來源

品牌來源設定在：

- [brand/brand-source.json](brand/brand-source.json)
- [brand/README.md](brand/README.md)

校內 UNC 路徑：

```text
\\10.235.72.5\0-1學校共用資料--行政資料區\00學校徽圖、校歌、校旗、獎狀
```

若在校內網路，可執行：

```powershell
.\scripts\fetch-internal-brand-pack.ps1
```

若不在校內網路，請使用 placeholder，不要自行生成或臨摹正式校徽。

## 準備公開模板版

若要準備公開 GitHub 版，請執行：

```powershell
.\scripts\prepare-public-template.ps1
```

這會產生：

```text
_public-template/
```

公開模板版會保留流程包、網站、placeholder、區網品牌來源設定，但移除正式校徽與校內品牌圖檔。

## 目錄

```text
AI行政工作臺教學網站/
├─ README.md
├─ brand/
├─ site-plan/
├─ flow-packs/
├─ scripts/
└─ assets/
```

## 目前入口

- [教學網站首頁](site/index.html)
- [MVP 製作檢查清單](site-plan/mvp-build-checklist.md)
- [流程包下載中心草案](site-plan/download-center.md)
- [流程包總覽](flow-packs/README.md)
