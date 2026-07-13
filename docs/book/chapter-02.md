---
title: "第2章　线性字符串、句法树与语义图"
---

# 第2章　线性字符串、句法树与语义图

## 2.1 一句话至少有三种表示

以这句话为例：

> The young boy slowly opened the window.

线性层面，它只是七个词按顺序排列。句法层面，词先组成短语，短语再组成句子：

```text
Sentence
├── NP / Subject
│   ├── Det: The
│   ├── Adj: young
│   └── N: boy
└── VP / Predicate
    ├── Adv: slowly
    ├── V: opened
    └── NP / Object
        ├── Det: the
        └── N: window
```

语义层面，它可以近似表示为：

```text
OPEN(e)
agent(e)=BOY
patient(e)=WINDOW
YOUNG(BOY)
SLOW(e)
```

![教材插图 4](/images/book/figure-04.png)


*图 2-1 同一句话的三层表示：字符串、句法树、语义图与语境解释*

这三层不应混为一谈。Subject 是句法角色，agent 是语义角色。主动句中二者经常重合，但被动句会把 patient 映射为 subject：

> The window was opened by the boy.

这里 the window 是句法主语，却仍然是语义上的受影响对象。

## 2.2 AST 类比真正有用的地方

AST 类比帮助我们理解三件事。

第一，**层级比邻接更重要**。两个词挨在一起，不代表它们直接组合；两个词相隔较远，也可能属于同一依赖关系。

第二，**同一表面串可能对应不同的树**。例如：

> I saw the man with a telescope.

with a telescope 可以挂在 saw 上，表示“我用望远镜看”；也可以挂在 the man 上，表示“那个男人拿着望远镜”。

![教材插图 5](/images/book/figure-05.png)


*图 2-2 挂接位置不同会生成不同解释*

第三，**从句是可递归的子结构**。一个句子可以嵌入另一个句子，而这个子句内部还可以继续嵌入：

> I believe [that she knows [why the system failed]].

这正是自然语言能够用有限规则表达无限新内容的原因之一。

## 2.3 AST 类比的边界

自然语言树并不像编译器 AST 那样总能得到唯一版本。真实理解还需要：

- 世界知识：望远镜通常可作为“看”的工具；
- 上下文：前文是否正在讨论拿望远镜的人；
- 韵律：口语中的停顿和重音会提示挂接；
- 交际目的：说话者想区分对象，还是说明工具；
- 语域习惯：技术文本与日常对话的省略程度不同。

所以更准确的流程是：

```text
字符串 → 候选句法树 → 候选语义图 → 语境评分 → 最可能解释
```

## 2.4 依存视角：不用完整画树也能工作

学习者不必每次画完整成分树。更轻量的做法是找“中心词”和“依赖项”：

```text
opened
├── subject: boy
│   ├── determiner: the
│   └── modifier: young
├── object: window
│   └── determiner: the
└── manner: slowly
```

无论使用成分树还是依存树，关键问题相同：**谁依赖谁，信息挂在哪里**。本书会根据教学目的在两种画法之间切换。

### 小练习

为下列短语各画两层结构，标出中心词：

- the very old stone bridge
- might have been waiting outside
- in the middle of the room
