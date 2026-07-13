---
title: "第23章　长句解析算法"
---

# 第23章　长句解析算法

## 23.1 阅读长句的目标不是逐词翻译

逐词翻译会把所有词放在同一平面，恰好丢失英语最重要的层级信息。长句阅读应先恢复主干，再逐层挂接。一个稳定的七步算法如下。

![教材插图 18](/images/book/figure-18.png)


*图 23-1 长句解析七步算法*

## 23.2 第一步：找限定动词，估计从句数量

看例句：

> The proposal that the committee submitted after it had reviewed the latest data is likely to be approved before the session ends.

先标出限定动词：

```text
submitted
had reviewed
is
ends
```

to be approved 是非限定结构。限定动词帮助我们预估至少有四个限定从句或从句层。

## 23.3 第二步：找主句骨架

排除明显嵌入结构后，主句是：

> The proposal **is likely** to be approved.

主语中心词是 proposal，限定谓语核心是 is，表语是 likely，不定式补足“可能发生什么”。先得到这个骨架，整句就不再失控。

## 23.4 第三步：填动词槽位

对每个谓语问：

```text
谁参与？
动词要求什么补语？
缺失角色是否由关系词、控制或语境恢复？
```

- submitted: agent = committee，patient = proposal；
- reviewed: agent = committee（由 it 指回），patient = latest data；
- approved: patient = proposal，agent 未表达；
- ends: theme = session。

## 23.5 第四步：判断每个子树挂在哪里

```text
that the committee submitted ...
→ 挂在 proposal 上，定语从句

after it had reviewed the latest data
→ 挂在 submitted 事件上，时间背景

to be approved
→ 挂在 likely 上，内容补足

before the session ends
→ 挂在 approved 事件上，时间边界
```

长句真正的难点通常不是生词，而是挂接层级。

## 23.6 第五步：读取事件元数据

- had reviewed：从 submitted 的过去参照点再向前回看；
- is likely：说话者当前对未来批准事件作概率判断；
- be approved：被动，使 proposal 成为主语相关对象；
- before：为批准事件设置上界。

## 23.7 第六步：恢复引用链

that 在关系从句中指向 proposal 并占宾语空位；it 指向 committee 而非 proposal，因为 review 的施事更符合委员会，且 proposal reviewed data 在常识上不成立。

这里语法特征与世界知识共同完成消歧。

## 23.8 第七步：重建语义图

```text
PROPOSAL(p)
COMMITTEE(c)
DATA(d)
REVIEW(c,d) before SUBMIT(c,p)
LIKELY_NOW( APPROVE(unknown,p) before END(session) )
```

最后才将结构自然化为中文，而不是从第一词开始逐字搬运。

## 23.9 遇到插入成分怎么办

> The new policy, according to several analysts, may reduce costs, at least in the short term, without affecting service quality.

先暂时删除逗号中的插入成分：

> The new policy may reduce costs without affecting service quality.

再把 according to several analysts 挂到命题来源层，把 at least in the short term 挂到结论范围层。插入语不是主干的一部分，却可能限制证据来源和适用范围。

## 23.10 遇到并列怎么办

> The system collects usage data, detects abnormal behavior, and alerts administrators when a risk threshold is exceeded.

共享主语是 the system，三个并列谓语是 collects、detects、alerts。when... 最自然地只挂在最近的 alerts 上，但上下文也可能让它覆盖整组操作。检查并列边界与从句位置。

## 23.11 一份可打印的解析标注法

在纸上或电子文档中可使用：

```text
[主句骨架]
(名词修饰)
<事件背景>
{命题立场}
__ 空位
→ 指代/控制关系
```

示例：

```text
[The proposal (that the committee submitted __
  <after it had reviewed the latest data>)
 is likely <to be approved <before the session ends>>].
```

### 长句练习

解析下句，完成七步标注：

> Although the model that performed best on the validation set required substantially more computing power, the researchers decided to deploy it because the reduction in error rates was likely to outweigh the additional cost.
