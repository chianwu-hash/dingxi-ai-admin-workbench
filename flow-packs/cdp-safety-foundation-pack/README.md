# CDP 安全底座流程包

## 這是什麼？

這個流程包整理 Chrome DevTools Protocol 自動化的安全底線：使用 shared launcher、固定 profile、節流 polling、避免混用登入狀態。

## 適合誰？

- 需要用 AI 助手控制瀏覽器的人
- 需要建立瀏覽器自動化流程的人
- 需要避免登入 session 混亂的人

## 核心原則

- 使用 `cdp-launch`，不要手動用 raw Chrome remote debugging。
- profile 放在指定位置。
- polling 保持 5000-8000 ms。
- 截圖節流至少 10000 ms。
- 不在 polling loop 中反覆掃所有 target。

## 最快開始方式

1. 讀 [01-workflow.md](01-workflow.md)。
2. 複製 [env-template.env](02-template/env-template.env)。
3. 執行安全檢查清單。
