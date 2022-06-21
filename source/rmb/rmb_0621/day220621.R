#데이터 불러오기
#경로 설정이 매우 중요

getwd()
#setwd("c:/")
#csv파일 / 엑셀파일
# p.91 mpg1.csv 파일 불러오기
mpg1 <- read.csv("mpg1.csv", stringsAsFactors = T)

#stringsAsFactors 데이터를 범주형으로 설정한다. 
str(mpg1)

table(mpg1$trans)

table(mpg1$trans , mpg1$drv)

#평균 
mean(mpg1$cty)#평균
var(mpg1$cty)#분산
sd(mpg1$cty)#표준편차
sum(mpg1$cty)
range(mpg1$cty)
max(mpg1$cty)
min(mpg1$cty)

mean(mtcars$mpg)#평균
var(mtcars$mpg)#분산
sd(mtcars$mpg)#표준편차
sum(mtcars$mpg)#합
range(mtcars$mpg)#범위
max(mtcars$mpg)#최댓값
min(mtcars$mpg)#최솟값
quantile(mtcars$mpg)#사분위수
IQR(mtcars$mpg)#1~3분위 범위


#mtcars: R에 내장되어 있는 mtcars 자료, 11개 변수와 32개 자동차 자료로 구성되어 있다. 
help("mtcars")
str(mtcars)

#수리통계 --> 증명
#일반인 / 비전공자 --> 활용/의미

#사분위수
#전체 수를 4등분한 수
#IQR: 1사분위와 3사분위의 사이 거리 

#중간값: 100명, 50번째 키순에 해당하는 값
#평균: 전체 합의 /100

summary(iris)
#빈도 분석
#범주별 빈도 --> 문자
str(mpg1)

#
table(mpg1$trans)
table(mpg1$manufacturer)
table(mpg1$trans , mpg1$manufacturer)

a<- table(mpg1$trans) #trans의 범주별 빈도 분석
prop.table(a)# 비율 구하기= 
prop.table(table(mpg1$trans))
prop.table(mpg1$trans)

b<-table(mpg1$trans, mpg1$drv) #trans와drv의 교차분석
# 4(4륜 구동) f(전륜구동) r(후륜구동동)
prop.table(b)
prop.table(table(mpg1$manufacturer))

round(0.3252546 ,4) #뒤에 숫자4는 소수점을 지정하는 숫자이다. /round는 반올림하는 형식
round(prop.table(table(mpg1$trans)), 2)

c<-prop.table(a)
round(c, 2)

#시각화 이미지 ggplot2패키지 활용
#테이블 이미지 gt패키지 활용 --> 고급 과정

