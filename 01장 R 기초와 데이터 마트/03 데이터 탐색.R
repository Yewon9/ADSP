#탐색적 데이터 분석(EDA)
head(iris, 3)
summary(iris)
str(iris)

#결측값
copy_iris <- iris
copy_iris[sample(1:150, 30), 1] <- NA
library(Amelia)
missmap(copy_iris)

#단순 대치법
copy_iris <- iris
dim(copy_iris)
copy_iris[sample(1:150, 30), 1] <- NA
copy_iris <- copy_iris[complete.cases(copy_iris), ]
dim(copy_iris)

#평균 대치법
copy_iris <- iris
copy_iris[sample(1:150, 30), 1] <- NA
meanValue <- mean(copy_iris$Sepla.Length, na.rm=T)
copy_iris$Sepal.Length[is.na(copy_iris$Sepal.Length)] <- meanValue
library(DMwR2)
copy_iris[sample(1:150, 30), 1] <- NA
copy_iris <- centralImputation(copy_iris)

#단순 확률 대치법
copy_iris <- iris
copy_iris[sample(1:150, 30), 1] <- NA
copy_iris <- knnImputation(copy_iris, k=10)

#다중 대치법
copy_iris <- iris
copy_iris[sample(1:150, 30), 1] <- NA
library(Amelia)
iris_imp <- amelia(copy_iris, m=3, cs="Species")
copy_iris$Sepal.Length <- iris_imp$imputations[[3]]$Sepal.Length
