# 第一單元發展紀錄：中文 Windows 編碼安全

Last updated: 2026-06-03

## 單元定位

「中文 Windows 編碼安全」是本專案學習路線的第一站，但它不是成果型流程包。

它的定位是：

> 人用提示詞，AI 看規則，維護者才看流程包材料。

對一般使用者來說，這個單元的核心用途只有一件事：

> 複製提示詞給 AI，讓 AI 避開中文亂碼。

使用者不需要先理解 PowerShell、UTF-8、GitHub repo、Codex skill 或診斷腳本。這些技術細節由 AI 助手處理。

## 發展流程

1. 先確認問題不是單一個案。

   本機實測顯示 PowerShell 7.x 已改善很多預設 UTF-8 行為，但 Windows PowerShell 5.1、外部工具、終端顯示、Big5 舊資料與複製貼上仍可能造成中文亂碼。外部搜尋與 Claude CLI 討論也確認 AI CLI 在 Windows/CJK 環境會遇到相同風險。

2. 先升級底層 skill，再回到網站。

   `D:\projects\windows-powershell-encoding-skill` 已升級並 push，加入版本分流、PowerShell 7.x 優先、Windows PowerShell 5.1 legacy、InputEncoding 檢查與診斷腳本。

3. 把網站第一站改成底層安全。

   學習路線從「先做簡報」調整成「先避開中文亂碼，再做簡報」。簡報仍是第一個看得見的成果，但編碼安全是開工前的底層防呆。

4. 重新拆分人與 AI 的角色。

   原本流程包 README 比較像工程文件，對一般使用者不友善。最後決定：

   - 網站模組頁：給一般使用者看。
   - 提示詞：給 AI 助手執行。
   - flow-pack materials：給 AI 或維護者備查。
   - skill repo：給 AI 安裝或維護者查看完整規則。

5. 把主操作改成「複製提示詞」。

   `site/modules/windows-encoding.html` 移除主要的流程包下載按鈕，保留低調的進階備查連結。主要 CTA 是提示詞區塊的「複製」鈕。

6. 修正 Markdown 連結問題。

   網站不再直接連到本機 `.md`。原因是 raw Markdown 不是網站頁面，而且本機 HTTP server 可能沒有正確給 UTF-8 charset，導致瀏覽器中文亂碼。站內需要連材料時，改連 GitHub `tree/main/...` 或 `blob/main/...`。

7. 建立提示詞複製標準。

   新增 `site/copy-prompts.js`，所有 `.prompt-box` 都要有 `button[data-copy-prompt]`，使用者可以一鍵複製提示詞。

8. 建立工具缺失標準句。

   只要提示詞要求 AI 使用工具、安裝工具，或檢查環境是否缺少工具，一律加入：

   ```text
   如果你有本機操作或安裝權限，請代我檢查並完成必要安裝；如果你沒有權限，請用我看得懂的步驟帶我完成，不要只丟技術文件連結給我。
   ```

## 後續單元可複用原則

每個新單元先問四個問題：

1. 這個單元對「人」的最小用途是什麼？
2. 哪些事情其實應該交給 AI 讀提示詞後處理？
3. 是否需要完整流程包材料？若需要，是否只是備查？
4. 使用者點進每個連結後，看到的是網頁、GitHub 渲染頁，還是本機 raw 檔？

網頁實作規則：

- 給人看的說明要白話，先講用途，不先講工具名。
- 給 AI 的提示詞可以有技術細節。
- 提示詞一律有「複製」鈕。
- 安裝或工具檢查類提示詞一律加入工具缺失標準句。
- 網站 HTML 不直接連本機 `.md`。
- 流程包材料連到 GitHub，而不是 raw local Markdown。
- flow-pack README 不一定是一般使用者入口；它可以是 AI/維護者備查材料。

## 第一單元完成狀態

目前第一單元已完成到可作為後續單元範本的程度：

- `site/modules/windows-encoding.html` 有白話說明、AI 提示詞、複製鈕、進階備查。
- `site/packs.html` 的第一站按鈕導向單元頁，不直接導向流程包材料。
- `site/roadmap.html` 第一站為中文 Windows 編碼安全。
- `site/copy-prompts.js` 已可共用。
- `site-plan/web-writing-sop.md` 已記錄提示詞複製、工具缺失標準句、Markdown 連結規則。
- `site-plan/windows-chinese-encoding-research-notes.md` 保留研究依據。

## 第二單元參考：文件轉 Markdown

下一個單元是 `document-to-markdown-flow-pack`。

建議沿用第一單元的判斷方式：

- 給人看的說明先講「把檔案變成 AI 看得懂的乾淨文字」。
- 不要先要求使用者理解 MarkItDown、doc2md-toolkit、OCR、文字層等名詞。
- 若需要工具安裝，提示詞要加入工具缺失標準句。
- 如果要提供轉換指令，應該放在給 AI 的提示詞或進階備查，不要讓一般使用者先讀技術表格。
- 如果提供模板或檢查清單連結，連到 GitHub 渲染頁；若是網站主要操作，優先做成 HTML 單元內容。

第二單元的可能主句：

> 這是把文件變成 AI 看得懂的乾淨文字用的流程。

第二單元可能的核心 CTA：

> 複製提示詞，請 AI 幫你檢查工具、轉換文件，並用清單確認結果沒有漏字或亂碼。
