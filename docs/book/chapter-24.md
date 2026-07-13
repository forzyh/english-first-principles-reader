---
title: "第24章　从语义图生成英语"
---

# 第24章　从语义图生成英语

## 24.1 写作不要从中文词序开始

若先写一条完整中文长句再逐词替换，英语会继承中文的组织顺序。更稳健的方法是先画最小语义图，再选择英语的主干入口。

![教材插图 19](/images/book/figure-19.png)


*图 24-1 从交际目标到英语句子的八步生成算法*

## 24.2 第一步：明确交际目标

同一个事实可以服务于不同目标：

- 报告谁做了决定；
- 强调方案终于获批；
- 解释项目为什么延迟；
- 礼貌请求对方重新考虑。

目标决定主题、焦点、语态和情态，不能等句子写完后再“润色”。

## 24.3 第二步：画对象—事件—关系图

假设要表达：由于新数据表明风险较低，委员会昨天批准了修订后的计划。

```text
objects: committee, plan, new data, risk
SHOW(new data, LOW(risk))
CAUSE( SHOW(...), APPROVE(committee, revised plan) )
time(APPROVE)=yesterday
```

## 24.4 第三步：选择主干事件和信息起点

若重点是委员会的行动：

> The committee approved the revised plan yesterday.

若重点是计划的状态：

> The revised plan was approved yesterday.

若重点是原因证据：

> Because the new data indicated a lower level of risk, the committee approved the revised plan yesterday.

三句不是“主动、被动和状语从句练习”，而是三种信息入口。

## 24.5 第四步：管理对象引用

第一次引入、尚不可识别：

> a revised plan

若双方知道是哪份：

> the revised plan

若是机构唯一角色或前文框架可恢复：

> the committee

写作时先决定对象状态，再选冠词，而不是写完名词后凭感觉补 a/the。

## 24.6 第五步：添加必要子树

将原因挂到主事件：

> … because the new data indicated a lower level of risk.

将属性挂到对象：

> the plan that the technical team had revised

将说话者立场挂到整个命题：

> According to the preliminary analysis, …

每次添加前都问“它属于哪个节点”。这样能防止长句中修饰漂移。

## 24.7 第六步：选择事件元数据

- approved：封闭的昨天事件；
- had revised：在批准前已经完成的修订；
- indicated：过去证据陈述；
- may reduce：若要降低承诺，用情态标记；
- 被动：若计划是篇章主题，可重新映射。

## 24.8 第七步：按已知—新知排序

假设前文一直讨论 the revised plan，则自然延续：

> The revised plan was approved by the committee yesterday after new data indicated that the risk was lower than previously estimated.

若前文在讨论委员会，则主动更连贯：

> The committee approved the revised plan yesterday after reviewing new evidence about the risk.

“哪句更好”必须由篇章上下文决定。

## 24.9 第八步：执行三轮调试

### 结构轮

主句是否有完整谓语？每个限定动词是否有合适主语？并列是否平行？

### 引用轮

每个可数单数名词是否被限定？每个代词是否可唯一恢复？

### 信息轮

句首是否提供可进入的起点？最长成分是否压住主干？焦点是否落在期望位置？

## 24.10 从短句生长为长句

先写：

> The committee approved the plan.

再逐层添加：

```text
The committee approved the revised plan.
The committee approved the revised plan yesterday.
The committee approved the revised plan yesterday after reviewing the new data.
The committee approved the revised plan yesterday after reviewing the new data, which indicated that the risk was lower than previously estimated.
```

若继续添加使结构失衡，可拆句：

> The committee reviewed the new data yesterday. The data indicated that the risk was lower than previously estimated, so the committee approved the revised plan.

成熟写作不是句子越长越好，而是结构复杂度与读者恢复成本匹配。

### 生成练习

根据下面语义图写三种不同焦点的英语表达：

```text
DETECT(system, error)
time=last night
error caused repeated shutdowns
engineer is investigating now
confidence(cause)=high but not absolute
```

分别以 system、error、engineer 为篇章起点。
