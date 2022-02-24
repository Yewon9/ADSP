#reshape 패키지
score
library(reshape)
melt(score, id=c("student_number", "sememster"))
melted_score <- melt(score, id=c("student_number", "semester"))
cast(melted_score, student_number ~ variable, mean)
cast(melted_score, student_number ~ semester, mean)
cast(melted_Score, student_number ~ variable, max)

#sqldf 패키지
library(sqldf)
sqldf('select * from score')
sqldf('select * from score where student_number = 1')
sqldf('select avg(math_score), avg(english_score) from score group by student_number')

#plyr 패키지
score
library(plyr)
ddply(score, 'class', summarise, math_avg=mean(math), eng_avg=mean(english))
ddply(score, 'class', transform, math_avg=mean(math), eng_avg=mean(english))
ddply(data, c("year", "month"), summarise, value_avg=mean(value))
ddply(data, c("year", "month"), funcion(x){
  value_avg = mean(x$value)
  value_sd = sd(x$value)
  data.frame(avg_sd = value_avg / value_sd)
})

#data.table 패키지
year <- rep(c(2012:2015), each = 12000000)
month <- rep(rep(c(1:12), each = 1000000), 4)
value <- runif(48000000)
DataFrame <- data.frame(year, month, value)
DataTable <- as.data.table(DataFrame)
system.time(DataFrame[DataFrame$year == 2012, ])
system.time(DataTable[DataTable$year == 2012, ])
setkey(DataTable, year)
system.time(DataTable[J(2012)])
