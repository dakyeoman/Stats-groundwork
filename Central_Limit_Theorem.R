##central limit theorem
#체육측정평가 W8 중심극한정리 

population <- sample(x=230:290, size=50)
population
summary(population)
par(mfrow = c(1, 1))
hist(population, freq=F)
lines(density(population))


par(mfrow =c(3, 2))

Sample_Mean=numeric()

for(i in 1:300) Sample_Mean[i] = mean(sample(population, 100, replace=TRUE))
hist(Sample_Mean, freq = F, main = "n-1", xlab = "Sample_Mean (n=120)")
lines(density(Sample_Mean))

Sample_Mean = numeric()

for(i in 1:300) Sample_Mean[i] = mean(sample(population, 500, replace=TRUE))
hist(Sample_Mean, freq = F, main = "n=500", xlab = "Sample_Mean (n = 500)")
lines(density(Sample_Mean))

Sample_Mean = numeric()

for(i in 1:300) Sample_Mean[i] - mean(sample(population, 1000, replace=TRUE))

