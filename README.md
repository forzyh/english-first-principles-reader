# 英语第一性原理 · VuePress 阅读站

本项目把 `English_First_Principles_Textbook_CN.docx` 按章节转换为 Markdown，并使用 VuePress 2 提供章节目录、页内导航、全文搜索、深浅色模式和前后章切换。

在线阅读：<https://forzyh.github.io/english-first-principles-reader/>

## 本地运行

```bash
npm install
npm run docs:dev
```

生产构建：

```bash
npm run docs:build
```

## 重新提取内容

把新的 DOCX 解压到 `tmp/docx-xml` 后执行：

```bash
npm run content:extract
```

转换脚本位于 `scripts/extract_docx.rb`。生成的正文在 `docs/book`，原图在 `docs/.vuepress/public/images/book`。
