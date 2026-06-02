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
