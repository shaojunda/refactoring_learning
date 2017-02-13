# 小提示

> 当需要在程序里添加功能，而程序代码当结构不便于动手时，应首先通过重构这个程序来降低添加功能当难度，然后再加入需要的功能。

> 优秀的代码要能够清楚地表达出自己的意图，变量名是代码清晰的关键所在。

> 绝大多数情况下，一个方法应该放在它所使用的数据所在的对象里。

> 进行重构的时候应该把注意力放在代码的清晰度上，关注性能是另一回事，稍后再考虑也不迟。

> 几乎所有的方法调用所引入的开销都可以忽略不计。

# 本例重构的步骤

1. 为需要重构的代码构建一套可靠的测试。
2. 对需要重构的代码进行分解和再组合。
  - 将过长的代码分解为较短的代码段。
  - 将小代码段分别放到适合它们的类中。
  - 使用查询替换临时变量。
3. 每进行一次调整就要进行一次测试。


# 用到的重构方法

1. 提炼方法(Extract Method)
  - 检查所有作用域在代码片段内部的变量（局部变量和参数）。
  - 任何未被修改的变量都可以作为参数传递到新的方法中。
  - 已被修改的变量如果只有一个可以作为返回值。

2. 移动方法（Move Method）
  - 移动代码到正确到位置。
  - 进行适当调整使之适应新的位置。
  - 找到每一处对旧方法的引用，让它使用新方法。（可以保留旧方法，在久方法内部调用新方法，这样不影响其他类调用这个方法）

3. 用查询替换临时变量（Replace Temp with Query）
  - 临时变量很普遍的一个问题就是它们会引起很多不必要的参数传递。很容易忘记它们的作用，去掉它们可以更专注代码要做的事情。

4. 使用集合闭包方法（Collection Closure Method）简化循环。
  - [inject][8cb04422]
  - [collect][eb4f8e7d]
  - [select][191c67cb]

5. 使用状态或策略模式来替换类型码(Replace Type Code with State/Strategy)

6. 提炼模块(Extract Module)







# 参考文章：

[Ruby Refactoring: Replace Loop with Collection Closure Method][dc1b23bf]

[What is a closure?][1f23910d]

  [dc1b23bf]: https://projectramon.wordpress.com/2014/08/01/ruby-refactoring-replace-loop-with-collection-closure-method/ "Ruby Refactoring: Replace Loop with Collection Closure Method"
  [1f23910d]: http://softwareengineering.stackexchange.com/questions/40454/what-is-a-closure "What is a closure?"
  [8cb04422]: https://ruby-doc.org/core-2.2.3/Enumerable.html#method-i-inject "inject"
  [eb4f8e7d]: https://ruby-doc.org/core-2.2.3/Enumerable.html#method-i-collect "collect"
  [191c67cb]: https://ruby-doc.org/core-2.2.3/Enumerable.html#method-i-select "select"
