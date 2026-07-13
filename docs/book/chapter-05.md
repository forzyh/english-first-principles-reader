---
title: "第5章　词与短语：节点怎样组成模块"
---

# 第5章　词与短语：节点怎样组成模块

## 5.1 词类不是“单词身份证”，而是结构功能

传统词类表容易让人以为每个单词只有一种身份。实际上，词类首先说明一个形式在当前结构中怎样工作：它可以成为短语中心、接受什么补语、被什么修饰、放在什么位置。

比较 record：

> We **record** every meeting.　动词：建立记录这一事件。

> I checked the **record**.　名词：指向一个对象。

> a **record** year　名词作前置修饰成分，整体接近形容词功能。

因此，看词类时必须同时看分布和搭配，而不能只看中文翻译。

## 5.2 短语由中心词投射出来

一个短语通常围绕中心词组织。中心词决定该短语整体能放在哪里，也决定它可以开放哪些内部位置。

### 名词短语 NP

```text
[the two remarkably clear reports from our regional offices]
```

中心是 reports。其他成分负责限定数量、可识别性、属性和来源：

```text
NP
├── determiner: the
├── number: two
├── premodifier: remarkably clear
├── head: reports
└── postmodifier: from our regional offices
```

整个短语仍然像名词一样工作：

> **The two remarkably clear reports from our regional offices** arrived yesterday.

### 动词短语 VP

```text
[might have been reviewing the proposal carefully]
```

词汇动词 reviewing 提供事件类型，前面的助动词构成时态、体和情态层，后面的 the proposal 与 carefully 分别填充对象和方式信息。

### 形容词短语 AdjP

```text
[very proud of her team]
```

中心词 proud 可以接受程度修饰 very 和介词补语 of her team。

### 介词短语 PP

```text
[in the middle of the room]
```

中心词 in 建立关系，其补语是名词短语 the middle of the room。

## 5.3 补语和修饰语不是一回事

**补语**通常由中心词的意义或构式要求，帮助完成它开放的槽位；**修饰语**则提供可选的背景或属性。

> She **put** the keys **on the table**.

put 通常要求“移动对象”和“目标位置”；缺少位置会让句子不完整：

> ? She put the keys.

而在：

> She **read** the report **on the train**.

on the train 只是可选的地点背景，删除后仍完整：

> She read the report.

但“能否删除”不是唯一判断标准。有些补语可在语境中省略，有些修饰语又非常重要。更可靠的问题是：这个成分是否由中心词的词汇意义选择？它是否填充一个可预测的语义角色？

## 5.4 功能词是结构接口

冠词、助动词、介词、连词等功能词看似“实义较弱”，却承担重要接口功能：

- 限定词标明名词短语如何进入共享模型；
- 助动词承载时态、否定、疑问和情态；
- 介词标明参与者之间的关系；
- 连词说明结构如何并列或从属；
- 补语标记词 that、whether 等提示接下来是一棵子树。

把功能词当作可随意省略的小词，是中文母语者常见错误来源。它们就像数据结构中的类型和边界标记：内容少，却使解析稳定。

## 5.5 短语测试：如何判断一组词是不是单位

可以使用多个测试交叉判断：

- **替换**：能否整体换成代词或较短形式？
- **移动**：在特定构式中能否整体移动？
- **协调**：能否与同类结构并列？
- **回答**：能否整体回答一个问题？

例如：

> She placed **the old files from the archive** on the desk.

可替换为 them，也可回答 “What did she place on the desk?”，因此它是一个名词短语单位。

测试不是绝对判决器；自然语言中不同测试可能给出不同结果。但它们能帮助你摆脱“每个词逐个翻译”的阅读方式。

### 小练习

在下列句子中用方括号标出主要短语，并圈出中心词：

- The new policy could significantly reduce operating costs.
- She is deeply concerned about the delay.
- A box of old photographs was found under the stairs.
