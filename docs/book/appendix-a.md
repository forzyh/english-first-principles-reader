---
title: "附录A　全书语法树速查"
---

# 附录A　全书语法树速查

## A.1 一个完整句子的分层视图

![教材插图 21](/images/book/figure-21.png)


*图 A-1 基础句法树：The young boy slowly opened the window.*

同一句可以同时写成依存关系：

```text
opened
├── subject → boy
│   ├── determiner → the
│   └── attribute → young
├── object → window
│   └── determiner → the
└── manner → slowly
```

再写成事件图：

```text
OPEN(e)
agent(e)=BOY
patient(e)=WINDOW
YOUNG(BOY)
SLOW(e)
time(e)=past
```

三种表示分别回答“怎样组成”“谁依赖谁”“现实关系是什么”。

## A.2 语法层级总表

| 层级 | 主要节点 | 核心问题 | 常见错误 |
| --- | --- | --- | --- |
| 词法 | 词形、词类、搭配 | 这个形式能怎样工作？ | 词形、搭配、补语类型 |
| 短语 | NP、VP、AdjP、PP | 中心词是谁？ | 中心词与修饰边界不清 |
| 小句 | 主语、谓语、补语 | 核心述谓是什么？ | 缺主干、槽位不完整 |
| 复句 | 从句、并列、非谓语 | 子树挂在哪里？ | 从句漂浮、并列不平行 |
| 事件元数据 | 时态、体、情态、语态 | 怎样定位和观察事件？ | 参照点冲突、作用域错误 |
| 篇章 | 指代、焦点、逻辑、段落 | 多句如何共同更新模型？ | 指代不清、话题跳跃 |
| 语用 | 意图、礼貌、语域 | 实际想完成什么行为？ | 语法正确但不合场景 |

## A.3 五种基础谓语模板

| 模板 | 例句 | 语义骨架 |
| --- | --- | --- |
| S + V | The baby slept. | SLEEP(baby) |
| S + V + C | The baby became quiet. | BECOME(baby, quiet) |
| S + V + O | The baby dropped the toy. | DROP(baby, toy) |
| S + V + O + O | She gave the baby a toy. | GIVE(she, toy, baby) |
| S + V + O + C | The noise kept the baby awake. | CAUSE(noise, REMAIN(baby, awake)) |

## A.4 冠词与引用速查

| 对象状态 | 常见形式 | 例子 |
| --- | --- | --- |
| 引入任一实例 | a/an | I need a pen. |
| 唯一可恢复 | the | Close the door. |
| 指示定位 | this/that/these/those | This issue matters. |
| 所属定位 | my/your/Maya’s | Her report is ready. |
| 复数/不可数泛指 | 零冠词 | Books matter. / Water freezes. |
| 专名 | 常为零冠词 | Maya, London, Mount Fuji |
| 名称内含限定 | 按约定 | the Netherlands, the United States |

**核心问题**：听者怎样恢复这个对象，而不是“它是不是第一次出现”。

## A.5 从句挂接速查

```text
[That she left] surprised me.
→ 整棵子树占名词槽位：subject

I know [that she left].
→ 整棵子树占名词槽位：content/object

the person [who left]
→ 子树挂在 noun 上：modifier

I called her [because she left].
→ 子树挂在 event 上：reason
```

## A.6 时态与体矩阵

| 参照点 | 简单 | 进行 | 完成 | 完成进行 |
| --- | --- | --- | --- | --- |
| 现在 | works | is working | has worked | has been working |
| 过去 | worked | was working | had worked | had been working |
| 未来参照 | will work | will be working | will have worked | will have been working |

这不是十二个互不相关的格子，而是：

```text
时间/参照点 × 观察体 × 词汇事件形状
```

## A.7 情态与现实距离速查

| 功能 | 典型形式 | 例子 |
| --- | --- | --- |
| 可能性 | may, might, could | It might rain. |
| 推断必要 | must | She must be home. |
| 义务 | must, have to | You must register. |
| 建议 | should, ought to | You should rest. |
| 能力 | can, be able to | She can swim. |
| 礼貌距离 | could, would, past form | Could you wait? |
| 当前假设 | past form + would | If I knew, I would tell you. |
| 过去反事实 | past perfect + would have | If I had known, I would have told you. |

## A.8 信息结构工具箱

| 目标 | 常用构式 |
| --- | --- |
| 继续既有对象作为话题 | 保持同一主语或用代词/同义名词链 |
| 引入新实体 | there be + indefinite NP |
| 把 patient 设为起点 | passive |
| 对比某一成分 | stress / only / even / cleft |
| 把长主语后移 | anticipatory it + extraposed clause |
| 把重信息放末端 | end weight / postmodifier |

## A.9 一页解析算法

```text
① 圈限定动词
② 框主句 Subject + Predicate
③ 给每个谓语填槽位
④ 标名词修饰、事件背景、命题立场
⑤ 读取时态/体/情态/否定/语态
⑥ 画冠词与代词的引用链
⑦ 用语境排除不合理挂接
⑧ 用自己的话重建语义，而非逐词搬运
```

## A.10 一页生成算法

```text
① 写交际目标
② 画对象—事件—关系图
③ 选择主干事件与主题起点
④ 按动词价填必要槽位
⑤ 管理 a/the/pronoun
⑥ 添加修饰和子树
⑦ 添加时间、体、情态、语态
⑧ 按已知→新知排序
⑨ 检查作用域与指代
⑩ 必要时拆句
```
