# Google Calendar 安全批次操作流程包

## 這是什麼？

這個流程包教你用假資料理解 Google Calendar 批次操作的安全流程：確認目標日曆、備份、dry-run、人工確認、寫入與保存結果。

## 適合誰？

- 場租承辦
- 行事曆維護者
- 行政人員
- 需要批次新增、修改或刪除 calendar 事件的人

## 你會做出什麼成果？

完成後會得到：

- 一份假事件資料
- 一份 dry-run JSON
- 一份 human review list
- 一份 operation-result JSON
- 一份批次操作安全檢查清單

## 使用前需要準備什麼？

- Google Calendar 操作權限
- 目標 calendar 的正確識別方式
- 假資料練習環境
- 先 dry-run、再人工確認的習慣

## 最快開始方式

1. 讀 `03-demo-data/sample-events.json`。
2. 對照 `02-template/dry-run-template.json` 做 dry-run 計畫。
3. 用 `04-checklist.md` 確認寫入前安全條件。

## 完整操作流程

請看 [01-workflow.md](01-workflow.md)。

## 可以複製哪些模板？

- [event-template.json](02-template/event-template.json)
- [dry-run-template.json](02-template/dry-run-template.json)
- [operation-result-template.json](02-template/operation-result-template.json)
- [backup-template.json](02-template/backup-template.json)
- [human-review-list-template.md](02-template/human-review-list-template.md)

## 可以用哪些假資料練習？

- [sample-events.json](03-demo-data/sample-events.json)

## 做之前要檢查什麼？

請看 [04-checklist.md](04-checklist.md)。

## 有哪些安全限制？

請看 [05-safety-notes.md](05-safety-notes.md)。

## 常見錯誤

- 未確認目標 calendar 就寫入。
- 未備份就批次修改。
- dry-run 和實際寫入不是同一份計畫。
- 把真實 calendar ID 放進公開範例。

## 延伸應用

- 場租事件
- 研習提醒
- 主管行程
- 校務工作提醒
