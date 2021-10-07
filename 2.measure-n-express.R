install.packages("MASS")
library(MASS)
##3M : Mean, Median, Mode(최빈값)
ex.2.1 <- c(4, 3, 3, 2, 3, 8, 5)
ex.2.1
mean(ex.2.1)
median(ex.2.1)

#Mode
tb <- table(ex.2.1) ;tb
sort(tb, decreasing = T) 

#자료 범위
ex.2.3 <- ;ex.2.3
max(ex.2.3) - min(ex.2.3) 

#표본분산
ex.2.4 <- c(12, 25, 18, 15, 10) 
var(ex.2.4)


ex.data <- c(21, 56, 66, 84, 68, 21, 17, 33, 77, 38)
#사분위수와 사분위범위(IQR) 
summary(ex.data) 
#사분위범위(IQR = 3rd Qu. - 1rd Qu.)
IQR(ex.data)

#도수분포표
x <- scan(file.choose()) ;x #표 2.1
#불러온 자료의 구간 확인
summary(x)

#구간 정의: 계급의 간격 = 5 으로 구분 
#seq(a, b, c): a~b에서 c 간격으로 수열 생성
x.points <- seq(155, 185, 5) 

#도수  
#***여기부터 "예?"다***
x.cut <- cut(x, x.points) ;x.cut
tb <- table(x.cut) ;tb 
#각 계급에 대한 도수 확인. table(): 도수분포표 

#상대도수
tb/sum(tb)
#상대도수 - 분수
fractions(tb/sum(tb)) #MASS 패키지의 fractions(): 숫자(여기서는 상대도수값)를 분수로 표현 

#누적도수
cumsum(tb)

#히스토그램 : hist()
library(ggplot2)
hist(x, col = "pink", prob = T) #prob = T: 확률로 변경

#줄기-잎 그림 : stem()
#round(): 자료 반올림, scale: 계급 구간, atom: 줄기 간격 
#***?***
stem(round(x), scale = 1/2, atom = 10) 

#상자그림
boxplot(x)



