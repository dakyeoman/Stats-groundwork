#multiple regression

abc<-read.csv(file.choose())
str(abc)


plot(Goals~SpG, data=abc) #SpG:shoot for game(슈팅 횟수)
cor(abc$Goals, abc$SpG) #0.8 이 넘으면 상관 매우 높은 것. 

#다중회귀모형 설정
rating <- lm(Rating ~ Goals + Assists, data = abc)
summary(rating)
#y^(평점 추정) = 6.6 + 0.01x1(득점) + 0.04x2(assist)

lm.beta(rating)
#assist >>> rating 의 영향력 > goals 의 영향력 

rating<-lm(Rating~Goals+factor(Position),data=abc) #y(종) ~ x
summary(rating)

rating2<-lm(Rating~Goals+SpG+factor(FW)+factor(DF),data=abc)
summary(rating2)

##표준회회귀계수
#install.packages('lm.beta')
library('lm.beta')
lm.beta(rating2)

##다중공선성 확인
#install.packages('car')
library('car')
plot(abc$Goals, abc$Assists)
cor(abc$Goals, abc$Assists) 
#8을 넘지 않으면 다중공산성이 없다고 판단해도 됨(이번 과제에서)

reg <- lm(Rating ~ Goals + factor(Position), data=abc)
summary(reg)
#facter(reg#facter(범주형 변수)
#intercept; 베타 0 의 값. 
#아래에 0, 1 코딩; rating^ = 6.8 + 0.05(Goals) - 0.43(FW)) - 0.15(MF)
#순서:독립변수들과의 상관 산출 - 변수들이 독립인지 보고, 낮으면 모델 설정(lm), 결과값 확인

rating3<-lm(Rating~Goals+SpG+factor(FW)+factor(DF),data=abc)
summary(rating3)
vif(rating3) #vif = 다중공산성; 독립변수 간 상관계수 
lm.beta(rating3)







