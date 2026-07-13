---
title: "第8章　修饰与挂接：信息究竟属于谁"
---

# 第8章　修饰与挂接：信息究竟属于谁

## 8.1 修饰就是给节点增加属性

在语义图中，修饰语通常不会创建主干事件，而是给对象、事件或整个命题增加条件。

```text
red car        → RED(CAR)
walk slowly    → SLOW(WALK)
probably left  → PROBABLE(LEAVE)
```

它们的区别不仅在词类，而在**作用域**：修饰的是哪个节点，覆盖多大的结构。

## 8.2 名词前修饰与名词后修饰

英语名词前常放短小、分类性强的修饰：

> a **small digital** camera

名词后常放带内部结构的修饰：

> a camera **with a damaged lens**

> the camera **that I bought last year**

> the camera **on the shelf**

可以把名词短语想成：

```text
[限定区] + [前置属性区] + HEAD + [后置扩展区]
```

后置扩展区允许继续递归，因此特别适合承载复杂信息。

## 8.3 副词的位置反映作用域

比较：

> **Only** Maya sent the file to Leo.

只有 Maya 发了，别人没有。

> Maya **only sent** the file to Leo.

Maya 只是发送，可能没有编辑或解释。

> Maya sent **only the file** to Leo.

只发送文件，没有发送其他东西。

> Maya sent the file **only to Leo**.

只发给 Leo，没有发给别人。

同一个 only 随挂接位置改变焦点。口语重音也参与标记作用域。

## 8.4 悬垂修饰是挂接对象缺失

> Walking down the street, the rain started.

表面上，Walking down the street 应当共享主句主语，但主句主语是 the rain，于是句法树暗示“雨在街上走”。正确做法是提供能控制该非谓语结构的参与者：

> Walking down the street, **I** felt the rain start.

错误不是“开头不能用 -ing”，而是子树需要的隐含主语无法从主句正确恢复。

## 8.5 限定性与补充性信息

> The employees **who completed the training** received certificates.

关系从句帮助筛选一部分员工，是识别条件。

> The employees, **who completed the training**, received certificates.

逗号把从句标记为补充说明，倾向于表示这些员工都完成了培训。标点改变的是信息结构和限制范围，不只是停顿。

## 8.6 作用域歧义的调试

面对歧义，依次检查：

- 这个修饰语语义上能修饰哪些候选节点？
- 它离哪个节点最近？近附着是倾向，不是绝对规则。
- 动词价结构是否把它选作补语？
- 重音、标点和上下文提示哪个解释？
- 是否可以改写以消除歧义？

例如：

> We discussed the plan in the office.

in the office 最自然地修饰 discussed，但也可能在特定上下文中限定“办公室里的计划”。写作时若歧义有实际后果，应改写，而不是期待读者猜对。

### 小练习

说明 even 在下列位置分别把什么设为焦点：

- Even Sara solved the problem.
- Sara even solved the problem.
- Sara solved even the hardest problem.
