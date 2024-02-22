# 该R Script用于展示卡方独立性检验的结果。
# 作者：何濯羽
# 日期：2024年2月22日
# R版本：4.3.2


# 使用的安装包 -----------------------------------------------------------------
library(nhstplot)    # 用于绘制假设检验的图示


# 样本数据 ---------------------------------------------------------------------
table <- matrix(c(50, 175, 50, 125), nrow=2, ncol=2)


# Pearson's 卡方检验 -----------------------------------------------------------
Ptest <- chisq.test(table, correct=FALSE)

Ptest$expected
Ptest$statistic

plotchisqtest(Ptest)


# Yates' 卡方检验 --------------------------------------------------------------
Ytest <- chisq.test(table, correct=TRUE)

Ytest$expected
Ytest$statistic

plotchisqtest(Ytest)