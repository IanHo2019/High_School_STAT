# 高中统计学
**以下所有资料仅适用于使用中华人民共和国人民教育出版社普通高中数学教科书（2019年A版）的数学教学。**
1. [**概率的定义与计算**](https://github.com/IanHo2019/High_School_STAT/blob/main/%E9%AB%98%E4%B8%AD%E7%BB%9F%E8%AE%A1%E5%AD%A61%EF%BC%9A%E6%A6%82%E7%8E%87%E7%9A%84%E5%AE%9A%E4%B9%89%E4%B8%8E%E8%AE%A1%E7%AE%97.pdf)
   * 概率的定义（[掷硬币模拟](https://github.com/IanHo2019/High_School_STAT/blob/main/Examples/%E6%8E%B7%E7%A1%AC%E5%B8%81%E6%A8%A1%E6%8B%9F%E5%99%A8.do)）
   * 计数基本法则
   * 概率的三大公理
   * 条件概率的定义
   * 贝叶斯法则
   * [练习题](https://github.com/IanHo2019/High_School_STAT/blob/main/Exercises/%E7%BB%83%E4%B9%A01.pdf)
2. [**随机变量的定义与描述**](https://github.com/IanHo2019/High_School_STAT/blob/main/%E9%AB%98%E4%B8%AD%E7%BB%9F%E8%AE%A1%E5%AD%A62%EF%BC%9A%E9%9A%8F%E6%9C%BA%E5%8F%98%E9%87%8F%E7%9A%84%E5%AE%9A%E4%B9%89%E4%B8%8E%E6%8F%8F%E8%BF%B0.pdf)
   * 随机变量的定义与种类
   * 概率质量函数
   * 累积分布函数
   * 概率密度函数
   * 分位数函数（[Excel中的分位数计算](https://github.com/IanHo2019/High_School_STAT/blob/main/Exercises/%E5%88%86%E4%BD%8D%E6%95%B0%E7%9A%84%E8%AE%A1%E7%AE%97.xlsx)）
   * [练习题](https://github.com/IanHo2019/High_School_STAT/blob/main/Exercises/%E7%BB%83%E4%B9%A02.pdf)
3. [**矩的定义与计算**](https://github.com/IanHo2019/High_School_STAT/blob/main/%E9%AB%98%E4%B8%AD%E7%BB%9F%E8%AE%A1%E5%AD%A63%EF%BC%9A%E7%9F%A9%E7%9A%84%E5%AE%9A%E4%B9%89%E4%B8%8E%E8%AE%A1%E7%AE%97.pdf)
   * 一阶原始矩：数学期望
   * 二阶中心矩：方差
   * 三阶标准矩：偏度
   * 四阶标准矩：峰度
   * 矩量母函数
   * [练习题](https://github.com/IanHo2019/High_School_STAT/blob/main/Exercises/%E7%BB%83%E4%B9%A03.pdf)
4. [**独立性 VS 不相关**](https://github.com/IanHo2019/High_School_STAT/blob/main/%E9%AB%98%E4%B8%AD%E7%BB%9F%E8%AE%A1%E5%AD%A64%EF%BC%9A%E7%8B%AC%E7%AB%8B%E6%80%A7VS%E4%B8%8D%E7%9B%B8%E5%85%B3.pdf)
   * 联合概率分布
   * 统计独立
   * 均值独立
   * 线性独立（即线性不相关）
6. [**特殊的概率分布**](https://github.com/IanHo2019/High_School_STAT/blob/main/%E9%AB%98%E4%B8%AD%E7%BB%9F%E8%AE%A1%E5%AD%A65%EF%BC%9A%E7%89%B9%E6%AE%8A%E7%9A%84%E6%A6%82%E7%8E%87%E5%88%86%E5%B8%83.pdf)
   * 伯努利分布
   * 二项分布
   * 超几何分布
   * 正态分布（[68-95-99法则的图示](https://github.com/IanHo2019/High_School_STAT/blob/main/Examples/%E6%AD%A3%E6%80%81%E5%88%86%E5%B8%83%E7%9A%84%E7%89%B9%E7%82%B9.tex)）
   * 卡方分布
   * [使用R绘制图像](https://github.com/IanHo2019/High_School_STAT/blob/main/Examples/%E6%A6%82%E7%8E%87%E5%88%86%E5%B8%83%E7%9A%84%E5%9B%BE%E5%83%8F%E7%BB%98%E5%88%B6.R)

## 初衷
2023年11月，当我正在四川成都参加求职面试时，收到了来自我曾经的高中数学ZL老师的求助消息——关于如何向高中生解释一元线性回归模型和假设检验。返回家乡后，在一杯下午茶的时间里，我了解到：浙江省普通高中在2019年开始使用新版数学教材（简称“人教2019A版”），而新教材包含了不少统计学方面的知识点——必修第二册的最后两章和选修第三册全册都是统计学的知识。

由于我母校的大多数数学老师的专业背景是“数学”而非“统计”，所以他们在使用新教材的这几年时间里，仍未摸索出向学生传授统计学知识的良好方法。鉴于此，我在2023年12月开始制作本资料。初衷只是：不论我身在何处，身居何位，相比于成为一个金钱至上的留学中介，我更希望成为一名普通的[教书匠](https://book.douban.com/subject/3189896/)。

## 一些个人的想法
统计学的学习特点：
  * 门槛高，即：自学统计学的学生往往极难入门。
  * 顺利入门之后的学生，可以迅速地独立成长。

基于以上的个人想法，我坚决反对“让学生在入门时自学理论知识，而把大量时间花费在传授高级统计模型应用”（例如工具变量回归、双重差分、断点回归设计、机器学习等）的教学理念！自回国以来，我不止一次地听见中国学生/教授轻视线性回归模型（linear regression model）和高斯-马尔可夫定理（Gauss-Markov Theorem）的言论。我私认为（95%置信度）：一个连统计学基础定理和模型都不愿意静心学习的学生，不可能静下心钻研那些高级的统计模型（这类学生更可能成为撰写代码的机器，而不是具备辩证和创新能力的学者）；一个连统计学基础定理和模型都无法有效传授给学生的教师，不可能有能力教学生掌握那些高级的统计模型。

<p align="center">
  <strong>在我的国家，贩卖知识的人太多，尊重知识的人太少；通过教育赚钱的人太多，尊重教育价值的人太少。</strong>
</p>

## 结语
感谢浙江省兰溪市第一中学邵同学、浙江省兰溪市兰荫中学楼同学的宝贵建议！

欢迎所有统计学专家、爱好者、教师的指正！

**联系方式：**[ianho0815@outlook.com](mailto:ianho0815@outlook.com?subject=[GitHub]%20高中统计学).
