##데이터 불러오기
data<-read.csv(file.choose())
data
str(data)

##데이터 탐색
summary(data)
boxplot(push.up~factor(gender), data=data, col="light grey")
# ~ : Y = X  facter(gender): gender는 범주형 변수
boxplot(plank~factor(gender), data=data, col="light grey")

#1. one-sample ttest(단일표본 t검정)
t.test(data$push.up, mu=25) #mu 로 모집단의 평균 지정 
t.test(data$push.up, mu=30)


#2. independent ttest: 
#성별에 따른 차이가 통계적으로 유의한지 확인
t.test(push.up~factor(gender), data=data) 
#t = 6.68, p값 0.0000017 : 자료가 관찰될 확률 매우 낮음 
#t > p값: 두집단간 차이 o , 영가설 기각, 대립가설 채택 
##mu1 - mu2 =/= or = 0
#성별에 따라 평균 기록에 차이가 있다. (두 집단 간 차이가 있다!)

t.test(plank~factor(gender), data=data)
#영가설 기각 X, 충분한 근거 없음
#t = -0.43851, df = 27.654, p-value = 0.6644


#3. paired ttest
#?t.test: independent t-test가 기본, pared ttest 하려면 paired = TRUE 
#>>> r에서 두 개의 변 수가 있지만 같은 대상에 두 번 측정된 자료로 인지 
#같은 대상에게 post/pre 테스트 * 종속된 자료 >>> 수식 다르게 넣어서 계산됨

t.test(data$plank, data$push.up, paired=TRUE)
# 가설 설정 및 측정 
# 임계값보다 t값이 크면 H0 기각.   - 유의수준(알파)보다 p값이 작다면 H0 기각. 
# >>> 두 집단 평균차이 평균적으로 유의하다. t = 7.01, p-value = 8.726"e-08"
# >>> 영가설(h0 = mu1-m2 = 0) 기각 - 대립가설 채택 
# >>> 수업이 개입되었을 때 학생들의 점수 차이 보임 >>> 향상되었다 라는 연구 가설에 대한 결론 


#
