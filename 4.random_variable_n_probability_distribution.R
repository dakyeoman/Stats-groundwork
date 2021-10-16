library("MASS")

#이산형 확률변수 X의 값
X <- 0:3
#확률변수 X의 확률
P.X <- c(1/8, 3/8, 3/8, 1/8)
#이산형 확률분포 그래프; lty는 확률의 높이를 점선으로 표시, ylim()은 y축의 범위를 말함
plot(X, P.X, type = "h", lty=4, ylim=c(0,0.5))
points(X, P.X, pch=19)


#연속형 확률분포 x의 범위 설정
x <- seq(-1, 2, 0.001)
#pdf의 균등분포 dunif(), type="l"에서 l은 line이다. 
plot(x, dunif(x, 0, 1), type="l")


#연속형 확률변수의 확률 계산
#확률밀도함수(pdf)생성: function(x)
f <- function(x) ifelse(x>0 & x<1, 1, 0) # pdf값은 0<x<1이면 1, 아니면 0
result <- integrate(f, 0.4, 0.7) #주어진 구간에서 적분(integrate())
result $ value #확률


#X, Y의 결합확률분포
X.value <- c(1, 3)
Y.value <- 0:2
prob <- c(1/4, 1/12, 0, 1/3, 1/4, 1/12)
prob.mat <- matrix(prob, length(X.value)) #matrix(값, 행의개수, 열의개수):확률을 행렬로 저장
rownames(prob.mat) <- X.value
colnames(prob.mat) <- Y.value
prob.mat


#X의 주변확률분포
X.marginal <- apply(prob.mat, 1, sum)
fractions(X.marginal)

#X의 기댓값
E.X <- sum(X.value * X.marginal)
E.X 


#T의 주변확률분포표
Y.marginal <- apply(prob.mat, 2, sum)
fractions(Y.marginal) 
