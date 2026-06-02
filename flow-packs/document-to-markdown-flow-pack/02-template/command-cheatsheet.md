# 指令速查表

## 單一文件轉 Markdown

```powershell
doc2md "D:\demo\sample.pdf"
```

## 指定輸出檔案

```powershell
doc2md "D:\demo\sample.docx" -o "D:\demo\sample.md"
```

## 資料夾批次轉換

```powershell
doc2md "D:\demo\in" -o "D:\demo\out"
```

## 遞迴處理資料夾

```powershell
doc2md "D:\demo\in" -o "D:\demo\out" --recursive
```

## 轉換後給 AI 的提示詞

```text
請閱讀以下 Markdown，整理成：
1. 三句話摘要
2. 待辦事項
3. 需要人工確認的問題
4. 可直接貼到公告或會議紀錄的版本
```
