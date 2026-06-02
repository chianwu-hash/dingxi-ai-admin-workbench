# CDP 安全底座流程

```text
確認用途
-> 用 shared launcher 開 Chrome
-> 使用固定 profile
-> 連線到正確 target
-> 節流 polling / screenshot
-> 寫 log 到檔案
```

## 為什麼需要底座？

瀏覽器自動化常見風險不是程式寫不出來，而是：

- 開到錯誤 profile
- 用錯登入帳號
- 輪詢太密集
- 截圖太頻繁
- 混用不同任務的瀏覽器狀態
