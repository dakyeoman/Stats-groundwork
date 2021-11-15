hr<-read.csv(file.choose())

str(hr)

boxplot(heart_rate~factor(group), data = hr, col = "light grey")
#heart-rate = 종속변수 ~ group = 독립변수  

summary(hr)

#one-way ANOVA(일원분산분석) 
fit <- aov(heart_rate~ factor(group), data = hr)
summary(fit) #anova table 

#사후검정 - 이 차이가 통계적으로 유의미한가? p adj < 0.05 
TukeyHSD(fit)



#COV. COR.
height=c(170,175,180,165,173,169,183,171,177,174)
weight=c(70,68,85,71,65,69,78,73,78,71)
data<-data.frame(height,weight)

##데이터 탐색
data
summary(data)
plot(data)
##상관분석
cor(data) # >>> 0.65

library(ggplot2)
ggplot(data = data, aes(x = height, y = weight)) + geom_point() 



reg<-read.csv(file.choose())
#head(reg)
reg1 <- lm(weight ~ height, data = data) #리니어모델lm
summary(reg1)


