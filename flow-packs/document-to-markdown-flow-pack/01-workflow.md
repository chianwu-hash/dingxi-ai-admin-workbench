# 文件轉 Markdown 流程

## 流程總覽

```text
取得文件
-> 轉成 Markdown / Text
-> 檢查輸出品質
-> 修正或重轉
-> 交給 AI 摘要、分類或改寫
```

## 步驟 1：確認文件類型

常見文件：

- PDF
- Word
- PowerPoint
- Excel
- HTML
- CSV

## 步驟 2：執行轉換

最簡單的方式：

```powershell
doc2md "sample.pdf"
```

指定輸出：

```powershell
doc2md "sample.docx" -o "sample.md"
```

## 步驟 3：檢查品質

至少檢查：

- 標題是否完整
- 表格是否可讀
- 中文是否亂碼
- 是否有漏頁
- 頁碼與頁首頁尾是否干擾正文

## 步驟 4：交給 AI 處理

可請 AI：

- 摘要重點
- 整理成清單
- 找出待辦事項
- 改寫成公告或會議紀錄
