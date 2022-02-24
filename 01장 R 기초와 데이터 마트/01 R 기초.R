#문자형 타입
class('abc')
class("abc")
class('1')
class("TRUE")

#숫자형 타입
class(Inf)
class(1)
class(-3)

#논리형 타입
class(TRUE)
class(FALSE)


#NaN, NA, NULL
sqrt(-3)
class(NA)
class(NULL)

#대입 연산자
string1 <- 'abc'
"data" -> string2
number1 <<- 15
Inf ->> number2
logical = NA

#비교 연산자
string1 == 'abc'
string2 > 'DATA'
number1 <= 15
is.na(logical)
is.null(NULL)

#기타 연산자
!TRUE
TRUE & TRUE
TRUE & FALSE
!(TRUE & FALSE)
TRUE | FALSE

#벡터
v4 <- c(3, TRUE, FALSE)
v4
v5 <- c('a', 1, TRUE)
v5
v1 <- c(1:6)
v1

#행렬
m1 <- matrix(c(1:6), nrow=2)
m1
m2 <- matrix(c(1:6), ncol=2)
m2
m3 <- matrix(c(1:6), nrow=2, byrow=T)
m3
v1 <- c(1:6)
v1
dim(v1) <- c(2, 3)
v1

#배열
a1 <- array(c(1:12), dim=c(2, 3, 2))
a1
a2 <- c(1:12)
dim(a2) <- c(2, 3, 2)

#리스트
L <- list()
L[[1]] <- 5
L[[2]] <- c(1:6)
L[[3]] <- matrix(c(1:6), nrow=2)
L[[4]] <- array(c(1:12), dim=c(2, 3, 2))
L

#데이터프레임
v1 <- c(1, 2, 3)
v2 <- c('a', 'b', 'c')
df1 <- data.frame(v1, v2)
df1

#기본 함수
help(paste)
?paste
paste('This is', 'a pen')
seq(1, 10, by=2)
rep(1, 5)
a <- 1
a
rm(a)
a
ls()
print(10)

#통계 함수
v1 <- c(1:9)
sum(v1)
mean(v1)
median(v1)
var(v1)
sd(v1)
max(v1)
min(v1)
range(v1)
summary(v1)

#데이터 이름 변경
m1 <- matrix(c(1:6), nrow=2)
colnames(m1) <- c('c1', 'c2', 'c3')
rownames(m1) <- c('r1', 'r2')
m1
colnames(m1)
rownames(m1)
df1 <- data.frame(x=c(1, 2, 3), y=c(4, 5, 6))
colnames(df1) <- c('c1', 'c2')
rownames(df1) <- c('r1', 'r2', 'r3')
df1
colnames(df1)
rownames(df1)

#데이터 추출
v1 <- c(3, 6, 9, 12)
v1[2]
m1 <- matrix(c(1:6), nrow=3)
m1[2,2]
colnames(m1) <- c('c1', 'c2')
m1[,'c1']
rownames(m1) <- c('r1', 'r2', 'r3')
m1['r3', 'c2']
v1 <- c(1:6)
v2 <- c(7:12)
df1 <- data.frame(v1, v2)
df1$v1
df1$v2[3]

#데이터 결합
v1 <- c(1, 2, 3)
v2 <- c(4, 5, 6)
rbind(v1, v2)
cbind(v1, v2)
v1 <- c(1, 2, 3)
v2 <- c(4, 5, 6, 7, 8)
rbind(v1, v2)
cbind(v1, v2)

#반복문
for (i in 1:3) {
  print(i)
}
data <- c("a", "b", "c")
for (i in data) {
  print(i)
}
i <- 0
while(i < 5) {
  print(i)
  i <- i + 1
}

#조건문
number <- 5
if(number < 5) {
  print('number는 5보다 작다.')
} else if (number > 5) {
    print('number는 5보다 크다.')
} else {
    print('number는 5와 같다.')
}
number <- 3
if(number < 5) {
  print('number는 5보다 작다.')
} else if (number > 5) {
  print('number는 5보다 크다.')
} else {
  print('number는 5와 같다.')
}
number <- 7
if(number < 5) {
  print('number는 5보다 작다.')
} else if (number > 5) {
  print('number는 5보다 크다.')
} else {
  print('number는 5와 같다.')
}

#사용자 정의 함수
comparedTo5 <- function(number) {
  if(number < 5){
    print('number는 5보다 작다.')
  } else if(number > 5){
    print('number는 5보다 크다.')
  } else {
    print('number는 5와 같다.')
  }
}
comparedTo5(10)
comparedTo5(3)
comparedTo5(5)

#주석
#1+1을 계산하는 방법
1 + 1

#문자 연산
data <- 'This is a pen'
tolower(data)
toupper(data)
nchar(data)
substr(data, 9, 13)
strsplit(data, 'is')
grepl('pen', data)
gsub('pen', 'banana', data)

#데이터 탐색
x <- c(1:12)
head(x, 5)
tail(x, 5)
quantile(x)

#데이터 전처리
df1 <- data.frame(x=c(1,1,1,2,2), y=c(2,3,4,3,3))
df2 <- data.frame(x=c(1,2,3,4), z=c(5,6,7,8))
subset(df1, x==1)
merge(df1, df2, by=c('x'))
apply(df1, 1, sum)
apply(df1, 2, sum)

#날짜
Sys.Date()
Sys.time()
as.Date("2020-01-01")
format(Sys.Date(), '%Y/%m/%d')
format(Sys.Date(), '%A')
unclass(Sys.time())
as.POSIXct(1654678219, origin='1970-01-01')

#산점도
x <- c(1:10)
y <- rnorm(10)
plot(x, y, type='l', xlim=c(-2, 12), ylim=c(-3,3), xlab='X axis', ylab='Y axis', main='Test plot')
abline(v=c(1, 10), col='blue')