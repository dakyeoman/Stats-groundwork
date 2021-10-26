#7장 확률표본과 추정(p204)

##library
install.packages("BSDA")
install.packages("EnvStats")
library(BSDA)
library(EnvStats)
library(sqrt)

###예 7-1, 점추정량과 신뢰구간
pop.var <- 16 #모집단의 분산(예제에서)
x <- c(5.9, 6.8, 10.2, 14.0, 17.3, 10.1, 4.6, 9.5, 7.5, 9.8)
#평균의 점추정량 9.57
mean(x)

#95%신뢰구간
alpha <- 0.05 #유의수준
n <- length(x);n
c.025 <- qnorm(1-alpha/2)#모집단의 분산을 알고 있으므로, 정규분포를 이용하여 임계치를 구함
pop.sd <- sqrt(pop.var)#모집단의 표준편차
err<- c.025*pop.sd/sqrt(n) #평균의 표준오차(SE)
CI.95 <- c(mean(x) - err, mean(x) + err) #신뢰구간(confidence interval) 
round(CI.95, 2)

