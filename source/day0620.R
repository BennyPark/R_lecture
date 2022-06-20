1+1

a = 1
b = 1

ab+b

iris <- iris

str(iris)

#벡터
num_vector = c(1, 2, 3)
num_vector2 = c(5, 6, 7)
num_vector[1] + num_vector[2]
num_vector[1] + num_vector2[2]

# 제 3장 데이터의 구조

#1. 용어의 이해
#(1) 변수의 개념 
# 수는 상수와 변수로 구분됨, 변수(variable)는 변사는 후 예: num_vector = c(1, 2, 3), iris <- iris
# 객체(변수)이름 <- 테이터 / '<-"연산자 대신에 '='를 사용하기도 함, '='는 최상위 수준에서만 사용 할 수 있으며 하위 수준에서는 오류가 발생함. '<-'어디서도 사용 가능
a <- b<- 1 #예
a
b
a <- b= 1 #예

# 변수에 문자 넣기 
a <- hello
a <- "hello"
a

a<-c(1,2,3)
a
mean(a) #평균값 구하기
max(a)#최대값
min(a)#최소값

char_vector <-c("hi", "hello")
char_vector
char_vector[1] #숫자1,2 인덱스
class(char_vector)#벡터의 유형을 알 수 있다.

#데이터의 유형을 확인하고 진행한다. 함수가 틀리면 안됨. 문자형, 논리형은 계산이 불가능하다. 그러므로 class를 확인해야 한다. 

#남이 만든 함수를 쓰려면 입력 조건건
?class
?t.test
logical_vector <- c(TRUE, FALSE)
logical_vector

class(logical_vector)
a<- c(1,2)
class(a)
b<- c(1,2, "hello")
class(b)
d <- c(TRUE, FALSE)
class(d)
e <- c(TRUE, FALSE, "true")
class(e)

# 명목형 자료형 Factor
locaiton_vector <- c("서울", "인천", "부산")
factor_location_vector <- factor(locaiton_vector)
factor_location_vector

class(factor_location_vector)
help(factor)

# 순서형 자료형 Factor
temperature_factor <- c("기온높음", "기온보통", "기온낮음", "기온높음", "기온보통", "기온보통")

temperature_factor

factor_temperature_factor <- factor(temperature_factor, 
                                    ordered = TRUE, 
                                    levels  = c("기온보통", 
                                                "기온낮음",                                               "기온높음"))
factor_temperature_factor
class(temperature_factor)
class(factor_temperature_factor)

##데이터 프레임 
#엑셀 데이터 
no <- c(1,2,3,4,5)
sex <- c("male", "female","male","male", "female")
korean <- c(87,92,95,81,87)
english<- c(88,95,92,84,86)
math<- c(82,95,92,80,88)
exam <- data.frame(no, sex,korean,english, math)
exam

#1개의 데이터를 출력하려면
exam[2, 3]
exam[2, "korean"]

#복수의 데이터를 출력하려면

exam[2, 3, 4]#(x)
exam[2,"korean", "english"]# (x)

exam[2, c("korean", "english")]#(o)

#4번과 5번 학생의 영어와 수학 데이터 출력
exam[c(4,5), c("english","math")]

#1개 개체의 전체 데이터 출력 방법
exam[3, ] #exam[3, c(1,2,3,4,5)]
exam[ , 3] #exam[c(1,2,3,4,5), 3]
exam[ , ] #전체 데이터를 출력함
exam[2:4, 2:4] #연속 데이터 출력
exam[-4, -4] #필요 없는 데이터 출력
exam[c(-2,-4), c(-4,-5)] #exam[-c(2,4), -c(4,5)]


exam$no[1]
exam$sex[1]
#데이터 타입
class(exam$sex)

str(exam) #데이터를 효율적으로 확인 가능하다. 

student <- c("A", "B", "C")
height <- c(175, 160,180)
weight <- c(70, 55, 77)
df <- data.frame(student, height, weight) 
df[1,3]
df[3,2]
df[2,c(2,3)]
df[ , 2]
df[-3, -1]
sex<-c("male", "female", "male")
df1 <-data.frame(student, height, weight, sex)
str(df1)
df1$student
class(df1$student)
class(df1$height)
df2<- "Good" # df2만들기
list1 <- list(df1, df2)#list1만들기 
list1

#데이터 내보내기 & 불러오기
#경로: 저장을 어떻게 할 것인가?

getwd()#경로를 모를때 찾는 방법

write.csv(exam, file = "temp.csv")#"temp.csv"= 정장하는 파일 이름 
#경로 저장 안했을 경우, 저장이 어디에 되어 있는지 모름
?write.csv #write.csv(x = exam, file="", append =FALSE,)

#바탕화면에 dataset 폴더 생성, exam 객체 저장하세요.

#데이터 불러 오기
temp = read.csv("temp.csv") 
#파일명이 틀릴 수 있기때문에 앞 글자를 쓰고 Tab을 누르면 바로 파일이 뜸
temp = read.csv("dataset/temp.csv") 
# 한단계 상위 폴더에 Set As Working Directory설정한 뒤 read.csv("폴더 명 / 파일명")

#4장
install.packages("gglot2")

library(ggplot2)
economics <- ggplot2::economics

#여기서 잠깐 (p66) 실무 패키지

install.packages("data.table")
library(data.table)

# 공식 문서 확인

#엑셀파일 불러오기기
install.packages("readxl")
library(readxl)
#page 68설명
#엑셀 파일에 있는 복수의 시트에서 특정 시트 불러오기
read_excel("student_xl.xlsx") 
read.csv("student.csv")
read.csv("student.csv", 1)

read_excel("student_xl.xlsx")
#첫번째 시트 부러 오기
read_excel("student1_xl.xlsx", sheet = 2)

#p. 73spss 파일 불러오기
install.packages("foreign")
library(foreign)
student <- read.spss("student.csv")
class(student)
as.data.frame(student) #형변환
#5,6교시 
#테이터 불러 오기
#경로를 잘 잡는 것이 매우 중요

