---
title: "第25章　错误调试系统"
---

# 第25章　错误调试系统

## 25.1 不要把所有错误都归为“语感不好”

错误可以按结构层分类。分类的价值在于缩小搜索范围：

![教材插图 20](/images/book/figure-20.png)


*图 25-1 六层英语错误调试树*

## 25.2 第一层：主干错误

症状包括缺主语、缺限定谓语、两个完整句只用逗号连接、从句漂浮：

> ✗ Because the data was incomplete.

它是原因从句，但没有主句。可补主干：

> Because the data was incomplete, we postponed the analysis.

> ✗ The team finished the test, the manager signed the report.

这是 comma splice。可使用句号、分号或连词。

## 25.3 第二层：槽位错误

> ✗ She explained me the problem.

explain 的常见接口是 explain something to someone。修正不是“加个介词”的孤立技巧，而是恢复动词价结构：

> She explained the problem to me.

> ✗ We discussed about the issue.

discuss 已直接选择主题对象：

> We discussed the issue.

## 25.4 第三层：挂接与作用域错误

> ✗ Walking into the office, the lights suddenly went out.

非谓语子树需要由主句主语控制，但 the lights 不是走进办公室的人。应改为：

> As I walked into the office, the lights suddenly went out.

或：

> Walking into the office, I saw the lights suddenly go out.

## 25.5 第四层：引用错误

> ✗ I bought book yesterday.

可数单数名词缺少限定。

> When Alex met Jordan, he was upset.

代词候选不清。可重复专名或重组句子。

> I spoke to a manager. A manager promised to call me.

第二个 a manager 倾向于创建新对象；若是同一人，应使用 the manager 或 she/he/they。

## 25.6 第五层：事件元数据冲突

> ✗ I have seen her yesterday.

现在完成的当前参照点与封闭过去时间状语冲突；改为一般过去。

> ✗ He must went home.

情态后接动词原形：

> He must go home.

若推断过去：

> He must have gone home.

> ✗ If I would know, I would tell you.

开放或假设条件从句中的形式选择错误。当前反事实：

> If I knew, I would tell you.

## 25.7 第六层：篇章错误

单句都正确，段落仍可能难读：

- 每句主语都换一个新对象；
- 代词跨越多个候选；
- however、therefore 与真实关系不符；
- 重要限制藏在长句中部；
- 时态参照点无提示地跳转；
- 同一概念不断换术语。

解决方法不是再查单句语法，而是画篇章对象链和逻辑边。

## 25.8 最小修复原则

调试时先保持原意，只修复最低层错误。不要每发现一个小问题就把整句改成完全不同的高级表达，否则无法知道真正错误在哪里。

例：

> ✗ The reason is because the server was overloaded.

最低限度可改为：

> The reason is that the server was overloaded.

或：

> The server failed because it was overloaded.

前者保留系词框架，后者改为事件因果。选择取决于篇章目标。

## 25.9 反向验证

修正后做三次反向检查：

- 删除附加成分，主干是否仍完整？
- 把代词换回完整名词，指代是否一致？
- 把事件画成角色图，主语、宾语和介词是否映射正确？

若三项都稳定，句子通常已经从“凭感觉”变为可解释结构。

### 调试练习

按六层分类并修正：

- There have many reasons for this change.
- She suggested me to wait.
- After reviewing the file, several errors were found.
- I have finished the task last night.
- The company launched a product. A product failed within a week.
- The test was expensive, therefore we repeated it three times.
