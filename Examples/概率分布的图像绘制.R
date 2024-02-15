# 该R Script用于绘制五种人教2019A版数学教材要求掌握的概率分布的概率质量（或密度）函数和累积概率分布函数。
# 作者：何濯羽
# 日期：2024年1月14日
# R版本：4.3.2

# Load Packages ----------------------------------------------------------------
library(dplyr)
library(tidyverse)
library(ggplot2)



# 伯努利分布 -------------------------------------------------------------------

# 概率质量函数
X <- c(0, 1)
pmf <- dbinom(X, 1, 0.4)    # 成功概率 p = 0.4
df <- data.frame(X, pmf)

svg(file='PMF_Bernoulli.svg', width=5, height=5)
ggplot(df, aes(X, pmf)) +
  geom_col(color='deepskyblue3', fill='deepskyblue3', width = 0.3) +
  xlab('X') + ylab('PMF') +
  scale_x_continuous(breaks=seq(0, 1, by=1)) +
  theme(panel.background = element_rect(fill='white'),
        panel.grid.major.y = element_line(color='gray85', linetype='dotted'),
        axis.text=element_text(size=12),
        axis.title=element_text(size=14, face='bold'),
        axis.line.x.bottom = element_line(color='black'),
        axis.line.y.left = element_line(color='black'))
dev.off()

# 累积分布函数
X <- append(X, c(-1,2))
cdf <- pbinom(X, 1, 0.4)
df <- data.frame(X, cdf)

ggplot(df, aes(X, cdf)) +
  geom_step(color='deepskyblue3', linewidth=1.2) +
  xlab('X') + ylab('CDF') +
  scale_x_continuous(breaks=seq(-1, 2, by=0.5)) +
  scale_y_continuous(breaks=seq(0, 1, by=0.2)) +
  theme(panel.background = element_rect(fill='white'),
        panel.grid.major.y = element_line(color='gray85', linetype='dotted'),
        axis.text=element_text(size=12),
        axis.title=element_text(size=14, face='bold'),
        axis.line.x.bottom = element_line(color='black'),
        axis.line.y.left = element_line(color='black'))



# 二项分布 ---------------------------------------------------------------------
rm(list = ls())    # 清楚Environment中原有的所有数据

# 概率质量函数
n <- 15    # 试验次数 n = 15
p <- 0.4   # 成功概率 p = 0.4
X <- seq(0, n)
pmf <- dbinom(X, n, p)
df <- data.frame(X, pmf)

svg(file='PMF_Binomial.svg', width=7, height=5)
ggplot(df, aes(X, pmf)) +
  geom_col(color='darkorange', fill='darkorange', width = 0.5) +
  xlab('X') + ylab('PMF') +
  scale_x_continuous(breaks=seq(0, 15, by=1)) +
  theme(panel.background = element_rect(fill='white'),
        panel.grid.major.y = element_line(color='gray85', linetype='dotted'),
        axis.text=element_text(size=12),
        axis.title=element_text(size=14, face='bold'),
        axis.line.x.bottom = element_line(color='black'),
        axis.line.y.left = element_line(color='black'))
dev.off()


# 累积分布函数
X <- append(X, c(-1,n+1))
cdf <- pbinom(X, n, p)
df <- data.frame(X, cdf)

ggplot(df, aes(X, cdf)) +
  geom_step(color='darkorange', linewidth=1.2) +
  xlab('X') + ylab('CDF') +
  scale_x_continuous(breaks=seq(-1, 16, by=1)) +
  scale_y_continuous(breaks=seq(0, 1, by=0.2)) +
  theme(panel.background = element_rect(fill='white'),
        panel.grid.major.y = element_line(color='gray85', linetype='dotted'),
        axis.text=element_text(size=12),
        axis.title=element_text(size=14, face='bold'),
        axis.line.x.bottom = element_line(color='black'),
        axis.line.y.left = element_line(color='black'))



# 超几何分布 -------------------------------------------------------------------
rm(list = ls())

# 概率质量函数
N <- 50   # 样本总数
K <- 10   # 不合格样本
n <- 20   # 不放回抽样个数
X <- seq(0, K)
pmf <- dhyper(X, K, N-K, n)
df <- data.frame(X, pmf)

svg(file='PMF_Hypergeometric.svg', width=7, height=5)
ggplot(df, aes(X, pmf)) +
  geom_col(color='darkslategray3', fill='darkslategray3', width = 0.5) +
  xlab('X') + ylab('PMF') +
  scale_x_continuous(breaks=seq(0, K, by=1)) +
  theme(panel.background = element_rect(fill='white'),
        panel.grid.major.y = element_line(color='gray85', linetype='dotted'),
        axis.text=element_text(size=12),
        axis.title=element_text(size=14, face='bold'),
        axis.line.x.bottom = element_line(color='black'),
        axis.line.y.left = element_line(color='black'))
dev.off()


# 累积分布函数
X <- append(X, c(-1,K+1))
cdf <- phyper(X, K, N-K, n)
df <- data.frame(X, cdf)

ggplot(df, aes(X, cdf)) +
  geom_step(color='darkslategray3', linewidth=1.2) +
  xlab('X') + ylab('CDF') +
  scale_x_continuous(breaks=seq(-1, K+1, by=1)) +
  scale_y_continuous(breaks=seq(0, 1, by=0.2)) +
  theme(panel.background = element_rect(fill='white'),
        panel.grid.major.y = element_line(color='gray85', linetype='dotted'),
        axis.text=element_text(size=12),
        axis.title=element_text(size=14, face='bold'),
        axis.line.x.bottom = element_line(color='black'),
        axis.line.y.left = element_line(color='black'))



# 正态分布 ---------------------------------------------------------------------
rm(list = ls())

# 概率质量函数
X <- runif(1000, min=-10, max=10)
pdf1 <- dnorm(X, 0, 1)    # 均值为0，方差为1
pdf2 <- dnorm(X, 0, 2)    # 均值为0，方差为4
pdf3 <- dnorm(X, 2, 1)    # 均值为0，方差为1
df <- data.frame(X, pdf1, pdf2, pdf3)
df <- gather(df, key='distribution', value='pdf', c('pdf1', 'pdf2', 'pdf3'))

svg(file='PDF_Normal.svg', width=10, height=5)
ggplot(df, aes(x=X, y=pdf, color=distribution)) +
  geom_line(linetype=1, linewidth=1.2) +
  labs(x='X', y='PDF', color=NULL) +
  scale_color_manual(labels=c('N(0,1)', 'N(0,4)', 'N(2,1)'),
                     values=c('firebrick3', 'dodgerblue3', 'chartreuse4')) +
  scale_x_continuous(limits=c(-10,10), breaks=seq(-10, 10, by=2)) +
  theme(plot.title = element_text(size=15, hjust=0.5),
        panel.background = element_rect(fill='white'),
        axis.line.x.bottom = element_line(color='black'),
        axis.line.y.left = element_line(color='black'),
        axis.text=element_text(size=12),
        axis.title=element_text(size=14, face='bold'),
        legend.position = c(0.11,0.86),
        legend.key = element_blank(),
        legend.text = element_text(size=15),
        legend.background = element_rect(color='gray', linetype="solid"),
        legend.spacing.y = unit(-0.1, 'cm')) +
  geom_vline(xintercept=0, linetype='dashed', color='gray') +
  geom_vline(xintercept=2, linetype='dashed', color='gray')
dev.off()


# 累积分布函数
X <- runif(1000, min=-10, max=10)
cdf1 <- pnorm(X, 0, 1)    # 均值为0，方差为1
cdf2 <- pnorm(X, 0, 2)    # 均值为0，方差为4
cdf3 <- pnorm(X, 2, 1)    # 均值为0，方差为1
df <- data.frame(X, cdf1, cdf2, cdf3)
df <- gather(df, key='distribution', value='cdf', c('cdf1', 'cdf2', 'cdf3'))

svg(file='CDF_Normal.svg', width=10, height=5)
ggplot(df, aes(x=X, y=cdf, color=distribution)) +
  geom_line(linetype=1, linewidth=1.2) +
  labs(x='X', y='CDF', color=NULL) +
  scale_color_manual(labels=c('N(0,1)', 'N(0,4)', 'N(2,1)'),
                     values=c('firebrick3', 'dodgerblue3', 'chartreuse4')) +
  scale_x_continuous(limits=c(-10,10), breaks=seq(-10, 10, by=2)) +
  theme(plot.title = element_text(size=15, hjust=0.5),
        panel.background = element_rect(fill='white'),
        axis.line.x.bottom = element_line(color='black'),
        axis.line.y.left = element_line(color='black'),
        axis.text=element_text(size=12),
        axis.title=element_text(size=14, face='bold'),
        legend.position = c(0.11,0.86),
        legend.key = element_blank(),
        legend.text = element_text(size=15),
        legend.background = element_rect(color='gray', linetype="solid"),
        legend.spacing.y = unit(-0.1, 'cm')) +
  geom_vline(xintercept=0, linetype='dashed', color='gray') +
  geom_vline(xintercept=2, linetype='dashed', color='gray')
dev.off()



# 卡方分布 ---------------------------------------------------------------------
rm(list = ls())

# 概率质量函数
X <- runif(1000, min=0.2, max=10)
pdf1 <- dchisq(X, 1)      # 自由度为1
pdf2 <- dchisq(X, 2)
pdf3 <- dchisq(X, 3)
pdf4 <- dchisq(X, 4)
pdf5 <- dchisq(X, 5)
df <- data.frame(X, pdf1, pdf2, pdf3, pdf4, pdf5)
df <- gather(df, key='distribution', value='pdf', c('pdf1', 'pdf2', 'pdf3', 'pdf4', 'pdf5'))

svg(file='PDF_Chisq.svg', width=7, height=5)
ggplot(df, aes(x=X, y=pdf, color=distribution)) +
  geom_line(linetype=1, linewidth=1.2) +
  labs(x='X', y='PDF', color=NULL) +
  scale_color_manual(labels=c(expression(paste(chi^2,'(1)')), expression(paste(chi^2,'(2)')), expression(paste(chi^2,'(3)')), expression(paste(chi^2,'(4)')), expression(paste(chi^2,'(5)'))),
                     values=c('firebrick3', 'darkorange', 'chartreuse4', 'dodgerblue3', 'darkslateblue')) +
  scale_x_continuous(limits=c(0,10), breaks=seq(0, 10, by=2)) +
  theme(plot.title = element_text(size=15, hjust=0.5),
        panel.background = element_rect(fill='white'),
        axis.line.x.bottom = element_line(color='black'),
        axis.line.y.left = element_line(color='black'),
        axis.text=element_text(size=12),
        axis.title=element_text(size=14, face='bold'),
        legend.position = c(0.9,0.7),
        legend.key = element_blank(),
        legend.text = element_text(size=15),
        legend.background = element_rect(color='gray', linetype="solid"),
        legend.spacing.y = unit(-0.1, 'cm'))
dev.off()


# 累积分布函数
X <- runif(1000, min=-1, max=10)
cdf1 <- pchisq(X, 1)      # 自由度为1
cdf2 <- pchisq(X, 2)
cdf3 <- pchisq(X, 3)
cdf4 <- pchisq(X, 4)
cdf5 <- pchisq(X, 5)
df <- data.frame(X, cdf1, cdf2, cdf3, cdf4, cdf5)
df <- gather(df, key='distribution', value='cdf', c('cdf1', 'cdf2', 'cdf3', 'cdf4', 'cdf5'))

svg(file='CDF_Chisq.svg', width=7, height=5)
ggplot(df, aes(x=X, y=cdf, color=distribution)) +
  geom_line(linetype=1, linewidth=1.2) +
  labs(x='X', y='CDF', color=NULL) +
  scale_color_manual(labels=c(expression(paste(chi^2,'(1)')), expression(paste(chi^2,'(2)')), expression(paste(chi^2,'(3)')), expression(paste(chi^2,'(4)')), expression(paste(chi^2,'(5)'))),
                     values=c('firebrick3', 'darkorange', 'chartreuse4', 'dodgerblue3', 'darkslateblue')) +
  scale_x_continuous(limits=c(-1,10), breaks=seq(0, 10, by=2)) +
  theme(plot.title = element_text(size=15, hjust=0.5),
        panel.background = element_rect(fill='white'),
        axis.line.x.bottom = element_line(color='black'),
        axis.line.y.left = element_line(color='black'),
        axis.text=element_text(size=12),
        axis.title=element_text(size=14, face='bold'),
        legend.position = c(0.9,0.3),
        legend.key = element_blank(),
        legend.text = element_text(size=15),
        legend.background = element_rect(color='gray', linetype="solid"),
        legend.spacing.y = unit(-0.1, 'cm'))
dev.off()