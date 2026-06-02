# Browser Session 基礎流程

```text
建立專用 profile
-> 手動登入目標服務
-> 保存 session 設定
-> smoke test
-> 交給 workflow 使用
```

## 應避免

- 把 session config commit 到公開 repo。
- 將含帳號資訊的截圖放進教學包。
- 讓多個任務共用不該共用的 profile。
