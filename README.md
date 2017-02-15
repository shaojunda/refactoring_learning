整理《重构（Ruby 版）》这本书中重构的例子，记录学习心得。

# 结构

大致分为： **重构前**、**重构后**、**笔记** 三个部分。每一章重构之间前的代码会放到 master 分支的对应章节中，重构之后的代码会放到以 chapter- 开头的不同分支中（只显示有重构的例子的章节），笔记会放到 master 分支的 docs 目录下。

# 第一章

### 重构前

[chapter-1-demo][84c6ad2d]


### 重构后

- STEP-1: [chapter-1-extract-amount-for-method][1ac3328f]
- STEP-2: [chapter-1-extract-frequent-renter-points][0e8151ac]
- STEP-3:[chapter-1-replace-temp-with-query][fa1c991e]
- STEP-4: [chapter-1-replace-type-code-with-start-or-strategy][d4725f23]

  [0e8151ac]: https://github.com/shaojunda/refactoring_learning/tree/chapter-1-extract-frequent-renter-points/demos/chapter-1 "chapter-1-extract-frequent-renter-points"
  [fa1c991e]: https://github.com/shaojunda/refactoring_learning/tree/chapter-1-replace-temp-with-query/demos/chapter-1 "chapter-1-replace-temp-with-query"
  [d4725f23]: https://github.com/shaojunda/refactoring_learning/tree/chapter-1-replace-type-code-with-start-or-strategy/demos/chapter-1 "chapter-1-replace-type-code-with-start-or-strategy"

### 笔记

[chapter-1-doc][6fea8605]



[6fea8605]: https://github.com/shaojunda/refactoring_learning/blob/master/docs/chapter-1.md "chapter-1-doc"
[1ac3328f]: https://github.com/shaojunda/refactoring_learning/tree/chapter-1-extract-amount-for-method/demos/chapter-1 "chapter-1-extract-amount-for-method"
[84c6ad2d]: https://github.com/shaojunda/refactoring_learning/tree/master/demos/chapter-1 "chapter-1-demo"
