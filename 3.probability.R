library("MASS")
#집합
S <- 1:10
A <- c(1, 2, 3, 8, 9, 10)
B <- c(2, 3, 4, 5, 7)

#합집합
union(A, B)
#교집합
intersect(A, B)
#차집합
setdiff(A, B)
#여집합
setdiff(S, A)

#확률의 고전적 정의
#사건
S <- 1:6
A <- c(1, 3, 5)
B <- c(2, 4)
C <- c(1, 2)

#A와 B의 합집합에 대한 확률(fractoins는 분수)
length(union(A, B)) / length(S)
fractions(length(union(A, B)) / length(S))

#통계적 독립 확인
P.A <- 3/5 #A의 확률
P.B <- 2/5 #B의 확률
P.A.int.B <- 3/25 #A와 B의 교집합에 대한 확률
P.A.int.B == P.A * P.B #F이므로 A, B는 독립사건이 아님

#전확률 정리와 베이즈 정리(p62 예 3.10)
#A, B, C의 확률(문제에서 생산률)
P.A <- 0.5 
P.B <- 0.3
P.C <- 0.2

#A, B, C가 주어졌을 때 D의 조건 확률
P.D.given.A <- 0.05 #(문제에서 불량률)
P.D.given.B <- 0.10
P.D.given.C <- 0.04

#전확률 정리
P.D <- P.D.given.A * P.A + P.D.given.B *P.B + P.D.given.C * P.C
P.D

#어 이거 식이 뭔가 이상하다. 안 맞다. 왜지? 
#예 3.11에서 임의 추출한 하나의 불량품을 A가 생산했을 확률?
P.A.given.D <- P.D.given.A * P.A / P.D
P.A.given.D

