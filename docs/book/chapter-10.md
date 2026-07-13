---
title: "第10章　从句：给结构挂上一棵子树"
---

# 第10章　从句：给结构挂上一棵子树

## 10.1 从句首先是一棵带谓语的结构

从句内部通常包含自己的述谓关系。它与主句的区别不在于“更长”，而在于它被嵌入另一棵树并承担某个功能。

从句可以：

- 占据名词槽位，成为命题对象；
- 挂在名词节点上，帮助识别或描述对象；
- 挂在事件或命题上，提供时间、原因、条件等背景。
![教材插图 10](/images/book/figure-10.png)


*图 10-1 三类从句的本质区别是挂接位置*

## 10.2 名词性从句：把一个命题当作对象

> I know **that the server is down**.

整个从句填充 know 的内容槽位：

```text
KNOW(
  experiencer=I,
  content=DOWN(SERVER)
)
```

> **What she proposed** makes sense.

what she proposed 占据主语位置。what 同时承担从句内部宾语和整个结构的连接功能，可近似理解为 “the thing that”。

### 陈述、疑问与选择

```text
that-clause      → 命题内容
whether/if       → 是非变量
wh-clause        → 带未知参数的命题
```

> I wonder **whether the plan will work**.

> I wonder **why the plan failed**.

嵌入疑问句通常使用陈述语序：

> Do you know **where she is**?

> ✗ Do you know where is she?

因为主句承担疑问操作，内部从句本身不再进行主谓倒装。

## 10.3 定语从句：在名词节点下增加识别条件

> The engineer **who fixed the system** called me.

关系词 who 一方面连接子树，另一方面在从句内部占据主语位置：

```text
ENGINEER(x)
FIX(x, SYSTEM)
CALL(x, ME)
```

> The system **that the engineer fixed** is stable now.

这里 that 对应从句内部的宾语空位：

```text
the system [that the engineer fixed __]
```

把空位看出来，是理解定语从句的关键。关系从句不是在名词后随便加一句话，而是在名词与子句内部的某个角色之间建立绑定。

### 限定性与非限定性

限定性关系从句参与识别对象，通常不加逗号；非限定性从句提供补充评论，用逗号与主干区隔：

> The students who submitted early received feedback first.

> Lina, who submitted early, received feedback first.

非限定性结构不能简单用 that 替代所有关系词，也不宜把关系词省略。

## 10.4 状语从句：给事件增加背景条件

> We left **because it was late**.

```text
LEAVE(we)
└── reason: LATE(it)
```

常见关系包括：

| 语义关系 | 常见连接形式 |
| --- | --- |
| 时间 | when, while, before, after, once |
| 原因 | because, since, as |
| 条件 | if, unless, provided that |
| 让步 | although, even though, while |
| 目的 | so that, in order that |
| 结果 | so…that, such…that |
| 比较 | than, as…as |

连接词不是单纯中文标签。since 可以表达时间起点，也可表达说话者认为较明显的原因；while 可以表达同时，也可表达对比。判断仍需看整条关系边。

## 10.5 从句边界与限定动词

解析长句时，先找限定动词有助于估计从句数量：

> The report **that was published yesterday** suggests **that demand has fallen**.

限定动词包括 was published、suggests、has fallen，对应三棵从句。非谓语形式 published 单独出现时不一定建立独立限定从句。

## 10.6 外置与占位符

长内容从句作为主语时，英语常使用外置：

> It is clear **that the estimate was wrong**.

结构上 it 占据主语位置，真正的信息内容放在句末。这同时满足主语接口、末端重量和末端焦点。

但要区分指代 it 和占位 it：

> I found a key. It was under the desk.　it 指 key。

> It is likely that she forgot.　it 不指具体对象。

### 小练习

给下列从句标注“名词槽位、名词修饰、事件背景”之一，并指出它挂在哪里：

- What he said surprised everyone.
- The reason why he left remains unclear.
- We will begin when everyone arrives.
- I doubt whether the data is complete.
- The data that we collected last week is incomplete.
