---
title: "第6章　动词价与句型：谓语开放哪些槽位"
---

# 第6章　动词价与句型：谓语开放哪些槽位

## 6.1 动词不是一个动作标签，而是一个接口

词典把 give 译为“给”，却没有直接告诉你它通常建立什么结构。真正可用的知识应包括它开放的语义角色：

```text
GIVE
├── giver / 给予者
├── theme / 被给予物
└── recipient / 接收者
```

这些角色在句法中可以有不同实现：

> Maya gave **Leo** **the key**.

> Maya gave **the key** **to Leo**.

两句的核心事件图接近，但句法编码和信息焦点略有不同。学习一个动词时，必须同时学习它的**价结构**、常见补语形式和意义变体。

![教材插图 7](/images/book/figure-07.png)


*图 6-1 动词像函数一样开放不同数量和类型的槽位*

## 6.2 五种基础句型是槽位模板

### S + V：不及物事件

> The child laughed.

```text
LAUGH(experiencer=CHILD)
```

### S + V + C：主语补语

> The child became tired.

became 连接主语与结果状态，tired 不是受动作影响的宾语，而是对主语的补充描述。

### S + V + O：及物事件

> The child opened the box.

```text
OPEN(agent=CHILD, patient=BOX)
```

### S + V + O + O：双宾结构

> The child gave me a note.

第一个宾语常是接收者，第二个是主题物，但这并非适用于所有动词。explain 通常不进入同样模板：

> She explained the problem to me.

> ✗ She explained me the problem.

### S + V + O + C：宾语补语

> They painted the door red.

red 描述动作后 the door 的结果状态：

```text
CAUSE( THEY, BECOME(DOOR, RED) )
```

## 6.3 一个动词可以有多套价结构

run 可以表示自主移动：

> She ran.

也可以表示经营：

> She runs a small company.

还可以进入使动结构：

> She ran the engine for ten minutes.

价结构随词义变化。不要问“run 是及物还是不及物”，而要问“当前这个 run 构式开放什么槽位”。词汇意义与句法模板共同决定解释。

## 6.4 论元、省略与隐含角色

某个角色在语义上存在，不一定每次都在句法中表达：

> Have you eaten?

通常隐含“吃了某种食物”，但具体对象不重要。eat 在此可不带显式宾语。相反：

> She put the book.

听者会等待位置补语，因为 put 的常见用法把目标位置当作必要论元。

所以错误诊断不能只机械数宾语，而要判断：当前动词义是否已经完成它承诺的事件框架。

## 6.5 小句补语：把一个命题填进槽位

许多动词的内容参数本身是一棵从句：

> I believe **that the plan will work**.

```text
BELIEVE(
  experiencer=I,
  content=WORK(PLAN)
)
```

不同动词选择不同形式：

```text
want + to-infinitive
avoid + -ing
suggest + that-clause / -ing
ask + object + to-infinitive
```

这部分不能只靠中文意思推导。要把“动词 + 补语类型”作为一个完整接口学习。

## 6.6 句型不是翻译模版

同一中文动词可能对应不同英语接口：

- “建议某人做某事”不是 suggest somebody to do；
- “解释某人某事”通常不是 explain somebody something；
- “进入房间”是 enter the room，一般不需 into；
- “讨论这个问题”是 discuss the issue，一般不需 about。

根本原因不是英语“无理”，而是每个谓语已经把某些关系编码进自身。重复加介词等于重复或改变接口。

### 小练习

为下列动词写出至少两种常见槽位模板，并各造一句：

change、promise、find、grow、ask。
