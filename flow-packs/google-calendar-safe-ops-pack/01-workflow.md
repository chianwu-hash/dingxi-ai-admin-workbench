# Google Calendar 安全批次操作流程

## 流程總覽

```text
確認目標 calendar
-> 查詢目標日期範圍
-> 備份既有事件
-> 產生 dry-run
-> 人工確認
-> 依同一份計畫寫入
-> 保存 operation-result
```

## 步驟 1：確認目標 calendar

不要假設 `primary` 就是正確日曆。需確認：

- calendar 顯示名稱
- calendar ID
- 使用情境
- 寫入權限

公開示範時只能使用假 calendar ID。

## 步驟 2：備份目標日期範圍

批次新增、修改或刪除前，先備份目標日期範圍的既有事件。

## 步驟 3：產生 dry-run

dry-run 應列出：

- action
- calendarId
- event body 或 target event ID
- source reference
- conflict notes

## 步驟 4：人工確認

把 dry-run 轉成人類可讀清單，確認後才寫入。

## 步驟 5：寫入與保存結果

寫入後保存 operation-result，包含：

- created / updated / deleted event IDs
- summary
- start / end
- htmlLink
- failure notes
