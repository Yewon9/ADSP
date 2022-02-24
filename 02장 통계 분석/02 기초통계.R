#일 표본 단측 t-검정
weights <- runif(10, min=49, max=52)
t.test(weights, mu=50, alternative='greater')

#일 표본 양측 t-검정
weights <- runif(100, min=40, max=100)
t.test(weights, mu=70, alternative='two.sided')

#이 표본 단측 t-검정
salaryA <- runif(100, min=250, max=380)
salaryB <- runif(100, min=200, max=400)
t.test(salaryA, salaryB, alternative='less')

#이 표본 양측 t-검정
speedK <- runif(100, min=30, max=40)
speedL <- runif(100, min=25, max=35)
t.test(speedK, speedL, alternative='two.sided')

#대응 표본 t-검정
before <- runif(100, min=60, max=80)
after <- before + rnorm(10, mean=-3, sd=2)
t.test(before, after, alternative='greater', paired=TRUE)

#일원분산분석
phoneSpeed <- runif(45, min=75, max=100)
telecom <- rep(c('A', 'B', 'C'), 15)
phoneData <- data.frame(phoneSpeed, telecom)
result <- aov(data=phoneData, phoneSpeed~telecom)
summary(result)

#피어슨 상관분석
X <- c(1, 2, 3, 4, 5)
Y <- c(3, 6, 4, 9, 8)
cor(X, Y, method='pearson')

#스피어만 상관분석
X <- c(1, 2, 3, 4, 5)
Y <- c(3, 6, 4, 9, 8)
cor(X, Y, method='spearman')

#상관분석
time <- c(8, 6, 7, 3, 2, 4, 2, 7, 2, 3)
score <- c(33, 22, 18, 6, 23, 10, 9, 30, 11, 13)
cor.test(time, score)
