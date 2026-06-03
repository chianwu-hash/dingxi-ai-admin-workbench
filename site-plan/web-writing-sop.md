# 網頁製作 SOP

Last updated: 2026-06-02

## 目的

這份 SOP 記錄本專案撰寫與更新教學網站頁面時要遵守的固定規則。

## 提示詞複製區

凡是在網站頁面中提供「提示詞」「可貼給 AI 的文字」「給 AI 助手看的內容」讓使用者複製時，一律要提供一鍵複製按鈕。

實作規則：

- 使用 `.prompt-box` 包住提示詞區塊。
- 使用 `.prompt-header` 放標題與複製按鈕。
- 複製按鈕文字使用「複製」。
- 複製按鈕加上 `data-copy-prompt`。
- 提示詞本文放在 `<pre><code>...</code></pre>`。
- 頁面需載入 `../copy-prompts.js`。

範例：

```html
<div class="prompt-box">
  <div class="prompt-header">
    <p class="prompt-title">可直接貼給 AI 的句子</p>
    <button class="copy-button" type="button" data-copy-prompt>複製</button>
  </div>
  <pre><code>請把這段文字貼給 AI。</code></pre>
</div>
<script src="../copy-prompts.js"></script>
```

檢查規則：

- 每個 `.prompt-box` 都要有 `button[data-copy-prompt]`。
- 每個含 `button[data-copy-prompt]` 的頁面都要載入 `copy-prompts.js`。
- 更新後要跑站內連結檢查。

安裝或環境設定類提示詞：

- 給人看的說明要提醒使用者：若 AI 有本機操作或安裝權限，可以請 AI 代為檢查與安裝。
- 給 AI 的提示詞要明確要求：有權限就代辦；沒有權限就用使用者看得懂的步驟引導，不要只提供技術文件連結。
- 若規則已經寫在 repo、skill 或 flow-pack 裡，網站提示詞只負責指向正確 repo、授權 AI 檢查安裝，並要求 AI 以 repo 規則為準；不要在提示詞裡重抄整套技術規則。
- 若提示詞要求 AI 使用某個工具、安裝某個工具、或檢查環境中是否缺少工具，一律加入下列標準句：

```text
如果你有本機操作或安裝權限，請代我檢查並完成必要安裝；如果你沒有權限，請用我看得懂的步驟帶我完成，不要只丟技術文件連結給我。
```

## Markdown 材料連結

網站頁面不要直接連到本機 repo 內的 `.md` 檔案。

原因：

- `.md` 不是網站頁面，一般使用者點開後會看到原始 Markdown。
- 本機 HTTP server 可能沒有正確提供 UTF-8 charset，瀏覽器會把中文顯示成亂碼。

實作規則：

- 給一般使用者看的內容，優先做成 `site/modules/*.html` 網頁。
- 若需要連到完整流程包資料夾，連到 GitHub 的 `tree/main/...`。
- 若需要連到單一 Markdown 模板或檢查清單，連到 GitHub 的 `blob/main/...`。
- 網站 HTML 中不應出現指向本機相對路徑的 `.md` 連結，例如 `../flow-packs/.../README.md`。

檢查規則：

- 更新後搜尋 `site/` 中是否還有 `href` 指向本機 `.md`。
- 允許外部 GitHub `blob/main/*.md` 或 `tree/main/...` 連結，因為 GitHub 會用網頁方式呈現。

## 工具型流程頁寫法

如果某個單元本質上需要工具、指令、套件或環境檢查，網站頁面仍然要先從一般使用者的最小用途寫起，不要先列工具名。

寫作順序：

1. 先說使用者要完成什麼事。
2. 再說使用者要準備什麼資料。
3. 把工具選型、安裝、指令與錯誤處理放進給 AI 的提示詞。
4. 若流程有失真風險，例如文件轉換、資料清理或批次操作，要在頁面上用白話提醒「完成後要檢查什麼」。
5. 完整流程、指令速查與檢查清單放在進階備查，連到 GitHub 渲染頁。

文件轉換類頁面特別要提醒：

- 不要把真實公文、學生或家長資料、未公開資料直接上傳到不明外部服務。
- 轉換成功不等於內容正確，還要檢查標題、表格、中文、漏頁與頁首頁尾。
- 掃描檔或沒有文字層的 PDF 需要 OCR 或人工確認，不能假裝已完整轉換。
