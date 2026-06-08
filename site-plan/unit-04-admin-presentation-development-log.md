# 第四單元發展紀錄：AI 行政簡報

Last updated: 2026-06-03

## 單元定位

「AI 行政簡報」目前改列第四單元。它是成果型工作流，不是安裝型工具。

對一般使用者來說，這個單元的核心用途是：

> 複製提示詞給 AI，請 AI 依照流程包帶我把一個行政主題整理成可檢查的簡報草稿。

這個單元不應放進首頁整合安裝提示詞。首頁整合提示詞只放需要安裝或套用的基礎工具 repo，例如 Windows 中文編碼安全與文件轉 Markdown。

## 最小用途判斷

一般使用者不需要先理解 CDP、browser session、影像模型工作流、repo 內部結構或完整模板檔案。

使用者需要知道的是：

- 我有一個行政主題。
- 我可能有文件、口述重點、照片說明或舊簡報。
- 我想先得到一份可以討論、可以檢查的簡報 brief 與投影片大綱。
- AI 可以幫忙整理結構，但不能替人確認事實、發布內容或決定對外分享。
- 正式校徽、頁碼與固定識別要用正式素材或 overlay，不交給影像模型自由生成。

因此網站頁面把主操作改成「複製開始提示詞」，而不是「下載流程包」。

## 人與 AI 的分工

網站模組頁給人看：

- 用白話說明這是成果型工作流。
- 告訴使用者最少要準備主題、聽眾、素材與不可公開界線。
- 提供可直接貼給 AI 的開始提示詞與複製鈕。
- 說清楚 AI 負責整理，人負責確認，團隊負責留下 SOP。

提示詞給 AI 看：

- 指向 GitHub 上的 `ai-admin-presentation-flow-pack`。
- 要求 AI 優先參考 README、workflow、brief template、presentation outline prompt、checklist 與 safety notes。
- 要求若流程包規則和 AI 原本習慣不同，以流程包規則為準。
- 要求 AI 先問使用者主題、聽眾、場合、素材、不可公開內容與希望成果。
- 分階段產出 brief、大綱、素材或圖像需求、人工審查清單與 SOP 回寫提示。

flow-pack materials 給 AI 或維護者備查：

- 完整流程。
- brief 模板。
- 投影片大綱提示詞。
- 圖像提示詞模板。
- 審查清單。
- 安全注意事項。
- SOP 回寫提示詞。

## 本次網站與流程包調整

- `site/modules/admin-presentation.html` 重寫為成果型工作流入口。
- 主提示詞新增「複製」鈕，並載入 `../copy-prompts.js`。
- 主提示詞不要求安裝工具，也不放進首頁整合安裝提示詞。
- 主提示詞指向 GitHub flow-pack，要求 AI 以 flow-pack 規則為準，不重抄完整技術規則。
- `site/packs.html` 的簡報流程包入口改為先進單元頁。
- 新增 `flow-packs/ai-admin-presentation-flow-pack/02-template/presentation-outline-prompt.md`，補齊網站與維護清單引用的材料。
- 更新簡報 flow-pack README、workflow、brief template、checklist、safety notes，補上成果型定位、人機分工、素材界線、正式識別 overlay 與 SOP 回寫。
- `site-plan/web-writing-sop.md` 新增成果型工作流頁寫法。

## 後續單元可複用原則

成果型單元可沿用這個模式：

1. 先判斷使用者最後要得到什麼成果。
2. 網站主句先講成果，不先講工具。
3. 主 CTA 是複製提示詞，請 AI 依照 repo 或 flow-pack 帶使用者做。
4. 若 flow-pack 已有規則，網站提示詞只指向材料並要求以 flow-pack 為準。
5. 人與 AI 的責任要分清楚。
6. 需要安裝的基礎工具才放首頁整合安裝提示詞；成果工作流不放。
7. 完成成果後，要求 AI 回寫成下一次可重複的小 SOP。

## 第四單元完成狀態

目前第四單元已完成到可作為成果型工作流頁範本的程度：

- `site/modules/admin-presentation.html` 有白話定位、最小用途、開始提示詞、複製鈕、人機分工、進階 GitHub 材料連結與支援流程入口。
- `flow-packs/ai-admin-presentation-flow-pack` 補齊大綱提示詞與更完整的 brief / checklist / safety notes。
- `site-plan/web-writing-sop.md` 已記錄成果型工作流頁規則。
